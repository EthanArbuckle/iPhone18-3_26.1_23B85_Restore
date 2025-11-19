@interface HMDHomeNFCReaderKeyManager
+ (id)logCategory;
- (HMDDevice)primaryResidentDevice;
- (HMDHome)home;
- (HMDHomeNFCReaderKeyManager)initWithUUID:(id)a3 workQueue:(id)a4;
- (HMDHomeNFCReaderKeyManager)initWithUUID:(id)a3 workQueue:(id)a4 keychainStore:(id)a5 dataSource:(id)a6;
- (id)createNFCReaderKeyModelWithHome:(id)a3 nfcReaderKey:(id)a4;
- (id)logIdentifier;
- (id)readerKeyWithKeychainItemIdentifier:(id)a3 error:(id *)a4 flow:(id)a5;
- (void)configureWithHome:(id)a3;
- (void)createReaderKeyInKeychainForHome:(id)a3 isForceUpdate:(BOOL)a4 flow:(id)a5;
- (void)createReaderKeyInKeychainForHome:(id)a3 isForceUpdate:(BOOL)a4 flow:(id)a5 completion:(id)a6;
- (void)deleteKeychainItemForNFCReaderKeyIsForceUpdate:(BOOL)a3 withFlow:(id)a4 completion:(id)a5;
- (void)fetchOrCreateReaderKeyOnQueueWithRequiresPrivateKey:(BOOL)a3 flow:(id)a4 completion:(id)a5;
- (void)fetchOrCreateReaderKeyWithRequiresPrivateKey:(BOOL)a3 flow:(id)a4 completion:(id)a5;
- (void)handleCreateKeychainItemForReaderKeyMessage:(id)a3;
- (void)handleDeleteKeychainItemForNFCReaderKey:(id)a3;
- (void)handleFetchOrCreateReaderKeyMessage:(id)a3;
- (void)handleHomeDidUpdateNFCReaderKeyNotification:(id)a3;
- (void)handleHomeRemovedNotification:(id)a3;
- (void)handleSystemKeychainStoreUpdatedNotification:(id)a3;
- (void)removeKeychainItemForReaderKey:(id)a3 home:(id)a4 flow:(id)a5;
- (void)requestDevice:(id)a3 toCreateKeychainItemForReaderKeyWithFlow:(id)a4 completion:(id)a5;
- (void)requestPrimaryResidentToFetchOrCreateReaderKeyWithFlow:(id)a3 completion:(id)a4;
- (void)rollReaderKeyWithFlow:(id)a3 withCompletion:(id)a4;
- (void)unconfigure;
@end

@implementation HMDHomeNFCReaderKeyManager

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDHomeNFCReaderKeyManager *)self uuid];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)requestPrimaryResidentToFetchOrCreateReaderKeyWithFlow:(id)a3 completion:(id)a4
{
  v42[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(HMDHomeNFCReaderKeyManager *)self primaryResidentDevice];
  if (v9)
  {
    v10 = [HMDRemoteDeviceMessageDestination alloc];
    v11 = [(HMDHomeNFCReaderKeyManager *)self messageTargetUUID];
    v12 = [(HMDRemoteDeviceMessageDestination *)v10 initWithTarget:v11 device:v9];

    v13 = [HMDRemoteMessage alloc];
    v41 = *MEMORY[0x277D0F1C8];
    v14 = HMFEncodedRootObject();
    v42[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    v16 = [(HMDRemoteMessage *)v13 initWithName:@"HMDHomeFetchOrCreateNFCReaderKeyMessage" destination:v12 payload:v15 type:0 timeout:1 secure:0.0];

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __96__HMDHomeNFCReaderKeyManager_requestPrimaryResidentToFetchOrCreateReaderKeyWithFlow_completion___block_invoke;
    v30[3] = &unk_279732AE8;
    v30[4] = self;
    v17 = v6;
    v31 = v17;
    v32 = v7;
    [(HMDRemoteMessage *)v16 setResponseHandler:v30];
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [v17 UUID];
      *buf = 138544130;
      v34 = v21;
      v35 = 2112;
      v36 = v22;
      v37 = 2112;
      v38 = v16;
      v39 = 2112;
      v40 = v9;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Sending message to fetch or create reader key: %@ to primary resident: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v18);
    v23 = [(HMDHomeNFCReaderKeyManager *)v19 messageDispatcher];
    [v23 sendMessage:v16];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      v28 = [v6 UUID];
      *buf = 138543618;
      v34 = v27;
      v35 = 2112;
      v36 = v28;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Did not send message to fetch or create reader key, there is no primary resident that support wallet key", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (*(v7 + 2))(v7, 0, v12);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __96__HMDHomeNFCReaderKeyManager_requestPrimaryResidentToFetchOrCreateReaderKeyWithFlow_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 hmf_dataForKey:@"HMDHomeFetchOrCreateNFCReaderKeyMessageKeyReaderKey"];
  if (v7)
  {
    v38 = 0;
    v8 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v38];
    v9 = v38;
    if (v8)
    {
      v10 = [a1[4] workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __96__HMDHomeNFCReaderKeyManager_requestPrimaryResidentToFetchOrCreateReaderKeyWithFlow_completion___block_invoke_2;
      block[3] = &unk_279734578;
      v11 = a1[5];
      block[4] = a1[4];
      v32 = v11;
      v33 = v8;
      v34 = a1[6];
      dispatch_async(v10, block);
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = a1[4];
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v22 = v30 = v5;
        [a1[5] UUID];
        v23 = v29 = v19;
        *buf = 138544130;
        v42 = v22;
        v43 = 2112;
        v44 = v23;
        v45 = 2112;
        v46 = v7;
        v47 = 2112;
        v48 = v9;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to decode reader key %@:%@", buf, 0x2Au);

        v19 = v29;
        v5 = v30;
      }

      objc_autoreleasePoolPop(v19);
      v24 = [MEMORY[0x277CBEB38] dictionary];
      [v24 setObject:v9 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
      v25 = [a1[4] workQueue];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __96__HMDHomeNFCReaderKeyManager_requestPrimaryResidentToFetchOrCreateReaderKeyWithFlow_completion___block_invoke_225;
      v35[3] = &unk_279735738;
      v26 = a1[6];
      v36 = v24;
      v37 = v26;
      v27 = v24;
      dispatch_async(v25, v35);
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = a1[4];
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      [a1[5] UUID];
      v17 = v16 = v5;
      *buf = 138544386;
      v42 = v15;
      v43 = 2112;
      v44 = v17;
      v45 = 2112;
      v46 = @"HMDHomeFetchOrCreateNFCReaderKeyMessageKeyReaderKey";
      v47 = 2112;
      v48 = v6;
      v49 = 2112;
      v50 = v16;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Missing reader key: %@ in payload: %@ error: %@", buf, 0x34u);

      v5 = v16;
    }

    objc_autoreleasePoolPop(v12);
    v18 = [a1[4] workQueue];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __96__HMDHomeNFCReaderKeyManager_requestPrimaryResidentToFetchOrCreateReaderKeyWithFlow_completion___block_invoke_223;
    v39[3] = &unk_2797348C0;
    v40 = a1[6];
    dispatch_async(v18, v39);

    v9 = v40;
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __96__HMDHomeNFCReaderKeyManager_requestPrimaryResidentToFetchOrCreateReaderKeyWithFlow_completion___block_invoke_223(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
  (*(v1 + 16))(v1, 0, v2);
}

void __96__HMDHomeNFCReaderKeyManager_requestPrimaryResidentToFetchOrCreateReaderKeyWithFlow_completion___block_invoke_225(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1 userInfo:*(a1 + 32)];
  (*(v1 + 16))(v1, 0, v2);
}

uint64_t __96__HMDHomeNFCReaderKeyManager_requestPrimaryResidentToFetchOrCreateReaderKeyWithFlow_completion___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) UUID];
    v7 = *(a1 + 48);
    v11 = 138543874;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully fetched nfc reader key: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 48);
  result = (*(*(a1 + 56) + 16))();
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)requestDevice:(id)a3 toCreateKeychainItemForReaderKeyWithFlow:(id)a4 completion:(id)a5
{
  v45[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v9 UUID];
    *buf = 138543874;
    v37 = v15;
    v38 = 2112;
    v39 = v16;
    v40 = 2112;
    v41 = v8;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Requesting primary resident device to create keychain item for nfc reader key. residentDevice: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v17 = [HMDRemoteDeviceMessageDestination alloc];
  v18 = [(HMDHomeNFCReaderKeyManager *)v13 messageTargetUUID];
  v19 = [(HMDRemoteDeviceMessageDestination *)v17 initWithTarget:v18 device:v8];

  v20 = [HMDRemoteMessage alloc];
  v44 = *MEMORY[0x277D0F1C8];
  v21 = HMFEncodedRootObject();
  v45[0] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];
  v23 = [(HMDRemoteMessage *)v20 initWithName:@"HMDHomeCreateKeychainItemForNFCReaderKeyMessage" destination:v19 payload:v22 type:0 timeout:1 secure:0.0];

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __96__HMDHomeNFCReaderKeyManager_requestDevice_toCreateKeychainItemForReaderKeyWithFlow_completion___block_invoke;
  v33[3] = &unk_279732AE8;
  v33[4] = v13;
  v24 = v9;
  v34 = v24;
  v25 = v10;
  v35 = v25;
  [(HMDRemoteMessage *)v23 setResponseHandler:v33];
  v26 = objc_autoreleasePoolPush();
  v27 = v13;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = HMFGetLogIdentifier();
    v30 = [v24 UUID];
    *buf = 138544130;
    v37 = v29;
    v38 = 2112;
    v39 = v30;
    v40 = 2112;
    v41 = v23;
    v42 = 2112;
    v43 = v8;
    _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Sending message to create keychain item for reader key: %@ to primary resident: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v26);
  v31 = [(HMDHomeNFCReaderKeyManager *)v27 messageDispatcher];
  [v31 sendMessage:v23];

  v32 = *MEMORY[0x277D85DE8];
}

