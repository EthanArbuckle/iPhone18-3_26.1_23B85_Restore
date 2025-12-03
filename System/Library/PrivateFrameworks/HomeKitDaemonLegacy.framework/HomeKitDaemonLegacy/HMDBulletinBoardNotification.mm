@interface HMDBulletinBoardNotification
+ (BOOL)supportsBulletinNotificationGroup:(id)group;
+ (id)logCategory;
- (BOOL)isEnabled;
- (HMDBulletinBoardNotification)init;
- (HMDBulletinBoardNotification)initWithCoder:(id)coder;
- (HMDBulletinBoardNotification)initWithService:(id)service;
- (HMDBulletinBoardNotificationServiceGroup)notificationServiceGroup;
- (HMDHome)home;
- (HMDService)service;
- (NSUUID)messageTargetUUID;
- (id)attributeDescriptions;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)logIdentifier;
- (void)_handleBulletinBoardNotificationCommitRequest:(id)request;
- (void)configureBulletinNotification;
- (void)configureWithWorkQueue:(id)queue messageDispatcher:(id)dispatcher;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)registerForCharacteristicNotifications;
- (void)registerNotificationHandlers;
- (void)setEnabled:(BOOL)enabled;
- (void)setNotificationServiceGroup:(id)group;
@end

@implementation HMDBulletinBoardNotification

- (HMDService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  service = [(HMDBulletinBoardNotification *)self service];
  [coderCopy encodeConditionalObject:service forKey:*MEMORY[0x277CD2580]];

  if ([coderCopy hmd_isForLocalStore])
  {
    notificationServiceGroup = [(HMDBulletinBoardNotification *)self notificationServiceGroup];
    [coderCopy encodeObject:notificationServiceGroup forKey:@"HM.BulletinBoardNotificationServiceGroup"];
  }

  isEnabled = [(HMDBulletinBoardNotification *)self isEnabled];
  [coderCopy encodeBool:isEnabled forKey:*MEMORY[0x277CD20E0]];
  condition = [(HMDBulletinBoardNotification *)self condition];
  [coderCopy encodeObject:condition forKey:*MEMORY[0x277CD20D8]];
}

