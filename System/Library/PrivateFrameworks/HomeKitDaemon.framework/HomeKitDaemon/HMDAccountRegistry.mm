@interface HMDAccountRegistry
+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3;
+ (HMDAccountRegistry)sharedRegistry;
+ (id)logCategory;
- (BOOL)accountExistsForHandle:(id)a3;
- (BOOL)deviceExistsForDevice:(id)a3;
- (BOOL)started;
- (HMDAccountRegistry)initWithAppleAccountManager:(id)a3 remoteAccountManager:(id)a4 context:(id)a5;
- (HMDAppleAccountManager)appleAccountManager;
- (HMDRemoteAccountManager)remoteAccountManager;
- (NSArray)accounts;
- (id)accountForHandle:(id)a3 exists:(BOOL *)a4;
- (id)attributeDescriptions;
- (id)deviceForAddress:(id)a3;
- (id)deviceForDevice:(id)a3 exists:(BOOL *)a4;
- (id)deviceForHandle:(id)a3 exists:(BOOL *)a4;
- (id)deviceForIDSIdentifier:(id)a3;
- (id)deviceForIdentifier:(id)a3;
- (id)deviceForPushToken:(id)a3;
- (id)existingAccountWithMergeIdentifier:(id)a3;
- (id)fetchAccountsWithLocalFlag:(BOOL)a3;
- (id)findBackingModelFromDevice:(id)a3;
- (id)updateDevices:(id)a3 onAccount:(id)a4;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)__handleAddedRemoteAccount:(id)a3;
- (void)__handleAppleAccountDeviceAdded:(id)a3;
- (void)__handleAppleAccountHandlesUpdated:(id)a3;
- (void)__handleAppleAccountUpdate:(id)a3;
- (void)__handleRemovedRemoteAccount:(id)a3;
- (void)_resolveAccountForHandle:(id)a3 completionHandler:(id)a4;
- (void)accountInformationChanged:(id)a3;
- (void)addAccount:(id)a3 isLocal:(BOOL)a4;
- (void)addDevice:(id)a3 toAccount:(id)a4;
- (void)addHandle:(id)a3 toAccount:(id)a4;
- (void)removeAccount:(id)a3;
- (void)removeDevice:(id)a3 fromAccount:(id)a4;
- (void)removeHandle:(id)a3 fromAccount:(id)a4;
- (void)reset;
- (void)start;
- (void)stop;
- (void)updateAccount:(id)a3;
- (void)updateDevice:(id)a3 toVersion:(id)a4;
- (void)updateDevice:(id)a3 withDevice:(id)a4;
@end

@implementation HMDAccountRegistry

+ (HMDAccountRegistry)sharedRegistry
{
  v2 = +[HMDRegistry shared];
  v3 = [v2 accountRegistry];

  return v3;
}

- (NSArray)accounts
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(HMDAccountRegistry *)self appleAccountManager];
  v5 = [v4 account];

  if (v5)
  {
    [v3 addObject:v5];
  }

  v6 = [(HMDAccountRegistry *)self remoteAccountManager];
  v7 = [v6 accounts];
  [v3 addObjectsFromArray:v7];

  v8 = [v3 copy];

  return v8;
}

- (HMDAppleAccountManager)appleAccountManager
{
  WeakRetained = objc_loadWeakRetained(&self->_appleAccountManager);

  return WeakRetained;
}

- (HMDRemoteAccountManager)remoteAccountManager
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteAccountManager);

  return WeakRetained;
}

- (void)removeHandle:(id)a3 fromAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__HMDAccountRegistry_Roar__removeHandle_fromAccount___block_invoke;
  v10[3] = &unk_278672A70;
  v11 = v6;
  v12 = self;
  v13 = v7;
  v8 = v7;
  v9 = v6;
  [(HMCContextProvider *)self performBlock:v10];
}