void __96__HMDHomeNFCReaderKeyManager_requestDevice_toCreateKeychainItemForReaderKeyWithFlow_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 hmf_dataForKey:@"HMDHomeCreateKeychainItemForNFCReaderKeyMessageKeyReaderKey"];
  if (v7)
  {
    v8 = [HMDHomeNFCReaderKey createWithExternalRepresentation:v7];
    if (v8)
    {
      v9 = v8;
      v10 = [a1[4] workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __96__HMDHomeNFCReaderKeyManager_requestDevice_toCreateKeychainItemForReaderKeyWithFlow_completion___block_invoke_2;
      block[3] = &unk_279734578;
      v11 = a1[5];
      block[4] = a1[4];
      v31 = v11;
      v12 = v9;
      v32 = v12;
      v33 = a1[6];
      dispatch_async(v10, block);
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = a1[4];
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v24 = [a1[5] UUID];
        *buf = 138544130;
        v40 = v23;
        v41 = 2112;
        v42 = v24;
        v43 = 2112;
        v44 = v7;
        v45 = 2112;
        v46 = 0;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to decode reader key keychain item %@:%@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v20);
      v25 = [MEMORY[0x277CBEB38] dictionary];
      [v25 setObject:0 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
      v26 = [a1[4] workQueue];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __96__HMDHomeNFCReaderKeyManager_requestDevice_toCreateKeychainItemForReaderKeyWithFlow_completion___block_invoke_222;
      v34[3] = &unk_279735738;
      v27 = a1[6];
      v35 = v25;
      v36 = v27;
      v28 = v25;
      dispatch_async(v26, v34);

      v12 = 0;
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = a1[4];
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      [a1[5] UUID];
      v18 = v17 = v5;
      *buf = 138544386;
      v40 = v16;
      v41 = 2112;
      v42 = v18;
      v43 = 2112;
      v44 = @"HMDHomeCreateKeychainItemForNFCReaderKeyMessageKeyReaderKey";
      v45 = 2112;
      v46 = v6;
      v47 = 2112;
      v48 = v17;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Missing reader key keychain item: %@ in payload: %@ error: %@", buf, 0x34u);

      v5 = v17;
    }

    objc_autoreleasePoolPop(v13);
    v19 = [a1[4] workQueue];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __96__HMDHomeNFCReaderKeyManager_requestDevice_toCreateKeychainItemForReaderKeyWithFlow_completion___block_invoke_221;
    v37[3] = &unk_2797348C0;
    v38 = a1[6];
    dispatch_async(v19, v37);

    v12 = v38;
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __96__HMDHomeNFCReaderKeyManager_requestDevice_toCreateKeychainItemForReaderKeyWithFlow_completion___block_invoke_221(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
  (*(v1 + 16))(v1, 0, v2);
}

void __96__HMDHomeNFCReaderKeyManager_requestDevice_toCreateKeychainItemForReaderKeyWithFlow_completion___block_invoke_222(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1 userInfo:*(a1 + 32)];
  (*(v1 + 16))(v1, 0, v2);
}

uint64_t __96__HMDHomeNFCReaderKeyManager_requestDevice_toCreateKeychainItemForReaderKeyWithFlow_completion___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) UUID];
    v7 = *(a1 + 48);
    v11 = 138543874;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Resident successfully created keychain item for nfc reader key: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 48);
  result = (*(*(a1 + 56) + 16))();
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (HMDDevice)primaryResidentDevice
{
  v2 = [(HMDHomeNFCReaderKeyManager *)self home];
  v3 = [v2 residentDeviceManager];
  v4 = [v3 primaryResidentDevice];

  v5 = [v4 device];
  if (v5)
  {
    v6 = [v4 capabilities];
    if ([v6 supportsWalletKey])
    {
      v7 = [v4 isReachable];

      if (v7)
      {
        v8 = v5;
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (void)removeKeychainItemForReaderKey:(id)a3 home:(id)a4 flow:(id)a5
{
  v58 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v46 = [v8 identifier];
  v47 = v9;
  v12 = [HMDHomeNFCReaderKey keychainItemAccountAttributeValueWithHome:v9 keyIdentifier:?];
  v13 = [(HMDHomeNFCReaderKeyManager *)self keychainStore];
  v49 = 0;
  v14 = [v13 allKeychainItemsForType:&unk_286629068 identifier:v12 syncable:MEMORY[0x277CBEC38] error:&v49];
  v15 = v49;
  v16 = [v14 firstObject];

  v17 = [v15 userInfo];
  v18 = [v17 hmf_errorForKey:*MEMORY[0x277CCA7E8]];

  if (!v16)
  {
    v34 = [v18 code];
    v45 = objc_autoreleasePoolPush();
    v35 = self;
    v36 = HMFGetOSLogHandle();
    v26 = v36;
    if (v34 == -25300)
    {
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = HMFGetLogIdentifier();
        v38 = [v10 UUID];
        *buf = 138543618;
        v51 = v37;
        v52 = 2112;
        v53 = v38;
        v39 = "%{public}@[Flow: %@] Not removing nfc reader key, keychain item does not exist";
        v40 = v26;
        v41 = OS_LOG_TYPE_INFO;
        v42 = 22;
LABEL_14:
        _os_log_impl(&dword_2531F8000, v40, v41, v39, buf, v42);
      }
    }

    else if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      v38 = [v10 UUID];
      *buf = 138543874;
      v51 = v37;
      v52 = 2112;
      v53 = v38;
      v54 = 2112;
      v55 = v15;
      v39 = "%{public}@[Flow: %@] Failed to remove nfc reader key, keychain item fetch failed: %@";
      v40 = v26;
      v41 = OS_LOG_TYPE_ERROR;
      v42 = 32;
      goto LABEL_14;
    }

    v23 = v45;
    goto LABEL_16;
  }

  v44 = v18;
  v19 = v8;
  v20 = [(HMDHomeNFCReaderKeyManager *)self keychainStore];
  v48 = v15;
  v21 = [v20 deleteKeychainItem:v16 error:&v48];
  v22 = v48;

  v23 = objc_autoreleasePoolPush();
  v24 = self;
  v25 = HMFGetOSLogHandle();
  v26 = v25;
  if (v21)
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v28 = v27 = v23;
      v29 = [v10 UUID];
      *buf = 138543874;
      v51 = v28;
      v52 = 2112;
      v53 = v29;
      v54 = 2112;
      v55 = v16;
      v30 = "%{public}@[Flow: %@] Successfully removed nfc reader key keychain item %@";
      v31 = v26;
      v32 = OS_LOG_TYPE_INFO;
      v33 = 32;
LABEL_10:
      _os_log_impl(&dword_2531F8000, v31, v32, v30, buf, v33);

      v23 = v27;
    }
  }

  else if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    HMFGetLogIdentifier();
    v28 = v27 = v23;
    v29 = [v10 UUID];
    *buf = 138544130;
    v51 = v28;
    v52 = 2112;
    v53 = v29;
    v54 = 2112;
    v55 = v16;
    v56 = 2112;
    v57 = v22;
    v30 = "%{public}@[Flow: %@] Failed to remove nfc reader key keychain item %@:%@";
    v31 = v26;
    v32 = OS_LOG_TYPE_ERROR;
    v33 = 42;
    goto LABEL_10;
  }

  v15 = v22;
  v8 = v19;
  v18 = v44;
