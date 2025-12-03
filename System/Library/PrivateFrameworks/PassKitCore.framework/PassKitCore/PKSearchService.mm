@interface PKSearchService
- (BOOL)canProvideFullResults;
- (BOOL)hasSearchableContentForQuery:(id)query;
- (PKSearchService)init;
- (id)errorHandlerForMethod:(SEL)method completion:(id)completion;
- (void)_accessObserversWithHandler:(id)handler;
- (void)cancelQueryWithIdentifier:(id)identifier;
- (void)indexedPassesWithCompletion:(id)completion;
- (void)indexedTransactionWithIdentifier:(id)identifier completion:(id)completion;
- (void)indexedTransactionsWithCompletion:(id)completion;
- (void)regionsWithCompletion:(id)completion;
- (void)registerObserver:(id)observer;
- (void)resetRegionsCoordinatesWithCompletion:(id)completion;
- (void)resetRegionsWithCompletion:(id)completion;
- (void)searchDidCompleteWithError:(id)error forIdentifier:(id)identifier;
- (void)searchDidReceivePartialResults:(id)results forIdentifier:(id)identifier;
- (void)searchWithQuery:(id)query;
- (void)transactionsMissingRegionsWithCompletion:(id)completion;
- (void)unregisterObserver:(id)observer;
- (void)updateRegionWithIdentifier:(id)identifier localizedName:(id)name boundingRegion:(id *)region mapsIdentifier:(unint64_t)mapsIdentifier providerIdentifier:(int)providerIdentifier completion:(id)completion;
@end

@implementation PKSearchService

- (PKSearchService)init
{
  v17.receiver = self;
  v17.super_class = PKSearchService;
  v2 = [(PKSearchService *)&v17 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INTERACTIVE, 0);

    v5 = dispatch_queue_create("com.apple.passkit.search.reply", v4);
    replyQueue = v2->_replyQueue;
    v2->_replyQueue = v5;

    v7 = [PKXPCService alloc];
    v8 = PKSearchServiceDaemonInterface();
    v9 = PKSearchServiceClientInterface();
    v10 = [(PKXPCService *)v7 initWithMachServiceName:@"com.apple.passd.search" remoteObjectInterface:v8 exportedObjectInterface:v9 exportedObject:v2];
    remoteService = v2->_remoteService;
    v2->_remoteService = v10;

    v2->_lockObservers._os_unfair_lock_opaque = 0;
    pk_weakObjectsHashTableUsingPointerPersonality = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
    observers = v2->_observers;
    v2->_observers = pk_weakObjectsHashTableUsingPointerPersonality;

    v2->_lockResults._os_unfair_lock_opaque = 0;
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    results = v2->_results;
    v2->_results = v14;
  }

  return v2;
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v5 = observerCopy;
    os_unfair_lock_lock(&self->_lockObservers);
    [(NSHashTable *)self->_observers addObject:v5];
    os_unfair_lock_unlock(&self->_lockObservers);
    observerCopy = v5;
  }
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v5 = observerCopy;
    os_unfair_lock_lock(&self->_lockObservers);
    [(NSHashTable *)self->_observers removeObject:v5];
    os_unfair_lock_unlock(&self->_lockObservers);
    observerCopy = v5;
  }
}

- (void)_accessObserversWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    os_unfair_lock_lock(&self->_lockObservers);
    allObjects = [(NSHashTable *)self->_observers allObjects];
    os_unfair_lock_unlock(&self->_lockObservers);
    replyQueue = self->_replyQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __47__PKSearchService__accessObserversWithHandler___block_invoke;
    v8[3] = &unk_1E79C4A40;
    v9 = allObjects;
    v10 = handlerCopy;
    v7 = allObjects;
    dispatch_async(replyQueue, v8);
  }
}

void __47__PKSearchService__accessObserversWithHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)errorHandlerForMethod:(SEL)method completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__PKSearchService_errorHandlerForMethod_completion___block_invoke;
  aBlock[3] = &unk_1E79C8E18;
  v12 = completionCopy;
  methodCopy = method;
  aBlock[4] = self;
  v7 = completionCopy;
  v8 = _Block_copy(aBlock);
  v9 = _Block_copy(v8);

  return v9;
}

