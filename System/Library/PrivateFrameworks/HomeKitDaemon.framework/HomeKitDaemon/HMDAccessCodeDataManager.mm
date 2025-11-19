@interface HMDAccessCodeDataManager
+ (id)_accessCodeInHome:(id)a3 forHomeAccessCodeModel:(id)a4;
+ (id)_accessCodeInHome:(id)a3 forRemovedUserAccessCodeModel:(id)a4;
+ (id)createHomeAccessCodeModelsFromLabelsByAccessCode:(id)a3 forHome:(id)a4;
+ (id)createRemovedUserInfoModelsFromRemovedUserInfoByAccessCode:(id)a3 forHome:(id)a4;
+ (id)createUserAccessCodeModelFromAccessCode:(id)a3 forUserUUID:(id)a4 changedByUserUUID:(id)a5;
+ (id)logCategory;
+ (id)userWithAccessCode:(id)a3 inHome:(id)a4;
- (HMDAccessCodeDataManager)initWithContext:(id)a3 delegate:(id)a4;
- (HMDAccessCodeDataManagerDelegate)delegate;
- (NSArray)cachedAccessCodes;
- (NSArray)homeAccessCodeValues;
- (NSArray)homeAccessCodeValuesWithRemovedUserInfo;
- (NSArray)homeAccessCodeValuesWithSimpleLabels;
- (NSArray)homeAccessCodeValuesWithUserLabels;
- (NSSet)accessCodeValuesWithRemovedUserInfo;
- (NSSet)accessCodeValuesWithSimpleLabel;
- (NSSet)accessCodeValuesWithUserLabel;
- (id)_removeHMDRemovedUserAccessCodeWithAccessCode:(id)a3 flow:(id)a4;
- (id)_removeSimpleLabelAccessCodeValue:(id)a3 flow:(id)a4;
- (id)_removeUserAccessCodeValue:(id)a3 removedByUserUUID:(id)a4 flow:(id)a5;
- (id)_setSimpleLabel:(id)a3 forAccessCodeValue:(id)a4 flow:(id)a5;
- (id)_setUserWithUUID:(id)a3 forAccessCodeValue:(id)a4 changedByUserUUID:(id)a5 flow:(id)a6;
- (id)addOrUpdateHMDRemovedUserAccessCodeModel:(id)a3 flow:(id)a4;
- (id)addOrUpdateHomeAccessCodeModel:(id)a3 flow:(id)a4;
- (id)addOrUpdateUserAccessCodeModel:(id)a3 flow:(id)a4;
- (id)cachedAccessCodeForIdentifier:(id)a3 accessoryUUID:(id)a4;
- (id)homeAccessCodeWithRemovedUserInfoWithUUID:(id)a3;
- (id)logIdentifier;
- (id)removeAllHomeAccessCodesWithFlow:(id)a3;
- (id)removeHMDRemovedUserAccessCodeModel:(id)a3 flow:(id)a4;
- (id)removeHMDRemovedUserAccessCodeWithCode:(id)a3 removedUserInfo:(id)a4 flow:(id)a5;
- (id)removeHomeAccessCodeModel:(id)a3 flow:(id)a4;
- (id)removeHomeAccessCodeWithValue:(id)a3 removedByUserUUID:(id)a4 flow:(id)a5;
- (id)removeUserAccessCodeModel:(id)a3 flow:(id)a4;
- (id)saveRemovedUserAccessCode:(id)a3 withRemovedUserInfo:(id)a4 flow:(id)a5;
- (id)setUserInformation:(id)a3 forHomeAccessCodeWithValue:(id)a4 changedByUserUUID:(id)a5 flow:(id)a6;
- (id)simpleLabelForAccessCode:(id)a3;
- (id)updateUserInformation:(id)a3 forHomeAccessCodeWithOldValue:(id)a4 newAccessCodeValue:(id)a5 flow:(id)a6;
- (id)userUUIDForAccessCode:(id)a3;
- (void)_cleanUpOldRemovedUserDataWithReason:(id)a3;
- (void)_messageUser:(id)a3 thatTheirAccessCodeWasChangedWithType:(unint64_t)a4 flow:(id)a5;
- (void)_setUpAndStartTimer;
- (void)configure;
- (void)handleRemovedHMDRemovedUserAccessCodeModel:(id)a3 message:(id)a4 flow:(id)a5;
- (void)handleRemovedHomeAccessCodeModel:(id)a3 message:(id)a4 flow:(id)a5;
- (void)handleRemovedUserAccessCodeModel:(id)a3 forUser:(id)a4 message:(id)a5 flow:(id)a6;
- (void)handleUpdatedHMDRemovedUserAccessCodeModel:(id)a3 message:(id)a4 flow:(id)a5;
- (void)handleUpdatedHomeAccessCodeModel:(id)a3 message:(id)a4 flow:(id)a5;
- (void)handleUpdatedUserAccessCodeModel:(id)a3 forUser:(id)a4 message:(id)a5 flow:(id)a6;
- (void)removeHMDRemovedUserAccessCodeWithAccessCode:(id)a3 flow:(id)a4;
- (void)timerDidFire:(id)a3;
- (void)updateCacheWithAddedAccessCodes:(id)a3 flow:(id)a4;
- (void)updateCacheWithFetchResponses:(id)a3 flow:(id)a4;
- (void)updateCacheWithRemovedAccessCodes:(id)a3 flow:(id)a4;
- (void)updateCacheWithUpdatedAccessCodes:(id)a3 flow:(id)a4;
@end

@implementation HMDAccessCodeDataManager

- (HMDAccessCodeDataManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDAccessCodeDataManager *)self context];
  v3 = [v2 UUID];
  v4 = [v3 UUIDString];

  return v4;
}

- (void)timerDidFire:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessCodeDataManager *)self context];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(HMDAccessCodeDataManager *)self dataCleanUpTimer];

  if (v7 == v4)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@dataCleanUpTimer fired", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [(HMDAccessCodeDataManager *)v9 context];
    v13 = [v12 isCurrentDeviceOwnerController];

    if (v13)
    {
      [(HMDAccessCodeDataManager *)v9 _cleanUpOldRemovedUserDataWithReason:@"cleanup timer fired"];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)updateCacheWithRemovedAccessCodes:(id)a3 flow:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v31 = a4;
  if (([v6 hmf_isEmpty] & 1) == 0)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v29 = v6;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v35 objects:v47 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v36;
      v30 = *v36;
      do
      {
        v10 = 0;
        v32 = v8;
        do
        {
          if (*v36 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v35 + 1) + 8 * v10);
          v12 = [(HMDAccessCodeDataManager *)self context];
          v13 = [v11 accessoryUUID];
          v14 = [v12 hapAccessoryWithUUID:v13];

          v15 = objc_autoreleasePoolPush();
          v16 = self;
          v17 = HMFGetOSLogHandle();
          v18 = v17;
          if (v14)
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v19 = v34 = v15;
              v20 = [v31 UUID];
              v21 = [v14 name];
              *buf = 138544130;
              v40 = v19;
              v41 = 2112;
              v42 = v20;
              v43 = 2112;
              v44 = v21;
              v45 = 2112;
              v46 = v11;
              _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Updating accessory: %@, with removed access code: %@", buf, 0x2Au);

              v9 = v30;
              v8 = v32;

              v15 = v34;
            }

            objc_autoreleasePoolPop(v15);
            v22 = [v14 accessCodeCache];
            v23 = [v11 uniqueIdentifier];
            [v22 removeObjectForKey:v23];
          }

          else
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v24 = HMFGetLogIdentifier();
              v25 = [v31 UUID];
              v26 = [v11 accessoryUUID];
              *buf = 138543874;
              v40 = v24;
              v41 = 2112;
              v42 = v25;
              v43 = 2112;
              v44 = v26;
              _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to find hap accessory for fetch response with accessory UUID: %@", buf, 0x20u);

              v8 = v32;
            }

            objc_autoreleasePoolPop(v15);
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v35 objects:v47 count:16];
      }

      while (v8);
    }

    v27 = [(HMDAccessCodeDataManager *)self delegate];
    [v27 accessCodeDataManager:self didRemoveAccessoryAccessCodes:obj flow:v31];

    v6 = v29;
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)updateCacheWithUpdatedAccessCodes:(id)a3 flow:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (([v6 hmf_isEmpty] & 1) == 0)
  {
    v30 = v7;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v28 = v6;
    obj = v6;
    v32 = [obj countByEnumeratingWithState:&v33 objects:v45 count:16];
    if (v32)
    {
      v8 = *v34;
      v29 = *v34;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v34 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v33 + 1) + 8 * i);
          v11 = [(HMDAccessCodeDataManager *)self context];
          v12 = [v10 accessoryUUID];
          v13 = [v11 hapAccessoryWithUUID:v12];

          v14 = objc_autoreleasePoolPush();
          v15 = self;
          v16 = HMFGetOSLogHandle();
          v17 = v16;
          if (v13)
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v18 = HMFGetLogIdentifier();
              v19 = [v30 UUID];
              v20 = [v13 name];
              *buf = 138544130;
              v38 = v18;
              v39 = 2112;
              v40 = v19;
              v41 = 2112;
              v42 = v20;
              v43 = 2112;
              v44 = v10;
              _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Updating accessory: %@, with updated access code: %@", buf, 0x2Au);

              v8 = v29;
            }

            objc_autoreleasePoolPop(v14);
            v21 = [v13 accessCodeCache];
            v22 = [v10 uniqueIdentifier];
            [v21 setObject:v10 forKeyedSubscript:v22];
          }

          else
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v23 = HMFGetLogIdentifier();
              v24 = [v30 UUID];
              v25 = [v10 accessoryUUID];
              *buf = 138543874;
              v38 = v23;
              v39 = 2112;
              v40 = v24;
              v41 = 2112;
              v42 = v25;
              _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to find hap accessory for accessory access code with accessory UUID: %@", buf, 0x20u);

              v8 = v29;
            }

            objc_autoreleasePoolPop(v14);
          }
        }

        v32 = [obj countByEnumeratingWithState:&v33 objects:v45 count:16];
      }

      while (v32);
    }

    v26 = [(HMDAccessCodeDataManager *)self delegate];
    v7 = v30;
    [v26 accessCodeDataManager:self didUpdateAccessoryAccessCodes:obj flow:v30];

    v6 = v28;
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)updateCacheWithAddedAccessCodes:(id)a3 flow:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (([v6 hmf_isEmpty] & 1) == 0)
  {
    v30 = v7;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v28 = v6;
    obj = v6;
    v32 = [obj countByEnumeratingWithState:&v33 objects:v45 count:16];
    if (v32)
    {
      v8 = *v34;
      v29 = *v34;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v34 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v33 + 1) + 8 * i);
          v11 = [(HMDAccessCodeDataManager *)self context];
          v12 = [v10 accessoryUUID];
          v13 = [v11 hapAccessoryWithUUID:v12];

          v14 = objc_autoreleasePoolPush();
          v15 = self;
          v16 = HMFGetOSLogHandle();
          v17 = v16;
          if (v13)
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v18 = HMFGetLogIdentifier();
              v19 = [v30 UUID];
              v20 = [v13 name];
              *buf = 138544130;
              v38 = v18;
              v39 = 2112;
              v40 = v19;
              v41 = 2112;
              v42 = v20;
              v43 = 2112;
              v44 = v10;
              _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Updating accessory: %@, with new access code: %@", buf, 0x2Au);

              v8 = v29;
            }

            objc_autoreleasePoolPop(v14);
            v21 = [v13 accessCodeCache];
            v22 = [v10 uniqueIdentifier];
            [v21 setObject:v10 forKeyedSubscript:v22];
          }

          else
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v23 = HMFGetLogIdentifier();
              v24 = [v30 UUID];
              v25 = [v10 accessoryUUID];
              *buf = 138543874;
              v38 = v23;
              v39 = 2112;
              v40 = v24;
              v41 = 2112;
              v42 = v25;
              _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to find hap accessory for accessory access code with accessory UUID: %@", buf, 0x20u);

              v8 = v29;
            }

            objc_autoreleasePoolPop(v14);
          }
        }

        v32 = [obj countByEnumeratingWithState:&v33 objects:v45 count:16];
      }

      while (v32);
    }

    v26 = [(HMDAccessCodeDataManager *)self delegate];
    v7 = v30;
    [v26 accessCodeDataManager:self didAddAccessoryAccessCodes:obj flow:v30];

    v6 = v28;
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)updateCacheWithFetchResponses:(id)a3 flow:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v8 UUID];
    v14 = [v7 UUID];
    *buf = 138543874;
    v33 = v12;
    v34 = 2112;
    v35 = v13;
    v36 = 2112;
    v37 = v14;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@[ChildFlow: %@ Parent: %@] Updating cache with fetch responses", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __63__HMDAccessCodeDataManager_updateCacheWithFetchResponses_flow___block_invoke;
  v30[3] = &unk_278680C10;
  v30[4] = v10;
  v15 = v8;
  v31 = v15;
  v16 = [v6 na_flatMap:v30];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __63__HMDAccessCodeDataManager_updateCacheWithFetchResponses_flow___block_invoke_2;
  v28[3] = &unk_278680C10;
  v28[4] = v10;
  v17 = v15;
  v29 = v17;
  v18 = [v6 na_flatMap:v28];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __63__HMDAccessCodeDataManager_updateCacheWithFetchResponses_flow___block_invoke_2_76;
  v25 = &unk_278680C10;
  v26 = v10;
  v27 = v17;
  v19 = v17;
  v20 = [v6 na_flatMap:&v22];
  [(HMDAccessCodeDataManager *)v10 updateCacheWithAddedAccessCodes:v16 flow:v19, v22, v23, v24, v25, v26];
  [(HMDAccessCodeDataManager *)v10 updateCacheWithUpdatedAccessCodes:v18 flow:v19];
  [(HMDAccessCodeDataManager *)v10 updateCacheWithRemovedAccessCodes:v20 flow:v19];

  v21 = *MEMORY[0x277D85DE8];
}