LABEL_16:

  objc_autoreleasePoolPop(v23);
  v43 = *MEMORY[0x277D85DE8];
}

- (id)createNFCReaderKeyModelWithHome:(id)a3 nfcReaderKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [HMDHomeNFCReaderKeyModel defaultModelForHome:v7];

  [v9 setNfcReaderKey:v6];

  return v9;
}

- (void)createReaderKeyInKeychainForHome:(id)a3 isForceUpdate:(BOOL)a4 flow:(id)a5
{
  v71 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v9 UUID];
    *buf = 138543618;
    v64 = v13;
    v65 = 2112;
    v66 = v14;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Creating reader key", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = +[HMDHomeNFCReaderKey createRandomKey];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 createKeychainItemForHome:v8];
    if (v17)
    {
      v52 = v9;
      v53 = v8;
      v18 = [(HMDHomeNFCReaderKeyManager *)v11 keychainStore];
      v62 = 0;
      v19 = [v18 updateKeychainItem:v17 createIfNeeded:1 error:&v62];
      v20 = v62;

      v21 = objc_autoreleasePoolPush();
      v22 = v11;
      v23 = HMFGetOSLogHandle();
      v24 = v23;
      if (v19)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          v26 = [v52 UUID];
          *buf = 138544130;
          v64 = v25;
          v65 = 2112;
          v66 = v26;
          v67 = 2112;
          v68 = v17;
          v69 = 2112;
          v70 = v16;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully created keychain item: %@ for nfc reader key: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v21);
        v27 = objc_alloc(MEMORY[0x277D0F848]);
        v28 = NSStringFromSelector(a2);
        v29 = [MEMORY[0x277D0F820] allMessageDestinations];
        v30 = [v27 initWithName:v28 destination:v29 payload:0];

        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __82__HMDHomeNFCReaderKeyManager_createReaderKeyInKeychainForHome_isForceUpdate_flow___block_invoke;
        v58[3] = &unk_27972CD68;
        v58[4] = v22;
        v50 = v52;
        v59 = v50;
        v31 = v16;
        v60 = v31;
        v32 = v53;
        v61 = v32;
        [v30 setResponseHandler:v58];
        v51 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
        v33 = [(HMDHomeNFCReaderKeyManager *)v22 createNFCReaderKeyModelWithHome:v32 nfcReaderKey:v31];
        v34 = [v32 backingStore];
        v35 = [v34 transaction:@"Creating NFC Reader Key" options:v51];

        v9 = v52;
        [v35 add:v33 withMessage:v30];
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __82__HMDHomeNFCReaderKeyManager_createReaderKeyInKeychainForHome_isForceUpdate_flow___block_invoke_2;
        v54[3] = &unk_279730430;
        v54[4] = v22;
        v55 = v50;
        v56 = v31;
        v57 = v32;
        [v35 run:v54];

        v8 = v53;
      }

      else
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v46 = HMFGetLogIdentifier();
          v47 = [v52 UUID];
          *buf = 138544130;
          v64 = v46;
          v65 = 2112;
          v66 = v47;
          v67 = 2112;
          v68 = v17;
          v69 = 2112;
          v70 = v20;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to add nfc reader key item: %@ to key chain: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v21);
        v30 = [(HMDHomeNFCReaderKeyManager *)v22 createKeychainItemFuture];
        v48 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        [v30 finishWithError:v48];

        v9 = v52;
        v8 = v53;
      }
    }

    else
    {
      v41 = objc_autoreleasePoolPush();
      v42 = v11;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = HMFGetLogIdentifier();
        v45 = [v9 UUID];
        *buf = 138543874;
        v64 = v44;
        v65 = 2112;
        v66 = v45;
        v67 = 2112;
        v68 = v16;
        _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create keychain item  for reader key: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v41);
      v20 = [(HMDHomeNFCReaderKeyManager *)v42 createKeychainItemFuture];
      v30 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [v20 finishWithError:v30];
    }
  }

  else
  {
    v36 = objc_autoreleasePoolPush();
    v37 = v11;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      v40 = [v9 UUID];
      *buf = 138543618;
      v64 = v39;
      v65 = 2112;
      v66 = v40;
      _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create the nfc reader key", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v36);
    v17 = [(HMDHomeNFCReaderKeyManager *)v37 createKeychainItemFuture];
    v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v17 finishWithError:v20];
  }

  v49 = *MEMORY[0x277D85DE8];
}

void __82__HMDHomeNFCReaderKeyManager_createReaderKeyInKeychainForHome_isForceUpdate_flow___block_invoke(id *a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1[4];
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [a1[5] UUID];
      *buf = 138543874;
      v26 = v10;
      v27 = 2112;
      v28 = v11;
      v29 = 2112;
      v30 = v5;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] NFC reader key transaction message response handler called with: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [a1[4] workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__HMDHomeNFCReaderKeyManager_createReaderKeyInKeychainForHome_isForceUpdate_flow___block_invoke_213;
    block[3] = &unk_279734870;
    v21 = a1[4];
    v13 = a1[6];
    v14 = a1[7];
    v15 = a1[5];
    *&v16 = v14;
    *(&v16 + 1) = v15;
    *&v17 = v21;
    *(&v17 + 1) = v13;
    v23 = v17;
    v24 = v16;
    dispatch_async(v12, block);

    v18 = [a1[4] createKeychainItemFuture];
    [v18 finishWithError:v5];
  }

  else
  {
    v19 = [a1[4] createKeychainItemFuture];
    [v19 finishWithResult:a1[6]];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __82__HMDHomeNFCReaderKeyManager_createReaderKeyInKeychainForHome_isForceUpdate_flow___block_invoke_2(id *a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = a1[4];
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [a1[5] UUID];
      *buf = 138543874;
      v22 = v7;
      v23 = 2112;
      v24 = v8;
      v25 = 2112;
      v26 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] NFC reader key transaction run failed: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = [a1[4] workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__HMDHomeNFCReaderKeyManager_createReaderKeyInKeychainForHome_isForceUpdate_flow___block_invoke_217;
    block[3] = &unk_279734870;
    v17 = a1[4];
    v10 = a1[6];
    v11 = a1[7];
    v12 = a1[5];
    *&v13 = v11;
    *(&v13 + 1) = v12;
    *&v14 = v17;
    *(&v14 + 1) = v10;
    v19 = v14;
    v20 = v13;
    dispatch_async(v9, block);

    v15 = [a1[4] createKeychainItemFuture];
    [v15 finishWithError:v3];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)createReaderKeyInKeychainForHome:(id)a3 isForceUpdate:(BOOL)a4 flow:(id)a5 completion:(id)a6
{
  v8 = a4;
  v46 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v13);

  v14 = [v10 homeManager];
  v15 = [v14 hasLoadedData];

  if ((v15 & 1) == 0)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [v11 UUID];
      *buf = 138543618;
      v41 = v21;
      v42 = 2112;
      v43 = v22;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not creating nfc reader key, home data load is in progress.", buf, 0x16u);
      goto LABEL_7;
    }

