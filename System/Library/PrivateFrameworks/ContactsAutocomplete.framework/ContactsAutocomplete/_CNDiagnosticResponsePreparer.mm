@interface _CNDiagnosticResponsePreparer
- (_CNDiagnosticResponsePreparer)initWithResponsePreparer:(id)preparer delegate:(id)delegate log:(id)log;
- (id)prepareResults:(id)results forFetch:(id)fetch;
@end

@implementation _CNDiagnosticResponsePreparer

- (_CNDiagnosticResponsePreparer)initWithResponsePreparer:(id)preparer delegate:(id)delegate log:(id)log
{
  logCopy = log;
  v14.receiver = self;
  v14.super_class = _CNDiagnosticResponsePreparer;
  v9 = [(_CNAutocompleteResponsePreparerDecorator *)&v14 initWithResponsePreparer:preparer delegate:delegate];
  if (v9)
  {
    v10 = [MEMORY[0x277CFBE28] lazyFutureWithBlock:logCopy];
    logFuture = v9->_logFuture;
    v9->_logFuture = v10;

    v12 = v9;
  }

  return v9;
}

- (id)prepareResults:(id)results forFetch:(id)fetch
{
  v23 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  fetchCopy = fetch;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [resultsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(resultsCopy);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        logFuture = [(_CNDiagnosticResponsePreparer *)self logFuture];
        [v12 addDiagnosticLogFuture:logFuture];
      }

      v9 = [resultsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  preparer = [(_CNAutocompleteResponsePreparerDecorator *)self preparer];
  v15 = [preparer prepareResults:resultsCopy forFetch:fetchCopy];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end