id __63__HMDAccessCodeDataManager_updateCacheWithFetchResponses_flow___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v5 = [v3 accessoryUUID];
  v6 = [v4 hapAccessoryWithUUID:v5];

  if (v6)
  {
    v7 = [v3 accessoryAccessCodeValues];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __63__HMDAccessCodeDataManager_updateCacheWithFetchResponses_flow___block_invoke_72;
    v17[3] = &unk_278680BE8;
    v18 = v6;
    v8 = [v7 na_filter:v17];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 40) UUID];
      v14 = [v3 accessoryUUID];
      *buf = 138543874;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to find hap accessory for fetch response with accessory UUID: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

id __63__HMDAccessCodeDataManager_updateCacheWithFetchResponses_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v5 = [v3 accessoryUUID];
  v6 = [v4 hapAccessoryWithUUID:v5];

  if (v6)
  {
    v7 = [v3 accessoryAccessCodeValues];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __63__HMDAccessCodeDataManager_updateCacheWithFetchResponses_flow___block_invoke_75;
    v17[3] = &unk_278680BE8;
    v18 = v6;
    v8 = [v7 na_filter:v17];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 40) UUID];
      v14 = [v3 accessoryUUID];
      *buf = 138543874;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to find hap accessory for fetch response with accessory UUID: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

id __63__HMDAccessCodeDataManager_updateCacheWithFetchResponses_flow___block_invoke_2_76(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v5 = [v3 accessoryUUID];
  v6 = [v4 hapAccessoryWithUUID:v5];

  if (v6)
  {
    v7 = [v6 accessCodeCache];
    v8 = [v7 allKeys];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __63__HMDAccessCodeDataManager_updateCacheWithFetchResponses_flow___block_invoke_77;
    v18[3] = &unk_278680C58;
    v19 = v3;
    v20 = v6;
    v9 = [v8 na_map:v18];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [*(a1 + 40) UUID];
      v15 = [v3 accessoryUUID];
      *buf = 138543874;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to find hap accessory for fetch response with accessory UUID: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

id __63__HMDAccessCodeDataManager_updateCacheWithFetchResponses_flow___block_invoke_77(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessoryAccessCodeValues];
  v5 = [v4 na_map:&__block_literal_global_81_213569];

  if ([v5 containsObject:v3])
  {
    v6 = 0;
  }

  else
  {
    v7 = [*(a1 + 40) accessCodeCache];
    v6 = [v7 objectForKeyedSubscript:v3];
  }

  return v6;
}

uint64_t __63__HMDAccessCodeDataManager_updateCacheWithFetchResponses_flow___block_invoke_75(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 accessCodeCache];
  v5 = [v3 uniqueIdentifier];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = HMFEqualObjects();

  return v7 ^ 1u;
}

uint64_t __63__HMDAccessCodeDataManager_updateCacheWithFetchResponses_flow___block_invoke_72(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 accessCodeCache];
  v5 = [v4 allKeys];
  v6 = [v3 uniqueIdentifier];

  LODWORD(v3) = [v5 containsObject:v6];
  return v3 ^ 1;
}

- (id)cachedAccessCodeForIdentifier:(id)a3 accessoryUUID:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessCodeDataManager *)self context];
  v9 = [v8 hapAccessoryWithUUID:v7];

  if (v9)
  {
    v10 = [v9 accessCodeCache];
    v11 = [v10 objectForKeyedSubscript:v6];
    v12 = [v11 accessCodeValue];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v16;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to find hap accessory for cached access code with accessory UUID: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v12;
}

- (NSArray)cachedAccessCodes
{
  v2 = [(HMDAccessCodeDataManager *)self context];
  v3 = [v2 accessoriesSupportingAccessCodes];
  v4 = [v3 na_map:&__block_literal_global_70_213576];

  return v4;
}

id __45__HMDAccessCodeDataManager_cachedAccessCodes__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD1660];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 uuid];
  v6 = [v3 accessCodeCache];

  v7 = [v6 allValues];
  v8 = [v4 initWithAccessoryUUID:v5 accessoryAccessCodeValues:v7 error:0];

  return v8;
}

- (void)handleRemovedHMDRemovedUserAccessCodeModel:(id)a3 message:(id)a4 flow:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v10 UUID];
    *buf = 138543618;
    v47 = v14;
    v48 = 2112;
    v49 = v15;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling removed HMDHomeAccessCodeModel", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v16 = [(HMDAccessCodeDataManager *)v12 context];
  v17 = [v16 home];

  if (v17)
  {
    v18 = [HMDAccessCodeDataManager _accessCodeInHome:v17 forRemovedUserAccessCodeModel:v8];
    v19 = objc_autoreleasePoolPush();
    v20 = v12;
    v21 = HMFGetOSLogHandle();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
    if (v18)
    {
      if (v22)
      {
        v23 = HMFGetLogIdentifier();
        v24 = [v10 UUID];
        *buf = 138543874;
        v47 = v23;
        v48 = 2112;
        v49 = v24;
        v50 = 2112;
        v51 = v17;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] HMDRemovedUserAccessCodeModel was removed. Removing from HMDHome: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v19);
      v25 = [v17 removedUserInfoByAccessCode];
      [v25 removeObjectForKey:v18];

      v26 = [v9 transactionResult];
      [v26 markChanged];

      [v9 respondWithSuccess];
      v27 = [(HMDAccessCodeDataManager *)v20 delegate];
      v28 = MEMORY[0x277CD1A68];
      v29 = [v8 accessCode];
      v30 = [v8 removedUserInfo];
      v31 = [v28 homeAccessCodeValueWithStringValue:v29 removedUserInfo:v30];
      v45 = v31;
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
      v33 = v20;
      v34 = v9;
      v35 = v8;
      v36 = v32;
      [v27 accessCodeDataManager:v33 didRemoveHomeAccessCodes:v32 removedByUserUUID:0 flow:v10];

      v8 = v35;
      v9 = v34;
    }

    else
    {
      if (v22)
      {
        v42 = HMFGetLogIdentifier();
        v43 = [v10 UUID];
        *buf = 138543618;
        v47 = v42;
        v48 = 2112;
        v49 = v43;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Did not find an access code for this model on the home, so we have nothing to remove.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      [v9 respondWithSuccess];
      v18 = 0;
    }
  }

  else
  {
    v37 = objc_autoreleasePoolPush();
    v38 = v12;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = HMFGetLogIdentifier();
      v41 = [v10 UUID];
      *buf = 138543618;
      v47 = v40;
      v48 = 2112;
      v49 = v41;
      _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not handling updated HomeAccessCodeModel because home reference was nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v37);
    v18 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
    [v9 respondWithError:v18];
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedHMDRemovedUserAccessCodeModel:(id)a3 message:(id)a4 flow:(id)a5
{
  v72 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v10 UUID];
    *buf = 138543618;
    v67 = v14;
    v68 = 2112;
    v69 = v15;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling updated HMDHomeAccessCodeModel", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v16 = [(HMDAccessCodeDataManager *)v12 context];
  v17 = [v16 home];

  if (!v17)
  {
    v42 = objc_autoreleasePoolPush();
    v43 = v12;
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = HMFGetLogIdentifier();
      v46 = [v10 UUID];
      *buf = 138543618;
      v67 = v45;
      v68 = 2112;
      v69 = v46;
      v47 = "%{public}@[Flow: %@] Not handling updated HomeAccessCodeModel because home reference was nil";
LABEL_15:
      _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, v47, buf, 0x16u);
    }

