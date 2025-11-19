@interface HMDCompositeSettingsLegacyDatabaseAdapter
- (HMDCompositeSettingsDatabaseAdapterDelegate)delegate;
- (HMDCompositeSettingsLegacyDatabaseAdapter)initWithZoneManager:(id)a3 modelClass:(Class)a4;
- (HMDCompositeSettingsZoneManager)zoneManager;
- (id)emptyModelWithID:(id)a3 parentModelID:(id)a4 modelClass:(Class)a5;
- (id)fetchModelWithID:(id)a3;
- (id)rawDatabase;
- (void)addModel:(id)a3 withOptionsLabel:(id)a4 completion:(id)a5;
- (void)localZone:(id)a3 didProcessModelCreation:(id)a4;
- (void)localZone:(id)a3 didProcessModelDeletion:(id)a4;
- (void)localZone:(id)a3 didProcessModelUpdate:(id)a4;
- (void)startObservingModelWithID:(id)a3;
- (void)startWithDelegate:(id)a3;
- (void)stopObservingModelWithID:(id)a3;
@end

@implementation HMDCompositeSettingsLegacyDatabaseAdapter

- (HMDCompositeSettingsZoneManager)zoneManager
{
  WeakRetained = objc_loadWeakRetained(&self->_zoneManager);

  return WeakRetained;
}

- (HMDCompositeSettingsDatabaseAdapterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)rawDatabase
{
  WeakRetained = objc_loadWeakRetained(&self->_rawDatabase);

  return WeakRetained;
}

- (void)localZone:(id)a3 didProcessModelDeletion:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 model];
  if ([v8 conformsToProtocol:&unk_283F34AA0])
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = [(HMDCompositeSettingsLegacyDatabaseAdapter *)self queue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __79__HMDCompositeSettingsLegacyDatabaseAdapter_localZone_didProcessModelDeletion___block_invoke;
    v18[3] = &unk_27868A750;
    v18[4] = self;
    v19 = v10;
    dispatch_async(v11, v18);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [v7 model];
      *buf = 138543618;
      v21 = v15;
      v22 = 2112;
      v23 = v16;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Invalid model deletion object, ignoring %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __79__HMDCompositeSettingsLegacyDatabaseAdapter_localZone_didProcessModelDeletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 database:*(a1 + 32) didProcessDeletionForModel:*(a1 + 40)];
}

- (void)localZone:(id)a3 didProcessModelUpdate:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 model];
  if ([v8 conformsToProtocol:&unk_283F34AA0])
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = [(HMDCompositeSettingsLegacyDatabaseAdapter *)self queue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __77__HMDCompositeSettingsLegacyDatabaseAdapter_localZone_didProcessModelUpdate___block_invoke;
    v18[3] = &unk_27868A750;
    v18[4] = self;
    v19 = v10;
    dispatch_async(v11, v18);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [v7 model];
      *buf = 138543618;
      v21 = v15;
      v22 = 2112;
      v23 = v16;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Invalid model update object, ignoring %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __77__HMDCompositeSettingsLegacyDatabaseAdapter_localZone_didProcessModelUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 database:*(a1 + 32) didProcessUpdateForModel:*(a1 + 40)];
}

- (void)localZone:(id)a3 didProcessModelCreation:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 model];
  if ([v8 conformsToProtocol:&unk_283F34AA0])
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = [(HMDCompositeSettingsLegacyDatabaseAdapter *)self queue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __79__HMDCompositeSettingsLegacyDatabaseAdapter_localZone_didProcessModelCreation___block_invoke;
    v18[3] = &unk_27868A750;
    v18[4] = self;
    v19 = v10;
    dispatch_async(v11, v18);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [v7 model];
      *buf = 138543618;
      v21 = v15;
      v22 = 2112;
      v23 = v16;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Invalid model creation object, ignoring %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __79__HMDCompositeSettingsLegacyDatabaseAdapter_localZone_didProcessModelCreation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 database:*(a1 + 32) didProcessCreationForModel:*(a1 + 40)];
}

- (id)emptyModelWithID:(id)a3 parentModelID:(id)a4 modelClass:(Class)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [[a5 alloc] initWithModelID:v7 parentModelID:v8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (!v11)
  {
    _HMFPreconditionFailure();
LABEL_13:
    v18 = _HMFPreconditionFailure();
    [(HMDCompositeSettingsLegacyDatabaseAdapter *)v18 addModel:v19 withOptionsLabel:v20 completion:v21, v22];
    return result;
  }

  v12 = v11;
  v13 = [v12 conformsToProtocol:&unk_283F34AA0];
  v14 = v13;
  if (v13)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

  return v12;
}

