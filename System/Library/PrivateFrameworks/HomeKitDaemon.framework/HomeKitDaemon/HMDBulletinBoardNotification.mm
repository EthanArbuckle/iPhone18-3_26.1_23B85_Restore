@interface HMDBulletinBoardNotification
+ (BOOL)supportsBulletinNotificationGroup:(id)a3;
+ (id)logCategory;
- (BOOL)isEnabled;
- (HMDBulletinBoardNotification)init;
- (HMDBulletinBoardNotification)initWithCoder:(id)a3;
- (HMDBulletinBoardNotification)initWithService:(id)a3;
- (HMDBulletinBoardNotification)initWithService:(id)a3 enabled:(BOOL)a4 condition:(id)a5;
- (HMDBulletinBoardNotificationServiceGroup)notificationServiceGroup;
- (HMDHome)home;
- (HMDService)service;
- (NSUUID)messageTargetUUID;
- (id)attributeDescriptions;
- (id)dumpStateWithPrivacyLevel:(unint64_t)a3;
- (id)logIdentifier;
- (void)_handleBulletinBoardNotificationCommitRequest:(id)a3;
- (void)_updateAccessoryBulletinNotificationManagerWithEnabled:(BOOL)a3 condition:(id)a4 completion:(id)a5;
- (void)configureBulletinNotification;
- (void)configureWithWorkQueue:(id)a3 messageDispatcher:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)registerNotificationHandlers;
- (void)setEnabled:(BOOL)a3;
- (void)setNotificationServiceGroup:(id)a3;
- (void)updateRegistrations;
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

- (void)_updateAccessoryBulletinNotificationManagerWithEnabled:(BOOL)a3 condition:(id)a4 completion:(id)a5
{
  v47 = a3;
  v70 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [(HMDBulletinBoardNotification *)self home];
  v10 = [v9 accessoryBulletinNotificationManager];

  if (v10)
  {
    v41 = v10;
    v42 = v8;
    v43 = v7;
    v40 = [(HMDBulletinBoardNotification *)self service];
    v11 = [HMDBulletinBoard bulletinSupportedCharacteristicsForService:?];
    v45 = [MEMORY[0x277CBEB58] set];
    v44 = [MEMORY[0x277CBEB58] set];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = v11;
    v12 = [obj countByEnumeratingWithState:&v61 objects:v69 count:16];
    v13 = self;
    if (v12)
    {
      v14 = v12;
      v15 = *v62;
      v50 = *MEMORY[0x277CFE840];
      v46 = *MEMORY[0x277CFE8D8];
      v49 = self;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v62 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v61 + 1) + 8 * i);
          v18 = [v17 service];
          v19 = [(HMDBulletinBoardNotification *)v13 notificationServiceGroup];
          v20 = [v19 cameraProfileUUIDs];
          if (![v20 count])
          {

LABEL_15:
            if (v47)
            {
              v28 = v44;
            }

            else
            {
              v28 = v45;
            }

            [v28 addObject:v17];
            goto LABEL_19;
          }

          v21 = [v18 type];
          if ([v21 isEqualToString:v50])
          {
          }

          else
          {
            v22 = [v18 type];
            v23 = [v22 isEqualToString:v46];

            v13 = v49;
            if (!v23)
            {
              goto LABEL_15;
            }
          }

          v24 = objc_autoreleasePoolPush();
          v25 = v13;
          v26 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v27 = HMFGetLogIdentifier();
            *buf = 138543618;
            v66 = v27;
            v67 = 2112;
            v68 = v17;
            _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Skipping characteristic: %@ because the accessory has associated camera profile", buf, 0x16u);

            v13 = v49;
          }

          objc_autoreleasePoolPop(v24);
