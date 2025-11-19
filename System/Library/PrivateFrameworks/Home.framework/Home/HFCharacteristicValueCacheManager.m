@interface HFCharacteristicValueCacheManager
- (BOOL)_transaction:(id)a3 isWritingCharacteristic:(id)a4 allowingActions:(BOOL)a5;
- (BOOL)containsTransactionsExecutingActionSet:(id)a3;
- (BOOL)containsTransactionsReadingCharacteristic:(id)a3 filterBlock:(id)a4;
- (BOOL)containsTransactionsWritingCharacteristic:(id)a3;
- (HFCharacteristicValueCacheManager)init;
- (id)_perfomUpdatedCacheRead:(id)a3;
- (id)_performLock:(os_unfair_lock_s *)a3 block:(id)a4;
- (id)cachedValueForCharacteristic:(id)a3;
- (id)transactionsExecutingActionSet:(id)a3;
- (id)transactionsReadingCharacteristic:(id)a3 filterBlock:(id)a4;
- (id)transactionsWritingCharacteristic:(id)a3;
- (void)_enumerateTransactionsRemovingFailingItems:(id)a3 block:(id)a4;
- (void)_locked_updateWithAddedTransaction:(id)a3;
- (void)_locked_updateWithRemovedTransaction:(id)a3;
- (void)transactionAdded:(id)a3;
- (void)transactionRemoved:(id)a3;
@end

@implementation HFCharacteristicValueCacheManager

- (HFCharacteristicValueCacheManager)init
{
  v18.receiver = self;
  v18.super_class = HFCharacteristicValueCacheManager;
  v2 = [(HFCharacteristicValueCacheManager *)&v18 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_cacheLock._os_unfair_lock_opaque = 0;
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v5 = dispatch_queue_create("HFCharacteristicValueCacheManagerQueue", v4);
    queue = v3->_queue;
    v3->_queue = v5;

    v7 = dispatch_group_create();
    dispatchGroup = v3->_dispatchGroup;
    v3->_dispatchGroup = v7;

    v9 = [MEMORY[0x277CBEB38] dictionary];
    transactionsByCharacteristicID = v3->_transactionsByCharacteristicID;
    v3->_transactionsByCharacteristicID = v9;

    v11 = [MEMORY[0x277CBEB38] dictionary];
    transactionsByActionSetID = v3->_transactionsByActionSetID;
    v3->_transactionsByActionSetID = v11;

    v13 = [MEMORY[0x277CBEB40] orderedSet];
    unprocessedAddedTransactions = v3->_unprocessedAddedTransactions;
    v3->_unprocessedAddedTransactions = v13;

    v15 = [MEMORY[0x277CBEB40] orderedSet];
    unprocessedRemovedTransactions = v3->_unprocessedRemovedTransactions;
    v3->_unprocessedRemovedTransactions = v15;
  }

  return v3;
}

- (id)transactionsReadingCharacteristic:(id)a3 filterBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__HFCharacteristicValueCacheManager_transactionsReadingCharacteristic_filterBlock___block_invoke;
  v12[3] = &unk_277DFC038;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v6;
  v10 = [(HFCharacteristicValueCacheManager *)self _perfomUpdatedCacheRead:v12];

  return v10;
}

id __83__HFCharacteristicValueCacheManager_transactionsReadingCharacteristic_filterBlock___block_invoke(id *a1)
{
  v2 = [a1[4] transactionsByCharacteristicID];
  v3 = [a1[5] uniqueIdentifier];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 transactionsReading];

  v6 = [MEMORY[0x277CBEB40] orderedSet];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__HFCharacteristicValueCacheManager_transactionsReadingCharacteristic_filterBlock___block_invoke_2;
  v12[3] = &unk_277DFC010;
  v7 = a1[4];
  v13 = a1[5];
  v15 = a1[6];
  v8 = v6;
  v14 = v8;
  [v7 _enumerateTransactionsRemovingFailingItems:v5 block:v12];
  v9 = v14;
  v10 = v8;

  return v8;
}