void __53__HMDAccountRegistry_Roar__removeHandle_fromAccount___block_invoke(id *a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] modelIdentifier];
  v5 = [HMCContext findAccountHandleWithModelID:v4];

  if (v5)
  {
    v6 = [v5 modelID];
    v7 = [a1[4] modelIdentifier];
    if ([v6 isEqual:v7])
    {
      v8 = [v5 account];
      v9 = [v8 modelID];
      v10 = [a1[6] modelIdentifier];
      v11 = [v9 isEqual:v10];

      if (v11)
      {
        [v3 deleteObject:v5];
LABEL_12:
        [v3 save];
        goto LABEL_13;
      }
    }

    else
    {
    }

    v17 = objc_autoreleasePoolPush();
    v18 = a1[5];
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [v5 modelID];
      v22 = [a1[4] modelIdentifier];
      v23 = [v5 account];
      [v23 modelID];
      v24 = v27 = v17;
      v25 = [a1[6] modelIdentifier];
      *buf = 138544386;
      v29 = v20;
      v30 = 2112;
      v31 = v21;
      v32 = 2112;
      v33 = v22;
      v34 = 2112;
      v35 = v24;
      v36 = 2112;
      v37 = v25;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Refusing to remove a handle which doesn't appear attached to the correct account (%@ != %@ || %@ != %@)", buf, 0x34u);

      v17 = v27;
    }

    objc_autoreleasePoolPop(v17);
    goto LABEL_12;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = a1[5];
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [a1[6] modelIdentifier];
    *buf = 138543618;
    v29 = v15;
    v30 = 2112;
    v31 = v16;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch account handle with modelID %@ to remove.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
LABEL_13:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)addHandle:(id)a3 toAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 modelIdentifier];
  [v6 setModelParentIdentifier:v8];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__HMDAccountRegistry_Roar__addHandle_toAccount___block_invoke;
  v12[3] = &unk_278672A48;
  v13 = v8;
  v14 = self;
  v15 = v6;
  v16 = v7;
  v9 = v7;
  v10 = v6;
  v11 = v8;
  [(HMCContextProvider *)self performBlock:v12];
}

void __48__HMDAccountRegistry_Roar__addHandle_toAccount___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [HMCContext findAccountWithModelID:*(a1 + 32)];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 40);
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 48);
      v11 = *(a1 + 56);
      v17 = 138543874;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Adding account handle %@ to account %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    v12 = [*(a1 + 48) modelIdentifier];
    v13 = [v4 materializeOrCreateHandlesRelationWithModelID:v12 createdNew:0];

    [*(a1 + 48) updateBackingModel:v13 error:0];
    [v3 save];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = *(a1 + 32);
      v17 = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch account with modelID %@ to add handle to.", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)removeDevice:(id)a3 fromAccount:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __53__HMDAccountRegistry_Roar__removeDevice_fromAccount___block_invoke;
    v13[3] = &unk_278672A70;
    v13[4] = self;
    v14 = v6;
    v15 = v7;
    [(HMCContextProvider *)self performBlock:v13];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = 0;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Requested to remove a nil device: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __53__HMDAccountRegistry_Roar__removeDevice_fromAccount___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) findBackingModelFromDevice:*(a1 + 40)];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      v15 = 138543874;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Removing device model for device %@ from account %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    [v3 deleteObject:v4];
    [v3 save];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 40) modelIdentifier];
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch device with modelID %@ to remove device", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)addDevice:(id)a3 toAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 account];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_4;
  }

  if (([v8 isEqual:v7] & 1) == 0)
  {
    _HMFPreconditionFailure();
LABEL_4:
    [v6 setAccount:v7];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__HMDAccountRegistry_Roar__addDevice_toAccount___block_invoke;
  v12[3] = &unk_278672A70;
  v13 = v7;
  v14 = self;
  v15 = v6;
  v10 = v6;
  v11 = v7;
  [(HMCContextProvider *)self performBlock:v12];
}

void __48__HMDAccountRegistry_Roar__addDevice_toAccount___block_invoke(id *a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] modelIdentifier];
  v5 = [HMCContext findAccountWithModelID:v4];

  if (v5)
  {
    v26 = 0;
    v6 = [a1[6] modelIdentifier];
    v7 = [v5 materializeOrCreateDevicesRelationWithModelID:v6 createdNew:&v26];

    if ((v26 & 1) == 0)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = a1[5];
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v12 = a1[6];
        v13 = a1[4];
        *buf = 138543874;
        v28 = v11;
        v29 = 2112;
        v30 = v12;
        v31 = 2112;
        v32 = v13;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Requested to add device %@ to account %@, but it appears to already be there.", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v8);
    }

    v14 = objc_autoreleasePoolPush();
    v15 = a1[5];
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = a1[6];
      v19 = a1[4];
      *buf = 138543874;
      v28 = v17;
      v29 = 2112;
      v30 = v18;
      v31 = 2112;
      v32 = v19;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Adding created device model for device %@ to account %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    [a1[6] updateBackingModel:v7 error:0];
    [v3 save];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = a1[5];
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [a1[4] modelIdentifier];
      *buf = 138543618;
      v28 = v23;
      v29 = 2112;
      v30 = v24;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch account with modelID %@ to add device to.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)updateDevice:(id)a3 withDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 account];
  v9 = [v6 account];
  if (!v8)
  {
    goto LABEL_4;
  }

  if (([v8 isEqual:v9] & 1) == 0)
  {
    _HMFPreconditionFailure();
LABEL_4:
    [v7 setAccount:v9];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__HMDAccountRegistry_Roar__updateDevice_withDevice___block_invoke;
  v12[3] = &unk_278672A70;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  [(HMCContextProvider *)self performBlock:v12];
}

