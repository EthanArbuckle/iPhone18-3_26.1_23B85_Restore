@interface ICASSearchSuggestionType
- (ICASSearchSuggestionType)initWithSearchSuggestionType:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASSearchSuggestionType

- (ICASSearchSuggestionType)initWithSearchSuggestionType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASSearchSuggestionType;
  result = [(ICASSearchSuggestionType *)&v5 init];
  if (result)
  {
    result->_searchSuggestionType = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASSearchSuggestionType *)self searchSuggestionType];
  if ((v3 - 1) > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AFEC0[v3 - 1];
  }
}

@end