uint64_t __83__HFCharacteristicValueCacheManager_transactionsReadingCharacteristic_filterBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 characteristicsToRead];
  v5 = [v4 containsObject:*(a1 + 32)];

  if (v5)
  {
    v6 = *(a1 + 48);
    if (!v6 || (*(v6 + 16))(v6, v3))
    {
      [*(a1 + 40) addObject:v3];
    }
  }

  return v5 ^ 1u;
}

- (BOOL)containsTransactionsReadingCharacteristic:(id)a3 filterBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __91__HFCharacteristicValueCacheManager_containsTransactionsReadingCharacteristic_filterBlock___block_invoke;
  v13[3] = &unk_277DFC038;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v8 = v7;
  v9 = v6;
  v10 = [(HFCharacteristicValueCacheManager *)self _perfomUpdatedCacheRead:v13];
  v11 = [v10 BOOLValue];

  return v11;
}

id __91__HFCharacteristicValueCacheManager_containsTransactionsReadingCharacteristic_filterBlock___block_invoke(id *a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v2 = [a1[4] transactionsByCharacteristicID];
  v3 = [a1[5] uniqueIdentifier];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 transactionsReading];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __91__HFCharacteristicValueCacheManager_containsTransactionsReadingCharacteristic_filterBlock___block_invoke_2;
  v9[3] = &unk_277DFC060;
  v6 = a1[4];
  v10 = a1[5];
  v12 = &v13;
  v11 = a1[6];
  [v6 _enumerateTransactionsRemovingFailingItems:v5 block:v9];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:*(v14 + 24)];

  _Block_object_dispose(&v13, 8);

  return v7;
}

uint64_t __91__HFCharacteristicValueCacheManager_containsTransactionsReadingCharacteristic_filterBlock___block_invoke_2(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 characteristicsToRead];
  v7 = [v6 containsObject:a1[4]];

  v8 = *(a1[6] + 8);
  v9 = *(v8 + 24);
  if ((v9 & 1) == 0 && ((v7 ^ 1) & 1) == 0)
  {
    v10 = a1[5];
    if (v10)
    {
      v9 = (*(v10 + 16))(v10, v5);
      v8 = *(a1[6] + 8);
    }

    else
    {
      v9 = 1;
    }
  }

  *(v8 + 24) = v9;
  *a3 = *(*(a1[6] + 8) + 24);

  return v7 ^ 1u;
}

- (id)transactionsWritingCharacteristic:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__HFCharacteristicValueCacheManager_transactionsWritingCharacteristic___block_invoke;
  v8[3] = &unk_277DF78D8;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(HFCharacteristicValueCacheManager *)self _perfomUpdatedCacheRead:v8];

  return v6;
}

id __71__HFCharacteristicValueCacheManager_transactionsWritingCharacteristic___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transactionsByCharacteristicID];
  v3 = [*(a1 + 40) uniqueIdentifier];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 transactionsWriting];

  v6 = [MEMORY[0x277CBEB40] orderedSet];
  v7 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__HFCharacteristicValueCacheManager_transactionsWritingCharacteristic___block_invoke_2;
  v12[3] = &unk_277DFC088;
  v12[4] = v7;
  v13 = *(a1 + 40);
  v8 = v6;
  v14 = v8;
  [v7 _enumerateTransactionsRemovingFailingItems:v5 block:v12];
  v9 = v14;
  v10 = v8;

  return v8;
}

uint64_t __71__HFCharacteristicValueCacheManager_transactionsWritingCharacteristic___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _transaction:v3 isWritingCharacteristic:*(a1 + 40)];
  if (v4)
  {
    [*(a1 + 48) addObject:v3];
  }

  return v4 ^ 1u;
}

