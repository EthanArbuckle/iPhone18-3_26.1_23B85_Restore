@interface PKAccountEnhancedMerchantsFetcher
- (BOOL)dataIsWithinThresholdForCooldownLevel:(unint64_t)level;
- (PKAccountEnhancedMerchantsFetcher)initWithAccountIdentifier:(id)identifier accountService:(id)service;
- (id)_enhancedMerchantBehaviorCopy;
- (id)_lastUpdateCopy;
- (id)addUpdateHandler:(id)handler;
- (id)enhancedMerchantMatchingPaymentIdentifier:(id)identifier;
- (id)enhancedMerchants;
- (id)enhancedMerchantsWithOrderingContext:(unint64_t)context;
- (void)_executeWithLock:(id)lock;
- (void)_reloadDataIncludeOrderings:(BOOL)orderings includeBehavior:(BOOL)behavior includeMerchants:(BOOL)merchants completion:(id)completion;
- (void)_setLastUpdate:(id)update;
- (void)_triggerUpdateHandlers;
- (void)dealloc;
- (void)didUpdateAccountEnhancedMerchants:(id)merchants accountIdentifier:(id)identifier lastUpdate:(id)update;
- (void)removeUpdateHandler:(id)handler;
- (void)setItems:(id)items;
- (void)updateDataWithCooldownLevel:(unint64_t)level ignoreErrorBackoff:(BOOL)backoff completion:(id)completion;
@end

@implementation PKAccountEnhancedMerchantsFetcher

- (PKAccountEnhancedMerchantsFetcher)initWithAccountIdentifier:(id)identifier accountService:(id)service
{
  identifierCopy = identifier;
  serviceCopy = service;
  v20.receiver = self;
  v20.super_class = PKAccountEnhancedMerchantsFetcher;
  v9 = [(PKAccountEnhancedMerchantsFetcher *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountIdentifier, identifier);
    objc_storeStrong(&v10->_accountService, service);
    array = [MEMORY[0x1E695DEC8] array];
    items = v10->_items;
    v10->_items = array;

    orderings = v10->_orderings;
    v10->_orderings = 0;

    v14 = objc_alloc_init(PKAccountEnhancedMerchantBehavior);
    behavior = v10->_behavior;
    v10->_behavior = v14;

    lastUpdate = v10->_lastUpdate;
    v10->_lastUpdate = 0;

    v10->_itemsLock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    tokenToUpdateHandlerMap = v10->_tokenToUpdateHandlerMap;
    v10->_tokenToUpdateHandlerMap = dictionary;

    v10->_updateHandlersLock._os_unfair_lock_opaque = 0;
    [(PKAccountService *)v10->_accountService registerObserver:v10];
  }

  return v10;
}

- (void)dealloc
{
  [(PKAccountService *)self->_accountService unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = PKAccountEnhancedMerchantsFetcher;
  [(PKAccountEnhancedMerchantsFetcher *)&v3 dealloc];
}

- (void)_reloadDataIncludeOrderings:(BOOL)orderings includeBehavior:(BOOL)behavior includeMerchants:(BOOL)merchants completion:(id)completion
{
  merchantsCopy = merchants;
  behaviorCopy = behavior;
  orderingsCopy = orderings;
  completionCopy = completion;
  v11 = completionCopy;
  if (completionCopy && !merchantsCopy && !behaviorCopy && !orderingsCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }

  v12 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  objc_initWeak(&location, self);
  if (orderingsCopy)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __109__PKAccountEnhancedMerchantsFetcher__reloadDataIncludeOrderings_includeBehavior_includeMerchants_completion___block_invoke;
    v22[3] = &unk_1E79DE3B8;
    objc_copyWeak(&v23, &location);
    [(PKAsyncUnaryOperationComposer *)v12 addOperation:v22];
    objc_destroyWeak(&v23);
  }

  if (behaviorCopy)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __109__PKAccountEnhancedMerchantsFetcher__reloadDataIncludeOrderings_includeBehavior_includeMerchants_completion___block_invoke_4;
    v20[3] = &unk_1E79DE3B8;
    objc_copyWeak(&v21, &location);
    [(PKAsyncUnaryOperationComposer *)v12 addOperation:v20];
    objc_destroyWeak(&v21);
  }

  if (merchantsCopy)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __109__PKAccountEnhancedMerchantsFetcher__reloadDataIncludeOrderings_includeBehavior_includeMerchants_completion___block_invoke_7;
    v18[3] = &unk_1E79DE3B8;
    objc_copyWeak(&v19, &location);
    [(PKAsyncUnaryOperationComposer *)v12 addOperation:v18];
    objc_destroyWeak(&v19);
  }

  null = [MEMORY[0x1E695DFB0] null];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __109__PKAccountEnhancedMerchantsFetcher__reloadDataIncludeOrderings_includeBehavior_includeMerchants_completion___block_invoke_9;
  v16[3] = &unk_1E79D04A0;
  v14 = v11;
  v17 = v14;
  v15 = [(PKAsyncUnaryOperationComposer *)v12 evaluateWithInput:null completion:v16];

  objc_destroyWeak(&location);
}

