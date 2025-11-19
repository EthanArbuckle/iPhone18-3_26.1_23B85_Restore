@interface _CNAutocompleteUserSessionDisplayedResults
- (BOOL)relevantForRequest:(id)a3;
- (_CNAutocompleteUserSessionDisplayedResults)initWithRequest:(id)a3;
- (void)didReceiveBatch:(unint64_t)a3;
@end

@implementation _CNAutocompleteUserSessionDisplayedResults

- (_CNAutocompleteUserSessionDisplayedResults)initWithRequest:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _CNAutocompleteUserSessionDisplayedResults;
  v6 = [(_CNAutocompleteUserSessionDisplayedResults *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, a3);
    v8 = [MEMORY[0x277CBEB38] dictionary];
    datesByBatchIndexes = v7->_datesByBatchIndexes;
    v7->_datesByBatchIndexes = v8;
  }

  return v7;
}

- (void)didReceiveBatch:(unint64_t)a3
{
  v5 = [(_CNAutocompleteUserSessionDisplayedResults *)self datesByBatchIndexes];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v10 = [MEMORY[0x277CBEAA8] date];
    v8 = [(_CNAutocompleteUserSessionDisplayedResults *)self datesByBatchIndexes];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [v8 setObject:v10 forKeyedSubscript:v9];
  }
}

- (BOOL)relevantForRequest:(id)a3
{
  v4 = a3;
  v5 = [(_CNAutocompleteUserSessionDisplayedResults *)self request];
  v6 = [v4 searchString];
  v7 = [v6 length];
  v8 = [v5 searchString];
  if (v7 <= [v8 length])
  {
    v11 = 0;
  }

  else
  {
    v9 = *MEMORY[0x277CFBD30];
    v10 = [v5 searchString];
    if ((*(v9 + 16))(v9, v10))
    {
      v11 = 1;
    }

    else
    {
      v12 = [v4 searchString];
      v13 = [v5 searchString];
      v11 = [v12 hasPrefix:v13];
    }
  }

  return v11;
}

@end