LABEL_16:

    objc_autoreleasePoolPop(v42);
    v19 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
    [v9 respondWithError:v19];
    goto LABEL_17;
  }

  v18 = [v8 removedUserInfo];

  if (!v18)
  {
    v42 = objc_autoreleasePoolPush();
    v43 = v12;
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = HMFGetLogIdentifier();
      v46 = [v10 UUID];
      *buf = 138543618;
      v67 = v45;
      v68 = 2112;
      v69 = v46;
      v47 = "%{public}@[Flow: %@] HMDRemovedUserAccessCodeModel has a nil property but should not";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v19 = [(HMDAccessCodeDataManager *)v12 delegate];
  v20 = [v17 removedUserInfoByAccessCode];
  v21 = [v8 accessCode];
  v22 = [v20 objectForKeyedSubscript:v21];

  if (v22)
  {
    v63 = v10;
    v23 = [v17 removedUserInfoByAccessCode];
    v24 = [v8 accessCode];
    v25 = [v23 objectForKeyedSubscript:v24];
    v26 = [v8 removedUserInfo];
    v27 = [v25 isEqual:v26];

    if ((v27 & 1) == 0)
    {
      v28 = objc_autoreleasePoolPush();
      v29 = v12;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        v32 = [v63 UUID];
        *buf = 138543874;
        v67 = v31;
        v68 = 2112;
        v69 = v32;
        v70 = 2112;
        v71 = v17;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] HMDRemovedUserAccessCodeModel was updated on HMDHome: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v28);
      v33 = [v8 removedUserInfo];
      v34 = [v17 removedUserInfoByAccessCode];
      v35 = [v8 accessCode];
      [v34 setObject:v33 forKeyedSubscript:v35];

      v36 = [v9 transactionResult];
      [v36 markChanged];

      v37 = MEMORY[0x277CD1A68];
      v38 = [v8 accessCode];
      v39 = [v8 removedUserInfo];
      v40 = [v37 homeAccessCodeValueWithStringValue:v38 removedUserInfo:v39];
      v64 = v40;
      v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
      [v19 accessCodeDataManager:v29 didUpdateHomeAccessCodes:v41 changedByUserUUID:0 flow:v63];
    }

    [v9 respondWithSuccess];
    v10 = v63;
  }

  else
  {
    v49 = objc_autoreleasePoolPush();
    v50 = v12;
    v51 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      v52 = HMFGetLogIdentifier();
      v53 = [v10 UUID];
      *buf = 138543874;
      v67 = v52;
      v68 = 2112;
      v69 = v53;
      v70 = 2112;
      v71 = v17;
      _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] New HMDRemovedUserAccessCodeModel was added. Updating values on HMDHome: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v49);
    v54 = [v8 removedUserInfo];
    v55 = [v17 removedUserInfoByAccessCode];
    v56 = [v8 accessCode];
    [v55 setObject:v54 forKeyedSubscript:v56];

    v57 = [v9 transactionResult];
    [v57 markChanged];

    [v9 respondWithSuccess];
    v58 = MEMORY[0x277CD1A68];
    v59 = [v8 accessCode];
    v60 = [v8 removedUserInfo];
    v61 = [v58 homeAccessCodeValueWithStringValue:v59 removedUserInfo:v60];
    v65 = v61;
    v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v65 count:1];
    [v19 accessCodeDataManager:v50 didAddHomeAccessCodes:v62 addedByUserUUID:0 flow:v10];
  }

LABEL_17:

  v48 = *MEMORY[0x277D85DE8];
}

- (void)handleRemovedHomeAccessCodeModel:(id)a3 message:(id)a4 flow:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v10 UUID];
    *buf = 138543618;
    v43 = v14;
    v44 = 2112;
    v45 = v15;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling removed HMDHomeAccessCodeModel", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v16 = [(HMDAccessCodeDataManager *)v12 context];
  v17 = [v16 home];

  if (v17)
  {
    v18 = [HMDAccessCodeDataManager _accessCodeInHome:v17 forHomeAccessCodeModel:v8];
    v19 = objc_autoreleasePoolPush();
    v20 = v12;
    v21 = HMFGetOSLogHandle();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
    if (v18)
    {
      if (v22)
      {
        v23 = HMFGetLogIdentifier();
        v24 = [v10 UUID];
        *buf = 138543874;
        v43 = v23;
        v44 = 2112;
        v45 = v24;
        v46 = 2112;
        v47 = v17;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] HMDHomeAccessCodeModel was removed. Removing value with label on HMDHome: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v19);
      v25 = [v17 labelsByAccessCode];
      [v25 removeObjectForKey:v18];

      v26 = [v17 labelIdentifiersByAccessCode];
      [v26 removeObjectForKey:v18];

      v27 = [v9 transactionResult];
      [v27 markChanged];

      [v9 respondWithSuccess];
      v28 = [(HMDAccessCodeDataManager *)v20 delegate];
      v29 = MEMORY[0x277CD1A68];
      v30 = [v8 label];
      v31 = [v29 homeAccessCodeValueWithStringValue:v18 label:v30];
      v41 = v31;
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
      [v28 accessCodeDataManager:v20 didRemoveHomeAccessCodes:v32 removedByUserUUID:0 flow:v10];
    }

    else
    {
      if (v22)
      {
        v38 = HMFGetLogIdentifier();
        v39 = [v10 UUID];
        *buf = 138543618;
        v43 = v38;
        v44 = 2112;
        v45 = v39;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Did not find an access code for this model on the home, so we have nothing to remove.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      [v9 respondWithSuccess];
      v18 = 0;
    }
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    v34 = v12;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      v37 = [v10 UUID];
      *buf = 138543618;
      v43 = v36;
      v44 = 2112;
      v45 = v37;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not handling updated HomeAccessCodeModel because home reference was nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
    v18 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
    [v9 respondWithError:v18];
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)handleRemovedUserAccessCodeModel:(id)a3 forUser:(id)a4 message:(id)a5 flow:(id)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [v13 UUID];
    *buf = 138543874;
    v33 = v17;
    v34 = 2112;
    v35 = v18;
    v36 = 2112;
    v37 = v11;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] HMDUserAccessCodeModel was removed. Removing value on HMDUser: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  v30 = [v11 accessCode];
  [v11 setAccessCode:0];
  v19 = [v10 changedByUserUUID];
  [v11 setAccessCodeChangedByUserUUID:v19];

  v20 = [v12 transactionResult];
  [v20 markChanged];

  [v12 respondWithSuccess];
  v21 = [(HMDAccessCodeDataManager *)v15 delegate];
  v22 = MEMORY[0x277CD1A68];
  v23 = [v11 uuid];
  v24 = [v22 homeAccessCodeValueWithStringValue:v30 userUUID:v23];
  v31 = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  [v10 changedByUserUUID];
  v26 = v10;
  v28 = v27 = v13;
  [v21 accessCodeDataManager:v15 didRemoveHomeAccessCodes:v25 removedByUserUUID:v28 flow:v27];

  v29 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedHomeAccessCodeModel:(id)a3 message:(id)a4 flow:(id)a5
{
  v80 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v10 UUID];
    *buf = 138543618;
    v75 = v14;
    v76 = 2112;
    v77 = v15;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling updated HMDHomeAccessCodeModel", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v16 = [(HMDAccessCodeDataManager *)v12 context];
  v17 = [v16 home];

  if (!v17)
  {
    v47 = objc_autoreleasePoolPush();
    v48 = v12;
    v49 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = HMFGetLogIdentifier();
      v51 = [v10 UUID];
      *buf = 138543618;
      v75 = v50;
      v76 = 2112;
      v77 = v51;
      v52 = "%{public}@[Flow: %@] Not handling updated HomeAccessCodeModel because home reference was nil";
      goto LABEL_16;
    }

LABEL_17:

    objc_autoreleasePoolPop(v47);
    v21 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
    [v9 respondWithError:v21];
    goto LABEL_18;
  }

  v18 = [v8 value];
  if (!v18 || (v19 = v18, [v8 label], v20 = objc_claimAutoreleasedReturnValue(), v20, v19, !v20))
  {
    v47 = objc_autoreleasePoolPush();
    v48 = v12;
    v49 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = HMFGetLogIdentifier();
      v51 = [v10 UUID];
      *buf = 138543618;
      v75 = v50;
      v76 = 2112;
      v77 = v51;
      v52 = "%{public}@[Flow: %@] Home access code model has a nil property but should not";
LABEL_16:
      _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_ERROR, v52, buf, 0x16u);

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v21 = [(HMDAccessCodeDataManager *)v12 delegate];
  v22 = [v17 labelsByAccessCode];
  v23 = [v8 value];
  v24 = [v22 objectForKeyedSubscript:v23];

  if (v24)
  {
    v71 = v10;
    v25 = [v17 labelsByAccessCode];
    v26 = [v8 value];
    v27 = [v25 objectForKeyedSubscript:v26];
    v28 = [v8 label];
    v29 = [v27 isEqualToString:v28];

    if ((v29 & 1) == 0)
    {
      v30 = objc_autoreleasePoolPush();
      v31 = v12;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        v34 = [v71 UUID];
        *buf = 138543874;
        v75 = v33;
        v76 = 2112;
        v77 = v34;
        v78 = 2112;
        v79 = v17;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] HMDHomeAccessCodeModel label was updated on HMDHome: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v30);
      v35 = [v8 label];
      v36 = [v17 labelsByAccessCode];
      v37 = [v8 value];
      [v36 setObject:v35 forKeyedSubscript:v37];

      v38 = [v8 hh2ModelID];
      v39 = [v17 labelIdentifiersByAccessCode];
      v40 = [v8 value];
      [v39 setObject:v38 forKeyedSubscript:v40];

      v41 = [v9 transactionResult];
      [v41 markChanged];

      v42 = MEMORY[0x277CD1A68];
      v43 = [v8 value];
      v44 = [v8 label];
      v45 = [v42 homeAccessCodeValueWithStringValue:v43 label:v44];
      v72 = v45;
      v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
      [v21 accessCodeDataManager:v31 didUpdateHomeAccessCodes:v46 changedByUserUUID:0 flow:v71];
    }

    [v9 respondWithSuccess];
    v10 = v71;
  }

  else
  {
    v54 = objc_autoreleasePoolPush();
    v55 = v12;
    v56 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      v57 = HMFGetLogIdentifier();
      v58 = [v10 UUID];
      *buf = 138543874;
      v75 = v57;
      v76 = 2112;
      v77 = v58;
      v78 = 2112;
      v79 = v17;
      _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] New HMDHomeAccessCodeModel was added. Setting label for value on HMDHome: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v54);
    v59 = [v8 label];
    v60 = [v17 labelsByAccessCode];
    v61 = [v8 value];
    [v60 setObject:v59 forKeyedSubscript:v61];

    v62 = [v8 hh2ModelID];
    v63 = [v17 labelIdentifiersByAccessCode];
    v64 = [v8 value];
    [v63 setObject:v62 forKeyedSubscript:v64];

    v65 = [v9 transactionResult];
    [v65 markChanged];

    [v9 respondWithSuccess];
    v66 = MEMORY[0x277CD1A68];
    v67 = [v8 value];
    v68 = [v8 label];
    v69 = [v66 homeAccessCodeValueWithStringValue:v67 label:v68];
    v73 = v69;
    v70 = [MEMORY[0x277CBEA60] arrayWithObjects:&v73 count:1];
    [v21 accessCodeDataManager:v55 didAddHomeAccessCodes:v70 addedByUserUUID:0 flow:v10];
  }