void __52__HMDAccountRegistry_Roar__updateDevice_withDevice___block_invoke(id *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] modelIdentifier];
  v5 = [HMCContext findDeviceWithModelID:v4];

  v6 = objc_autoreleasePoolPush();
  v7 = a1[5];
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = a1[4];
      v12 = a1[6];
      v16 = 138543874;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating device model from device %@ to device %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    [a1[6] updateBackingModel:v5 error:0];
    [v3 save];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [a1[4] modelIdentifier];
      v16 = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch device with modelID %@ to update device", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)findBackingModelFromDevice:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 modelIdentifier];

  if (v5)
  {
    v6 = [v4 modelIdentifier];
    v5 = [HMCContext findDeviceWithModelID:v6];

    if (!v5)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        v13 = 138543618;
        v14 = v10;
        v15 = 2112;
        v16 = v4;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch device %@", &v13, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      v5 = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)updateDevice:(id)a3 toVersion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__HMDAccountRegistry_Roar__updateDevice_toVersion___block_invoke;
  v10[3] = &unk_278672A70;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(HMCContextProvider *)self performBlock:v10];
}

void __51__HMDAccountRegistry_Roar__updateDevice_toVersion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) findBackingModelFromDevice:*(a1 + 40)];
  v5 = v4;
  if (v4)
  {
    [v4 setVersion:*(a1 + 48)];
    [v3 save];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      v13 = 138543874;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch device %@ to update device version: %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)updateDevices:(id)a3 onAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = 0;
  v8 = [MEMORY[0x277D0F7C0] futureWithPromise:&v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __52__HMDAccountRegistry_Roar__updateDevices_onAccount___block_invoke;
  v18[3] = &unk_278672A20;
  v9 = v7;
  v19 = v9;
  [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:v18];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__HMDAccountRegistry_Roar__updateDevices_onAccount___block_invoke_2;
  v13[3] = &unk_278672A48;
  v14 = v9;
  v15 = self;
  v16 = v6;
  v17 = v20;
  v10 = v6;
  v11 = v9;
  [(HMCContextProvider *)self performBlock:v13];

  return v8;
}

void __52__HMDAccountRegistry_Roar__updateDevices_onAccount___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 account];
  v4 = v3;
  v5 = *(a1 + 32);
  if (v3)
  {
    if ([v3 isEqual:v5])
    {
      goto LABEL_5;
    }

    _HMFPreconditionFailure();
  }

  [v6 setAccount:v5];
LABEL_5:
}

void __52__HMDAccountRegistry_Roar__updateDevices_onAccount___block_invoke_2(id *a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] modelIdentifier];
  v23 = 0;
  v5 = [HMCContext findAccountWithModelID:v4 error:&v23];
  v6 = v23;

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    [a1[4] updateBackingModel:v5 error:0];
    v13 = [a1[6] allObjects];
    [v5 synchronizeDevicesRelationWith:v13];

    v14 = [v5 devices];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __52__HMDAccountRegistry_Roar__updateDevices_onAccount___block_invoke_22;
    v22[3] = &unk_278677358;
    v22[4] = a1[5];
    [v14 hmf_enumerateWithAutoreleasePoolUsingBlock:v22];

    v15 = objc_autoreleasePoolPush();
    v16 = a1[5];
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = a1[4];
      v20 = a1[6];
      *buf = 138543874;
      v25 = v18;
      v26 = 2112;
      v27 = v19;
      v28 = 2112;
      v29 = v20;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Updating account %@ with devices: %@.", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    [v3 save];
    [a1[7] fulfillWithNoValue];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = a1[5];
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [a1[4] modelIdentifier];
      *buf = 138543874;
      v25 = v11;
      v26 = 2112;
      v27 = v12;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch account with modelID %@ to update devices on account: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __52__HMDAccountRegistry_Roar__updateDevices_onAccount___block_invoke_22(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 mediaRouteID];

  if (!v3)
  {
    v4 = [*(a1 + 32) context];
    v5 = [v4 backingStore];
    v6 = [v5 homeManager];
    v7 = [v9 identifier];
    v8 = [v6 updateMediaRouteIDOfDeviceWithIdentifier:v7];
  }
}

