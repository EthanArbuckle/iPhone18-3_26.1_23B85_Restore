@interface HMDBulletinBoardNotification
+ (BOOL)supportsBulletinNotificationGroup:(id)a3;
+ (id)logCategory;
- (BOOL)isEnabled;
- (HMDBulletinBoardNotification)init;
- (HMDBulletinBoardNotification)initWithCoder:(id)a3;
- (HMDBulletinBoardNotification)initWithService:(id)a3;
- (HMDBulletinBoardNotificationServiceGroup)notificationServiceGroup;
- (HMDHome)home;
- (HMDService)service;
- (NSUUID)messageTargetUUID;
- (id)attributeDescriptions;
- (id)dumpStateWithPrivacyLevel:(unint64_t)a3;
- (id)logIdentifier;
- (void)_handleBulletinBoardNotificationCommitRequest:(id)a3;
- (void)configureBulletinNotification;
- (void)configureWithWorkQueue:(id)a3 messageDispatcher:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)registerForCharacteristicNotifications;
- (void)registerNotificationHandlers;
- (void)setEnabled:(BOOL)a3;
- (void)setNotificationServiceGroup:(id)a3;
@end

@implementation HMDBulletinBoardNotification

- (HMDService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(HMDBulletinBoardNotification *)self service];
  [v8 encodeConditionalObject:v4 forKey:*MEMORY[0x277CD2580]];

  if ([v8 hmd_isForLocalStore])
  {
    v5 = [(HMDBulletinBoardNotification *)self notificationServiceGroup];
    [v8 encodeObject:v5 forKey:@"HM.BulletinBoardNotificationServiceGroup"];
  }

  v6 = [(HMDBulletinBoardNotification *)self isEnabled];
  [v8 encodeBool:v6 forKey:*MEMORY[0x277CD20E0]];
  v7 = [(HMDBulletinBoardNotification *)self condition];
  [v8 encodeObject:v7 forKey:*MEMORY[0x277CD20D8]];
}

- (HMDBulletinBoardNotification)initWithCoder:(id)a3
{
  v22[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDBulletinBoardNotification *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2580]];
    objc_storeWeak(&v5->_service, v6);
    v7 = [v6 type];
    v8 = [HMDBulletinBoardNotification supportsBulletinNotificationGroup:v7];

    if (v8)
    {
      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.BulletinBoardNotificationServiceGroup"];
      notificationServiceGroup = v5->_notificationServiceGroup;
      v5->_notificationServiceGroup = v9;
    }

    v11 = *MEMORY[0x277CD20E0];
    if ([v4 containsValueForKey:*MEMORY[0x277CD20E0]])
    {
      v5->_enabled = [v4 decodeBoolForKey:v11];
    }

    else
    {
      v12 = [v6 type];
      v13 = [HMDBulletinBoard isBulletinSupportedForNonSecureCharacteristicType:0 serviceType:v12];

      if (v13)
      {
        v14 = [v6 type];
        v5->_enabled = [HMDBulletinBoard isCriticalNonSecureServiceType:v14];
      }
    }

    v15 = MEMORY[0x277CBEB98];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v17 = [v15 setWithArray:v16];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:*MEMORY[0x277CD20D8]];
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
  v7 = [(HMDBulletinBoardNotification *)self condition];
  v8 = [v7 predicateFormat];
  v9 = [v6 initWithName:@"Condition" value:v8];
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
    v6 = [WeakRetained instanceID];
    v7 = [v5 stringWithFormat:@"%@", v6];
    v17[0] = v7;
    v17[1] = @"HM.BulletinBoardNotification";
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];

    v9 = MEMORY[0x277CCAD78];
    v10 = [WeakRetained accessory];
    v11 = [v10 uuid];
    v12 = [v9 hm_deriveUUIDFromBaseUUID:v11 identifierSalt:0 withSalts:v8];
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
  v2 = [(HMDBulletinBoardNotification *)self service];
  v3 = MEMORY[0x277CCACA8];
  v4 = [v2 name];
  v5 = [v2 uuid];
  v6 = [v3 stringWithFormat:@"%@/%@", v4, v5];

  return v6;
}

