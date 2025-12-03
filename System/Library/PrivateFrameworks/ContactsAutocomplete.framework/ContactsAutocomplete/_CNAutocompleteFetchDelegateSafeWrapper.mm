@interface _CNAutocompleteFetchDelegateSafeWrapper
- (BOOL)autocompleteFetch:(id)fetch shouldExpectSupplementalResultsForRequest:(id)request completionHandler:(id)handler;
- (_CNAutocompleteFetchDelegateSafeWrapper)initWithDelegate:(id)delegate;
- (id)autocompleteFetch:(id)fetch willAdjustResults:(id)results;
- (id)resultComparatorForAutocompleteFetch:(id)fetch;
- (void)autocompleteFetch:(id)fetch didFailWithError:(id)error;
- (void)autocompleteFetch:(id)fetch didReceiveResults:(id)results;
- (void)autocompleteFetch:(id)fetch willSortResults:(id)results;
- (void)autocompleteFetchDidBeginNetworkActivity:(id)activity;
- (void)autocompleteFetchDidEndNetworkActivity:(id)activity;
- (void)autocompleteFetchDidFinish:(id)finish;
@end

@implementation _CNAutocompleteFetchDelegateSafeWrapper

- (_CNAutocompleteFetchDelegateSafeWrapper)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = _CNAutocompleteFetchDelegateSafeWrapper;
  v5 = [(_CNAutocompleteFetchDelegateSafeWrapper *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = v6;
  }

  return v6;
}

- (void)autocompleteFetch:(id)fetch didReceiveResults:(id)results
{
  fetchCopy = fetch;
  resultsCopy = results;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 autocompleteFetch:fetchCopy didReceiveResults:resultsCopy];
  }
}

- (void)autocompleteFetch:(id)fetch didFailWithError:(id)error
{
  fetchCopy = fetch;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 autocompleteFetch:fetchCopy didFailWithError:errorCopy];
  }
}

- (void)autocompleteFetchDidFinish:(id)finish
{
  finishCopy = finish;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 autocompleteFetchDidFinish:finishCopy];
  }
}

- (void)autocompleteFetchDidBeginNetworkActivity:(id)activity
{
  activityCopy = activity;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 autocompleteFetchDidBeginNetworkActivity:activityCopy];
  }
}

- (void)autocompleteFetchDidEndNetworkActivity:(id)activity
{
  activityCopy = activity;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 autocompleteFetchDidEndNetworkActivity:activityCopy];
  }
}

- (BOOL)autocompleteFetch:(id)fetch shouldExpectSupplementalResultsForRequest:(id)request completionHandler:(id)handler
{
  fetchCopy = fetch;
  requestCopy = request;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = objc_loadWeakRetained(&self->_delegate);
    v14 = [v13 autocompleteFetch:fetchCopy shouldExpectSupplementalResultsForRequest:requestCopy completionHandler:handlerCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)autocompleteFetch:(id)fetch willAdjustResults:(id)results
{
  fetchCopy = fetch;
  resultsCopy = results;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = CNALoggingContextDebug();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_2155FE000, v10, OS_LOG_TYPE_DEFAULT, "Asking delegate to adjust results", v14, 2u);
    }

    v11 = objc_loadWeakRetained(&self->_delegate);
    v12 = [v11 autocompleteFetch:fetchCopy willAdjustResults:resultsCopy];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  return v12;
}

- (void)autocompleteFetch:(id)fetch willSortResults:(id)results
{
  fetchCopy = fetch;
  resultsCopy = results;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 autocompleteFetch:fetchCopy willSortResults:resultsCopy];
  }
}

- (id)resultComparatorForAutocompleteFetch:(id)fetch
{
  fetchCopy = fetch;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = [v7 resultComparatorForAutocompleteFetch:fetchCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end