@interface HMDHAP2Storage
- (HAP2StorageDelegate)delegate;
- (HMDHAP2Storage)initWithAccessoryBrowser:(id)browser;
- (id)keyBagForIdentifier:(id)identifier;
- (void)_removeKeysForIdentifiers:(id)identifiers completion:(id)completion;
- (void)deregisterPairedAccessoryWithIdentifier:(id)identifier;
- (void)fetchCacheForIdentifier:(id)identifier completion:(id)completion;
- (void)fetchControllerKeyForDeviceId:(id)id completion:(id)completion;
- (void)fetchKeysForIdentifiers:(id)identifiers completion:(id)completion;
- (void)hasKeysForIdentifiers:(id)identifiers completion:(id)completion;
- (void)registerPairedAccessoryWithIdentifier:(id)identifier;
- (void)removeCacheForIdentifier:(id)identifier completion:(id)completion;
- (void)removeControllerKeyWithCompletion:(id)completion;
- (void)removeKeysForIdentifiers:(id)identifiers completion:(id)completion;
- (void)resetPairedAccessoryIdentifiers;
- (void)saveCacheForIdentifier:(id)identifier data:(id)data completion:(id)completion;
- (void)saveControllerIdentity:(id)identity completion:(id)completion;
- (void)saveKeysForIdentifiers:(id)identifiers completion:(id)completion;
- (void)setDelegate:(id)delegate;
@end

@implementation HMDHAP2Storage

- (HAP2StorageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)saveKeysForIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HMDHAP2Storage_saveKeysForIdentifiers_completion___block_invoke;
  block[3] = &unk_278689F98;
  v12 = identifiersCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = identifiersCopy;
  dispatch_async(workQueue, block);
}

void __52__HMDHAP2Storage_saveKeysForIdentifiers_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__HMDHAP2Storage_saveKeysForIdentifiers_completion___block_invoke_2;
  v15[3] = &unk_27866DDD8;
  v3 = *(a1 + 32);
  v15[4] = *(a1 + 40);
  v4 = v2;
  v16 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v15];
  v5 = *(a1 + 48);
  if ([v4 count])
  {
    v6 = [v4 copy];
    (*(v5 + 16))(v5, v6);
  }

  else
  {
    (*(v5 + 16))(v5, 0);
  }

  v7 = [*(a1 + 40) delegate];
  if (v7)
  {
    v8 = *(a1 + 32);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __52__HMDHAP2Storage_saveKeysForIdentifiers_completion___block_invoke_3;
    v11[3] = &unk_27866DE00;
    v12 = v4;
    v9 = v7;
    v10 = *(a1 + 40);
    v13 = v9;
    v14 = v10;
    [v8 enumerateKeysAndObjectsUsingBlock:v11];
  }
}

void __52__HMDHAP2Storage_saveKeysForIdentifiers_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = v6[3];
  }

  v7 = v6;
  v8 = a3;
  v9 = [v5 deviceIDString];
  v14 = 0;
  v10 = [v7 savePublicKey:v8 forAccessoryName:v9 error:&v14];

  v11 = v14;
  if (v10)
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      v13 = *(v12 + 32);
    }

    else
    {
      v13 = 0;
    }

    [v13 addObject:v5];
  }

  else
  {
    [*(a1 + 40) setObject:v11 forKeyedSubscript:v5];
  }
}

void __52__HMDHAP2Storage_saveKeysForIdentifiers_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];

  if (!v3)
  {
    [*(a1 + 40) storage:*(a1 + 48) didSaveKeyWithIdentifier:v4];
  }
}