void __109__PKAccountEnhancedMerchantsFetcher__reloadDataIncludeOrderings_includeBehavior_includeMerchants_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v13 = WeakRetained[1];
    v12 = WeakRetained[2];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __109__PKAccountEnhancedMerchantsFetcher__reloadDataIncludeOrderings_includeBehavior_includeMerchants_completion___block_invoke_2;
    v14[3] = &unk_1E79DE390;
    objc_copyWeak(&v17, (a1 + 32));
    v16 = v9;
    v15 = v8;
    [v12 accountEntityOrderingsForAccountWithIdentifier:v13 entityType:1 completion:v14];

    objc_destroyWeak(&v17);
  }

  else
  {
    (*(v9 + 2))(v9, v8, 1);
  }
}

void __109__PKAccountEnhancedMerchantsFetcher__reloadDataIncludeOrderings_includeBehavior_includeMerchants_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __109__PKAccountEnhancedMerchantsFetcher__reloadDataIncludeOrderings_includeBehavior_includeMerchants_completion___block_invoke_3;
    v8[3] = &unk_1E79C4DD8;
    v8[4] = WeakRetained;
    v9 = v3;
    [v5 _executeWithLock:v8];
    (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 32), 0, v6, v7);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __109__PKAccountEnhancedMerchantsFetcher__reloadDataIncludeOrderings_includeBehavior_includeMerchants_completion___block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v13 = WeakRetained[1];
    v12 = WeakRetained[2];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __109__PKAccountEnhancedMerchantsFetcher__reloadDataIncludeOrderings_includeBehavior_includeMerchants_completion___block_invoke_5;
    v14[3] = &unk_1E79DE3E0;
    objc_copyWeak(&v17, (a1 + 32));
    v16 = v9;
    v15 = v8;
    [v12 accountEnhancedMerchantBehaviorForAccountWithIdentifier:v13 completion:v14];

    objc_destroyWeak(&v17);
  }

  else
  {
    (*(v9 + 2))(v9, v8, 1);
  }
}

void __109__PKAccountEnhancedMerchantsFetcher__reloadDataIncludeOrderings_includeBehavior_includeMerchants_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __109__PKAccountEnhancedMerchantsFetcher__reloadDataIncludeOrderings_includeBehavior_includeMerchants_completion___block_invoke_6;
    v8[3] = &unk_1E79C4DD8;
    v8[4] = WeakRetained;
    v9 = v3;
    [v5 _executeWithLock:v8];
    (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 32), 0, v6, v7);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __109__PKAccountEnhancedMerchantsFetcher__reloadDataIncludeOrderings_includeBehavior_includeMerchants_completion___block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v2;
  if (!v2)
  {
    v3 = objc_alloc_init(PKAccountEnhancedMerchantBehavior);
  }

  v4 = v3;
  objc_storeStrong((*(a1 + 32) + 40), v3);
  if (!v2)
  {
  }
}