void __52__PKSearchService_errorHandlerForMethod_completion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0x13uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKSearchService %@];", &buf, 0xCu);
  }

  v6 = *(*(a1 + 32) + 16);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__PKSearchService_errorHandlerForMethod_completion___block_invoke_20;
  v11[3] = &unk_1E79C44F0;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v12 = v3;
  v13 = v8;
  v14 = v7;
  v9 = v11;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v16 = __dispatch_async_ar_block_invoke_15;
  v17 = &unk_1E79C4428;
  v18 = v9;
  v10 = v3;
  dispatch_async(v6, &buf);
}

uint64_t __52__PKSearchService_errorHandlerForMethod_completion___block_invoke_20(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (BOOL)canProvideFullResults
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  remoteService = self->_remoteService;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__PKSearchService_canProvideFullResults__block_invoke;
  v7[3] = &unk_1E79CA7B0;
  v7[4] = &v8;
  v3 = [(PKSearchService *)self errorHandlerForMethod:a2 completion:v7];
  v4 = [(PKXPCService *)remoteService synchronousRemoteObjectProxyWithErrorHandler:v3];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__PKSearchService_canProvideFullResults__block_invoke_2;
  v6[3] = &unk_1E79C4798;
  v6[4] = &v8;
  [v4 canProvideFullResultsWithCompletion:v6];
  LOBYTE(v3) = *(v9 + 24);

  _Block_object_dispose(&v8, 8);
  return v3;
}

- (BOOL)hasSearchableContentForQuery:(id)query
{
  queryCopy = query;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  remoteService = self->_remoteService;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__PKSearchService_hasSearchableContentForQuery___block_invoke;
  v11[3] = &unk_1E79CA7B0;
  v11[4] = &v12;
  v7 = [(PKSearchService *)self errorHandlerForMethod:a2 completion:v11];
  v8 = [(PKXPCService *)remoteService synchronousRemoteObjectProxyWithErrorHandler:v7];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__PKSearchService_hasSearchableContentForQuery___block_invoke_2;
  v10[3] = &unk_1E79C4798;
  v10[4] = &v12;
  [v8 hasSearchableContentForQuery:queryCopy withCompletion:v10];
  LOBYTE(v7) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (void)searchWithQuery:(id)query
{
  queryCopy = query;
  v6 = queryCopy;
  if (queryCopy && ([queryCopy identifier], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __35__PKSearchService_searchWithQuery___block_invoke;
    v13[3] = &unk_1E79CDC10;
    objc_copyWeak(&v15, &location);
    v8 = v6;
    v14 = v8;
    v9 = [(PKSearchService *)self errorHandlerForMethod:a2 completion:v13];
    v10 = [(PKSearchService *)self _remoteObjectProxyWithErrorHandler:v9];

    [v10 searchWithQuery:v8];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKSearchErrorDomain" code:3 userInfo:0];
    identifier = [v6 identifier];
    [(PKSearchService *)self searchDidCompleteWithError:v11 forIdentifier:identifier];
  }
}

void __35__PKSearchService_searchWithQuery___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = [*(a1 + 32) identifier];
    [WeakRetained searchDidCompleteWithError:v5 forIdentifier:v4];
  }
}

- (void)cancelQueryWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__PKSearchService_cancelQueryWithIdentifier___block_invoke;
  v9[3] = &unk_1E79CDC10;
  objc_copyWeak(&v11, &location);
  v6 = identifierCopy;
  v10 = v6;
  v7 = [(PKSearchService *)self errorHandlerForMethod:a2 completion:v9];
  v8 = [(PKSearchService *)self _remoteObjectProxyWithErrorHandler:v7];

  [v8 cancelQueryWithIdentifier:v6];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __45__PKSearchService_cancelQueryWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained searchDidCompleteWithError:v5 forIdentifier:*(a1 + 32)];
  }
}

- (void)updateRegionWithIdentifier:(id)identifier localizedName:(id)name boundingRegion:(id *)region mapsIdentifier:(unint64_t)mapsIdentifier providerIdentifier:(int)providerIdentifier completion:(id)completion
{
  v14 = v11;
  v15 = v10;
  v16 = v9;
  v17 = v8;
  v22 = *&providerIdentifier;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __120__PKSearchService_updateRegionWithIdentifier_localizedName_boundingRegion_mapsIdentifier_providerIdentifier_completion___block_invoke;
  v31[3] = &unk_1E79C4450;
  v23 = v22;
  v32 = v23;
  nameCopy = name;
  identifierCopy = identifier;
  v26 = [(PKSearchService *)self errorHandlerForMethod:a2 completion:v31];
  v27 = [(PKSearchService *)self _remoteObjectProxyWithErrorHandler:v26];

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __120__PKSearchService_updateRegionWithIdentifier_localizedName_boundingRegion_mapsIdentifier_providerIdentifier_completion___block_invoke_2;
  v29[3] = &unk_1E79DDEE0;
  v30 = v23;
  v28 = v23;
  [v27 updateRegionWithIdentifier:identifierCopy localizedName:nameCopy boundingRegion:region mapsIdentifier:mapsIdentifier providerIdentifier:v29 completion:{v17, v16, v15, v14}];
}

