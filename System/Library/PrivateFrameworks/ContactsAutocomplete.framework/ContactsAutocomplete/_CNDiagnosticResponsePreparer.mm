@interface _CNDiagnosticResponsePreparer
- (_CNDiagnosticResponsePreparer)initWithResponsePreparer:(id)a3 delegate:(id)a4 log:(id)a5;
- (id)prepareResults:(id)a3 forFetch:(id)a4;
@end

@implementation _CNDiagnosticResponsePreparer

- (_CNDiagnosticResponsePreparer)initWithResponsePreparer:(id)a3 delegate:(id)a4 log:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = _CNDiagnosticResponsePreparer;
  v9 = [(_CNAutocompleteResponsePreparerDecorator *)&v14 initWithResponsePreparer:a3 delegate:a4];
  if (v9)
  {
    v10 = [MEMORY[0x277CFBE28] lazyFutureWithBlock:v8];
    logFuture = v9->_logFuture;
    v9->_logFuture = v10;

    v12 = v9;
  }

  return v9;
}

- (id)prepareResults:(id)a3 forFetch:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [(_CNDiagnosticResponsePreparer *)self logFuture];
        [v12 addDiagnosticLogFuture:v13];
      }

      v9 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v14 = [(_CNAutocompleteResponsePreparerDecorator *)self preparer];
  v15 = [v14 prepareResults:v6 forFetch:v7];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end