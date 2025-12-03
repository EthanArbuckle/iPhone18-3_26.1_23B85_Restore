@interface HMDHomeNFCReaderKeyManager
+ (id)logCategory;
- (HMDDevice)primaryResidentDevice;
- (HMDHome)home;
- (HMDHomeNFCReaderKeyManager)initWithUUID:(id)d workQueue:(id)queue;
- (HMDHomeNFCReaderKeyManager)initWithUUID:(id)d workQueue:(id)queue keychainStore:(id)store dataSource:(id)source;
- (id)createNFCReaderKeyModelWithHome:(id)home nfcReaderKey:(id)key;
- (id)fetchOrCreateReaderKeyForPairingWithFlow:(id)flow;
- (id)logIdentifier;
- (id)readerKeyWithKeychainItemIdentifier:(id)identifier error:(id *)error flow:(id)flow;
- (id)requestPrimaryResidentToFetchOrCreateReaderKeyWithFlow:(id)flow;
- (void)configureWithHome:(id)home;
- (void)createReaderKeyInKeychainForHome:(id)home isForceUpdate:(BOOL)update flow:(id)flow;
- (void)createReaderKeyInKeychainForHome:(id)home isForceUpdate:(BOOL)update flow:(id)flow completion:(id)completion;
- (void)deleteKeychainItemForNFCReaderKeyIsForceUpdate:(BOOL)update withFlow:(id)flow completion:(id)completion;
- (void)fetchOrCreateReaderKeyOnQueueWithRequiresPrivateKey:(BOOL)key flow:(id)flow completion:(id)completion;
- (void)fetchOrCreateReaderKeyWithRequiresPrivateKey:(BOOL)key flow:(id)flow completion:(id)completion;
- (void)handleCreateKeychainItemForReaderKeyMessage:(id)message;
- (void)handleDeleteKeychainItemForNFCReaderKey:(id)key;
- (void)handleFetchOrCreateReaderKeyMessage:(id)message;
- (void)handleHomeDidUpdateNFCReaderKeyNotification:(id)notification;
- (void)handleHomeRemovedNotification:(id)notification;
- (void)handleSystemKeychainStoreUpdatedNotification:(id)notification;
- (void)pullFromKeychainWithFlow:(HMFFlow *)flow completionHandler:(id)handler;
- (void)removeKeychainItemForReaderKey:(id)key home:(id)home flow:(id)flow;
- (void)requestDevice:(id)device toCreateKeychainItemForReaderKeyWithFlow:(id)flow completion:(id)completion;
- (void)requestPrimaryResidentToFetchOrCreateReaderKeyWithFlow:(id)flow completion:(id)completion;
- (void)rollReaderKeyWithFlow:(id)flow withCompletion:(id)completion;
- (void)unconfigure;
@end

@implementation HMDHomeNFCReaderKeyManager

- (void)pullFromKeychainWithFlow:(HMFFlow *)flow completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = flow;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22A4DD9DC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22A57B588;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22A57B590;
  v15[5] = v14;
  flowCopy = flow;
  selfCopy = self;
  sub_229859F70(0, 0, v10, &unk_22A581CC0, v15);
}

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  uuid = [(HMDHomeNFCReaderKeyManager *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)requestPrimaryResidentToFetchOrCreateReaderKeyWithFlow:(id)flow completion:(id)completion
{
  v42[1] = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  primaryResidentDevice = [(HMDHomeNFCReaderKeyManager *)self primaryResidentDevice];
  if (primaryResidentDevice)
  {
    v10 = [HMDRemoteDeviceMessageDestination alloc];
    messageTargetUUID = [(HMDHomeNFCReaderKeyManager *)self messageTargetUUID];
    v12 = [(HMDRemoteDeviceMessageDestination *)v10 initWithTarget:messageTargetUUID device:primaryResidentDevice];

    v13 = [HMDRemoteMessage alloc];
    v41 = *MEMORY[0x277D0F1C8];
    v14 = HMFEncodedRootObject();
    v42[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    v16 = [(HMDRemoteMessage *)v13 initWithName:@"HMDHomeFetchOrCreateNFCReaderKeyMessage" destination:v12 payload:v15 type:0 timeout:1 secure:0.0];

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __96__HMDHomeNFCReaderKeyManager_requestPrimaryResidentToFetchOrCreateReaderKeyWithFlow_completion___block_invoke;
    v30[3] = &unk_2786862C0;
    v30[4] = self;
    v17 = flowCopy;
    v31 = v17;
    v32 = completionCopy;
    [(HMDRemoteMessage *)v16 setResponseHandler:v30];
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      uUID = [v17 UUID];
      *buf = 138544130;
      v34 = v21;
      v35 = 2112;
      v36 = uUID;
      v37 = 2112;
      v38 = v16;
      v39 = 2112;
      v40 = primaryResidentDevice;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Sending message to fetch or create reader key: %@ to primary resident: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v18);
    messageDispatcher = [(HMDHomeNFCReaderKeyManager *)selfCopy messageDispatcher];
    [messageDispatcher sendMessage:v16];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v34 = v27;
      v35 = 2112;
      v36 = uUID2;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Did not send message to fetch or create reader key, there is no primary resident that support wallet key", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (*(completionCopy + 2))(completionCopy, 0, v12);
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
      block[3] = &unk_278689AB8;
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
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to decode reader key %@:%@", buf, 0x2Au);

        v19 = v29;
        v5 = v30;
      }

      objc_autoreleasePoolPop(v19);
      v24 = [MEMORY[0x277CBEB38] dictionary];
      [v24 setObject:v9 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
      v25 = [a1[4] workQueue];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __96__HMDHomeNFCReaderKeyManager_requestPrimaryResidentToFetchOrCreateReaderKeyWithFlow_completion___block_invoke_250;
      v35[3] = &unk_27868A7A0;
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
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Missing reader key: %@ in payload: %@ error: %@", buf, 0x34u);

      v5 = v16;
    }

    objc_autoreleasePoolPop(v12);
    v18 = [a1[4] workQueue];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __96__HMDHomeNFCReaderKeyManager_requestPrimaryResidentToFetchOrCreateReaderKeyWithFlow_completion___block_invoke_248;
    v39[3] = &unk_278688B80;
    v40 = a1[6];
    dispatch_async(v18, v39);

    v9 = v40;
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __96__HMDHomeNFCReaderKeyManager_requestPrimaryResidentToFetchOrCreateReaderKeyWithFlow_completion___block_invoke_248(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
  (*(v1 + 16))(v1, 0, v2);
}

void __96__HMDHomeNFCReaderKeyManager_requestPrimaryResidentToFetchOrCreateReaderKeyWithFlow_completion___block_invoke_250(uint64_t a1)
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully fetched nfc reader key: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 48);
  result = (*(*(a1 + 56) + 16))();
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)requestDevice:(id)device toCreateKeychainItemForReaderKeyWithFlow:(id)flow completion:(id)completion
{
  v45[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543874;
    v37 = v15;
    v38 = 2112;
    v39 = uUID;
    v40 = 2112;
    v41 = deviceCopy;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Requesting primary resident device to create keychain item for nfc reader key. residentDevice: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v17 = [HMDRemoteDeviceMessageDestination alloc];
  messageTargetUUID = [(HMDHomeNFCReaderKeyManager *)selfCopy messageTargetUUID];
  v19 = [(HMDRemoteDeviceMessageDestination *)v17 initWithTarget:messageTargetUUID device:deviceCopy];

  v20 = [HMDRemoteMessage alloc];
  v44 = *MEMORY[0x277D0F1C8];
  v21 = HMFEncodedRootObject();
  v45[0] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];
  v23 = [(HMDRemoteMessage *)v20 initWithName:@"HMDHomeCreateKeychainItemForNFCReaderKeyMessage" destination:v19 payload:v22 type:0 timeout:1 secure:0.0];

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __96__HMDHomeNFCReaderKeyManager_requestDevice_toCreateKeychainItemForReaderKeyWithFlow_completion___block_invoke;
  v33[3] = &unk_2786862C0;
  v33[4] = selfCopy;
  v24 = flowCopy;
  v34 = v24;
  v25 = completionCopy;
  v35 = v25;
  [(HMDRemoteMessage *)v23 setResponseHandler:v33];
  v26 = objc_autoreleasePoolPush();
  v27 = selfCopy;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = HMFGetLogIdentifier();
    uUID2 = [v24 UUID];
    *buf = 138544130;
    v37 = v29;
    v38 = 2112;
    v39 = uUID2;
    v40 = 2112;
    v41 = v23;
    v42 = 2112;
    v43 = deviceCopy;
    _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Sending message to create keychain item for reader key: %@ to primary resident: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v26);
  messageDispatcher = [(HMDHomeNFCReaderKeyManager *)v27 messageDispatcher];
  [messageDispatcher sendMessage:v23];

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
      block[3] = &unk_278689AB8;
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
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to decode reader key keychain item %@:%@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v20);
      v25 = [MEMORY[0x277CBEB38] dictionary];
      [v25 setObject:0 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
      v26 = [a1[4] workQueue];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __96__HMDHomeNFCReaderKeyManager_requestDevice_toCreateKeychainItemForReaderKeyWithFlow_completion___block_invoke_247;
      v34[3] = &unk_27868A7A0;
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
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Missing reader key keychain item: %@ in payload: %@ error: %@", buf, 0x34u);

      v5 = v17;
    }

    objc_autoreleasePoolPop(v13);
    v19 = [a1[4] workQueue];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __96__HMDHomeNFCReaderKeyManager_requestDevice_toCreateKeychainItemForReaderKeyWithFlow_completion___block_invoke_246;
    v37[3] = &unk_278688B80;
    v38 = a1[6];
    dispatch_async(v19, v37);

    v12 = v38;
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __96__HMDHomeNFCReaderKeyManager_requestDevice_toCreateKeychainItemForReaderKeyWithFlow_completion___block_invoke_246(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
  (*(v1 + 16))(v1, 0, v2);
}

