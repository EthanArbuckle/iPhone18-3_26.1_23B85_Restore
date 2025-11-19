@interface NPKPassAssociatedInfoManager
- (BOOL)_isPassEligible:(id)a3;
- (BOOL)_shouldUseBalanceForAccount:(id)a3;
- (BOOL)canPerformRKEActionsForPassWithUniqueID:(id)a3;
- (BOOL)isHomeAccessRestrictedForPass:(id)a3;
- (NPKPassAssociatedInfoManager)init;
- (NPKPassAssociatedInfoManager)initWithPaymentService:(id)a3 accountService:(id)a4 precursorPassManager:(id)a5;
- (NSMutableDictionary)passUniqueIDsByAccountIdentifier;
- (NSSet)passes;
- (id)_associatedInfoModelWithPass:(id)a3 currentModel:(id)a4;
- (id)homeAccessoryForPass:(id)a3 withReaderIdentifier:(id)a4;
- (id)npkBankConnectedAccountForPass:(id)a3;
- (id)npkBankConnectedDebitAccountForPass:(id)a3;
- (id)passInfoForPassWithUniqueID:(id)a3;
- (id)readerIdentifierForAccessory:(id)a3 withPass:(id)a4;
- (unint64_t)_rangingSuspensionReasonForPass:(id)a3;
- (unint64_t)rangingSuspensionReasonForPassWithUniqueID:(id)a3;
- (void)_fetchHomeAccessStatusForPass:(id)a3;
- (void)_fetchMostRecentAccountBalanceForPass:(id)a3;
- (void)_fetchMostRecentBalancesForPass:(id)a3;
- (void)_fetchMostRecentCommutePlansForPass:(id)a3;
- (void)_fetchMostRecentInfoForPass:(id)a3;
- (void)_fetchMostRecentRangingSuspensionReasonForPass:(id)a3;
- (void)_fetchMostRecentTilesForPass:(id)a3;
- (void)_fetchMostRecentTransitPropertiesAndAppletStateForPass:(id)a3;
- (void)_fetchPrecursorPassDescriptionForPass:(id)a3;
- (void)_handleReceivedAccountUpdateWithAccount:(id)a3;
- (void)_internalQueue_processReceivedAccountUpdateWithAccount:(id)a3;
- (void)_internalQueue_regenerateAssociatedInfoModelForPass:(id)a3 inModelsByID:(id)a4;
- (void)_internalQueue_removePassWithUniqueIDs:(id)a3;
- (void)_loadPassContentIfNeeded:(id)a3;
- (void)_notifyObservers:(id)a3;
- (void)_notifyObserversOfUpdatedRestrictedGuestState:(id)a3;
- (void)_notifyObserversOfUpdatedTransitPassInfoForModel:(id)a3;
- (void)_processAccountBalancesForPassWithUniqueID:(id)a3 withAccount:(id)a4;
- (void)_refreshAccountBalanceIfApplicableForPass:(id)a3 withAccount:(id)a4;
- (void)_updateAllPassesItemsFieldsPendingUpdateStatus;
- (void)_updateModelWithAccessory:(id)a3 forPassID:(id)a4 withReaderID:(id)a5;
- (void)_updatePassInfoManagerForPassUniqueID:(id)a3 updateBlock:(id)a4;
- (void)accountChanged:(id)a3;
- (void)addPass:(id)a3;
- (void)credentialIdentifier:(id)a3 paymentApplicationIdentifier:(id)a4 secureElementIdentifier:(id)a5 didUpdateRangingSuspensionReasons:(unint64_t)a6;
- (void)fetchHomeAccessoryForPass:(id)a3 withReaderIdentifier:(id)a4 completion:(id)a5;
- (void)markPerishableDataAsStale;
- (void)npkRefreshConnectedAccountDataForPassWithUniqueID:(id)a3;
- (void)passWithUniqueIdentifier:(id)a3 didUpdateTiles:(id)a4 forContext:(int64_t)a5;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceiveBalanceUpdate:(id)a4;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceivePlanUpdate:(id)a4;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateWithTransitPassProperties:(id)a4;
- (void)paymentServiceEstablishedConnection;
- (void)precursorPassRequestsManager:(id)a3 didUpdateUpgradePrequestDescription:(id)a4 forPassUniqueID:(id)a5;
- (void)refreshAllPasses;
- (void)refreshInfoForPass:(id)a3;
- (void)registerObserver:(id)a3;
- (void)removePassWithUniqueID:(id)a3;
- (void)setPasses:(id)a3;
- (void)setPendingAmount:(id)a3 forBalanceField:(id)a4 passWithUniqueID:(id)a5;
- (void)setPendingExpirationDate:(id)a3 forCommutePlanField:(id)a4 passWithUniqueID:(id)a5;
- (void)unregisterObserver:(id)a3;
@end

@implementation NPKPassAssociatedInfoManager

- (id)npkBankConnectedAccountForPass:(id)a3
{
  v4 = [a3 uniqueID];
  v5 = [(NPKPassAssociatedInfoManager *)self passInfoForPassWithUniqueID:v4];

  v6 = [v5 bankConnectAccount];

  return v6;
}

- (id)npkBankConnectedDebitAccountForPass:(id)a3
{
  v3 = [(NPKPassAssociatedInfoManager *)self npkBankConnectedAccountForPass:a3];
  v4 = [v3 authorizedFKAccount];
  v5 = v4;
  if (!v4 || ![v4 npkIsDebit])
  {
    v8 = 0;
    goto LABEL_9;
  }

  v6 = [v5 balance];
  v7 = [v6 availableBalance];
  if (v7)
  {

LABEL_7:
    v8 = v5;
    goto LABEL_8;
  }

  v8 = [v6 bookedBalance];

  if (v8)
  {
    goto LABEL_7;
  }

LABEL_8:

LABEL_9:

  return v8;
}

- (void)npkRefreshConnectedAccountDataForPassWithUniqueID:(id)a3
{
  v4 = a3;
  v5 = [(NPKPassAssociatedInfoManager *)self bankConnectDataProvider];
  [v5 refreshAccountDataForPassWithUniqueID:v4];
}

- (NPKPassAssociatedInfoManager)init
{
  v3 = objc_alloc_init(MEMORY[0x277D380F0]);
  v4 = [MEMORY[0x277D37CD0] sharedInstance];
  v5 = objc_alloc_init(NPKPrecursorPassUpgradeRequestsManager);
  v6 = [(NPKPassAssociatedInfoManager *)self initWithPaymentService:v3 accountService:v4 precursorPassManager:v5];

  return v6;
}

- (NPKPassAssociatedInfoManager)initWithPaymentService:(id)a3 accountService:(id)a4 precursorPassManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v28.receiver = self;
  v28.super_class = NPKPassAssociatedInfoManager;
  v12 = [(NPKPassAssociatedInfoManager *)&v28 init];
  if (v12)
  {
    v13 = dispatch_queue_create("com.apple.NanoPasskit.PassesAssociatedInfoManager", 0);
    internalQueue = v12->_internalQueue;
    v12->_internalQueue = v13;

    objc_storeStrong(&v12->_observerQueue, MEMORY[0x277D85CD0]);
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    passAssociatedInfoModelsByPassUniqueID = v12->_passAssociatedInfoModelsByPassUniqueID;
    v12->_passAssociatedInfoModelsByPassUniqueID = v15;

    objc_storeStrong(&v12->_paymentService, a3);
    [v9 setDelegate:v12];
    objc_storeStrong(&v12->_accountService, a4);
    v17 = [MEMORY[0x277CCAA50] pk_weakObjectsHashTableUsingPointerPersonality];
    observers = v12->_observers;
    v12->_observers = v17;

    objc_storeStrong(&v12->_precursorPassManager, a5);
    objc_initWeak(&location, v12);
    v19 = [@"com.apple.nanopasskit.transitpassinformationmanager.pendingaddvalueupdated" UTF8String];
    v20 = v12->_internalQueue;
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __91__NPKPassAssociatedInfoManager_initWithPaymentService_accountService_precursorPassManager___block_invoke;
    v25 = &unk_279944F20;
    objc_copyWeak(&v26, &location);
    notify_register_dispatch(v19, &v12->_pendingAddValueUpdatedNotifyToken, v20, &v22);
    [(PKAccountService *)v12->_accountService registerObserver:v12, v22, v23, v24, v25];
    [(NPKPrecursorPassUpgradeRequestsManager *)v12->_precursorPassManager addObserver:v12];
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __91__NPKPassAssociatedInfoManager_initWithPaymentService_accountService_precursorPassManager___block_invoke(uint64_t a1)
{
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: received pending add value updated notification", buf, 2u);
    }
  }

  objc_copyWeak(&to, (a1 + 32));
  v5 = objc_loadWeakRetained(&to);
  [v5 _updateAllPassesItemsFieldsPendingUpdateStatus];

  objc_destroyWeak(&to);
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__NPKPassAssociatedInfoManager_registerObserver___block_invoke;
  v7[3] = &unk_2799454E0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(observerQueue, v7);
}