uint64_t __120__PKSearchService_updateRegionWithIdentifier_localizedName_boundingRegion_mapsIdentifier_providerIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __120__PKSearchService_updateRegionWithIdentifier_localizedName_boundingRegion_mapsIdentifier_providerIdentifier_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)searchDidReceivePartialResults:(id)results forIdentifier:(id)identifier
{
  v57 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  identifierCopy = identifier;
  v8 = PKSearchDetailedLoggingEnabledInWallet();
  v9 = PKLogFacilityTypeGetObject(0x13uLL);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (!v10)
    {
      goto LABEL_7;
    }

    *v56 = 138412546;
    *&v56[4] = identifierCopy;
    *&v56[12] = 2112;
    *&v56[14] = resultsCopy;
    v11 = "searchDidReceivePartialResults identifier: %@, results: %@";
    v12 = v9;
    v13 = 22;
  }

  else
  {
    if (!v10)
    {
      goto LABEL_7;
    }

    *v56 = 138412290;
    *&v56[4] = identifierCopy;
    v11 = "searchDidReceivePartialResults identifier: %@";
    v12 = v9;
    v13 = 12;
  }

  _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, v11, v56, v13);
LABEL_7:

  os_unfair_lock_lock(&self->_lockResults);
  v14 = [(NSMutableDictionary *)self->_results objectForKey:identifierCopy];
  if (v14)
  {
    v15 = v14;
    categoryResults = [resultsCopy categoryResults];

    if (categoryResults)
    {
      categoryResults2 = [resultsCopy categoryResults];
      [v15 setCategoryResults:categoryResults2];
    }

    merchantResults = [resultsCopy merchantResults];

    if (merchantResults)
    {
      merchantResults2 = [resultsCopy merchantResults];
      [v15 setMerchantResults:merchantResults2];
    }

    transactionResults = [resultsCopy transactionResults];

    if (transactionResults)
    {
      transactionResults2 = [resultsCopy transactionResults];
      [v15 setTransactionResults:transactionResults2];
    }

    locationResults = [resultsCopy locationResults];

    if (locationResults)
    {
      locationResults2 = [resultsCopy locationResults];
      [v15 setLocationResults:locationResults2];
    }

    personResults = [resultsCopy personResults];

    if (personResults)
    {
      personResults2 = [resultsCopy personResults];
      [v15 setPersonResults:personResults2];
    }

    topHitBarcodePassResults = [resultsCopy topHitBarcodePassResults];

    if (topHitBarcodePassResults)
    {
      topHitBarcodePassResults2 = [resultsCopy topHitBarcodePassResults];
      [v15 setTopHitBarcodePassResults:topHitBarcodePassResults2];
    }

    topHitPaymentPassResults = [resultsCopy topHitPaymentPassResults];

    if (topHitPaymentPassResults)
    {
      topHitPaymentPassResults2 = [resultsCopy topHitPaymentPassResults];
      [v15 setTopHitPaymentPassResults:topHitPaymentPassResults2];
    }

    topHitKeyAndIDResults = [resultsCopy topHitKeyAndIDResults];

    if (topHitKeyAndIDResults)
    {
      topHitKeyAndIDResults2 = [resultsCopy topHitKeyAndIDResults];
      [v15 setTopHitKeyAndIDResults:topHitKeyAndIDResults2];
    }

    barcodePassResults = [resultsCopy barcodePassResults];

    if (barcodePassResults)
    {
      barcodePassResults2 = [resultsCopy barcodePassResults];
      [v15 setBarcodePassResults:barcodePassResults2];
    }

    expiredPassResults = [resultsCopy expiredPassResults];

    if (expiredPassResults)
    {
      expiredPassResults2 = [resultsCopy expiredPassResults];
      [v15 setExpiredPassResults:expiredPassResults2];
    }

    paymentPassResults = [resultsCopy paymentPassResults];

    if (paymentPassResults)
    {
      paymentPassResults2 = [resultsCopy paymentPassResults];
      [v15 setPaymentPassResults:paymentPassResults2];
    }

    keyAndIDResults = [resultsCopy keyAndIDResults];

    if (keyAndIDResults)
    {
      keyAndIDResults2 = [resultsCopy keyAndIDResults];
      [v15 setKeyAndIDResults:keyAndIDResults2];
    }

    suggestedAutocompleteTokens = [resultsCopy suggestedAutocompleteTokens];

    if (suggestedAutocompleteTokens)
    {
      suggestedAutocompleteTokens2 = [resultsCopy suggestedAutocompleteTokens];
      [v15 setSuggestedAutocompleteTokens:suggestedAutocompleteTokens2];
    }

    placeholderString = [resultsCopy placeholderString];

    if (placeholderString)
    {
      placeholderString2 = [resultsCopy placeholderString];
      [v15 setPlaceholderString:placeholderString2];
    }

    transactionTagResults = [resultsCopy transactionTagResults];

    if (transactionTagResults)
    {
      transactionTagResults2 = [resultsCopy transactionTagResults];
      [v15 setTransactionTagResults:transactionTagResults2];
    }

    orderResults = [resultsCopy orderResults];

    if (orderResults)
    {
      orderResults2 = [resultsCopy orderResults];
      [v15 setOrderResults:orderResults2];
    }

    paymentSetupProductResults = [resultsCopy paymentSetupProductResults];

    if (paymentSetupProductResults)
    {
      paymentSetupProductResults2 = [resultsCopy paymentSetupProductResults];
      [v15 setPaymentSetupProductResults:paymentSetupProductResults2];
    }

    pendingPeerPaymentRequestResults = [resultsCopy pendingPeerPaymentRequestResults];

    if (pendingPeerPaymentRequestResults)
    {
      pendingPeerPaymentRequestResults2 = [resultsCopy pendingPeerPaymentRequestResults];
      [v15 setPendingPeerPaymentRequestResults:pendingPeerPaymentRequestResults2];
    }

    topHitAccountResults = [resultsCopy topHitAccountResults];

    if (topHitAccountResults)
    {
      topHitAccountResults2 = [resultsCopy topHitAccountResults];
      [v15 setTopHitAccountResults:topHitAccountResults2];
    }

    accountResults = [resultsCopy accountResults];

    if (accountResults)
    {
      accountResults2 = [resultsCopy accountResults];
      [v15 setAccountResults:accountResults2];
    }
  }

  else
  {
    v15 = resultsCopy;
    [(NSMutableDictionary *)self->_results setObject:v15 forKey:identifierCopy];
  }

  os_unfair_lock_unlock(&self->_lockResults);
}