LABEL_8:

    objc_autoreleasePoolPop(v18);
    v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v12[2](v12, 0, v24);
    goto LABEL_14;
  }

  v16 = [v10 administratorHandler];
  v17 = [v16 shouldRelayMessages];

  if (v17)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [v11 UUID];
      v23 = [v10 uuid];
      *buf = 138543874;
      v41 = v21;
      v42 = 2112;
      v43 = v22;
      v44 = 2112;
      v45 = v23;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Call to create reader key, but we are not the designated writer for home: %@", buf, 0x20u);

LABEL_7:
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v36 = v8;
  v25 = [(HMDHomeNFCReaderKeyManager *)self createKeychainItemFuture];

  v26 = [(HMDHomeNFCReaderKeyManager *)self createKeychainItemFuture];

  if (!v26)
  {
    v27 = objc_alloc_init(MEMORY[0x277D2C900]);
    [(HMDHomeNFCReaderKeyManager *)self setCreateKeychainItemFuture:v27];
  }

  v28 = [(HMDHomeNFCReaderKeyManager *)self createKeychainItemFuture];
  v29 = [(HMDHomeNFCReaderKeyManager *)self createKeychainItemFuture];
  v30 = MEMORY[0x277D2C938];
  v31 = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  v32 = [v30 schedulerWithDispatchQueue:v31];
  v33 = [v29 reschedule:v32];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __93__HMDHomeNFCReaderKeyManager_createReaderKeyInKeychainForHome_isForceUpdate_flow_completion___block_invoke;
  v37[3] = &unk_27972CD40;
  v37[4] = self;
  v38 = v28;
  v39 = v12;
  v24 = v28;
  v34 = [v33 addCompletionBlock:v37];

  if (!v25)
  {
    [(HMDHomeNFCReaderKeyManager *)self createReaderKeyInKeychainForHome:v10 isForceUpdate:v36 flow:v11];
  }

LABEL_14:
  v35 = *MEMORY[0x277D85DE8];
}

void __93__HMDHomeNFCReaderKeyManager_createReaderKeyInKeychainForHome_isForceUpdate_flow_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) createKeychainItemFuture];
  v7 = *(a1 + 40);

  if (v6 == v7)
  {
    [*(a1 + 32) setCreateKeychainItemFuture:0];
  }

  (*(*(a1 + 48) + 16))();
}

- (id)readerKeyWithKeychainItemIdentifier:(id)a3 error:(id *)a4 flow:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v10);

  v11 = [(HMDHomeNFCReaderKeyManager *)self keychainStore];
  v12 = [v11 allKeychainItemsForType:&unk_286629068 identifier:v8 syncable:MEMORY[0x277CBEC38] error:a4];

  if ([v12 count])
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v9 UUID];
      v22 = 138544130;
      v23 = v16;
      v24 = 2112;
      v25 = v17;
      v26 = 2112;
      v27 = v12;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Found keychain items: %@ for nfc reader key with keychain item identifier: %@", &v22, 0x2Au);
    }

    objc_autoreleasePoolPop(v13);
    v18 = [v12 firstObject];
    v19 = [HMDHomeNFCReaderKey createWithKeychainItem:v18];
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)deleteKeychainItemForNFCReaderKeyIsForceUpdate:(BOOL)a3 withFlow:(id)a4 completion:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v10);

  v11 = [(HMDHomeNFCReaderKeyManager *)self home];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 homeManager];
    if ([v13 hasLoadedData])
    {
      v14 = [v12 nfcReaderKey];
      if (v14)
      {
        v15 = objc_alloc(MEMORY[0x277D0F848]);
        v16 = NSStringFromSelector(a2);
        v17 = [MEMORY[0x277D0F820] allMessageDestinations];
        v18 = [v15 initWithName:v16 destination:v17 payload:0];

        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __97__HMDHomeNFCReaderKeyManager_deleteKeychainItemForNFCReaderKeyIsForceUpdate_withFlow_completion___block_invoke;
        v31[3] = &unk_279734780;
        v35 = v9;
        v31[4] = self;
        v14 = v14;
        v32 = v14;
        v19 = v12;
        v33 = v19;
        v34 = v8;
        [v18 setResponseHandler:v31];
        v20 = [(HMDHomeNFCReaderKeyManager *)self createNFCReaderKeyModelWithHome:v19 nfcReaderKey:0];
        v21 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
        v22 = [v19 backingStore];
        v23 = [v22 transaction:@"Deleting NFC Reader Key" options:v21];

        [v23 add:v20 withMessage:v18];
        [v23 run];
      }

      else
      {
        v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        (*(v9 + 2))(v9, v29);
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        v28 = [v8 UUID];
        *buf = 138543618;
        v37 = v27;
        v38 = 2112;
        v39 = v28;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not deleting reader key, home data load is in progress.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      (*(v9 + 2))(v9, v14);
    }
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v9 + 2))(v9, v13);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __97__HMDHomeNFCReaderKeyManager_deleteKeychainItemForNFCReaderKeyIsForceUpdate_withFlow_completion___block_invoke(id *a1, void *a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v19 = *MEMORY[0x277CCA7E8];
    v20[0] = a2;
    v3 = MEMORY[0x277CBEAC0];
    v4 = a2;
    v5 = [v3 dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v6 = a1[8];
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1 userInfo:v5];
    v6[2](v6, v7);
  }

  else
  {
    v8 = [a1[4] workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__HMDHomeNFCReaderKeyManager_deleteKeychainItemForNFCReaderKeyIsForceUpdate_withFlow_completion___block_invoke_2;
    block[3] = &unk_279734668;
    v14 = *(a1 + 2);
    v9 = *(&v14 + 1);
    v10 = a1[6];
    v11 = a1[7];
    *&v12 = v10;
    *(&v12 + 1) = v11;
    v16 = v14;
    v17 = v12;
    v18 = a1[8];
    dispatch_async(v8, block);

    v5 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __97__HMDHomeNFCReaderKeyManager_deleteKeychainItemForNFCReaderKeyIsForceUpdate_withFlow_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeKeychainItemForReaderKey:*(a1 + 40) home:*(a1 + 48) flow:*(a1 + 56)];
  v2 = *(*(a1 + 64) + 16);

  return v2();
}