uint64_t __49__NPKPassAssociatedInfoManager_registerObserver___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    result = [*(*(result + 40) + 64) containsObject:?];
    if ((result & 1) == 0)
    {
      v2 = *(v1 + 32);
      v3 = *(*(v1 + 40) + 64);

      return [v3 addObject:v2];
    }
  }

  return result;
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__NPKPassAssociatedInfoManager_unregisterObserver___block_invoke;
  v7[3] = &unk_2799454E0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(observerQueue, v7);
}

uint64_t __51__NPKPassAssociatedInfoManager_unregisterObserver___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    result = [*(*(result + 40) + 64) containsObject:?];
    if (result)
    {
      v2 = *(v1 + 32);
      v3 = *(*(v1 + 40) + 64);

      return [v3 removeObject:v2];
    }
  }

  return result;
}

- (void)_notifyObservers:(id)a3
{
  v4 = a3;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__NPKPassAssociatedInfoManager__notifyObservers___block_invoke;
  v7[3] = &unk_279945530;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(observerQueue, v7);
}

void __49__NPKPassAssociatedInfoManager__notifyObservers___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 64) allObjects];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        (*(*(a1 + 40) + 16))();
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setPasses:(id)a3
{
  v4 = MEMORY[0x277CCAC30];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __42__NPKPassAssociatedInfoManager_setPasses___block_invoke;
  v13[3] = &unk_279949490;
  v13[4] = self;
  v5 = a3;
  v6 = [v4 predicateWithBlock:v13];
  v7 = [v5 filteredSetUsingPredicate:v6];

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__NPKPassAssociatedInfoManager_setPasses___block_invoke_2;
  block[3] = &unk_2799454E0;
  v11 = v7;
  v12 = self;
  v9 = v7;
  dispatch_async(internalQueue, block);
}

void __42__NPKPassAssociatedInfoManager_setPasses___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) pk_setByApplyingBlock:&__block_literal_global_25];
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 138412546;
      v21 = v2;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: setting Passes:%@ to:%@", buf, 0x16u);
    }
  }

  v7 = [*(*(a1 + 40) + 24) allKeys];
  v8 = [MEMORY[0x277CBEB58] setWithArray:v7];
  [v8 minusSet:v2];
  [*(a1 + 40) _internalQueue_removePassWithUniqueIDs:v8];
  v9 = *(a1 + 40);
  if (v9[9])
  {
    v10 = [v9 passUniqueIDsByAccountIdentifier];
    [v10 removeAllObjects];
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __42__NPKPassAssociatedInfoManager_setPasses___block_invoke_69;
  v18[3] = &unk_2799494D8;
  v12 = *(a1 + 32);
  v18[4] = *(a1 + 40);
  v13 = v11;
  v19 = v13;
  [v12 enumerateObjectsUsingBlock:v18];
  v14 = *(a1 + 40);
  v15 = *(v14 + 24);
  *(v14 + 24) = v13;
  v16 = v13;

  v17 = *MEMORY[0x277D85DE8];
}

- (void)addPass:(id)a3
{
  v4 = a3;
  if ([(NPKPassAssociatedInfoManager *)self _isPassEligible:v4])
  {
    internalQueue = self->_internalQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__NPKPassAssociatedInfoManager_addPass___block_invoke;
    v6[3] = &unk_2799454E0;
    v7 = v4;
    v8 = self;
    dispatch_async(internalQueue, v6);
  }
}

uint64_t __40__NPKPassAssociatedInfoManager_addPass___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) uniqueID];
      v6 = *(a1 + 40);
      v9 = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: Adding pass with uniqueID:%@ to:%@", &v9, 0x16u);
    }
  }

  result = [*(a1 + 40) _internalQueue_regenerateAssociatedInfoModelForPass:*(a1 + 32) inModelsByID:*(*(a1 + 40) + 24)];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (NSSet)passes
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  internalQueue = self->_internalQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__NPKPassAssociatedInfoManager_passes__block_invoke;
  v9[3] = &unk_2799454E0;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_sync(internalQueue, v9);
  v6 = v10;
  v7 = v5;

  return v5;
}

void __38__NPKPassAssociatedInfoManager_passes__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __38__NPKPassAssociatedInfoManager_passes__block_invoke_2;
  v2[3] = &unk_279949500;
  v3 = *(a1 + 40);
  [v1 enumerateKeysAndObjectsUsingBlock:v2];
}

void __38__NPKPassAssociatedInfoManager_passes__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 pass];
  [v3 addObject:v4];
}

- (void)removePassWithUniqueID:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__NPKPassAssociatedInfoManager_removePassWithUniqueID___block_invoke;
  v7[3] = &unk_2799454E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __55__NPKPassAssociatedInfoManager_removePassWithUniqueID___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 40)];
  [v1 _internalQueue_removePassWithUniqueIDs:v2];
}

- (void)_internalQueue_removePassWithUniqueIDs:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __71__NPKPassAssociatedInfoManager__internalQueue_removePassWithUniqueIDs___block_invoke;
  v3[3] = &unk_279948BC0;
  v3[4] = self;
  [a3 enumerateObjectsUsingBlock:v3];
}

void __71__NPKPassAssociatedInfoManager__internalQueue_removePassWithUniqueIDs___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: Removing model for pass with unique ID %@", &buf, 0xCu);
    }
  }

  [*(*(a1 + 32) + 24) setObject:0 forKeyedSubscript:v3];
  v7 = *(a1 + 32);
  if (v7[9])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__20;
    v21 = __Block_byref_object_dispose__20;
    v22 = 0;
    v8 = [v7 passUniqueIDsByAccountIdentifier];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __71__NPKPassAssociatedInfoManager__internalQueue_removePassWithUniqueIDs___block_invoke_73;
    v15 = &unk_279949528;
    v16 = v3;
    p_buf = &buf;
    [v8 enumerateKeysAndObjectsUsingBlock:&v12];

    if (*(*(&buf + 1) + 40))
    {
      v9 = [*(a1 + 32) passUniqueIDsByAccountIdentifier];
      [v9 setObject:0 forKeyedSubscript:*(*(&buf + 1) + 40)];
    }

    _Block_object_dispose(&buf, 8);
    v7 = *(a1 + 32);
  }

  v10 = [v7 precursorPassManager];
  [v10 invalidateUpgradeControllerForPassWithUniqueID:v3];

  v11 = *MEMORY[0x277D85DE8];
}

void __71__NPKPassAssociatedInfoManager__internalQueue_removePassWithUniqueIDs___block_invoke_73(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ([*(a1 + 32) isEqualToString:a3])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)setPendingAmount:(id)a3 forBalanceField:(id)a4 passWithUniqueID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  internalQueue = self->_internalQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __82__NPKPassAssociatedInfoManager_setPendingAmount_forBalanceField_passWithUniqueID___block_invoke;
  v15[3] = &unk_279946260;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = self;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(internalQueue, v15);
}

void __82__NPKPassAssociatedInfoManager_setPendingAmount_forBalanceField_passWithUniqueID___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v12 = 138412802;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: setPendingAmount:%@ forBalanceField:%@ passWithUniqueID:%@", &v12, 0x20u);
    }
  }

  v8 = [*(*(a1 + 56) + 24) objectForKeyedSubscript:*(a1 + 48)];
  if (v8)
  {
    v9 = MEMORY[0x277D37F98];
    v10 = [*(a1 + 32) amount];
    [v9 npkHandleTransitValuePendingAmount:v10 forBalanceField:*(a1 + 40) passWithUniqueID:*(a1 + 48)];

    [v8 updateItemFields];
    [*(a1 + 56) _notifyObserversOfUpdatedTransitPassInfoForModel:v8];
    notify_post([@"com.apple.nanopasskit.transitpassinformationmanager.pendingaddvalueupdated" UTF8String]);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setPendingExpirationDate:(id)a3 forCommutePlanField:(id)a4 passWithUniqueID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  internalQueue = self->_internalQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __94__NPKPassAssociatedInfoManager_setPendingExpirationDate_forCommutePlanField_passWithUniqueID___block_invoke;
  v15[3] = &unk_279946260;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = self;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(internalQueue, v15);
}

void __94__NPKPassAssociatedInfoManager_setPendingExpirationDate_forCommutePlanField_passWithUniqueID___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v10 = 138412802;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: setExpirationDate:%@ forCommutePlanField:%@ passWithUniqueID:%@", &v10, 0x20u);
    }
  }

  v8 = [*(*(a1 + 56) + 24) objectForKeyedSubscript:*(a1 + 48)];
  if (v8)
  {
    [MEMORY[0x277D37F98] npkHandleTransitValuePendingExpiryDate:*(a1 + 32) forCommutePlanField:*(a1 + 40) passWithUniqueID:*(a1 + 48)];
    [v8 updateItemFields];
    [*(a1 + 56) _notifyObserversOfUpdatedTransitPassInfoForModel:v8];
    notify_post([@"com.apple.nanopasskit.transitpassinformationmanager.pendingaddvalueupdated" UTF8String]);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)refreshAllPasses
{
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: Requested refresh all pass Balance", buf, 2u);
    }
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__NPKPassAssociatedInfoManager_refreshAllPasses__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