void __96__HMDHomeNFCReaderKeyManager_requestDevice_toCreateKeychainItemForReaderKeyWithFlow_completion___block_invoke_247(uint64_t a1)
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Resident successfully created keychain item for nfc reader key: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 48);
  result = (*(*(a1 + 56) + 16))();
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (HMDDevice)primaryResidentDevice
{
  home = [(HMDHomeNFCReaderKeyManager *)self home];
  residentDeviceManager = [home residentDeviceManager];
  primaryResidentDevice = [residentDeviceManager primaryResidentDevice];

  device = [primaryResidentDevice device];
  if (device)
  {
    capabilities = [primaryResidentDevice capabilities];
    if ([capabilities supportsWalletKey])
    {
      isReachable = [primaryResidentDevice isReachable];

      if (isReachable)
      {
        v8 = device;
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

- (void)removeKeychainItemForReaderKey:(id)key home:(id)home flow:(id)flow
{
  v58 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  homeCopy = home;
  flowCopy = flow;
  workQueue = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  identifier = [keyCopy identifier];
  v47 = homeCopy;
  v12 = [HMDHomeNFCReaderKey keychainItemAccountAttributeValueWithHome:homeCopy keyIdentifier:?];
  keychainStore = [(HMDHomeNFCReaderKeyManager *)self keychainStore];
  v49 = 0;
  v14 = [keychainStore allKeychainItemsForType:&unk_283E73B20 identifier:v12 syncable:MEMORY[0x277CBEC38] error:&v49];
  v15 = v49;
  firstObject = [v14 firstObject];

  userInfo = [v15 userInfo];
  v18 = [userInfo hmf_errorForKey:*MEMORY[0x277CCA7E8]];

  if (!firstObject)
  {
    code = [v18 code];
    v45 = objc_autoreleasePoolPush();
    selfCopy = self;
    v36 = HMFGetOSLogHandle();
    v26 = v36;
    if (code == -25300)
    {
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = HMFGetLogIdentifier();
        uUID = [flowCopy UUID];
        *buf = 138543618;
        v51 = v37;
        v52 = 2112;
        v53 = uUID;
        v39 = "%{public}@[Flow: %@] Not removing nfc reader key, keychain item does not exist";
        v40 = v26;
        v41 = OS_LOG_TYPE_INFO;
        v42 = 22;
LABEL_14:
        _os_log_impl(&dword_229538000, v40, v41, v39, buf, v42);
      }
    }

    else if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      *buf = 138543874;
      v51 = v37;
      v52 = 2112;
      v53 = uUID;
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
  v19 = keyCopy;
  keychainStore2 = [(HMDHomeNFCReaderKeyManager *)self keychainStore];
  v48 = v15;
  v21 = [keychainStore2 deleteKeychainItem:firstObject error:&v48];
  v22 = v48;

  v23 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v25 = HMFGetOSLogHandle();
  v26 = v25;
  if (v21)
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v28 = v27 = v23;
      uUID2 = [flowCopy UUID];
      *buf = 138543874;
      v51 = v28;
      v52 = 2112;
      v53 = uUID2;
      v54 = 2112;
      v55 = firstObject;
      v30 = "%{public}@[Flow: %@] Successfully removed nfc reader key keychain item %@";
      v31 = v26;
      v32 = OS_LOG_TYPE_INFO;
      v33 = 32;
LABEL_10:
      _os_log_impl(&dword_229538000, v31, v32, v30, buf, v33);

      v23 = v27;
    }
  }

  else if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    HMFGetLogIdentifier();
    v28 = v27 = v23;
    uUID2 = [flowCopy UUID];
    *buf = 138544130;
    v51 = v28;
    v52 = 2112;
    v53 = uUID2;
    v54 = 2112;
    v55 = firstObject;
    v56 = 2112;
    v57 = v22;
    v30 = "%{public}@[Flow: %@] Failed to remove nfc reader key keychain item %@:%@";
    v31 = v26;
    v32 = OS_LOG_TYPE_ERROR;
    v33 = 42;
    goto LABEL_10;
  }

  v15 = v22;
  keyCopy = v19;
  v18 = v44;
LABEL_16:

  objc_autoreleasePoolPop(v23);
  v43 = *MEMORY[0x277D85DE8];
}

- (id)createNFCReaderKeyModelWithHome:(id)home nfcReaderKey:(id)key
{
  keyCopy = key;
  homeCopy = home;
  workQueue = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = [HMDHomeModel alloc];
  uuid = [homeCopy uuid];
  homeManager = [homeCopy homeManager];

  uuid2 = [homeManager uuid];
  v13 = [(HMDBackingStoreModelObject *)v9 initWithObjectChangeType:2 uuid:uuid parentUUID:uuid2];

  [(HMDHomeModel *)v13 setNfcReaderKey:keyCopy];

  return v13;
}

- (void)createReaderKeyInKeychainForHome:(id)home isForceUpdate:(BOOL)update flow:(id)flow
{
  updateCopy = update;
  v73 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  flowCopy = flow;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v66 = v14;
    v67 = 2112;
    v68 = uUID;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Creating reader key", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v16 = +[HMDHomeNFCReaderKey createRandomKey];
  v17 = v16;
  if (v16)
  {
    createKeychainItemFuture3 = [v16 createKeychainItemForHome:homeCopy];
    if (createKeychainItemFuture3)
    {
      v52 = updateCopy;
      v54 = homeCopy;
      v55 = flowCopy;
      keychainStore = [(HMDHomeNFCReaderKeyManager *)selfCopy keychainStore];
      v64 = 0;
      v20 = [keychainStore updateKeychainItem:createKeychainItemFuture3 createIfNeeded:1 error:&v64];
      createKeychainItemFuture2 = v64;

      v22 = objc_autoreleasePoolPush();
      v23 = selfCopy;
      v24 = HMFGetOSLogHandle();
      v25 = v24;
      if (v20)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v26 = HMFGetLogIdentifier();
          uUID2 = [v55 UUID];
          *buf = 138544130;
          v66 = v26;
          v67 = 2112;
          v68 = uUID2;
          v69 = 2112;
          v70 = createKeychainItemFuture3;
          v71 = 2112;
          v72 = v17;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully created keychain item: %@ for nfc reader key: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v22);
        v28 = objc_alloc(MEMORY[0x277D0F848]);
        v29 = NSStringFromSelector(a2);
        allMessageDestinations = [MEMORY[0x277D0F820] allMessageDestinations];
        createKeychainItemFuture = [v28 initWithName:v29 destination:allMessageDestinations payload:0];

        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __82__HMDHomeNFCReaderKeyManager_createReaderKeyInKeychainForHome_isForceUpdate_flow___block_invoke;
        v60[3] = &unk_27867E7E8;
        v60[4] = v23;
        v51 = v55;
        v61 = v51;
        v32 = v17;
        v62 = v32;
        v33 = v54;
        v63 = v33;
        [createKeychainItemFuture setResponseHandler:v60];
        if (v52)
        {
          [HMDBackingStoreTransactionOptions defaultXPCOptionsWithCDTransactionAuthor:10 clientIdentifier:0];
        }

        else
        {
          +[HMDBackingStoreTransactionOptions defaultXPCOptions];
        }
        v53 = ;
        v47 = [(HMDHomeNFCReaderKeyManager *)v23 createNFCReaderKeyModelWithHome:v33 nfcReaderKey:v32];
        backingStore = [v33 backingStore];
        v49 = [backingStore transaction:@"Creating NFC Reader Key" options:v53];

        [v49 add:v47 withMessage:createKeychainItemFuture];
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = __82__HMDHomeNFCReaderKeyManager_createReaderKeyInKeychainForHome_isForceUpdate_flow___block_invoke_2;
        v56[3] = &unk_278683340;
        v56[4] = v23;
        v57 = v51;
        v58 = v32;
        v59 = v33;
        [v49 run:v56];
      }

      else
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v44 = HMFGetLogIdentifier();
          uUID3 = [v55 UUID];
          *buf = 138544130;
          v66 = v44;
          v67 = 2112;
          v68 = uUID3;
          v69 = 2112;
          v70 = createKeychainItemFuture3;
          v71 = 2112;
          v72 = createKeychainItemFuture2;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to add nfc reader key item: %@ to key chain: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v22);
        createKeychainItemFuture = [(HMDHomeNFCReaderKeyManager *)v23 createKeychainItemFuture];
        v46 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        [createKeychainItemFuture finishWithError:v46];
      }

      homeCopy = v54;
      flowCopy = v55;
    }

    else
    {
      v39 = objc_autoreleasePoolPush();
      v40 = selfCopy;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = HMFGetLogIdentifier();
        uUID4 = [flowCopy UUID];
        *buf = 138543874;
        v66 = v42;
        v67 = 2112;
        v68 = uUID4;
        v69 = 2112;
        v70 = v17;
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create keychain item  for reader key: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v39);
      createKeychainItemFuture2 = [(HMDHomeNFCReaderKeyManager *)v40 createKeychainItemFuture];
      createKeychainItemFuture = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [createKeychainItemFuture2 finishWithError:createKeychainItemFuture];
    }
  }

  else
  {
    v34 = objc_autoreleasePoolPush();
    v35 = selfCopy;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      uUID5 = [flowCopy UUID];
      *buf = 138543618;
      v66 = v37;
      v67 = 2112;
      v68 = uUID5;
      _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create the nfc reader key", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v34);
    createKeychainItemFuture3 = [(HMDHomeNFCReaderKeyManager *)v35 createKeychainItemFuture];
    createKeychainItemFuture2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [createKeychainItemFuture3 finishWithError:createKeychainItemFuture2];
  }

  v50 = *MEMORY[0x277D85DE8];
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
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] NFC reader key transaction message response handler called with: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [a1[4] workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__HMDHomeNFCReaderKeyManager_createReaderKeyInKeychainForHome_isForceUpdate_flow___block_invoke_238;
    block[3] = &unk_2786891E0;
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
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] NFC reader key transaction run failed: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = [a1[4] workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__HMDHomeNFCReaderKeyManager_createReaderKeyInKeychainForHome_isForceUpdate_flow___block_invoke_242;
    block[3] = &unk_2786891E0;
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

- (void)createReaderKeyInKeychainForHome:(id)home isForceUpdate:(BOOL)update flow:(id)flow completion:(id)completion
{
  updateCopy = update;
  v76 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  homeManager = [homeCopy homeManager];
  hasLoadedData = [homeManager hasLoadedData];

  if ((hasLoadedData & 1) == 0)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      *buf = 138543618;
      v69 = v21;
      v70 = 2112;
      v71 = uUID;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not creating nfc reader key, home data load is in progress.", buf, 0x16u);
      goto LABEL_7;
    }

LABEL_8:

    objc_autoreleasePoolPop(v18);
    v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    completionCopy[2](completionCopy, 0, v24);
    goto LABEL_26;
  }

  administratorHandler = [homeCopy administratorHandler];
  shouldRelayMessages = [administratorHandler shouldRelayMessages];

  if (shouldRelayMessages)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      uuid = [homeCopy uuid];
      *buf = 138543874;
      v69 = v21;
      v70 = 2112;
      v71 = uUID;
      v72 = 2112;
      v73 = uuid;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Call to create reader key, but we are not the designated writer for home: %@", buf, 0x20u);

