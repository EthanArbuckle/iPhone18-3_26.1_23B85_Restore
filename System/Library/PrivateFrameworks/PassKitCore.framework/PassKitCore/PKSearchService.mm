@interface PKSearchService
- (BOOL)canProvideFullResults;
- (BOOL)hasSearchableContentForQuery:(id)a3;
- (PKSearchService)init;
- (id)errorHandlerForMethod:(SEL)a3 completion:(id)a4;
- (void)_accessObserversWithHandler:(id)a3;
- (void)cancelQueryWithIdentifier:(id)a3;
- (void)indexedPassesWithCompletion:(id)a3;
- (void)indexedTransactionWithIdentifier:(id)a3 completion:(id)a4;
- (void)indexedTransactionsWithCompletion:(id)a3;
- (void)regionsWithCompletion:(id)a3;
- (void)registerObserver:(id)a3;
- (void)resetRegionsCoordinatesWithCompletion:(id)a3;
- (void)resetRegionsWithCompletion:(id)a3;
- (void)searchDidCompleteWithError:(id)a3 forIdentifier:(id)a4;
- (void)searchDidReceivePartialResults:(id)a3 forIdentifier:(id)a4;
- (void)searchWithQuery:(id)a3;
- (void)transactionsMissingRegionsWithCompletion:(id)a3;
- (void)unregisterObserver:(id)a3;
- (void)updateRegionWithIdentifier:(id)a3 localizedName:(id)a4 boundingRegion:(id *)a5 mapsIdentifier:(unint64_t)a6 providerIdentifier:(int)a7 completion:(id)a8;
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
    v12 = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
    observers = v2->_observers;
    v2->_observers = v12;

    v2->_lockResults._os_unfair_lock_opaque = 0;
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    results = v2->_results;
    v2->_results = v14;
  }

  return v2;
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock(&self->_lockObservers);
    [(NSHashTable *)self->_observers addObject:v5];
    os_unfair_lock_unlock(&self->_lockObservers);
    v4 = v5;
  }
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock(&self->_lockObservers);
    [(NSHashTable *)self->_observers removeObject:v5];
    os_unfair_lock_unlock(&self->_lockObservers);
    v4 = v5;
  }
}

- (void)_accessObserversWithHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_lockObservers);
    v5 = [(NSHashTable *)self->_observers allObjects];
    os_unfair_lock_unlock(&self->_lockObservers);
    replyQueue = self->_replyQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __47__PKSearchService__accessObserversWithHandler___block_invoke;
    v8[3] = &unk_1E79C4A40;
    v9 = v5;
    v10 = v4;
    v7 = v5;
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