uint64_t __48__NPKPassAssociatedInfoManager_refreshAllPasses__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__NPKPassAssociatedInfoManager_refreshAllPasses__block_invoke_2;
  v4[3] = &unk_279949500;
  v4[4] = v1;
  return [v2 enumerateKeysAndObjectsUsingBlock:v4];
}

void __48__NPKPassAssociatedInfoManager_refreshAllPasses__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pk_General_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_General_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: Updating refresh balance for with uniqueID:%@", &v13, 0xCu);
    }
  }

  v10 = *(a1 + 32);
  v11 = [v6 pass];
  [v10 _fetchMostRecentInfoForPass:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)refreshInfoForPass:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 uniqueID];
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: Requested refresh for pass with uniqueID %@", buf, 0xCu);
    }
  }

  v9 = [v4 paymentPass];
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__NPKPassAssociatedInfoManager_refreshInfoForPass___block_invoke;
  v13[3] = &unk_2799454E0;
  v14 = v9;
  v15 = self;
  v11 = v9;
  dispatch_async(internalQueue, v13);

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __51__NPKPassAssociatedInfoManager_refreshInfoForPass___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    return [*(result + 40) _fetchMostRecentInfoForPass:?];
  }

  return result;
}

- (void)markPerishableDataAsStale
{
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: Requested mark perishable values as stale", buf, 2u);
    }
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__NPKPassAssociatedInfoManager_markPerishableDataAsStale__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __57__NPKPassAssociatedInfoManager_markPerishableDataAsStale__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 restrictedGuestAccessState];
  [v3 setIsStale:1];
}

- (id)passInfoForPassWithUniqueID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__20;
    v16 = __Block_byref_object_dispose__20;
    v17 = 0;
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__NPKPassAssociatedInfoManager_passInfoForPassWithUniqueID___block_invoke;
    block[3] = &unk_279948090;
    block[4] = self;
    v10 = v4;
    v11 = &v12;
    dispatch_sync(internalQueue, block);
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __60__NPKPassAssociatedInfoManager_passInfoForPassWithUniqueID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];
  if (v2)
  {
    v6 = v2;
    v3 = [[NPKPassAssociatedInfo alloc] initWithAssociatedInfoModel:v2];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = v6;
  }
}

- (void)fetchHomeAccessoryForPass:(id)a3 withReaderIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_get_global_queue(25, 0);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__NPKPassAssociatedInfoManager_fetchHomeAccessoryForPass_withReaderIdentifier_completion___block_invoke;
  v15[3] = &unk_279945BB0;
  v16 = v9;
  v17 = self;
  v18 = v8;
  v19 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(v11, v15);
}

void __90__NPKPassAssociatedInfoManager_fetchHomeAccessoryForPass_withReaderIdentifier_completion___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Creating home manager for initial fetch of accessory.", buf, 2u);
    }
  }

  v5 = objc_alloc_init(MEMORY[0x277D37EF8]);
  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) hexEncoding];
      *buf = 138412290;
      v22 = v9;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Finished creating home manager. Now fetching lock for reader with identifier %@", buf, 0xCu);
    }
  }

  v10 = *(a1 + 32);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __90__NPKPassAssociatedInfoManager_fetchHomeAccessoryForPass_withReaderIdentifier_completion___block_invoke_81;
  v18[3] = &unk_279949570;
  v17 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 32);
  v13 = *(a1 + 56);
  *&v14 = v12;
  *(&v14 + 1) = v13;
  *&v15 = v17;
  *(&v15 + 1) = v11;
  v19 = v15;
  v20 = v14;
  [v5 fetchLockAccessoryWithTerminalReaderIdentifier:v10 withCompletion:v18];

  v16 = *MEMORY[0x277D85DE8];
}

void __90__NPKPassAssociatedInfoManager_fetchHomeAccessoryForPass_withReaderIdentifier_completion___block_invoke_81(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 uniqueIdentifier];
      *buf = 138412290;
      v17 = v7;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Found lock: %@", buf, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) uniqueID];
  [v8 _updateModelWithAccessory:v3 forPassID:v9 withReaderID:*(a1 + 48)];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __90__NPKPassAssociatedInfoManager_fetchHomeAccessoryForPass_withReaderIdentifier_completion___block_invoke_82;
  v13[3] = &unk_279946670;
  v10 = *(a1 + 56);
  v14 = v3;
  v15 = v10;
  v11 = v3;
  NPKGuaranteeMainThread(v13);

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __90__NPKPassAssociatedInfoManager_fetchHomeAccessoryForPass_withReaderIdentifier_completion___block_invoke_82(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)_updateModelWithAccessory:(id)a3 forPassID:(id)a4 withReaderID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__NPKPassAssociatedInfoManager__updateModelWithAccessory_forPassID_withReaderID___block_invoke;
  v14[3] = &unk_279949598;
  v15 = v8;
  v16 = v10;
  v17 = v9;
  v11 = v9;
  v12 = v10;
  v13 = v8;
  [(NPKPassAssociatedInfoManager *)self _updatePassInfoManagerForPassUniqueID:v11 updateBlock:v14];
}

uint64_t __81__NPKPassAssociatedInfoManager__updateModelWithAccessory_forPassID_withReaderID___block_invoke(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 accessories];

    v6 = objc_alloc(MEMORY[0x277CBEB38]);
    v7 = v6;
    if (v5)
    {
      v8 = [v4 accessories];
      v9 = [v7 initWithDictionary:v8];
    }

    else
    {
      v9 = [v6 initWithCapacity:1];
    }

    v15 = a1[4];
    if (v15)
    {
      [v9 setObject:v15 forKey:a1[5]];
    }

    else
    {
      [v9 removeObjectForKey:a1[5]];
    }

    [v4 setAccessories:v9];

    v14 = 1;
  }

  else
  {
    v10 = pk_General_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = pk_General_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = a1[6];
        v18 = 138412290;
        v19 = v13;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Warning: No existing model found for pass with ID %@", &v18, 0xCu);
      }
    }

    v14 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)homeAccessoryForPass:(id)a3 withReaderIdentifier:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 uniqueID];
  v9 = [(NPKPassAssociatedInfoManager *)self passInfoForPassWithUniqueID:v8];

  if (v9)
  {
    v10 = [v9 accessories];
    v11 = [v10 objectForKey:v7];

    if (v11)
    {
      v12 = pk_General_log();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

      if (v13)
      {
        v14 = pk_General_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v11 uniqueIdentifier];
          v18 = 138412290;
          v19 = v15;
          _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: Found existing accessory with identifier %@.\n Performing fetch in background to update cache.", &v18, 0xCu);
        }
      }

      [(NPKPassAssociatedInfoManager *)self fetchHomeAccessoryForPass:v6 withReaderIdentifier:v7 completion:&__block_literal_global_86];
    }
  }

  else
  {
    v11 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

void __74__NPKPassAssociatedInfoManager_homeAccessoryForPass_withReaderIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v2 uniqueIdentifier];
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: updated accessory %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)readerIdentifierForAccessory:(id)a3 withPass:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__20;
  v27 = __Block_byref_object_dispose__20;
  v28 = 0;
  if (v6 && v7)
  {
    v9 = [v7 uniqueID];
    v10 = [(NPKPassAssociatedInfoManager *)self passInfoForPassWithUniqueID:v9];

    if (v10)
    {
      v11 = [v10 accessories];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __70__NPKPassAssociatedInfoManager_readerIdentifierForAccessory_withPass___block_invoke;
      v20[3] = &unk_2799495E0;
      v21 = v6;
      v22 = &v23;
      [v11 enumerateKeysAndObjectsUsingBlock:v20];
    }
  }

  v12 = pk_General_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = pk_General_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v24[5];
      v16 = [v6 uniqueIdentifier];
      *buf = 138412546;
      v30 = v15;
      v31 = 2112;
      v32 = v16;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: Found reader identifer %@ for accessory %@", buf, 0x16u);
    }
  }

  v17 = v24[5];
  _Block_object_dispose(&v23, 8);

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void __70__NPKPassAssociatedInfoManager_readerIdentifierForAccessory_withPass___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v14 = a2;
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = [v7 uniqueIdentifier];
  v10 = [v8 uniqueIdentifier];

  LODWORD(v8) = [v9 isEqual:v10];
  if (v8)
  {
    v11 = [v14 hexEncoding];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    *a4 = 1;
  }
}