- (id)keyBagForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__342;
  v17 = __Block_byref_object_dispose__343;
  v18 = 0;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HMDHAP2Storage_keyBagForIdentifier___block_invoke;
  block[3] = &unk_27868A4D8;
  selfCopy = self;
  v12 = &v13;
  v10 = identifierCopy;
  v6 = identifierCopy;
  dispatch_sync(workQueue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __38__HMDHAP2Storage_keyBagForIdentifier___block_invoke(void *a1)
{
  v2 = objc_alloc(MEMORY[0x277CFEB80]);
  v4 = a1[4];
  v3 = a1[5];
  if (v3)
  {
    v3 = v3[3];
  }

  v8 = v3;
  v5 = [v2 initWithAccessoryIdentifier:v4 keyStore:v8];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)removeCacheForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HMDHAP2Storage_removeCacheForIdentifier_completion___block_invoke;
  block[3] = &unk_278689F98;
  block[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(workQueue, block);
}

void __54__HMDHAP2Storage_removeCacheForIdentifier_completion___block_invoke(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  if (v2 && (WeakRetained = objc_loadWeakRetained((v2 + 40))) != 0)
  {
    v4 = WeakRetained;
    [WeakRetained removeAccessoryCacheForIdentifier:a1[5]];
    v5 = *(a1[6] + 16);
  }

  else
  {
    hap2LogInitialize();
    v6 = *MEMORY[0x277CFECF0];
    if (os_log_type_enabled(*MEMORY[0x277CFECF0], OS_LOG_TYPE_ERROR))
    {
      v9 = a1[5];
      v10 = 138412290;
      v11 = v9;
      _os_log_error_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "Storage: Unable to remove cache for %@", &v10, 0xCu);
    }

    v7 = a1[6];
    v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v5 = *(v7 + 16);
  }

  v5();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)saveCacheForIdentifier:(id)identifier data:(id)data completion:(id)completion
{
  identifierCopy = identifier;
  dataCopy = data;
  completionCopy = completion;
  v11 = completionCopy;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __57__HMDHAP2Storage_saveCacheForIdentifier_data_completion___block_invoke;
  v16[3] = &unk_278689AB8;
  v16[4] = self;
  v17 = identifierCopy;
  v18 = dataCopy;
  v19 = completionCopy;
  v13 = dataCopy;
  v14 = v11;
  v15 = identifierCopy;
  dispatch_async(workQueue, v16);
}

void __57__HMDHAP2Storage_saveCacheForIdentifier_data_completion___block_invoke(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  if (v2 && (WeakRetained = objc_loadWeakRetained((v2 + 40))) != 0)
  {
    v4 = WeakRetained;
    [WeakRetained saveAccessoryCache:a1[6] forIdentifier:a1[5]];
    v5 = *(a1[7] + 16);
  }

  else
  {
    hap2LogInitialize();
    v6 = *MEMORY[0x277CFECF0];
    if (os_log_type_enabled(*MEMORY[0x277CFECF0], OS_LOG_TYPE_ERROR))
    {
      v9 = a1[5];
      v10 = 138412290;
      v11 = v9;
      _os_log_error_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "Storage: Unable to save cache for %@", &v10, 0xCu);
    }

    v7 = a1[7];
    v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v5 = *(v7 + 16);
  }

  v5();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)fetchCacheForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__HMDHAP2Storage_fetchCacheForIdentifier_completion___block_invoke;
  block[3] = &unk_278689F98;
  block[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(workQueue, block);
}

void __53__HMDHAP2Storage_fetchCacheForIdentifier_completion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2 && (WeakRetained = objc_loadWeakRetained((v2 + 40))) != 0)
  {
    v4 = WeakRetained;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __53__HMDHAP2Storage_fetchCacheForIdentifier_completion___block_invoke_16;
    v10[3] = &unk_27866DDB0;
    v5 = *(a1 + 40);
    v11 = *(a1 + 48);
    [v4 fetchAccessoryCacheForIdentifier:v5 completion:v10];
  }

  else
  {
    hap2LogInitialize();
    v6 = *MEMORY[0x277CFECF0];
    if (os_log_type_enabled(*MEMORY[0x277CFECF0], OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      *buf = 138412290;
      v13 = v9;
      _os_log_error_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "Storage: Unable to retrieve cache for %@", buf, 0xCu);
    }

    v7 = *(a1 + 48);
    v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (*(v7 + 16))(v7, 0, v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __53__HMDHAP2Storage_fetchCacheForIdentifier_completion___block_invoke_16(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)saveControllerIdentity:(id)identity completion:(id)completion
{
  identityCopy = identity;
  completionCopy = completion;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"%@ is unavailable", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)_removeKeysForIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  completionCopy = completion;
  dispatch_assert_queue_V2(workQueue);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__HMDHAP2Storage__removeKeysForIdentifiers_completion___block_invoke;
  v13[3] = &unk_27866DD38;
  v13[4] = self;
  v10 = dictionary;
  v14 = v10;
  [identifiersCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v13];
  if (![v10 count])
  {

    v10 = 0;
  }

  v11 = [v10 copy];
  completionCopy[2](completionCopy, v11);

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__HMDHAP2Storage__removeKeysForIdentifiers_completion___block_invoke_2;
  v12[3] = &unk_27866DD88;
  v12[4] = self;
  [identifiersCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v12];
}

void __55__HMDHAP2Storage__removeKeysForIdentifiers_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[3];
  }

  v5 = v4;
  v6 = [v3 deviceIDString];
  v11 = 0;
  v7 = [v5 removeAccessoryKeyForName:v6 error:&v11];
  v8 = v11;

  if (v7)
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = *(v9 + 32);
    }

    else
    {
      v10 = 0;
    }

    [v10 removeObject:v3];
  }

  else
  {
    [*(a1 + 40) setObject:v8 forKeyedSubscript:v3];
  }
}

