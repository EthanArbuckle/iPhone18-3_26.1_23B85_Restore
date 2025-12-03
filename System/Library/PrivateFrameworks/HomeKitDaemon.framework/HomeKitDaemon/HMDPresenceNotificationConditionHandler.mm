@interface HMDPresenceNotificationConditionHandler
+ (id)logCategory;
- (BOOL)canHandleCondition:(id)condition;
- (BOOL)conditionPasses:(id)passes registrationUser:(id)user;
- (HMDHome)home;
- (HMDPresenceNotificationConditionHandler)initWithHome:(id)home;
- (HMDPresenceNotificationConditionHandler)initWithHome:(id)home presenceProvider:(id)provider featuresDataSource:(id)source;
@end

@implementation HMDPresenceNotificationConditionHandler

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (BOOL)conditionPasses:(id)passes registrationUser:(id)user
{
  v69[5] = *MEMORY[0x277D85DE8];
  passesCopy = passes;
  userCopy = user;
  v7 = passesCopy;
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

  if (v9)
  {
    [v9 presenceEventType];
    presenceEventUserType = [v9 presenceEventUserType];
    userUUIDs = [v9 userUUIDs];
    v12 = [userUUIDs na_map:&__block_literal_global_260634];

    if (presenceEventUserType == 1)
    {
      uuid = [userCopy uuid];
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v18 = v17 = v12;
        *buf = 138543618;
        v59 = v18;
        v60 = 2112;
        v61 = uuid;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Replacing HMPresenceEventUserTypeCurrentUser with HMPresenceEventUserTypeCustomUsers and userUUID: %@", buf, 0x16u);

        v12 = v17;
      }

      objc_autoreleasePoolPop(v14);
      v19 = MEMORY[0x277CBEB98];
      uUIDString = [uuid UUIDString];
      v21 = [v19 setWithObject:uUIDString];

      v12 = v21;
    }

    v22 = presenceTypeForEventTypeAndGranularity();
    v23 = [MEMORY[0x277CD1D28] activationGranularityWithValue:granularityForEventType()];
    v24 = *MEMORY[0x277CD22F0];
    v68[0] = *MEMORY[0x277CD22A0];
    v68[1] = v24;
    v25 = *MEMORY[0x277CD2308];
    v69[0] = &unk_283E74FA8;
    v69[1] = v25;
    v26 = *MEMORY[0x277CD24C8];
    v69[2] = v22;
    v27 = *MEMORY[0x277CD24C0];
    v68[2] = v26;
    v68[3] = v27;
    v55 = v23;
    number = [v23 number];
    v69[3] = number;
    v68[4] = *MEMORY[0x277CD24D0];
    v56 = v12;
    allObjects = [v12 allObjects];
    v69[4] = allObjects;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:5];

    home = [(HMDPresenceNotificationConditionHandler *)self home];
    v54 = v30;
    v32 = [HMDPresenceEventModel eventModelWithDictionary:v30 home:home eventTriggerUUID:0 message:0];
    v33 = [HMDPresenceEvent alloc];
    featuresDataSource = [(HMDPresenceNotificationConditionHandler *)self featuresDataSource];
    v53 = v32;
    v35 = [(HMDPresenceEvent *)v33 initWithModel:v32 home:home featuresDataSource:featuresDataSource];

    presenceProvider = [(HMDPresenceNotificationConditionHandler *)self presenceProvider];
    v37 = [presenceProvider presenceForHome:home];

    v38 = [(HMDPresenceEvent *)v35 evaluateWithHomePresence:v37];
    v39 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v42 = v51 = v22;
      HMFBooleanToString();
      v52 = v9;
      v44 = v43 = v7;
      *buf = 138544386;
      v59 = v42;
      v60 = 2112;
      v61 = v44;
      v62 = 2112;
      v63 = v43;
      v64 = 2112;
      v65 = v35;
      v66 = 2112;
      v67 = v37;
      _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@Condition passes: %@ condition: %@ Presence Event: %@ Home Presence: %@", buf, 0x34u);

      v7 = v43;
      v9 = v52;

      v22 = v51;
    }

    objc_autoreleasePoolPop(v39);
  }

  else
  {
    v45 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = HMFGetLogIdentifier();
      *buf = 138543618;
      v59 = v48;
      v60 = 2112;
      v61 = v7;
      _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_ERROR, "%{public}@Attempting to evaluate a non-presence condition: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v45);
    v38 = 0;
  }

  v49 = *MEMORY[0x277D85DE8];
  return v38;
}

- (BOOL)canHandleCondition:(id)condition
{
  conditionCopy = condition;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & (conditionCopy != 0);
}

- (HMDPresenceNotificationConditionHandler)initWithHome:(id)home presenceProvider:(id)provider featuresDataSource:(id)source
{
  homeCopy = home;
  providerCopy = provider;
  sourceCopy = source;
  if (providerCopy)
  {
    v11 = sourceCopy;
    v18.receiver = self;
    v18.super_class = HMDPresenceNotificationConditionHandler;
    v12 = [(HMDPresenceNotificationConditionHandler *)&v18 init];
    v13 = v12;
    if (v12)
    {
      objc_storeWeak(&v12->_home, homeCopy);
      objc_storeStrong(&v13->_presenceProvider, provider);
      objc_storeStrong(&v13->_featuresDataSource, source);
    }

    return v13;
  }

  else
  {
    v15 = _HMFPreconditionFailure();
    return [(HMDPresenceNotificationConditionHandler *)v15 initWithHome:v16, v17];
  }
}

- (HMDPresenceNotificationConditionHandler)initWithHome:(id)home
{
  homeCopy = home;
  featuresDataSource = [homeCopy featuresDataSource];
  isHomeActivityStateReplacesPresenceMonitorFeatureEnabled = [featuresDataSource isHomeActivityStateReplacesPresenceMonitorFeatureEnabled];

  v7 = off_2786662E8;
  if (!isHomeActivityStateReplacesPresenceMonitorFeatureEnabled)
  {
    v7 = off_2786662E0;
  }

  v8 = objc_alloc_init(*v7);
  featuresDataSource2 = [homeCopy featuresDataSource];
  v10 = [(HMDPresenceNotificationConditionHandler *)self initWithHome:homeCopy presenceProvider:v8 featuresDataSource:featuresDataSource2];

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t5_260657 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t5_260657, &__block_literal_global_17_260658);
  }

  v3 = logCategory__hmf_once_v6_260659;

  return v3;
}

void __54__HMDPresenceNotificationConditionHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v6_260659;
  logCategory__hmf_once_v6_260659 = v1;
}

@end