- (void)_fetchHomeAccessStatusForPass:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__NPKPassAssociatedInfoManager__fetchHomeAccessStatusForPass___block_invoke;
  v7[3] = &unk_2799454E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __62__NPKPassAssociatedInfoManager__fetchHomeAccessStatusForPass___block_invoke(uint64_t a1)
{
  v1 = atomic_load((*(a1 + 32) + 36));
  if (v1)
  {
    atomic_store(1u, (*(a1 + 32) + 36));
    v3 = objc_alloc_init(MEMORY[0x277D37EF8]);
    v4 = [*(a1 + 40) serialNumber];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__NPKPassAssociatedInfoManager__fetchHomeAccessStatusForPass___block_invoke_2;
    v6[3] = &unk_2799464B8;
    v5 = *(a1 + 40);
    v6[4] = *(a1 + 32);
    v7 = v5;
    [v3 isHomeAccessRestrictedForPassSerialNumber:v4 withCompletion:v6];
  }
}

void __62__NPKPassAssociatedInfoManager__fetchHomeAccessStatusForPass___block_invoke_2(uint64_t a1, char a2)
{
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) uniqueID];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__NPKPassAssociatedInfoManager__fetchHomeAccessStatusForPass___block_invoke_3;
  v6[3] = &unk_279949608;
  v7 = a2;
  v6[4] = *(a1 + 32);
  [v4 _updatePassInfoManagerForPassUniqueID:v5 updateBlock:v6];
}

uint64_t __62__NPKPassAssociatedInfoManager__fetchHomeAccessStatusForPass___block_invoke_3(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 restrictedGuestAccessState];
  v5 = [v4 value];
  v6 = [v5 BOOLValue];
  v7 = *(a1 + 40);

  if (v3 && v7 != v6)
  {
    v8 = pk_General_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = pk_General_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 40);
        v12 = NSStringFromBOOL();
        v18 = 138412290;
        v19 = v12;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Access status fetched. Is restricted: %@", &v18, 0xCu);
      }
    }

    v13 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
    v14 = [v3 restrictedGuestAccessState];
    [v14 setValue:v13];

    v15 = [v3 restrictedGuestAccessState];
    [v15 setIsStale:0];
  }

  atomic_store(0, (*(a1 + 32) + 36));

  v16 = *MEMORY[0x277D85DE8];
  return 2 * (v7 != v6);
}

- (BOOL)isHomeAccessRestrictedForPass:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__20;
  v17 = __Block_byref_object_dispose__20;
  v18 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__NPKPassAssociatedInfoManager_isHomeAccessRestrictedForPass___block_invoke;
  block[3] = &unk_279948090;
  block[4] = self;
  v6 = v4;
  v11 = v6;
  v12 = &v13;
  dispatch_sync(internalQueue, block);
  if ([v14[5] isStale])
  {
    [(NPKPassAssociatedInfoManager *)self _fetchHomeAccessStatusForPass:v6];
  }

  v7 = [v14[5] value];
  v8 = [v7 BOOLValue];

  _Block_object_dispose(&v13, 8);
  return v8;
}

void __62__NPKPassAssociatedInfoManager_isHomeAccessRestrictedForPass___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = [*(a1 + 40) uniqueID];
  v10 = [v2 objectForKeyedSubscript:v3];

  v4 = [v10 restrictedGuestAccessState];

  if (!v4)
  {
    v5 = [NPKPerishableValue alloc];
    v6 = [(NPKPerishableValue *)v5 initWithValue:MEMORY[0x277CBEC28] isStale:1];
    [v10 setRestrictedGuestAccessState:v6];
  }

  v7 = [v10 restrictedGuestAccessState];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (BOOL)canPerformRKEActionsForPassWithUniqueID:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__NPKPassAssociatedInfoManager_canPerformRKEActionsForPassWithUniqueID___block_invoke;
  block[3] = &unk_279948090;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalQueue;
}

void __72__NPKPassAssociatedInfoManager_canPerformRKEActionsForPassWithUniqueID___block_invoke(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v2 tiles];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) state];
        v9 = [v8 action];
        v10 = [v9 type];

        if (v10 == 4)
        {
          *(*(a1[6] + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
}

- (unint64_t)rangingSuspensionReasonForPassWithUniqueID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__NPKPassAssociatedInfoManager_rangingSuspensionReasonForPassWithUniqueID___block_invoke;
  block[3] = &unk_279948090;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(internalQueue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __75__NPKPassAssociatedInfoManager_rangingSuspensionReasonForPassWithUniqueID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];
  *(*(a1[6] + 8) + 24) = [v2 rangingSuspensionReason];
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceiveBalanceUpdate:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = v7;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: didReceiveBalanceUpdate %@ for pass uniqueID %@", buf, 0x16u);
    }
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __88__NPKPassAssociatedInfoManager_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke;
  v14[3] = &unk_279949630;
  v15 = v7;
  v16 = v6;
  v11 = v6;
  v12 = v7;
  [(NPKPassAssociatedInfoManager *)self _updatePassInfoManagerForPassUniqueID:v11 updateBlock:v14];

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __88__NPKPassAssociatedInfoManager_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 balances];
  v5 = NPKIsEqual(v4, *(a1 + 32));

  if (v5)
  {
    v6 = [v3 pass];
    v7 = [v6 npkIsAddValuePending];

    if (!v7)
    {
      v12 = 0;
      goto LABEL_11;
    }

    v8 = pk_General_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = pk_General_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 40);
        v15 = 138412290;
        v16 = v11;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: pass with uniqueID:%@ has add value pending", &v15, 0xCu);
      }
    }

    [v3 updateItemFields];
  }

  else
  {
    [v3 setBalances:*(a1 + 32)];
  }

  v12 = 1;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceivePlanUpdate:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = v7;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: didReceivePlanUpdate %@ for pass uniqueID %@", buf, 0x16u);
    }
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __85__NPKPassAssociatedInfoManager_paymentPassWithUniqueIdentifier_didReceivePlanUpdate___block_invoke;
  v14[3] = &unk_279949630;
  v15 = v7;
  v16 = v6;
  v11 = v6;
  v12 = v7;
  [(NPKPassAssociatedInfoManager *)self _updatePassInfoManagerForPassUniqueID:v11 updateBlock:v14];

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __85__NPKPassAssociatedInfoManager_paymentPassWithUniqueIdentifier_didReceivePlanUpdate___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 dynamicPlans];
  v5 = NPKIsEqual(v4, *(a1 + 32));

  if (v5)
  {
    v6 = [v3 pass];
    v7 = [v6 npkIsAddValuePending];

    if (!v7)
    {
      v12 = 0;
      goto LABEL_11;
    }

    v8 = pk_General_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = pk_General_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 40);
        v15 = 138412290;
        v16 = v11;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: pass with uniqueID:%@ has add value pending", &v15, 0xCu);
      }
    }

    [v3 updateItemFields];
  }

  else
  {
    [v3 setDynamicPlans:*(a1 + 32)];
  }

  v12 = 1;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateWithTransitPassProperties:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = v7;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: didUpdateWithTransitPassProperties:%@ for pass uniqueID:%@", buf, 0x16u);
    }
  }

  v11 = [(NSMutableDictionary *)self->_passAssociatedInfoModelsByPassUniqueID objectForKey:v6];
  v12 = [v11 pass];
  v13 = [v12 paymentPass];

  if (v13)
  {
    [(NPKPassAssociatedInfoManager *)self _fetchMostRecentTransitPropertiesAndAppletStateForPass:v13];
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __99__NPKPassAssociatedInfoManager_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke;
    v15[3] = &unk_279949630;
    v16 = v7;
    v17 = v6;
    [(NPKPassAssociatedInfoManager *)self _updatePassInfoManagerForPassUniqueID:v17 updateBlock:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __99__NPKPassAssociatedInfoManager_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 transitPassProperties];
  v5 = NPKIsEqual(v4, *(a1 + 32));

  if (v5)
  {
    v6 = [v3 pass];
    v7 = [v6 npkIsAddValuePending];

    if (!v7)
    {
      v12 = 0;
      goto LABEL_11;
    }

    v8 = pk_General_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = pk_General_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 40);
        v15 = 138412290;
        v16 = v11;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: pass with uniqueID:%@ has add value pending", &v15, 0xCu);
      }
    }

    [v3 updateItemFields];
  }

  else
  {
    [v3 setTransitPassProperties:*(a1 + 32)];
  }

  v12 = 1;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)passWithUniqueIdentifier:(id)a3 didUpdateTiles:(id)a4 forContext:(int64_t)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = pk_General_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_General_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v18 = v9;
      v19 = 2112;
      v20 = v8;
      v21 = 2048;
      v22 = a5;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: didUpdateTiles %@ for pass uniqueID %@ for context %ld", buf, 0x20u);
    }
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83__NPKPassAssociatedInfoManager_passWithUniqueIdentifier_didUpdateTiles_forContext___block_invoke;
  v15[3] = &unk_279949658;
  v16 = v9;
  v13 = v9;
  [(NPKPassAssociatedInfoManager *)self _updatePassInfoManagerForPassUniqueID:v8 updateBlock:v15];

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __83__NPKPassAssociatedInfoManager_passWithUniqueIdentifier_didUpdateTiles_forContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 tiles];
  v5 = NPKIsEqual(v4, *(a1 + 32));

  if ((v5 & 1) == 0)
  {
    [v3 setTiles:*(a1 + 32)];
  }

  return v5 ^ 1u;
}