- (BOOL)containsTransactionsWritingCharacteristic:(id)a3
{
  v4 = a3;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __79__HFCharacteristicValueCacheManager_containsTransactionsWritingCharacteristic___block_invoke;
  v12 = &unk_277DF78D8;
  v13 = self;
  v14 = v4;
  v5 = v4;
  v6 = [(HFCharacteristicValueCacheManager *)self _perfomUpdatedCacheRead:&v9];
  v7 = [v6 BOOLValue];

  return v7;
}

id __79__HFCharacteristicValueCacheManager_containsTransactionsWritingCharacteristic___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transactionsByCharacteristicID];
  v3 = [*(a1 + 40) uniqueIdentifier];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 transactionsWriting];

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v6 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__HFCharacteristicValueCacheManager_containsTransactionsWritingCharacteristic___block_invoke_2;
  v9[3] = &unk_277DFC0B0;
  v9[4] = v6;
  v10 = *(a1 + 40);
  v11 = &v12;
  [v6 _enumerateTransactionsRemovingFailingItems:v5 block:v9];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:*(v13 + 24)];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __79__HFCharacteristicValueCacheManager_containsTransactionsWritingCharacteristic___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 32) _transaction:a2 isWritingCharacteristic:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = (*(*(*(a1 + 48) + 8) + 24) | v5) & 1;
  *a3 = *(*(*(a1 + 48) + 8) + 24);
  return v5 ^ 1u;
}

- (id)transactionsExecutingActionSet:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__HFCharacteristicValueCacheManager_transactionsExecutingActionSet___block_invoke;
  v8[3] = &unk_277DF78D8;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(HFCharacteristicValueCacheManager *)self _perfomUpdatedCacheRead:v8];

  return v6;
}

id __68__HFCharacteristicValueCacheManager_transactionsExecutingActionSet___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transactionsByActionSetID];
  v3 = [*(a1 + 40) uniqueIdentifier];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = [MEMORY[0x277CBEB40] orderedSet];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__HFCharacteristicValueCacheManager_transactionsExecutingActionSet___block_invoke_2;
  v11[3] = &unk_277DFC0D8;
  v6 = *(a1 + 32);
  v12 = *(a1 + 40);
  v7 = v5;
  v13 = v7;
  [v6 _enumerateTransactionsRemovingFailingItems:v4 block:v11];
  v8 = v13;
  v9 = v7;

  return v7;
}

uint64_t __68__HFCharacteristicValueCacheManager_transactionsExecutingActionSet___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 actionSetsToExecute];
  v5 = [v4 containsObject:*(a1 + 32)];

  if (v5)
  {
    [*(a1 + 40) addObject:v3];
  }

  return v5 ^ 1u;
}

- (BOOL)containsTransactionsExecutingActionSet:(id)a3
{
  v4 = a3;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __76__HFCharacteristicValueCacheManager_containsTransactionsExecutingActionSet___block_invoke;
  v12 = &unk_277DF78D8;
  v13 = self;
  v14 = v4;
  v5 = v4;
  v6 = [(HFCharacteristicValueCacheManager *)self _perfomUpdatedCacheRead:&v9];
  v7 = [v6 BOOLValue];

  return v7;
}

id __76__HFCharacteristicValueCacheManager_containsTransactionsExecutingActionSet___block_invoke(uint64_t a1)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v2 = [*(a1 + 32) transactionsByActionSetID];
  v3 = [*(a1 + 40) uniqueIdentifier];
  v4 = [v2 objectForKeyedSubscript:v3];

  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __76__HFCharacteristicValueCacheManager_containsTransactionsExecutingActionSet___block_invoke_2;
  v11 = &unk_277DFC100;
  v5 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = &v14;
  [v5 _enumerateTransactionsRemovingFailingItems:v4 block:&v8];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{*(v15 + 24), v8, v9, v10, v11}];

  _Block_object_dispose(&v14, 8);

  return v6;
}

