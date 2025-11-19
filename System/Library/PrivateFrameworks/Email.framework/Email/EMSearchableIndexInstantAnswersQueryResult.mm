@interface EMSearchableIndexInstantAnswersQueryResult
- (EMSearchableIndexInstantAnswersQueryResult)initWithInstantAnswersSuggestions:(id)a3;
@end

@implementation EMSearchableIndexInstantAnswersQueryResult

- (EMSearchableIndexInstantAnswersQueryResult)initWithInstantAnswersSuggestions:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = EMSearchableIndexInstantAnswersQueryResult;
  v5 = [(EMSearchableIndexInstantAnswersQueryResult *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    instantAnswersSuggestions = v5->_instantAnswersSuggestions;
    v5->_instantAnswersSuggestions = v6;
  }

  return v5;
}

@end