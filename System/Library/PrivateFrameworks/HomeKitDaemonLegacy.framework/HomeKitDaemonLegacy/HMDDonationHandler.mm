@interface HMDDonationHandler
+ (id)logCategory;
+ (id)sharedDonationHandler;
- (HMDDonationHandler)init;
- (id)_init;
- (void)_donateActionSet:(id)set withMessage:(id)message;
- (void)_donateIntent:(id)intent withActionSet:(id)set;
- (void)_removeIntentForActionSet:(id)set;
- (void)donateActionSet:(id)set withMessage:(id)message;
- (void)removeIntentForActionSet:(id)set;
@end

@implementation HMDDonationHandler

- (void)_removeIntentForActionSet:(id)set
{
  v18[1] = *MEMORY[0x277D85DE8];
  setCopy = set;
  uuid = [setCopy uuid];
  v6 = [HMDHomeManager deriveIntentGroupIdentifierFromBaseUUID:uuid];

  v7 = isWatch();
  v8 = MEMORY[0x277CD09C8];
  if (!v7)
  {
    v8 = MEMORY[0x277CCFE40];
  }

  v9 = MEMORY[0x277CC34A8];
  v10 = *v8;
  defaultSearchableIndex = [v9 defaultSearchableIndex];
  uUIDString = [v6 UUIDString];
  v18[0] = uUIDString;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__HMDDonationHandler__removeIntentForActionSet___block_invoke;
  v16[3] = &unk_2797358C8;
  v16[4] = self;
  v17 = setCopy;
  v14 = setCopy;
  [defaultSearchableIndex deleteInteractionsWithGroupIdentifiers:v13 bundleID:v10 protectionClass:0 completionHandler:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __48__HMDDonationHandler__removeIntentForActionSet___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
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
      v9 = [*(a1 + 40) name];
      v10 = [*(a1 + 40) home];
      v11 = [v10 name];
      v17 = 138544130;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v11;
      v23 = 2112;
      v24 = v3;
      v12 = "%{public}@Failed to remove intents for Action Set %@ in Home %@ with error - %@";
      v13 = v7;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 42;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v13, v14, v12, &v17, v15);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(a1 + 40) name];
    v10 = [*(a1 + 40) home];
    v11 = [v10 name];
    v17 = 138543874;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v11;
    v12 = "%{public}@Successfully remove home intent(s) for Action Set %@ in Home %@ to Siri Actions";
    v13 = v7;
    v14 = OS_LOG_TYPE_INFO;
    v15 = 32;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_donateIntent:(id)intent withActionSet:(id)set
{
  intentCopy = intent;
  v7 = MEMORY[0x277CD3D58];
  setCopy = set;
  v9 = [[v7 alloc] initWithIntent:intentCopy response:0];
  uuid = [setCopy uuid];

  v11 = [HMDHomeManager deriveIntentGroupIdentifierFromBaseUUID:uuid];

  uUIDString = [v11 UUIDString];
  [v9 setGroupIdentifier:uUIDString];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__HMDDonationHandler__donateIntent_withActionSet___block_invoke;
  v14[3] = &unk_2797358C8;
  v15 = intentCopy;
  selfCopy = self;
  v13 = intentCopy;
  [v9 donateInteractionWithCompletion:v14];
}

void __50__HMDDonationHandler__donateIntent_withActionSet___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) contents];
  v5 = [v4 firstObject];

  v6 = [v5 filter];
  v7 = [v6 scene];

  v8 = [v5 filter];
  v9 = [v8 home];

  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 40);
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v3)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v18 = 138544130;
      v19 = v14;
      v20 = 2112;
      v21 = v7;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v3;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to donate home intent of Action Set %@ in Home %@ with error - %@", &v18, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = *(a1 + 32);
    v18 = 138544130;
    v19 = v15;
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v16;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Successfully donate home intent(s) of Action Set %@ in Home %@ to Siri Actions - intent: %@", &v18, 0x2Au);
  }

  objc_autoreleasePoolPop(v10);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_donateActionSet:(id)set withMessage:(id)message
{
  v67[1] = *MEMORY[0x277D85DE8];
  setCopy = set;
  messageCopy = message;
  actions = [setCopy actions];
  v9 = [actions count];

  if (!v9)
  {
    v41 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = HMFGetLogIdentifier();
      name = [setCopy name];
      *buf = 138543618;
      *&buf[4] = v44;
      v62 = 2112;
      v63 = name;
      _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "%{public}@There is no action in Action Set: %@", buf, 0x16u);

LABEL_14:
    }

LABEL_15:

    v46 = v41;