LABEL_18:

  v53 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedUserAccessCodeModel:(id)a3 forUser:(id)a4 message:(id)a5 flow:(id)a6
{
  v84 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [v13 UUID];
    v19 = [v10 changedByUserUUID];
    *buf = 138544130;
    v77 = v17;
    v78 = 2112;
    v79 = v18;
    v80 = 2112;
    v81 = v11;
    v82 = 2112;
    v83 = v19;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] HMDUserAccessCodeModel was updated. Updating value on HMDUser: %@ changedByUserUUID: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  v20 = [(HMDAccessCodeDataManager *)v15 delegate];
  v21 = [v11 accessCode];
  v22 = [v10 value];
  v23 = [v21 isEqualToString:v22];

  if (v23)
  {
    [v12 respondWithSuccess];
  }

  else
  {
    v24 = [v11 accessCode];

    if (v24)
    {
      v71 = v13;
      v25 = v20;
      v26 = [v10 value];

      v27 = objc_autoreleasePoolPush();
      v28 = v15;
      v29 = HMFGetOSLogHandle();
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_INFO);
      if (v26)
      {
        if (v30)
        {
          v31 = HMFGetLogIdentifier();
          v32 = [v71 UUID];
          v33 = [v10 changedByUserUUID];
          *buf = 138544130;
          v77 = v31;
          v78 = 2112;
          v79 = v32;
          v80 = 2112;
          v81 = v11;
          v82 = 2112;
          v83 = v33;
          _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] HMDUserAccessCodeModel value was updated on HMDUser: %@ changedByUserUUID: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v27);
        v34 = [v10 value];
        [v11 setAccessCode:v34];

        v35 = [v10 changedByUserUUID];
        [v11 setAccessCodeChangedByUserUUID:v35];

        v36 = [v12 transactionResult];
        [v36 markChanged];

        [v12 respondWithSuccess];
        v37 = MEMORY[0x277CD1A68];
        v38 = [v10 value];
        v39 = [v11 uuid];
        v40 = [v37 homeAccessCodeValueWithStringValue:v38 userUUID:v39];
        v74 = v40;
        v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v74 count:1];
        v42 = [v10 changedByUserUUID];
        v43 = v28;
        v44 = v71;
        [v25 accessCodeDataManager:v43 didUpdateHomeAccessCodes:v41 changedByUserUUID:v42 flow:v71];
      }

      else
      {
        if (v30)
        {
          v62 = HMFGetLogIdentifier();
          v63 = [v71 UUID];
          v64 = [v10 changedByUserUUID];
          *buf = 138544130;
          v77 = v62;
          v78 = 2112;
          v79 = v63;
          v80 = 2112;
          v81 = v11;
          v82 = 2112;
          v83 = v64;
          _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] HMDUserAccessCodeModel value was removed on HMDUser: %@ removedByUserUUID: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v27);
        v65 = [v10 value];
        [v11 setAccessCode:v65];

        v66 = [v10 changedByUserUUID];
        [v11 setAccessCodeChangedByUserUUID:v66];

        v67 = [v12 transactionResult];
        [v67 markChanged];

        [v12 respondWithSuccess];
        v68 = MEMORY[0x277CD1A68];
        v38 = [v10 value];
        v39 = [v11 uuid];
        v40 = [v68 homeAccessCodeValueWithStringValue:v38 userUUID:v39];
        v73 = v40;
        v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v73 count:1];
        v42 = [v10 changedByUserUUID];
        v69 = v28;
        v44 = v71;
        [v25 accessCodeDataManager:v69 didRemoveHomeAccessCodes:v41 removedByUserUUID:v42 flow:v71];
      }

      v20 = v25;
      v13 = v44;
    }

    else
    {
      v72 = v20;
      v45 = objc_autoreleasePoolPush();
      v46 = v15;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = HMFGetLogIdentifier();
        v49 = [v13 UUID];
        v50 = [v10 changedByUserUUID];
        *buf = 138544130;
        v77 = v48;
        v78 = 2112;
        v79 = v49;
        v80 = 2112;
        v81 = v11;
        v82 = 2112;
        v83 = v50;
        _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] New HMDUserAccessCodeModel was added. Setting value on HMDUser: %@ changedByUserUUID: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v45);
      v51 = [v10 value];
      [v11 setAccessCode:v51];

      v52 = [v10 changedByUserUUID];
      [v11 setAccessCodeChangedByUserUUID:v52];

      v53 = [v12 transactionResult];
      [v53 markChanged];

      [v12 respondWithSuccess];
      v54 = MEMORY[0x277CD1A68];
      v38 = [v10 value];
      v55 = [v11 uuid];
      v56 = [v54 homeAccessCodeValueWithStringValue:v38 userUUID:v55];
      v75 = v56;
      v57 = [MEMORY[0x277CBEA60] arrayWithObjects:&v75 count:1];
      v58 = [v10 changedByUserUUID];
      v59 = v46;
      v60 = v13;
      v61 = v58;
      v20 = v72;
      [v72 accessCodeDataManager:v59 didAddHomeAccessCodes:v57 addedByUserUUID:v58 flow:v60];

      v13 = v60;
    }
  }

  v70 = *MEMORY[0x277D85DE8];
}

- (id)removeHMDRemovedUserAccessCodeModel:(id)a3 flow:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessCodeDataManager *)self context];
  v9 = [v8 workQueue];
  dispatch_assert_queue_V2(v9);

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v7 UUID];
    *buf = 138543618;
    v45 = v13;
    v46 = 2112;
    v47 = v14;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing HMDRemovedUserAccessCodeModel", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = [(HMDAccessCodeDataManager *)v11 context];
  v16 = [v15 home];
  v17 = [v16 backingStore];

  if (v17)
  {
    v18 = objc_alloc_init(MEMORY[0x277D2C900]);
    v19 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v20 = [v17 transaction:@"Remove HMDRemovedUserAccessCodeModel" options:v19];

    v21 = MEMORY[0x277D0F818];
    v42 = *MEMORY[0x277D0F1C8];
    v22 = HMFEncodedRootObject();
    v43 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v24 = [v21 messageWithName:@"AccessCodeUpdate" messagePayload:v23];

    [v6 setObjectChangeType:3];
    [v20 add:v6 withMessage:v24];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __69__HMDAccessCodeDataManager_removeHMDRemovedUserAccessCodeModel_flow___block_invoke;
    v39[3] = &unk_278688D58;
    v39[4] = v11;
    v40 = v7;
    v41 = v18;
    v25 = v18;
    [v20 run:v39];
    v26 = MEMORY[0x277D2C938];
    v27 = [(HMDAccessCodeDataManager *)v11 context];
    v28 = [v27 workQueue];
    v29 = [v26 schedulerWithDispatchQueue:v28];
    v30 = [v25 reschedule:v29];
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    v32 = v11;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      v35 = [v7 UUID];
      *buf = 138543618;
      v45 = v34;
      v46 = 2112;
      v47 = v35;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Cannot remove HMDRemovedUserAccessCodeModel because self.context.home.backingStore is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    v36 = MEMORY[0x277D2C900];
    v20 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v30 = [v36 futureWithError:v20];
  }

  v37 = *MEMORY[0x277D85DE8];

  return v30;
}

void __69__HMDAccessCodeDataManager_removeHMDRemovedUserAccessCodeModel_flow___block_invoke(id *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [a1[5] UUID];
      v15 = 138543874;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to run transaction to update model with error: %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v10 = a1[6];
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    [v10 finishWithError:v11];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [a1[5] UUID];
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully updated model", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [a1[6] finishWithNoResult];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)addOrUpdateHMDRemovedUserAccessCodeModel:(id)a3 flow:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessCodeDataManager *)self context];
  v9 = [v8 workQueue];
  dispatch_assert_queue_V2(v9);

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v7 UUID];
    *buf = 138543618;
    v45 = v13;
    v46 = 2112;
    v47 = v14;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Adding or updating HMDRemovedUserAccessCodeModel", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = [(HMDAccessCodeDataManager *)v11 context];
  v16 = [v15 home];
  v17 = [v16 backingStore];

  if (v17)
  {
    v18 = objc_alloc_init(MEMORY[0x277D2C900]);
    v19 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v20 = [v17 transaction:@"Update HMDRemovedUserAccessCodeModel" options:v19];

    v21 = MEMORY[0x277D0F818];
    v42 = *MEMORY[0x277D0F1C8];
    v22 = HMFEncodedRootObject();
    v43 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v24 = [v21 messageWithName:@"AccessCodeUpdate" messagePayload:v23];

    [v20 add:v6 withMessage:v24];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __74__HMDAccessCodeDataManager_addOrUpdateHMDRemovedUserAccessCodeModel_flow___block_invoke;
    v39[3] = &unk_278688D58;
    v39[4] = v11;
    v40 = v7;
    v41 = v18;
    v25 = v18;
    [v20 run:v39];
    v26 = MEMORY[0x277D2C938];
    v27 = [(HMDAccessCodeDataManager *)v11 context];
    v28 = [v27 workQueue];
    v29 = [v26 schedulerWithDispatchQueue:v28];
    v30 = [v25 reschedule:v29];
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    v32 = v11;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      v35 = [v7 UUID];
      *buf = 138543618;
      v45 = v34;
      v46 = 2112;
      v47 = v35;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Cannot add or update HMDRemovedUserAccessCodeModel, because self.context.home.backingStore is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    v36 = MEMORY[0x277D2C900];
    v20 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v30 = [v36 futureWithError:v20];
  }

  v37 = *MEMORY[0x277D85DE8];

  return v30;
}

