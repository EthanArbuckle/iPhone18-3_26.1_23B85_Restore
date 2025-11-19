@interface HMDDonationHandler
+ (id)logCategory;
+ (id)sharedDonationHandler;
- (HMDDonationHandler)init;
- (id)_init;
- (void)_donateActionSet:(id)a3 withMessage:(id)a4;
- (void)_donateIntent:(id)a3 withActionSet:(id)a4;
- (void)_removeIntentForActionSet:(id)a3;
- (void)donateActionSet:(id)a3 withMessage:(id)a4;
- (void)removeIntentForActionSet:(id)a3;
@end

@implementation HMDDonationHandler

- (void)_removeIntentForActionSet:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uuid];
  v6 = [HMDHomeManager deriveIntentGroupIdentifierFromBaseUUID:v5];

  v7 = isWatch();
  v8 = MEMORY[0x277CD09C8];
  if (!v7)
  {
    v8 = MEMORY[0x277CCFE40];
  }

  v9 = MEMORY[0x277CC34A8];
  v10 = *v8;
  v11 = [v9 defaultSearchableIndex];
  v12 = [v6 UUIDString];
  v18[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__HMDDonationHandler__removeIntentForActionSet___block_invoke;
  v16[3] = &unk_27868A1D8;
  v16[4] = self;
  v17 = v4;
  v14 = v4;
  [v11 deleteInteractionsWithGroupIdentifiers:v13 bundleID:v10 protectionClass:0 completionHandler:v16];

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
      _os_log_impl(&dword_229538000, v13, v14, v12, &v17, v15);
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

- (void)_donateIntent:(id)a3 withActionSet:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x277CD3D58];
  v8 = a4;
  v9 = [[v7 alloc] initWithIntent:v6 response:0];
  v10 = [v8 uuid];

  v11 = [HMDHomeManager deriveIntentGroupIdentifierFromBaseUUID:v10];

  v12 = [v11 UUIDString];
  [v9 setGroupIdentifier:v12];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__HMDDonationHandler__donateIntent_withActionSet___block_invoke;
  v14[3] = &unk_27868A1D8;
  v15 = v6;
  v16 = self;
  v13 = v6;
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
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to donate home intent of Action Set %@ in Home %@ with error - %@", &v18, 0x2Au);
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
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Successfully donate home intent(s) of Action Set %@ in Home %@ to Siri Actions - intent: %@", &v18, 0x2Au);
  }

  objc_autoreleasePoolPop(v10);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_donateActionSet:(id)a3 withMessage:(id)a4
{
  v67[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 actions];
  v9 = [v8 count];

  if (!v9)
  {
    v41 = objc_autoreleasePoolPush();
    v42 = self;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = HMFGetLogIdentifier();
      v45 = [v6 name];
      *buf = 138543618;
      *&buf[4] = v44;
      v62 = 2112;
      v63 = v45;
      _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_ERROR, "%{public}@There is no action in Action Set: %@", buf, 0x16u);

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
    v42 = self;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v44;
      _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@HomePod is not eligible for intent donation", buf, 0xCu);
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v10 = [v7 source];
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (v10 != 5)
  {
    if (v14)
    {
      v48 = HMFGetLogIdentifier();
      v49 = HMDRequestSourceAsString(v10);
      *buf = 138543618;
      *&buf[4] = v48;
      v62 = 2112;
      v63 = v49;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@The trigger source %@ is not supported for donation in HomeKit. HomeKit intent donation only supports First Party App.", buf, 0x16u);
    }

    v46 = v11;
    goto LABEL_16;
  }

  if (v14)
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v7 clientIdentifier];
    *buf = 138543874;
    *&buf[4] = v15;
    v62 = 2112;
    v63 = @"FirstParty";
    v64 = 2112;
    v65 = v16;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@The trigger source is: %@ (bundleID: %@)", buf, 0x20u);
  }

  v59 = v7;

  objc_autoreleasePoolPop(v11);
  v17 = v6;
  v18 = [v17 spiClientIdentifier];
  v57 = [v17 home];
  v58 = [v57 spiClientIdentifier];
  v19 = objc_alloc(MEMORY[0x277CD4188]);
  v60 = v12;
  v20 = v18;
  v21 = [v18 UUIDString];
  v22 = [v17 name];

  v23 = [v19 initWithIdentifier:v21 string:v22];
  v24 = objc_alloc(MEMORY[0x277CD4188]);
  v25 = [v58 UUIDString];
  v26 = [v57 name];
  v27 = [v24 initWithIdentifier:v25 string:v26];

  v28 = objc_alloc(MEMORY[0x277CD3CF8]);
  v29 = [v20 UUIDString];
  *buf = v29;
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
      v54 = [v17 name];
      v55 = [v17 home];
      v56 = [v55 name];
      *buf = 138543874;
      *&buf[4] = v53;
      v62 = 2112;
      v63 = v54;
      v64 = 2112;
      v65 = v56;
      _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_ERROR, "%{public}@Unable to get the intent of Action Set %@ in Home %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v50);
  }

  v7 = v59;
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

- (void)removeIntentForActionSet:(id)a3
{
  v4 = a3;
  v5 = [(HMDDonationHandler *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HMDDonationHandler_removeIntentForActionSet___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)donateActionSet:(id)a3 withMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDDonationHandler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__HMDDonationHandler_donateActionSet_withMessage___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
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
  if (logCategory__hmf_once_t9_221218 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9_221218, &__block_literal_global_17_221219);
  }

  v3 = logCategory__hmf_once_v10_221220;

  return v3;
}

void __33__HMDDonationHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v10_221220;
  logCategory__hmf_once_v10_221220 = v1;
}

+ (id)sharedDonationHandler
{
  if (sharedDonationHandler_onceToken != -1)
  {
    dispatch_once(&sharedDonationHandler_onceToken, &__block_literal_global_221225);
  }

  v3 = sharedDonationHandler_donationHandler;

  return v3;
}

void __43__HMDDonationHandler_sharedDonationHandler__block_invoke()
{
  v0 = [[HMDDonationHandler alloc] _init];
  v1 = sharedDonationHandler_donationHandler;
  sharedDonationHandler_donationHandler = v0;
}

@end