- (void)registerForCharacteristicNotifications
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v42 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Registering for bulletin characteristic notification", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDBulletinBoardNotification *)v4 service];
  v29 = [v7 accessory];
  v30 = v7;
  v8 = [HMDBulletinBoard bulletinSupportedCharacteristicsForService:v7];
  v9 = [MEMORY[0x277CBEB18] array];
  v32 = [MEMORY[0x277CBEB18] array];
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
    v34 = v9;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v38 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v37 + 1) + 8 * i);
        v14 = [v13 service];
        v15 = [(HMDBulletinBoardNotification *)v4 notificationServiceGroup];
        v16 = [v15 cameraProfileUUIDs];
        if (![v16 count])
        {

LABEL_16:
          if ([(HMDBulletinBoardNotification *)v4 isEnabled])
          {
            v24 = v32;
          }

          else
          {
            v24 = v9;
          }

          goto LABEL_19;
        }

        v17 = [v14 type];
        if ([v17 isEqualToString:v35])
        {
        }

        else
        {
          v18 = [v14 type];
          v19 = [v18 isEqualToString:v31];

          v9 = v34;
          if (!v19)
          {
            goto LABEL_16;
          }
        }

        v20 = objc_autoreleasePoolPush();
        v21 = v4;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 138543618;
          v42 = v23;
          v43 = 2112;
          v44 = v13;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Skipping characteristic: %@ because the accessory has associated camera profile", buf, 0x16u);

          v9 = v34;
        }

        objc_autoreleasePoolPop(v20);
        v24 = v9;
LABEL_19:
        [v24 addObject:v13];
      }

      v11 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v11);
  }

  if ([v9 count])
  {
    v25 = [v9 copy];
    [v29 setNotificationsEnabled:0 forCharacteristics:v25 clientIdentifier:@"com.apple.HomeKitDaemon.bulletinBoard"];
  }

  if ([v32 count])
  {
    v26 = [v32 copy];
    [v29 setNotificationsEnabled:1 forCharacteristics:v26 clientIdentifier:@"com.apple.HomeKitDaemon.bulletinBoard"];
  }

  v27 = [(HMDBulletinBoardNotification *)v4 home];
  [v27 evaluateShouldRelaunchAndSetRelaunch];

  v28 = *MEMORY[0x277D85DE8];
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)a3
{
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = MEMORY[0x277CCACA8];
  v7 = [(HMDBulletinBoardNotification *)self messageTargetUUID];
  v8 = [v7 UUIDString];
  [(HMDBulletinBoardNotification *)self isEnabled];
  v9 = HMFBooleanToString();
  v10 = [v6 stringWithFormat:@"uuid: %@, enabled: %@", v8, v9];
  [v5 setObject:v10 forKeyedSubscript:*MEMORY[0x277D0F170]];

  v11 = [(HMDBulletinBoardNotification *)self notificationServiceGroup];
  v12 = [v11 dumpStateWithPrivacyLevel:a3];
  [v5 setObject:v12 forKeyedSubscript:*MEMORY[0x277D0F070]];

  return v5;
}

- (void)_handleBulletinBoardNotificationCommitRequest:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDBulletinBoardNotification *)self home];

  if (v5)
  {
    v6 = [(HMDBulletinBoardNotification *)self home];
    v7 = [v6 bulletinNotificationsSupported];

    if (v7)
    {
      v8 = [v4 BOOLForKey:*MEMORY[0x277CD20E0]];
      v9 = [v4 predicateForKey:*MEMORY[0x277CD20D8]];
      v10 = v8 ^ [(HMDBulletinBoardNotification *)self isEnabled];
      if (v10 == 1)
      {
        v11 = objc_autoreleasePoolPush();
        v12 = self;
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v14 = v37 = v11;
          [(HMDBulletinBoardNotification *)v12 isEnabled];
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
        [(HMDBulletinBoardNotification *)v12 setEnabled:v8];
        [(HMDBulletinBoardNotification *)v12 registerForCharacteristicNotifications];
      }

      v17 = [(HMDBulletinBoardNotification *)self condition];
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
        v29 = self;
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = HMFGetLogIdentifier();
          v32 = [(HMDBulletinBoardNotification *)v29 condition];
          *buf = 138543874;
          v39 = v31;
          v40 = 2112;
          v41 = v32;
          v42 = 2112;
          v43 = v9;
          _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@Updating bulletin board notification condition from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v28);
        [(HMDBulletinBoardNotification *)v29 setCondition:v9];
      }

      v33 = [MEMORY[0x277CCAB98] defaultCenter];
      [v33 postNotificationName:@"HMDBulletinBoardNotificationDidUpdateNotification" object:self userInfo:0];

      v34 = [(HMDBulletinBoardNotification *)self home];
      v35 = [v4 name];
      [v34 saveToCurrentAccountWithReason:v35];