void __74__HMDAccessCodeDataManager_addOrUpdateHMDRemovedUserAccessCodeModel_flow___block_invoke(id *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [a1[5] UUID];
      v15 = 138543874;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to run transaction to update model, with error: %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v10 = a1[6];
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    [v10 finishWithError:v11];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [a1[5] UUID];
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully updated model", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [a1[6] finishWithNoResult];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)removeHMDRemovedUserAccessCodeWithCode:(id)a3 removedUserInfo:(id)a4 flow:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDAccessCodeDataManager *)self context];
  v12 = [v11 workQueue];
  dispatch_assert_queue_V2(v12);

  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [v10 UUID];
    v33 = 138543874;
    v34 = v16;
    v35 = 2112;
    v36 = v17;
    v37 = 2112;
    v38 = v9;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing HMDRemovedUserAccessCode with HMRemovedUserInfo: %@", &v33, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  v18 = [(HMDAccessCodeDataManager *)v14 context];
  v19 = [v18 home];

  if (v19)
  {
    v20 = [HMDRemovedUserAccessCodeModel alloc];
    v21 = [v19 uuid];
    v22 = [(HMDRemovedUserAccessCodeModel *)v20 initWithRemovedUserInfo:v9 accessCode:v8 homeUUID:v21];

    v23 = [(HMDAccessCodeDataManager *)v14 removeHMDRemovedUserAccessCodeModel:v22 flow:v10];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = v14;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      v28 = [v10 UUID];
      v33 = 138543618;
      v34 = v27;
      v35 = 2112;
      v36 = v28;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not removing HMDRemovedUserAccessCode because home reference was nil", &v33, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v29 = MEMORY[0x277D2C900];
    v22 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v23 = [v29 futureWithError:v22];
  }

  v30 = v23;

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)saveRemovedUserAccessCode:(id)a3 withRemovedUserInfo:(id)a4 flow:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDAccessCodeDataManager *)self context];
  v12 = [v11 workQueue];
  dispatch_assert_queue_V2(v12);

  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [v10 UUID];
    v33 = 138543874;
    v34 = v16;
    v35 = 2112;
    v36 = v17;
    v37 = 2112;
    v38 = v9;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Saving removed user access code with removed user info: %@", &v33, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  v18 = [(HMDAccessCodeDataManager *)v14 context];
  v19 = [v18 home];

  if (v19)
  {
    v20 = [HMDRemovedUserAccessCodeModel alloc];
    v21 = [v19 uuid];
    v22 = [(HMDRemovedUserAccessCodeModel *)v20 initWithRemovedUserInfo:v9 accessCode:v8 homeUUID:v21];

    v23 = [(HMDAccessCodeDataManager *)v14 addOrUpdateHMDRemovedUserAccessCodeModel:v22 flow:v10];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = v14;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      v28 = [v10 UUID];
      v33 = 138543618;
      v34 = v27;
      v35 = 2112;
      v36 = v28;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not saving removed user access code because home reference was nil", &v33, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v29 = MEMORY[0x277D2C900];
    v22 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v23 = [v29 futureWithError:v22];
  }

  v30 = v23;

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)removeHomeAccessCodeModel:(id)a3 flow:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessCodeDataManager *)self context];
  v9 = [v8 workQueue];
  dispatch_assert_queue_V2(v9);

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v7 UUID];
    *buf = 138543618;
    v45 = v13;
    v46 = 2112;
    v47 = v14;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing HMDHomeAccessCodeModel", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = [(HMDAccessCodeDataManager *)v11 context];
  v16 = [v15 home];
  v17 = [v16 backingStore];

  if (v17)
  {
    v18 = objc_alloc_init(MEMORY[0x277D2C900]);
    v19 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v20 = [v17 transaction:@"Remove HMDHomeAccessCodeModel" options:v19];

    v21 = MEMORY[0x277D0F818];
    v42 = *MEMORY[0x277D0F1C8];
    v22 = HMFEncodedRootObject();
    v43 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v24 = [v21 messageWithName:@"AccessCodeUpdate" messagePayload:v23];

    [v6 setObjectChangeType:3];
    [v20 add:v6 withMessage:v24];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __59__HMDAccessCodeDataManager_removeHomeAccessCodeModel_flow___block_invoke;
    v39[3] = &unk_278688D58;
    v39[4] = v11;
    v40 = v7;
    v41 = v18;
    v25 = v18;
    [v20 run:v39];
    v26 = MEMORY[0x277D2C938];
    v27 = [(HMDAccessCodeDataManager *)v11 context];
    v28 = [v27 workQueue];
    v29 = [v26 schedulerWithDispatchQueue:v28];
    v30 = [v25 reschedule:v29];
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    v32 = v11;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      v35 = [v7 UUID];
      *buf = 138543618;
      v45 = v34;
      v46 = 2112;
      v47 = v35;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Cannot remove HMDHomeAccessCodeModel because self.context.home.backingStore is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    v36 = MEMORY[0x277D2C900];
    v20 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v30 = [v36 futureWithError:v20];
  }

  v37 = *MEMORY[0x277D85DE8];

  return v30;
}

void __59__HMDAccessCodeDataManager_removeHomeAccessCodeModel_flow___block_invoke(id *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [a1[5] UUID];
      v15 = 138543874;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to run transaction to update model with error: %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v10 = a1[6];
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    [v10 finishWithError:v11];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [a1[5] UUID];
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully updated model", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [a1[6] finishWithNoResult];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)addOrUpdateHomeAccessCodeModel:(id)a3 flow:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessCodeDataManager *)self context];
  v9 = [v8 workQueue];
  dispatch_assert_queue_V2(v9);

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v7 UUID];
    *buf = 138543618;
    v45 = v13;
    v46 = 2112;
    v47 = v14;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Adding or updating HMDHomeAccessCodeModel", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = [(HMDAccessCodeDataManager *)v11 context];
  v16 = [v15 home];
  v17 = [v16 backingStore];

  if (v17)
  {
    v18 = objc_alloc_init(MEMORY[0x277D2C900]);
    v19 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v20 = [v17 transaction:@"Update HMDHomeAccessCodeModel" options:v19];

    v21 = MEMORY[0x277D0F818];
    v42 = *MEMORY[0x277D0F1C8];
    v22 = HMFEncodedRootObject();
    v43 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v24 = [v21 messageWithName:@"AccessCodeUpdate" messagePayload:v23];

    [v20 add:v6 withMessage:v24];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __64__HMDAccessCodeDataManager_addOrUpdateHomeAccessCodeModel_flow___block_invoke;
    v39[3] = &unk_278688D58;
    v39[4] = v11;
    v40 = v7;
    v41 = v18;
    v25 = v18;
    [v20 run:v39];
    v26 = MEMORY[0x277D2C938];
    v27 = [(HMDAccessCodeDataManager *)v11 context];
    v28 = [v27 workQueue];
    v29 = [v26 schedulerWithDispatchQueue:v28];
    v30 = [v25 reschedule:v29];
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    v32 = v11;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      v35 = [v7 UUID];
      *buf = 138543618;
      v45 = v34;
      v46 = 2112;
      v47 = v35;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Cannot add or update HMDHomeAccessCodeModel, because self.context.home.backingStore is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    v36 = MEMORY[0x277D2C900];
    v20 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v30 = [v36 futureWithError:v20];
  }

  v37 = *MEMORY[0x277D85DE8];

  return v30;
}

void __64__HMDAccessCodeDataManager_addOrUpdateHomeAccessCodeModel_flow___block_invoke(id *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [a1[5] UUID];
      v15 = 138543874;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to run transaction to update model, with error: %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v10 = a1[6];
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    [v10 finishWithError:v11];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [a1[5] UUID];
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully updated model", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [a1[6] finishWithNoResult];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)removeUserAccessCodeModel:(id)a3 flow:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessCodeDataManager *)self context];
  v9 = [v8 workQueue];
  dispatch_assert_queue_V2(v9);

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v7 UUID];
    v15 = [v6 changedByUserUUID];
    *buf = 138543874;
    v46 = v13;
    v47 = 2112;
    v48 = v14;
    v49 = 2112;
    v50 = v15;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing HMDUserAccessCodeModel, removedByUserUUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v16 = [(HMDAccessCodeDataManager *)v11 context];
  v17 = [v16 home];
  v18 = [v17 backingStore];

  if (v18)
  {
    v19 = objc_alloc_init(MEMORY[0x277D2C900]);
    v20 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v21 = [v18 transaction:@"Remove HMDUserAccessCodeModel" options:v20];

    v22 = MEMORY[0x277D0F818];
    v43 = *MEMORY[0x277D0F1C8];
    v23 = HMFEncodedRootObject();
    v44 = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v25 = [v22 messageWithName:@"AccessCodeUpdate" messagePayload:v24];

    [v6 setObjectChangeType:3];
    [v21 add:v6 withMessage:v25];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __59__HMDAccessCodeDataManager_removeUserAccessCodeModel_flow___block_invoke;
    v40[3] = &unk_278688D58;
    v40[4] = v11;
    v41 = v7;
    v42 = v19;
    v26 = v19;
    [v21 run:v40];
    v27 = MEMORY[0x277D2C938];
    v28 = [(HMDAccessCodeDataManager *)v11 context];
    v29 = [v28 workQueue];
    v30 = [v27 schedulerWithDispatchQueue:v29];
    v31 = [v26 reschedule:v30];
  }

  else
  {
    v32 = objc_autoreleasePoolPush();
    v33 = v11;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      v36 = [v7 UUID];
      *buf = 138543618;
      v46 = v35;
      v47 = 2112;
      v48 = v36;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Cannot remove HMDUserAccessCodeModel because self.context.home.backingStore is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    v37 = MEMORY[0x277D2C900];
    v21 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v31 = [v37 futureWithError:v21];
  }

  v38 = *MEMORY[0x277D85DE8];

  return v31;
}

void __59__HMDAccessCodeDataManager_removeUserAccessCodeModel_flow___block_invoke(id *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [a1[5] UUID];
      v15 = 138543874;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to run transaction to update model, error: %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v10 = a1[6];
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    [v10 finishWithError:v11];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [a1[5] UUID];
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully updated model", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [a1[6] finishWithNoResult];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)addOrUpdateUserAccessCodeModel:(id)a3 flow:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessCodeDataManager *)self context];
  v9 = [v8 workQueue];
  dispatch_assert_queue_V2(v9);

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v7 UUID];
    *buf = 138543618;
    v45 = v13;
    v46 = 2112;
    v47 = v14;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Adding or updating HMDUserAccessCodeModel", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = [(HMDAccessCodeDataManager *)v11 context];
  v16 = [v15 home];
  v17 = [v16 backingStore];

  if (v17)
  {
    v18 = objc_alloc_init(MEMORY[0x277D2C900]);
    v19 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v20 = [v17 transaction:@"Update HMDUserAccessCodeModel" options:v19];

    v21 = MEMORY[0x277D0F818];
    v42 = *MEMORY[0x277D0F1C8];
    v22 = HMFEncodedRootObject();
    v43 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v24 = [v21 messageWithName:@"AccessCodeUpdate" messagePayload:v23];

    [v20 add:v6 withMessage:v24];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __64__HMDAccessCodeDataManager_addOrUpdateUserAccessCodeModel_flow___block_invoke;
    v39[3] = &unk_278688D58;
    v39[4] = v11;
    v40 = v7;
    v41 = v18;
    v25 = v18;
    [v20 run:v39];
    v26 = MEMORY[0x277D2C938];
    v27 = [(HMDAccessCodeDataManager *)v11 context];
    v28 = [v27 workQueue];
    v29 = [v26 schedulerWithDispatchQueue:v28];
    v30 = [v25 reschedule:v29];
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    v32 = v11;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      v35 = [v7 UUID];
      *buf = 138543618;
      v45 = v34;
      v46 = 2112;
      v47 = v35;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Cannot add or update HMDUserAccessCodeModel because self.context.home.backingStore is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    v36 = MEMORY[0x277D2C900];
    v20 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v30 = [v36 futureWithError:v20];
  }

  v37 = *MEMORY[0x277D85DE8];

  return v30;
}