LABEL_7:
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v58 = updateCopy;
  createKeychainItemFuture = [(HMDHomeNFCReaderKeyManager *)self createKeychainItemFuture];

  createKeychainItemFuture2 = [(HMDHomeNFCReaderKeyManager *)self createKeychainItemFuture];

  if (!createKeychainItemFuture2)
  {
    v27 = objc_alloc_init(MEMORY[0x277D2C900]);
    [(HMDHomeNFCReaderKeyManager *)self setCreateKeychainItemFuture:v27];
  }

  createKeychainItemFuture3 = [(HMDHomeNFCReaderKeyManager *)self createKeychainItemFuture];
  createKeychainItemFuture4 = [(HMDHomeNFCReaderKeyManager *)self createKeychainItemFuture];
  v30 = MEMORY[0x277D2C938];
  workQueue2 = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  v32 = [v30 schedulerWithDispatchQueue:workQueue2];
  v33 = [createKeychainItemFuture4 reschedule:v32];
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __93__HMDHomeNFCReaderKeyManager_createReaderKeyInKeychainForHome_isForceUpdate_flow_completion___block_invoke;
  v65[3] = &unk_27867E798;
  v65[4] = self;
  v24 = createKeychainItemFuture3;
  v66 = v24;
  v67 = completionCopy;
  v34 = [v33 addCompletionBlock:v65];

  if (!createKeychainItemFuture)
  {
    nfcReaderKey = [homeCopy nfcReaderKey];
    identifier = [nfcReaderKey identifier];

    if (identifier)
    {
      v56 = identifier;
      v37 = [HMDHomeNFCReaderKey keychainItemAccountAttributeValueWithHome:homeCopy keyIdentifier:identifier];
      v38 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = HMFGetLogIdentifier();
        uUID2 = [flowCopy UUID];
        *buf = 138543874;
        v69 = v41;
        v70 = 2112;
        v71 = uUID2;
        v72 = 2112;
        v73 = v37;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Looking for key chain item with identifier: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v38);
      v64 = 0;
      v43 = [(HMDHomeNFCReaderKeyManager *)selfCopy3 readerKeyWithKeychainItemIdentifier:v37 error:&v64 flow:flowCopy];
      v57 = v64;
      v44 = objc_autoreleasePoolPush();
      v45 = selfCopy3;
      v46 = HMFGetOSLogHandle();
      v47 = v46;
      if (v43)
      {
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v48 = v54 = v44;
          uUID3 = [flowCopy UUID];
          *buf = 138543874;
          v69 = v48;
          v70 = 2112;
          v71 = uUID3;
          v72 = 2112;
          v73 = v43;
          _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Found existing reader key, returning that: %@", buf, 0x20u);

          v44 = v54;
        }

        objc_autoreleasePoolPop(v44);
        createKeychainItemFuture5 = [(HMDHomeNFCReaderKeyManager *)v45 createKeychainItemFuture];
        [createKeychainItemFuture5 finishWithResult:v43];
      }

      else
      {
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v51 = HMFGetLogIdentifier();
          [flowCopy UUID];
          v52 = v55 = v44;
          *buf = 138544130;
          v69 = v51;
          v70 = 2112;
          v71 = v52;
          v72 = 2112;
          v73 = v37;
          v74 = 2112;
          v75 = v57;
          _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch keychain item with identifier: %@, error: %@", buf, 0x2Au);

          v44 = v55;
        }

        objc_autoreleasePoolPop(v44);
        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = __93__HMDHomeNFCReaderKeyManager_createReaderKeyInKeychainForHome_isForceUpdate_flow_completion___block_invoke_237;
        v59[3] = &unk_27867E7C0;
        v59[4] = v45;
        v60 = v37;
        v61 = flowCopy;
        v62 = homeCopy;
        v63 = v58;
        [(HMDHomeNFCReaderKeyManager *)v45 pullFromKeychainWithFlow:v61 completionHandler:v59];
      }

      identifier = v56;
    }

    else
    {
      [(HMDHomeNFCReaderKeyManager *)self createReaderKeyInKeychainForHome:homeCopy isForceUpdate:v58 flow:flowCopy];
    }
  }

