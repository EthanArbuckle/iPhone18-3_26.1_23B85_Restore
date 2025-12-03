@interface HMDAccessCodeDataManager
+ (id)_accessCodeInHome:(id)home forHomeAccessCodeModel:(id)model;
+ (id)_accessCodeInHome:(id)home forRemovedUserAccessCodeModel:(id)model;
+ (id)createHomeAccessCodeModelsFromLabelsByAccessCode:(id)code forHome:(id)home;
+ (id)createRemovedUserInfoModelsFromRemovedUserInfoByAccessCode:(id)code forHome:(id)home;
+ (id)createUserAccessCodeModelFromAccessCode:(id)code forUserUUID:(id)d changedByUserUUID:(id)iD;
+ (id)logCategory;
+ (id)userWithAccessCode:(id)code inHome:(id)home;
- (HMDAccessCodeDataManager)initWithContext:(id)context delegate:(id)delegate;
- (HMDAccessCodeDataManagerDelegate)delegate;
- (NSArray)cachedAccessCodes;
- (NSArray)homeAccessCodeValues;
- (NSArray)homeAccessCodeValuesWithRemovedUserInfo;
- (NSArray)homeAccessCodeValuesWithSimpleLabels;
- (NSArray)homeAccessCodeValuesWithUserLabels;
- (NSSet)accessCodeValuesWithRemovedUserInfo;
- (NSSet)accessCodeValuesWithSimpleLabel;
- (NSSet)accessCodeValuesWithUserLabel;
- (id)_removeHMDRemovedUserAccessCodeWithAccessCode:(id)code flow:(id)flow;
- (id)_removeSimpleLabelAccessCodeValue:(id)value flow:(id)flow;
- (id)_removeUserAccessCodeValue:(id)value removedByUserUUID:(id)d flow:(id)flow;
- (id)_setSimpleLabel:(id)label forAccessCodeValue:(id)value flow:(id)flow;
- (id)_setUserWithUUID:(id)d forAccessCodeValue:(id)value changedByUserUUID:(id)iD flow:(id)flow;
- (id)addOrUpdateHMDRemovedUserAccessCodeModel:(id)model flow:(id)flow;
- (id)addOrUpdateHomeAccessCodeModel:(id)model flow:(id)flow;
- (id)addOrUpdateUserAccessCodeModel:(id)model flow:(id)flow;
- (id)cachedAccessCodeForIdentifier:(id)identifier accessoryUUID:(id)d;
- (id)homeAccessCodeWithRemovedUserInfoWithUUID:(id)d;
- (id)logIdentifier;
- (id)removeAllHomeAccessCodesWithFlow:(id)flow;
- (id)removeHMDRemovedUserAccessCodeModel:(id)model flow:(id)flow;
- (id)removeHMDRemovedUserAccessCodeWithCode:(id)code removedUserInfo:(id)info flow:(id)flow;
- (id)removeHomeAccessCodeModel:(id)model flow:(id)flow;
- (id)removeHomeAccessCodeWithValue:(id)value removedByUserUUID:(id)d flow:(id)flow;
- (id)removeUserAccessCodeModel:(id)model flow:(id)flow;
- (id)saveRemovedUserAccessCode:(id)code withRemovedUserInfo:(id)info flow:(id)flow;
- (id)setUserInformation:(id)information forHomeAccessCodeWithValue:(id)value changedByUserUUID:(id)d flow:(id)flow;
- (id)simpleLabelForAccessCode:(id)code;
- (id)updateUserInformation:(id)information forHomeAccessCodeWithOldValue:(id)value newAccessCodeValue:(id)codeValue flow:(id)flow;
- (id)userUUIDForAccessCode:(id)code;
- (void)_cleanUpOldRemovedUserDataWithReason:(id)reason;
- (void)_messageUser:(id)user thatTheirAccessCodeWasChangedWithType:(unint64_t)type flow:(id)flow;
- (void)_setUpAndStartTimer;
- (void)configure;
- (void)handleRemovedHMDRemovedUserAccessCodeModel:(id)model message:(id)message flow:(id)flow;
- (void)handleRemovedHomeAccessCodeModel:(id)model message:(id)message flow:(id)flow;
- (void)handleRemovedUserAccessCodeModel:(id)model forUser:(id)user message:(id)message flow:(id)flow;
- (void)handleUpdatedHMDRemovedUserAccessCodeModel:(id)model message:(id)message flow:(id)flow;
- (void)handleUpdatedHomeAccessCodeModel:(id)model message:(id)message flow:(id)flow;
- (void)handleUpdatedUserAccessCodeModel:(id)model forUser:(id)user message:(id)message flow:(id)flow;
- (void)removeHMDRemovedUserAccessCodeWithAccessCode:(id)code flow:(id)flow;
- (void)timerDidFire:(id)fire;
- (void)updateCacheWithAddedAccessCodes:(id)codes flow:(id)flow;
- (void)updateCacheWithFetchResponses:(id)responses flow:(id)flow;
- (void)updateCacheWithRemovedAccessCodes:(id)codes flow:(id)flow;
- (void)updateCacheWithUpdatedAccessCodes:(id)codes flow:(id)flow;
@end

@implementation HMDAccessCodeDataManager