- (HMDBulletinBoardNotification)initWithCoder:(id)coder
{
  v22[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [(HMDBulletinBoardNotification *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2580]];
    objc_storeWeak(&v5->_service, v6);
    type = [v6 type];
    v8 = [HMDBulletinBoardNotification supportsBulletinNotificationGroup:type];

    if (v8)
    {
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.BulletinBoardNotificationServiceGroup"];
      notificationServiceGroup = v5->_notificationServiceGroup;
      v5->_notificationServiceGroup = v9;
    }

    v11 = *MEMORY[0x277CD20E0];
    if ([coderCopy containsValueForKey:*MEMORY[0x277CD20E0]])
    {
      v5->_enabled = [coderCopy decodeBoolForKey:v11];
    }

    else
    {
      type2 = [v6 type];
      v13 = [HMDBulletinBoard isBulletinSupportedForNonSecureCharacteristicType:0 serviceType:type2];

      if (v13)
      {
        type3 = [v6 type];
        v5->_enabled = [HMDBulletinBoard isCriticalNonSecureServiceType:type3];
      }
    }

    v15 = MEMORY[0x277CBEB98];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v17 = [v15 setWithArray:v16];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:*MEMORY[0x277CD20D8]];
    condition = v5->_condition;
    v5->_condition = v18;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)attributeDescriptions
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDBulletinBoardNotification isEnabled](self, "isEnabled")}];
  v5 = [v3 initWithName:@"Enabled" value:v4];
  v13[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  condition = [(HMDBulletinBoardNotification *)self condition];
  predicateFormat = [condition predicateFormat];
  v9 = [v6 initWithName:@"Condition" value:predicateFormat];
  v13[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (NSUUID)messageTargetUUID
{
  v17[2] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  messageTargetUUID = self->_messageTargetUUID;
  if (!messageTargetUUID)
  {
    WeakRetained = objc_loadWeakRetained(&self->_service);
    v5 = MEMORY[0x277CCACA8];
    instanceID = [WeakRetained instanceID];
    v7 = [v5 stringWithFormat:@"%@", instanceID];
    v17[0] = v7;
    v17[1] = @"HM.BulletinBoardNotification";
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];

    v9 = MEMORY[0x277CCAD78];
    accessory = [WeakRetained accessory];
    uuid = [accessory uuid];
    v12 = [v9 hm_deriveUUIDFromBaseUUID:uuid identifierSalt:0 withSalts:v8];
    v13 = self->_messageTargetUUID;
    self->_messageTargetUUID = v12;

    messageTargetUUID = self->_messageTargetUUID;
  }

  v14 = messageTargetUUID;
  os_unfair_lock_unlock(&self->_lock);
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)logIdentifier
{
  service = [(HMDBulletinBoardNotification *)self service];
  v3 = MEMORY[0x277CCACA8];
  name = [service name];
  uuid = [service uuid];
  v6 = [v3 stringWithFormat:@"%@/%@", name, uuid];

  return v6;
}

- (void)registerForCharacteristicNotifications
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v42 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Registering for bulletin characteristic notification", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  service = [(HMDBulletinBoardNotification *)selfCopy service];
  accessory = [service accessory];
  v30 = service;
  v8 = [HMDBulletinBoard bulletinSupportedCharacteristicsForService:service];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v10)
  {
    v11 = v10;
    v35 = *MEMORY[0x277CFE840];
    v36 = *v38;
    v31 = *MEMORY[0x277CFE8D8];
    v34 = array;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v38 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v37 + 1) + 8 * i);
        service2 = [v13 service];
        notificationServiceGroup = [(HMDBulletinBoardNotification *)selfCopy notificationServiceGroup];
        cameraProfileUUIDs = [notificationServiceGroup cameraProfileUUIDs];
        if (![cameraProfileUUIDs count])
        {

LABEL_16:
          if ([(HMDBulletinBoardNotification *)selfCopy isEnabled])
          {
            v24 = array2;
          }

          else
          {
            v24 = array;
          }

          goto LABEL_19;
        }

        type = [service2 type];
        if ([type isEqualToString:v35])
        {
        }

        else
        {
          type2 = [service2 type];
          v19 = [type2 isEqualToString:v31];

          array = v34;
          if (!v19)
          {
            goto LABEL_16;
          }
        }

        v20 = objc_autoreleasePoolPush();
        v21 = selfCopy;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 138543618;
          v42 = v23;
          v43 = 2112;
          v44 = v13;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Skipping characteristic: %@ because the accessory has associated camera profile", buf, 0x16u);

          array = v34;
        }

        objc_autoreleasePoolPop(v20);
        v24 = array;
LABEL_19:
        [v24 addObject:v13];
      }

      v11 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v11);
  }

  if ([array count])
  {
    v25 = [array copy];
    [accessory setNotificationsEnabled:0 forCharacteristics:v25 clientIdentifier:@"com.apple.HomeKitDaemon.bulletinBoard"];
  }

  if ([array2 count])
  {
    v26 = [array2 copy];
    [accessory setNotificationsEnabled:1 forCharacteristics:v26 clientIdentifier:@"com.apple.HomeKitDaemon.bulletinBoard"];
  }

  home = [(HMDBulletinBoardNotification *)selfCopy home];
  [home evaluateShouldRelaunchAndSetRelaunch];

  v28 = *MEMORY[0x277D85DE8];
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = MEMORY[0x277CCACA8];
  messageTargetUUID = [(HMDBulletinBoardNotification *)self messageTargetUUID];
  uUIDString = [messageTargetUUID UUIDString];
  [(HMDBulletinBoardNotification *)self isEnabled];
  v9 = HMFBooleanToString();
  v10 = [v6 stringWithFormat:@"uuid: %@, enabled: %@", uUIDString, v9];
  [dictionary setObject:v10 forKeyedSubscript:*MEMORY[0x277D0F170]];

  notificationServiceGroup = [(HMDBulletinBoardNotification *)self notificationServiceGroup];
  v12 = [notificationServiceGroup dumpStateWithPrivacyLevel:level];
  [dictionary setObject:v12 forKeyedSubscript:*MEMORY[0x277D0F070]];

  return dictionary;
}