LABEL_26:
  v53 = *MEMORY[0x277D85DE8];
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

void __93__HMDHomeNFCReaderKeyManager_createReaderKeyInKeychainForHome_isForceUpdate_flow_completion___block_invoke_237(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__HMDHomeNFCReaderKeyManager_createReaderKeyInKeychainForHome_isForceUpdate_flow_completion___block_invoke_2;
  block[3] = &unk_2786801A0;
  v12 = v3;
  v10 = *(a1 + 32);
  v5 = *(&v10 + 1);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v13 = v10;
  v14 = v8;
  v15 = *(a1 + 64);
  v9 = v3;
  dispatch_async(v4, block);
}

void __93__HMDHomeNFCReaderKeyManager_createReaderKeyInKeychainForHome_isForceUpdate_flow_completion___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v14 = [v2 createKeychainItemFuture];
    [v14 finishWithError:*(a1 + 32)];
    v4 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v15 = 0;
    v5 = [v2 readerKeyWithKeychainItemIdentifier:*(a1 + 48) error:&v15 flow:*(a1 + 56)];
    v6 = v15;
    if (v5)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 40);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v11 = [*(a1 + 56) UUID];
        *buf = 138543874;
        v17 = v10;
        v18 = 2112;
        v19 = v11;
        v20 = 2112;
        v21 = v5;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Found reader key after keychain pull, returning that: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
      v12 = [*(a1 + 40) createKeychainItemFuture];
      [v12 finishWithResult:v5];
    }

    else
    {
      [*(a1 + 40) createReaderKeyInKeychainForHome:*(a1 + 64) isForceUpdate:*(a1 + 72) flow:*(a1 + 56)];
    }

    v13 = *MEMORY[0x277D85DE8];
  }
}