void __55__HMDHAP2Storage__removeKeysForIdentifiers_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  [v5 storage:*(a1 + 32) didRemoveKeyWithIdentifier:v4];
}

- (void)removeKeysForIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HMDHAP2Storage_removeKeysForIdentifiers_completion___block_invoke;
  block[3] = &unk_278689F98;
  block[4] = self;
  v12 = identifiersCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifiersCopy;
  dispatch_async(workQueue, block);
}

- (void)removeControllerKeyWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)fetchKeysForIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__HMDHAP2Storage_fetchKeysForIdentifiers_completion___block_invoke;
  block[3] = &unk_278689F98;
  v12 = identifiersCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = identifiersCopy;
  dispatch_async(workQueue, block);
}

void __53__HMDHAP2Storage_fetchKeysForIdentifiers_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__HMDHAP2Storage_fetchKeysForIdentifiers_completion___block_invoke_2;
  v10[3] = &unk_27866DD60;
  v4 = *(a1 + 32);
  v10[4] = *(a1 + 40);
  v5 = v3;
  v11 = v5;
  v12 = v2;
  v6 = v2;
  [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v10];
  if (![v5 count])
  {

    v5 = 0;
  }

  v7 = *(a1 + 48);
  v8 = [v6 copy];
  v9 = [v5 copy];
  (*(v7 + 16))(v7, v8, v9);
}

void __53__HMDHAP2Storage_fetchKeysForIdentifiers_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0;
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[3];
  }

  v5 = v4;
  v6 = [v3 deviceIDString];
  v12 = 0;
  v7 = [v5 readPublicKeyForAccessoryName:v6 registeredWithHomeKit:&v13 error:&v12];
  v8 = v12;

  if (v7)
  {
    if ((v13 & 1) == 0)
    {
      v11 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
      [*(a1 + 40) setObject:v11 forKeyedSubscript:v3];

      goto LABEL_9;
    }

    v9 = *(a1 + 48);
    v10 = v7;
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = v8;
  }

  [v9 setObject:v10 forKeyedSubscript:v3];
LABEL_9:
}

- (void)fetchControllerKeyForDeviceId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HMDHAP2Storage_fetchControllerKeyForDeviceId_completion___block_invoke;
  block[3] = &unk_278689F98;
  block[4] = self;
  v12 = idCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = idCopy;
  dispatch_async(workQueue, block);
}

void __59__HMDHAP2Storage_fetchControllerKeyForDeviceId_completion___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[3];
  }

  v3 = a1[5];
  v4 = v2;
  v5 = [v3 deviceIDString];
  v8 = 0;
  v6 = [v4 readControllerPairingKeyForAccessory:v5 error:&v8];
  v7 = v8;

  (*(a1[6] + 16))();
}

- (void)hasKeysForIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HMDHAP2Storage_hasKeysForIdentifiers_completion___block_invoke;
  block[3] = &unk_278689F98;
  v12 = identifiersCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = identifiersCopy;
  dispatch_async(workQueue, block);
}