- (void)_handleBulletinBoardNotificationCommitRequest:(id)request
{
  v44 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  home = [(HMDBulletinBoardNotification *)self home];

  if (home)
  {
    home2 = [(HMDBulletinBoardNotification *)self home];
    bulletinNotificationsSupported = [home2 bulletinNotificationsSupported];

    if (bulletinNotificationsSupported)
    {
      v8 = [requestCopy BOOLForKey:*MEMORY[0x277CD20E0]];
      v9 = [requestCopy predicateForKey:*MEMORY[0x277CD20D8]];
      v10 = v8 ^ [(HMDBulletinBoardNotification *)self isEnabled];
      if (v10 == 1)
      {
        v11 = objc_autoreleasePoolPush();
        selfCopy = self;
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v14 = v37 = v11;
          [(HMDBulletinBoardNotification *)selfCopy isEnabled];
          v15 = HMFBooleanToString();
          v16 = HMFBooleanToString();
          *buf = 138543874;
          v39 = v14;
          v40 = 2112;
          v41 = v15;
          v42 = 2112;
          v43 = v16;
          _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Updating bulletin board notification enabled from %@ to %@", buf, 0x20u);

          v11 = v37;
        }

        objc_autoreleasePoolPop(v11);
        [(HMDBulletinBoardNotification *)selfCopy setEnabled:v8];
        [(HMDBulletinBoardNotification *)selfCopy registerForCharacteristicNotifications];
      }

      condition = [(HMDBulletinBoardNotification *)self condition];
      v18 = HMFEqualObjects();

      if (v18)
      {
        if (!v10)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v28 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = HMFGetLogIdentifier();
          condition2 = [(HMDBulletinBoardNotification *)selfCopy2 condition];
          *buf = 138543874;
          v39 = v31;
          v40 = 2112;
          v41 = condition2;
          v42 = 2112;
          v43 = v9;
          _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@Updating bulletin board notification condition from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v28);
        [(HMDBulletinBoardNotification *)selfCopy2 setCondition:v9];
      }

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:@"HMDBulletinBoardNotificationDidUpdateNotification" object:self userInfo:0];

      home3 = [(HMDBulletinBoardNotification *)self home];
      name = [requestCopy name];
      [home3 saveToCurrentAccountWithReason:name];

LABEL_20:
      [(HMDBulletinBoardNotification *)self _updateLocalSettingsWithEnabled:v8 condition:v9 forMessage:requestCopy];

      goto LABEL_21;
    }

    v23 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v26;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Bulletin board notification cannot be modified when bulletin notifications are not supported.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [requestCopy respondWithError:v27];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v22;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Ignoring message to disconnected object", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
  }

LABEL_21:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)configureBulletinNotification
{
  notificationServiceGroup = [(HMDBulletinBoardNotification *)self notificationServiceGroup];
  [notificationServiceGroup configureBulletinNotification];
}

- (HMDHome)home
{
  service = [(HMDBulletinBoardNotification *)self service];
  accessory = [service accessory];
  home = [accessory home];

  return home;
}

