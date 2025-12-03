@interface HMDMatterBulletinBoardNotification
+ (id)logCategory;
- (HMDMatterAccessoryProtocol)accessory;
- (HMDMatterBulletinBoardNotification)initWithCoder:(id)coder;
- (id)attributeDescriptions;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)home;
- (id)logIdentifier;
- (void)_handleBulletinBoardNotificationCommitRequest:(id)request;
- (void)_updateAccessoryBulletinNotificationManagerWithEnabled:(BOOL)enabled condition:(id)condition completion:(id)completion;
- (void)configureWithWorkQueue:(id)queue messageDispatcher:(id)dispatcher;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)registerNotificationHandlers;
- (void)updateRegistrations;
@end

@implementation HMDMatterBulletinBoardNotification

- (HMDMatterAccessoryProtocol)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accessory = [(HMDMatterBulletinBoardNotification *)self accessory];
  [coderCopy encodeConditionalObject:accessory forKey:@"accessory"];

  endpointID = [(HMDMatterBulletinBoardNotification *)self endpointID];
  [coderCopy encodeObject:endpointID forKey:*MEMORY[0x277CD2610]];

  isEnabled = [(HMDBulletinBoardNotification *)self isEnabled];
  [coderCopy encodeBool:isEnabled forKey:*MEMORY[0x277CD20E0]];
  condition = [(HMDBulletinBoardNotification *)self condition];
  [coderCopy encodeObject:condition forKey:*MEMORY[0x277CD20D8]];
}

- (HMDMatterBulletinBoardNotification)initWithCoder:(id)coder
{
  v22[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [(HMDBulletinBoardNotification *)self init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"accessory"];

    objc_storeWeak(&v5->_accessory, v9);
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2610]];
    endpointID = v5->_endpointID;
    v5->_endpointID = v10;
    v12 = v10;

    v13 = *MEMORY[0x277CD20E0];
    if ([coderCopy containsValueForKey:*MEMORY[0x277CD20E0]])
    {
      v14 = [coderCopy decodeBoolForKey:v13];
    }

    else
    {
      v14 = 0;
    }

    [(HMDBulletinBoardNotification *)v5 setEnabled:v14];
    v15 = MEMORY[0x277CBEB98];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    v17 = [v15 setWithArray:v16];

    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:*MEMORY[0x277CD20D8]];
    [(HMDBulletinBoardNotification *)v5 setCondition:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
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

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  accessory = [(HMDMatterBulletinBoardNotification *)self accessory];
  name = [accessory name];
  endpointID = [(HMDMatterBulletinBoardNotification *)self endpointID];
  messageTargetUUID = [(HMDMatterBulletinBoardNotification *)self messageTargetUUID];
  uUIDString = [messageTargetUUID UUIDString];
  v9 = [v3 stringWithFormat:@"%@/%@ : %@", name, endpointID, uUIDString];

  return v9;
}

- (void)_updateAccessoryBulletinNotificationManagerWithEnabled:(BOOL)enabled condition:(id)condition completion:(id)completion
{
  enabledCopy = enabled;
  v48 = *MEMORY[0x277D85DE8];
  conditionCopy = condition;
  completionCopy = completion;
  home = [(HMDMatterBulletinBoardNotification *)self home];
  accessoryBulletinNotificationManager = [home accessoryBulletinNotificationManager];

  if (accessoryBulletinNotificationManager)
  {
    accessory = [(HMDMatterBulletinBoardNotification *)self accessory];
    endpointID = [(HMDMatterBulletinBoardNotification *)self endpointID];
    v14 = [HMDBulletinBoard bulletinSupportedMatterPathsForAccessory:accessory endpointID:endpointID];
    v15 = [accessoryBulletinNotificationManager conditionsFromPredicate:conditionCopy];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __114__HMDMatterBulletinBoardNotification__updateAccessoryBulletinNotificationManagerWithEnabled_condition_completion___block_invoke;
    aBlock[3] = &unk_278684F98;
    v45 = enabledCopy;
    aBlock[4] = self;
    v39 = conditionCopy;
    v34 = completionCopy;
    v16 = completionCopy;
    v44 = v16;
    v17 = accessoryBulletinNotificationManager;
    v40 = v17;
    v18 = accessory;
    v41 = v18;
    v19 = endpointID;
    v42 = v19;
    v20 = v15;
    v43 = v20;
    v21 = _Block_copy(aBlock);
    if ([v14 count])
    {
      v22 = !enabledCopy;
      if (enabledCopy)
      {
        v23 = v14;
      }

      else
      {
        v23 = 0;
      }

      v33 = accessoryBulletinNotificationManager;
      v24 = v19;
      v25 = conditionCopy;
      if (v22)
      {
        v26 = v14;
      }

      else
      {
        v26 = 0;
      }

      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __114__HMDMatterBulletinBoardNotification__updateAccessoryBulletinNotificationManagerWithEnabled_condition_completion___block_invoke_2;
      v35[3] = &unk_278687AE8;
      v36 = v16;
      v37 = v21;
      v27 = v26;
      conditionCopy = v25;
      v19 = v24;
      accessoryBulletinNotificationManager = v33;
      [v17 updateRegistrationsWithEnabledMatterPaths:v23 disabledMatterPaths:v27 conditions:v20 completion:v35];
    }

    else
    {
      v21[2](v21);
    }

    completionCopy = v34;
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    selfCopy = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543362;
      v47 = v31;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Accessory Bulletin Notification Manager is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v28);
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(completionCopy + 2))(completionCopy, v18);
  }

  v32 = *MEMORY[0x277D85DE8];
}