void __51__HMDHAP2Storage_hasKeysForIdentifiers_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __51__HMDHAP2Storage_hasKeysForIdentifiers_completion___block_invoke_2;
  v11 = &unk_27866DD38;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v12 = v2;
  v13 = v3;
  v5 = v2;
  [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:&v8];
  v6 = *(a1 + 48);
  v7 = [v5 copy];
  (*(v6 + 16))(v6, v7, 0);
}

void __51__HMDHAP2Storage_hasKeysForIdentifiers_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = *(a1 + 40);
  if (v5)
  {
    v5 = v5[4];
  }

  v6 = v5;
  v7 = a2;
  v8 = [v4 numberWithBool:{objc_msgSend(v6, "containsObject:", v7)}];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__HMDHAP2Storage_setDelegate___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(workQueue, v7);
}

- (void)deregisterPairedAccessoryWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HMDHAP2Storage_deregisterPairedAccessoryWithIdentifier___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = identifierCopy;
  selfCopy = self;
  v6 = identifierCopy;
  dispatch_async(workQueue, v7);
}

void __58__HMDHAP2Storage_deregisterPairedAccessoryWithIdentifier___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CFEB48]) initWithDeviceIDString:*(a1 + 32)];
  if (v2)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = *(v3 + 32);
    }

    else
    {
      v4 = 0;
    }

    [v4 removeObject:v2];
    v5 = *(a1 + 40);
    v6 = [MEMORY[0x277CBEB98] setWithObject:v2];
    [v5 _removeKeysForIdentifiers:v6 completion:&__block_literal_global_358];
  }

  else
  {
    hap2LogInitialize();
    v7 = *MEMORY[0x277CFECF8];
    if (os_log_type_enabled(*MEMORY[0x277CFECF8], OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 32);
      v10 = 138412290;
      v11 = v9;
      _os_log_debug_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "Ignoring invalid deregistered device ID: %@", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __58__HMDHAP2Storage_deregisterPairedAccessoryWithIdentifier___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  hap2LogInitialize();
  v6 = *MEMORY[0x277CFECF8];
  if (os_log_type_enabled(*MEMORY[0x277CFECF8], OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_debug_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "remove key id=%@ error=%@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)registerPairedAccessoryWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HMDHAP2Storage_registerPairedAccessoryWithIdentifier___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = identifierCopy;
  selfCopy = self;
  v6 = identifierCopy;
  dispatch_async(workQueue, v7);
}

void __56__HMDHAP2Storage_registerPairedAccessoryWithIdentifier___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CFEB48]) initWithDeviceIDString:*(a1 + 32)];
  if (v2)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = *(v3 + 32);
    }

    else
    {
      v4 = 0;
    }

    [v4 addObject:v2];
    v5 = [*(a1 + 40) delegate];
    [v5 storage:*(a1 + 40) didSaveKeyWithIdentifier:v2];
  }

  else
  {
    hap2LogInitialize();
    v6 = *MEMORY[0x277CFECF8];
    if (os_log_type_enabled(*MEMORY[0x277CFECF8], OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 32);
      v9 = 138412290;
      v10 = v8;
      _os_log_debug_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "Ignoring invalid registered device ID: %@", &v9, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)resetPairedAccessoryIdentifiers
{
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HMDHAP2Storage_resetPairedAccessoryIdentifiers__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __49__HMDHAP2Storage_resetPairedAccessoryIdentifiers__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
  }

  return [v2 removeAllObjects];
}

- (HMDHAP2Storage)initWithAccessoryBrowser:(id)browser
{
  browserCopy = browser;
  v16.receiver = self;
  v16.super_class = HMDHAP2Storage;
  v5 = [(HMDHAP2Storage *)&v16 init];
  if (v5)
  {
    v6 = HMFDispatchQueueName();
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create(v6, v7);
    workQueue = v5->_workQueue;
    v5->_workQueue = v8;

    systemStore = [MEMORY[0x277CFEC78] systemStore];
    storage = v5->_storage;
    v5->_storage = systemStore;

    v12 = [MEMORY[0x277CBEB58] set];
    registeredIdentifiers = v5->_registeredIdentifiers;
    v5->_registeredIdentifiers = v12;

    objc_storeWeak(&v5->_accessoryBrowser, browserCopy);
    v14 = v5;
  }

  return v5;
}

@end