- (void)searchDidCompleteWithError:(id)error forIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  identifierCopy = identifier;
  v8 = PKLogFacilityTypeGetObject(0x13uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = errorCopy;
    v19 = 2112;
    v20 = identifierCopy;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "searchDidCompleteWithError %@ identifier: %@", buf, 0x16u);
  }

  if (identifierCopy)
  {
    os_unfair_lock_lock(&self->_lockResults);
    v9 = [(NSMutableDictionary *)self->_results objectForKey:identifierCopy];
    [(NSMutableDictionary *)self->_results removeObjectForKey:identifierCopy];
    os_unfair_lock_unlock(&self->_lockResults);
  }

  else
  {
    v9 = 0;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__PKSearchService_searchDidCompleteWithError_forIdentifier___block_invoke;
  v13[3] = &unk_1E79DDF08;
  v14 = errorCopy;
  v15 = v9;
  v16 = identifierCopy;
  v10 = identifierCopy;
  v11 = v9;
  v12 = errorCopy;
  [(PKSearchService *)self _accessObserversWithHandler:v13];
}

void __60__PKSearchService_searchDidCompleteWithError_forIdentifier___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 searchDidCompleteWithError:a1[4] results:a1[5] forIdentifier:a1[6]];
  }
}

void __42__PKSearchService_invalidateSearchResults__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 invalidateSearchResults];
  }
}

- (void)regionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = completionCopy;
  if (completionCopy)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __41__PKSearchService_regionsWithCompletion___block_invoke;
    v12[3] = &unk_1E79C4450;
    v7 = completionCopy;
    v13 = v7;
    v8 = [(PKSearchService *)self errorHandlerForMethod:a2 completion:v12];
    v9 = [(PKSearchService *)self _remoteObjectProxyWithErrorHandler:v8];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __41__PKSearchService_regionsWithCompletion___block_invoke_2;
    v10[3] = &unk_1E79D1300;
    v11 = v7;
    [v9 regionsWithCompletion:v10];
  }
}

