@interface CNAutocompleteStoreQueryHelper
- (CNAutocompleteFetchDelegate)delegate;
- (CNAutocompleteStoreQueryHelper)initWithSearchProvider:(id)provider delegate:(id)delegate probeProvider:(id)probeProvider scheduler:(id)scheduler userSession:(id)session;
- (id)executeFetchRequest:(id)request delegate:(id)delegate delegateToken:(id)token;
@end

@implementation CNAutocompleteStoreQueryHelper

- (CNAutocompleteFetchDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CNAutocompleteStoreQueryHelper)initWithSearchProvider:(id)provider delegate:(id)delegate probeProvider:(id)probeProvider scheduler:(id)scheduler userSession:(id)session
{
  providerCopy = provider;
  delegateCopy = delegate;
  probeProviderCopy = probeProvider;
  schedulerCopy = scheduler;
  sessionCopy = session;
  v24.receiver = self;
  v24.super_class = CNAutocompleteStoreQueryHelper;
  v18 = [(CNAutocompleteStoreQueryHelper *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_searchProvider, provider);
    objc_storeWeak(&v19->_delegate, delegateCopy);
    v20 = objc_alloc_init(CNAutocompleteStoreQueryContext);
    queryContext = v19->_queryContext;
    v19->_queryContext = v20;

    objc_storeStrong(&v19->_probeProvider, probeProvider);
    objc_storeStrong(&v19->_scheduler, scheduler);
    objc_storeStrong(&v19->_userSession, session);
    v22 = v19;
  }

  return v19;
}

- (id)executeFetchRequest:(id)request delegate:(id)delegate delegateToken:(id)token
{
  v25 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  delegateCopy = delegate;
  tokenCopy = token;
  if (delegateCopy)
  {
    delegate = delegateCopy;
  }

  else
  {
    delegate = [(CNAutocompleteStoreQueryHelper *)self delegate];
  }

  v12 = delegate;
  searchProvider = [(CNAutocompleteStoreQueryHelper *)self searchProvider];
  probeProvider = [(CNAutocompleteStoreQueryHelper *)self probeProvider];
  scheduler = [(CNAutocompleteStoreQueryHelper *)self scheduler];
  userSession = [(CNAutocompleteStoreQueryHelper *)self userSession];
  v17 = [CNAutocompleteQuery queryWithRequest:requestCopy searchProvider:searchProvider delegate:v12 probeProvider:probeProvider scheduler:scheduler userSession:userSession delegateToken:tokenCopy];

  v18 = CNALoggingContextDebug();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v17;
    _os_log_impl(&dword_2155FE000, v18, OS_LOG_TYPE_DEFAULT, "Query: %@", buf, 0xCu);
  }

  queryContext = [(CNAutocompleteStoreQueryHelper *)self queryContext];
  v20 = [v17 executeWithContext:queryContext];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

@end