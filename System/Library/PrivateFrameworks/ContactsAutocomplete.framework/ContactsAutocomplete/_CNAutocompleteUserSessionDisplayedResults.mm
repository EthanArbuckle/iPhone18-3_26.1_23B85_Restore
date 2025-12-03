@interface _CNAutocompleteUserSessionDisplayedResults
- (BOOL)relevantForRequest:(id)request;
- (_CNAutocompleteUserSessionDisplayedResults)initWithRequest:(id)request;
- (void)didReceiveBatch:(unint64_t)batch;
@end

@implementation _CNAutocompleteUserSessionDisplayedResults

- (_CNAutocompleteUserSessionDisplayedResults)initWithRequest:(id)request
{
  requestCopy = request;
  v11.receiver = self;
  v11.super_class = _CNAutocompleteUserSessionDisplayedResults;
  v6 = [(_CNAutocompleteUserSessionDisplayedResults *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, request);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    datesByBatchIndexes = v7->_datesByBatchIndexes;
    v7->_datesByBatchIndexes = dictionary;
  }

  return v7;
}

- (void)didReceiveBatch:(unint64_t)batch
{
  datesByBatchIndexes = [(_CNAutocompleteUserSessionDisplayedResults *)self datesByBatchIndexes];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:batch];
  v7 = [datesByBatchIndexes objectForKeyedSubscript:v6];

  if (!v7)
  {
    date = [MEMORY[0x277CBEAA8] date];
    datesByBatchIndexes2 = [(_CNAutocompleteUserSessionDisplayedResults *)self datesByBatchIndexes];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:batch];
    [datesByBatchIndexes2 setObject:date forKeyedSubscript:v9];
  }
}

- (BOOL)relevantForRequest:(id)request
{
  requestCopy = request;
  request = [(_CNAutocompleteUserSessionDisplayedResults *)self request];
  searchString = [requestCopy searchString];
  v7 = [searchString length];
  searchString2 = [request searchString];
  if (v7 <= [searchString2 length])
  {
    v11 = 0;
  }

  else
  {
    v9 = *MEMORY[0x277CFBD30];
    searchString3 = [request searchString];
    if ((*(v9 + 16))(v9, searchString3))
    {
      v11 = 1;
    }

    else
    {
      searchString4 = [requestCopy searchString];
      searchString5 = [request searchString];
      v11 = [searchString4 hasPrefix:searchString5];
    }
  }

  return v11;
}

@end