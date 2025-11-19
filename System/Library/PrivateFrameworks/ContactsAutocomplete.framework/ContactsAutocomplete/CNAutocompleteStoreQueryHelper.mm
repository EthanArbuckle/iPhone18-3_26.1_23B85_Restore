@interface CNAutocompleteStoreQueryHelper
- (CNAutocompleteFetchDelegate)delegate;
- (CNAutocompleteStoreQueryHelper)initWithSearchProvider:(id)a3 delegate:(id)a4 probeProvider:(id)a5 scheduler:(id)a6 userSession:(id)a7;
- (id)executeFetchRequest:(id)a3 delegate:(id)a4 delegateToken:(id)a5;
@end

@implementation CNAutocompleteStoreQueryHelper

- (CNAutocompleteFetchDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CNAutocompleteStoreQueryHelper)initWithSearchProvider:(id)a3 delegate:(id)a4 probeProvider:(id)a5 scheduler:(id)a6 userSession:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v24.receiver = self;
  v24.super_class = CNAutocompleteStoreQueryHelper;
  v18 = [(CNAutocompleteStoreQueryHelper *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_searchProvider, a3);
    objc_storeWeak(&v19->_delegate, v14);
    v20 = objc_alloc_init(CNAutocompleteStoreQueryContext);
    queryContext = v19->_queryContext;
    v19->_queryContext = v20;

    objc_storeStrong(&v19->_probeProvider, a5);
    objc_storeStrong(&v19->_scheduler, a6);
    objc_storeStrong(&v19->_userSession, a7);
    v22 = v19;
  }

  return v19;
}

- (id)executeFetchRequest:(id)a3 delegate:(id)a4 delegateToken:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [(CNAutocompleteStoreQueryHelper *)self delegate];
  }

  v12 = v11;
  v13 = [(CNAutocompleteStoreQueryHelper *)self searchProvider];
  v14 = [(CNAutocompleteStoreQueryHelper *)self probeProvider];
  v15 = [(CNAutocompleteStoreQueryHelper *)self scheduler];
  v16 = [(CNAutocompleteStoreQueryHelper *)self userSession];
  v17 = [CNAutocompleteQuery queryWithRequest:v8 searchProvider:v13 delegate:v12 probeProvider:v14 scheduler:v15 userSession:v16 delegateToken:v10];

  v18 = CNALoggingContextDebug();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v17;
    _os_log_impl(&dword_2155FE000, v18, OS_LOG_TYPE_DEFAULT, "Query: %@", buf, 0xCu);
  }

  v19 = [(CNAutocompleteStoreQueryHelper *)self queryContext];
  v20 = [v17 executeWithContext:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

@end