- (void)resetRegionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__PKSearchService_resetRegionsWithCompletion___block_invoke;
  v12[3] = &unk_1E79C4450;
  v6 = completionCopy;
  v13 = v6;
  v7 = [(PKSearchService *)self errorHandlerForMethod:a2 completion:v12];
  v8 = [(PKSearchService *)self _remoteObjectProxyWithErrorHandler:v7];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__PKSearchService_resetRegionsWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79C4428;
  v11 = v6;
  v9 = v6;
  [v8 resetRegionsWithCompletion:v10];
}

uint64_t __46__PKSearchService_resetRegionsWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __46__PKSearchService_resetRegionsWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)resetRegionsCoordinatesWithCompletion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__PKSearchService_resetRegionsCoordinatesWithCompletion___block_invoke;
  v12[3] = &unk_1E79C4450;
  v6 = completionCopy;
  v13 = v6;
  v7 = [(PKSearchService *)self errorHandlerForMethod:a2 completion:v12];
  v8 = [(PKSearchService *)self _remoteObjectProxyWithErrorHandler:v7];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__PKSearchService_resetRegionsCoordinatesWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79C4428;
  v11 = v6;
  v9 = v6;
  [v8 resetRegionsCoordinatesWithCompletion:v10];
}

uint64_t __57__PKSearchService_resetRegionsCoordinatesWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __57__PKSearchService_resetRegionsCoordinatesWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)transactionsMissingRegionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = completionCopy;
  if (completionCopy)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__PKSearchService_transactionsMissingRegionsWithCompletion___block_invoke;
    v12[3] = &unk_1E79C4450;
    v7 = completionCopy;
    v13 = v7;
    v8 = [(PKSearchService *)self errorHandlerForMethod:a2 completion:v12];
    v9 = [(PKSearchService *)self _remoteObjectProxyWithErrorHandler:v8];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__PKSearchService_transactionsMissingRegionsWithCompletion___block_invoke_2;
    v10[3] = &unk_1E79DDF50;
    v11 = v7;
    [v9 transactionsMissingRegionsWithCompletion:v10];
  }
}

- (void)indexedTransactionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = completionCopy;
  if (completionCopy)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__PKSearchService_indexedTransactionsWithCompletion___block_invoke;
    v12[3] = &unk_1E79C4450;
    v7 = completionCopy;
    v13 = v7;
    v8 = [(PKSearchService *)self errorHandlerForMethod:a2 completion:v12];
    v9 = [(PKSearchService *)self _remoteObjectProxyWithErrorHandler:v8];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__PKSearchService_indexedTransactionsWithCompletion___block_invoke_2;
    v10[3] = &unk_1E79C5440;
    v11 = v7;
    [v9 indexedTransactionsWithCompletion:v10];
  }
}

- (void)indexedTransactionWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __63__PKSearchService_indexedTransactionWithIdentifier_completion___block_invoke;
    v15[3] = &unk_1E79C4450;
    v9 = completionCopy;
    v16 = v9;
    identifierCopy = identifier;
    v11 = [(PKSearchService *)self errorHandlerForMethod:a2 completion:v15];
    v12 = [(PKSearchService *)self _remoteObjectProxyWithErrorHandler:v11];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __63__PKSearchService_indexedTransactionWithIdentifier_completion___block_invoke_2;
    v13[3] = &unk_1E79DDF78;
    v14 = v9;
    [v12 indexedTransactionWithIdentifier:identifierCopy completion:v13];
  }
}

- (void)indexedPassesWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = completionCopy;
  if (completionCopy)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__PKSearchService_indexedPassesWithCompletion___block_invoke;
    v12[3] = &unk_1E79C4450;
    v7 = completionCopy;
    v13 = v7;
    v8 = [(PKSearchService *)self errorHandlerForMethod:a2 completion:v12];
    v9 = [(PKSearchService *)self _remoteObjectProxyWithErrorHandler:v8];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __47__PKSearchService_indexedPassesWithCompletion___block_invoke_2;
    v10[3] = &unk_1E79C5440;
    v11 = v7;
    [v9 indexedPassesWithCompletion:v10];
  }
}

@end