uint64_t __76__HFCharacteristicValueCacheManager_containsTransactionsExecutingActionSet___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 actionSetsToExecute];
  v6 = [v5 containsObject:*(a1 + 32)];

  *(*(*(a1 + 40) + 8) + 24) = (*(*(*(a1 + 40) + 8) + 24) | v6) & 1;
  *a3 = *(*(*(a1 + 40) + 8) + 24);
  return v6 ^ 1u;
}

- (id)cachedValueForCharacteristic:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__HFCharacteristicValueCacheManager_cachedValueForCharacteristic___block_invoke;
  v8[3] = &unk_277DF78D8;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(HFCharacteristicValueCacheManager *)self _perfomUpdatedCacheRead:v8];

  return v6;
}

id __66__HFCharacteristicValueCacheManager_cachedValueForCharacteristic___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transactionsByCharacteristicID];
  v3 = [*(a1 + 40) uniqueIdentifier];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 transactionsWriting];

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__14;
  v15 = __Block_byref_object_dispose__14;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__HFCharacteristicValueCacheManager_cachedValueForCharacteristic___block_invoke_21;
  v8[3] = &unk_277DFC150;
  v9 = *(a1 + 40);
  v10 = &v11;
  [v5 enumerateObjectsWithOptions:2 usingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __66__HFCharacteristicValueCacheManager_cachedValueForCharacteristic___block_invoke_21(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = [a2 writeCharacteristicRequests];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__HFCharacteristicValueCacheManager_cachedValueForCharacteristic___block_invoke_2;
  v9[3] = &unk_277DFC128;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = v7;
  v11 = v8;
  v12 = a4;
  [v6 na_each:v9];
}

void __66__HFCharacteristicValueCacheManager_cachedValueForCharacteristic___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 characteristic];
  v4 = *(a1 + 32);

  if (v3 == v4)
  {
    v5 = [v8 value];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    **(a1 + 48) = 1;
  }
}

- (void)transactionAdded:(id)a3
{
  v4 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__HFCharacteristicValueCacheManager_transactionAdded___block_invoke;
  v11[3] = &unk_277DF78D8;
  v11[4] = self;
  v5 = v4;
  v12 = v5;
  v6 = [(HFCharacteristicValueCacheManager *)self _performLock:&self->_unprocessedTransctionLock block:v11];
  dispatch_group_enter(self->_dispatchGroup);
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__HFCharacteristicValueCacheManager_transactionAdded___block_invoke_2;
  v9[3] = &unk_277DF3370;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_async(queue, v9);
}

uint64_t __54__HFCharacteristicValueCacheManager_transactionAdded___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) unprocessedAddedTransactions];
  [v2 addObject:*(a1 + 40)];

  return 0;
}

void __54__HFCharacteristicValueCacheManager_transactionAdded___block_invoke_2(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v2 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__HFCharacteristicValueCacheManager_transactionAdded___block_invoke_3;
  v8[3] = &unk_277DFC178;
  v10 = &v11;
  v8[4] = v2;
  v9 = *(a1 + 40);
  v3 = [v2 _performLock:v2 + 20 block:v8];
  if (*(v12 + 24) == 1)
  {
    v4 = *(a1 + 32);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __54__HFCharacteristicValueCacheManager_transactionAdded___block_invoke_4;
    v6[3] = &unk_277DF78D8;
    v6[4] = v4;
    v7 = *(a1 + 40);
    v5 = [v4 _performLock:v4 + 16 block:v6];
  }

  dispatch_group_leave(*(*(a1 + 32) + 8));

  _Block_object_dispose(&v11, 8);
}

uint64_t __54__HFCharacteristicValueCacheManager_transactionAdded___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) unprocessedAddedTransactions];
  *(*(*(a1 + 48) + 8) + 24) = [v2 containsObject:*(a1 + 40)];

  v3 = [*(a1 + 32) unprocessedAddedTransactions];
  [v3 removeObject:*(a1 + 40)];

  return 0;
}

