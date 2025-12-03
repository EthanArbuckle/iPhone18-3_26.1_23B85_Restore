@interface ICASSearchSuggestionType
- (ICASSearchSuggestionType)initWithSearchSuggestionType:(int64_t)type;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASSearchSuggestionType

- (ICASSearchSuggestionType)initWithSearchSuggestionType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ICASSearchSuggestionType;
  result = [(ICASSearchSuggestionType *)&v5 init];
  if (result)
  {
    result->_searchSuggestionType = type;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  searchSuggestionType = [(ICASSearchSuggestionType *)self searchSuggestionType];
  if ((searchSuggestionType - 1) > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AFEC0[searchSuggestionType - 1];
  }
}

@end