- (void)updateAccount:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__HMDAccountRegistry_Roar__updateAccount___block_invoke;
  v6[3] = &unk_2786729F8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(HMCContextProvider *)self performBlock:v6];
}

void __42__HMDAccountRegistry_Roar__updateAccount___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 findHomeManagerWithError:0];
  if (!v4)
  {
    _HMFPreconditionFailure();
  }

  v5 = v4;
  v6 = [*(a1 + 32) modelIdentifier];
  v7 = [v5 materializeOrCreateAccountsRelationWithModelID:v6 createdNew:0];

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 40);
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 32);
      v17 = 138543618;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating account %@ in database.", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [*(a1 + 32) updateBackingModel:v7 error:0];
    [v3 save];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [*(a1 + 32) modelIdentifier];
      v17 = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine existance of account %@ in database.", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)removeAccount:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 modelIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __42__HMDAccountRegistry_Roar__removeAccount___block_invoke;
    v12[3] = &unk_2786729F8;
    v13 = v5;
    v14 = self;
    [(HMCContextProvider *)self performBlock:v12];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v10;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Requested to remove a nil account or an account without an identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __42__HMDAccountRegistry_Roar__removeAccount___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) modelIdentifier];
  v5 = [HMCContext findAccountWithModelID:v4];

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 40);
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 32);
      v15 = 138543618;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Removing account %@ from database.", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [v3 deleteObject:v5];
    [v3 save];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 32) modelIdentifier];
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch account with modelID %@ for removal.", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)addAccount:(id)a3 isLocal:(BOOL)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__HMDAccountRegistry_Roar__addAccount_isLocal___block_invoke;
  v8[3] = &unk_2786729D0;
  v9 = v6;
  v10 = self;
  v11 = a4;
  v7 = v6;
  [(HMCContextProvider *)self performBlock:v8];
}

void __47__HMDAccountRegistry_Roar__addAccount_isLocal___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 findHomeManagerWithError:0];
  if (!v4)
  {
    _HMFPreconditionFailure();
  }

  v5 = v4;
  v6 = [*(a1 + 32) modelIdentifier];
  v7 = [v5 materializeOrCreateAccountsRelationWithModelID:v6 createdNew:0];

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 40);
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 32);
      v18 = 138543618;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Adding account %@ to database.", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [*(a1 + 32) updateBackingModel:v7 error:0];
    v14 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
    [v7 setLocal:v14];

    [v3 save];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [*(a1 + 32) modelIdentifier];
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine existence of account %@ in database.", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)fetchAccountsWithLocalFlag:(BOOL)a3
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__39842;
  v13[4] = __Block_byref_object_dispose__39843;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__39842;
  v11 = __Block_byref_object_dispose__39843;
  v12 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__HMDAccountRegistry_Roar__fetchAccountsWithLocalFlag___block_invoke;
  v5[3] = &unk_2786729A8;
  v6 = a3;
  v5[4] = self;
  v5[5] = v13;
  v5[6] = &v7;
  [(HMCContextProvider *)self unsafeSynchronousBlock:v5];
  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(v13, 8);

  return v3;
}

