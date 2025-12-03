@interface NPKPassLibrarySyncState
- (NPKPassLibrarySyncState)initWithPasses:(id)passes device:(id)device;
- (NPKPassLibrarySyncState)initWithStateVersionSyncStates:(id)states;
- (id)mergeWithPassLibrarySyncState:(id)state;
- (id)passSyncStateWithVersion:(unint64_t)version;
- (id)updateReconcileState:(id)state expectedVersion:(unint64_t)version;
@end

@implementation NPKPassLibrarySyncState

- (NPKPassLibrarySyncState)initWithStateVersionSyncStates:(id)states
{
  statesCopy = states;
  v9.receiver = self;
  v9.super_class = NPKPassLibrarySyncState;
  v5 = [(NPKPassLibrarySyncState *)&v9 init];
  if (v5)
  {
    v6 = [statesCopy copy];
    syncStates = v5->_syncStates;
    v5->_syncStates = v6;
  }

  return v5;
}

- (NPKPassLibrarySyncState)initWithPasses:(id)passes device:(id)device
{
  v6 = MEMORY[0x277CBEB38];
  deviceCopy = device;
  passesCopy = passes;
  v9 = objc_alloc_init(v6);
  v10 = NPKIsTinkerDevice(deviceCopy);
  v11 = NPKPairedOrPairingDeviceSupportsHealthPass(deviceCopy);

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __49__NPKPassLibrarySyncState_initWithPasses_device___block_invoke;
  v20[3] = &unk_2799468C8;
  v21 = &unk_286CE7540;
  v22 = v9;
  selfCopy = self;
  v23 = selfCopy;
  v24 = v10;
  v25 = v11;
  v13 = v9;
  [passesCopy enumerateObjectsUsingBlock:v20];

  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __49__NPKPassLibrarySyncState_initWithPasses_device___block_invoke_3;
  v18[3] = &unk_2799468F0;
  v19 = v14;
  v15 = v14;
  [v13 enumerateKeysAndObjectsUsingBlock:v18];
  v16 = [(NPKPassLibrarySyncState *)selfCopy initWithStateVersionSyncStates:v15];

  return v16;
}

void __49__NPKPassLibrarySyncState_initWithPasses_device___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NPKPassSyncStateItem alloc] initWithPass:v3];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__NPKPassLibrarySyncState_initWithPasses_device___block_invoke_2;
  v8[3] = &unk_2799468A0;
  v5 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = v3;
  v13 = *(a1 + 56);
  v12 = v4;
  v6 = v4;
  v7 = v3;
  [v5 enumerateObjectsUsingBlock:v8];
}

void __49__NPKPassLibrarySyncState_initWithPasses_device___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (!v3)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [*(a1 + 32) setObject:v3 forKeyedSubscript:v5];
  }

  v4 = *(a1 + 40);
  if ([objc_opt_class() _shouldAddPass:*(a1 + 48) withDeviceIsTinker:*(a1 + 64) supportHealthPass:*(a1 + 65) stateVersion:{objc_msgSend(v5, "unsignedIntegerValue")}])
  {
    [v3 addObject:*(a1 + 56)];
  }
}

void __49__NPKPassLibrarySyncState_initWithPasses_device___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = -[NPKPassSyncState initWithSyncStateItems:version:]([NPKPassSyncState alloc], "initWithSyncStateItems:version:", v5, [v6 unsignedIntegerValue]);

  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

- (id)passSyncStateWithVersion:(unint64_t)version
{
  syncStates = self->_syncStates;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v6 = [(NSDictionary *)syncStates objectForKeyedSubscript:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [NPKPassSyncState alloc];
    v10 = [MEMORY[0x277CBEB98] set];
    v8 = [(NPKPassSyncState *)v9 initWithSyncStateItems:v10 version:version];
  }

  return v8;
}

- (id)mergeWithPassLibrarySyncState:(id)state
{
  stateCopy = state;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__NPKPassLibrarySyncState_mergeWithPassLibrarySyncState___block_invoke;
  v10[3] = &unk_279946918;
  v10[4] = self;
  v11 = stateCopy;
  v12 = v5;
  v6 = v5;
  v7 = stateCopy;
  [&unk_286CE7540 enumerateObjectsUsingBlock:v10];
  v8 = [[NPKPassLibrarySyncState alloc] initWithStateVersionSyncStates:v6];

  return v8;
}

void __57__NPKPassLibrarySyncState_mergeWithPassLibrarySyncState___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 unsignedIntegerValue];
  v5 = MEMORY[0x277CBEB58];
  v6 = [a1[4] passSyncStateWithVersion:v4];
  v7 = [v6 syncStateItems];
  v8 = [v7 allValues];
  v13 = [v5 setWithArray:v8];

  v9 = [a1[5] passSyncStateWithVersion:v4];
  v10 = [v9 syncStateItems];
  v11 = [v10 allValues];
  [v13 addObjectsFromArray:v11];

  v12 = [[NPKPassSyncState alloc] initWithSyncStateItems:v13 version:v4];
  [a1[6] setObject:v12 forKeyedSubscript:v3];
}

- (id)updateReconcileState:(id)state expectedVersion:(unint64_t)version
{
  stateCopy = state;
  v7 = -[NPKPassLibrarySyncState passSyncStateWithVersion:](self, "passSyncStateWithVersion:", [stateCopy version]);
  syncStateItems = [v7 syncStateItems];

  v9 = [(NPKPassLibrarySyncState *)self passSyncStateWithVersion:version];
  syncStateItems2 = [v9 syncStateItems];

  syncStateItems3 = [stateCopy syncStateItems];
  v12 = [syncStateItems3 mutableCopy];

  syncStateItems4 = [stateCopy syncStateItems];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __81__NPKPassLibrarySyncState_ReconciledState__updateReconcileState_expectedVersion___block_invoke;
  v23[3] = &unk_279948DF8;
  v24 = syncStateItems;
  v25 = syncStateItems2;
  v26 = v12;
  v14 = v12;
  v15 = syncStateItems2;
  v16 = syncStateItems;
  [syncStateItems4 enumerateKeysAndObjectsUsingBlock:v23];

  v17 = [NPKPassSyncState alloc];
  v18 = MEMORY[0x277CBEB98];
  allValues = [v14 allValues];
  v20 = [v18 setWithArray:allValues];
  v21 = [(NPKPassSyncState *)v17 initWithSyncStateItems:v20 version:version];

  return v21;
}

void __81__NPKPassLibrarySyncState_ReconciledState__updateReconcileState_expectedVersion___block_invoke(id *a1, void *a2)
{
  v6 = a2;
  v3 = [a1[4] objectForKeyedSubscript:?];
  if (v3)
  {
    v4 = v3;
    v5 = [a1[5] objectForKeyedSubscript:v6];

    if (!v5)
    {
      [a1[6] removeObjectForKey:v6];
    }
  }
}

@end