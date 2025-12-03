@interface EMSearchableIndexInstantAnswersQueryResult
- (EMSearchableIndexInstantAnswersQueryResult)initWithInstantAnswersSuggestions:(id)suggestions;
@end

@implementation EMSearchableIndexInstantAnswersQueryResult

- (EMSearchableIndexInstantAnswersQueryResult)initWithInstantAnswersSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  v9.receiver = self;
  v9.super_class = EMSearchableIndexInstantAnswersQueryResult;
  v5 = [(EMSearchableIndexInstantAnswersQueryResult *)&v9 init];
  if (v5)
  {
    v6 = [suggestionsCopy copy];
    instantAnswersSuggestions = v5->_instantAnswersSuggestions;
    v5->_instantAnswersSuggestions = v6;
  }

  return v5;
}

@end