void __55__HMDAccountRegistry_Roar__fetchAccountsWithLocalFlag___block_invoke(uint64_t a1, void *a2)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 56) == 1)
  {
    v25 = 0;
    v5 = [v3 findLocalAccountWithError:&v25];
    v6 = v25;
    if (v5)
    {
      v32[0] = v5;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }
  }

  else
  {
    v24 = 0;
    v10 = [v3 findRemoteAccountsWithError:&v24];
    v6 = v24;
    v11 = *(*(a1 + 40) + 8);
    v5 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    goto LABEL_12;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = *(a1 + 32);
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    v16 = *(a1 + 56);
    *buf = 138543874;
    v27 = v15;
    if (v16)
    {
      v17 = @"the local account";
    }

    else
    {
      v17 = @"remote accounts";
    }

    v28 = 2112;
    v29 = v17;
    v30 = 2112;
    v31 = v6;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch %@: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  if (*(*(*(a1 + 40) + 8) + 40))
  {
LABEL_12:
    v18 = [MEMORY[0x277CBEB18] array];
    v19 = *(*(a1 + 48) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    v21 = *(*(*(a1 + 40) + 8) + 40);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __55__HMDAccountRegistry_Roar__fetchAccountsWithLocalFlag___block_invoke_8;
    v23[3] = &unk_278672980;
    v23[4] = *(a1 + 48);
    [v21 hmf_enumerateWithAutoreleasePoolUsingBlock:v23];
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __55__HMDAccountRegistry_Roar__fetchAccountsWithLocalFlag___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [[HMDAccount alloc] initWithBackingModel:v3];

  v4 = v5;
  if (v5)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
    v4 = v5;
  }
}

- (void)accountInformationChanged:(id)a3
{
  v4 = a3;
  [v4 dumpForLoggingWithPrefix:@"Account Registry" logType:0];
  v5 = [v4 updates];
  __sendChangeNotifications(self, v5, 4);

  v6 = [v4 inserts];
  __sendChangeNotifications(self, v6, 1);

  v7 = [v4 deletes];

  __sendChangeNotifications(self, v7, 2);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t26_63425 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t26_63425, &__block_literal_global_63426);
  }

  v3 = logCategory__hmf_once_v27_63427;

  return v3;
}

void __33__HMDAccountRegistry_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v27_63427;
  logCategory__hmf_once_v27_63427 = v1;
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_started);
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = a1;
    v9.super_class = &OBJC_METACLASS___HMDAccountRegistry;
    v7 = objc_msgSendSuper2(&v9, sel_automaticallyNotifiesObserversForKey_, v4);
  }

  return v7;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v8 = [(HMDAccountRegistry *)self accounts];
  v9 = [v8 countByEnumeratingWithState:a3 objects:a4 count:a5];

  return v9;
}

- (void)_resolveAccountForHandle:(id)a3 completionHandler:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(HMDAccountRegistry *)self appleAccountManager];
    v9 = [v8 account];

    v10 = [v9 handles];
    v11 = [v10 containsObject:v6];

    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = HMFGetLogIdentifier();
        v16 = [v6 shortDescription];
        v18 = 138543618;
        v19 = v15;
        v20 = 2112;
        v21 = v16;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Not resolving handle, %@, on our account", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      if (v7)
      {
        v7[2](v7, v9, 0);
      }
    }

    else
    {

      v9 = [(HMDAccountRegistry *)self remoteAccountManager];
      [v9 _resolveAccountForHandle:v6 completionHandler:v7];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)__handleRemovedRemoteAccount:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccountRegistry *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HMDAccountRegistry___handleRemovedRemoteAccount___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __51__HMDAccountRegistry___handleRemovedRemoteAccount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"HMDAccountNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v8 = v4;

  if (v8)
  {
    v5 = [*(a1 + 40) appleAccountManager];
    v6 = [v5 account];
    v7 = [v8 isRelatedToAccount:v6];

    if ((v7 & 1) == 0)
    {
      __notifyDelegateAccountRemoved(*(a1 + 40), v8);
    }
  }
}

- (void)__handleAddedRemoteAccount:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccountRegistry *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__HMDAccountRegistry___handleAddedRemoteAccount___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __49__HMDAccountRegistry___handleAddedRemoteAccount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"HMDAccountNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v8 = v4;

  if (v8)
  {
    v5 = [*(a1 + 40) appleAccountManager];
    v6 = [v5 account];
    v7 = [v8 isRelatedToAccount:v6];

    if ((v7 & 1) == 0)
    {
      __notifyDelegateAccountAdded(*(a1 + 40), v8);
    }
  }
}

