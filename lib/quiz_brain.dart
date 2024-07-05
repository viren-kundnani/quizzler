import 'question.dart';

class QuizBrain{
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('MS Dhoni is the only captain to win the ICC Cricket World Cup, T20 World Cup and the Champions Trophy', true),
    Question(' \'Timed Out\' is a way to lose a wicket', true),
    Question('The all-time leading wicket taker in Tests is Shane Warne', false),
    Question('The \'Ashes\' is a commonly used term for the annual Test Series between New Zealand and Australia', false),
    Question('The World\'s Largest cricket stadium is the Melbourne Cricket Ground (MCG) in terms of seating capacity', false),
    Question('In order to dismiss a batsman by LBW (leg before wicket) the bowling team must appeal to the umpire otherwise the umpire will not signal out', true),
    Question('No cricket captain has won the ICC Men\'s Cricket World Cup more than once', false),
    Question('South Africa have never qualified for the finals of the ICC Men\'s Cricket World Cup', true),
    Question('India are the only team to win the 50-Over and 60-Over World Cup', true),
    Question('The first cricket World Cup was held in 1976.',false),
    Question('Glenn McGrath has the highest number of wickets in the history of the World Cup.',true),
    Question('The 2019 World Cup was the 5th time that England hosted.',true),
    Question('Australia has won the World Cup 6 times.',true),
    Question('Clive Lloyd of the West Indies is the only captain to win the World Cup twice.',false),
    Question('The highest individual score in tests is 400 runs.',true),
  ];

  void nextQuestion(){
    if (_questionNumber < _questionBank.length -1){
      _questionNumber++;
    }
  }

  String getQuestionText(){
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer(){
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished(){
    if (_questionNumber == _questionBank.length-1){
      return true;
    }

    else{
      return false;
    }
  }

  void reset(){
    _questionNumber = 0;
  }


}