void __109__PKAccountEnhancedMerchantsFetcher__reloadDataIncludeOrderings_includeBehavior_includeMerchants_completion___block_invoke_7(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v13 = WeakRetained[1];
    v12 = WeakRetained[2];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __109__PKAccountEnhancedMerchantsFetcher__reloadDataIncludeOrderings_includeBehavior_includeMerchants_completion___block_invoke_8;
    v14[3] = &unk_1E79DE390;
    objc_copyWeak(&v17, (a1 + 32));
    v16 = v9;
    v15 = v8;
    [v12 accountEnhancedMerchantsForAccountWithIdentifier:v13 completion:v14];

    objc_destroyWeak(&v17);
  }

  else
  {
    (*(v9 + 2))(v9, v8, 1);
  }
}

void __109__PKAccountEnhancedMerchantsFetcher__reloadDataIncludeOrderings_includeBehavior_includeMerchants_completion___block_invoke_8(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setItems:v5];
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __109__PKAccountEnhancedMerchantsFetcher__reloadDataIncludeOrderings_includeBehavior_includeMerchants_completion___block_invoke_9(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  [a4 isCanceled];
  result = *(a1 + 32);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)updateDataWithCooldownLevel:(unint64_t)level ignoreErrorBackoff:(BOOL)backoff completion:(id)completion
{
  backoffCopy = backoff;
  v22 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v9 = [(PKAccountEnhancedMerchantsFetcher *)self dataIsWithinThresholdForCooldownLevel:level];
  v10 = PKLogFacilityTypeGetObject(0xFuLL);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *buf = 134217984;
      levelCopy2 = level;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Account enhanced merchants were updated within the specified time interval (level %ld), returning existing data", buf, 0xCu);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }

  else
  {
    if (v11)
    {
      *buf = 134217984;
      levelCopy2 = level;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Updating account enhanced merchants to within cooldown level %ld", buf, 0xCu);
    }

    _enhancedMerchantBehaviorCopy = [(PKAccountEnhancedMerchantsFetcher *)self _enhancedMerchantBehaviorCopy];
    objc_initWeak(buf, self);
    accountIdentifier = self->_accountIdentifier;
    accountService = self->_accountService;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __95__PKAccountEnhancedMerchantsFetcher_updateDataWithCooldownLevel_ignoreErrorBackoff_completion___block_invoke;
    v16[3] = &unk_1E79DE430;
    v18 = completionCopy;
    objc_copyWeak(v19, buf);
    v19[1] = level;
    v15 = _enhancedMerchantBehaviorCopy;
    v17 = v15;
    [(PKAccountService *)accountService updateAccountEnhancedMerchantsForAccountWithIdentifier:accountIdentifier ignoreErrorBackoff:backoffCopy cooldownLevel:level completion:v16];

    objc_destroyWeak(v19);
    objc_destroyWeak(buf);
  }
}

void __95__PKAccountEnhancedMerchantsFetcher_updateDataWithCooldownLevel_ignoreErrorBackoff_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v8;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Account enhanced merchant update failed: %@", buf, 0xCu);
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      (*(v11 + 16))(v11, 0);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (!WeakRetained)
    {
      v13 = *(a1 + 40);
      if (v13)
      {
        (*(v13 + 16))(v13, 0);
      }
    }

    [WeakRetained setItems:v7];
    [WeakRetained _setLastUpdate:v9];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __95__PKAccountEnhancedMerchantsFetcher_updateDataWithCooldownLevel_ignoreErrorBackoff_completion___block_invoke_24;
    v16[3] = &unk_1E79DE408;
    v14 = v9;
    v15 = *(a1 + 56);
    v17 = v14;
    v20 = v15;
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    [WeakRetained _reloadDataIncludeOrderings:1 includeBehavior:1 includeMerchants:0 completion:v16];
  }
}