- (void)__handleAppleAccountDeviceAdded:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccountRegistry *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HMDAccountRegistry___handleAppleAccountDeviceAdded___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __54__HMDAccountRegistry___handleAppleAccountDeviceAdded___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [*(a1 + 40) appleAccountManager];
  v6 = [v5 account];
  v7 = [v4 isEqualToAccount:v6];

  if (v7)
  {
    v8 = [*(a1 + 32) userInfo];
    v9 = [v8 objectForKeyedSubscript:@"HMDDeviceNotificationKey"];

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

    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 40);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v16 = [v11 shortDescription];
        v22 = 138543618;
        v23 = v15;
        v24 = 2112;
        v25 = v16;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Received notification that device was added to our account: %@", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v17 = *(a1 + 40);
      v18 = MEMORY[0x277CBEB98];
      v19 = [v11 handles];
      v20 = [v18 setWithArray:v19];
      __cleanupRemoteDevicesWithHandles(v17, v20);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)__handleAppleAccountHandlesUpdated:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccountRegistry *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HMDAccountRegistry___handleAppleAccountHandlesUpdated___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __57__HMDAccountRegistry___handleAppleAccountHandlesUpdated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v7 = v3;

  v4 = [*(a1 + 40) appleAccountManager];
  v5 = [v4 account];
  v6 = [v7 isEqualToAccount:v5];

  if (v6)
  {
    __cleanupRemoteAccountsRelatedToAccount(*(a1 + 40), v7);
  }
}

- (void)__handleAppleAccountUpdate:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccountRegistry *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__HMDAccountRegistry___handleAppleAccountUpdate___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __49__HMDAccountRegistry___handleAppleAccountUpdate___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"HMDAccountNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [*(a1 + 32) userInfo];
  v7 = [v6 objectForKeyedSubscript:@"HMDPreviousAccountNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v5)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 40);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Received notification current account added", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    __registerForAccountUpdates(*(a1 + 40), v5);
    __cleanupRemoteAccountsRelatedToAccount(*(a1 + 40), v5);
    v14 = [v5 devices];
    v15 = [MEMORY[0x277CBEB58] setWithCapacity:{2 * objc_msgSend(v14, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        v20 = 0;
        do
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v27 + 1) + 8 * v20) handles];
          [v15 addObjectsFromArray:v21];

          ++v20;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v18);
    }

    __cleanupRemoteDevicesWithHandles(*(a1 + 40), v15);
    __notifyDelegateAccountAdded(*(a1 + 40), v5);
  }

  else if (v9)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = *(a1 + 40);
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v25;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Received notification current account removed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    __registerForAccountUpdates(*(a1 + 40), 0);
    __notifyDelegateAccountRemoved(*(a1 + 40), v9);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)deviceForIDSIdentifier:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = self;
  v6 = [(HMDAccountRegistry *)v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    v25 = v5;
    v23 = *v31;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v11 = [v10 devices];
        v12 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v27;
          v24 = v7;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v27 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v26 + 1) + 8 * j);
              v17 = [v16 idsIdentifier];
              if ([v17 isEqual:v4])
              {

LABEL_20:
                v20 = v16;

                v5 = v25;
                goto LABEL_21;
              }

              v18 = [v16 sharedUserIDSIdentifier];
              v19 = [v18 isEqual:v4];

              if (v19)
              {
                goto LABEL_20;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
            v7 = v24;
            v5 = v25;
            v8 = v23;
            if (v13)
            {
              continue;
            }

            break;
          }
        }
      }

      v7 = [(HMDAccountRegistry *)v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
      v20 = 0;
    }

    while (v7);
  }

  else
  {
    v20 = 0;
  }

LABEL_21:

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)deviceForPushToken:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = self;
  v6 = [(HMDAccountRegistry *)v5 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v6)
  {
    v7 = *v37;
    v27 = v5;
    v24 = *v37;
    do
    {
      v8 = 0;
      v25 = v6;
      do
      {
        if (*v37 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v36 + 1) + 8 * v8);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v32 objects:v41 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v33;
          v26 = *v33;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v33 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v32 + 1) + 8 * i);
              v28 = 0u;
              v29 = 0u;
              v30 = 0u;
              v31 = 0u;
              v16 = [v15 globalHandles];
              v17 = [v16 countByEnumeratingWithState:&v28 objects:v40 count:16];
              if (v17)
              {
                v18 = v17;
                v19 = *v29;
                while (2)
                {
                  for (j = 0; j != v18; ++j)
                  {
                    if (*v29 != v19)
                    {
                      objc_enumerationMutation(v16);
                    }

                    if ([*(*(&v28 + 1) + 8 * j) matchesPushToken:v4])
                    {
                      v21 = v15;

                      v5 = v27;
                      goto LABEL_26;
                    }
                  }

                  v18 = [v16 countByEnumeratingWithState:&v28 objects:v40 count:16];
                  if (v18)
                  {
                    continue;
                  }

                  break;
                }
              }

              v13 = v26;
            }

            v12 = [v10 countByEnumeratingWithState:&v32 objects:v41 count:16];
            v5 = v27;
            v7 = v24;
          }

          while (v12);
        }

        ++v8;
      }

      while (v8 != v25);
      v6 = [(HMDAccountRegistry *)v5 countByEnumeratingWithState:&v36 objects:v42 count:16];
      v21 = 0;
    }

    while (v6);
  }

  else
  {
    v21 = 0;
  }