uint64_t __114__HMDMatterBulletinBoardNotification__updateAccessoryBulletinNotificationManagerWithEnabled_condition_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2 == [*(a1 + 32) isEnabled] && (v3 = *(a1 + 40), objc_msgSend(*(a1 + 32), "condition"), v4 = objc_claimAutoreleasedReturnValue(), v4, v3 == v4))
  {
    v12 = *(*(a1 + 80) + 16);

    return v12();
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    if (*(a1 + 88) == 1)
    {
      v8 = *(a1 + 72);
      v9 = *(a1 + 80);

      return [v5 enableBulletinForAccessory:v6 endpointID:v7 conditions:v8 completion:v9];
    }

    else
    {
      v11 = *(a1 + 80);

      return [v5 disableBulletinForAccessory:v6 endpointID:v7 completion:v11];
    }
  }
}

uint64_t __114__HMDMatterBulletinBoardNotification__updateAccessoryBulletinNotificationManagerWithEnabled_condition_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

- (void)updateRegistrations
{
  isEnabled = [(HMDBulletinBoardNotification *)self isEnabled];
  condition = [(HMDBulletinBoardNotification *)self condition];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__HMDMatterBulletinBoardNotification_updateRegistrations__block_invoke;
  v5[3] = &unk_27868A250;
  v5[4] = self;
  [(HMDMatterBulletinBoardNotification *)self _updateAccessoryBulletinNotificationManagerWithEnabled:isEnabled condition:condition completion:v5];
}

void __57__HMDMatterBulletinBoardNotification_updateRegistrations__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Updating bulletin notification manager from updateRegistrations finished with error: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = MEMORY[0x277CCACA8];
  messageTargetUUID = [(HMDMatterBulletinBoardNotification *)self messageTargetUUID];
  uUIDString = [messageTargetUUID UUIDString];
  [(HMDBulletinBoardNotification *)self isEnabled];
  v8 = HMFBooleanToString();
  v9 = [v5 stringWithFormat:@"uuid: %@, enabled: %@", uUIDString, v8];
  [dictionary setObject:v9 forKeyedSubscript:*MEMORY[0x277D0F170]];

  return dictionary;
}

- (void)_handleBulletinBoardNotificationCommitRequest:(id)request
{
  v50 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  home = [(HMDMatterBulletinBoardNotification *)self home];

  if (!home)
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v26;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Ignoring message to disconnected object", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    v27 = MEMORY[0x277CCA9B8];
    v28 = 12;
    goto LABEL_18;
  }

  home2 = [(HMDMatterBulletinBoardNotification *)self home];
  bulletinNotificationsSupported = [home2 bulletinNotificationsSupported];

  if ((bulletinNotificationsSupported & 1) == 0)
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v32;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Bulletin board notification cannot be modified when bulletin notifications are not supported.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v29);
    v27 = MEMORY[0x277CCA9B8];
    v28 = 48;