- (void)addModel:(id)a3 withOptionsLabel:(id)a4 completion:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDCompositeSettingsLegacyDatabaseAdapter *)self zoneManager];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__HMDCompositeSettingsLegacyDatabaseAdapter_addModel_withOptionsLabel_completion___block_invoke;
    block[3] = &unk_278688978;
    v20 = v9;
    v21 = v12;
    v22 = v8;
    v23 = self;
    v24 = v10;
    dispatch_async(v13, block);
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Nil zone manager while adding model", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __82__HMDCompositeSettingsLegacyDatabaseAdapter_addModel_withOptionsLabel_completion___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D17108] optionsWithLabel:*(a1 + 32)];
  v3 = [*(a1 + 40) localZone];
  v4 = MEMORY[0x277CBEB98];
  v13[0] = *(a1 + 48);
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v6 = [v4 setWithArray:v5];
  v7 = [v3 addModels:v6 options:v2];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__HMDCompositeSettingsLegacyDatabaseAdapter_addModel_withOptionsLabel_completion___block_invoke_2;
  v11[3] = &unk_278684E30;
  v8 = *(a1 + 64);
  v11[4] = *(a1 + 56);
  v12 = v8;
  v9 = [v7 addCompletionBlock:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __82__HMDCompositeSettingsLegacyDatabaseAdapter_addModel_withOptionsLabel_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82__HMDCompositeSettingsLegacyDatabaseAdapter_addModel_withOptionsLabel_completion___block_invoke_3;
  v8[3] = &unk_27868A7A0;
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  dispatch_async(v5, v8);
}

uint64_t __82__HMDCompositeSettingsLegacyDatabaseAdapter_addModel_withOptionsLabel_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (id)fetchModelWithID:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCompositeSettingsLegacyDatabaseAdapter *)self zoneManager];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 localZone];
    v8 = [v7 fetchModelWithModelID:v4 ofType:-[HMDCompositeSettingsLegacyDatabaseAdapter modelClass](self error:{"modelClass"), 0}];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Nil zone manager while fetching model", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)stopObservingModelWithID:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCompositeSettingsLegacyDatabaseAdapter *)self zoneManager];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__HMDCompositeSettingsLegacyDatabaseAdapter_stopObservingModelWithID___block_invoke;
    block[3] = &unk_27868A010;
    v14 = v6;
    v15 = self;
    v16 = v4;
    dispatch_async(v7, block);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Nil zone manager while stopping observation", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __70__HMDCompositeSettingsLegacyDatabaseAdapter_stopObservingModelWithID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) localZone];
  [v2 removeObserver:*(a1 + 40) forModelWithID:*(a1 + 48)];
}

- (void)startObservingModelWithID:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCompositeSettingsLegacyDatabaseAdapter *)self zoneManager];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 workQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __71__HMDCompositeSettingsLegacyDatabaseAdapter_startObservingModelWithID___block_invoke;
    v13[3] = &unk_27868A750;
    v13[4] = self;
    v14 = v4;
    dispatch_async(v7, v13);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Nil zone manager while starting observation", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __71__HMDCompositeSettingsLegacyDatabaseAdapter_startObservingModelWithID___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) zoneManager];
  v2 = [v3 localZone];
  [v2 addObserver:*(a1 + 32) forModelWithID:*(a1 + 40)];
}

- (void)startWithDelegate:(id)a3
{
  v4 = a3;
  v5 = [(HMDCompositeSettingsLegacyDatabaseAdapter *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HMDCompositeSettingsLegacyDatabaseAdapter_startWithDelegate___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __63__HMDCompositeSettingsLegacyDatabaseAdapter_startWithDelegate___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Starting legacy database adapter with delegate %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  objc_storeWeak((*(a1 + 32) + 24), *(a1 + 40));
  v7 = [*(a1 + 32) zoneManager];
  objc_initWeak(buf, v7);
  v8 = [v7 configurationFuture];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__HMDCompositeSettingsLegacyDatabaseAdapter_startWithDelegate___block_invoke_8;
  v13[3] = &unk_278684E08;
  objc_copyWeak(&v14, buf);
  v13[4] = *(a1 + 32);
  v9 = [v8 addSuccessBlock:v13];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__HMDCompositeSettingsLegacyDatabaseAdapter_startWithDelegate___block_invoke_3;
  v12[3] = &unk_27868A250;
  v12[4] = *(a1 + 32);
  v10 = [v9 addFailureBlock:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);

  v11 = *MEMORY[0x277D85DE8];
}

void __63__HMDCompositeSettingsLegacyDatabaseAdapter_startWithDelegate___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HMDCompositeSettingsLegacyDatabaseAdapter_startWithDelegate___block_invoke_2;
  block[3] = &unk_27868A728;
  block[4] = *(a1 + 32);
  dispatch_async(v3, block);
}

void __63__HMDCompositeSettingsLegacyDatabaseAdapter_startWithDelegate___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  [v5 database:*(a1 + 32) didConfigureWithError:v4];
}

void __63__HMDCompositeSettingsLegacyDatabaseAdapter_startWithDelegate___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 database:*(a1 + 32) didConfigureWithError:0];
}

- (HMDCompositeSettingsLegacyDatabaseAdapter)initWithZoneManager:(id)a3 modelClass:(Class)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = HMDCompositeSettingsLegacyDatabaseAdapter;
  v7 = [(HMDCompositeSettingsLegacyDatabaseAdapter *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_zoneManager, v6);
    objc_storeStrong(&v8->_modelClass, a4);
    v9 = [v6 workQueue];
    queue = v8->_queue;
    v8->_queue = v9;

    objc_storeWeak(&v8->_rawDatabase, v6);
  }

  return v8;
}

@end