LABEL_20:
      [(HMDBulletinBoardNotification *)self _updateLocalSettingsWithEnabled:v8 condition:v9 forMessage:v4];

      goto LABEL_21;
    }

    v23 = objc_autoreleasePoolPush();
    v24 = self;
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
    [v4 respondWithError:v27];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
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
  v2 = [(HMDBulletinBoardNotification *)self notificationServiceGroup];
  [v2 configureBulletinNotification];
}

- (HMDHome)home
{
  v2 = [(HMDBulletinBoardNotification *)self service];
  v3 = [v2 accessory];
  v4 = [v3 home];

  return v4;
}

- (void)setNotificationServiceGroup:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  notificationServiceGroup = self->_notificationServiceGroup;
  self->_notificationServiceGroup = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDBulletinBoardNotificationServiceGroup)notificationServiceGroup
{
  os_unfair_lock_lock_with_options();
  v3 = self->_notificationServiceGroup;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setEnabled:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_enabled = a3;

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
  v3 = [(HMDBulletinBoardNotification *)self msgDispatcher];
  v4 = *MEMORY[0x277CD20D0];
  v5 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v3 registerForMessage:v4 receiver:self policies:v6 selector:sel__handleBulletinBoardNotificationCommitRequest_];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)configureWithWorkQueue:(id)a3 messageDispatcher:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (!v10)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (!v6)
  {
LABEL_7:
    v8 = _HMFPreconditionFailure();
    [(HMDBulletinBoardNotification *)v8 dealloc];
    return;
  }

  [(HMDBulletinBoardNotification *)self setWorkQueue:v10];
  [(HMDBulletinBoardNotification *)self setMsgDispatcher:v6];
  v7 = [(HMDBulletinBoardNotification *)self notificationServiceGroup];
  [v7 configureWithWorkQueue:v10];

  [(HMDBulletinBoardNotification *)self registerNotificationHandlers];
  [(HMDBulletinBoardNotification *)self registerForCharacteristicNotifications];
}

- (void)dealloc
{
  v3 = [(HMDBulletinBoardNotification *)self msgDispatcher];
  [v3 deregisterReceiver:self];

  v4.receiver = self;
  v4.super_class = HMDBulletinBoardNotification;
  [(HMDBulletinBoardNotification *)&v4 dealloc];
}

- (HMDBulletinBoardNotification)initWithService:(id)a3
{
  v4 = a3;
  v5 = [(HMDBulletinBoardNotification *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_service, v4);
    v7 = [v4 type];
    v8 = [HMDBulletinBoardNotification supportsBulletinNotificationGroup:v7];

    if (v8)
    {
      v9 = [[HMDBulletinBoardNotificationServiceGroup alloc] initWithBulletinBoardNotification:v6];
      notificationServiceGroup = v6->_notificationServiceGroup;
      v6->_notificationServiceGroup = v9;
    }

    v11 = [v4 type];
    if ([HMDBulletinBoard isBulletinSupportedForNonSecureCharacteristicType:0 serviceType:v11])
    {
      v12 = [v4 type];
      v13 = [HMDBulletinBoard isCriticalNonSecureServiceType:v12];

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

+ (BOOL)supportsBulletinNotificationGroup:(id)a3
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (+[HMDDeviceCapabilities supportsBulletinBoard])
  {
    v4 = *MEMORY[0x277CFE8D8];
    v9[0] = *MEMORY[0x277CFE840];
    v9[1] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
    v6 = [v5 containsObject:v3];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

@end