- (HMDAccessCodeDataManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  context = [(HMDAccessCodeDataManager *)self context];
  uUID = [context UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (void)timerDidFire:(id)fire
{
  v17 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  dataCleanUpTimer = [(HMDAccessCodeDataManager *)self dataCleanUpTimer];

  if (dataCleanUpTimer == fireCopy)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@dataCleanUpTimer fired", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    context2 = [(HMDAccessCodeDataManager *)selfCopy context];
    isCurrentDeviceOwnerController = [context2 isCurrentDeviceOwnerController];

    if (isCurrentDeviceOwnerController)
    {
      [(HMDAccessCodeDataManager *)selfCopy _cleanUpOldRemovedUserDataWithReason:@"cleanup timer fired"];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)updateCacheWithRemovedAccessCodes:(id)codes flow:(id)flow
{
  v48 = *MEMORY[0x277D85DE8];
  codesCopy = codes;
  flowCopy = flow;
  if (([codesCopy hmf_isEmpty] & 1) == 0)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v29 = codesCopy;
    obj = codesCopy;
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
          context = [(HMDAccessCodeDataManager *)self context];
          accessoryUUID = [v11 accessoryUUID];
          v14 = [context hapAccessoryWithUUID:accessoryUUID];

          v15 = objc_autoreleasePoolPush();
          selfCopy = self;
          v17 = HMFGetOSLogHandle();
          v18 = v17;
          if (v14)
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v19 = v34 = v15;
              uUID = [flowCopy UUID];
              name = [v14 name];
              *buf = 138544130;
              v40 = v19;
              v41 = 2112;
              v42 = uUID;
              v43 = 2112;
              v44 = name;
              v45 = 2112;
              v46 = v11;
              _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Updating accessory: %@, with removed access code: %@", buf, 0x2Au);

              v9 = v30;
              v8 = v32;

              v15 = v34;
            }

            objc_autoreleasePoolPop(v15);
            accessCodeCache = [v14 accessCodeCache];
            uniqueIdentifier = [v11 uniqueIdentifier];
            [accessCodeCache removeObjectForKey:uniqueIdentifier];
          }

          else
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v24 = HMFGetLogIdentifier();
              uUID2 = [flowCopy UUID];
              accessoryUUID2 = [v11 accessoryUUID];
              *buf = 138543874;
              v40 = v24;
              v41 = 2112;
              v42 = uUID2;
              v43 = 2112;
              v44 = accessoryUUID2;
              _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to find hap accessory for fetch response with accessory UUID: %@", buf, 0x20u);

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

    delegate = [(HMDAccessCodeDataManager *)self delegate];
    [delegate accessCodeDataManager:self didRemoveAccessoryAccessCodes:obj flow:flowCopy];

    codesCopy = v29;
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)updateCacheWithUpdatedAccessCodes:(id)codes flow:(id)flow
{
  v46 = *MEMORY[0x277D85DE8];
  codesCopy = codes;
  flowCopy = flow;
  if (([codesCopy hmf_isEmpty] & 1) == 0)
  {
    v30 = flowCopy;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v28 = codesCopy;
    obj = codesCopy;
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
          context = [(HMDAccessCodeDataManager *)self context];
          accessoryUUID = [v10 accessoryUUID];
          v13 = [context hapAccessoryWithUUID:accessoryUUID];

          v14 = objc_autoreleasePoolPush();
          selfCopy = self;
          v16 = HMFGetOSLogHandle();
          v17 = v16;
          if (v13)
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v18 = HMFGetLogIdentifier();
              uUID = [v30 UUID];
              name = [v13 name];
              *buf = 138544130;
              v38 = v18;
              v39 = 2112;
              v40 = uUID;
              v41 = 2112;
              v42 = name;
              v43 = 2112;
              v44 = v10;
              _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Updating accessory: %@, with updated access code: %@", buf, 0x2Au);

              v8 = v29;
            }

            objc_autoreleasePoolPop(v14);
            accessCodeCache = [v13 accessCodeCache];
            uniqueIdentifier = [v10 uniqueIdentifier];
            [accessCodeCache setObject:v10 forKeyedSubscript:uniqueIdentifier];
          }

          else
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v23 = HMFGetLogIdentifier();
              uUID2 = [v30 UUID];
              accessoryUUID2 = [v10 accessoryUUID];
              *buf = 138543874;
              v38 = v23;
              v39 = 2112;
              v40 = uUID2;
              v41 = 2112;
              v42 = accessoryUUID2;
              _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to find hap accessory for accessory access code with accessory UUID: %@", buf, 0x20u);

              v8 = v29;
            }

            objc_autoreleasePoolPop(v14);
          }
        }

        v32 = [obj countByEnumeratingWithState:&v33 objects:v45 count:16];
      }

      while (v32);
    }

    delegate = [(HMDAccessCodeDataManager *)self delegate];
    flowCopy = v30;
    [delegate accessCodeDataManager:self didUpdateAccessoryAccessCodes:obj flow:v30];

    codesCopy = v28;
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)updateCacheWithAddedAccessCodes:(id)codes flow:(id)flow
{
  v46 = *MEMORY[0x277D85DE8];
  codesCopy = codes;
  flowCopy = flow;
  if (([codesCopy hmf_isEmpty] & 1) == 0)
  {
    v30 = flowCopy;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v28 = codesCopy;
    obj = codesCopy;
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
          context = [(HMDAccessCodeDataManager *)self context];
          accessoryUUID = [v10 accessoryUUID];
          v13 = [context hapAccessoryWithUUID:accessoryUUID];

          v14 = objc_autoreleasePoolPush();
          selfCopy = self;
          v16 = HMFGetOSLogHandle();
          v17 = v16;
          if (v13)
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v18 = HMFGetLogIdentifier();
              uUID = [v30 UUID];
              name = [v13 name];
              *buf = 138544130;
              v38 = v18;
              v39 = 2112;
              v40 = uUID;
              v41 = 2112;
              v42 = name;
              v43 = 2112;
              v44 = v10;
              _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Updating accessory: %@, with new access code: %@", buf, 0x2Au);

              v8 = v29;
            }

            objc_autoreleasePoolPop(v14);
            accessCodeCache = [v13 accessCodeCache];
            uniqueIdentifier = [v10 uniqueIdentifier];
            [accessCodeCache setObject:v10 forKeyedSubscript:uniqueIdentifier];
          }

          else
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v23 = HMFGetLogIdentifier();
              uUID2 = [v30 UUID];
              accessoryUUID2 = [v10 accessoryUUID];
              *buf = 138543874;
              v38 = v23;
              v39 = 2112;
              v40 = uUID2;
              v41 = 2112;
              v42 = accessoryUUID2;
              _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to find hap accessory for accessory access code with accessory UUID: %@", buf, 0x20u);

              v8 = v29;
            }

            objc_autoreleasePoolPop(v14);
          }
        }

        v32 = [obj countByEnumeratingWithState:&v33 objects:v45 count:16];
      }

      while (v32);
    }

    delegate = [(HMDAccessCodeDataManager *)self delegate];
    flowCopy = v30;
    [delegate accessCodeDataManager:self didAddAccessoryAccessCodes:obj flow:v30];

    codesCopy = v28;
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)updateCacheWithFetchResponses:(id)responses flow:(id)flow
{
  v38 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  flowCopy = flow;
  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    uUID2 = [flowCopy UUID];
    *buf = 138543874;
    v33 = v12;
    v34 = 2112;
    v35 = uUID;
    v36 = 2112;
    v37 = uUID2;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[ChildFlow: %@ Parent: %@] Updating cache with fetch responses", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __63__HMDAccessCodeDataManager_updateCacheWithFetchResponses_flow___block_invoke;
  v30[3] = &unk_27972E6A8;
  v30[4] = selfCopy;
  v15 = internalOnlyInitializer;
  v31 = v15;
  v16 = [responsesCopy na_flatMap:v30];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __63__HMDAccessCodeDataManager_updateCacheWithFetchResponses_flow___block_invoke_2;
  v28[3] = &unk_27972E6A8;
  v28[4] = selfCopy;
  v17 = v15;
  v29 = v17;
  v18 = [responsesCopy na_flatMap:v28];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __63__HMDAccessCodeDataManager_updateCacheWithFetchResponses_flow___block_invoke_2_80;
  v25 = &unk_27972E6A8;
  v26 = selfCopy;
  v27 = v17;
  v19 = v17;
  v20 = [responsesCopy na_flatMap:&v22];
  [(HMDAccessCodeDataManager *)selfCopy updateCacheWithAddedAccessCodes:v16 flow:v19, v22, v23, v24, v25, v26];
  [(HMDAccessCodeDataManager *)selfCopy updateCacheWithUpdatedAccessCodes:v18 flow:v19];
  [(HMDAccessCodeDataManager *)selfCopy updateCacheWithRemovedAccessCodes:v20 flow:v19];

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
    v17[2] = __63__HMDAccessCodeDataManager_updateCacheWithFetchResponses_flow___block_invoke_76;
    v17[3] = &unk_27972E680;
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
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to find hap accessory for fetch response with accessory UUID: %@", buf, 0x20u);
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
    v17[2] = __63__HMDAccessCodeDataManager_updateCacheWithFetchResponses_flow___block_invoke_79;
    v17[3] = &unk_27972E680;
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
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to find hap accessory for fetch response with accessory UUID: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

id __63__HMDAccessCodeDataManager_updateCacheWithFetchResponses_flow___block_invoke_2_80(uint64_t a1, void *a2)
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
    v18[2] = __63__HMDAccessCodeDataManager_updateCacheWithFetchResponses_flow___block_invoke_81;
    v18[3] = &unk_27972E6F0;
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
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to find hap accessory for fetch response with accessory UUID: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

id __63__HMDAccessCodeDataManager_updateCacheWithFetchResponses_flow___block_invoke_81(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessoryAccessCodeValues];
  v5 = [v4 na_map:&__block_literal_global_85_142969];

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

uint64_t __63__HMDAccessCodeDataManager_updateCacheWithFetchResponses_flow___block_invoke_79(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 accessCodeCache];
  v5 = [v3 uniqueIdentifier];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = HMFEqualObjects();

  return v7 ^ 1u;
}

uint64_t __63__HMDAccessCodeDataManager_updateCacheWithFetchResponses_flow___block_invoke_76(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 accessCodeCache];
  v5 = [v4 allKeys];
  v6 = [v3 uniqueIdentifier];

  LODWORD(v3) = [v5 containsObject:v6];
  return v3 ^ 1;
}

- (id)cachedAccessCodeForIdentifier:(id)identifier accessoryUUID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dCopy = d;
  context = [(HMDAccessCodeDataManager *)self context];
  v9 = [context hapAccessoryWithUUID:dCopy];

  if (v9)
  {
    accessCodeCache = [v9 accessCodeCache];
    v11 = [accessCodeCache objectForKeyedSubscript:identifierCopy];
    accessCodeValue = [v11 accessCodeValue];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v16;
      v21 = 2112;
      v22 = dCopy;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to find hap accessory for cached access code with accessory UUID: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    accessCodeValue = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return accessCodeValue;
}

- (NSArray)cachedAccessCodes
{
  context = [(HMDAccessCodeDataManager *)self context];
  accessoriesSupportingAccessCodes = [context accessoriesSupportingAccessCodes];
  v4 = [accessoriesSupportingAccessCodes na_map:&__block_literal_global_74_142976];

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

- (void)handleRemovedHMDRemovedUserAccessCodeModel:(id)model message:(id)message flow:(id)flow
{
  v52 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  flowCopy = flow;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v47 = v14;
    v48 = 2112;
    v49 = uUID;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling removed HMDHomeAccessCodeModel", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  context = [(HMDAccessCodeDataManager *)selfCopy context];
  home = [context home];

  if (home)
  {
    v18 = [HMDAccessCodeDataManager _accessCodeInHome:home forRemovedUserAccessCodeModel:modelCopy];
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
    if (v18)
    {
      if (v22)
      {
        v23 = HMFGetLogIdentifier();
        uUID2 = [flowCopy UUID];
        *buf = 138543874;
        v47 = v23;
        v48 = 2112;
        v49 = uUID2;
        v50 = 2112;
        v51 = home;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] HMDRemovedUserAccessCodeModel was removed. Removing from HMDHome: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v19);
      removedUserInfoByAccessCode = [home removedUserInfoByAccessCode];
      [removedUserInfoByAccessCode removeObjectForKey:v18];

      transactionResult = [messageCopy transactionResult];
      [transactionResult markChanged];

      [messageCopy respondWithSuccess];
      delegate = [(HMDAccessCodeDataManager *)v20 delegate];
      v28 = MEMORY[0x277CD1A68];
      accessCode = [modelCopy accessCode];
      removedUserInfo = [modelCopy removedUserInfo];
      v31 = [v28 homeAccessCodeValueWithStringValue:accessCode removedUserInfo:removedUserInfo];
      v45 = v31;
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
      v33 = v20;
      v34 = messageCopy;
      v35 = modelCopy;
      v36 = v32;
      [delegate accessCodeDataManager:v33 didRemoveHomeAccessCodes:v32 removedByUserUUID:0 flow:flowCopy];

      modelCopy = v35;
      messageCopy = v34;
    }

    else
    {
      if (v22)
      {
        v42 = HMFGetLogIdentifier();
        uUID3 = [flowCopy UUID];
        *buf = 138543618;
        v47 = v42;
        v48 = 2112;
        v49 = uUID3;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Did not find an access code for this model on the home, so we have nothing to remove.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      [messageCopy respondWithSuccess];
      v18 = 0;
    }
  }

  else
  {
    v37 = objc_autoreleasePoolPush();
    v38 = selfCopy;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = HMFGetLogIdentifier();
      uUID4 = [flowCopy UUID];
      *buf = 138543618;
      v47 = v40;
      v48 = 2112;
      v49 = uUID4;
      _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not handling updated HomeAccessCodeModel because home reference was nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v37);
    v18 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
    [messageCopy respondWithError:v18];
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedHMDRemovedUserAccessCodeModel:(id)model message:(id)message flow:(id)flow
{
  v72 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  flowCopy = flow;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v67 = v14;
    v68 = 2112;
    v69 = uUID;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling updated HMDHomeAccessCodeModel", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  context = [(HMDAccessCodeDataManager *)selfCopy context];
  home = [context home];

  if (!home)
  {
    v42 = objc_autoreleasePoolPush();
    v43 = selfCopy;
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v67 = v45;
      v68 = 2112;
      v69 = uUID2;
      v47 = "%{public}@[Flow: %@] Not handling updated HomeAccessCodeModel because home reference was nil";
LABEL_15:
      _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_ERROR, v47, buf, 0x16u);
    }

LABEL_16:

    objc_autoreleasePoolPop(v42);
    delegate = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
    [messageCopy respondWithError:delegate];
    goto LABEL_17;
  }

  removedUserInfo = [modelCopy removedUserInfo];

  if (!removedUserInfo)
  {
    v42 = objc_autoreleasePoolPush();
    v43 = selfCopy;
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v67 = v45;
      v68 = 2112;
      v69 = uUID2;
      v47 = "%{public}@[Flow: %@] HMDRemovedUserAccessCodeModel has a nil property but should not";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  delegate = [(HMDAccessCodeDataManager *)selfCopy delegate];
  removedUserInfoByAccessCode = [home removedUserInfoByAccessCode];
  accessCode = [modelCopy accessCode];
  v22 = [removedUserInfoByAccessCode objectForKeyedSubscript:accessCode];

  if (v22)
  {
    v63 = flowCopy;
    removedUserInfoByAccessCode2 = [home removedUserInfoByAccessCode];
    accessCode2 = [modelCopy accessCode];
    v25 = [removedUserInfoByAccessCode2 objectForKeyedSubscript:accessCode2];
    removedUserInfo2 = [modelCopy removedUserInfo];
    v27 = [v25 isEqual:removedUserInfo2];

    if ((v27 & 1) == 0)
    {
      v28 = objc_autoreleasePoolPush();
      v29 = selfCopy;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        uUID3 = [v63 UUID];
        *buf = 138543874;
        v67 = v31;
        v68 = 2112;
        v69 = uUID3;
        v70 = 2112;
        v71 = home;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] HMDRemovedUserAccessCodeModel was updated on HMDHome: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v28);
      removedUserInfo3 = [modelCopy removedUserInfo];
      removedUserInfoByAccessCode3 = [home removedUserInfoByAccessCode];
      accessCode3 = [modelCopy accessCode];
      [removedUserInfoByAccessCode3 setObject:removedUserInfo3 forKeyedSubscript:accessCode3];

      transactionResult = [messageCopy transactionResult];
      [transactionResult markChanged];

      v37 = MEMORY[0x277CD1A68];
      accessCode4 = [modelCopy accessCode];
      removedUserInfo4 = [modelCopy removedUserInfo];
      v40 = [v37 homeAccessCodeValueWithStringValue:accessCode4 removedUserInfo:removedUserInfo4];
      v64 = v40;
      v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
      [delegate accessCodeDataManager:v29 didUpdateHomeAccessCodes:v41 changedByUserUUID:0 flow:v63];
    }

    [messageCopy respondWithSuccess];
    flowCopy = v63;
  }

  else
  {
    v49 = objc_autoreleasePoolPush();
    v50 = selfCopy;
    v51 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      v52 = HMFGetLogIdentifier();
      uUID4 = [flowCopy UUID];
      *buf = 138543874;
      v67 = v52;
      v68 = 2112;
      v69 = uUID4;
      v70 = 2112;
      v71 = home;
      _os_log_impl(&dword_2531F8000, v51, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] New HMDRemovedUserAccessCodeModel was added. Updating values on HMDHome: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v49);
    removedUserInfo5 = [modelCopy removedUserInfo];
    removedUserInfoByAccessCode4 = [home removedUserInfoByAccessCode];
    accessCode5 = [modelCopy accessCode];
    [removedUserInfoByAccessCode4 setObject:removedUserInfo5 forKeyedSubscript:accessCode5];

    transactionResult2 = [messageCopy transactionResult];
    [transactionResult2 markChanged];

    [messageCopy respondWithSuccess];
    v58 = MEMORY[0x277CD1A68];
    accessCode6 = [modelCopy accessCode];
    removedUserInfo6 = [modelCopy removedUserInfo];
    v61 = [v58 homeAccessCodeValueWithStringValue:accessCode6 removedUserInfo:removedUserInfo6];
    v65 = v61;
    v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v65 count:1];
    [delegate accessCodeDataManager:v50 didAddHomeAccessCodes:v62 addedByUserUUID:0 flow:flowCopy];
  }

