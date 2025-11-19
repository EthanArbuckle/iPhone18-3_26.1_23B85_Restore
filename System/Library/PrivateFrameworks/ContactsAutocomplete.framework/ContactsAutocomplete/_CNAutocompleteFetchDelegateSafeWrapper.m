@interface _CNAutocompleteFetchDelegateSafeWrapper
- (BOOL)autocompleteFetch:(id)a3 shouldExpectSupplementalResultsForRequest:(id)a4 completionHandler:(id)a5;
- (_CNAutocompleteFetchDelegateSafeWrapper)initWithDelegate:(id)a3;
- (id)autocompleteFetch:(id)a3 willAdjustResults:(id)a4;
- (id)resultComparatorForAutocompleteFetch:(id)a3;
- (void)autocompleteFetch:(id)a3 didFailWithError:(id)a4;
- (void)autocompleteFetch:(id)a3 didReceiveResults:(id)a4;
- (void)autocompleteFetch:(id)a3 willSortResults:(id)a4;
- (void)autocompleteFetchDidBeginNetworkActivity:(id)a3;
- (void)autocompleteFetchDidEndNetworkActivity:(id)a3;
- (void)autocompleteFetchDidFinish:(id)a3;
@end

@implementation _CNAutocompleteFetchDelegateSafeWrapper

- (_CNAutocompleteFetchDelegateSafeWrapper)initWithDelegate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _CNAutocompleteFetchDelegateSafeWrapper;
  v5 = [(_CNAutocompleteFetchDelegateSafeWrapper *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = v6;
  }

  return v6;
}

- (void)autocompleteFetch:(id)a3 didReceiveResults:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 autocompleteFetch:v10 didReceiveResults:v6];
  }
}

- (void)autocompleteFetch:(id)a3 didFailWithError:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 autocompleteFetch:v10 didFailWithError:v6];
  }
}

- (void)autocompleteFetchDidFinish:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 autocompleteFetchDidFinish:v7];
  }
}

- (void)autocompleteFetchDidBeginNetworkActivity:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 autocompleteFetchDidBeginNetworkActivity:v7];
  }
}

- (void)autocompleteFetchDidEndNetworkActivity:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 autocompleteFetchDidEndNetworkActivity:v7];
  }
}

- (BOOL)autocompleteFetch:(id)a3 shouldExpectSupplementalResultsForRequest:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = objc_loadWeakRetained(&self->_delegate);
    v14 = [v13 autocompleteFetch:v8 shouldExpectSupplementalResultsForRequest:v9 completionHandler:v10];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)autocompleteFetch:(id)a3 willAdjustResults:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v12 = [v11 autocompleteFetch:v6 willAdjustResults:v7];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  return v12;
}

- (void)autocompleteFetch:(id)a3 willSortResults:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 autocompleteFetch:v10 willSortResults:v6];
  }
}

- (id)resultComparatorForAutocompleteFetch:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = [v7 resultComparatorForAutocompleteFetch:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end