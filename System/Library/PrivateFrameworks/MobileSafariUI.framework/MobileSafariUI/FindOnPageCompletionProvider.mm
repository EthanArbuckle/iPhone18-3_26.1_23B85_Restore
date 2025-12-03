@interface FindOnPageCompletionProvider
- (FindOnPageCompletionProviderDataSource)dataSource;
- (id)completionsForQuery:(id)query;
- (void)setQueryToComplete:(id)complete;
@end

@implementation FindOnPageCompletionProvider

- (id)completionsForQuery:(id)query
{
  v13[1] = *MEMORY[0x277D85DE8];
  queryCopy = query;
  v12.receiver = self;
  v12.super_class = FindOnPageCompletionProvider;
  v5 = [(CompletionProvider *)&v12 completionsForQuery:queryCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [FindOnPageCompletionItem alloc];
    queryString = [queryCopy queryString];
    v10 = [(FindOnPageCompletionItem *)v8 initWithString:queryString numberOfMatches:*MEMORY[0x277D292B8] forQueryID:self->_parsecQueryID];

    v13[0] = v10;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  }

  return v7;
}

- (void)setQueryToComplete:(id)complete
{
  completeCopy = complete;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v7 = [WeakRetained tabDocumentForFindOnPageCompletionProvider:self];

  self->_parsecQueryID = [completeCopy queryID];
  queryString = [completeCopy queryString];

  [v7 findOnPageCompletionProvider:self setStringToComplete:queryString];
}

- (FindOnPageCompletionProviderDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end