LABEL_17:

  v48 = *MEMORY[0x277D85DE8];
}

- (void)handleRemovedHomeAccessCodeModel:(id)model message:(id)message flow:(id)flow
{
  v47 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  flowCopy = flow;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v42 = v14;
    v43 = 2112;
    v44 = uUID;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling removed HMDHomeAccessCodeModel", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  context = [(HMDAccessCodeDataManager *)selfCopy context];
  home = [context home];

  if (home)
  {
    v18 = [HMDAccessCodeDataManager _accessCodeInHome:home forHomeAccessCodeModel:modelCopy];
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
    if (v18)
    {
      if (v22)
      {
        v23 = HMFGetLogIdentifier();
        uUID2 = [flowCopy UUID];
        *buf = 138543874;
        v42 = v23;
        v43 = 2112;
        v44 = uUID2;
        v45 = 2112;
        v46 = home;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] HMDHomeAccessCodeModel was removed. Removing value with label on HMDHome: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v19);
      labelsByAccessCode = [home labelsByAccessCode];
      [labelsByAccessCode removeObjectForKey:v18];

      transactionResult = [messageCopy transactionResult];
      [transactionResult markChanged];

      [messageCopy respondWithSuccess];
      delegate = [(HMDAccessCodeDataManager *)v20 delegate];
      v28 = MEMORY[0x277CD1A68];
      label = [modelCopy label];
      v30 = [v28 homeAccessCodeValueWithStringValue:v18 label:label];
      v40 = v30;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
      [delegate accessCodeDataManager:v20 didRemoveHomeAccessCodes:v31 removedByUserUUID:0 flow:flowCopy];
    }

    else
    {
      if (v22)
      {
        v37 = HMFGetLogIdentifier();
        uUID3 = [flowCopy UUID];
        *buf = 138543618;
        v42 = v37;
        v43 = 2112;
        v44 = uUID3;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Did not find an access code for this model on the home, so we have nothing to remove.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      [messageCopy respondWithSuccess];
      v18 = 0;
    }
  }

  else
  {
    v32 = objc_autoreleasePoolPush();
    v33 = selfCopy;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      uUID4 = [flowCopy UUID];
      *buf = 138543618;
      v42 = v35;
      v43 = 2112;
      v44 = uUID4;
      _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not handling updated HomeAccessCodeModel because home reference was nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    v18 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
    [messageCopy respondWithError:v18];
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)handleRemovedUserAccessCodeModel:(id)model forUser:(id)user message:(id)message flow:(id)flow
{
  v38 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  userCopy = user;
  messageCopy = message;
  flowCopy = flow;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543874;
    v33 = v17;
    v34 = 2112;
    v35 = uUID;
    v36 = 2112;
    v37 = userCopy;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] HMDUserAccessCodeModel was removed. Removing value on HMDUser: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  accessCode = [userCopy accessCode];
  [userCopy setAccessCode:0];
  changedByUserUUID = [modelCopy changedByUserUUID];
  [userCopy setAccessCodeChangedByUserUUID:changedByUserUUID];

  transactionResult = [messageCopy transactionResult];
  [transactionResult markChanged];

  [messageCopy respondWithSuccess];
  delegate = [(HMDAccessCodeDataManager *)selfCopy delegate];
  v22 = MEMORY[0x277CD1A68];
  uuid = [userCopy uuid];
  v24 = [v22 homeAccessCodeValueWithStringValue:accessCode userUUID:uuid];
  v31 = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  [modelCopy changedByUserUUID];
  v26 = modelCopy;
  v28 = v27 = flowCopy;
  [delegate accessCodeDataManager:selfCopy didRemoveHomeAccessCodes:v25 removedByUserUUID:v28 flow:v27];

  v29 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedHomeAccessCodeModel:(id)model message:(id)message flow:(id)flow
{
  v74 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  flowCopy = flow;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v69 = v14;
    v70 = 2112;
    v71 = uUID;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling updated HMDHomeAccessCodeModel", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  context = [(HMDAccessCodeDataManager *)selfCopy context];
  home = [context home];

  if (!home)
  {
    v44 = objc_autoreleasePoolPush();
    v45 = selfCopy;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v69 = v47;
      v70 = 2112;
      v71 = uUID2;
      v49 = "%{public}@[Flow: %@] Not handling updated HomeAccessCodeModel because home reference was nil";
      goto LABEL_16;
    }

LABEL_17:

    objc_autoreleasePoolPop(v44);
    delegate = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
    [messageCopy respondWithError:delegate];
    goto LABEL_18;
  }

  value = [modelCopy value];
  if (!value || (v19 = value, [modelCopy label], v20 = objc_claimAutoreleasedReturnValue(), v20, v19, !v20))
  {
    v44 = objc_autoreleasePoolPush();
    v45 = selfCopy;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v69 = v47;
      v70 = 2112;
      v71 = uUID2;
      v49 = "%{public}@[Flow: %@] Home access code model has a nil property but should not";
LABEL_16:
      _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_ERROR, v49, buf, 0x16u);

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  delegate = [(HMDAccessCodeDataManager *)selfCopy delegate];
  labelsByAccessCode = [home labelsByAccessCode];
  value2 = [modelCopy value];
  v24 = [labelsByAccessCode objectForKeyedSubscript:value2];

  if (v24)
  {
    v65 = flowCopy;
    labelsByAccessCode2 = [home labelsByAccessCode];
    value3 = [modelCopy value];
    v27 = [labelsByAccessCode2 objectForKeyedSubscript:value3];
    label = [modelCopy label];
    v29 = [v27 isEqualToString:label];

    if ((v29 & 1) == 0)
    {
      v30 = objc_autoreleasePoolPush();
      v31 = selfCopy;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        uUID3 = [v65 UUID];
        *buf = 138543874;
        v69 = v33;
        v70 = 2112;
        v71 = uUID3;
        v72 = 2112;
        v73 = home;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] HMDHomeAccessCodeModel label was updated on HMDHome: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v30);
      label2 = [modelCopy label];
      labelsByAccessCode3 = [home labelsByAccessCode];
      value4 = [modelCopy value];
      [labelsByAccessCode3 setObject:label2 forKeyedSubscript:value4];

      transactionResult = [messageCopy transactionResult];
      [transactionResult markChanged];

      v39 = MEMORY[0x277CD1A68];
      value5 = [modelCopy value];
      label3 = [modelCopy label];
      v42 = [v39 homeAccessCodeValueWithStringValue:value5 label:label3];
      v66 = v42;
      v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];
      [delegate accessCodeDataManager:v31 didUpdateHomeAccessCodes:v43 changedByUserUUID:0 flow:v65];
    }

    [messageCopy respondWithSuccess];
    flowCopy = v65;
  }

  else
  {
    v51 = objc_autoreleasePoolPush();
    v52 = selfCopy;
    v53 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      v54 = HMFGetLogIdentifier();
      uUID4 = [flowCopy UUID];
      *buf = 138543874;
      v69 = v54;
      v70 = 2112;
      v71 = uUID4;
      v72 = 2112;
      v73 = home;
      _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] New HMDHomeAccessCodeModel was added. Setting label for value on HMDHome: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v51);
    label4 = [modelCopy label];
    labelsByAccessCode4 = [home labelsByAccessCode];
    value6 = [modelCopy value];
    [labelsByAccessCode4 setObject:label4 forKeyedSubscript:value6];

    transactionResult2 = [messageCopy transactionResult];
    [transactionResult2 markChanged];

    [messageCopy respondWithSuccess];
    v60 = MEMORY[0x277CD1A68];
    value7 = [modelCopy value];
    label5 = [modelCopy label];
    v63 = [v60 homeAccessCodeValueWithStringValue:value7 label:label5];
    v67 = v63;
    v64 = [MEMORY[0x277CBEA60] arrayWithObjects:&v67 count:1];
    [delegate accessCodeDataManager:v52 didAddHomeAccessCodes:v64 addedByUserUUID:0 flow:flowCopy];
  }