- (void)handleSystemKeychainStoreUpdatedNotification:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v5 UUID];
    *buf = 138543618;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling system keychain store updated notification", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDHomeNFCReaderKeyManager *)v7 home];
  if (v11)
  {
    v12 = [(HMDHomeNFCReaderKeyManager *)v7 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__HMDHomeNFCReaderKeyManager_handleSystemKeychainStoreUpdatedNotification___block_invoke;
    block[3] = &unk_279734960;
    block[4] = v7;
    v20 = v11;
    v21 = v5;
    dispatch_async(v12, block);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v7;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v5 UUID];
      *buf = 138543618;
      v23 = v16;
      v24 = 2112;
      v25 = v17;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not handling keychain update, home is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __75__HMDHomeNFCReaderKeyManager_handleSystemKeychainStoreUpdatedNotification___block_invoke(id *a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] dataSource];
  v3 = [v2 isWatch];

  v4 = [a1[5] currentUser];
  v5 = [v4 isOwner];

  if ((v3 & 1) != 0 || v5 != 1)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = a1[4];
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [a1[6] UUID];
      v17 = HMFBooleanToString();
      v18 = HMFBooleanToString();
      *buf = 138544130;
      v32 = v15;
      v33 = 2112;
      v34 = v16;
      v35 = 2112;
      v36 = v17;
      v37 = 2112;
      v38 = v18;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not handling keychain update because it is watch: %@ or is not owner device: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
  }

  else
  {
    v6 = [a1[5] nfcReaderKey];
    v7 = [v6 identifier];

    if (v7)
    {
      v8 = [HMDHomeNFCReaderKey keychainItemAccountAttributeValueWithHome:a1[5] keyIdentifier:v7];
      v9 = a1[4];
      v30 = 0;
      v10 = [v9 readerKeyWithKeychainItemIdentifier:v8 error:&v30 flow:a1[6]];
      v11 = v30;
      if (v10)
      {
        logAndPostNotification(@"HMDHomeNFCReaderKeyKeychainItemAvailableNotification", a1[4], 0);
      }

      else
      {
        v24 = objc_autoreleasePoolPush();
        v25 = a1[4];
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = HMFGetLogIdentifier();
          v28 = [a1[6] UUID];
          *buf = 138544130;
          v32 = v27;
          v33 = 2112;
          v34 = v28;
          v35 = 2112;
          v36 = v7;
          v37 = 2112;
          v38 = v8;
          _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Failed to fetch reader key with identifier: %@ and keychain item identifier: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v24);
      }
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = a1[4];
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v23 = [a1[6] UUID];
        *buf = 138543618;
        v32 = v22;
        v33 = 2112;
        v34 = v23;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not handling nfc reader key update because it set to nil on home", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeRemovedNotification:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:@"HMDHomeNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v9 UUID];
    *buf = 138543874;
    v43 = v13;
    v44 = 2112;
    v45 = v14;
    v46 = 2112;
    v47 = v8;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling home removed notification: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = [(HMDHomeNFCReaderKeyManager *)v11 home];
  if (v15 == v8)
  {
    v16 = [(HMDHomeNFCReaderKeyManager *)v11 dataSource];
    v17 = [v16 isWatch];

    v18 = [v15 currentUser];
    v19 = [v18 isOwner];

    if ((v17 & 1) != 0 || v19 != 1)
    {
      v24 = objc_autoreleasePoolPush();
      v25 = v11;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        [v9 UUID];
        v28 = v37 = v24;
        v29 = HMFBooleanToString();
        v30 = HMFBooleanToString();
        *buf = 138544130;
        v43 = v27;
        v44 = 2112;
        v45 = v28;
        v46 = 2112;
        v47 = v29;
        v48 = 2112;
        v49 = v30;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not removing nfc reader key because it is watch: %@ or is not owner device: %@", buf, 0x2Au);

        v24 = v37;
      }

      objc_autoreleasePoolPop(v24);
    }

    else
    {
      v20 = [(HMDHomeNFCReaderKeyManager *)v11 primaryResidentDevice];
      v21 = v20;
      if (v20 && ([v20 isCurrentDevice] & 1) == 0)
      {
        v31 = objc_autoreleasePoolPush();
        v32 = v11;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = HMFGetLogIdentifier();
          v35 = [v9 UUID];
          *buf = 138543618;
          v43 = v34;
          v44 = 2112;
          v45 = v35;
          _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Skipping removal of nfc reader key on current device because home has a primary resident that supports wallet key", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
      }

      else
      {
        v22 = [v15 nfcReaderKey];
        if (v22)
        {
          v23 = [(HMDHomeNFCReaderKeyManager *)v11 workQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __60__HMDHomeNFCReaderKeyManager_handleHomeRemovedNotification___block_invoke;
          block[3] = &unk_279734870;
          block[4] = v11;
          v39 = v22;
          v40 = v15;
          v41 = v9;
          dispatch_async(v23, block);
        }
      }
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeDidUpdateNFCReaderKeyNotification:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [(HMDHomeNFCReaderKeyManager *)self dataSource];
  v9 = [v8 isWatch];

  v10 = [(HMDHomeNFCReaderKeyManager *)self home];
  v11 = [v10 currentUser];
  v12 = [v11 isOwner];

  v13 = v12 ^ 1;
  if ((v9 & 1) != 0 || v13)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = HMFBooleanToString();
      v20 = HMFBooleanToString();
      *buf = 138543874;
      v26 = v18;
      v27 = 2112;
      v28 = v19;
      v29 = 2112;
      v30 = v20;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Not handling home nfc reader key update notification because it is watch: %@ or is not owner device: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
  }

  else
  {
    v14 = [(HMDHomeNFCReaderKeyManager *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__HMDHomeNFCReaderKeyManager_handleHomeDidUpdateNFCReaderKeyNotification___block_invoke;
    block[3] = &unk_279734960;
    block[4] = self;
    v23 = v4;
    v24 = v7;
    dispatch_async(v14, block);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __74__HMDHomeNFCReaderKeyManager_handleHomeDidUpdateNFCReaderKeyNotification___block_invoke(id *a1)
{
  v67 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v3 = objc_autoreleasePoolPush();
  v4 = a1[4];
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [v2 UUID];
    *buf = 138543618;
    v60 = v6;
    v61 = 2112;
    v62 = v7;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling HomeDidUpdateNFCReaderKeyNotification", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = [a1[5] userInfo];
  v9 = [v8 objectForKeyedSubscript:@"HMDHomeDidUpdateNFCReaderKeyNotificationKeyPreviousNFCReaderKey"];

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
    v13 = a1[4];
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [v2 UUID];
      *buf = 138543874;
      v60 = v15;
      v61 = 2112;
      v62 = v16;
      v63 = 2112;
      v64 = v11;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing keychain item for nfc reader key: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    [a1[4] removeKeychainItemForReaderKey:v11 home:a1[6] flow:v2];
  }

  v17 = [a1[6] nfcReaderKey];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 identifier];
    v20 = [HMDHomeNFCReaderKey keychainItemAccountAttributeValueWithHome:a1[6] keyIdentifier:v19];
    v21 = a1[4];
    v58 = 0;
    v22 = [v21 readerKeyWithKeychainItemIdentifier:v20 error:&v58 flow:v2];
    v23 = v58;
    if (v22)
    {
      v54 = v22;
      v24 = [a1[4] keyIdentifiersAlreadyUpdated];
      v25 = [v24 containsObject:v19];

      if (v25)
      {
        v26 = objc_autoreleasePoolPush();
        v27 = a1[4];
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = HMFGetLogIdentifier();
          [v2 UUID];
          v30 = v51 = v26;
          *buf = 138543874;
          v60 = v29;
          v61 = 2112;
          v62 = v30;
          v63 = 2112;
          v64 = v19;
          _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Already updated Reader key with key identifier: %@", buf, 0x20u);

          v26 = v51;
        }

        objc_autoreleasePoolPop(v26);
      }

      else
      {
        v53 = v23;
        v41 = [a1[4] keyIdentifiersAlreadyUpdated];
        [v41 addObject:v19];

        v42 = objc_autoreleasePoolPush();
        v43 = a1[4];
        v44 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          v45 = HMFGetLogIdentifier();
          [v2 UUID];
          v46 = v50 = v42;
          *buf = 138543874;
          v60 = v45;
          v61 = 2112;
          v62 = v46;
          v63 = 2112;
          v64 = v19;
          _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Caching did update reader key with key identifier: %@", buf, 0x20u);

          v42 = v50;
        }

        objc_autoreleasePoolPop(v42);
        v47 = dispatch_time(0, 86400000000000);
        v48 = [a1[4] workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __74__HMDHomeNFCReaderKeyManager_handleHomeDidUpdateNFCReaderKeyNotification___block_invoke_202;
        block[3] = &unk_279734960;
        block[4] = a1[4];
        v56 = v2;
        v57 = v19;
        dispatch_after(v47, v48, block);

        logAndPostNotification(@"HMDHomeNFCReaderKeyKeychainItemAvailableNotification", a1[4], 0);
        v23 = v53;
      }

      v22 = v54;
    }

    else
    {
      v36 = objc_autoreleasePoolPush();
      v37 = a1[4];
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = HMFGetLogIdentifier();
        [v2 UUID];
        v40 = v52 = v36;
        *buf = 138544130;
        v60 = v39;
        v61 = 2112;
        v62 = v40;
        v63 = 2112;
        v64 = v19;
        v65 = 2112;
        v66 = v20;
        _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Failed to fetch reader key with identifier: %@ and keychain item identifier: %@", buf, 0x2Au);

        v36 = v52;
        v22 = 0;
      }

      objc_autoreleasePoolPop(v36);
    }
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    v32 = a1[4];
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      v35 = [v2 UUID];
      *buf = 138543618;
      v60 = v34;
      v61 = 2112;
      v62 = v35;
      _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Received home nfc reader key did update notification but its not set for home", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
  }

  v49 = *MEMORY[0x277D85DE8];
}