- (void)credentialIdentifier:(id)a3 paymentApplicationIdentifier:(id)a4 secureElementIdentifier:(id)a5 didUpdateRangingSuspensionReasons:(unint64_t)a6
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = pk_General_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_General_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v19 = a6;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: didUpdateRangingSuspensionReasons (%lu) for pass with subcredential identifier %@", buf, 0x16u);
    }
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __140__NPKPassAssociatedInfoManager_credentialIdentifier_paymentApplicationIdentifier_secureElementIdentifier_didUpdateRangingSuspensionReasons___block_invoke;
  block[3] = &unk_279945F18;
  block[4] = self;
  v16 = v8;
  v17 = a6;
  v13 = v8;
  dispatch_async(internalQueue, block);

  v14 = *MEMORY[0x277D85DE8];
}

void __140__NPKPassAssociatedInfoManager_credentialIdentifier_paymentApplicationIdentifier_secureElementIdentifier_didUpdateRangingSuspensionReasons___block_invoke(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__20;
  v13 = __Block_byref_object_dispose__20;
  v14 = 0;
  v2 = *(*(a1 + 32) + 24);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __140__NPKPassAssociatedInfoManager_credentialIdentifier_paymentApplicationIdentifier_secureElementIdentifier_didUpdateRangingSuspensionReasons___block_invoke_2;
  v6[3] = &unk_279949680;
  v7 = *(a1 + 40);
  v8 = &v9;
  [v2 enumerateKeysAndObjectsUsingBlock:v6];
  v3 = *(a1 + 32);
  v4 = v10[5];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __140__NPKPassAssociatedInfoManager_credentialIdentifier_paymentApplicationIdentifier_secureElementIdentifier_didUpdateRangingSuspensionReasons___block_invoke_3;
  v5[3] = &__block_descriptor_40_e36_q16__0__NPKPassAssociatedInfoModel_8l;
  v5[4] = *(a1 + 48);
  [v3 _updatePassInfoManagerForPassUniqueID:v4 updateBlock:v5];

  _Block_object_dispose(&v9, 8);
}

void __140__NPKPassAssociatedInfoManager_credentialIdentifier_paymentApplicationIdentifier_secureElementIdentifier_didUpdateRangingSuspensionReasons___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = [a3 pass];
  v7 = [v6 secureElementPass];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [v7 npkSubcredentials];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v19 + 1) + 8 * v12) identifier];
        v14 = [v13 isEqualToString:*(a1 + 32)];

        if (v14)
        {
          v15 = [v7 uniqueID];
          v16 = *(*(a1 + 40) + 8);
          v17 = *(v16 + 40);
          *(v16 + 40) = v15;

          *a4 = 1;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x277D85DE8];
}

BOOL __140__NPKPassAssociatedInfoManager_credentialIdentifier_paymentApplicationIdentifier_secureElementIdentifier_didUpdateRangingSuspensionReasons___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 rangingSuspensionReason];
  v5 = *(a1 + 32);
  if (v4 != v5)
  {
    [v3 setRangingSuspensionReason:v5];
  }

  return v4 != v5;
}

- (void)paymentServiceEstablishedConnection
{
  if (self->_paymentServiceWasInterrupted)
  {
    v9 = v2;
    v10 = v3;
    self->_paymentServiceWasInterrupted = 0;
    v5 = pk_General_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = pk_General_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: Refreshing all associated pass info following re-establishment of connection", v8, 2u);
      }
    }

    [(NPKPassAssociatedInfoManager *)self refreshAllPasses];
  }
}

- (void)accountChanged:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 accountIdentifier];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: received accountChanged for account with identifier %@", &v10, 0xCu);
    }
  }

  [(NPKPassAssociatedInfoManager *)self _handleReceivedAccountUpdateWithAccount:v4];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)precursorPassRequestsManager:(id)a3 didUpdateUpgradePrequestDescription:(id)a4 forPassUniqueID:(id)a5
{
  v7 = a4;
  v8 = a5;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __113__NPKPassAssociatedInfoManager_precursorPassRequestsManager_didUpdateUpgradePrequestDescription_forPassUniqueID___block_invoke;
  block[3] = &unk_279945880;
  block[4] = self;
  v13 = v8;
  v14 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(internalQueue, block);
}

void __113__NPKPassAssociatedInfoManager_precursorPassRequestsManager_didUpdateUpgradePrequestDescription_forPassUniqueID___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __113__NPKPassAssociatedInfoManager_precursorPassRequestsManager_didUpdateUpgradePrequestDescription_forPassUniqueID___block_invoke_2;
  v3[3] = &unk_279949658;
  v4 = *(a1 + 48);
  [v1 _updatePassInfoManagerForPassUniqueID:v2 updateBlock:v3];
}

uint64_t __113__NPKPassAssociatedInfoManager_precursorPassRequestsManager_didUpdateUpgradePrequestDescription_forPassUniqueID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 precursorPassDescription];
  v5 = NPKIsEqual(v4, *(a1 + 32));

  if ((v5 & 1) == 0)
  {
    [v3 setPrecursorPassDescription:*(a1 + 32)];
  }

  return v5 ^ 1u;
}

- (id)_associatedInfoModelWithPass:(id)a3 currentModel:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_internalQueue);
  v8 = [[NPKPassAssociatedInfoModel alloc] initWithPass:v6];
  v9 = [v7 balances];
  [(NPKPassAssociatedInfoModel *)v8 setBalances:v9];

  v10 = [v7 transitPassProperties];
  if (v10)
  {
    [(NPKPassAssociatedInfoModel *)v8 setTransitPassProperties:v10];
  }

  else
  {
    v11 = [MEMORY[0x277D38310] passPropertiesForPass:v6];
    [(NPKPassAssociatedInfoModel *)v8 setTransitPassProperties:v11];
  }

  v12 = [v7 transitAppletState];
  [(NPKPassAssociatedInfoModel *)v8 setTransitAppletState:v12];

  v13 = [v7 tiles];
  [(NPKPassAssociatedInfoModel *)v8 setTiles:v13];

  -[NPKPassAssociatedInfoModel setRangingSuspensionReason:](v8, "setRangingSuspensionReason:", [v7 rangingSuspensionReason]);
  v14 = [v7 accessories];
  [(NPKPassAssociatedInfoModel *)v8 setAccessories:v14];

  if ([v6 isHomeKeyPass])
  {
    v15 = [v7 restrictedGuestAccessState];
    if (v15)
    {
      [(NPKPassAssociatedInfoModel *)v8 setRestrictedGuestAccessState:v15];
    }

    else
    {
      v16 = [NPKPerishableValue alloc];
      v17 = [(NPKPerishableValue *)v16 initWithValue:MEMORY[0x277CBEC28] isStale:1];
      [(NPKPassAssociatedInfoModel *)v8 setRestrictedGuestAccessState:v17];
    }
  }

  return v8;
}

- (void)_fetchMostRecentInfoForPass:(id)a3
{
  v4 = a3;
  [(NPKPassAssociatedInfoManager *)self _fetchMostRecentBalancesForPass:v4];
  if (NPKIsTruthOnCardTransitPass(v4))
  {
    [(NPKPassAssociatedInfoManager *)self _fetchMostRecentTransitPropertiesAndAppletStateForPass:v4];
    [(NPKPassAssociatedInfoManager *)self _fetchMostRecentCommutePlansForPass:v4];
  }

  if ([v4 isAccessPass])
  {
    [(NPKPassAssociatedInfoManager *)self _fetchMostRecentTilesForPass:v4];
  }

  if ([v4 npkSupportsBluetooth])
  {
    [(NPKPassAssociatedInfoManager *)self _fetchMostRecentRangingSuspensionReasonForPass:v4];
  }

  if ([v4 isHomeKeyPass])
  {
    [(NPKPassAssociatedInfoManager *)self _fetchHomeAccessStatusForPass:v4];
  }

  if ([v4 npkIsPrecursorPass])
  {
    [(NPKPassAssociatedInfoManager *)self _fetchPrecursorPassDescriptionForPass:v4];
  }
}

