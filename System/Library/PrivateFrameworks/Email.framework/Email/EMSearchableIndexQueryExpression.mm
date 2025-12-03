@interface EMSearchableIndexQueryExpression
+ (EMSearchableIndexQueryExpression)expressionWithQueryString:(id)string;
+ (EMSearchableIndexQueryExpression)expressionWithQueryString:(id)string searchString:(id)searchString updatedSuggestion:(id)suggestion;
- (BOOL)isValid;
- (EMSearchableIndexQueryExpression)initWithQueryString:(id)string searchString:(id)searchString updatedSuggestion:(id)suggestion;
- (NSString)ef_publicDescription;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation EMSearchableIndexQueryExpression

+ (EMSearchableIndexQueryExpression)expressionWithQueryString:(id)string
{
  stringCopy = string;
  v5 = [[self alloc] initWithQueryString:stringCopy searchString:0 updatedSuggestion:0];

  return v5;
}

+ (EMSearchableIndexQueryExpression)expressionWithQueryString:(id)string searchString:(id)searchString updatedSuggestion:(id)suggestion
{
  stringCopy = string;
  searchStringCopy = searchString;
  suggestionCopy = suggestion;
  v11 = [[self alloc] initWithQueryString:stringCopy searchString:searchStringCopy updatedSuggestion:suggestionCopy];

  return v11;
}

- (EMSearchableIndexQueryExpression)initWithQueryString:(id)string searchString:(id)searchString updatedSuggestion:(id)suggestion
{
  stringCopy = string;
  searchStringCopy = searchString;
  suggestionCopy = suggestion;
  v19.receiver = self;
  v19.super_class = EMSearchableIndexQueryExpression;
  v11 = [(EMSearchableIndexQueryExpression *)&v19 init];
  if (v11)
  {
    v12 = [stringCopy copy];
    queryString = v11->_queryString;
    v11->_queryString = v12;

    v14 = [searchStringCopy copy];
    searchString = v11->_searchString;
    v11->_searchString = v14;

    v16 = [suggestionCopy copy];
    updatedSuggestion = v11->_updatedSuggestion;
    v11->_updatedSuggestion = v16;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  queryString = [(EMSearchableIndexQueryExpression *)self queryString];
  searchString = [(EMSearchableIndexQueryExpression *)self searchString];
  updatedSuggestion = [(EMSearchableIndexQueryExpression *)self updatedSuggestion];
  v8 = [v4 initWithQueryString:queryString searchString:searchString updatedSuggestion:updatedSuggestion];

  return v8;
}

- (NSString)ef_publicDescription
{
  currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
  isInternal = [currentDevice isInternal];

  if (isInternal)
  {
    v5 = MEMORY[0x1E699B858];
    searchString = [(EMSearchableIndexQueryExpression *)self searchString];
    searchString2 = [v5 partiallyRedactedStringForString:searchString];

    updatedSuggestion = [(EMSearchableIndexQueryExpression *)self updatedSuggestion];
    v9 = MEMORY[0x1E699B858];
    queryString = [(EMSearchableIndexQueryExpression *)self queryString];
    updatedSuggestion2 = [v9 ec_redactedQueryStringForSearchableQueryString:queryString];

    if (searchString2 | updatedSuggestion)
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = [EMCSLoggingAdditions publicDescriptionForSuggestion:updatedSuggestion];
      v14 = [v12 stringWithFormat:@"(%@) %@ %@", searchString2, v13, updatedSuggestion2];
    }

    else
    {
      updatedSuggestion2 = updatedSuggestion2;
      v14 = updatedSuggestion2;
    }
  }

  else
  {
    v15 = MEMORY[0x1E696AEC0];
    v16 = MEMORY[0x1E699B858];
    searchString2 = [(EMSearchableIndexQueryExpression *)self searchString];
    updatedSuggestion = [v16 partiallyRedactedStringForString:searchString2];
    updatedSuggestion2 = [(EMSearchableIndexQueryExpression *)self updatedSuggestion];
    queryString2 = [(EMSearchableIndexQueryExpression *)self queryString];
    v14 = [v15 stringWithFormat:@"(%@) %p queryString %d", updatedSuggestion, updatedSuggestion2, queryString2 != 0];
  }

  return v14;
}

- (BOOL)isValid
{
  queryString = [(EMSearchableIndexQueryExpression *)self queryString];
  if ([queryString length])
  {
    v4 = 1;
  }

  else
  {
    searchString = [(EMSearchableIndexQueryExpression *)self searchString];
    if ([searchString length])
    {
      v4 = 1;
    }

    else
    {
      updatedSuggestion = [(EMSearchableIndexQueryExpression *)self updatedSuggestion];
      v4 = updatedSuggestion != 0;
    }
  }

  return v4;
}

@end