void __74__HMDHomeNFCReaderKeyManager_handleHomeDidUpdateNFCReaderKeyNotification___block_invoke_202(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) UUID];
    v7 = *(a1 + 48);
    v10 = 138543874;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing key identifier from keyIdentifiersAlreadyUpdated: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = [*(a1 + 32) keyIdentifiersAlreadyUpdated];
  [v8 removeObject:*(a1 + 48)];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)unconfigure
{
  v3 = [(HMDHomeNFCReaderKeyManager *)self messageDispatcher];
  [v3 deregisterReceiver:self];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v5 = [(HMDHomeNFCReaderKeyManager *)self accessoryManager];
  [v5 unconfigure];
}

- (void)rollReaderKeyWithFlow:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HMDHomeNFCReaderKeyManager_rollReaderKeyWithFlow_withCompletion___block_invoke;
  block[3] = &unk_2797355D0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __67__HMDHomeNFCReaderKeyManager_rollReaderKeyWithFlow_withCompletion___block_invoke(id *a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [a1[5] UUID];
    *buf = 138543618;
    v40 = v5;
    v41 = 2112;
    v42 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] rollReaderKeyWithFlow", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  if (isInternalBuild())
  {
    v7 = [a1[4] home];
    v8 = [v7 currentUser];
    v9 = v8;
    if (v7 && v8)
    {
      if (([v8 isOwner] & 1) == 0)
      {
        v10 = objc_autoreleasePoolPush();
        v11 = a1[4];
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = HMFGetLogIdentifier();
          v14 = [a1[5] UUID];
          *buf = 138543618;
          v40 = v13;
          v41 = 2112;
          v42 = v14;
          _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] We are not the owner, so unable to roll reader key", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v10);
        v15 = a1[6];
        v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
        v15[2](v15, v16);
      }

      v17 = a1[4];
      v18 = a1[5];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __67__HMDHomeNFCReaderKeyManager_rollReaderKeyWithFlow_withCompletion___block_invoke_199;
      v35[3] = &unk_279735BE8;
      v19 = a1[6];
      v20 = a1[4];
      v38 = v19;
      v35[4] = v20;
      v36 = v7;
      v37 = a1[5];
      [v17 deleteKeychainItemForNFCReaderKeyIsForceUpdate:1 withFlow:v18 completion:v35];

      v21 = v38;
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = a1[4];
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v32 = [a1[5] UUID];
        *buf = 138544130;
        v40 = v31;
        v41 = 2112;
        v42 = v32;
        v43 = 2112;
        v44 = v7;
        v45 = 2112;
        v46 = v9;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to roll reader key, home or currentUser is nil. home: %@, currentUser: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v28);
      v33 = a1[6];
      v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      v33[2](v33, v21);
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = a1[4];
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [a1[5] UUID];
      *buf = 138543618;
      v40 = v25;
      v41 = 2112;
      v42 = v26;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to roll reader key, not internal build", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v27 = a1[6];
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    v27[2](v27, v7);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __67__HMDHomeNFCReaderKeyManager_rollReaderKeyWithFlow_withCompletion___block_invoke_199(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    v6 = v5;
    if (v5 != *MEMORY[0x277CCFD28])
    {

LABEL_6:
      (*(*(a1 + 56) + 16))();
      goto LABEL_7;
    }

    v7 = [v4 code];

    if (v7 != 2)
    {
      goto LABEL_6;
    }
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__HMDHomeNFCReaderKeyManager_rollReaderKeyWithFlow_withCompletion___block_invoke_2;
  v11[3] = &unk_27972CD18;
  v10 = *(a1 + 48);
  v12 = *(a1 + 56);
  [v8 createReaderKeyInKeychainForHome:v9 isForceUpdate:1 flow:v10 completion:v11];

LABEL_7:
}