- (void)transactionRemoved:(id)a3
{
  v4 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__HFCharacteristicValueCacheManager_transactionRemoved___block_invoke;
  v11[3] = &unk_277DF78D8;
  v11[4] = self;
  v5 = v4;
  v12 = v5;
  v6 = [(HFCharacteristicValueCacheManager *)self _performLock:&self->_unprocessedTransctionLock block:v11];
  dispatch_group_enter(self->_dispatchGroup);
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__HFCharacteristicValueCacheManager_transactionRemoved___block_invoke_2;
  v9[3] = &unk_277DF3370;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_async(queue, v9);
}

uint64_t __56__HFCharacteristicValueCacheManager_transactionRemoved___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) unprocessedRemovedTransactions];
  [v2 addObject:*(a1 + 40)];

  return 0;
}

void __56__HFCharacteristicValueCacheManager_transactionRemoved___block_invoke_2(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v2 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__HFCharacteristicValueCacheManager_transactionRemoved___block_invoke_3;
  v8[3] = &unk_277DFC178;
  v10 = &v11;
  v8[4] = v2;
  v9 = *(a1 + 40);
  v3 = [v2 _performLock:v2 + 20 block:v8];
  if (*(v12 + 24) == 1)
  {
    v4 = *(a1 + 32);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __56__HFCharacteristicValueCacheManager_transactionRemoved___block_invoke_4;
    v6[3] = &unk_277DF78D8;
    v6[4] = v4;
    v7 = *(a1 + 40);
    v5 = [v4 _performLock:v4 + 16 block:v6];
  }

  dispatch_group_leave(*(*(a1 + 32) + 8));

  _Block_object_dispose(&v11, 8);
}

uint64_t __56__HFCharacteristicValueCacheManager_transactionRemoved___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) unprocessedRemovedTransactions];
  *(*(*(a1 + 48) + 8) + 24) = [v2 containsObject:*(a1 + 40)];

  v3 = [*(a1 + 32) unprocessedRemovedTransactions];
  [v3 removeObject:*(a1 + 40)];

  return 0;
}

- (void)_locked_updateWithAddedTransaction:(id)a3
{
  v4 = a3;
  v5 = [v4 characteristicsToRead];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __72__HFCharacteristicValueCacheManager__locked_updateWithAddedTransaction___block_invoke;
  v19[3] = &unk_277DF66F0;
  v19[4] = self;
  v6 = v4;
  v20 = v6;
  [v5 na_each:v19];

  v7 = [v6 writeCharacteristicRequests];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __72__HFCharacteristicValueCacheManager__locked_updateWithAddedTransaction___block_invoke_2;
  v17[3] = &unk_277DFC1A0;
  v17[4] = self;
  v8 = v6;
  v18 = v8;
  [v7 na_each:v17];

  v9 = [v8 actionsToExecute];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__HFCharacteristicValueCacheManager__locked_updateWithAddedTransaction___block_invoke_3;
  v15[3] = &unk_277DFC1C8;
  v15[4] = self;
  v10 = v8;
  v16 = v10;
  [v9 na_each:v15];

  v11 = [v10 actionSetsToExecute];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__HFCharacteristicValueCacheManager__locked_updateWithAddedTransaction___block_invoke_4;
  v13[3] = &unk_277DFC1F0;
  v13[4] = self;
  v14 = v10;
  v12 = v10;
  [v11 na_each:v13];
}

void __72__HFCharacteristicValueCacheManager__locked_updateWithAddedTransaction___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) transactionsByCharacteristicID];
  v4 = [v9 uniqueIdentifier];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (!v5)
  {
    v5 = objc_alloc_init(_HFCharacteristicReadAndWriteTransactions);
  }

  v6 = [(_HFCharacteristicReadAndWriteTransactions *)v5 transactionsReading];
  [v6 addObject:*(a1 + 40)];

  v7 = [*(a1 + 32) transactionsByCharacteristicID];
  v8 = [v9 uniqueIdentifier];
  [v7 setObject:v5 forKeyedSubscript:v8];
}