void __64__HMDAccessCodeDataManager_addOrUpdateUserAccessCodeModel_flow___block_invoke(id *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [a1[5] UUID];
      v15 = 138543874;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to run transaction to update model with error: %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v10 = a1[6];
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    [v10 finishWithError:v11];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [a1[5] UUID];
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully updated model", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [a1[6] finishWithNoResult];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (NSSet)accessCodeValuesWithRemovedUserInfo
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessCodeDataManager *)self context];
  v4 = [v3 home];

  if (v4)
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = [v4 removedUserInfoByAccessCode];
    v7 = [v6 allKeys];
    v8 = [v7 na_map:&__block_literal_global_40_213663];
    v9 = [v5 setWithArray:v8];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cannot find access code values with removed user info because home reference was nil", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v9 = [MEMORY[0x277CBEB98] set];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

id __63__HMDAccessCodeDataManager_accessCodeValuesWithRemovedUserInfo__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD1648];
  v3 = a2;
  v4 = [[v2 alloc] initWithStringValue:v3];

  return v4;
}

- (NSSet)accessCodeValuesWithUserLabel
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessCodeDataManager *)self context];
  v4 = [v3 home];

  if (v4)
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = [v4 users];
    v7 = [v6 na_map:&__block_literal_global_37_213668];
    v8 = [v5 setWithArray:v7];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch user access code values with simple labels because home reference was nil", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v8 = [MEMORY[0x277CBEB98] setWithArray:MEMORY[0x277CBEBF8]];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

id __57__HMDAccessCodeDataManager_accessCodeValuesWithUserLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 accessCode];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CD1648]);
    v5 = [v2 accessCode];
    v3 = [v4 initWithStringValue:v5];
  }

  return v3;
}

- (id)userUUIDForAccessCode:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessCodeDataManager *)self context];
  v6 = [v5 home];

  if (v6)
  {
    v7 = [v6 users];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __50__HMDAccessCodeDataManager_userUUIDForAccessCode___block_invoke;
    v16[3] = &unk_278688680;
    v17 = v4;
    v8 = [v7 na_firstObjectPassingTest:v16];
    v9 = [v8 uuid];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cannot find access code with simple label because home reference was nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __50__HMDAccessCodeDataManager_userUUIDForAccessCode___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 accessCode];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)simpleLabelForAccessCode:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessCodeDataManager *)self context];
  v6 = [v5 home];

  if (v6)
  {
    v7 = [v6 labelsByAccessCode];
    v8 = [v7 objectForKeyedSubscript:v4];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Cannot find access code with simple label because home reference was nil", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (NSSet)accessCodeValuesWithSimpleLabel
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessCodeDataManager *)self context];
  v4 = [v3 home];

  if (v4)
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = [v4 labelsByAccessCode];
    v7 = [v6 allKeys];
    v8 = [v7 na_map:&__block_literal_global_34_213674];
    v9 = [v5 setWithArray:v8];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cannot find access code values with simple label because home reference was nil", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v9 = [MEMORY[0x277CBEB98] set];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

id __59__HMDAccessCodeDataManager_accessCodeValuesWithSimpleLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD1648];
  v3 = a2;
  v4 = [[v2 alloc] initWithStringValue:v3];

  return v4;
}

- (id)_removeHMDRemovedUserAccessCodeWithAccessCode:(id)a3 flow:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessCodeDataManager *)self context];
  v9 = [v8 workQueue];
  dispatch_assert_queue_V2(v9);

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v7 UUID];
    v35 = 138543618;
    v36 = v13;
    v37 = 2112;
    v38 = v14;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing HMDRemovedUserAccessCode with specified value", &v35, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = [(HMDAccessCodeDataManager *)v11 context];
  v16 = [v15 home];

  if (!v16)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v11;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [v7 UUID];
      v35 = 138543618;
      v36 = v25;
      v37 = 2112;
      v38 = v26;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not Removing HMDRemovedUserAccessCode because home reference was nil", &v35, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v27 = MEMORY[0x277D2C900];
    v19 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v21 = [v27 futureWithError:v19];
    goto LABEL_9;
  }

  v17 = [v16 removedUserInfoByAccessCode];
  v18 = [v17 objectForKeyedSubscript:v6];

  if (v18)
  {
    v19 = [v16 removedUserInfoByAccessCode];
    v20 = [v19 objectForKeyedSubscript:v6];
    v21 = [(HMDAccessCodeDataManager *)v11 removeHMDRemovedUserAccessCodeWithCode:v6 removedUserInfo:v20 flow:v7];

LABEL_9:
    goto LABEL_13;
  }

  v28 = objc_autoreleasePoolPush();
  v29 = v11;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = HMFGetLogIdentifier();
    v32 = [v7 UUID];
    v35 = 138543618;
    v36 = v31;
    v37 = 2112;
    v38 = v32;
    _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Did not find HMDRemovedUserAccessCode with the specified value", &v35, 0x16u);
  }

  objc_autoreleasePoolPop(v28);
  v21 = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_13:

  v33 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)removeHMDRemovedUserAccessCodeWithAccessCode:(id)a3 flow:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessCodeDataManager *)self context];
  v9 = [v8 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HMDAccessCodeDataManager_removeHMDRemovedUserAccessCodeWithAccessCode_flow___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

- (void)_cleanUpOldRemovedUserDataWithReason:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessCodeDataManager *)self context];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 UUID];
    *buf = 138543874;
    v25 = v11;
    v26 = 2112;
    v27 = v12;
    v28 = 2112;
    v29 = v4;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Pin Codes}] Cleaning up old removedUserInfo with reason: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [(HMDAccessCodeDataManager *)v9 context];
  v14 = [v13 home];

  if (v14)
  {
    v15 = [v14 removedUserInfoByAccessCode];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __65__HMDAccessCodeDataManager__cleanUpOldRemovedUserDataWithReason___block_invoke;
    v22[3] = &unk_278680B18;
    v22[4] = v9;
    v23 = v7;
    [v15 na_each:v22];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v9;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [v7 UUID];
      *buf = 138543618;
      v25 = v19;
      v26 = 2112;
      v27 = v20;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not cleaning up old removed user data because home reference was nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __65__HMDAccessCodeDataManager__cleanUpOldRemovedUserDataWithReason___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = [v5 dateRemoved];
  [v6 timeIntervalSinceNow];
  v8 = -v7;

  v9 = [*(a1 + 32) context];
  [v9 removedUserAccessCodeTimeToLive];
  v11 = v10;

  if (v11 < v8)
  {
    v12 = [*(a1 + 32) removeHMDRemovedUserAccessCodeWithCode:v13 removedUserInfo:v5 flow:*(a1 + 40)];
  }
}

- (id)_removeSimpleLabelAccessCodeValue:(id)a3 flow:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessCodeDataManager *)self context];
  v9 = [v8 workQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [(HMDAccessCodeDataManager *)self context];
  v11 = [v10 home];

  if (v11)
  {
    v12 = [v11 labelsByAccessCode];
    v13 = [v6 stringValue];
    v14 = [v12 objectForKeyedSubscript:v13];

    v15 = [HMDHomeAccessCodeModel alloc];
    v16 = [v11 uuid];
    v17 = [v6 stringValue];
    v18 = [(HMDHomeAccessCodeModel *)v15 initWithHomeUUID:v16 value:v17 label:v14];

    v19 = [(HMDAccessCodeDataManager *)self removeHomeAccessCodeModel:v18 flow:v7];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [v7 UUID];
      v28 = 138543618;
      v29 = v23;
      v30 = 2112;
      v31 = v24;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not removing access code value because home reference was nil", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v25 = MEMORY[0x277D2C900];
    v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v19 = [v25 futureWithError:v14];
  }

  v26 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_setSimpleLabel:(id)a3 forAccessCodeValue:(id)a4 flow:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDAccessCodeDataManager *)self context];
  v12 = [v11 workQueue];
  dispatch_assert_queue_V2(v12);

  v13 = [(HMDAccessCodeDataManager *)self context];
  v14 = [v13 home];

  if (v14)
  {
    v15 = [HMDHomeAccessCodeModel alloc];
    v16 = [v14 uuid];
    v17 = [v9 stringValue];
    v18 = [(HMDHomeAccessCodeModel *)v15 initWithHomeUUID:v16 value:v17 label:v8];

    v19 = [(HMDAccessCodeDataManager *)self addOrUpdateHomeAccessCodeModel:v18 flow:v10];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __68__HMDAccessCodeDataManager__setSimpleLabel_forAccessCodeValue_flow___block_invoke;
    v29[3] = &unk_2786835C0;
    v29[4] = self;
    v30 = v9;
    v31 = v10;
    v20 = [v19 addSuccessBlock:v29];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [v10 UUID];
      *buf = 138543618;
      v33 = v24;
      v34 = 2112;
      v35 = v25;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not setting simple label for access code value because home reference was nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v26 = MEMORY[0x277D2C900];
    v18 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v20 = [v26 futureWithError:v18];
  }

  v27 = *MEMORY[0x277D85DE8];

  return v20;
}

void __68__HMDAccessCodeDataManager__setSimpleLabel_forAccessCodeValue_flow___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) stringValue];
  [v2 removeHMDRemovedUserAccessCodeWithAccessCode:v3 flow:*(a1 + 48)];
}

- (void)_messageUser:(id)a3 thatTheirAccessCodeWasChangedWithType:(unint64_t)a4 flow:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v9 UUID];
    v15 = [v8 uuid];
    v16 = [v15 UUIDString];
    *buf = 138544130;
    v32 = v13;
    v33 = 2112;
    v34 = v14;
    v35 = 2112;
    v36 = v16;
    v37 = 2048;
    v38 = a4;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Messaging user that their access code was changed. user: %@, changeType: %lu", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v10);
  v17 = [HMDRemoteAccountMessageDestination alloc];
  v18 = [(HMDAccessCodeDataManager *)v11 delegate];
  v19 = [v18 messageTargetUUID];
  v20 = [v8 accountHandle];
  v21 = [(HMDRemoteAccountMessageDestination *)v17 initWithTarget:v19 handle:v20 multicast:1];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{a4, @"HMDAccessCodeManagerMessageKeyUserAccessCodeChangeType"}];
  v30[0] = v22;
  v29[1] = *MEMORY[0x277D0F1C8];
  v23 = HMFEncodedRootObject();
  v30[1] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];

  v25 = [HMDRemoteMessage secureMessageWithName:@"HMDAccessCodeManagerUserAccessCodeDidChangeMessage" qualityOfService:33 destination:v21 messagePayload:v24];
  v26 = [(HMDAccessCodeDataManager *)v11 context];
  v27 = [v26 messageDispatcher];
  [v27 sendMessage:v25];

  v28 = *MEMORY[0x277D85DE8];
}