LABEL_18:
    v9 = [v27 hmErrorWithCode:v28];
    [requestCopy respondWithError:v9];
    goto LABEL_23;
  }

  v8 = [requestCopy BOOLForKey:*MEMORY[0x277CD20E0]];
  v9 = [requestCopy predicateForKey:*MEMORY[0x277CD20D8]];
  v10 = v8 ^ [(HMDBulletinBoardNotification *)self isEnabled];
  if (v10 == 1)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v14 = v39 = v11;
      [(HMDBulletinBoardNotification *)selfCopy3 isEnabled];
      v15 = HMFBooleanToString();
      v16 = HMFBooleanToString();
      *buf = 138543874;
      v45 = v14;
      v46 = 2112;
      v47 = v15;
      v48 = 2112;
      v49 = v16;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Updating bulletin board notification enabled from %@ to %@", buf, 0x20u);

      v11 = v39;
    }

    objc_autoreleasePoolPop(v11);
  }

  condition = [(HMDBulletinBoardNotification *)self condition];
  v18 = HMFEqualObjects();

  if ((v18 & 1) == 0)
  {
    v33 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = HMFGetLogIdentifier();
      condition2 = [(HMDBulletinBoardNotification *)selfCopy4 condition];
      *buf = 138543874;
      v45 = v36;
      v46 = 2112;
      v47 = condition2;
      v48 = 2112;
      v49 = v9;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Updating bulletin board notification condition from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v33);
    goto LABEL_22;
  }

  if (v10)
  {
LABEL_22:
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __84__HMDMatterBulletinBoardNotification__handleBulletinBoardNotificationCommitRequest___block_invoke;
    v40[3] = &unk_278684F70;
    v40[4] = self;
    v41 = requestCopy;
    v43 = v8;
    v9 = v9;
    v42 = v9;
    [(HMDMatterBulletinBoardNotification *)self _updateAccessoryBulletinNotificationManagerWithEnabled:v8 condition:v9 completion:v40];

    goto LABEL_23;
  }

  v19 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543362;
    v45 = v22;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Updating local bulletin board notification settings with existing values", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v19);
  [(HMDMatterBulletinBoardNotification *)selfCopy5 _updateLocalSettingsWithEnabled:v8 condition:v9 forMessage:requestCopy];
LABEL_23:

  v38 = *MEMORY[0x277D85DE8];
}

void __84__HMDMatterBulletinBoardNotification__handleBulletinBoardNotificationCommitRequest___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
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
      v9 = *(a1 + 40);
      v15 = 138543874;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Error updating bulletin notification manager for message %@ : %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v10 = *(a1 + 40);
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v10 respondWithError:v11];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 40);
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Updated bulletin notification manager for message %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) setEnabled:*(a1 + 56)];
    [*(a1 + 32) setCondition:*(a1 + 48)];
    [*(a1 + 32) _updateLocalSettingsWithEnabled:*(a1 + 56) condition:*(a1 + 48) forMessage:*(a1 + 40)];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)home
{
  accessory = [(HMDMatterBulletinBoardNotification *)self accessory];
  home = [accessory home];

  return home;
}

- (void)registerNotificationHandlers
{
  v8[1] = *MEMORY[0x277D85DE8];
  msgDispatcher = [(HMDMatterBulletinBoardNotification *)self msgDispatcher];
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
  if (queueCopy)
  {
    v8 = dispatcherCopy;
    if (dispatcherCopy)
    {
      [(HMDMatterBulletinBoardNotification *)self setWorkQueue:queueCopy];
      [(HMDMatterBulletinBoardNotification *)self setMsgDispatcher:v8];
      [(HMDMatterBulletinBoardNotification *)self registerNotificationHandlers];
      isEnabled = [(HMDBulletinBoardNotification *)self isEnabled];
      condition = [(HMDBulletinBoardNotification *)self condition];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __79__HMDMatterBulletinBoardNotification_configureWithWorkQueue_messageDispatcher___block_invoke;
      v13[3] = &unk_27868A250;
      v13[4] = self;
      [(HMDMatterBulletinBoardNotification *)self _updateAccessoryBulletinNotificationManagerWithEnabled:isEnabled condition:condition completion:v13];

      return;
    }
  }

  else
  {
    _HMFPreconditionFailure();
  }

  v11 = _HMFPreconditionFailure();
  __79__HMDMatterBulletinBoardNotification_configureWithWorkQueue_messageDispatcher___block_invoke(v11, v12);
}

void __79__HMDMatterBulletinBoardNotification_configureWithWorkQueue_messageDispatcher___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Updating bulletin notification manager during configure finished with error: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  msgDispatcher = [(HMDMatterBulletinBoardNotification *)self msgDispatcher];
  [msgDispatcher deregisterReceiver:self];

  v4.receiver = self;
  v4.super_class = HMDMatterBulletinBoardNotification;
  [(HMDBulletinBoardNotification *)&v4 dealloc];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t10_249227 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t10_249227, &__block_literal_global_249228);
  }

  v3 = logCategory__hmf_once_v11_249229;

  return v3;
}

void __49__HMDMatterBulletinBoardNotification_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v11_249229;
  logCategory__hmf_once_v11_249229 = v1;
}

@end