- (void)setNotificationServiceGroup:(id)group
{
  groupCopy = group;
  os_unfair_lock_lock_with_options();
  notificationServiceGroup = self->_notificationServiceGroup;
  self->_notificationServiceGroup = groupCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDBulletinBoardNotificationServiceGroup)notificationServiceGroup
{
  os_unfair_lock_lock_with_options();
  v3 = self->_notificationServiceGroup;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setEnabled:(BOOL)enabled
{
  os_unfair_lock_lock_with_options();
  self->_enabled = enabled;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isEnabled
{
  os_unfair_lock_lock_with_options();
  enabled = self->_enabled;
  os_unfair_lock_unlock(&self->_lock);
  return enabled;
}

- (void)registerNotificationHandlers
{
  v8[1] = *MEMORY[0x277D85DE8];
  msgDispatcher = [(HMDBulletinBoardNotification *)self msgDispatcher];
  v4 = *MEMORY[0x277CD20D0];
  v5 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [msgDispatcher registerForMessage:v4 receiver:self policies:v6 selector:sel__handleBulletinBoardNotificationCommitRequest_];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)configureWithWorkQueue:(id)queue messageDispatcher:(id)dispatcher
{
  queueCopy = queue;
  dispatcherCopy = dispatcher;
  if (!queueCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (!dispatcherCopy)
  {
LABEL_7:
    v8 = _HMFPreconditionFailure();
    [(HMDBulletinBoardNotification *)v8 dealloc];
    return;
  }

  [(HMDBulletinBoardNotification *)self setWorkQueue:queueCopy];
  [(HMDBulletinBoardNotification *)self setMsgDispatcher:dispatcherCopy];
  notificationServiceGroup = [(HMDBulletinBoardNotification *)self notificationServiceGroup];
  [notificationServiceGroup configureWithWorkQueue:queueCopy];

  [(HMDBulletinBoardNotification *)self registerNotificationHandlers];
  [(HMDBulletinBoardNotification *)self registerForCharacteristicNotifications];
}

- (void)dealloc
{
  msgDispatcher = [(HMDBulletinBoardNotification *)self msgDispatcher];
  [msgDispatcher deregisterReceiver:self];

  v4.receiver = self;
  v4.super_class = HMDBulletinBoardNotification;
  [(HMDBulletinBoardNotification *)&v4 dealloc];
}

- (HMDBulletinBoardNotification)initWithService:(id)service
{
  serviceCopy = service;
  v5 = [(HMDBulletinBoardNotification *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_service, serviceCopy);
    type = [serviceCopy type];
    v8 = [HMDBulletinBoardNotification supportsBulletinNotificationGroup:type];

    if (v8)
    {
      v9 = [[HMDBulletinBoardNotificationServiceGroup alloc] initWithBulletinBoardNotification:v6];
      notificationServiceGroup = v6->_notificationServiceGroup;
      v6->_notificationServiceGroup = v9;
    }

    type2 = [serviceCopy type];
    if ([HMDBulletinBoard isBulletinSupportedForNonSecureCharacteristicType:0 serviceType:type2])
    {
      type3 = [serviceCopy type];
      v13 = [HMDBulletinBoard isCriticalNonSecureServiceType:type3];

      if (!v13)
      {
        v6->_enabled = 0;
      }
    }

    else
    {
    }
  }

  return v6;
}

- (HMDBulletinBoardNotification)init
{
  v3.receiver = self;
  v3.super_class = HMDBulletinBoardNotification;
  result = [(HMDBulletinBoardNotification *)&v3 init];
  if (result)
  {
    result->_enabled = 1;
  }

  return result;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t10_25016 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t10_25016, &__block_literal_global_25017);
  }

  v3 = logCategory__hmf_once_v11_25018;

  return v3;
}

uint64_t __43__HMDBulletinBoardNotification_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v11_25018;
  logCategory__hmf_once_v11_25018 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (BOOL)supportsBulletinNotificationGroup:(id)group
{
  v9[2] = *MEMORY[0x277D85DE8];
  groupCopy = group;
  if (+[HMDDeviceCapabilities supportsBulletinBoard])
  {
    v4 = *MEMORY[0x277CFE8D8];
    v9[0] = *MEMORY[0x277CFE840];
    v9[1] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
    v6 = [v5 containsObject:groupCopy];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

@end