LABEL_19:
        }

        v14 = [obj countByEnumeratingWithState:&v61 objects:v69 count:16];
      }

      while (v14);
    }

    v10 = v41;
    v7 = v43;
    v29 = [v41 conditionsFromPredicate:v43];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __108__HMDBulletinBoardNotification__updateAccessoryBulletinNotificationManagerWithEnabled_condition_completion___block_invoke;
    aBlock[3] = &unk_278685E70;
    v60 = v47;
    aBlock[4] = v13;
    v55 = v43;
    v8 = v42;
    v30 = v42;
    v59 = v30;
    v31 = v41;
    v56 = v31;
    v32 = v40;
    v57 = v32;
    v33 = v29;
    v58 = v33;
    v34 = _Block_copy(aBlock);
    if ([v44 count] || objc_msgSend(v45, "count"))
    {
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __108__HMDBulletinBoardNotification__updateAccessoryBulletinNotificationManagerWithEnabled_condition_completion___block_invoke_2;
      v51[3] = &unk_278687AE8;
      v52 = v30;
      v53 = v34;
      [v31 updateRegistrationsWithEnabledCharacteristics:v44 disabledCharacteristics:v45 conditions:v33 completion:v51];
    }

    else
    {
      v34[2](v34);
    }
  }

  else
  {
    v35 = objc_autoreleasePoolPush();
    v36 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543362;
      v66 = v38;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Accessory Bulletin Notification Manager is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v35);
    v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v8 + 2))(v8, v32);
  }

  v39 = *MEMORY[0x277D85DE8];
}

uint64_t __108__HMDBulletinBoardNotification__updateAccessoryBulletinNotificationManagerWithEnabled_condition_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2 == [*(a1 + 32) isEnabled] && (v3 = *(a1 + 40), objc_msgSend(*(a1 + 32), "condition"), v4 = objc_claimAutoreleasedReturnValue(), v4, v3 == v4))
  {
    v11 = *(*(a1 + 72) + 16);

    return v11();
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    if (*(a1 + 80) == 1)
    {
      v7 = *(a1 + 64);
      v8 = *(a1 + 72);

      return [v5 enableBulletinForService:v6 conditions:v7 completion:v8];
    }

    else
    {
      v10 = *(a1 + 72);

      return [v5 disableBulletinForService:v6 completion:v10];
    }
  }
}

uint64_t __108__HMDBulletinBoardNotification__updateAccessoryBulletinNotificationManagerWithEnabled_condition_completion___block_invoke_2(uint64_t a1, uint64_t a2)
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
  v3 = [(HMDBulletinBoardNotification *)self isEnabled];
  v4 = [(HMDBulletinBoardNotification *)self condition];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__HMDBulletinBoardNotification_updateRegistrations__block_invoke;
  v5[3] = &unk_27868A250;
  v5[4] = self;
  [(HMDBulletinBoardNotification *)self _updateAccessoryBulletinNotificationManagerWithEnabled:v3 condition:v4 completion:v5];
}

void __51__HMDBulletinBoardNotification_updateRegistrations__block_invoke(uint64_t a1, void *a2)
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
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDBulletinBoardNotification *)self home];

  if (v5)
  {
    v6 = [(HMDBulletinBoardNotification *)self home];
    v7 = [v6 bulletinNotificationsSupported];

    if ((v7 & 1) == 0)
    {
      v27 = objc_autoreleasePoolPush();
      v28 = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543362;
        v43 = v30;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Bulletin board notification cannot be modified when bulletin notifications are not supported.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v27);
      v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      [v4 respondWithError:v9];
      goto LABEL_22;
    }

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
        v43 = v14;
        v44 = 2112;
        v45 = v15;
        v46 = 2112;
        v47 = v16;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Updating bulletin board notification enabled from %@ to %@", buf, 0x20u);

        v11 = v37;
      }

      objc_autoreleasePoolPop(v11);
    }

    v17 = [(HMDBulletinBoardNotification *)self condition];
    v18 = HMFEqualObjects();

    if (v18)
    {
      if ((v10 & 1) == 0)
      {
        v19 = objc_autoreleasePoolPush();
        v20 = self;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543362;
          v43 = v22;
          _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Updating local bulletin board notification settings with existing values", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v19);
        [(HMDBulletinBoardNotification *)v20 _updateLocalSettingsWithEnabled:v8 condition:v9 forMessage:v4];
        goto LABEL_22;
      }
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      v32 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = HMFGetLogIdentifier();
        v35 = [(HMDBulletinBoardNotification *)v32 condition];
        *buf = 138543874;
        v43 = v34;
        v44 = 2112;
        v45 = v35;
        v46 = 2112;
        v47 = v9;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Updating bulletin board notification condition from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v31);
    }

    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __78__HMDBulletinBoardNotification__handleBulletinBoardNotificationCommitRequest___block_invoke;
    v38[3] = &unk_278684F70;
    v38[4] = self;
    v39 = v4;
    v41 = v8;
    v40 = v9;
    [(HMDBulletinBoardNotification *)self _updateAccessoryBulletinNotificationManagerWithEnabled:v8 condition:v40 completion:v38];