void __72__HFCharacteristicValueCacheManager__locked_updateWithAddedTransaction___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) transactionsByCharacteristicID];
  v4 = [v11 characteristic];
  v5 = [v4 uniqueIdentifier];
  v6 = [v3 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v6 = objc_alloc_init(_HFCharacteristicReadAndWriteTransactions);
  }

  v7 = [(_HFCharacteristicReadAndWriteTransactions *)v6 transactionsWriting];
  [v7 addObject:*(a1 + 40)];

  v8 = [*(a1 + 32) transactionsByCharacteristicID];
  v9 = [v11 characteristic];
  v10 = [v9 uniqueIdentifier];
  [v8 setObject:v6 forKeyedSubscript:v10];
}

void __72__HFCharacteristicValueCacheManager__locked_updateWithAddedTransaction___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v14 = v3;
  if (objc_opt_isKindOfClass())
  {
    v4 = v14;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [*(a1 + 32) transactionsByCharacteristicID];
    v7 = [v5 characteristic];
    v8 = [v7 uniqueIdentifier];
    v9 = [v6 objectForKeyedSubscript:v8];

    if (!v9)
    {
      v9 = objc_alloc_init(_HFCharacteristicReadAndWriteTransactions);
    }

    v10 = [(_HFCharacteristicReadAndWriteTransactions *)v9 transactionsWriting];
    [v10 addObject:*(a1 + 40)];

    v11 = [*(a1 + 32) transactionsByCharacteristicID];
    v12 = [v5 characteristic];
    v13 = [v12 uniqueIdentifier];
    [v11 setObject:v9 forKeyedSubscript:v13];
  }
}

void __72__HFCharacteristicValueCacheManager__locked_updateWithAddedTransaction___block_invoke_4(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) transactionsByActionSetID];
  v4 = [v8 uniqueIdentifier];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (!v5)
  {
    v5 = [MEMORY[0x277CBEB40] orderedSet];
  }

  [v5 addObject:*(a1 + 40)];
  v6 = [*(a1 + 32) transactionsByActionSetID];
  v7 = [v8 uniqueIdentifier];
  [v6 setObject:v5 forKeyedSubscript:v7];
}

- (void)_locked_updateWithRemovedTransaction:(id)a3
{
  v4 = a3;
  v5 = [(HFCharacteristicValueCacheManager *)self transactionsByCharacteristicID];
  v6 = [v5 allValues];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__HFCharacteristicValueCacheManager__locked_updateWithRemovedTransaction___block_invoke;
  v13[3] = &unk_277DFC218;
  v7 = v4;
  v14 = v7;
  [v6 na_each:v13];

  v8 = [(HFCharacteristicValueCacheManager *)self transactionsByActionSetID];
  v9 = [v8 allValues];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__HFCharacteristicValueCacheManager__locked_updateWithRemovedTransaction___block_invoke_2;
  v11[3] = &unk_277DFC240;
  v12 = v7;
  v10 = v7;
  [v9 na_each:v11];
}

void __74__HFCharacteristicValueCacheManager__locked_updateWithRemovedTransaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 transactionsReading];
  [v4 removeObject:*(a1 + 32)];

  v5 = [v3 transactionsWriting];

  [v5 removeObject:*(a1 + 32)];
}

- (id)_performLock:(os_unfair_lock_s *)a3 block:(id)a4
{
  v5 = a4;
  os_unfair_lock_lock(a3);
  v6 = v5[2](v5);

  os_unfair_lock_unlock(a3);

  return v6;
}