- (id)_removeUserAccessCodeValue:(id)a3 removedByUserUUID:(id)a4 flow:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDAccessCodeDataManager *)self context];
  v12 = [v11 workQueue];
  dispatch_assert_queue_V2(v12);

  v13 = [(HMDAccessCodeDataManager *)self context];
  v14 = [v13 home];

  if (v14)
  {
    v15 = [v8 stringValue];
    v16 = [HMDAccessCodeDataManager userWithAccessCode:v15 inHome:v14];

    if (v16)
    {
      v17 = [HMDUserAccessCodeModel alloc];
      v18 = [v16 uuid];
      v19 = [(HMDUserAccessCodeModel *)v17 initWithUserUUID:v18];

      v20 = [(HMDAccessCodeDataManager *)self removeUserAccessCodeModel:v19 flow:v10];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __78__HMDAccessCodeDataManager__removeUserAccessCodeValue_removedByUserUUID_flow___block_invoke;
      v36[3] = &unk_2786835C0;
      v36[4] = self;
      v37 = v16;
      v38 = v10;
      v21 = [v20 addSuccessBlock:v36];
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v32 = [v10 UUID];
        *buf = 138543618;
        v40 = v31;
        v41 = 2112;
        v42 = v32;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not removing access code value because couldn't find any user with that access code.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      v33 = MEMORY[0x277D2C900];
      v19 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      v21 = [v33 futureWithError:v19];
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [v10 UUID];
      *buf = 138543618;
      v40 = v25;
      v41 = 2112;
      v42 = v26;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not removing access code value because home reference was nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v27 = MEMORY[0x277D2C900];
    v16 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v21 = [v27 futureWithError:v16];
  }

  v34 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)_setUserWithUUID:(id)a3 forAccessCodeValue:(id)a4 changedByUserUUID:(id)a5 flow:(id)a6
{
  v57 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDAccessCodeDataManager *)self context];
  v15 = [v14 workQueue];
  dispatch_assert_queue_V2(v15);

  v16 = [(HMDAccessCodeDataManager *)self context];
  v17 = [v16 home];

  if (v17)
  {
    v18 = [v17 users];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __87__HMDAccessCodeDataManager__setUserWithUUID_forAccessCodeValue_changedByUserUUID_flow___block_invoke;
    v49[3] = &unk_278688680;
    v19 = v10;
    v50 = v19;
    v20 = [v18 na_firstObjectPassingTest:v49];

    if (v20)
    {
      v21 = [[HMDUserAccessCodeModel alloc] initWithUserUUID:v19];
      v22 = [v11 stringValue];
      [(HMDUserAccessCodeModel *)v21 setValue:v22];

      [(HMDUserAccessCodeModel *)v21 setChangedByUserUUID:v12];
      v23 = [v20 accessCode];
      LOBYTE(v22) = v23 != 0;

      v24 = [(HMDAccessCodeDataManager *)self addOrUpdateUserAccessCodeModel:v21 flow:v13];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __87__HMDAccessCodeDataManager__setUserWithUUID_forAccessCodeValue_changedByUserUUID_flow___block_invoke_23;
      v44[3] = &unk_278680AF0;
      v48 = v22;
      v44[4] = self;
      v45 = v20;
      v46 = v13;
      v47 = v11;
      v25 = [v24 addSuccessBlock:v44];
    }

    else
    {
      v43 = v12;
      v34 = objc_autoreleasePoolPush();
      v35 = self;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        [v13 UUID];
        v38 = v42 = v34;
        *buf = 138543874;
        v52 = v37;
        v53 = 2112;
        v54 = v38;
        v55 = 2112;
        v56 = v19;
        _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not setting user UUID: %@, for access code value because we could not find a user with that UUID.", buf, 0x20u);

        v34 = v42;
      }

      objc_autoreleasePoolPop(v34);
      v39 = MEMORY[0x277D2C900];
      v21 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      v25 = [v39 futureWithError:v21];
      v12 = v43;
    }

    v33 = v50;
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      [v13 UUID];
      v31 = v30 = v12;
      *buf = 138543874;
      v52 = v29;
      v53 = 2112;
      v54 = v31;
      v55 = 2112;
      v56 = v10;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not setting user UUID: %@, for access code value because home reference was nil", buf, 0x20u);

      v12 = v30;
    }

    objc_autoreleasePoolPop(v26);
    v32 = MEMORY[0x277D2C900];
    v33 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v25 = [v32 futureWithError:v33];
  }

  v40 = *MEMORY[0x277D85DE8];

  return v25;
}

uint64_t __87__HMDAccessCodeDataManager__setUserWithUUID_forAccessCodeValue_changedByUserUUID_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

void __87__HMDAccessCodeDataManager__setUserWithUUID_forAccessCodeValue_changedByUserUUID_flow___block_invoke_23(uint64_t a1)
{
  [*(a1 + 32) _messageUser:*(a1 + 40) thatTheirAccessCodeWasChangedWithType:*(a1 + 64) flow:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 56) stringValue];
  [v2 removeHMDRemovedUserAccessCodeWithAccessCode:v3 flow:*(a1 + 48)];
}

- (void)_setUpAndStartTimer
{
  v3 = [(HMDAccessCodeDataManager *)self context];
  v4 = [v3 workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(HMDAccessCodeDataManager *)self dataCleanUpTimerFactory];
  v6 = [(HMDAccessCodeDataManager *)self context];
  [v6 dataCleanUpCheckTimerInterval];
  v7 = v5[2](v5, 4);
  [(HMDAccessCodeDataManager *)self setDataCleanUpTimer:v7];

  v8 = [(HMDAccessCodeDataManager *)self dataCleanUpTimer];
  [v8 setDelegate:self];

  v9 = [(HMDAccessCodeDataManager *)self context];
  v10 = [v9 workQueue];
  v11 = [(HMDAccessCodeDataManager *)self dataCleanUpTimer];
  [v11 setDelegateQueue:v10];

  v12 = [(HMDAccessCodeDataManager *)self dataCleanUpTimer];
  [v12 resume];
}

- (id)removeAllHomeAccessCodesWithFlow:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessCodeDataManager *)self context];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [(HMDAccessCodeDataManager *)self homeAccessCodeValues];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v18 + 1) + 8 * i) accessCodeValue];
        v14 = [(HMDAccessCodeDataManager *)self removeHomeAccessCodeWithValue:v13 removedByUserUUID:0 flow:v4];
        [v7 addObject:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v15 = [MEMORY[0x277D2C900] chainFutures:v7];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)updateUserInformation:(id)a3 forHomeAccessCodeWithOldValue:(id)a4 newAccessCodeValue:(id)a5 flow:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 userUUID];

  if (v14)
  {
    v15 = [(HMDAccessCodeDataManager *)self setUserInformation:v10 forHomeAccessCodeWithValue:v12 changedByUserUUID:0 flow:v13];
  }

  else
  {
    v16 = [v10 simpleLabel];

    if (v16)
    {
      v17 = [(HMDAccessCodeDataManager *)self removeHomeAccessCodeWithValue:v11 removedByUserUUID:0 flow:v13];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __104__HMDAccessCodeDataManager_updateUserInformation_forHomeAccessCodeWithOldValue_newAccessCodeValue_flow___block_invoke;
      v20[3] = &unk_278680AC8;
      v20[4] = self;
      v21 = v10;
      v22 = v12;
      v23 = v13;
      v15 = [v17 flatMap:v20];
    }

    else
    {
      v18 = MEMORY[0x277D2C900];
      v17 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      v15 = [v18 futureWithError:v17];
    }
  }

  return v15;
}

- (id)removeHomeAccessCodeWithValue:(id)a3 removedByUserUUID:(id)a4 flow:(id)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDAccessCodeDataManager *)self context];
  v12 = [v11 workQueue];
  dispatch_assert_queue_V2(v12);

  v13 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [v13 UUID];
    v19 = [v10 UUID];
    v38 = 138544130;
    v39 = v17;
    v40 = 2112;
    v41 = v18;
    v42 = 2112;
    v43 = v19;
    v44 = 2112;
    v45 = v9;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@[ChildFlow: %@ Parent: %@] Removing home access code, removedByUserUUID: %@", &v38, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  v20 = [(HMDAccessCodeDataManager *)v15 accessCodeValuesWithSimpleLabel];
  v21 = [v20 containsObject:v8];

  if (v21)
  {
    v22 = [(HMDAccessCodeDataManager *)v15 _removeSimpleLabelAccessCodeValue:v8 flow:v13];
LABEL_7:
    v25 = v22;
    goto LABEL_14;
  }

  v23 = [(HMDAccessCodeDataManager *)v15 accessCodeValuesWithUserLabel];
  v24 = [v23 containsObject:v8];

  if (v24)
  {
    v22 = [(HMDAccessCodeDataManager *)v15 _removeUserAccessCodeValue:v8 removedByUserUUID:v9 flow:v13];
    goto LABEL_7;
  }

  v26 = [(HMDAccessCodeDataManager *)v15 accessCodeValuesWithRemovedUserInfo];
  v27 = [v26 containsObject:v8];

  if (v27)
  {
    v28 = [v8 stringValue];
    v29 = [(HMDAccessCodeDataManager *)v15 _removeHMDRemovedUserAccessCodeWithAccessCode:v28 flow:v13];
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = v15;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      v34 = [v13 UUID];
      v38 = 138543618;
      v39 = v33;
      v40 = 2112;
      v41 = v34;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Did not find home access code", &v38, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v35 = MEMORY[0x277D2C900];
    v28 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v29 = [v35 futureWithError:v28];
  }

  v25 = v29;