LABEL_16:
    objc_autoreleasePoolPop(v46);
    goto LABEL_17;
  }

  if (!+[HMDDeviceCapabilities supportsIntentDonation])
  {
    v41 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v44;
      _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_INFO, "%{public}@HomePod is not eligible for intent donation", buf, 0xCu);
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  source = [messageCopy source];
  v11 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v13 = HMFGetOSLogHandle();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (source != 5)
  {
    if (v14)
    {
      v48 = HMFGetLogIdentifier();
      v49 = HMDRequestSourceAsString(source);
      *buf = 138543618;
      *&buf[4] = v48;
      v62 = 2112;
      v63 = v49;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@The trigger source %@ is not supported for donation in HomeKit. HomeKit intent donation only supports First Party App.", buf, 0x16u);
    }

    v46 = v11;
    goto LABEL_16;
  }

  if (v14)
  {
    v15 = HMFGetLogIdentifier();
    clientIdentifier = [messageCopy clientIdentifier];
    *buf = 138543874;
    *&buf[4] = v15;
    v62 = 2112;
    v63 = @"FirstParty";
    v64 = 2112;
    v65 = clientIdentifier;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@The trigger source is: %@ (bundleID: %@)", buf, 0x20u);
  }

  v59 = messageCopy;

  objc_autoreleasePoolPop(v11);
  v17 = setCopy;
  spiClientIdentifier = [v17 spiClientIdentifier];
  home = [v17 home];
  spiClientIdentifier2 = [home spiClientIdentifier];
  v19 = objc_alloc(MEMORY[0x277CD4188]);
  v60 = selfCopy3;
  v20 = spiClientIdentifier;
  uUIDString = [spiClientIdentifier UUIDString];
  name2 = [v17 name];

  v23 = [v19 initWithIdentifier:uUIDString string:name2];
  v24 = objc_alloc(MEMORY[0x277CD4188]);
  uUIDString2 = [spiClientIdentifier2 UUIDString];
  name3 = [home name];
  v27 = [v24 initWithIdentifier:uUIDString2 string:name3];

  v28 = objc_alloc(MEMORY[0x277CD3CF8]);
  uUIDString3 = [v20 UUIDString];
  *buf = uUIDString3;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:1];
  v31 = [v28 initWithEntityIdentifiers:v30 home:v27 scene:v23 homeZone:0 group:0 room:0 accessory:0 service:0 entityType:5 serviceType:0 subServiceType:0];

  v32 = [objc_alloc(MEMORY[0x277CD3CD0]) initWithType:1 BOOLValue:1];
  v33 = objc_alloc(MEMORY[0x277CD3CE8]);
  v67[0] = v32;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:1];
  v35 = [v33 initWithFilter:v31 actions:v34];

  v36 = objc_alloc(MEMORY[0x277CD3B10]);
  v66 = v35;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];
  v38 = [v36 initWithContents:v37];

  v39 = isWatch();
  v40 = MEMORY[0x277CD09C8];
  if (!v39)
  {
    v40 = MEMORY[0x277CCFE40];
  }

  [v38 _setLaunchId:*v40];
  [v38 _setExtensionBundleId:@"com.apple.HomeKit.HomeKitIntentExtension"];

  if (v38)
  {
    [(HMDDonationHandler *)v60 _donateIntent:v38 withActionSet:v17];
  }

  else
  {
    v50 = objc_autoreleasePoolPush();
    v51 = v60;
    v52 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v53 = HMFGetLogIdentifier();
      name4 = [v17 name];
      home2 = [v17 home];
      name5 = [home2 name];
      *buf = 138543874;
      *&buf[4] = v53;
      v62 = 2112;
      v63 = name4;
      v64 = 2112;
      v65 = name5;
      _os_log_impl(&dword_2531F8000, v52, OS_LOG_TYPE_ERROR, "%{public}@Unable to get the intent of Action Set %@ in Home %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v50);
  }

  messageCopy = v59;
LABEL_17:

  v47 = *MEMORY[0x277D85DE8];
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = HMDDonationHandler;
  v2 = [(HMDDonationHandler *)&v8 init];
  if (v2)
  {
    v3 = HMFDispatchQueueName();
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create(v3, v4);
    workQueue = v2->_workQueue;
    v2->_workQueue = v5;
  }

  return v2;
}

- (void)removeIntentForActionSet:(id)set
{
  setCopy = set;
  workQueue = [(HMDDonationHandler *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HMDDonationHandler_removeIntentForActionSet___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = setCopy;
  v6 = setCopy;
  dispatch_async(workQueue, v7);
}

- (void)donateActionSet:(id)set withMessage:(id)message
{
  setCopy = set;
  messageCopy = message;
  workQueue = [(HMDDonationHandler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__HMDDonationHandler_donateActionSet_withMessage___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v12 = setCopy;
  v13 = messageCopy;
  v9 = messageCopy;
  v10 = setCopy;
  dispatch_async(workQueue, block);
}

- (HMDDonationHandler)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t9_147717 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9_147717, &__block_literal_global_17_147718);
  }

  v3 = logCategory__hmf_once_v10_147719;

  return v3;
}

uint64_t __33__HMDDonationHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v10_147719;
  logCategory__hmf_once_v10_147719 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)sharedDonationHandler
{
  if (sharedDonationHandler_onceToken != -1)
  {
    dispatch_once(&sharedDonationHandler_onceToken, &__block_literal_global_147724);
  }

  v3 = sharedDonationHandler_donationHandler;

  return v3;
}

uint64_t __43__HMDDonationHandler_sharedDonationHandler__block_invoke()
{
  v0 = [[HMDDonationHandler alloc] _init];
  v1 = sharedDonationHandler_donationHandler;
  sharedDonationHandler_donationHandler = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end