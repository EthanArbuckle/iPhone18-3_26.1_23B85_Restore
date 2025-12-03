@interface LACDomainStateProvider
- (LACDomainStateProvider)initWithProviders:(id)providers;
- (void)_domainStateWithProviders:(id)providers request:(id)request partialResult:(id)result completion:(id)completion;
@end

@implementation LACDomainStateProvider

- (LACDomainStateProvider)initWithProviders:(id)providers
{
  providersCopy = providers;
  v9.receiver = self;
  v9.super_class = LACDomainStateProvider;
  v6 = [(LACDomainStateProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_providers, providers);
  }

  return v7;
}

- (void)_domainStateWithProviders:(id)providers request:(id)request partialResult:(id)result completion:(id)completion
{
  providersCopy = providers;
  requestCopy = request;
  resultCopy = result;
  completionCopy = completion;
  if ([providersCopy count])
  {
    objc_initWeak(&location, self);
    firstObject = [providersCopy firstObject];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __85__LACDomainStateProvider__domainStateWithProviders_request_partialResult_completion___block_invoke;
    v15[3] = &unk_1E7A97B30;
    objc_copyWeak(&v20, &location);
    v19 = completionCopy;
    v16 = providersCopy;
    v17 = resultCopy;
    v18 = requestCopy;
    [firstObject domainStateForRequest:v18 completion:v15];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, resultCopy, 0);
  }
}

void __85__LACDomainStateProvider__domainStateWithProviders_request_partialResult_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (v5)
    {
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v7 = [*(a1 + 32) subarrayWithRange:{1, objc_msgSend(*(a1 + 32), "count") - 1}];
      v8 = [*(a1 + 40) mutableCopy];
      [v8 addEntriesFromDictionary:v9];
      [WeakRetained _domainStateWithProviders:v7 request:*(a1 + 48) partialResult:v8 completion:*(a1 + 56)];
    }
  }
}

@end