- (id)readerKeyWithKeychainItemIdentifier:(id)identifier error:(id *)error flow:(id)flow
{
  v30 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  flowCopy = flow;
  workQueue = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  keychainStore = [(HMDHomeNFCReaderKeyManager *)self keychainStore];
  v12 = [keychainStore allKeychainItemsForType:&unk_283E73B20 identifier:identifierCopy syncable:MEMORY[0x277CBEC38] error:error];

  if ([v12 count])
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      v22 = 138544130;
      v23 = v16;
      v24 = 2112;
      v25 = uUID;
      v26 = 2112;
      v27 = v12;
      v28 = 2112;
      v29 = identifierCopy;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Found keychain items: %@ for nfc reader key with keychain item identifier: %@", &v22, 0x2Au);
    }

    objc_autoreleasePoolPop(v13);
    firstObject = [v12 firstObject];
    v19 = [HMDHomeNFCReaderKey createWithKeychainItem:firstObject];
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)deleteKeychainItemForNFCReaderKeyIsForceUpdate:(BOOL)update withFlow:(id)flow completion:(id)completion
{
  updateCopy = update;
  v42 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDHomeNFCReaderKeyManager *)self home];
  v13 = home;
  if (home)
  {
    homeManager = [home homeManager];
    if ([homeManager hasLoadedData])
    {
      nfcReaderKey = [v13 nfcReaderKey];
      if (nfcReaderKey)
      {
        v16 = objc_alloc(MEMORY[0x277D0F848]);
        v17 = NSStringFromSelector(a2);
        allMessageDestinations = [MEMORY[0x277D0F820] allMessageDestinations];
        v19 = [v16 initWithName:v17 destination:allMessageDestinations payload:0];

        v20 = v19;
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __97__HMDHomeNFCReaderKeyManager_deleteKeychainItemForNFCReaderKeyIsForceUpdate_withFlow_completion___block_invoke;
        v33[3] = &unk_278688A90;
        v37 = completionCopy;
        v33[4] = self;
        nfcReaderKey = nfcReaderKey;
        v34 = nfcReaderKey;
        v21 = v13;
        v35 = v21;
        v36 = flowCopy;
        [v20 setResponseHandler:v33];
        v22 = [(HMDHomeNFCReaderKeyManager *)self createNFCReaderKeyModelWithHome:v21 nfcReaderKey:0];
        if (updateCopy)
        {
          [HMDBackingStoreTransactionOptions defaultXPCOptionsWithCDTransactionAuthor:10 clientIdentifier:0];
        }

        else
        {
          +[HMDBackingStoreTransactionOptions defaultXPCOptions];
        }
        v29 = ;
        backingStore = [v21 backingStore];
        v31 = [backingStore transaction:@"Deleting NFC Reader Key" options:v29];

        [v31 add:v22 withMessage:v20];
        [v31 run];
      }

      else
      {
        v28 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        (*(completionCopy + 2))(completionCopy, v28);
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      selfCopy = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        uUID = [flowCopy UUID];
        *buf = 138543618;
        v39 = v26;
        v40 = 2112;
        v41 = uUID;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not deleting reader key, home data load is in progress.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      nfcReaderKey = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      (*(completionCopy + 2))(completionCopy, nfcReaderKey);
    }
  }

  else
  {
    homeManager = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(completionCopy + 2))(completionCopy, homeManager);
  }

  v32 = *MEMORY[0x277D85DE8];
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
    block[3] = &unk_278688978;
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

- (id)requestPrimaryResidentToFetchOrCreateReaderKeyWithFlow:(id)flow
{
  v46 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  home = [(HMDHomeNFCReaderKeyManager *)self home];
  v6 = home;
  if (!home)
  {
    v16 = MEMORY[0x277D2C900];
    v17 = MEMORY[0x277CCA9B8];
    v18 = -1;
LABEL_11:
    v24 = [v17 hmErrorWithCode:v18];
    v14 = [v16 futureWithError:v24];

    goto LABEL_19;
  }

  if (![home hasAnyResident])
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      *buf = 138543618;
      v43 = v22;
      v44 = 2112;
      v45 = uUID;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Did not find any residents", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v16 = MEMORY[0x277D2C900];
    v17 = MEMORY[0x277CCA9B8];
    v18 = 91;
    goto LABEL_11;
  }

  v7 = objc_opt_new();
  if ([v6 isCurrentDeviceConfirmedPrimaryResident])
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v43 = v11;
      v44 = 2112;
      v45 = uUID2;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Creating a reader key locally because we are primary", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __85__HMDHomeNFCReaderKeyManager_requestPrimaryResidentToFetchOrCreateReaderKeyWithFlow___block_invoke;
    v40[3] = &unk_27867E748;
    v13 = v7;
    v41 = v13;
    [(HMDHomeNFCReaderKeyManager *)selfCopy2 createReaderKeyInKeychainForHome:v6 isForceUpdate:0 flow:flowCopy completion:v40];
    v14 = v13;
    primaryResidentDevice = v41;
  }

  else
  {
    residentDeviceManager = [v6 residentDeviceManager];
    primaryResidentDevice = [residentDeviceManager primaryResidentDevice];

    device = [primaryResidentDevice device];
    if (device)
    {
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __85__HMDHomeNFCReaderKeyManager_requestPrimaryResidentToFetchOrCreateReaderKeyWithFlow___block_invoke_227;
      v38[3] = &unk_27867E748;
      v27 = v7;
      v39 = v27;
      [(HMDHomeNFCReaderKeyManager *)self requestDevice:device toCreateKeychainItemForReaderKeyWithFlow:flowCopy completion:v38];
      v14 = v27;
      v28 = v39;
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v32 = v37 = v29;
        uUID3 = [flowCopy UUID];
        *buf = 138543618;
        v43 = v32;
        v44 = 2112;
        v45 = uUID3;
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Did not find a primary resident but there are residents in the home", buf, 0x16u);

        v29 = v37;
      }

      objc_autoreleasePoolPop(v29);
      v34 = MEMORY[0x277D2C900];
      v28 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      v14 = [v34 futureWithError:v28];
    }
  }