LABEL_14:
  v36 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)setUserInformation:(id)a3 forHomeAccessCodeWithValue:(id)a4 changedByUserUUID:(id)a5 flow:(id)a6
{
  v47 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDAccessCodeDataManager *)self context];
  v15 = [v14 workQueue];
  dispatch_assert_queue_V2(v15);

  v16 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    [v16 UUID];
    v38 = v16;
    v21 = v11;
    v23 = v22 = v12;
    v24 = [v13 UUID];
    *buf = 138544130;
    v40 = v20;
    v41 = 2112;
    v42 = v23;
    v43 = 2112;
    v44 = v24;
    v45 = 2112;
    v46 = v10;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@[ChildFlow: %@ Parent: %@] Setting user information: %@, for access code value", buf, 0x2Au);

    v12 = v22;
    v11 = v21;
    v16 = v38;
  }

  objc_autoreleasePoolPop(v17);
  v25 = [v10 simpleLabel];

  if (v25)
  {
    v26 = [v10 simpleLabel];
    v27 = [(HMDAccessCodeDataManager *)v18 _setSimpleLabel:v26 forAccessCodeValue:v11 flow:v16];
  }

  else
  {
    v28 = [v10 userUUID];

    if (v28)
    {
      v26 = [v10 userUUID];
      v27 = [(HMDAccessCodeDataManager *)v18 _setUserWithUUID:v26 forAccessCodeValue:v11 changedByUserUUID:v12 flow:v16];
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      v30 = v18;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        v33 = [v16 UUID];
        *buf = 138543874;
        v40 = v32;
        v41 = 2112;
        v42 = v33;
        v43 = 2112;
        v44 = v10;
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not setting user information for access code value because empty user information was provided: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v29);
      v34 = MEMORY[0x277D2C900];
      v26 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      v27 = [v34 futureWithError:v26];
    }
  }

  v35 = v27;

  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

- (id)homeAccessCodeWithRemovedUserInfoWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessCodeDataManager *)self homeAccessCodeValuesWithRemovedUserInfo];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__HMDAccessCodeDataManager_homeAccessCodeWithRemovedUserInfoWithUUID___block_invoke;
  v9[3] = &unk_278680AA0;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __70__HMDAccessCodeDataManager_homeAccessCodeWithRemovedUserInfoWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userInformationValue];
  v4 = [v3 removedUserInfo];
  v5 = [v4 userUUID];
  v6 = *(a1 + 32);
  v7 = HMFEqualObjects();

  return v7;
}

- (NSArray)homeAccessCodeValuesWithRemovedUserInfo
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessCodeDataManager *)self context];
  v4 = [v3 home];

  if (v4)
  {
    v5 = [v4 removedUserInfoByAccessCode];

    if (v5)
    {
      v6 = [v4 removedUserInfoByAccessCode];
      v7 = [v6 na_map:&__block_literal_global_15_213702];

      goto LABEL_10;
    }

    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v11;
      v12 = "%{public}@Home has a nil removedUserInfoByAccessCode but should not";
      goto LABEL_8;
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v11;
      v12 = "%{public}@Cannot fetch user access code values with simple labels because home reference was nil";
LABEL_8:
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, v12, &v15, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v8);
  v7 = MEMORY[0x277CBEBF8];
LABEL_10:

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (NSArray)homeAccessCodeValuesWithUserLabels
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessCodeDataManager *)self context];
  v4 = [v3 home];

  if (v4)
  {
    v5 = [v4 users];
    v6 = [v5 na_map:&__block_literal_global_12_213706];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch user access code values with simple labels because home reference was nil", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v6 = MEMORY[0x277CBEBF8];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

id __62__HMDAccessCodeDataManager_homeAccessCodeValuesWithUserLabels__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 accessCode];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CD1640]);
    v5 = [v2 uuid];
    v6 = [v4 initWithSimpleLabel:0 labelIdentifier:0 userUUID:v5 removedUserInfo:0];

    v7 = objc_alloc(MEMORY[0x277CD1648]);
    v8 = [v2 accessCode];
    v9 = [v7 initWithStringValue:v8];

    v3 = [objc_alloc(MEMORY[0x277CD1A68]) initWithAccessCodeValue:v9 userInformationValue:v6];
  }

  return v3;
}

- (NSArray)homeAccessCodeValuesWithSimpleLabels
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessCodeDataManager *)self context];
  v4 = [v3 home];

  if (v4)
  {
    v5 = [v4 labelsByAccessCode];

    if (v5)
    {
      v6 = [v4 labelsByAccessCode];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __64__HMDAccessCodeDataManager_homeAccessCodeValuesWithSimpleLabels__block_invoke;
      v14[3] = &unk_278680A38;
      v15 = v4;
      v7 = [v6 na_map:v14];

      goto LABEL_8;
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch home access code values with simple labels because home reference was nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v7 = MEMORY[0x277CBEBF8];
LABEL_8:

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

id __64__HMDAccessCodeDataManager_homeAccessCodeValuesWithSimpleLabels__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 labelIdentifiersByAccessCode];
  v8 = [v7 objectForKeyedSubscript:v6];
  v9 = spiClientIdentifierForUUID(v8);

  v10 = [objc_alloc(MEMORY[0x277CD1640]) initWithSimpleLabel:v5 labelIdentifier:v9 userUUID:0 removedUserInfo:0];
  v11 = [objc_alloc(MEMORY[0x277CD1648]) initWithStringValue:v6];

  v12 = [objc_alloc(MEMORY[0x277CD1A68]) initWithAccessCodeValue:v11 userInformationValue:v10];

  return v12;
}

- (NSArray)homeAccessCodeValues
{
  v3 = [(HMDAccessCodeDataManager *)self homeAccessCodeValuesWithSimpleLabels];
  v4 = [(HMDAccessCodeDataManager *)self homeAccessCodeValuesWithUserLabels];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];
  v6 = [(HMDAccessCodeDataManager *)self homeAccessCodeValuesWithRemovedUserInfo];
  v7 = [v5 arrayByAddingObjectsFromArray:v6];

  return v7;
}

- (void)configure
{
  v3 = [(HMDAccessCodeDataManager *)self context];
  v4 = [v3 isCurrentDeviceOwnerController];

  if (v4)
  {
    [(HMDAccessCodeDataManager *)self _setUpAndStartTimer];

    [(HMDAccessCodeDataManager *)self _cleanUpOldRemovedUserDataWithReason:@"configure"];
  }
}

- (HMDAccessCodeDataManager)initWithContext:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = HMDAccessCodeDataManager;
  v9 = [(HMDAccessCodeDataManager *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, a3);
    objc_storeWeak(&v10->_delegate, v8);
    dataCleanUpTimerFactory = v10->_dataCleanUpTimerFactory;
    v10->_dataCleanUpTimerFactory = &__block_literal_global_213717;
  }

  return v10;
}

id __53__HMDAccessCodeDataManager_initWithContext_delegate___block_invoke(double a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:a3 options:a1];

  return v3;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t88 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t88, &__block_literal_global_87_213730);
  }

  v3 = logCategory__hmf_once_v89;

  return v3;
}

void __39__HMDAccessCodeDataManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v89;
  logCategory__hmf_once_v89 = v1;
}

+ (id)_accessCodeInHome:(id)a3 forRemovedUserAccessCodeModel:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 removedUserInfoByAccessCode];
  v8 = [v7 allKeys];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__HMDAccessCodeDataManager__accessCodeInHome_forRemovedUserAccessCodeModel___block_invoke;
  v13[3] = &unk_278680BA0;
  v14 = v6;
  v15 = v5;
  v9 = v5;
  v10 = v6;
  v11 = [v8 na_firstObjectPassingTest:v13];

  return v11;
}

uint64_t __76__HMDAccessCodeDataManager__accessCodeInHome_forRemovedUserAccessCodeModel___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 uuid];
  v6 = [*(a1 + 40) uuid];
  v7 = [*(a1 + 40) removedUserInfoByAccessCode];
  v8 = [v7 objectForKeyedSubscript:v4];
  v9 = [HMDRemovedUserAccessCodeModel modelUUIDForHomeUUID:v6 removedUserInfo:v8 accessCode:v4];

  v10 = HMFEqualObjects();
  return v10;
}

+ (id)_accessCodeInHome:(id)a3 forHomeAccessCodeModel:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 labelsByAccessCode];
  v8 = [v7 allKeys];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__HMDAccessCodeDataManager__accessCodeInHome_forHomeAccessCodeModel___block_invoke;
  v13[3] = &unk_278680BA0;
  v14 = v6;
  v15 = v5;
  v9 = v5;
  v10 = v6;
  v11 = [v8 na_firstObjectPassingTest:v13];

  return v11;
}

uint64_t __69__HMDAccessCodeDataManager__accessCodeInHome_forHomeAccessCodeModel___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 uuid];
  v6 = [*(a1 + 40) uuid];
  v7 = [HMDHomeAccessCodeModel modelUUIDForHomeUUID:v6 accessCodeValue:v4];

  v8 = HMFEqualObjects();
  return v8;
}

+ (id)userWithAccessCode:(id)a3 inHome:(id)a4
{
  v5 = a3;
  v6 = [a4 users];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__HMDAccessCodeDataManager_userWithAccessCode_inHome___block_invoke;
  v10[3] = &unk_278688680;
  v11 = v5;
  v7 = v5;
  v8 = [v6 na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __54__HMDAccessCodeDataManager_userWithAccessCode_inHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 accessCode];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

+ (id)createUserAccessCodeModelFromAccessCode:(id)a3 forUserUUID:(id)a4 changedByUserUUID:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[HMDUserAccessCodeModel alloc] initWithUserUUID:v8];

  [(HMDUserAccessCodeModel *)v10 setValue:v9];
  [(HMDUserAccessCodeModel *)v10 setChangedByUserUUID:v7];

  return v10;
}

+ (id)createRemovedUserInfoModelsFromRemovedUserInfoByAccessCode:(id)a3 forHome:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 allKeys];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __95__HMDAccessCodeDataManager_createRemovedUserInfoModelsFromRemovedUserInfoByAccessCode_forHome___block_invoke;
  v12[3] = &unk_278680A10;
  v13 = v5;
  v14 = v6;
  v8 = v6;
  v9 = v5;
  v10 = [v7 na_map:v12];

  return v10;
}

HMDRemovedUserAccessCodeModel *__95__HMDAccessCodeDataManager_createRemovedUserInfoModelsFromRemovedUserInfoByAccessCode_forHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HMDRemovedUserAccessCodeModel alloc];
  v5 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v6 = [*(a1 + 40) uuid];
  v7 = [(HMDRemovedUserAccessCodeModel *)v4 initWithRemovedUserInfo:v5 accessCode:v3 homeUUID:v6];

  return v7;
}

+ (id)createHomeAccessCodeModelsFromLabelsByAccessCode:(id)a3 forHome:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 allKeys];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__HMDAccessCodeDataManager_createHomeAccessCodeModelsFromLabelsByAccessCode_forHome___block_invoke;
  v12[3] = &unk_278680A10;
  v13 = v6;
  v14 = v5;
  v8 = v5;
  v9 = v6;
  v10 = [v7 na_map:v12];

  return v10;
}

HMDHomeAccessCodeModel *__85__HMDAccessCodeDataManager_createHomeAccessCodeModelsFromLabelsByAccessCode_forHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HMDHomeAccessCodeModel alloc];
  v5 = [*(a1 + 32) uuid];
  v6 = [*(a1 + 40) objectForKeyedSubscript:v3];
  v7 = [(HMDHomeAccessCodeModel *)v4 initWithHomeUUID:v5 value:v3 label:v6];

  return v7;
}

@end