uint64_t __95__PKAccountEnhancedMerchantsFetcher_updateDataWithCooldownLevel_ignoreErrorBackoff_completion___block_invoke_24(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = DateIsWithinThresholdForCooldownLevel(*(a1 + 32), *(a1 + 56), *(a1 + 40));
  v3 = PKLogFacilityTypeGetObject(0xFuLL);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 56);
      v9 = 134217984;
      v10 = v5;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Successfully updated account enhanced merchants to within cooldown level %ld", &v9, 0xCu);
    }

    result = *(a1 + 48);
    if (result)
    {
      v7 = *(result + 16);
      return v7();
    }
  }

  else
  {
    if (v4)
    {
      v8 = *(a1 + 56);
      v9 = 134217984;
      v10 = v8;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Account enhanced merchants not updated to within provided cooldown level of %ld", &v9, 0xCu);
    }

    result = *(a1 + 48);
    if (result)
    {
      v7 = *(result + 16);
      return v7();
    }
  }

  return result;
}

- (BOOL)dataIsWithinThresholdForCooldownLevel:(unint64_t)level
{
  _lastUpdateCopy = [(PKAccountEnhancedMerchantsFetcher *)self _lastUpdateCopy];
  _enhancedMerchantBehaviorCopy = [(PKAccountEnhancedMerchantsFetcher *)self _enhancedMerchantBehaviorCopy];
  LOBYTE(level) = DateIsWithinThresholdForCooldownLevel(_lastUpdateCopy, level, _enhancedMerchantBehaviorCopy);

  return level;
}

- (id)enhancedMerchants
{
  os_unfair_lock_lock(&self->_itemsLock);
  v3 = [(NSArray *)self->_items copy];
  os_unfair_lock_unlock(&self->_itemsLock);

  return v3;
}

- (id)enhancedMerchantsWithOrderingContext:(unint64_t)context
{
  v27 = *MEMORY[0x1E69E9840];
  if (context)
  {
    enhancedMerchants = [(PKAccountEnhancedMerchantsFetcher *)self enhancedMerchants];
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(enhancedMerchants, "count")}];
    os_unfair_lock_lock(&self->_itemsLock);
    orderings = self->_orderings;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __74__PKAccountEnhancedMerchantsFetcher_enhancedMerchantsWithOrderingContext___block_invoke;
    v25[3] = &__block_descriptor_40_e33_B16__0__PKAccountEntityOrdering_8l;
    v25[4] = context;
    v8 = [(NSArray *)orderings pk_firstObjectPassingTest:v25];
    v9 = [v8 copy];
    os_unfair_lock_unlock(&self->_itemsLock);
    if (v9)
    {
      v19 = v9;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      ordering = [v9 ordering];
      v11 = [ordering countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v22;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(ordering);
            }

            v15 = *(*(&v21 + 1) + 8 * i);
            v20[0] = MEMORY[0x1E69E9820];
            v20[1] = 3221225472;
            v20[2] = __74__PKAccountEnhancedMerchantsFetcher_enhancedMerchantsWithOrderingContext___block_invoke_2;
            v20[3] = &unk_1E79DE478;
            v20[4] = v15;
            v16 = [enhancedMerchants pk_firstObjectPassingTest:v20];
            [v6 safelyAddObject:v16];
          }

          v12 = [ordering countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v12);
      }

      v17 = [v6 copy];
      v9 = v19;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t __74__PKAccountEnhancedMerchantsFetcher_enhancedMerchantsWithOrderingContext___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 privateIdentifier];
  v4 = v2;
  v5 = v3;
  v6 = v5;
  if (v4 == v5)
  {
    v8 = 1;
  }

  else
  {
    if (v4)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = [v4 isEqualToString:v5];
    }
  }

  return v8;
}

- (id)enhancedMerchantMatchingPaymentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    enhancedMerchants = [(PKAccountEnhancedMerchantsFetcher *)self enhancedMerchants];
    lowercaseString = [identifierCopy lowercaseString];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __79__PKAccountEnhancedMerchantsFetcher_enhancedMerchantMatchingPaymentIdentifier___block_invoke;
    v9[3] = &unk_1E79DE478;
    identifierCopy = lowercaseString;
    v10 = identifierCopy;
    v7 = [enhancedMerchants pk_firstObjectPassingTest:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __79__PKAccountEnhancedMerchantsFetcher_enhancedMerchantMatchingPaymentIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 hashedPaymentIdentifiers];
  if ([v4 containsObject:*(a1 + 32)])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 paymentIdentifiers];
    v5 = [v6 containsObject:*(a1 + 32)];
  }

  return v5;
}