LABEL_19:
  v35 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)handleSystemKeychainStoreUpdatedNotification:(id)notification
{
  v26 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    *buf = 138543618;
    v23 = v9;
    v24 = 2112;
    v25 = uUID;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling system keychain store updated notification", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  home = [(HMDHomeNFCReaderKeyManager *)selfCopy home];
  if (home)
  {
    workQueue = [(HMDHomeNFCReaderKeyManager *)selfCopy workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__HMDHomeNFCReaderKeyManager_handleSystemKeychainStoreUpdatedNotification___block_invoke;
    block[3] = &unk_27868A010;
    block[4] = selfCopy;
    v20 = home;
    v21 = internalOnlyInitializer;
    dispatch_async(workQueue, block);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      uUID2 = [internalOnlyInitializer UUID];
      *buf = 138543618;
      v23 = v16;
      v24 = 2112;
      v25 = uUID2;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not handling keychain update, home is nil", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not handling keychain update because it is watch: %@ or is not owner device: %@", buf, 0x2Au);
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
          _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Failed to fetch reader key with identifier: %@ and keychain item identifier: %@", buf, 0x2Au);
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
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not handling nfc reader key update because it set to nil on home", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeRemovedNotification:(id)notification
{
  v50 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:@"HMDHomeNotificationKey"];

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

  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    *buf = 138543874;
    v43 = v13;
    v44 = 2112;
    v45 = uUID;
    v46 = 2112;
    v47 = v8;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling home removed notification: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  home = [(HMDHomeNFCReaderKeyManager *)selfCopy home];
  if (home == v8)
  {
    dataSource = [(HMDHomeNFCReaderKeyManager *)selfCopy dataSource];
    isWatch = [dataSource isWatch];

    currentUser = [home currentUser];
    isOwner = [currentUser isOwner];

    if ((isWatch & 1) != 0 || isOwner != 1)
    {
      v24 = objc_autoreleasePoolPush();
      v25 = selfCopy;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        [internalOnlyInitializer UUID];
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
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not removing nfc reader key because it is watch: %@ or is not owner device: %@", buf, 0x2Au);

        v24 = v37;
      }

      objc_autoreleasePoolPop(v24);
    }

    else
    {
      primaryResidentDevice = [(HMDHomeNFCReaderKeyManager *)selfCopy primaryResidentDevice];
      v21 = primaryResidentDevice;
      if (primaryResidentDevice && ([primaryResidentDevice isCurrentDevice] & 1) == 0)
      {
        v31 = objc_autoreleasePoolPush();
        v32 = selfCopy;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = HMFGetLogIdentifier();
          uUID2 = [internalOnlyInitializer UUID];
          *buf = 138543618;
          v43 = v34;
          v44 = 2112;
          v45 = uUID2;
          _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Skipping removal of nfc reader key on current device because home has a primary resident that supports wallet key", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
      }

      else
      {
        nfcReaderKey = [home nfcReaderKey];
        if (nfcReaderKey)
        {
          workQueue = [(HMDHomeNFCReaderKeyManager *)selfCopy workQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __60__HMDHomeNFCReaderKeyManager_handleHomeRemovedNotification___block_invoke;
          block[3] = &unk_2786891E0;
          block[4] = selfCopy;
          v39 = nfcReaderKey;
          v40 = home;
          v41 = internalOnlyInitializer;
          dispatch_async(workQueue, block);
        }
      }
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeDidUpdateNFCReaderKeyNotification:(id)notification
{
  v31 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  dataSource = [(HMDHomeNFCReaderKeyManager *)self dataSource];
  isWatch = [dataSource isWatch];

  home = [(HMDHomeNFCReaderKeyManager *)self home];
  currentUser = [home currentUser];
  isOwner = [currentUser isOwner];

  v13 = isOwner ^ 1;
  if ((isWatch & 1) != 0 || v13)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
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
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Not handling home nfc reader key update notification because it is watch: %@ or is not owner device: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
  }

  else
  {
    workQueue = [(HMDHomeNFCReaderKeyManager *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__HMDHomeNFCReaderKeyManager_handleHomeDidUpdateNFCReaderKeyNotification___block_invoke;
    block[3] = &unk_27868A010;
    block[4] = self;
    v23 = notificationCopy;
    v24 = v7;
    dispatch_async(workQueue, block);
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling HomeDidUpdateNFCReaderKeyNotification", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing keychain item for nfc reader key: %@", buf, 0x20u);
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
          _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Already updated Reader key with key identifier: %@", buf, 0x20u);

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
          _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Caching did update reader key with key identifier: %@", buf, 0x20u);

          v42 = v50;
        }

        objc_autoreleasePoolPop(v42);
        v47 = dispatch_time(0, 86400000000000);
        v48 = [a1[4] workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __74__HMDHomeNFCReaderKeyManager_handleHomeDidUpdateNFCReaderKeyNotification___block_invoke_226;
        block[3] = &unk_27868A010;
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
        _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Failed to fetch reader key with identifier: %@ and keychain item identifier: %@", buf, 0x2Au);

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
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Received home nfc reader key did update notification but its not set for home", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
  }

  v49 = *MEMORY[0x277D85DE8];
}

void __74__HMDHomeNFCReaderKeyManager_handleHomeDidUpdateNFCReaderKeyNotification___block_invoke_226(uint64_t a1)
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing key identifier from keyIdentifiersAlreadyUpdated: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = [*(a1 + 32) keyIdentifiersAlreadyUpdated];
  [v8 removeObject:*(a1 + 48)];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)unconfigure
{
  messageDispatcher = [(HMDHomeNFCReaderKeyManager *)self messageDispatcher];
  [messageDispatcher deregisterReceiver:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  accessoryManager = [(HMDHomeNFCReaderKeyManager *)self accessoryManager];
  [accessoryManager unconfigure];
}

- (void)rollReaderKeyWithFlow:(id)flow withCompletion:(id)completion
{
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HMDHomeNFCReaderKeyManager_rollReaderKeyWithFlow_withCompletion___block_invoke;
  block[3] = &unk_278689F98;
  block[4] = self;
  v12 = flowCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = flowCopy;
  dispatch_async(workQueue, block);
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] rollReaderKeyWithFlow", buf, 0x16u);
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
          _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] We are not the owner, so unable to roll reader key", buf, 0x16u);
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
      v35[2] = __67__HMDHomeNFCReaderKeyManager_rollReaderKeyWithFlow_withCompletion___block_invoke_222;
      v35[3] = &unk_27868A528;
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
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to roll reader key, home or currentUser is nil. home: %@, currentUser: %@", buf, 0x2Au);
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
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to roll reader key, not internal build", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v27 = a1[6];
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    v27[2](v27, v7);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __67__HMDHomeNFCReaderKeyManager_rollReaderKeyWithFlow_withCompletion___block_invoke_222(uint64_t a1, void *a2)
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
  v11[3] = &unk_27867E770;
  v10 = *(a1 + 48);
  v12 = *(a1 + 56);
  [v8 createReaderKeyInKeychainForHome:v9 isForceUpdate:1 flow:v10 completion:v11];

LABEL_7:
}

- (id)fetchOrCreateReaderKeyForPairingWithFlow:(id)flow
{
  v44 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  workQueue = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v37 = v9;
    v38 = 2112;
    v39 = uUID;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] fetchOrCreateReaderKeyForPairingWithFlow", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  home = [(HMDHomeNFCReaderKeyManager *)selfCopy home];
  currentUser = [home currentUser];
  v13 = currentUser;
  if (!home || !currentUser)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = selfCopy;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138544130;
      v37 = v26;
      v38 = 2112;
      v39 = uUID2;
      v40 = 2112;
      v41 = home;
      v42 = 2112;
      v43 = v13;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create reader key, home or currentUser is nil. home: %@, currentUser: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v23);
    v28 = MEMORY[0x277D2C900];
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    v22 = [v28 futureWithError:v21];
    goto LABEL_12;
  }

  isOwner = [currentUser isOwner];
  v15 = objc_autoreleasePoolPush();
  v16 = selfCopy;
  v17 = HMFGetOSLogHandle();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
  if (isOwner)
  {
    if (v18)
    {
      v19 = HMFGetLogIdentifier();
      uUID3 = [flowCopy UUID];
      *buf = 138543618;
      v37 = v19;
      v38 = 2112;
      v39 = uUID3;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Did not find an existing key in the home graph, so fetching the key from the resident", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v21 = [(HMDHomeNFCReaderKeyManager *)v16 requestPrimaryResidentToFetchOrCreateReaderKeyWithFlow:flowCopy];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __71__HMDHomeNFCReaderKeyManager_fetchOrCreateReaderKeyForPairingWithFlow___block_invoke;
    v33[3] = &unk_278683318;
    v33[4] = v16;
    v34 = flowCopy;
    v35 = home;
    v22 = [v21 recover:v33];

LABEL_12:
    goto LABEL_16;
  }

  if (v18)
  {
    v29 = HMFGetLogIdentifier();
    uUID4 = [flowCopy UUID];
    *buf = 138543618;
    v37 = v29;
    v38 = 2112;
    v39 = uUID4;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] We are not the owner, so fetching the key from the resident", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  v22 = [(HMDHomeNFCReaderKeyManager *)v16 requestPrimaryResidentToFetchOrCreateReaderKeyWithFlow:flowCopy];
LABEL_16:

  v31 = *MEMORY[0x277D85DE8];

  return v22;
}

