@interface HMMTapToRadarShim
+ (HMMTapToRadarShim)sharedInstance;
+ (id)logCategory;
- (BOOL)isTapToRadarServiceAuthorized;
- (HMMTapToRadarShim)init;
- (id)createRadarComponentWithName:(id)name version:(id)version identifier:(int64_t)identifier;
- (id)createRadarDraft;
- (void)createDraft:(id)draft forProcessNamed:(id)named withDisplayReason:(id)reason;
@end

@implementation HMMTapToRadarShim

- (void)createDraft:(id)draft forProcessNamed:(id)named withDisplayReason:(id)reason
{
  v23 = *MEMORY[0x277D85DE8];
  draftCopy = draft;
  namedCopy = named;
  reasonCopy = reason;
  tapToRadarService = [(HMMTapToRadarShim *)self tapToRadarService];
  v18 = 0;
  [tapToRadarService createDraft:draftCopy forProcessNamed:namedCopy withDisplayReason:reasonCopy error:&v18];
  v12 = v18;

  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v16;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_22B074000, v15, OS_LOG_TYPE_ERROR, "%{public}@Error trying to create TTR draft: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)createRadarComponentWithName:(id)name version:(id)version identifier:(int64_t)identifier
{
  nameCopy = name;
  versionCopy = version;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v9 = getRadarComponentClass_softClass;
  v17 = getRadarComponentClass_softClass;
  if (!getRadarComponentClass_softClass)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __getRadarComponentClass_block_invoke;
    v13[3] = &unk_2786F9128;
    v13[4] = &v14;
    __getRadarComponentClass_block_invoke(v13);
    v9 = v15[3];
  }

  v10 = v9;
  _Block_object_dispose(&v14, 8);
  v11 = [[v9 alloc] initWithName:nameCopy version:versionCopy identifier:identifier];

  return v11;
}

- (id)createRadarDraft
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getRadarDraftClass_softClass;
  v10 = getRadarDraftClass_softClass;
  if (!getRadarDraftClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getRadarDraftClass_block_invoke;
    v6[3] = &unk_2786F9128;
    v6[4] = &v7;
    __getRadarDraftClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v4 = objc_alloc_init(v2);

  return v4;
}

- (BOOL)isTapToRadarServiceAuthorized
{
  v17 = *MEMORY[0x277D85DE8];
  tapToRadarService = [(HMMTapToRadarShim *)self tapToRadarService];
  serviceSettings = [tapToRadarService serviceSettings];
  authorizationStatus = [serviceSettings authorizationStatus];

  if (authorizationStatus == 2)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v9;
      v10 = "%{public}@Failing to initiate a radar: TapToRadarService is rate-limiting us";
      goto LABEL_10;
    }
  }

  else if (authorizationStatus == 1)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v9;
      v10 = "%{public}@Failing to initiate a radar: TapToRadarService has been disallowed by the user";
      goto LABEL_10;
    }
  }

  else
  {
    if (authorizationStatus)
    {
      result = 1;
      goto LABEL_13;
    }

    v6 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v9;
      v10 = "%{public}@Failing to initiate a radar: TapToRadarService is not authorized";
LABEL_10:
      _os_log_impl(&dword_22B074000, v8, OS_LOG_TYPE_DEFAULT, v10, &v15, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v6);
  result = 0;
LABEL_13:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (HMMTapToRadarShim)init
{
  v9.receiver = self;
  v9.super_class = HMMTapToRadarShim;
  v2 = [(HMMTapToRadarShim *)&v9 init];
  if (v2)
  {
    if (!HMFIsInternalBuild() || !TapToRadarKitLibraryCore())
    {
      v7 = 0;
      goto LABEL_9;
    }

    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v3 = getTapToRadarServiceClass_softClass;
    v14 = getTapToRadarServiceClass_softClass;
    if (!getTapToRadarServiceClass_softClass)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __getTapToRadarServiceClass_block_invoke;
      v10[3] = &unk_2786F9128;
      v10[4] = &v11;
      __getTapToRadarServiceClass_block_invoke(v10);
      v3 = v12[3];
    }

    v4 = v3;
    _Block_object_dispose(&v11, 8);
    shared = [v3 shared];
    tapToRadarService = v2->_tapToRadarService;
    v2->_tapToRadarService = shared;
  }

  v7 = v2;
LABEL_9:

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6, &__block_literal_global_6);
  }

  v3 = logCategory__hmf_once_v7;

  return v3;
}

uint64_t __32__HMMTapToRadarShim_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v7 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

+ (HMMTapToRadarShim)sharedInstance
{
  if (sharedInstance__hmf_once_t0_1748 != -1)
  {
    dispatch_once(&sharedInstance__hmf_once_t0_1748, &__block_literal_global_1749);
  }

  v3 = sharedInstance__hmf_once_v1_1750;

  return v3;
}

uint64_t __35__HMMTapToRadarShim_sharedInstance__block_invoke()
{
  sharedInstance__hmf_once_v1_1750 = objc_alloc_init(HMMTapToRadarShim);

  return MEMORY[0x2821F96F8]();
}

@end