LABEL_18:

  v50 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedUserAccessCodeModel:(id)model forUser:(id)user message:(id)message flow:(id)flow
{
  v84 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  userCopy = user;
  messageCopy = message;
  flowCopy = flow;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    changedByUserUUID = [modelCopy changedByUserUUID];
    *buf = 138544130;
    v77 = v17;
    v78 = 2112;
    v79 = uUID;
    v80 = 2112;
    v81 = userCopy;
    v82 = 2112;
    v83 = changedByUserUUID;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] HMDUserAccessCodeModel was updated. Updating value on HMDUser: %@ changedByUserUUID: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  delegate = [(HMDAccessCodeDataManager *)selfCopy delegate];
  accessCode = [userCopy accessCode];
  value = [modelCopy value];
  v23 = [accessCode isEqualToString:value];

  if (v23)
  {
    [messageCopy respondWithSuccess];
  }

  else
  {
    accessCode2 = [userCopy accessCode];

    if (accessCode2)
    {
      v71 = flowCopy;
      v25 = delegate;
      value2 = [modelCopy value];

      v27 = objc_autoreleasePoolPush();
      v28 = selfCopy;
      v29 = HMFGetOSLogHandle();
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_INFO);
      if (value2)
      {
        if (v30)
        {
          v31 = HMFGetLogIdentifier();
          uUID2 = [v71 UUID];
          changedByUserUUID2 = [modelCopy changedByUserUUID];
          *buf = 138544130;
          v77 = v31;
          v78 = 2112;
          v79 = uUID2;
          v80 = 2112;
          v81 = userCopy;
          v82 = 2112;
          v83 = changedByUserUUID2;
          _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] HMDUserAccessCodeModel value was updated on HMDUser: %@ changedByUserUUID: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v27);
        value3 = [modelCopy value];
        [userCopy setAccessCode:value3];

        changedByUserUUID3 = [modelCopy changedByUserUUID];
        [userCopy setAccessCodeChangedByUserUUID:changedByUserUUID3];

        transactionResult = [messageCopy transactionResult];
        [transactionResult markChanged];

        [messageCopy respondWithSuccess];
        v37 = MEMORY[0x277CD1A68];
        value4 = [modelCopy value];
        uuid = [userCopy uuid];
        v40 = [v37 homeAccessCodeValueWithStringValue:value4 userUUID:uuid];
        v74 = v40;
        v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v74 count:1];
        changedByUserUUID4 = [modelCopy changedByUserUUID];
        v43 = v28;
        v44 = v71;
        [v25 accessCodeDataManager:v43 didUpdateHomeAccessCodes:v41 changedByUserUUID:changedByUserUUID4 flow:v71];
      }

      else
      {
        if (v30)
        {
          v62 = HMFGetLogIdentifier();
          uUID3 = [v71 UUID];
          changedByUserUUID5 = [modelCopy changedByUserUUID];
          *buf = 138544130;
          v77 = v62;
          v78 = 2112;
          v79 = uUID3;
          v80 = 2112;
          v81 = userCopy;
          v82 = 2112;
          v83 = changedByUserUUID5;
          _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] HMDUserAccessCodeModel value was removed on HMDUser: %@ removedByUserUUID: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v27);
        value5 = [modelCopy value];
        [userCopy setAccessCode:value5];

        changedByUserUUID6 = [modelCopy changedByUserUUID];
        [userCopy setAccessCodeChangedByUserUUID:changedByUserUUID6];

        transactionResult2 = [messageCopy transactionResult];
        [transactionResult2 markChanged];

        [messageCopy respondWithSuccess];
        v68 = MEMORY[0x277CD1A68];
        value4 = [modelCopy value];
        uuid = [userCopy uuid];
        v40 = [v68 homeAccessCodeValueWithStringValue:value4 userUUID:uuid];
        v73 = v40;
        v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v73 count:1];
        changedByUserUUID4 = [modelCopy changedByUserUUID];
        v69 = v28;
        v44 = v71;
        [v25 accessCodeDataManager:v69 didRemoveHomeAccessCodes:v41 removedByUserUUID:changedByUserUUID4 flow:v71];
      }

      delegate = v25;
      flowCopy = v44;
    }

    else
    {
      v72 = delegate;
      v45 = objc_autoreleasePoolPush();
      v46 = selfCopy;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = HMFGetLogIdentifier();
        uUID4 = [flowCopy UUID];
        changedByUserUUID7 = [modelCopy changedByUserUUID];
        *buf = 138544130;
        v77 = v48;
        v78 = 2112;
        v79 = uUID4;
        v80 = 2112;
        v81 = userCopy;
        v82 = 2112;
        v83 = changedByUserUUID7;
        _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] New HMDUserAccessCodeModel was added. Setting value on HMDUser: %@ changedByUserUUID: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v45);
      value6 = [modelCopy value];
      [userCopy setAccessCode:value6];

      changedByUserUUID8 = [modelCopy changedByUserUUID];
      [userCopy setAccessCodeChangedByUserUUID:changedByUserUUID8];

      transactionResult3 = [messageCopy transactionResult];
      [transactionResult3 markChanged];

      [messageCopy respondWithSuccess];
      v54 = MEMORY[0x277CD1A68];
      value4 = [modelCopy value];
      uuid2 = [userCopy uuid];
      v56 = [v54 homeAccessCodeValueWithStringValue:value4 userUUID:uuid2];
      v75 = v56;
      v57 = [MEMORY[0x277CBEA60] arrayWithObjects:&v75 count:1];
      changedByUserUUID9 = [modelCopy changedByUserUUID];
      v59 = v46;
      v60 = flowCopy;
      v61 = changedByUserUUID9;
      delegate = v72;
      [v72 accessCodeDataManager:v59 didAddHomeAccessCodes:v57 addedByUserUUID:changedByUserUUID9 flow:v60];

      flowCopy = v60;
    }
  }

  v70 = *MEMORY[0x277D85DE8];
}