- (void)_loadPassContentIfNeeded:(id)a3
{
  v4 = a3;
  if (([v4 isContentLoaded] & 1) == 0)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __57__NPKPassAssociatedInfoManager__loadPassContentIfNeeded___block_invoke;
    v5[3] = &unk_2799454E0;
    v5[4] = self;
    v6 = v4;
    [v6 loadContentAsyncWithCompletion:v5];
  }
}

void __57__NPKPassAssociatedInfoManager__loadPassContentIfNeeded___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 8);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__NPKPassAssociatedInfoManager__loadPassContentIfNeeded___block_invoke_2;
  v4[3] = &unk_2799454E0;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void __57__NPKPassAssociatedInfoManager__loadPassContentIfNeeded___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 24);
  v3 = [*(a1 + 40) uniqueID];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = [*(a1 + 32) _associatedInfoModelWithPass:*(a1 + 40) currentModel:v4];
    if ((NPKIsEqual(v4, v5) & 1) == 0)
    {
      v6 = pk_General_log();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

      if (v7)
      {
        v8 = pk_General_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138412546;
          v13 = v4;
          v14 = 2112;
          v15 = v5;
          _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: transit pass model did change from:%@ to:%@", &v12, 0x16u);
        }
      }

      v9 = *(*(a1 + 32) + 24);
      v10 = [*(a1 + 40) uniqueID];
      [v9 setObject:v5 forKeyedSubscript:v10];

      [*(a1 + 32) _notifyObserversOfUpdatedTransitPassInfoForModel:v5];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_fetchMostRecentBalancesForPass:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NPKPassAssociatedInfoManager *)self _isPassWithAccountBalanceForPass:v4])
  {
    [(NPKPassAssociatedInfoManager *)self _fetchMostRecentAccountBalanceForPass:v4];
  }

  else
  {
    v5 = [v4 uniqueID];

    v6 = pk_General_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = pk_General_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = v5;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: Requested fetch most recent balances for pass with unique ID %@", buf, 0xCu);
      }
    }

    v9 = [(NPKPassAssociatedInfoManager *)self paymentService];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __64__NPKPassAssociatedInfoManager__fetchMostRecentBalancesForPass___block_invoke;
    v11[3] = &unk_279947BD8;
    v12 = v5;
    v13 = self;
    v4 = v5;
    [v9 balancesForPaymentPassWithUniqueIdentifier:v4 completion:v11];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __64__NPKPassAssociatedInfoManager__fetchMostRecentBalancesForPass___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138412546;
      v16 = v3;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: received most recent balances %@ for pass with unique ID %@", buf, 0x16u);
    }
  }

  v10 = a1 + 32;
  v8 = *(a1 + 32);
  v9 = *(v10 + 8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__NPKPassAssociatedInfoManager__fetchMostRecentBalancesForPass___block_invoke_93;
  v13[3] = &unk_279949658;
  v14 = v3;
  v11 = v3;
  [v9 _updatePassInfoManagerForPassUniqueID:v8 updateBlock:v13];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __64__NPKPassAssociatedInfoManager__fetchMostRecentBalancesForPass___block_invoke_93(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 balances];
  v5 = NPKIsEqual(v4, *(a1 + 32));

  if ((v5 & 1) == 0)
  {
    [v3 setBalances:*(a1 + 32)];
  }

  return v5 ^ 1u;
}

- (void)_fetchMostRecentCommutePlansForPass:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [a3 uniqueID];
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: Requested fetch most recent commute plans for pass with unique ID %@", buf, 0xCu);
    }
  }

  v8 = [(NPKPassAssociatedInfoManager *)self paymentService];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__NPKPassAssociatedInfoManager__fetchMostRecentCommutePlansForPass___block_invoke;
  v11[3] = &unk_2799496C8;
  v12 = v4;
  v13 = self;
  v9 = v4;
  [v8 plansForPaymentPassWithUniqueIdentifier:v9 completion:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __68__NPKPassAssociatedInfoManager__fetchMostRecentCommutePlansForPass___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138412546;
      v16 = v3;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: received most recent commute plans %@ for pass with unique ID %@", buf, 0x16u);
    }
  }

  v10 = a1 + 32;
  v8 = *(a1 + 32);
  v9 = *(v10 + 8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__NPKPassAssociatedInfoManager__fetchMostRecentCommutePlansForPass___block_invoke_95;
  v13[3] = &unk_279949658;
  v14 = v3;
  v11 = v3;
  [v9 _updatePassInfoManagerForPassUniqueID:v8 updateBlock:v13];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __68__NPKPassAssociatedInfoManager__fetchMostRecentCommutePlansForPass___block_invoke_95(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 commutePlanFields];
  [v3 setDynamicPlans:*(a1 + 32)];
  v5 = [v3 commutePlanFields];

  v6 = NPKIsEqual(v5, v4) ^ 1;
  return v6;
}

- (void)_fetchMostRecentAccountBalanceForPass:(id)a3
{
  v4 = a3;
  if ([(NPKPassAssociatedInfoManager *)self _isPassWithAccountBalanceForPass:v4])
  {
    objc_initWeak(&location, self);
    v5 = [v4 associatedAccountFeatureIdentifier];
    v6 = [(NPKPassAssociatedInfoManager *)self accountService];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __70__NPKPassAssociatedInfoManager__fetchMostRecentAccountBalanceForPass___block_invoke;
    v7[3] = &unk_2799496F0;
    objc_copyWeak(v9, &location);
    v9[1] = v5;
    v8 = v4;
    [v6 defaultAccountForFeature:v5 completion:v7];

    objc_destroyWeak(v9);
    objc_destroyWeak(&location);
  }
}

void __70__NPKPassAssociatedInfoManager__fetchMostRecentAccountBalanceForPass___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__NPKPassAssociatedInfoManager__fetchMostRecentAccountBalanceForPass___block_invoke_2;
    block[3] = &unk_279945490;
    v10 = v5;
    v11 = *(a1 + 48);
    v13 = v10;
    v17 = v11;
    v14 = v6;
    v15 = v8;
    v16 = *(a1 + 32);
    dispatch_async(v9, block);
  }
}

void __70__NPKPassAssociatedInfoManager__fetchMostRecentAccountBalanceForPass___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = &stru_286C934F8;
      }

      else
      {
        v6 = @"not ";
      }

      v7 = [v5 accountIdentifier];
      v8 = *(a1 + 64);
      v9 = PKFeatureIdentifierToString();
      v10 = *(a1 + 40);
      v15 = 138413058;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: Did %@receive account with identifier %@ for feature identifier %@. Error?: %@", &v15, 0x2Au);
    }
  }

  if (*(a1 + 32))
  {
    v11 = [*(a1 + 48) passUniqueIDsByAccountIdentifier];
    v12 = [*(a1 + 56) uniqueID];
    v13 = [*(a1 + 32) accountIdentifier];
    [v11 setObject:v12 forKey:v13];

    [*(a1 + 48) _internalQueue_processReceivedAccountUpdateWithAccount:*(a1 + 32)];
    [*(a1 + 48) _refreshAccountBalanceIfApplicableForPass:*(a1 + 56) withAccount:*(a1 + 32)];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_refreshAccountBalanceIfApplicableForPass:(id)a3 withAccount:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [MEMORY[0x277CBEAA8] date];
    v9 = [v7 lastUpdated];
    [v8 timeIntervalSinceDate:v9];
    v11 = v10 > 300.0;
  }

  else
  {
    v11 = 0;
  }

  v12 = pk_General_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = pk_General_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (v11)
      {
        v15 = &stru_286C934F8;
      }

      else
      {
        v15 = @"not ";
      }

      v16 = [v7 accountIdentifier];
      [v6 associatedAccountFeatureIdentifier];
      v17 = PKFeatureIdentifierToString();
      *buf = 138412802;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: Will %@request refreshed account with identifier %@ for feature identifier %@.", buf, 0x20u);
    }
  }

  if (v11)
  {
    objc_initWeak(buf, self);
    v18 = [MEMORY[0x277D37CD0] sharedInstance];
    v19 = [v7 accountIdentifier];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __86__NPKPassAssociatedInfoManager__refreshAccountBalanceIfApplicableForPass_withAccount___block_invoke;
    v21[3] = &unk_279949718;
    objc_copyWeak(&v23, buf);
    v22 = v6;
    [v18 updateAccountWithIdentifier:v19 extended:0 completion:v21];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __86__NPKPassAssociatedInfoManager__refreshAccountBalanceIfApplicableForPass_withAccount___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[1];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __86__NPKPassAssociatedInfoManager__refreshAccountBalanceIfApplicableForPass_withAccount___block_invoke_2;
    v10[3] = &unk_279946260;
    v11 = v5;
    v12 = *(a1 + 32);
    v13 = v6;
    v14 = v8;
    dispatch_async(v9, v10);
  }
}