LABEL_22:
    goto LABEL_23;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138543362;
    v43 = v26;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Ignoring message to disconnected object", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v23);
LABEL_23:

  v36 = *MEMORY[0x277D85DE8];
}

void __78__HMDBulletinBoardNotification__handleBulletinBoardNotificationCommitRequest___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
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
      v16 = 138543874;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Error updating bulletin notification manager for message %@ : %@", &v16, 0x20u);
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
      v16 = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Updated bulletin notification manager for message %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) setEnabled:*(a1 + 56)];
    [*(a1 + 32) setCondition:*(a1 + 48)];
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 postNotificationName:@"HMDBulletinBoardNotificationDidUpdateNotification" object:*(a1 + 32) userInfo:0];

    [*(a1 + 32) _updateLocalSettingsWithEnabled:*(a1 + 56) condition:*(a1 + 48) forMessage:*(a1 + 40)];
  }

  v15 = *MEMORY[0x277D85DE8];
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
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = v7;
    if (v7)
    {
      [(HMDBulletinBoardNotification *)self setWorkQueue:v6];
      [(HMDBulletinBoardNotification *)self setMsgDispatcher:v8];
      v9 = [(HMDBulletinBoardNotification *)self notificationServiceGroup];
      [v9 configureWithWorkQueue:v6];

      [(HMDBulletinBoardNotification *)self registerNotificationHandlers];
      v10 = [(HMDBulletinBoardNotification *)self isEnabled];
      v11 = [(HMDBulletinBoardNotification *)self condition];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __73__HMDBulletinBoardNotification_configureWithWorkQueue_messageDispatcher___block_invoke;
      v14[3] = &unk_27868A250;
      v14[4] = self;
      [(HMDBulletinBoardNotification *)self _updateAccessoryBulletinNotificationManagerWithEnabled:v10 condition:v11 completion:v14];

      return;
    }
  }

  else
  {
    _HMFPreconditionFailure();
  }

  v12 = _HMFPreconditionFailure();
  __73__HMDBulletinBoardNotification_configureWithWorkQueue_messageDispatcher___block_invoke(v12, v13);
}

void __73__HMDBulletinBoardNotification_configureWithWorkQueue_messageDispatcher___block_invoke(uint64_t a1, void *a2)
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
  v3 = [(HMDBulletinBoardNotification *)self msgDispatcher];
  [v3 deregisterReceiver:self];

  v4.receiver = self;
  v4.super_class = HMDBulletinBoardNotification;
  [(HMDBulletinBoardNotification *)&v4 dealloc];
}

- (HMDBulletinBoardNotification)initWithService:(id)a3 enabled:(BOOL)a4 condition:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = HMDBulletinBoardNotification;
  v10 = [(HMDBulletinBoardNotification *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_enabled = a4;
    objc_storeStrong(&v10->_condition, a5);
    objc_storeWeak(&v11->_service, v8);
  }

  return v11;
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
  if (logCategory__hmf_once_t15 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t15, &__block_literal_global_34685);
  }

  v3 = logCategory__hmf_once_v16;

  return v3;
}

void __43__HMDBulletinBoardNotification_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v16;
  logCategory__hmf_once_v16 = v1;
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