- (id)removeHMDRemovedUserAccessCodeModel:(id)model flow:(id)flow
{
  v48 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  flowCopy = flow;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v45 = v13;
    v46 = 2112;
    v47 = uUID;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing HMDRemovedUserAccessCodeModel", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  context2 = [(HMDAccessCodeDataManager *)selfCopy context];
  home = [context2 home];
  backingStore = [home backingStore];

  if (backingStore)
  {
    v18 = objc_alloc_init(MEMORY[0x277D2C900]);
    v19 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v20 = [backingStore transaction:@"Remove HMDRemovedUserAccessCodeModel" options:v19];

    v21 = MEMORY[0x277D0F818];
    v42 = *MEMORY[0x277D0F1C8];
    v22 = HMFEncodedRootObject();
    v43 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v24 = [v21 messageWithName:@"AccessCodeUpdate" messagePayload:v23];

    [modelCopy setObjectChangeType:3];
    [v20 add:modelCopy withMessage:v24];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __69__HMDAccessCodeDataManager_removeHMDRemovedUserAccessCodeModel_flow___block_invoke;
    v39[3] = &unk_279734D88;
    v39[4] = selfCopy;
    v40 = flowCopy;
    v41 = v18;
    v25 = v18;
    [v20 run:v39];
    v26 = MEMORY[0x277D2C938];
    context3 = [(HMDAccessCodeDataManager *)selfCopy context];
    workQueue2 = [context3 workQueue];
    v29 = [v26 schedulerWithDispatchQueue:workQueue2];
    v30 = [v25 reschedule:v29];
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    v32 = selfCopy;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v45 = v34;
      v46 = 2112;
      v47 = uUID2;
      _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Cannot remove HMDRemovedUserAccessCodeModel because self.context.home.backingStore is nil", buf, 0x16u);
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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to run transaction to update model with error: %@", &v15, 0x20u);
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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully updated model", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [a1[6] finishWithNoResult];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)addOrUpdateHMDRemovedUserAccessCodeModel:(id)model flow:(id)flow
{
  v48 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  flowCopy = flow;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v45 = v13;
    v46 = 2112;
    v47 = uUID;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Adding or updating HMDRemovedUserAccessCodeModel", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  context2 = [(HMDAccessCodeDataManager *)selfCopy context];
  home = [context2 home];
  backingStore = [home backingStore];

  if (backingStore)
  {
    v18 = objc_alloc_init(MEMORY[0x277D2C900]);
    v19 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v20 = [backingStore transaction:@"Update HMDRemovedUserAccessCodeModel" options:v19];

    v21 = MEMORY[0x277D0F818];
    v42 = *MEMORY[0x277D0F1C8];
    v22 = HMFEncodedRootObject();
    v43 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v24 = [v21 messageWithName:@"AccessCodeUpdate" messagePayload:v23];

    [v20 add:modelCopy withMessage:v24];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __74__HMDAccessCodeDataManager_addOrUpdateHMDRemovedUserAccessCodeModel_flow___block_invoke;
    v39[3] = &unk_279734D88;
    v39[4] = selfCopy;
    v40 = flowCopy;
    v41 = v18;
    v25 = v18;
    [v20 run:v39];
    v26 = MEMORY[0x277D2C938];
    context3 = [(HMDAccessCodeDataManager *)selfCopy context];
    workQueue2 = [context3 workQueue];
    v29 = [v26 schedulerWithDispatchQueue:workQueue2];
    v30 = [v25 reschedule:v29];
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    v32 = selfCopy;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v45 = v34;
      v46 = 2112;
      v47 = uUID2;
      _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Cannot add or update HMDRemovedUserAccessCodeModel, because self.context.home.backingStore is nil", buf, 0x16u);
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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to run transaction to update model, with error: %@", &v15, 0x20u);
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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully updated model", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [a1[6] finishWithNoResult];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)removeHMDRemovedUserAccessCodeWithCode:(id)code removedUserInfo:(id)info flow:(id)flow
{
  v39 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  infoCopy = info;
  flowCopy = flow;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    v33 = 138543874;
    v34 = v16;
    v35 = 2112;
    v36 = uUID;
    v37 = 2112;
    v38 = infoCopy;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing HMDRemovedUserAccessCode with HMRemovedUserInfo: %@", &v33, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  context2 = [(HMDAccessCodeDataManager *)selfCopy context];
  home = [context2 home];

  if (home)
  {
    v20 = [HMDRemovedUserAccessCodeModel alloc];
    uuid = [home uuid];
    v22 = [(HMDRemovedUserAccessCodeModel *)v20 initWithRemovedUserInfo:infoCopy accessCode:codeCopy homeUUID:uuid];

    v23 = [(HMDAccessCodeDataManager *)selfCopy removeHMDRemovedUserAccessCodeModel:v22 flow:flowCopy];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      v33 = 138543618;
      v34 = v27;
      v35 = 2112;
      v36 = uUID2;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not removing HMDRemovedUserAccessCode because home reference was nil", &v33, 0x16u);
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

- (id)saveRemovedUserAccessCode:(id)code withRemovedUserInfo:(id)info flow:(id)flow
{
  v39 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  infoCopy = info;
  flowCopy = flow;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    v33 = 138543874;
    v34 = v16;
    v35 = 2112;
    v36 = uUID;
    v37 = 2112;
    v38 = infoCopy;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Saving removed user access code with removed user info: %@", &v33, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  context2 = [(HMDAccessCodeDataManager *)selfCopy context];
  home = [context2 home];

  if (home)
  {
    v20 = [HMDRemovedUserAccessCodeModel alloc];
    uuid = [home uuid];
    v22 = [(HMDRemovedUserAccessCodeModel *)v20 initWithRemovedUserInfo:infoCopy accessCode:codeCopy homeUUID:uuid];

    v23 = [(HMDAccessCodeDataManager *)selfCopy addOrUpdateHMDRemovedUserAccessCodeModel:v22 flow:flowCopy];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      v33 = 138543618;
      v34 = v27;
      v35 = 2112;
      v36 = uUID2;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not saving removed user access code because home reference was nil", &v33, 0x16u);
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

- (id)removeHomeAccessCodeModel:(id)model flow:(id)flow
{
  v48 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  flowCopy = flow;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v45 = v13;
    v46 = 2112;
    v47 = uUID;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing HMDHomeAccessCodeModel", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  context2 = [(HMDAccessCodeDataManager *)selfCopy context];
  home = [context2 home];
  backingStore = [home backingStore];

  if (backingStore)
  {
    v18 = objc_alloc_init(MEMORY[0x277D2C900]);
    v19 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v20 = [backingStore transaction:@"Remove HMDHomeAccessCodeModel" options:v19];

    v21 = MEMORY[0x277D0F818];
    v42 = *MEMORY[0x277D0F1C8];
    v22 = HMFEncodedRootObject();
    v43 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v24 = [v21 messageWithName:@"AccessCodeUpdate" messagePayload:v23];

    [modelCopy setObjectChangeType:3];
    [v20 add:modelCopy withMessage:v24];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __59__HMDAccessCodeDataManager_removeHomeAccessCodeModel_flow___block_invoke;
    v39[3] = &unk_279734D88;
    v39[4] = selfCopy;
    v40 = flowCopy;
    v41 = v18;
    v25 = v18;
    [v20 run:v39];
    v26 = MEMORY[0x277D2C938];
    context3 = [(HMDAccessCodeDataManager *)selfCopy context];
    workQueue2 = [context3 workQueue];
    v29 = [v26 schedulerWithDispatchQueue:workQueue2];
    v30 = [v25 reschedule:v29];
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    v32 = selfCopy;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v45 = v34;
      v46 = 2112;
      v47 = uUID2;
      _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Cannot remove HMDHomeAccessCodeModel because self.context.home.backingStore is nil", buf, 0x16u);
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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to run transaction to update model with error: %@", &v15, 0x20u);
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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully updated model", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [a1[6] finishWithNoResult];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)addOrUpdateHomeAccessCodeModel:(id)model flow:(id)flow
{
  v48 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  flowCopy = flow;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v45 = v13;
    v46 = 2112;
    v47 = uUID;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Adding or updating HMDHomeAccessCodeModel", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  context2 = [(HMDAccessCodeDataManager *)selfCopy context];
  home = [context2 home];
  backingStore = [home backingStore];

  if (backingStore)
  {
    v18 = objc_alloc_init(MEMORY[0x277D2C900]);
    v19 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v20 = [backingStore transaction:@"Update HMDHomeAccessCodeModel" options:v19];

    v21 = MEMORY[0x277D0F818];
    v42 = *MEMORY[0x277D0F1C8];
    v22 = HMFEncodedRootObject();
    v43 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v24 = [v21 messageWithName:@"AccessCodeUpdate" messagePayload:v23];

    [v20 add:modelCopy withMessage:v24];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __64__HMDAccessCodeDataManager_addOrUpdateHomeAccessCodeModel_flow___block_invoke;
    v39[3] = &unk_279734D88;
    v39[4] = selfCopy;
    v40 = flowCopy;
    v41 = v18;
    v25 = v18;
    [v20 run:v39];
    v26 = MEMORY[0x277D2C938];
    context3 = [(HMDAccessCodeDataManager *)selfCopy context];
    workQueue2 = [context3 workQueue];
    v29 = [v26 schedulerWithDispatchQueue:workQueue2];
    v30 = [v25 reschedule:v29];
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    v32 = selfCopy;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v45 = v34;
      v46 = 2112;
      v47 = uUID2;
      _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Cannot add or update HMDHomeAccessCodeModel, because self.context.home.backingStore is nil", buf, 0x16u);
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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to run transaction to update model, with error: %@", &v15, 0x20u);
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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully updated model", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [a1[6] finishWithNoResult];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)removeUserAccessCodeModel:(id)model flow:(id)flow
{
  v51 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  flowCopy = flow;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    changedByUserUUID = [modelCopy changedByUserUUID];
    *buf = 138543874;
    v46 = v13;
    v47 = 2112;
    v48 = uUID;
    v49 = 2112;
    v50 = changedByUserUUID;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing HMDUserAccessCodeModel, removedByUserUUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  context2 = [(HMDAccessCodeDataManager *)selfCopy context];
  home = [context2 home];
  backingStore = [home backingStore];

  if (backingStore)
  {
    v19 = objc_alloc_init(MEMORY[0x277D2C900]);
    v20 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v21 = [backingStore transaction:@"Remove HMDUserAccessCodeModel" options:v20];

    v22 = MEMORY[0x277D0F818];
    v43 = *MEMORY[0x277D0F1C8];
    v23 = HMFEncodedRootObject();
    v44 = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v25 = [v22 messageWithName:@"AccessCodeUpdate" messagePayload:v24];

    [modelCopy setObjectChangeType:2];
    [v21 add:modelCopy withMessage:v25];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __59__HMDAccessCodeDataManager_removeUserAccessCodeModel_flow___block_invoke;
    v40[3] = &unk_279734D88;
    v40[4] = selfCopy;
    v41 = flowCopy;
    v42 = v19;
    v26 = v19;
    [v21 run:v40];
    v27 = MEMORY[0x277D2C938];
    context3 = [(HMDAccessCodeDataManager *)selfCopy context];
    workQueue2 = [context3 workQueue];
    v30 = [v27 schedulerWithDispatchQueue:workQueue2];
    v31 = [v26 reschedule:v30];
  }

  else
  {
    v32 = objc_autoreleasePoolPush();
    v33 = selfCopy;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v46 = v35;
      v47 = 2112;
      v48 = uUID2;
      _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Cannot remove HMDUserAccessCodeModel because self.context.home.backingStore is nil", buf, 0x16u);
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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to run transaction to update model, error: %@", &v15, 0x20u);
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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully updated model", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [a1[6] finishWithNoResult];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)addOrUpdateUserAccessCodeModel:(id)model flow:(id)flow
{
  v48 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  flowCopy = flow;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v45 = v13;
    v46 = 2112;
    v47 = uUID;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Adding or updating HMDUserAccessCodeModel", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  context2 = [(HMDAccessCodeDataManager *)selfCopy context];
  home = [context2 home];
  backingStore = [home backingStore];

  if (backingStore)
  {
    v18 = objc_alloc_init(MEMORY[0x277D2C900]);
    v19 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v20 = [backingStore transaction:@"Update HMDUserAccessCodeModel" options:v19];

    v21 = MEMORY[0x277D0F818];
    v42 = *MEMORY[0x277D0F1C8];
    v22 = HMFEncodedRootObject();
    v43 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v24 = [v21 messageWithName:@"AccessCodeUpdate" messagePayload:v23];

    [v20 add:modelCopy withMessage:v24];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __64__HMDAccessCodeDataManager_addOrUpdateUserAccessCodeModel_flow___block_invoke;
    v39[3] = &unk_279734D88;
    v39[4] = selfCopy;
    v40 = flowCopy;
    v41 = v18;
    v25 = v18;
    [v20 run:v39];
    v26 = MEMORY[0x277D2C938];
    context3 = [(HMDAccessCodeDataManager *)selfCopy context];
    workQueue2 = [context3 workQueue];
    v29 = [v26 schedulerWithDispatchQueue:workQueue2];
    v30 = [v25 reschedule:v29];
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    v32 = selfCopy;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v45 = v34;
      v46 = 2112;
      v47 = uUID2;
      _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Cannot add or update HMDUserAccessCodeModel because self.context.home.backingStore is nil", buf, 0x16u);
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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to run transaction to update model with error: %@", &v15, 0x20u);
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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully updated model", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [a1[6] finishWithNoResult];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (NSSet)accessCodeValuesWithRemovedUserInfo
{
  v18 = *MEMORY[0x277D85DE8];
  context = [(HMDAccessCodeDataManager *)self context];
  home = [context home];

  if (home)
  {
    v5 = MEMORY[0x277CBEB98];
    removedUserInfoByAccessCode = [home removedUserInfoByAccessCode];
    allKeys = [removedUserInfoByAccessCode allKeys];
    v8 = [allKeys na_map:&__block_literal_global_44_143063];
    v9 = [v5 setWithArray:v8];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cannot find access code values with removed user info because home reference was nil", &v16, 0xCu);
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
  context = [(HMDAccessCodeDataManager *)self context];
  home = [context home];

  if (home)
  {
    v5 = MEMORY[0x277CBEB98];
    users = [home users];
    v7 = [users na_map:&__block_literal_global_41_143068];
    v8 = [v5 setWithArray:v7];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch user access code values with simple labels because home reference was nil", &v15, 0xCu);
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

- (id)userUUIDForAccessCode:(id)code
{
  v20 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  context = [(HMDAccessCodeDataManager *)self context];
  home = [context home];

  if (home)
  {
    users = [home users];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __50__HMDAccessCodeDataManager_userUUIDForAccessCode___block_invoke;
    v16[3] = &unk_27972E540;
    v17 = codeCopy;
    v8 = [users na_firstObjectPassingTest:v16];
    uuid = [v8 uuid];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cannot find access code with simple label because home reference was nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    uuid = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return uuid;
}

uint64_t __50__HMDAccessCodeDataManager_userUUIDForAccessCode___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 accessCode];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)simpleLabelForAccessCode:(id)code
{
  v17 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  context = [(HMDAccessCodeDataManager *)self context];
  home = [context home];

  if (home)
  {
    labelsByAccessCode = [home labelsByAccessCode];
    v8 = [labelsByAccessCode objectForKeyedSubscript:codeCopy];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Cannot find access code with simple label because home reference was nil", &v15, 0xCu);
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
  context = [(HMDAccessCodeDataManager *)self context];
  home = [context home];

  if (home)
  {
    v5 = MEMORY[0x277CBEB98];
    labelsByAccessCode = [home labelsByAccessCode];
    allKeys = [labelsByAccessCode allKeys];
    v8 = [allKeys na_map:&__block_literal_global_38_143074];
    v9 = [v5 setWithArray:v8];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cannot find access code values with simple label because home reference was nil", &v16, 0xCu);
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

- (id)_removeHMDRemovedUserAccessCodeWithAccessCode:(id)code flow:(id)flow
{
  v39 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  flowCopy = flow;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    v35 = 138543618;
    v36 = v13;
    v37 = 2112;
    v38 = uUID;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing HMDRemovedUserAccessCode with specified value", &v35, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  context2 = [(HMDAccessCodeDataManager *)selfCopy context];
  home = [context2 home];

  if (!home)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      v35 = 138543618;
      v36 = v25;
      v37 = 2112;
      v38 = uUID2;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not Removing HMDRemovedUserAccessCode because home reference was nil", &v35, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v27 = MEMORY[0x277D2C900];
    removedUserInfoByAccessCode2 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    futureWithNoResult = [v27 futureWithError:removedUserInfoByAccessCode2];
    goto LABEL_9;
  }

  removedUserInfoByAccessCode = [home removedUserInfoByAccessCode];
  v18 = [removedUserInfoByAccessCode objectForKeyedSubscript:codeCopy];

  if (v18)
  {
    removedUserInfoByAccessCode2 = [home removedUserInfoByAccessCode];
    v20 = [removedUserInfoByAccessCode2 objectForKeyedSubscript:codeCopy];
    futureWithNoResult = [(HMDAccessCodeDataManager *)selfCopy removeHMDRemovedUserAccessCodeWithCode:codeCopy removedUserInfo:v20 flow:flowCopy];

LABEL_9:
    goto LABEL_13;
  }

  v28 = objc_autoreleasePoolPush();
  v29 = selfCopy;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = HMFGetLogIdentifier();
    uUID3 = [flowCopy UUID];
    v35 = 138543618;
    v36 = v31;
    v37 = 2112;
    v38 = uUID3;
    _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Did not find HMDRemovedUserAccessCode with the specified value", &v35, 0x16u);
  }

  objc_autoreleasePoolPop(v28);
  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_13:

  v33 = *MEMORY[0x277D85DE8];

  return futureWithNoResult;
}

- (void)removeHMDRemovedUserAccessCodeWithAccessCode:(id)code flow:(id)flow
{
  codeCopy = code;
  flowCopy = flow;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HMDAccessCodeDataManager_removeHMDRemovedUserAccessCodeWithAccessCode_flow___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v13 = codeCopy;
  v14 = flowCopy;
  v10 = flowCopy;
  v11 = codeCopy;
  dispatch_async(workQueue, block);
}

- (void)_cleanUpOldRemovedUserDataWithReason:(id)reason
{
  v30 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    *buf = 138543874;
    v25 = v11;
    v26 = 2112;
    v27 = uUID;
    v28 = 2112;
    v29 = reasonCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Pin Codes}] Cleaning up old removedUserInfo with reason: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  context2 = [(HMDAccessCodeDataManager *)selfCopy context];
  home = [context2 home];

  if (home)
  {
    removedUserInfoByAccessCode = [home removedUserInfoByAccessCode];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __65__HMDAccessCodeDataManager__cleanUpOldRemovedUserDataWithReason___block_invoke;
    v22[3] = &unk_27972E5B0;
    v22[4] = selfCopy;
    v23 = internalOnlyInitializer;
    [removedUserInfoByAccessCode na_each:v22];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      uUID2 = [internalOnlyInitializer UUID];
      *buf = 138543618;
      v25 = v19;
      v26 = 2112;
      v27 = uUID2;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not cleaning up old removed user data because home reference was nil", buf, 0x16u);
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

- (id)_removeSimpleLabelAccessCodeValue:(id)value flow:(id)flow
{
  v32 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  flowCopy = flow;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  context2 = [(HMDAccessCodeDataManager *)self context];
  home = [context2 home];

  if (home)
  {
    labelsByAccessCode = [home labelsByAccessCode];
    stringValue = [valueCopy stringValue];
    v14 = [labelsByAccessCode objectForKeyedSubscript:stringValue];

    v15 = [HMDHomeAccessCodeModel alloc];
    uuid = [home uuid];
    stringValue2 = [valueCopy stringValue];
    v18 = [(HMDHomeAccessCodeModel *)v15 initWithHomeUUID:uuid value:stringValue2 label:v14];

    v19 = [(HMDAccessCodeDataManager *)self removeHomeAccessCodeModel:v18 flow:flowCopy];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      v28 = 138543618;
      v29 = v23;
      v30 = 2112;
      v31 = uUID;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not removing access code value because home reference was nil", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v25 = MEMORY[0x277D2C900];
    v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v19 = [v25 futureWithError:v14];
  }

  v26 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_setSimpleLabel:(id)label forAccessCodeValue:(id)value flow:(id)flow
{
  v36 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  valueCopy = value;
  flowCopy = flow;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  context2 = [(HMDAccessCodeDataManager *)self context];
  home = [context2 home];

  if (home)
  {
    v15 = [HMDHomeAccessCodeModel alloc];
    uuid = [home uuid];
    stringValue = [valueCopy stringValue];
    v18 = [(HMDHomeAccessCodeModel *)v15 initWithHomeUUID:uuid value:stringValue label:labelCopy];

    v19 = [(HMDAccessCodeDataManager *)self addOrUpdateHomeAccessCodeModel:v18 flow:flowCopy];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __68__HMDAccessCodeDataManager__setSimpleLabel_forAccessCodeValue_flow___block_invoke;
    v29[3] = &unk_27972E568;
    v29[4] = self;
    v30 = valueCopy;
    v31 = flowCopy;
    v20 = [v19 addSuccessBlock:v29];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      *buf = 138543618;
      v33 = v24;
      v34 = 2112;
      v35 = uUID;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not setting simple label for access code value because home reference was nil", buf, 0x16u);
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

- (void)_messageUser:(id)user thatTheirAccessCodeWasChangedWithType:(unint64_t)type flow:(id)flow
{
  v39 = *MEMORY[0x277D85DE8];
  userCopy = user;
  flowCopy = flow;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    uuid = [userCopy uuid];
    uUIDString = [uuid UUIDString];
    *buf = 138544130;
    v32 = v13;
    v33 = 2112;
    v34 = uUID;
    v35 = 2112;
    v36 = uUIDString;
    v37 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Messaging user that their access code was changed. user: %@, changeType: %lu", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v10);
  v17 = [HMDRemoteAccountMessageDestination alloc];
  delegate = [(HMDAccessCodeDataManager *)selfCopy delegate];
  messageTargetUUID = [delegate messageTargetUUID];
  accountHandle = [userCopy accountHandle];
  v21 = [(HMDRemoteAccountMessageDestination *)v17 initWithTarget:messageTargetUUID handle:accountHandle multicast:1];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{type, @"HMDAccessCodeManagerMessageKeyUserAccessCodeChangeType"}];
  v30[0] = v22;
  v29[1] = *MEMORY[0x277D0F1C8];
  v23 = HMFEncodedRootObject();
  v30[1] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];

  v25 = [HMDRemoteMessage secureMessageWithName:@"HMDAccessCodeManagerUserAccessCodeDidChangeMessage" qualityOfService:33 destination:v21 messagePayload:v24];
  context = [(HMDAccessCodeDataManager *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v25];

  v28 = *MEMORY[0x277D85DE8];
}

- (id)_removeUserAccessCodeValue:(id)value removedByUserUUID:(id)d flow:(id)flow
{
  v41 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  dCopy = d;
  flowCopy = flow;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  context2 = [(HMDAccessCodeDataManager *)self context];
  home = [context2 home];

  if (home)
  {
    stringValue = [valueCopy stringValue];
    v16 = [HMDAccessCodeDataManager userWithAccessCode:stringValue inHome:home];

    if (v16)
    {
      v17 = [HMDUserAccessCodeModel alloc];
      uuid = [v16 uuid];
      v19 = [(HMDUserAccessCodeModel *)v17 initWithUserUUID:uuid];

      [(HMDUserAccessCodeModel *)v19 setValue:0];
      [(HMDUserAccessCodeModel *)v19 setChangedByUserUUID:dCopy];
      v20 = [(HMDAccessCodeDataManager *)self removeUserAccessCodeModel:v19 flow:flowCopy];
      v21 = [v20 addSuccessBlock:&__block_literal_global_29_143092];
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      selfCopy = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        uUID = [flowCopy UUID];
        v37 = 138543618;
        v38 = v31;
        v39 = 2112;
        v40 = uUID;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not removing access code value because couldn't find any user with that access code.", &v37, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      v33 = MEMORY[0x277D2C900];
      v34 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      v21 = [v33 futureWithError:v34];

      v16 = 0;
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      v37 = 138543618;
      v38 = v25;
      v39 = 2112;
      v40 = uUID2;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not removing access code value because home reference was nil", &v37, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v27 = MEMORY[0x277D2C900];
    v16 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v21 = [v27 futureWithError:v16];
  }

  v35 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)_setUserWithUUID:(id)d forAccessCodeValue:(id)value changedByUserUUID:(id)iD flow:(id)flow
{
  v54 = *MEMORY[0x277D85DE8];
  dCopy = d;
  valueCopy = value;
  iDCopy = iD;
  flowCopy = flow;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  context2 = [(HMDAccessCodeDataManager *)self context];
  home = [context2 home];

  if (home)
  {
    users = [home users];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __87__HMDAccessCodeDataManager__setUserWithUUID_forAccessCodeValue_changedByUserUUID_flow___block_invoke;
    v46[3] = &unk_27972E540;
    v19 = dCopy;
    v47 = v19;
    v20 = [users na_firstObjectPassingTest:v46];

    if (v20)
    {
      v21 = [[HMDUserAccessCodeModel alloc] initWithUserUUID:v19];
      stringValue = [valueCopy stringValue];
      [(HMDUserAccessCodeModel *)v21 setValue:stringValue];

      [(HMDUserAccessCodeModel *)v21 setChangedByUserUUID:iDCopy];
      v23 = [(HMDAccessCodeDataManager *)self addOrUpdateUserAccessCodeModel:v21 flow:flowCopy];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __87__HMDAccessCodeDataManager__setUserWithUUID_forAccessCodeValue_changedByUserUUID_flow___block_invoke_25;
      v43[3] = &unk_27972E568;
      v43[4] = self;
      v44 = valueCopy;
      v45 = flowCopy;
      v24 = [v23 addSuccessBlock:v43];
    }

    else
    {
      v42 = iDCopy;
      v33 = objc_autoreleasePoolPush();
      selfCopy = self;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        [flowCopy UUID];
        v37 = v41 = v33;
        *buf = 138543874;
        v49 = v36;
        v50 = 2112;
        v51 = v37;
        v52 = 2112;
        v53 = v19;
        _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not setting user UUID: %@, for access code value because we could not find a user with that UUID.", buf, 0x20u);

        v33 = v41;
      }

      objc_autoreleasePoolPop(v33);
      v38 = MEMORY[0x277D2C900];
      v21 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      v24 = [v38 futureWithError:v21];
      iDCopy = v42;
    }

    v32 = v47;
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      [flowCopy UUID];
      v30 = v29 = iDCopy;
      *buf = 138543874;
      v49 = v28;
      v50 = 2112;
      v51 = v30;
      v52 = 2112;
      v53 = dCopy;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not setting user UUID: %@, for access code value because home reference was nil", buf, 0x20u);

      iDCopy = v29;
    }

    objc_autoreleasePoolPop(v25);
    v31 = MEMORY[0x277D2C900];
    v32 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v24 = [v31 futureWithError:v32];
  }

  v39 = *MEMORY[0x277D85DE8];

  return v24;
}

uint64_t __87__HMDAccessCodeDataManager__setUserWithUUID_forAccessCodeValue_changedByUserUUID_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

void __87__HMDAccessCodeDataManager__setUserWithUUID_forAccessCodeValue_changedByUserUUID_flow___block_invoke_25(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) stringValue];
  [v2 removeHMDRemovedUserAccessCodeWithAccessCode:v3 flow:*(a1 + 48)];
}

- (void)_setUpAndStartTimer
{
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  dataCleanUpTimerFactory = [(HMDAccessCodeDataManager *)self dataCleanUpTimerFactory];
  context2 = [(HMDAccessCodeDataManager *)self context];
  [context2 dataCleanUpCheckTimerInterval];
  v7 = dataCleanUpTimerFactory[2](dataCleanUpTimerFactory, 4);
  [(HMDAccessCodeDataManager *)self setDataCleanUpTimer:v7];

  dataCleanUpTimer = [(HMDAccessCodeDataManager *)self dataCleanUpTimer];
  [dataCleanUpTimer setDelegate:self];

  context3 = [(HMDAccessCodeDataManager *)self context];
  workQueue2 = [context3 workQueue];
  dataCleanUpTimer2 = [(HMDAccessCodeDataManager *)self dataCleanUpTimer];
  [dataCleanUpTimer2 setDelegateQueue:workQueue2];

  dataCleanUpTimer3 = [(HMDAccessCodeDataManager *)self dataCleanUpTimer];
  [dataCleanUpTimer3 resume];
}

- (id)removeAllHomeAccessCodesWithFlow:(id)flow
{
  v23 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  array = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  homeAccessCodeValues = [(HMDAccessCodeDataManager *)self homeAccessCodeValues];
  v9 = [homeAccessCodeValues countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(homeAccessCodeValues);
        }

        accessCodeValue = [*(*(&v18 + 1) + 8 * i) accessCodeValue];
        v14 = [(HMDAccessCodeDataManager *)self removeHomeAccessCodeWithValue:accessCodeValue removedByUserUUID:0 flow:flowCopy];
        [array addObject:v14];
      }

      v10 = [homeAccessCodeValues countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v15 = [MEMORY[0x277D2C900] chainFutures:array];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)updateUserInformation:(id)information forHomeAccessCodeWithOldValue:(id)value newAccessCodeValue:(id)codeValue flow:(id)flow
{
  informationCopy = information;
  valueCopy = value;
  codeValueCopy = codeValue;
  flowCopy = flow;
  userUUID = [informationCopy userUUID];

  if (userUUID)
  {
    v15 = [(HMDAccessCodeDataManager *)self setUserInformation:informationCopy forHomeAccessCodeWithValue:codeValueCopy changedByUserUUID:0 flow:flowCopy];
  }

  else
  {
    simpleLabel = [informationCopy simpleLabel];

    if (simpleLabel)
    {
      v17 = [(HMDAccessCodeDataManager *)self removeHomeAccessCodeWithValue:valueCopy removedByUserUUID:0 flow:flowCopy];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __104__HMDAccessCodeDataManager_updateUserInformation_forHomeAccessCodeWithOldValue_newAccessCodeValue_flow___block_invoke;
      v20[3] = &unk_27972E518;
      v20[4] = self;
      v21 = informationCopy;
      v22 = codeValueCopy;
      v23 = flowCopy;
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

- (id)removeHomeAccessCodeWithValue:(id)value removedByUserUUID:(id)d flow:(id)flow
{
  v46 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  dCopy = d;
  flowCopy = flow;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    uUID2 = [flowCopy UUID];
    v38 = 138544130;
    v39 = v17;
    v40 = 2112;
    v41 = uUID;
    v42 = 2112;
    v43 = uUID2;
    v44 = 2112;
    v45 = dCopy;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@[ChildFlow: %@ Parent: %@] Removing home access code, removedByUserUUID: %@", &v38, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  accessCodeValuesWithSimpleLabel = [(HMDAccessCodeDataManager *)selfCopy accessCodeValuesWithSimpleLabel];
  v21 = [accessCodeValuesWithSimpleLabel containsObject:valueCopy];

  if (v21)
  {
    v22 = [(HMDAccessCodeDataManager *)selfCopy _removeSimpleLabelAccessCodeValue:valueCopy flow:internalOnlyInitializer];
LABEL_7:
    v25 = v22;
    goto LABEL_14;
  }

  accessCodeValuesWithUserLabel = [(HMDAccessCodeDataManager *)selfCopy accessCodeValuesWithUserLabel];
  v24 = [accessCodeValuesWithUserLabel containsObject:valueCopy];

  if (v24)
  {
    v22 = [(HMDAccessCodeDataManager *)selfCopy _removeUserAccessCodeValue:valueCopy removedByUserUUID:dCopy flow:internalOnlyInitializer];
    goto LABEL_7;
  }

  accessCodeValuesWithRemovedUserInfo = [(HMDAccessCodeDataManager *)selfCopy accessCodeValuesWithRemovedUserInfo];
  v27 = [accessCodeValuesWithRemovedUserInfo containsObject:valueCopy];

  if (v27)
  {
    stringValue = [valueCopy stringValue];
    v29 = [(HMDAccessCodeDataManager *)selfCopy _removeHMDRemovedUserAccessCodeWithAccessCode:stringValue flow:internalOnlyInitializer];
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = selfCopy;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      uUID3 = [internalOnlyInitializer UUID];
      v38 = 138543618;
      v39 = v33;
      v40 = 2112;
      v41 = uUID3;
      _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Did not find home access code", &v38, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v35 = MEMORY[0x277D2C900];
    stringValue = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v29 = [v35 futureWithError:stringValue];
  }

  v25 = v29;

LABEL_14:
  v36 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)setUserInformation:(id)information forHomeAccessCodeWithValue:(id)value changedByUserUUID:(id)d flow:(id)flow
{
  v47 = *MEMORY[0x277D85DE8];
  informationCopy = information;
  valueCopy = value;
  dCopy = d;
  flowCopy = flow;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    [internalOnlyInitializer UUID];
    v38 = internalOnlyInitializer;
    v21 = valueCopy;
    v23 = v22 = dCopy;
    uUID = [flowCopy UUID];
    *buf = 138544130;
    v40 = v20;
    v41 = 2112;
    v42 = v23;
    v43 = 2112;
    v44 = uUID;
    v45 = 2112;
    v46 = informationCopy;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@[ChildFlow: %@ Parent: %@] Setting user information: %@, for access code value", buf, 0x2Au);

    dCopy = v22;
    valueCopy = v21;
    internalOnlyInitializer = v38;
  }

  objc_autoreleasePoolPop(v17);
  simpleLabel = [informationCopy simpleLabel];

  if (simpleLabel)
  {
    simpleLabel2 = [informationCopy simpleLabel];
    v27 = [(HMDAccessCodeDataManager *)selfCopy _setSimpleLabel:simpleLabel2 forAccessCodeValue:valueCopy flow:internalOnlyInitializer];
  }

  else
  {
    userUUID = [informationCopy userUUID];

    if (userUUID)
    {
      simpleLabel2 = [informationCopy userUUID];
      v27 = [(HMDAccessCodeDataManager *)selfCopy _setUserWithUUID:simpleLabel2 forAccessCodeValue:valueCopy changedByUserUUID:dCopy flow:internalOnlyInitializer];
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      v30 = selfCopy;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        uUID2 = [internalOnlyInitializer UUID];
        *buf = 138543874;
        v40 = v32;
        v41 = 2112;
        v42 = uUID2;
        v43 = 2112;
        v44 = informationCopy;
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not setting user information for access code value because empty user information was provided: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v29);
      v34 = MEMORY[0x277D2C900];
      simpleLabel2 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      v27 = [v34 futureWithError:simpleLabel2];
    }
  }

  v35 = v27;

  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

- (id)homeAccessCodeWithRemovedUserInfoWithUUID:(id)d
{
  dCopy = d;
  homeAccessCodeValuesWithRemovedUserInfo = [(HMDAccessCodeDataManager *)self homeAccessCodeValuesWithRemovedUserInfo];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__HMDAccessCodeDataManager_homeAccessCodeWithRemovedUserInfoWithUUID___block_invoke;
  v9[3] = &unk_27972E4F0;
  v10 = dCopy;
  v6 = dCopy;
  v7 = [homeAccessCodeValuesWithRemovedUserInfo na_firstObjectPassingTest:v9];

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
  context = [(HMDAccessCodeDataManager *)self context];
  home = [context home];

  if (home)
  {
    removedUserInfoByAccessCode = [home removedUserInfoByAccessCode];

    if (removedUserInfoByAccessCode)
    {
      removedUserInfoByAccessCode2 = [home removedUserInfoByAccessCode];
      v7 = [removedUserInfoByAccessCode2 na_map:&__block_literal_global_17_143104];

      goto LABEL_10;
    }

    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v11;
      v12 = "%{public}@Cannot fetch user access code values with simple labels because home reference was nil";
LABEL_8:
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, v12, &v15, 0xCu);
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
  context = [(HMDAccessCodeDataManager *)self context];
  home = [context home];

  if (home)
  {
    users = [home users];
    v6 = [users na_map:&__block_literal_global_14_143108];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch user access code values with simple labels because home reference was nil", &v13, 0xCu);
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
  v16 = *MEMORY[0x277D85DE8];
  context = [(HMDAccessCodeDataManager *)self context];
  home = [context home];

  if (home)
  {
    labelsByAccessCode = [home labelsByAccessCode];

    if (labelsByAccessCode)
    {
      labelsByAccessCode2 = [home labelsByAccessCode];
      v7 = [labelsByAccessCode2 na_map:&__block_literal_global_8_143113];

      goto LABEL_8;
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch home access code values with simple labels because home reference was nil", &v14, 0xCu);
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
  v4 = MEMORY[0x277CD1640];
  v5 = a3;
  v6 = a2;
  v7 = [[v4 alloc] initWithSimpleLabel:v5 labelIdentifier:0 userUUID:0 removedUserInfo:0];

  v8 = [objc_alloc(MEMORY[0x277CD1648]) initWithStringValue:v6];
  v9 = [objc_alloc(MEMORY[0x277CD1A68]) initWithAccessCodeValue:v8 userInformationValue:v7];

  return v9;
}

- (NSArray)homeAccessCodeValues
{
  homeAccessCodeValuesWithSimpleLabels = [(HMDAccessCodeDataManager *)self homeAccessCodeValuesWithSimpleLabels];
  homeAccessCodeValuesWithUserLabels = [(HMDAccessCodeDataManager *)self homeAccessCodeValuesWithUserLabels];
  v5 = [homeAccessCodeValuesWithSimpleLabels arrayByAddingObjectsFromArray:homeAccessCodeValuesWithUserLabels];
  homeAccessCodeValuesWithRemovedUserInfo = [(HMDAccessCodeDataManager *)self homeAccessCodeValuesWithRemovedUserInfo];
  v7 = [v5 arrayByAddingObjectsFromArray:homeAccessCodeValuesWithRemovedUserInfo];

  return v7;
}

- (void)configure
{
  context = [(HMDAccessCodeDataManager *)self context];
  isCurrentDeviceOwnerController = [context isCurrentDeviceOwnerController];

  if (isCurrentDeviceOwnerController)
  {
    [(HMDAccessCodeDataManager *)self _setUpAndStartTimer];

    [(HMDAccessCodeDataManager *)self _cleanUpOldRemovedUserDataWithReason:@"configure"];
  }
}

- (HMDAccessCodeDataManager)initWithContext:(id)context delegate:(id)delegate
{
  contextCopy = context;
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = HMDAccessCodeDataManager;
  v9 = [(HMDAccessCodeDataManager *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    objc_storeWeak(&v10->_delegate, delegateCopy);
    dataCleanUpTimerFactory = v10->_dataCleanUpTimerFactory;
    v10->_dataCleanUpTimerFactory = &__block_literal_global_143121;
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
    dispatch_once(&logCategory__hmf_once_t88, &__block_literal_global_91);
  }

  v3 = logCategory__hmf_once_v89;

  return v3;
}

uint64_t __39__HMDAccessCodeDataManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v89;
  logCategory__hmf_once_v89 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)_accessCodeInHome:(id)home forRemovedUserAccessCodeModel:(id)model
{
  homeCopy = home;
  modelCopy = model;
  removedUserInfoByAccessCode = [homeCopy removedUserInfoByAccessCode];
  allKeys = [removedUserInfoByAccessCode allKeys];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__HMDAccessCodeDataManager__accessCodeInHome_forRemovedUserAccessCodeModel___block_invoke;
  v13[3] = &unk_27972E638;
  v14 = modelCopy;
  v15 = homeCopy;
  v9 = homeCopy;
  v10 = modelCopy;
  v11 = [allKeys na_firstObjectPassingTest:v13];

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

+ (id)_accessCodeInHome:(id)home forHomeAccessCodeModel:(id)model
{
  homeCopy = home;
  modelCopy = model;
  labelsByAccessCode = [homeCopy labelsByAccessCode];
  allKeys = [labelsByAccessCode allKeys];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__HMDAccessCodeDataManager__accessCodeInHome_forHomeAccessCodeModel___block_invoke;
  v13[3] = &unk_27972E638;
  v14 = modelCopy;
  v15 = homeCopy;
  v9 = homeCopy;
  v10 = modelCopy;
  v11 = [allKeys na_firstObjectPassingTest:v13];

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

+ (id)userWithAccessCode:(id)code inHome:(id)home
{
  codeCopy = code;
  users = [home users];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__HMDAccessCodeDataManager_userWithAccessCode_inHome___block_invoke;
  v10[3] = &unk_27972E540;
  v11 = codeCopy;
  v7 = codeCopy;
  v8 = [users na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __54__HMDAccessCodeDataManager_userWithAccessCode_inHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 accessCode];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

+ (id)createUserAccessCodeModelFromAccessCode:(id)code forUserUUID:(id)d changedByUserUUID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  codeCopy = code;
  v10 = [[HMDUserAccessCodeModel alloc] initWithUserUUID:dCopy];

  [(HMDUserAccessCodeModel *)v10 setValue:codeCopy];
  [(HMDUserAccessCodeModel *)v10 setChangedByUserUUID:iDCopy];

  return v10;
}

+ (id)createRemovedUserInfoModelsFromRemovedUserInfoByAccessCode:(id)code forHome:(id)home
{
  codeCopy = code;
  homeCopy = home;
  allKeys = [codeCopy allKeys];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __95__HMDAccessCodeDataManager_createRemovedUserInfoModelsFromRemovedUserInfoByAccessCode_forHome___block_invoke;
  v12[3] = &unk_27972E468;
  v13 = codeCopy;
  v14 = homeCopy;
  v8 = homeCopy;
  v9 = codeCopy;
  v10 = [allKeys na_map:v12];

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

+ (id)createHomeAccessCodeModelsFromLabelsByAccessCode:(id)code forHome:(id)home
{
  codeCopy = code;
  homeCopy = home;
  allKeys = [codeCopy allKeys];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__HMDAccessCodeDataManager_createHomeAccessCodeModelsFromLabelsByAccessCode_forHome___block_invoke;
  v12[3] = &unk_27972E468;
  v13 = homeCopy;
  v14 = codeCopy;
  v8 = codeCopy;
  v9 = homeCopy;
  v10 = [allKeys na_map:v12];

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