id __71__HMDHomeNFCReaderKeyManager_fetchOrCreateReaderKeyForPairingWithFlow___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_8;
  }

  v5 = [v3 domain];
  v6 = v5;
  if (v5 != *MEMORY[0x277CCFD28])
  {

LABEL_8:
    v17 = [MEMORY[0x277D2C900] futureWithError:v4];
    goto LABEL_9;
  }

  v7 = [v4 code];

  if (v7 != 91)
  {
    goto LABEL_8;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) UUID];
    *buf = 138543618;
    v23 = v11;
    v24 = 2112;
    v25 = v12;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Creating a reader key locally because we do not have a resident", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = objc_opt_new();
  v15 = *(a1 + 40);
  v14 = *(a1 + 48);
  v16 = *(a1 + 32);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __71__HMDHomeNFCReaderKeyManager_fetchOrCreateReaderKeyForPairingWithFlow___block_invoke_220;
  v20[3] = &unk_27867E748;
  v17 = v13;
  v21 = v17;
  [v16 createReaderKeyInKeychainForHome:v14 isForceUpdate:0 flow:v15 completion:v20];

LABEL_9:
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)fetchOrCreateReaderKeyWithRequiresPrivateKey:(BOOL)key flow:(id)flow completion:(id)completion
{
  v60 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    v16 = HMFBooleanToString();
    v54 = 138543874;
    v55 = v14;
    v56 = 2112;
    v57 = uUID;
    v58 = 2112;
    v59 = v16;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetch or create reader key with requiresPrivateKey: %@", &v54, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  home = [(HMDHomeNFCReaderKeyManager *)selfCopy home];
  if (home)
  {
    dataSource = [(HMDHomeNFCReaderKeyManager *)selfCopy dataSource];
    isWatch = [dataSource isWatch];

    currentUser = [home currentUser];
    nfcReaderKey = [home nfcReaderKey];
    v22 = nfcReaderKey;
    if (((isWatch & 1) != 0 || !key) && nfcReaderKey)
    {
      v23 = objc_autoreleasePoolPush();
      v24 = selfCopy;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        uUID2 = [flowCopy UUID];
        v54 = 138543874;
        v55 = v26;
        v56 = 2112;
        v57 = uUID2;
        v58 = 2112;
        v59 = v22;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Current device is watch or caller does not requires private key, fetched nfc reader key from home graph: %@", &v54, 0x20u);
      }

      objc_autoreleasePoolPop(v23);
      completionCopy[2](completionCopy, v22, 0);
    }

    else
    {
      if ([currentUser isAdministrator])
      {
        if ([currentUser privilege] == 4)
        {
          v33 = objc_autoreleasePoolPush();
          v34 = selfCopy;
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v36 = HMFGetLogIdentifier();
            uUID3 = [flowCopy UUID];
            v54 = 138543618;
            v55 = v36;
            v56 = 2112;
            v57 = uUID3;
            _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Current user is shared admin, sending request to resident to create nfc reader key", &v54, 0x16u);
          }

          objc_autoreleasePoolPop(v33);
          [(HMDHomeNFCReaderKeyManager *)v34 requestPrimaryResidentToFetchOrCreateReaderKeyWithFlow:flowCopy completion:completionCopy];
          goto LABEL_22;
        }

        if (!isWatch)
        {
          primaryResidentDevice = [(HMDHomeNFCReaderKeyManager *)selfCopy primaryResidentDevice];
          v53 = primaryResidentDevice;
          if (primaryResidentDevice && ([primaryResidentDevice isCurrentDevice] & 1) == 0)
          {
            [(HMDHomeNFCReaderKeyManager *)selfCopy requestDevice:v53 toCreateKeychainItemForReaderKeyWithFlow:flowCopy completion:completionCopy];
          }

          else
          {
            [(HMDHomeNFCReaderKeyManager *)selfCopy createReaderKeyInKeychainForHome:home isForceUpdate:0 flow:flowCopy completion:completionCopy];
          }

          goto LABEL_22;
        }

        v47 = objc_autoreleasePoolPush();
        v48 = selfCopy;
        v49 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          v50 = HMFGetLogIdentifier();
          uUID4 = [flowCopy UUID];
          v54 = 138543618;
          v55 = v50;
          v56 = 2112;
          v57 = uUID4;
          _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Current user is owner. Fetch or create reader key from keychain is not supported on watch", &v54, 0x16u);
        }

        objc_autoreleasePoolPop(v47);
        v43 = MEMORY[0x277CCA9B8];
        v44 = 48;
      }

      else
      {
        v38 = objc_autoreleasePoolPush();
        v39 = selfCopy;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          v41 = HMFGetLogIdentifier();
          uUID5 = [flowCopy UUID];
          v54 = 138543618;
          v55 = v41;
          v56 = 2112;
          v57 = uUID5;
          _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Current user is not admin and home key doesn't exist in home graph, returning nil", &v54, 0x16u);
        }

        objc_autoreleasePoolPop(v38);
        v43 = MEMORY[0x277CCA9B8];
        v44 = 2;
      }

      v45 = [v43 hmErrorWithCode:v44];
      (completionCopy)[2](completionCopy, 0, v45);
    }

LABEL_22:

    goto LABEL_23;
  }

  v28 = objc_autoreleasePoolPush();
  v29 = selfCopy;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v31 = HMFGetLogIdentifier();
    uUID6 = [flowCopy UUID];
    v54 = 138543618;
    v55 = v31;
    v56 = 2112;
    v57 = uUID6;
    _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create reader key, home is nil", &v54, 0x16u);
  }

  objc_autoreleasePoolPop(v28);
  currentUser = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
  (completionCopy)[2](completionCopy, 0, currentUser);
LABEL_23:

  v46 = *MEMORY[0x277D85DE8];
}

- (void)fetchOrCreateReaderKeyOnQueueWithRequiresPrivateKey:(BOOL)key flow:(id)flow completion:(id)completion
{
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __98__HMDHomeNFCReaderKeyManager_fetchOrCreateReaderKeyOnQueueWithRequiresPrivateKey_flow_completion___block_invoke;
  v13[3] = &unk_278685C18;
  keyCopy = key;
  v13[4] = self;
  v14 = flowCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = flowCopy;
  dispatch_async(workQueue, v13);
}

- (void)handleCreateKeychainItemForReaderKeyMessage:(id)message
{
  v28 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  flow = [messageCopy flow];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    uUID = [flow UUID];
    *buf = 138543874;
    v23 = v10;
    v24 = 2112;
    v25 = uUID;
    v26 = 2112;
    v27 = messageCopy;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling message to create keychain item for reader key: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  home = [(HMDHomeNFCReaderKeyManager *)selfCopy home];
  if (home)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __74__HMDHomeNFCReaderKeyManager_handleCreateKeychainItemForReaderKeyMessage___block_invoke;
    v20[3] = &unk_27867E748;
    v21 = messageCopy;
    [(HMDHomeNFCReaderKeyManager *)selfCopy createReaderKeyInKeychainForHome:home isForceUpdate:0 flow:flow completion:v20];
    v13 = v21;
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      uUID2 = [flow UUID];
      *buf = 138543618;
      v23 = v17;
      v24 = 2112;
      v25 = uUID2;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] I am not configured with a home", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:v13];
  }

  v19 = *MEMORY[0x277D85DE8];
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

