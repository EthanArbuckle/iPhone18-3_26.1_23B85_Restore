@interface EMFQuery
- (EMFQuery)initWithQueryString:(id)a3 andLocale:(id)a4;
- (EMFQuery)initWithQueryString:(id)a3 andQueryTokens:(id)a4 andLocale:(id)a5;
- (NSArray)tokens;
- (NSString)normalizedQueryString;
- (NSString)trimmedQueryString;
- (id)_finalTokenAnalyzed:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)tokenCounts;
- (void)setQueryString:(id)a3;
- (void)setTokens:(id)a3;
- (void)tokens;
@end

@implementation EMFQuery

- (EMFQuery)initWithQueryString:(id)a3 andLocale:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = _createNormalizedString(v7, v6);
  normalizedString = self->_normalizedString;
  self->_normalizedString = v8;

  v10 = [(EMFQuery *)self initWithQueryString:v7 andQueryTokens:0 andLocale:v6];
  return v10;
}

- (EMFQuery)initWithQueryString:(id)a3 andQueryTokens:(id)a4 andLocale:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = EMFQuery;
  v11 = [(EMFQuery *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    queryString = v11->_queryString;
    v11->_queryString = v12;

    v14 = [v9 copy];
    queryTokens = v11->_queryTokens;
    v11->_queryTokens = v14;

    objc_storeStrong(&v11->_queryTokensAnalyzed, v11->_queryTokens);
    objc_storeStrong(&v11->_locale, a5);
  }

  return v11;
}

- (NSString)trimmedQueryString
{
  v2 = [(EMFQuery *)self queryString];
  v3 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];

  return v4;
}

- (NSString)normalizedQueryString
{
  v3 = [(EMFQuery *)self trimmedQueryString];
  v4 = _createNormalizedString(v3, self->_locale);

  return v4;
}

- (void)setQueryString:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  queryString = self->_queryString;
  self->_queryString = v5;

  v7 = _createNormalizedString(v4, self->_locale);

  normalizedString = self->_normalizedString;
  self->_normalizedString = v7;

  queryTokens = self->_queryTokens;
  self->_queryTokens = 0;
}

- (void)setTokens:(id)a3
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  objc_storeStrong(&self->_queryTokens, v4);
  v6 = v4;
  queryTokensAnalyzed = self->_queryTokensAnalyzed;
  self->_queryTokensAnalyzed = 0;
}

- (NSArray)tokens
{
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_queryTokens)
  {
    v3 = _createTokensForString(self->_normalizedString, self->_locale);
    v4 = v3;
    stringStemmer = self->_stringStemmer;
    if (stringStemmer)
    {
      v6 = _createStemmedTokensForTokenArray(v3, stringStemmer);
      if (!v6)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [(EMFQuery *)&self->_locale tokens];
        }

        __assert_rtn("[EMFQuery tokens]", "EMFQuery.m", 150, "stemmedTokens");
      }

      v7 = v6;

      v4 = v7;
    }

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v4;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          if (([v14 isEqualToString:{&stru_1F24C94E8, v21}] & 1) == 0)
          {
            [(NSArray *)v8 addObject:v14];
          }
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    queryTokens = self->_queryTokens;
    self->_queryTokens = v9;
    v16 = v9;

    queryTokensAnalyzed = self->_queryTokensAnalyzed;
    self->_queryTokensAnalyzed = v8;
  }

  if (self->_queryString && (v18 = self->_queryTokensAnalyzed) != 0)
  {
    v19 = [(NSArray *)v18 copy];
  }

  else
  {
    v19 = self->_queryTokens;
  }

  return v19;
}

- (id)tokenCounts
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(EMFQuery *)self tokens];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v3 objectForKey:v9];
        if (v10)
        {
          v11 = v10;
        }

        else
        {
          v11 = &unk_1F24DF3B8;
        }

        v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v11, "integerValue") + 1}];

        [v3 setObject:v12 forKey:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_finalTokenAnalyzed:(BOOL)a3
{
  if (a3)
  {
    v3 = [(EMFQuery *)self tokens];
    v4 = [v3 lastObject];
  }

  else
  {
    v4 = [(NSArray *)self->_queryTokens lastObject];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_alloc(objc_opt_class()) initWithQueryString:self->_queryString andQueryTokens:self->_queryTokens andLocale:self->_locale];
  [v4 setStringStemmer:self->_stringStemmer];
  return v4;
}

- (void)tokens
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = [*a1 localeIdentifier];
  v2 = 138412290;
  v3 = v1;
  _os_log_error_impl(&dword_1AF04E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Stemming failed for locale %@", &v2, 0xCu);
}

@end