void __86__NPKPassAssociatedInfoManager__refreshAccountBalanceIfApplicableForPass_withAccount___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) accountIdentifier];
      [*(a1 + 40) associatedAccountFeatureIdentifier];
      v6 = PKFeatureIdentifierToString();
      v7 = *(a1 + 48);
      v12 = 138412802;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: received refreshed account with identifier %@ for feature identifier %@. Error?: %@", &v12, 0x20u);
    }
  }

  if (*(a1 + 32))
  {
    v8 = [*(a1 + 56) passUniqueIDsByAccountIdentifier];
    v9 = [*(a1 + 40) uniqueID];
    v10 = [*(a1 + 32) accountIdentifier];
    [v8 setObject:v9 forKey:v10];

    [*(a1 + 56) _internalQueue_processReceivedAccountUpdateWithAccount:*(a1 + 32)];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleReceivedAccountUpdateWithAccount:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__NPKPassAssociatedInfoManager__handleReceivedAccountUpdateWithAccount___block_invoke;
  v7[3] = &unk_2799454E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (void)_internalQueue_processReceivedAccountUpdateWithAccount:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_internalQueue);
  if (self->_passUniqueIDsByAccountIdentifier)
  {
    v5 = [(NPKPassAssociatedInfoManager *)self passUniqueIDsByAccountIdentifier];
    v6 = [v4 accountIdentifier];
    v7 = [v5 objectForKeyedSubscript:v6];
  }

  else
  {
    v7 = 0;
  }

  if ([v7 length])
  {
    [(NPKPassAssociatedInfoManager *)self _processAccountBalancesForPassWithUniqueID:v7 withAccount:v4];
  }

  else
  {
    v8 = pk_General_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = pk_General_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v4 accountIdentifier];
        v13 = 138412290;
        v14 = v11;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: Not processing balances for not-tracked account with identifier %@ ", &v13, 0xCu);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_processAccountBalancesForPassWithUniqueID:(id)a3 withAccount:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: Processing account balances for pass with uniqueID %@ with account %@", buf, 0x16u);
    }
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __87__NPKPassAssociatedInfoManager__processAccountBalancesForPassWithUniqueID_withAccount___block_invoke;
  v14[3] = &unk_279949598;
  v14[4] = self;
  v15 = v7;
  v16 = v6;
  v11 = v6;
  v12 = v7;
  [(NPKPassAssociatedInfoManager *)self _updatePassInfoManagerForPassUniqueID:v11 updateBlock:v14];

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __87__NPKPassAssociatedInfoManager__processAccountBalancesForPassWithUniqueID_withAccount___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) _shouldUseBalanceForAccount:*(a1 + 40)])
  {
    if ([*(a1 + 40) feature] == 4)
    {
      v4 = [objc_opt_class() accountBalanceForAccount:*(a1 + 40)];
      if (v4)
      {
        v5 = [MEMORY[0x277CBEB98] setWithObject:v4];
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v6 = pk_General_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = pk_General_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 48);
        v10 = [*(a1 + 40) accountIdentifier];
        [*(a1 + 40) state];
        v11 = PKAccountStateToString();
        v16 = 138412802;
        v17 = v9;
        v18 = 2112;
        v19 = v10;
        v20 = 2112;
        v21 = v11;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: Not using account balance for pass with unique ID %@. Account identifier %@ state %@", &v16, 0x20u);
      }
    }
  }

  v5 = 0;
LABEL_12:
  v12 = [v3 balances];
  v13 = NPKIsEqual(v12, v5);

  if ((v13 & 1) == 0)
  {
    [v3 setBalances:v5];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13 ^ 1u;
}

- (void)_fetchMostRecentTransitPropertiesAndAppletStateForPass:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 devicePrimaryPaymentApplication];
  v6 = [v4 uniqueID];
  v7 = pk_General_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_General_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 applicationIdentifier];
      *buf = 138412546;
      v22 = v6;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: Requested fetch most recent transit pass properties for pass with unique ID %@ payment application %@", buf, 0x16u);
    }
  }

  v11 = [(NPKPassAssociatedInfoManager *)self paymentService];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __87__NPKPassAssociatedInfoManager__fetchMostRecentTransitPropertiesAndAppletStateForPass___block_invoke;
  v16[3] = &unk_279949740;
  v17 = v5;
  v18 = v4;
  v19 = v6;
  v20 = self;
  v12 = v6;
  v13 = v4;
  v14 = v5;
  [v11 transitStateWithPassUniqueIdentifier:v12 paymentApplication:v14 completion:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __87__NPKPassAssociatedInfoManager__fetchMostRecentTransitPropertiesAndAppletStateForPass___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 transitPassPropertiesWithPaymentApplication:*(a1 + 32) pass:*(a1 + 40)];
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 48);
      v9 = [*(a1 + 32) applicationIdentifier];
      *buf = 138412802;
      v20 = v4;
      v21 = 2112;
      v22 = v8;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: Received most recent transit pass properties: %@ for pass with unique ID %@ payment application %@", buf, 0x20u);
    }
  }

  v12 = a1 + 48;
  v10 = *(a1 + 48);
  v11 = *(v12 + 8);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __87__NPKPassAssociatedInfoManager__fetchMostRecentTransitPropertiesAndAppletStateForPass___block_invoke_105;
  v16[3] = &unk_279949630;
  v17 = v3;
  v18 = v4;
  v13 = v4;
  v14 = v3;
  [v11 _updatePassInfoManagerForPassUniqueID:v10 updateBlock:v16];

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __87__NPKPassAssociatedInfoManager__fetchMostRecentTransitPropertiesAndAppletStateForPass___block_invoke_105(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 transitAppletState];
  if ((NPKIsEqual(v4, *(a1 + 32)) & 1) == 0)
  {

    goto LABEL_5;
  }

  v5 = [v3 transitPassProperties];
  v6 = NPKIsEqual(v5, *(a1 + 40));

  if ((v6 & 1) == 0)
  {
LABEL_5:
    [v3 setTransitAppletState:*(a1 + 32)];
    [v3 setTransitPassProperties:*(a1 + 40)];
    v7 = 1;
    goto LABEL_6;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (void)_fetchMostRecentTilesForPass:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uniqueID];
  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: Requested fetch most recent tiles for pass with unique ID %@", buf, 0xCu);
    }
  }

  objc_initWeak(buf, self);
  v9 = [(NPKPassAssociatedInfoManager *)self paymentService];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__NPKPassAssociatedInfoManager__fetchMostRecentTilesForPass___block_invoke;
  v12[3] = &unk_279949768;
  objc_copyWeak(&v14, buf);
  v10 = v5;
  v13 = v10;
  [v9 tilesForPassWithUniqueIdentifier:v10 context:1 completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);

  v11 = *MEMORY[0x277D85DE8];
}

void __61__NPKPassAssociatedInfoManager__fetchMostRecentTilesForPass___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138412546;
      v15 = v3;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: Received most recent tiles: %@ for pass with unique ID %@", buf, 0x16u);
    }
  }

  v9 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__NPKPassAssociatedInfoManager__fetchMostRecentTilesForPass___block_invoke_107;
  v12[3] = &unk_279949658;
  v13 = v3;
  v10 = v3;
  [WeakRetained _updatePassInfoManagerForPassUniqueID:v9 updateBlock:v12];

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __61__NPKPassAssociatedInfoManager__fetchMostRecentTilesForPass___block_invoke_107(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 tiles];
  v5 = NPKIsEqual(v4, *(a1 + 32));

  if ((v5 & 1) == 0)
  {
    [v3 setTiles:*(a1 + 32)];
  }

  return v5 ^ 1u;
}

- (void)_fetchMostRecentRangingSuspensionReasonForPass:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uniqueID];
  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: Requested fetch most recent secure ranging suspension reason for pass with unique ID %@", buf, 0xCu);
    }
  }

  v9 = [(NPKPassAssociatedInfoManager *)self _rangingSuspensionReasonForPass:v4];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__NPKPassAssociatedInfoManager__fetchMostRecentRangingSuspensionReasonForPass___block_invoke;
  v11[3] = &__block_descriptor_40_e36_q16__0__NPKPassAssociatedInfoModel_8l;
  v11[4] = v9;
  [(NPKPassAssociatedInfoManager *)self _updatePassInfoManagerForPassUniqueID:v5 updateBlock:v11];

  v10 = *MEMORY[0x277D85DE8];
}

BOOL __79__NPKPassAssociatedInfoManager__fetchMostRecentRangingSuspensionReasonForPass___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 rangingSuspensionReason];
  v5 = *(a1 + 32);
  if (v4 != v5)
  {
    [v3 setRangingSuspensionReason:v5];
  }

  return v4 != v5;
}

