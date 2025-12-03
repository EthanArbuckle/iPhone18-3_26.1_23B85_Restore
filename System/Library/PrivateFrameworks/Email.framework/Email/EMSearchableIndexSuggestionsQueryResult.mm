@interface EMSearchableIndexSuggestionsQueryResult
- (EMSearchableIndexSuggestionsQueryResult)initWithSuggestions:(id)suggestions;
@end

@implementation EMSearchableIndexSuggestionsQueryResult

- (EMSearchableIndexSuggestionsQueryResult)initWithSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  v9.receiver = self;
  v9.super_class = EMSearchableIndexSuggestionsQueryResult;
  v5 = [(EMSearchableIndexSuggestionsQueryResult *)&v9 init];
  if (v5)
  {
    v6 = [suggestionsCopy copy];
    suggestions = v5->_suggestions;
    v5->_suggestions = v6;
  }

  return v5;
}

@end