LABEL_26:

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)deviceForDevice:(id)a3 exists:(BOOL *)a4
{
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    *a4 = 0;
  }

  if (v6)
  {
    v8 = __deviceForDevice(self, v6);
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v7;
    }

    if (v8 && a4)
    {
      *a4 = 1;
      v10 = v8;
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)deviceExistsForDevice:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = __deviceForDevice(self, a3);
  v4 = v3 != 0;

  return v4;
}

- (id)deviceForHandle:(id)a3 exists:(BOOL *)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    *a4 = 0;
  }

  if (v6)
  {
    v8 = __deviceForHandle(self, v6);
    v9 = v8;
    if (v8)
    {
      if (a4)
      {
        *a4 = 1;
      }

      v10 = v8;
    }

    else
    {
      v11 = [HMDDevice alloc];
      v12 = [v7 identifier];
      v16[0] = v7;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
      v10 = [(HMDDevice *)v11 initWithIdentifier:v12 handles:v13 name:0 productInfo:0 version:0 capabilities:0];
    }
  }

  else
  {
    v10 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)deviceForAddress:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v10 = 0;
    goto LABEL_18;
  }

  v5 = +[HMDDemoModeManagerDataSource defaultDataSource];
  [v5 isDemoModeMadeForDemoBundle];

  v6 = [v4 idsIdentifier];
  v7 = [HMDDeviceHandle deviceHandleForDeviceIdentifier:v6];

  v8 = __deviceForHandle(self, v7);
  if (!v8)
  {
    v11 = [v4 idsDestination];
    v12 = [HMDDeviceHandle deviceHandleForDestination:v11];

    v13 = __deviceForHandle(self, v12);
    v9 = v13;
    if (!v13)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        v29 = 138543618;
        v30 = v25;
        v31 = 2112;
        v32 = v4;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Synthesizing HMDDevice for %@", &v29, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      v26 = [[HMDDevice alloc] initWithDeviceAddress:v4];
      goto LABEL_16;
    }

    v14 = [(HMDDevice *)v13 idsIdentifier];

    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    v18 = v17;
    if (v14)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [(HMDDevice *)v9 idsIdentifier];
        v21 = [v4 idsIdentifier];
        v29 = 138544386;
        v30 = v19;
        v31 = 2160;
        v32 = 1752392040;
        v33 = 2112;
        v34 = v20;
        v35 = 2160;
        v36 = 1752392040;
        v37 = 2112;
        v38 = v21;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_FAULT, "%{public}@IDS identifier mismatch %{mask.hash}@ != %{mask.hash}@", &v29, 0x34u);

LABEL_14:
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v29 = 138543874;
      v30 = v19;
      v31 = 2112;
      v32 = v7;
      v33 = 2112;
      v34 = v9;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Adding local handle %@ to %@", &v29, 0x20u);
      goto LABEL_14;
    }

    objc_autoreleasePoolPop(v15);
    [(HMDDevice *)v9 addHandle:v7];
    v26 = v9;
LABEL_16:
    v10 = v26;

    goto LABEL_17;
  }

  v9 = v8;
  v10 = v9;
LABEL_17:

LABEL_18:
  v27 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)deviceForIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self;
    v6 = [(HMDAccountRegistry *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v14 + 1) + 8 * i) deviceForIdentifier:{v4, v14}];
          if (v10)
          {
            v11 = v10;
            goto LABEL_12;
          }
        }

        v7 = [(HMDAccountRegistry *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_12:
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)existingAccountWithMergeIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(HMDAccountRegistry *)self accounts];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [v9 senderCorrelationIdentifier];
          v11 = [v10 isEqual:v4];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)accountForHandle:(id)a3 exists:(BOOL *)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    *a4 = 0;
  }

  if (v6)
  {
    v8 = __accountForHandle(self, v6);
    v9 = v8;
    if (v8)
    {
      if (a4)
      {
        *a4 = 1;
      }

      v10 = v8;
    }

    else
    {
      v11 = [HMDAccount alloc];
      v12 = [HMDAccountIdentifier accountIdentifierForAccountHandle:v7];
      v16[0] = v7;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
      v10 = [(HMDAccount *)v11 initWithIdentifier:v12 handles:v13 devices:MEMORY[0x277CBEBF8]];
    }
  }

  else
  {
    v10 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)accountExistsForHandle:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = __accountForHandle(self, a3);
  v4 = v3 != 0;

  return v4;
}

- (void)reset
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Resetting", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDAccountRegistry *)v4 remoteAccountManager];
  [v7 reset];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  __registerForAccountUpdates(v4, 0);
  v7 = NSStringFromSelector(sel_started);
  [(HMDAccountRegistry *)v4 willChangeValueForKey:v7];

  os_unfair_lock_lock_with_options();
  v4->_started = 0;
  os_unfair_lock_unlock(&v4->_lock);
  v8 = NSStringFromSelector(sel_started);
  [(HMDAccountRegistry *)v4 didChangeValueForKey:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v21 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDAccountRegistry *)v4 registerForDatabaseChanges];
  v7 = [(HMDAccountRegistry *)v4 appleAccountManager];
  v8 = [v7 account];
  if (v8)
  {
    __registerForAccountUpdates(v4, v8);
    v9 = [(HMDAccountRegistry *)v4 clientQueue];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __27__HMDAccountRegistry_start__block_invoke;
    v17 = &unk_27868A750;
    v18 = v4;
    v19 = v8;
    dispatch_async(v9, &v14);
  }

  [v7 start];
  v10 = [(HMDAccountRegistry *)v4 remoteAccountManager];
  [v10 start];

  v11 = NSStringFromSelector(sel_started);
  [(HMDAccountRegistry *)v4 willChangeValueForKey:v11];

  os_unfair_lock_lock_with_options();
  v4->_started = 1;
  os_unfair_lock_unlock(&v4->_lock);
  v12 = NSStringFromSelector(sel_started);
  [(HMDAccountRegistry *)v4 didChangeValueForKey:v12];

  v13 = *MEMORY[0x277D85DE8];
}

void __27__HMDAccountRegistry_start__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  __cleanupRemoteAccountsRelatedToAccount(*(a1 + 32), *(a1 + 40));
  v2 = [*(a1 + 40) devices];
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{2 * objc_msgSend(v2, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) handles];
        [v3 addObjectsFromArray:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  __cleanupRemoteDevicesWithHandles(*(a1 + 32), v3);
  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)started
{
  os_unfair_lock_lock_with_options();
  started = self->_started;
  os_unfair_lock_unlock(&self->_lock);
  return started;
}

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDAccountRegistry *)self accounts];
  v5 = [v3 initWithName:@"AC" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (HMDAccountRegistry)initWithAppleAccountManager:(id)a3 remoteAccountManager:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v21.receiver = self;
  v21.super_class = HMDAccountRegistry;
  v10 = [(HMCContextProvider *)&v21 initWithContext:a5];
  v11 = v10;
  if (v10)
  {
    v10->_lock._os_unfair_lock_opaque = 0;
    v12 = HMDispatchQueueNameString();
    v13 = [v12 UTF8String];
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create(v13, v14);
    clientQueue = v11->_clientQueue;
    v11->_clientQueue = v15;

    objc_storeWeak(&v11->_appleAccountManager, v8);
    objc_storeWeak(&v11->_remoteAccountManager, v9);
    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    [v17 addObserver:v11 selector:sel___handleAppleAccountUpdate_ name:@"HMDAppleAccountManagerAccountUpdatedNotification" object:v8];

    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    [v18 addObserver:v11 selector:sel___handleAddedRemoteAccount_ name:@"HMDRemoteAccountManagerAddedAccountNotification" object:v9];

    v19 = [MEMORY[0x277CCAB98] defaultCenter];
    [v19 addObserver:v11 selector:sel___handleRemovedRemoteAccount_ name:@"HMDRemoteAccountManagerRemovedAccountNotification" object:v9];

    [v8 configureWithAccountRegistry:v11];
    [v9 configureWithAccountRegistry:v11];
  }

  return v11;
}

@end