- (id)_enhancedMerchantBehaviorCopy
{
  os_unfair_lock_lock(&self->_itemsLock);
  v3 = [(PKAccountEnhancedMerchantBehavior *)self->_behavior copy];
  os_unfair_lock_unlock(&self->_itemsLock);

  return v3;
}

- (id)_lastUpdateCopy
{
  os_unfair_lock_lock(&self->_itemsLock);
  v3 = [(NSDate *)self->_lastUpdate copy];
  os_unfair_lock_unlock(&self->_itemsLock);

  return v3;
}

- (void)setItems:(id)items
{
  itemsCopy = items;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__PKAccountEnhancedMerchantsFetcher_setItems___block_invoke;
  v6[3] = &unk_1E79C4DD8;
  v6[4] = self;
  v7 = itemsCopy;
  v5 = itemsCopy;
  [(PKAccountEnhancedMerchantsFetcher *)self _executeWithLock:v6];
}

- (void)_setLastUpdate:(id)update
{
  updateCopy = update;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__PKAccountEnhancedMerchantsFetcher__setLastUpdate___block_invoke;
  v6[3] = &unk_1E79C4DD8;
  v6[4] = self;
  v7 = updateCopy;
  v5 = updateCopy;
  [(PKAccountEnhancedMerchantsFetcher *)self _executeWithLock:v6];
}

- (void)_executeWithLock:(id)lock
{
  if (lock)
  {
    lockCopy = lock;
    os_unfair_lock_lock(&self->_itemsLock);
    lockCopy[2](lockCopy);

    os_unfair_lock_unlock(&self->_itemsLock);
  }
}

- (id)addUpdateHandler:(id)handler
{
  v4 = MEMORY[0x1E696AFB0];
  handlerCopy = handler;
  uUID = [v4 UUID];
  os_unfair_lock_lock(&self->_updateHandlersLock);
  tokenToUpdateHandlerMap = self->_tokenToUpdateHandlerMap;
  v8 = _Block_copy(handlerCopy);

  [(NSMutableDictionary *)tokenToUpdateHandlerMap setObject:v8 forKey:uUID];
  os_unfair_lock_unlock(&self->_updateHandlersLock);

  return uUID;
}

- (void)removeUpdateHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_updateHandlersLock);
  [(NSMutableDictionary *)self->_tokenToUpdateHandlerMap removeObjectForKey:handlerCopy];

  os_unfair_lock_unlock(&self->_updateHandlersLock);
}

- (void)_triggerUpdateHandlers
{
  os_unfair_lock_lock(&self->_updateHandlersLock);
  [(NSMutableDictionary *)self->_tokenToUpdateHandlerMap enumerateKeysAndObjectsUsingBlock:&__block_literal_global_181];

  os_unfair_lock_unlock(&self->_updateHandlersLock);
}

void __59__PKAccountEnhancedMerchantsFetcher__triggerUpdateHandlers__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PKAccountEnhancedMerchantsFetcher__triggerUpdateHandlers__block_invoke_2;
  block[3] = &unk_1E79C4428;
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)didUpdateAccountEnhancedMerchants:(id)merchants accountIdentifier:(id)identifier lastUpdate:(id)update
{
  merchantsCopy = merchants;
  identifierCopy = identifier;
  updateCopy = update;
  accountIdentifier = self->_accountIdentifier;
  v11 = identifierCopy;
  v12 = accountIdentifier;
  v13 = v12;
  if (v12 == v11)
  {

    goto LABEL_7;
  }

  if (!v11 || !v12)
  {

    goto LABEL_9;
  }

  v14 = [(NSString *)v11 isEqualToString:v12];

  if (v14)
  {
LABEL_7:
    [(PKAccountEnhancedMerchantsFetcher *)self setItems:merchantsCopy];
    [(PKAccountEnhancedMerchantsFetcher *)self _setLastUpdate:updateCopy];
    [(PKAccountEnhancedMerchantsFetcher *)self _triggerUpdateHandlers];
  }

LABEL_9:
}

@end