- (void)fetchOrCreateReaderKeyWithRequiresPrivateKey:(BOOL)a3 flow:(id)a4 completion:(id)a5
{
  v84 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v10);

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v8 UUID];
    v16 = HMFBooleanToString();
    *buf = 138543874;
    v75 = v14;
    v76 = 2112;
    v77 = v15;
    v78 = 2112;
    v79 = v16;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetch or create reader key with requiresPrivateKey: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v17 = [(HMDHomeNFCReaderKeyManager *)v12 home];
  if (v17)
  {
    v18 = [(HMDHomeNFCReaderKeyManager *)v12 dataSource];
    v19 = [v18 isWatch];

    v20 = [v17 currentUser];
    v21 = [v17 nfcReaderKey];
    v22 = v21;
    if (((v19 & 1) != 0 || !a3) && v21)
    {
      v23 = objc_autoreleasePoolPush();
      v24 = v12;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        v27 = [v8 UUID];
        *buf = 138543874;
        v75 = v26;
        v76 = 2112;
        v77 = v27;
        v78 = 2112;
        v79 = v22;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Current device is watch or caller does not requires private key, fetched nfc reader key from home graph: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v23);
      v9[2](v9, v22, 0);
      goto LABEL_23;
    }

    if ([v20 isAdministrator])
    {
      v33 = [v20 privilege];
      v34 = objc_autoreleasePoolPush();
      v35 = v12;
      v36 = HMFGetOSLogHandle();
      v37 = os_log_type_enabled(v36, OS_LOG_TYPE_INFO);
      if (v33 == 4)
      {
        if (v37)
        {
          v38 = HMFGetLogIdentifier();
          v39 = [v8 UUID];
          *buf = 138543618;
          v75 = v38;
          v76 = 2112;
          v77 = v39;
          _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Current user is shared admin, sending request to resident to create nfc reader key", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v34);
        [(HMDHomeNFCReaderKeyManager *)v35 requestPrimaryResidentToFetchOrCreateReaderKeyWithFlow:v8 completion:v9];
        goto LABEL_23;
      }

      if (!v19)
      {
        if (v37)
        {
          v51 = HMFGetLogIdentifier();
          v52 = [v8 UUID];
          *buf = 138543618;
          v75 = v51;
          v76 = 2112;
          v77 = v52;
          _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Current user is owner, fetching or creating nfc reader key from keychain", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v34);
        v53 = [v17 nfcReaderKey];
        v47 = [v53 identifier];

        if (v47)
        {
          v54 = [HMDHomeNFCReaderKey keychainItemAccountAttributeValueWithHome:v17 keyIdentifier:v47];
          v55 = objc_autoreleasePoolPush();
          v56 = v35;
          v57 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v69 = v55;
            v59 = v58 = v54;
            [v8 UUID];
            v60 = v71 = v47;
            *buf = 138544130;
            v75 = v59;
            v76 = 2112;
            v77 = v60;
            v78 = 2112;
            v79 = v58;
            v80 = 2112;
            v81 = v22;
            _os_log_impl(&dword_2531F8000, v57, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Looking for key chain item with identifier: %@ for reader key: %@", buf, 0x2Au);

            v47 = v71;
            v54 = v58;
            v55 = v69;
          }

          objc_autoreleasePoolPop(v55);
          v73 = 0;
          v61 = [(HMDHomeNFCReaderKeyManager *)v56 readerKeyWithKeychainItemIdentifier:v54 error:&v73 flow:v8];
          v62 = v73;
          if (v61)
          {
            v9[2](v9, v61, 0);
          }

          else
          {
            context = objc_autoreleasePoolPush();
            v70 = v56;
            v64 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v65 = v72 = v47;
              [v8 UUID];
              v66 = v67 = v54;
              *buf = 138544386;
              v75 = v65;
              v76 = 2112;
              v77 = v66;
              v78 = 2112;
              v79 = v67;
              v80 = 2112;
              v81 = v22;
              v82 = 2112;
              v83 = v62;
              _os_log_impl(&dword_2531F8000, v64, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch keychain item with identifier: %@ for nfc reader key %@:%@", buf, 0x34u);

              v54 = v67;
              v47 = v72;
            }

            objc_autoreleasePoolPop(context);
            (v9)[2](v9, 0, v62);
          }
        }

        else
        {
          v63 = [(HMDHomeNFCReaderKeyManager *)v35 primaryResidentDevice];
          v62 = v63;
          if (v63 && ([v63 isCurrentDevice] & 1) == 0)
          {
            [(HMDHomeNFCReaderKeyManager *)v35 requestDevice:v62 toCreateKeychainItemForReaderKeyWithFlow:v8 completion:v9];
          }

          else
          {
            [(HMDHomeNFCReaderKeyManager *)v35 createReaderKeyInKeychainForHome:v17 isForceUpdate:0 flow:v8 completion:v9];
          }
        }

        goto LABEL_22;
      }

      if (v37)
      {
        v49 = HMFGetLogIdentifier();
        v50 = [v8 UUID];
        *buf = 138543618;
        v75 = v49;
        v76 = 2112;
        v77 = v50;
        _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Current user is owner. Fetch or create reader key from keychain is not supported on watch", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v34);
      v45 = MEMORY[0x277CCA9B8];
      v46 = 48;
    }

    else
    {
      v40 = objc_autoreleasePoolPush();
      v41 = v12;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = HMFGetLogIdentifier();
        v44 = [v8 UUID];
        *buf = 138543618;
        v75 = v43;
        v76 = 2112;
        v77 = v44;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Current user is not admin and home key doesn't exist in home graph, returning nil", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v40);
      v45 = MEMORY[0x277CCA9B8];
      v46 = 2;
    }

    v47 = [v45 hmErrorWithCode:v46];
    (v9)[2](v9, 0, v47);
LABEL_22:

LABEL_23:
    goto LABEL_24;
  }

  v28 = objc_autoreleasePoolPush();
  v29 = v12;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v31 = HMFGetLogIdentifier();
    v32 = [v8 UUID];
    *buf = 138543618;
    v75 = v31;
    v76 = 2112;
    v77 = v32;
    _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create reader key, home is nil", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v28);
  v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
  (v9)[2](v9, 0, v20);
LABEL_24:

  v48 = *MEMORY[0x277D85DE8];
}

- (void)fetchOrCreateReaderKeyOnQueueWithRequiresPrivateKey:(BOOL)a3 flow:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __98__HMDHomeNFCReaderKeyManager_fetchOrCreateReaderKeyOnQueueWithRequiresPrivateKey_flow_completion___block_invoke;
  v13[3] = &unk_279732430;
  v16 = a3;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)handleCreateKeychainItemForReaderKeyMessage:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 flow];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v6 UUID];
    *buf = 138543874;
    v45 = v10;
    v46 = 2112;
    v47 = v11;
    v48 = 2112;
    v49 = v4;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling message to create keychain item for reader key: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [(HMDHomeNFCReaderKeyManager *)v8 home];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 nfcReaderKey];
    v15 = [v14 identifier];

    if (v15)
    {
      v16 = [HMDHomeNFCReaderKey keychainItemAccountAttributeValueWithHome:v13 keyIdentifier:v15];
      v41 = 0;
      v17 = [(HMDHomeNFCReaderKeyManager *)v8 readerKeyWithKeychainItemIdentifier:v16 error:&v41 flow:v6];
      v18 = v41;
      v19 = objc_autoreleasePoolPush();
      v20 = v8;
      v21 = HMFGetOSLogHandle();
      v22 = v21;
      if (v17)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v23 = v37 = v16;
          [v6 UUID];
          v24 = v35 = v19;
          *buf = 138543874;
          v45 = v23;
          v46 = 2112;
          v47 = v24;
          v48 = 2112;
          v49 = v17;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Keychain item is already created for reader key: %@", buf, 0x20u);

          v19 = v35;
          v16 = v37;
        }

        objc_autoreleasePoolPop(v19);
        v42 = @"HMDHomeCreateKeychainItemForNFCReaderKeyMessageKeyReaderKey";
        v25 = [v17 externalRepresentation];
        v43 = v25;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];

        [v4 respondWithPayload:v26];
      }

      else
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v32 = v36 = v19;
          [v6 UUID];
          v33 = v38 = v16;
          *buf = 138543874;
          v45 = v32;
          v46 = 2112;
          v47 = v33;
          v48 = 2112;
          v49 = v18;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch keychain item for nfc reader key: %@", buf, 0x20u);

          v16 = v38;
          v19 = v36;
        }

        objc_autoreleasePoolPop(v19);
        [v4 respondWithError:v18];
      }
    }

    else
    {
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __74__HMDHomeNFCReaderKeyManager_handleCreateKeychainItemForReaderKeyMessage___block_invoke;
      v39[3] = &unk_27972CCF0;
      v40 = v4;
      [(HMDHomeNFCReaderKeyManager *)v8 createReaderKeyInKeychainForHome:v13 isForceUpdate:0 flow:v6 completion:v39];
      v18 = v40;
    }
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = v8;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      v31 = [v6 UUID];
      *buf = 138543618;
      v45 = v30;
      v46 = 2112;
      v47 = v31;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] I am not configured with a home", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v4 respondWithError:v15];
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __74__HMDHomeNFCReaderKeyManager_handleCreateKeychainItemForReaderKeyMessage___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v8 = @"HMDHomeCreateKeychainItemForNFCReaderKeyMessageKeyReaderKey";
    v3 = [a2 externalRepresentation];
    v9[0] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

    [*(a1 + 32) respondWithPayload:v4];
    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *MEMORY[0x277D85DE8];

    [v6 respondWithError:?];
  }
}