- (id)errorHandlerForMethod:(SEL)a3 completion:(id)a4
{
  v6 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__PKSearchService_errorHandlerForMethod_completion___block_invoke;
  aBlock[3] = &unk_1E79C8E18;
  v12 = v6;
  v13 = a3;
  aBlock[4] = self;
  v7 = v6;
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

- (BOOL)hasSearchableContentForQuery:(id)a3
{
  v5 = a3;
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
  [v8 hasSearchableContentForQuery:v5 withCompletion:v10];
  LOBYTE(v7) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (void)searchWithQuery:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5 && ([v5 identifier], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
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
    v12 = [v6 identifier];
    [(PKSearchService *)self searchDidCompleteWithError:v11 forIdentifier:v12];
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

- (void)cancelQueryWithIdentifier:(id)a3
{
  v5 = a3;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__PKSearchService_cancelQueryWithIdentifier___block_invoke;
  v9[3] = &unk_1E79CDC10;
  objc_copyWeak(&v11, &location);
  v6 = v5;
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

- (void)updateRegionWithIdentifier:(id)a3 localizedName:(id)a4 boundingRegion:(id *)a5 mapsIdentifier:(unint64_t)a6 providerIdentifier:(int)a7 completion:(id)a8
{
  v14 = v11;
  v15 = v10;
  v16 = v9;
  v17 = v8;
  v22 = *&a7;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __120__PKSearchService_updateRegionWithIdentifier_localizedName_boundingRegion_mapsIdentifier_providerIdentifier_completion___block_invoke;
  v31[3] = &unk_1E79C4450;
  v23 = v22;
  v32 = v23;
  v24 = a4;
  v25 = a3;
  v26 = [(PKSearchService *)self errorHandlerForMethod:a2 completion:v31];
  v27 = [(PKSearchService *)self _remoteObjectProxyWithErrorHandler:v26];

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __120__PKSearchService_updateRegionWithIdentifier_localizedName_boundingRegion_mapsIdentifier_providerIdentifier_completion___block_invoke_2;
  v29[3] = &unk_1E79DDEE0;
  v30 = v23;
  v28 = v23;
  [v27 updateRegionWithIdentifier:v25 localizedName:v24 boundingRegion:a5 mapsIdentifier:a6 providerIdentifier:v29 completion:{v17, v16, v15, v14}];
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

- (void)searchDidReceivePartialResults:(id)a3 forIdentifier:(id)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
    *&v56[4] = v7;
    *&v56[12] = 2112;
    *&v56[14] = v6;
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
    *&v56[4] = v7;
    v11 = "searchDidReceivePartialResults identifier: %@";
    v12 = v9;
    v13 = 12;
  }

  _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, v11, v56, v13);
LABEL_7:

  os_unfair_lock_lock(&self->_lockResults);
  v14 = [(NSMutableDictionary *)self->_results objectForKey:v7];
  if (v14)
  {
    v15 = v14;
    v16 = [v6 categoryResults];

    if (v16)
    {
      v17 = [v6 categoryResults];
      [v15 setCategoryResults:v17];
    }

    v18 = [v6 merchantResults];

    if (v18)
    {
      v19 = [v6 merchantResults];
      [v15 setMerchantResults:v19];
    }

    v20 = [v6 transactionResults];

    if (v20)
    {
      v21 = [v6 transactionResults];
      [v15 setTransactionResults:v21];
    }

    v22 = [v6 locationResults];

    if (v22)
    {
      v23 = [v6 locationResults];
      [v15 setLocationResults:v23];
    }

    v24 = [v6 personResults];

    if (v24)
    {
      v25 = [v6 personResults];
      [v15 setPersonResults:v25];
    }

    v26 = [v6 topHitBarcodePassResults];

    if (v26)
    {
      v27 = [v6 topHitBarcodePassResults];
      [v15 setTopHitBarcodePassResults:v27];
    }

    v28 = [v6 topHitPaymentPassResults];

    if (v28)
    {
      v29 = [v6 topHitPaymentPassResults];
      [v15 setTopHitPaymentPassResults:v29];
    }

    v30 = [v6 topHitKeyAndIDResults];

    if (v30)
    {
      v31 = [v6 topHitKeyAndIDResults];
      [v15 setTopHitKeyAndIDResults:v31];
    }

    v32 = [v6 barcodePassResults];

    if (v32)
    {
      v33 = [v6 barcodePassResults];
      [v15 setBarcodePassResults:v33];
    }

    v34 = [v6 expiredPassResults];

    if (v34)
    {
      v35 = [v6 expiredPassResults];
      [v15 setExpiredPassResults:v35];
    }

    v36 = [v6 paymentPassResults];

    if (v36)
    {
      v37 = [v6 paymentPassResults];
      [v15 setPaymentPassResults:v37];
    }

    v38 = [v6 keyAndIDResults];

    if (v38)
    {
      v39 = [v6 keyAndIDResults];
      [v15 setKeyAndIDResults:v39];
    }

    v40 = [v6 suggestedAutocompleteTokens];

    if (v40)
    {
      v41 = [v6 suggestedAutocompleteTokens];
      [v15 setSuggestedAutocompleteTokens:v41];
    }

    v42 = [v6 placeholderString];

    if (v42)
    {
      v43 = [v6 placeholderString];
      [v15 setPlaceholderString:v43];
    }

    v44 = [v6 transactionTagResults];

    if (v44)
    {
      v45 = [v6 transactionTagResults];
      [v15 setTransactionTagResults:v45];
    }

    v46 = [v6 orderResults];

    if (v46)
    {
      v47 = [v6 orderResults];
      [v15 setOrderResults:v47];
    }

    v48 = [v6 paymentSetupProductResults];

    if (v48)
    {
      v49 = [v6 paymentSetupProductResults];
      [v15 setPaymentSetupProductResults:v49];
    }

    v50 = [v6 pendingPeerPaymentRequestResults];

    if (v50)
    {
      v51 = [v6 pendingPeerPaymentRequestResults];
      [v15 setPendingPeerPaymentRequestResults:v51];
    }

    v52 = [v6 topHitAccountResults];

    if (v52)
    {
      v53 = [v6 topHitAccountResults];
      [v15 setTopHitAccountResults:v53];
    }

    v54 = [v6 accountResults];

    if (v54)
    {
      v55 = [v6 accountResults];
      [v15 setAccountResults:v55];
    }
  }

  else
  {
    v15 = v6;
    [(NSMutableDictionary *)self->_results setObject:v15 forKey:v7];
  }

  os_unfair_lock_unlock(&self->_lockResults);
}

- (void)searchDidCompleteWithError:(id)a3 forIdentifier:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject(0x13uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "searchDidCompleteWithError %@ identifier: %@", buf, 0x16u);
  }

  if (v7)
  {
    os_unfair_lock_lock(&self->_lockResults);
    v9 = [(NSMutableDictionary *)self->_results objectForKey:v7];
    [(NSMutableDictionary *)self->_results removeObjectForKey:v7];
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
  v14 = v6;
  v15 = v9;
  v16 = v7;
  v10 = v7;
  v11 = v9;
  v12 = v6;
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

- (void)regionsWithCompletion:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __41__PKSearchService_regionsWithCompletion___block_invoke;
    v12[3] = &unk_1E79C4450;
    v7 = v5;
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

- (void)resetRegionsWithCompletion:(id)a3
{
  v5 = a3;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__PKSearchService_resetRegionsWithCompletion___block_invoke;
  v12[3] = &unk_1E79C4450;
  v6 = v5;
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

- (void)resetRegionsCoordinatesWithCompletion:(id)a3
{
  v5 = a3;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__PKSearchService_resetRegionsCoordinatesWithCompletion___block_invoke;
  v12[3] = &unk_1E79C4450;
  v6 = v5;
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

- (void)transactionsMissingRegionsWithCompletion:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__PKSearchService_transactionsMissingRegionsWithCompletion___block_invoke;
    v12[3] = &unk_1E79C4450;
    v7 = v5;
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

- (void)indexedTransactionsWithCompletion:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__PKSearchService_indexedTransactionsWithCompletion___block_invoke;
    v12[3] = &unk_1E79C4450;
    v7 = v5;
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

- (void)indexedTransactionWithIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __63__PKSearchService_indexedTransactionWithIdentifier_completion___block_invoke;
    v15[3] = &unk_1E79C4450;
    v9 = v7;
    v16 = v9;
    v10 = a3;
    v11 = [(PKSearchService *)self errorHandlerForMethod:a2 completion:v15];
    v12 = [(PKSearchService *)self _remoteObjectProxyWithErrorHandler:v11];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __63__PKSearchService_indexedTransactionWithIdentifier_completion___block_invoke_2;
    v13[3] = &unk_1E79DDF78;
    v14 = v9;
    [v12 indexedTransactionWithIdentifier:v10 completion:v13];
  }
}

- (void)indexedPassesWithCompletion:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__PKSearchService_indexedPassesWithCompletion___block_invoke;
    v12[3] = &unk_1E79C4450;
    v7 = v5;
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