- (id)_perfomUpdatedCacheRead:(id)a3
{
  v4 = a3;
  if (dispatch_group_wait(self->_dispatchGroup, 0))
  {
    v5 = [MEMORY[0x277CBEB40] orderedSet];
    v6 = [MEMORY[0x277CBEB40] orderedSet];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __61__HFCharacteristicValueCacheManager__perfomUpdatedCacheRead___block_invoke;
    v19[3] = &unk_277DFC268;
    v7 = v5;
    v20 = v7;
    v21 = self;
    v8 = v6;
    v22 = v8;
    v9 = [(HFCharacteristicValueCacheManager *)self _performLock:&self->_unprocessedTransctionLock block:v19];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __61__HFCharacteristicValueCacheManager__perfomUpdatedCacheRead___block_invoke_2;
    v14[3] = &unk_277DFC2B8;
    v15 = v7;
    v16 = self;
    v17 = v8;
    v18 = v4;
    v10 = v8;
    v11 = v7;
    v12 = [(HFCharacteristicValueCacheManager *)self _performLock:&self->_cacheLock block:v14];
  }

  else
  {
    v12 = [(HFCharacteristicValueCacheManager *)self _performLock:&self->_cacheLock block:v4];
  }

  return v12;
}

uint64_t __61__HFCharacteristicValueCacheManager__perfomUpdatedCacheRead___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) unprocessedAddedTransactions];
  [v2 unionOrderedSet:v3];

  v4 = *(a1 + 48);
  v5 = [*(a1 + 40) unprocessedRemovedTransactions];
  [v4 unionOrderedSet:v5];

  v6 = [*(a1 + 40) unprocessedAddedTransactions];
  [v6 removeAllObjects];

  v7 = [*(a1 + 40) unprocessedRemovedTransactions];
  [v7 removeAllObjects];

  return 0;
}

id __61__HFCharacteristicValueCacheManager__perfomUpdatedCacheRead___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__HFCharacteristicValueCacheManager__perfomUpdatedCacheRead___block_invoke_3;
  v7[3] = &unk_277DFC290;
  v7[4] = a1[5];
  [v2 enumerateObjectsUsingBlock:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__HFCharacteristicValueCacheManager__perfomUpdatedCacheRead___block_invoke_4;
  v6[3] = &unk_277DFC290;
  v3 = a1[6];
  v6[4] = a1[5];
  [v3 enumerateObjectsUsingBlock:v6];
  v4 = (*(a1[7] + 16))();

  return v4;
}

- (BOOL)_transaction:(id)a3 isWritingCharacteristic:(id)a4 allowingActions:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = [v7 writeCharacteristicRequests];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __90__HFCharacteristicValueCacheManager__transaction_isWritingCharacteristic_allowingActions___block_invoke;
  v16[3] = &unk_277DF62E0;
  v10 = v8;
  v17 = v10;
  v11 = [v9 na_any:v16];

  if ((v11 & 1) == 0 && v5)
  {
    v12 = [v7 actionsToExecute];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __90__HFCharacteristicValueCacheManager__transaction_isWritingCharacteristic_allowingActions___block_invoke_2;
    v14[3] = &unk_277DF6308;
    v15 = v10;
    v11 = [v12 na_any:v14];
  }

  return v11;
}

BOOL __90__HFCharacteristicValueCacheManager__transaction_isWritingCharacteristic_allowingActions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 characteristic];
  v4 = v3 == *(a1 + 32);

  return v4;
}

BOOL __90__HFCharacteristicValueCacheManager__transaction_isWritingCharacteristic_allowingActions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 characteristic];
  v8 = v7 == *(a1 + 32);

  return v8;
}

- (void)_enumerateTransactionsRemovingFailingItems:(id)a3 block:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CCAB58];
  v7 = a3;
  v8 = [v6 indexSet];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __86__HFCharacteristicValueCacheManager__enumerateTransactionsRemovingFailingItems_block___block_invoke;
  v14 = &unk_277DFC2E0;
  v15 = v8;
  v16 = v5;
  v9 = v8;
  v10 = v5;
  [v7 enumerateObjectsUsingBlock:&v11];
  [v7 removeObjectsAtIndexes:{v9, v11, v12, v13, v14}];
}

uint64_t __86__HFCharacteristicValueCacheManager__enumerateTransactionsRemovingFailingItems_block___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    v6 = *(a1 + 32);

    return [v6 addIndex:a3];
  }

  return result;
}

@end