- (void)handleFetchOrCreateReaderKeyMessage:(id)message
{
  v24 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  flow = [messageCopy flow];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    uUID = [flow UUID];
    *buf = 138543874;
    v19 = v10;
    v20 = 2112;
    v21 = uUID;
    v22 = 2112;
    v23 = messageCopy;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling message to fetch or create reader key: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__HMDHomeNFCReaderKeyManager_handleFetchOrCreateReaderKeyMessage___block_invoke;
  v15[3] = &unk_27867E720;
  v15[4] = selfCopy;
  v16 = flow;
  v17 = messageCopy;
  v12 = messageCopy;
  v13 = flow;
  [(HMDHomeNFCReaderKeyManager *)selfCopy fetchOrCreateReaderKeyWithRequiresPrivateKey:0 flow:v13 completion:v15];

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
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Responding to fetch or create reader key message: %@ with payload: %@ ", buf, 0x2Au);

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
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Responding to fetch or create reader key message: %@ with: %@", buf, 0x2Au);

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
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Responding to fetch or create reader key message: %@ with: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v17);
    [a1[6] respondWithError:v6];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)handleDeleteKeychainItemForNFCReaderKey:(id)key
{
  v17 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  workQueue = [(HMDHomeNFCReaderKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  flow = [keyCopy flow];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543362;
    v16 = v10;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Handling message to delete keychain item for nfc reader key", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__HMDHomeNFCReaderKeyManager_handleDeleteKeychainItemForNFCReaderKey___block_invoke;
  v13[3] = &unk_27868A1D8;
  v13[4] = selfCopy;
  v14 = keyCopy;
  v11 = keyCopy;
  [(HMDHomeNFCReaderKeyManager *)selfCopy deleteKeychainItemForNFCReaderKeyIsForceUpdate:0 withFlow:flow completion:v13];

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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to handle message to delete nfc reader key: %@", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfully handled message to delete nfc reader key", buf, 0xCu);
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

- (void)configureWithHome:(id)home
{
  v39 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v36 = v8;
    v37 = 2112;
    v38 = homeCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Configuring with home: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDHomeNFCReaderKeyManager *)selfCopy setHome:homeCopy];
  msgDispatcher = [homeCopy msgDispatcher];
  [(HMDHomeNFCReaderKeyManager *)selfCopy setMessageDispatcher:msgDispatcher];

  dataSource = [(HMDHomeNFCReaderKeyManager *)selfCopy dataSource];
  isResidentCapable = [dataSource isResidentCapable];

  if (isResidentCapable)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Registering for messages", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [HMDUserMessagePolicy userMessagePolicyWithHome:homeCopy userPrivilege:4 remoteAccessRequired:0];
    v17 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
    [v17 setRoles:{objc_msgSend(v17, "roles") | 4}];
    messageDispatcher = [(HMDHomeNFCReaderKeyManager *)v13 messageDispatcher];
    v34[0] = v16;
    v34[1] = v17;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
    [messageDispatcher registerForMessage:@"HMDHomeFetchOrCreateNFCReaderKeyMessage" receiver:v13 policies:v19 selector:sel_handleFetchOrCreateReaderKeyMessage_];

    messageDispatcher2 = [(HMDHomeNFCReaderKeyManager *)v13 messageDispatcher];
    v33[0] = v16;
    v33[1] = v17;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
    [messageDispatcher2 registerForMessage:@"HMDHomeCreateKeychainItemForNFCReaderKeyMessage" receiver:v13 policies:v21 selector:sel_handleCreateKeychainItemForReaderKeyMessage_];

    messageDispatcher3 = [(HMDHomeNFCReaderKeyManager *)v13 messageDispatcher];
    v32[0] = v16;
    v32[1] = v17;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    [messageDispatcher3 registerForMessage:@"HMDHomeDeleteKeychainItemForNFCReaderKeyMessage" receiver:v13 policies:v23 selector:sel_handleDeleteKeychainItemForNFCReaderKey_];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  homeManager = [homeCopy homeManager];
  [defaultCenter addObserver:selfCopy selector:sel_handleHomeRemovedNotification_ name:@"HMDHomeRemovedNotification" object:homeManager];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  v27 = *MEMORY[0x277CFE930];
  keychainStore = [(HMDHomeNFCReaderKeyManager *)selfCopy keychainStore];
  [defaultCenter2 addObserver:selfCopy selector:sel_handleSystemKeychainStoreUpdatedNotification_ name:v27 object:keychainStore];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:selfCopy selector:sel_handleHomeDidUpdateNFCReaderKeyNotification_ name:@"HMDHomeDidUpdateNFCReaderKeyNotification" object:homeCopy];

  accessoryManager = [(HMDHomeNFCReaderKeyManager *)selfCopy accessoryManager];
  [accessoryManager configureWithHome:homeCopy];

  v31 = *MEMORY[0x277D85DE8];
}

- (HMDHomeNFCReaderKeyManager)initWithUUID:(id)d workQueue:(id)queue keychainStore:(id)store dataSource:(id)source
{
  dCopy = d;
  queueCopy = queue;
  storeCopy = store;
  sourceCopy = source;
  v22.receiver = self;
  v22.super_class = HMDHomeNFCReaderKeyManager;
  v14 = [(HMDHomeNFCReaderKeyManager *)&v22 init];
  if (v14)
  {
    v15 = [dCopy copy];
    uuid = v14->_uuid;
    v14->_uuid = v15;

    objc_storeStrong(&v14->_workQueue, queue);
    objc_storeStrong(&v14->_keychainStore, store);
    objc_storeStrong(&v14->_dataSource, source);
    v17 = [[HMDHomeWalletKeyAccessoryManager alloc] initWithUUID:dCopy workQueue:queueCopy];
    accessoryManager = v14->_accessoryManager;
    v14->_accessoryManager = v17;

    v19 = [MEMORY[0x277CBEB58] set];
    keyIdentifiersAlreadyUpdated = v14->_keyIdentifiersAlreadyUpdated;
    v14->_keyIdentifiersAlreadyUpdated = v19;
  }

  return v14;
}

- (HMDHomeNFCReaderKeyManager)initWithUUID:(id)d workQueue:(id)queue
{
  v6 = MEMORY[0x277CFEC78];
  queueCopy = queue;
  dCopy = d;
  systemStore = [v6 systemStore];
  v10 = objc_alloc_init(HMDHomeWalletDataSource);
  v11 = [(HMDHomeNFCReaderKeyManager *)self initWithUUID:dCopy workQueue:queueCopy keychainStore:systemStore dataSource:v10];

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t77_193807 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t77_193807, &__block_literal_global_193808);
  }

  v3 = logCategory__hmf_once_v78_193809;

  return v3;
}

void __41__HMDHomeNFCReaderKeyManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v78_193809;
  logCategory__hmf_once_v78_193809 = v1;
}

@end