- (unint64_t)_rangingSuspensionReasonForPass:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v3 = [a3 devicePaymentApplications];
  v21 = [v3 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v21)
  {
    v4 = *v30;
    v23 = v3;
    v20 = *v30;
    do
    {
      v5 = 0;
      do
      {
        if (*v30 != v4)
        {
          objc_enumerationMutation(v3);
        }

        v22 = v5;
        v6 = *(*(&v29 + 1) + 8 * v5);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v7 = [v6 subcredentials];
        v8 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v26;
          while (2)
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v26 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v25 + 1) + 8 * i);
              v13 = [(NPKPassAssociatedInfoManager *)self paymentService];
              v14 = [v12 identifier];
              v15 = [v6 applicationIdentifier];
              v16 = [v6 secureElementIdentifier];
              v17 = [v13 rangingSuspensionReasonForAppletSubcredentialIdentifier:v14 paymentApplicationIdentifier:v15 secureElementIdentifier:v16];

              if (v17)
              {

                v3 = v23;
                goto LABEL_19;
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        v5 = v22 + 1;
        v3 = v23;
        v4 = v20;
      }

      while (v22 + 1 != v21);
      v17 = 0;
      v21 = [v23 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v21);
  }

  else
  {
    v17 = 0;
  }

LABEL_19:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)_fetchPrecursorPassDescriptionForPass:(id)a3
{
  v4 = a3;
  v5 = [(NPKPassAssociatedInfoManager *)self precursorPassManager];
  [v5 loadUpgradeControllerForPass:v4];
}

- (void)_updatePassInfoManagerForPassUniqueID:(id)a3 updateBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__NPKPassAssociatedInfoManager__updatePassInfoManagerForPassUniqueID_updateBlock___block_invoke;
  block[3] = &unk_279945A48;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(internalQueue, block);
}

void __82__NPKPassAssociatedInfoManager__updatePassInfoManagerForPassUniqueID_updateBlock___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];
  v3 = (*(*(a1 + 48) + 16))();
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v9 = 136315650;
      v10 = "[NPKPassAssociatedInfoManager _updatePassInfoManagerForPassUniqueID:updateBlock:]_block_invoke";
      v11 = 2048;
      v12 = v3;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: %s\nHandling update type %ld for pass unique ID %@", &v9, 0x20u);
    }
  }

  if (v3 == 2)
  {
    [*(a1 + 32) _notifyObserversOfUpdatedRestrictedGuestState:v2];
  }

  else if (v3 == 1)
  {
    [*(a1 + 32) _notifyObserversOfUpdatedTransitPassInfoForModel:v2];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_updateAllPassesItemsFieldsPendingUpdateStatus
{
  v26 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_internalQueue);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(NSMutableDictionary *)self->_passAssociatedInfoModelsByPassUniqueID allValues];
  v3 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = *v22;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v22 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v21 + 1) + 8 * i);
        v17 = 0;
        v18 = &v17;
        v19 = 0x2020000000;
        v20 = 0;
        v7 = [v6 balanceFields];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __78__NPKPassAssociatedInfoManager__updateAllPassesItemsFieldsPendingUpdateStatus__block_invoke;
        v16[3] = &unk_279949790;
        v16[4] = &v17;
        [v7 enumerateObjectsUsingBlock:v16];

        [v6 updateItemFields];
        v12 = 0;
        v13 = &v12;
        v14 = 0x2020000000;
        v15 = 0;
        v8 = [v6 balanceFields];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __78__NPKPassAssociatedInfoManager__updateAllPassesItemsFieldsPendingUpdateStatus__block_invoke_2;
        v11[3] = &unk_279949790;
        v11[4] = &v12;
        [v8 enumerateObjectsUsingBlock:v11];

        if (*(v18 + 24) != *(v13 + 24))
        {
          [(NPKPassAssociatedInfoManager *)self _notifyObserversOfUpdatedTransitPassInfoForModel:v6];
        }

        _Block_object_dispose(&v12, 8);
        _Block_object_dispose(&v17, 8);
      }

      v3 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v3);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __78__NPKPassAssociatedInfoManager__updateAllPassesItemsFieldsPendingUpdateStatus__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 hasPendingUpdate];
  *(*(*(a1 + 32) + 8) + 24) = result;
  *a4 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __78__NPKPassAssociatedInfoManager__updateAllPassesItemsFieldsPendingUpdateStatus__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 hasPendingUpdate];
  *(*(*(a1 + 32) + 8) + 24) = result;
  *a4 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

- (void)_notifyObserversOfUpdatedTransitPassInfoForModel:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_internalQueue);
  v5 = [[NPKPassAssociatedInfo alloc] initWithAssociatedInfoModel:v4];
  observerQueue = self->_observerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__NPKPassAssociatedInfoManager__notifyObserversOfUpdatedTransitPassInfoForModel___block_invoke;
  block[3] = &unk_279945880;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(observerQueue, block);
}

void __81__NPKPassAssociatedInfoManager__notifyObserversOfUpdatedTransitPassInfoForModel___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __81__NPKPassAssociatedInfoManager__notifyObserversOfUpdatedTransitPassInfoForModel___block_invoke_2;
  v3[3] = &unk_2799497B8;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 _notifyObservers:v3];
}

void __81__NPKPassAssociatedInfoManager__notifyObserversOfUpdatedTransitPassInfoForModel___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) pass];
    v6 = [v5 uniqueID];
    [v7 passAssociatedInfoManager:v3 didUpdatePassInfo:v4 withPassUniqueID:v6];
  }
}

- (void)_notifyObserversOfUpdatedRestrictedGuestState:(id)a3
{
  internalQueue = self->_internalQueue;
  v5 = a3;
  dispatch_assert_queue_V2(internalQueue);
  v6 = [[NPKPassAssociatedInfo alloc] initWithAssociatedInfoModel:v5];

  observerQueue = self->_observerQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__NPKPassAssociatedInfoManager__notifyObserversOfUpdatedRestrictedGuestState___block_invoke;
  v9[3] = &unk_2799454E0;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(observerQueue, v9);
}

void __78__NPKPassAssociatedInfoManager__notifyObserversOfUpdatedRestrictedGuestState___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __78__NPKPassAssociatedInfoManager__notifyObserversOfUpdatedRestrictedGuestState___block_invoke_2;
  v2[3] = &unk_2799497E0;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _notifyObservers:v2];
}

void __78__NPKPassAssociatedInfoManager__notifyObserversOfUpdatedRestrictedGuestState___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 passAssociatedInfoManager:*(a1 + 32) didUpdateRestrictedGuestStatusWithInfo:*(a1 + 40)];
  }
}

- (void)_internalQueue_regenerateAssociatedInfoModelForPass:(id)a3 inModelsByID:(id)a4
{
  internalQueue = self->_internalQueue;
  v7 = a4;
  v8 = a3;
  dispatch_assert_queue_V2(internalQueue);
  passAssociatedInfoModelsByPassUniqueID = self->_passAssociatedInfoModelsByPassUniqueID;
  v10 = [v8 uniqueID];
  v13 = [(NSMutableDictionary *)passAssociatedInfoModelsByPassUniqueID objectForKeyedSubscript:v10];

  v11 = [(NPKPassAssociatedInfoManager *)self _associatedInfoModelWithPass:v8 currentModel:v13];
  v12 = [v8 uniqueID];
  [v7 setObject:v11 forKeyedSubscript:v12];

  [(NPKPassAssociatedInfoManager *)self _loadPassContentIfNeeded:v8];
  [(NPKPassAssociatedInfoManager *)self _fetchMostRecentInfoForPass:v8];

  if ((NPKIsEqual(v13, v11) & 1) == 0)
  {
    [(NPKPassAssociatedInfoManager *)self _notifyObserversOfUpdatedTransitPassInfoForModel:v11];
  }
}

- (BOOL)_isPassEligible:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isStoredValuePass] & 1) != 0 || (objc_msgSend(v4, "isAccessPass") & 1) != 0 || -[NPKPassAssociatedInfoManager _isPassWithAccountBalanceForPass:](self, "_isPassWithAccountBalanceForPass:", v4) || (objc_msgSend(v4, "npkIsPrecursorPass"))
  {
    v5 = 1;
  }

  else
  {
    v8 = pk_General_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    v5 = 0;
    if (v9)
    {
      v10 = pk_General_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v4 uniqueID];
        v12 = 138412290;
        v13 = v11;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassAssociatedInfoManager: Pass is not eligible (non-transit, non-eMoney, non-Access, non-Apple Balance) with uniqueID:%@", &v12, 0xCu);
      }

      v5 = 0;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)_shouldUseBalanceForAccount:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 state];
    if (v5 <= 5)
    {
      v6 = 0x23u >> v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (NSMutableDictionary)passUniqueIDsByAccountIdentifier
{
  passUniqueIDsByAccountIdentifier = self->_passUniqueIDsByAccountIdentifier;
  if (!passUniqueIDsByAccountIdentifier)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = self->_passUniqueIDsByAccountIdentifier;
    self->_passUniqueIDsByAccountIdentifier = v4;

    passUniqueIDsByAccountIdentifier = self->_passUniqueIDsByAccountIdentifier;
  }

  return passUniqueIDsByAccountIdentifier;
}

@end