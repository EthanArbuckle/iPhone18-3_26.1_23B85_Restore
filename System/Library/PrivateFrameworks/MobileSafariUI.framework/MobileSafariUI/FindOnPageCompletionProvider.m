@interface FindOnPageCompletionProvider
- (FindOnPageCompletionProviderDataSource)dataSource;
- (id)completionsForQuery:(id)a3;
- (void)setQueryToComplete:(id)a3;
@end

@implementation FindOnPageCompletionProvider

- (id)completionsForQuery:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = FindOnPageCompletionProvider;
  v5 = [(CompletionProvider *)&v12 completionsForQuery:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [FindOnPageCompletionItem alloc];
    v9 = [v4 queryString];
    v10 = [(FindOnPageCompletionItem *)v8 initWithString:v9 numberOfMatches:*MEMORY[0x277D292B8] forQueryID:self->_parsecQueryID];

    v13[0] = v10;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  }

  return v7;
}

- (void)setQueryToComplete:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v7 = [WeakRetained tabDocumentForFindOnPageCompletionProvider:self];

  self->_parsecQueryID = [v4 queryID];
  v6 = [v4 queryString];

  [v7 findOnPageCompletionProvider:self setStringToComplete:v6];
}

- (FindOnPageCompletionProviderDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end