- (void)handleFetchOrCreateReaderKeyMessage:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 flow];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v6 UUID];
    *buf = 138543874;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = v4;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling message to fetch or create reader key: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__HMDHomeNFCReaderKeyManager_handleFetchOrCreateReaderKeyMessage___block_invoke;
  v15[3] = &unk_27972CCC8;
  v15[4] = v8;
  v16 = v6;
  v17 = v4;
  v12 = v4;
  v13 = v6;
  [(HMDHomeNFCReaderKeyManager *)v8 fetchOrCreateReaderKeyWithRequiresPrivateKey:0 flow:v13 completion:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __66__HMDHomeNFCReaderKeyManager_handleFetchOrCreateReaderKeyMessage___block_invoke(id *a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v33 = 0;
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v33];
    v8 = v33;
    if (v7)
    {
      v34 = @"HMDHomeFetchOrCreateNFCReaderKeyMessageKeyReaderKey";
      v35 = v7;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v10 = objc_autoreleasePoolPush();
      v11 = a1[4];
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        [a1[5] UUID];
        v31 = v6;
        v15 = v14 = v8;
        v16 = a1[6];
        *buf = 138544130;
        v37 = v13;
        v38 = 2112;
        v39 = v15;
        v40 = 2112;
        v41 = v16;
        v42 = 2112;
        v43 = v9;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Responding to fetch or create reader key message: %@ with payload: %@ ", buf, 0x2Au);

        v8 = v14;
        v6 = v31;
      }

      objc_autoreleasePoolPop(v10);
      [a1[6] respondWithPayload:v9];
    }

    else
    {
      v9 = [MEMORY[0x277CBEB38] dictionary];
      [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
      v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1 userInfo:v9];
      [a1[6] respondWithError:v23];
      v24 = objc_autoreleasePoolPush();
      v25 = a1[4];
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        [a1[5] UUID];
        v27 = v32 = v24;
        v28 = a1[6];
        *buf = 138544130;
        v37 = v30;
        v38 = 2112;
        v39 = v27;
        v40 = 2112;
        v41 = v28;
        v42 = 2112;
        v43 = v23;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Responding to fetch or create reader key message: %@ with: %@", buf, 0x2Au);

        v24 = v32;
      }

      objc_autoreleasePoolPop(v24);
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = a1[4];
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [a1[5] UUID];
      v22 = a1[6];
      *buf = 138544130;
      v37 = v20;
      v38 = 2112;
      v39 = v21;
      v40 = 2112;
      v41 = v22;
      v42 = 2112;
      v43 = v6;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Responding to fetch or create reader key message: %@ with: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v17);
    [a1[6] respondWithError:v6];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)handleDeleteKeychainItemForNFCReaderKey:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 flow];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543362;
    v16 = v10;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Handling message to delete keychain item for nfc reader key", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__HMDHomeNFCReaderKeyManager_handleDeleteKeychainItemForNFCReaderKey___block_invoke;
  v13[3] = &unk_2797358C8;
  v13[4] = v8;
  v14 = v4;
  v11 = v4;
  [(HMDHomeNFCReaderKeyManager *)v8 deleteKeychainItemForNFCReaderKeyIsForceUpdate:0 withFlow:v6 completion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __70__HMDHomeNFCReaderKeyManager_handleDeleteKeychainItemForNFCReaderKey___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v8;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to handle message to delete nfc reader key: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) respondWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfully handled message to delete nfc reader key", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v10 = *(a1 + 40);
    v13 = @"HMDHomeDeleteKeychainItemForNFCReaderKeyMessageKeyDidSucceed";
    v14 = MEMORY[0x277CBEC38];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [v10 respondWithPayload:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)configureWithHome:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v36 = v8;
    v37 = 2112;
    v38 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Configuring with home: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDHomeNFCReaderKeyManager *)v6 setHome:v4];
  v9 = [v4 msgDispatcher];
  [(HMDHomeNFCReaderKeyManager *)v6 setMessageDispatcher:v9];

  v10 = [(HMDHomeNFCReaderKeyManager *)v6 dataSource];
  v11 = [v10 isResidentCapable];

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v6;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Registering for messages", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [HMDUserMessagePolicy userMessagePolicyWithHome:v4 userPrivilege:4 remoteAccessRequired:0];
    v17 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
    [v17 setRoles:{objc_msgSend(v17, "roles") | 4}];
    v18 = [(HMDHomeNFCReaderKeyManager *)v13 messageDispatcher];
    v34[0] = v16;
    v34[1] = v17;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
    [v18 registerForMessage:@"HMDHomeFetchOrCreateNFCReaderKeyMessage" receiver:v13 policies:v19 selector:sel_handleFetchOrCreateReaderKeyMessage_];

    v20 = [(HMDHomeNFCReaderKeyManager *)v13 messageDispatcher];
    v33[0] = v16;
    v33[1] = v17;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
    [v20 registerForMessage:@"HMDHomeCreateKeychainItemForNFCReaderKeyMessage" receiver:v13 policies:v21 selector:sel_handleCreateKeychainItemForReaderKeyMessage_];

    v22 = [(HMDHomeNFCReaderKeyManager *)v13 messageDispatcher];
    v32[0] = v16;
    v32[1] = v17;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    [v22 registerForMessage:@"HMDHomeDeleteKeychainItemForNFCReaderKeyMessage" receiver:v13 policies:v23 selector:sel_handleDeleteKeychainItemForNFCReaderKey_];
  }

  v24 = [MEMORY[0x277CCAB98] defaultCenter];
  v25 = [v4 homeManager];
  [v24 addObserver:v6 selector:sel_handleHomeRemovedNotification_ name:@"HMDHomeRemovedNotification" object:v25];

  v26 = [MEMORY[0x277CCAB98] defaultCenter];
  v27 = *MEMORY[0x277CFE930];
  v28 = [(HMDHomeNFCReaderKeyManager *)v6 keychainStore];
  [v26 addObserver:v6 selector:sel_handleSystemKeychainStoreUpdatedNotification_ name:v27 object:v28];

  v29 = [MEMORY[0x277CCAB98] defaultCenter];
  [v29 addObserver:v6 selector:sel_handleHomeDidUpdateNFCReaderKeyNotification_ name:@"HMDHomeDidUpdateNFCReaderKeyNotification" object:v4];

  v30 = [(HMDHomeNFCReaderKeyManager *)v6 accessoryManager];
  [v30 configureWithHome:v4];

  v31 = *MEMORY[0x277D85DE8];
}

- (HMDHomeNFCReaderKeyManager)initWithUUID:(id)a3 workQueue:(id)a4 keychainStore:(id)a5 dataSource:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = HMDHomeNFCReaderKeyManager;
  v14 = [(HMDHomeNFCReaderKeyManager *)&v22 init];
  if (v14)
  {
    v15 = [v10 copy];
    uuid = v14->_uuid;
    v14->_uuid = v15;

    objc_storeStrong(&v14->_workQueue, a4);
    objc_storeStrong(&v14->_keychainStore, a5);
    objc_storeStrong(&v14->_dataSource, a6);
    v17 = [[HMDHomeWalletKeyAccessoryManager alloc] initWithUUID:v10 workQueue:v11];
    accessoryManager = v14->_accessoryManager;
    v14->_accessoryManager = v17;

    v19 = [MEMORY[0x277CBEB58] set];
    keyIdentifiersAlreadyUpdated = v14->_keyIdentifiersAlreadyUpdated;
    v14->_keyIdentifiersAlreadyUpdated = v19;
  }

  return v14;
}

- (HMDHomeNFCReaderKeyManager)initWithUUID:(id)a3 workQueue:(id)a4
{
  v6 = MEMORY[0x277CFEC78];
  v7 = a4;
  v8 = a3;
  v9 = [v6 systemStore];
  v10 = objc_alloc_init(HMDHomeWalletDataSource);
  v11 = [(HMDHomeNFCReaderKeyManager *)self initWithUUID:v8 workQueue:v7 keychainStore:v9 dataSource:v10];

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t70_129739 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t70_129739, &__block_literal_global_129740);
  }

  v3 = logCategory__hmf_once_v71_129741;

  return v3;
}

uint64_t __41__HMDHomeNFCReaderKeyManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v71_129741;
  logCategory__hmf_once_v71_129741 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end