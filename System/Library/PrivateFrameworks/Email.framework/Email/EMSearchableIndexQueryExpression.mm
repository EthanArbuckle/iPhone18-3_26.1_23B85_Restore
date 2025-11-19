@interface EMSearchableIndexQueryExpression
+ (EMSearchableIndexQueryExpression)expressionWithQueryString:(id)a3;
+ (EMSearchableIndexQueryExpression)expressionWithQueryString:(id)a3 searchString:(id)a4 updatedSuggestion:(id)a5;
- (BOOL)isValid;
- (EMSearchableIndexQueryExpression)initWithQueryString:(id)a3 searchString:(id)a4 updatedSuggestion:(id)a5;
- (NSString)ef_publicDescription;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation EMSearchableIndexQueryExpression

+ (EMSearchableIndexQueryExpression)expressionWithQueryString:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithQueryString:v4 searchString:0 updatedSuggestion:0];

  return v5;
}

+ (EMSearchableIndexQueryExpression)expressionWithQueryString:(id)a3 searchString:(id)a4 updatedSuggestion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[a1 alloc] initWithQueryString:v8 searchString:v9 updatedSuggestion:v10];

  return v11;
}

- (EMSearchableIndexQueryExpression)initWithQueryString:(id)a3 searchString:(id)a4 updatedSuggestion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = EMSearchableIndexQueryExpression;
  v11 = [(EMSearchableIndexQueryExpression *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    queryString = v11->_queryString;
    v11->_queryString = v12;

    v14 = [v9 copy];
    searchString = v11->_searchString;
    v11->_searchString = v14;

    v16 = [v10 copy];
    updatedSuggestion = v11->_updatedSuggestion;
    v11->_updatedSuggestion = v16;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(EMSearchableIndexQueryExpression *)self queryString];
  v6 = [(EMSearchableIndexQueryExpression *)self searchString];
  v7 = [(EMSearchableIndexQueryExpression *)self updatedSuggestion];
  v8 = [v4 initWithQueryString:v5 searchString:v6 updatedSuggestion:v7];

  return v8;
}

- (NSString)ef_publicDescription
{
  v3 = [MEMORY[0x1E699B7B0] currentDevice];
  v4 = [v3 isInternal];

  if (v4)
  {
    v5 = MEMORY[0x1E699B858];
    v6 = [(EMSearchableIndexQueryExpression *)self searchString];
    v7 = [v5 partiallyRedactedStringForString:v6];

    v8 = [(EMSearchableIndexQueryExpression *)self updatedSuggestion];
    v9 = MEMORY[0x1E699B858];
    v10 = [(EMSearchableIndexQueryExpression *)self queryString];
    v11 = [v9 ec_redactedQueryStringForSearchableQueryString:v10];

    if (v7 | v8)
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = [EMCSLoggingAdditions publicDescriptionForSuggestion:v8];
      v14 = [v12 stringWithFormat:@"(%@) %@ %@", v7, v13, v11];
    }

    else
    {
      v11 = v11;
      v14 = v11;
    }
  }

  else
  {
    v15 = MEMORY[0x1E696AEC0];
    v16 = MEMORY[0x1E699B858];
    v7 = [(EMSearchableIndexQueryExpression *)self searchString];
    v8 = [v16 partiallyRedactedStringForString:v7];
    v11 = [(EMSearchableIndexQueryExpression *)self updatedSuggestion];
    v17 = [(EMSearchableIndexQueryExpression *)self queryString];
    v14 = [v15 stringWithFormat:@"(%@) %p queryString %d", v8, v11, v17 != 0];
  }

  return v14;
}

- (BOOL)isValid
{
  v3 = [(EMSearchableIndexQueryExpression *)self queryString];
  if ([v3 length])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(EMSearchableIndexQueryExpression *)self searchString];
    if ([v5 length])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(EMSearchableIndexQueryExpression *)self updatedSuggestion];
      v4 = v6 != 0;
    }
  }

  return v4;
}

@end