@interface HMDAssistantAccessControl
+ (BOOL)isAccessorySupported:(id)a3;
+ (HMDAssistantAccessControl)accessControlWithMessage:(id)a3 user:(id)a4 currentAccessories:(id)a5 error:(id *)a6;
+ (id)logCategory;
+ (id)modelIDNamespace;
- (BOOL)areActivityNotificationsEnabledForPersonalRequests;
- (BOOL)isEnabled;
- (BOOL)isEqual:(id)a3;
- (HMDAssistantAccessControl)init;
- (HMDAssistantAccessControl)initWithCoder:(id)a3;
- (HMDAssistantAccessControl)initWithUser:(id)a3 appleAccessories:(id)a4 hapAccessoryIdentifiers:(id)a5 enabled:(BOOL)a6 activityNotificationsEnabledForPersonalRequests:(BOOL)a7;
- (HMDAssistantAccessControl)initWithUser:(id)a3 model:(id)a4;
- (HMDAssistantAccessControlModel)model;
- (HMDUser)user;
- (HMDUserAccessorySettingsDataController)settingsController;
- (NSArray)accessories;
- (NSString)propertyDescription;
- (NSUUID)modelID;
- (id)_appleMediaAccessories;
- (id)_hapAccessoryIdentifiers;
- (id)assistantAccessControlModelWithRemovedAccessories:(id)a3;
- (id)logIdentifier;
- (id)transactionWithObjectChangeType:(unint64_t)a3;
- (unint64_t)cachedHash;
- (void)_populateModel:(void *)a3 withAccessoryIdsFromAccessories:;
- (void)addAccessory:(id)a3 checkForSupport:(BOOL)a4 withError:(id *)a5;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)handleRemovedAccessory:(id)a3;
- (void)notifyClientOfUpdateWithMessage:(id)a3;
- (void)removeAccessory:(id)a3;
- (void)setActivityNotificationsEnabledForPersonalRequests:(BOOL)a3;
- (void)setAppleMediaAccessories:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHapAccessoryIdentifiers:(id)a3;
- (void)setOptions:(unint64_t)a3;
- (void)setUser:(id)a3;
- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
@end

@implementation HMDAssistantAccessControl

- (HMDUserAccessorySettingsDataController)settingsController
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsController);

  return WeakRetained;
}

- (void)encodeWithCoder:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAssistantAccessControl *)self user];
  [v4 encodeConditionalObject:v5 forKey:*MEMORY[0x277CCE7A0]];

  v6 = [(HMDAssistantAccessControl *)self isEnabled];
  [v4 encodeBool:v6 forKey:*MEMORY[0x277CCF268]];
  v7 = [(HMDAssistantAccessControl *)self options];
  [v4 encodeInteger:v7 forKey:*MEMORY[0x277CCF270]];
  v8 = [(HMDAssistantAccessControl *)self areActivityNotificationsEnabledForPersonalRequests];
  [v4 encodeBool:v8 forKey:*MEMORY[0x277CCF260]];
  v9 = [(HMDAssistantAccessControl *)self accessories];
  v10 = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      v15 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * v15);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        v18 = v17;

        if (!v18)
        {
          [v10 addObject:{v16, v24}];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  v19 = [v4 hmd_isForXPCTransport];
  v20 = *MEMORY[0x277CCF258];
  if (v19)
  {
    [v4 hm_encodeArrayOfConditionalObjects:v11 forKey:v20];
  }

  else
  {
    [v4 hm_encodeArrayOfConditionalObjects:v10 forKey:v20];
    v21 = [(HMDAssistantAccessControl *)self _hapAccessoryIdentifiers];
    v22 = [v21 na_map:&__block_literal_global_78_262013];

    [v4 encodeObject:v22 forKey:@"HMD.ac.siriEndpointIdentifiers"];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)_hapAccessoryIdentifiers
{
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    v2 = [*(a1 + 24) allObjects];
    os_unfair_lock_unlock((a1 + 8));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (HMDAssistantAccessControl)initWithCoder:(id)a3
{
  v25[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCE7A0]];
  v6 = [(HMDAssistantAccessControl *)self initWithUser:v5];
  if (v6)
  {
    v6->_enabled = [v4 decodeBoolForKey:*MEMORY[0x277CCF268]];
    v6->_options = [v4 decodeIntegerForKey:*MEMORY[0x277CCF270]];
    v7 = *MEMORY[0x277CCF260];
    v6->_activityNotificationsEnabledForPersonalRequests = [v4 containsValueForKey:*MEMORY[0x277CCF260]] ? objc_msgSend(v4, "decodeBoolForKey:", v7) : 1;
    v8 = *MEMORY[0x277CCF258];
    if ([v4 containsValueForKey:*MEMORY[0x277CCF258]])
    {
      v9 = [v4 hm_decodeArrayOfConditionalObjects:objc_opt_class() forKey:v8];
      v10 = [v9 mutableCopy];

      v11 = [v4 hm_decodeArrayOfConditionalObjects:objc_opt_class() forKey:@"HMD.ac.homepods"];
      if (v11)
      {
        [v10 addObjectsFromArray:v11];
      }

      v12 = [v4 hm_decodeArrayOfConditionalObjects:objc_opt_class() forKey:@"HMD.ac.homepods_6_1"];
      if (v12)
      {
        [v10 addObjectsFromArray:v12];
      }

      v13 = [MEMORY[0x277CBEB58] set];
      hapAccessoryIdentifiers = v6->_hapAccessoryIdentifiers;
      v6->_hapAccessoryIdentifiers = v13;

      v15 = MEMORY[0x277CBEB98];
      v25[0] = objc_opt_class();
      v25[1] = objc_opt_class();
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
      v17 = [v15 setWithArray:v16];
      v18 = [v4 decodeObjectOfClasses:v17 forKey:@"HMD.ac.siriEndpointIdentifiers"];

      if ([v18 count])
      {
        v19 = v6->_hapAccessoryIdentifiers;
        v20 = [v18 na_map:&__block_literal_global_76_262026];
        [(NSMutableSet *)v19 addObjectsFromArray:v20];
      }

      v21 = [MEMORY[0x277CBEB58] setWithArray:v10];
      appleMediaAccessories = v6->_appleMediaAccessories;
      v6->_appleMediaAccessories = v21;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return v6;
}

id __43__HMDAssistantAccessControl_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAD78];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

- (id)logIdentifier
{
  v2 = [(HMDAssistantAccessControl *)self modelID];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)assistantAccessControlModelWithRemovedAccessories:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v45;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v45 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v44 + 1) + 8 * i);
        v10 = [(HMDAssistantAccessControl *)self accessories];
        LOBYTE(v9) = [v10 containsObject:v9];

        if (v9)
        {

          v11 = [(HMDAssistantAccessControl *)self model];
          v13 = [v11 accessoryModelIDs];
          v39 = [v13 mutableCopy];

          v14 = [v11 siriEndpointAccessoryModelUUIDs];
          v38 = [v14 mutableCopy];

          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v37 = v4;
          v15 = v4;
          v16 = [v15 countByEnumeratingWithState:&v40 objects:v48 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v41;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v41 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v40 + 1) + 8 * j);
                v21 = [v11 accessoryModelIDs];
                v22 = [v20 uuid];
                v23 = [v22 UUIDString];
                v24 = [v21 containsObject:v23];

                if (v24)
                {
                  v25 = [v20 uuid];
                  v26 = [v25 UUIDString];
                  [v39 removeObject:v26];
                }

                v27 = [v11 siriEndpointAccessoryModelUUIDs];
                v28 = [v20 uuid];
                v29 = [v28 UUIDString];
                v30 = [v27 containsObject:v29];

                if (v30)
                {
                  v31 = [v20 uuid];
                  v32 = [v31 UUIDString];
                  [v38 removeObject:v32];
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v40 objects:v48 count:16];
            }

            while (v17);
          }

          v12 = v39;
          v33 = [v39 copy];
          [v11 setAccessoryModelIDs:v33];

          v34 = [v38 copy];
          [v11 setSiriEndpointAccessoryModelUUIDs:v34];

          v4 = v37;
          goto LABEL_22;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
  v12 = v4;
LABEL_22:

  v35 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v89 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    v14 = self;
    v82 = v13;
    v15 = v13;
    v16 = v10;
    v17 = [v16 transactionResult];
    if ([v15 propertyWasSet:@"enabled"])
    {
      v18 = [v15 enabled];
      v19 = [v18 BOOLValue];

      if (v19 != [(HMDAssistantAccessControl *)v14 isEnabled])
      {
        [(HMDAssistantAccessControl *)v14 setEnabled:v19];
        [v17 markChanged];
      }
    }

    if ([v15 propertyWasSet:@"options"])
    {
      v20 = [v15 options];
      v21 = [v20 unsignedIntegerValue];

      if ([(HMDAssistantAccessControl *)v14 options]!= v21)
      {
        [(HMDAssistantAccessControl *)v14 setOptions:v21];
        [v17 markChanged];
      }
    }

    if ([v15 propertyWasSet:@"activityNotificationsEnabledForPersonalRequests"])
    {
      v22 = [v15 activityNotificationsEnabledForPersonalRequests];
      v23 = [v22 BOOLValue];

      if (v23 != [(HMDAssistantAccessControl *)v14 areActivityNotificationsEnabledForPersonalRequests])
      {
        [(HMDAssistantAccessControl *)v14 setActivityNotificationsEnabledForPersonalRequests:v23];
        [v17 markChanged];
      }
    }

    v80 = v17;
    v81 = v16;
    if ([v15 propertyWasSet:@"accessoryModelIDs"])
    {
      v24 = [v15 accessoryModelIDs];
      v25 = __modelIDsFromModelIDStrings(v24);

      v74 = v25;
      v26 = __accessoriesWithModelIDs(v14, v25);
      v78 = [(HMDAssistantAccessControl *)v14 _appleMediaAccessories];
      v27 = objc_autoreleasePoolPush();
      v28 = v14;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        HMFGetLogIdentifier();
        v76 = v10;
        v31 = v30 = v8;
        v32 = [(HMDAssistantAccessControl *)v28 accessories];
        *buf = 138543874;
        v84 = v31;
        v85 = 2112;
        v86 = v26;
        v87 = 2112;
        v88 = v32;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Got access control update for apple media accessories: %@, allCurrent:%@", buf, 0x20u);

        v8 = v30;
        v10 = v76;
      }

      objc_autoreleasePoolPop(v27);
      v33 = HMFEqualObjects();
      v34 = objc_autoreleasePoolPush();
      v35 = v28;
      v36 = HMFGetOSLogHandle();
      v37 = v36;
      if (v33)
      {
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v38 = HMFGetLogIdentifier();
          *buf = 138543362;
          v84 = v38;
          _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@accessories list is the same skipping", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v34);
        v17 = v80;
      }

      else
      {
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v41 = HMFGetLogIdentifier();
          *buf = 138543874;
          v84 = v41;
          v85 = 2112;
          v86 = v26;
          v87 = 2112;
          v88 = v78;
          _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@Updated assistant access control apple media accessories to: %@, from: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v34);
        [(HMDAssistantAccessControl *)v35 setAppleMediaAccessories:v26];
        v17 = v80;
        [v80 markChanged];
      }

      v16 = v81;
    }

    if ([v15 propertyWasSet:@"siriEndpointAccessoryModelUUIDs"])
    {
      v42 = [v15 siriEndpointAccessoryModelUUIDs];
      v43 = __modelIDsFromModelIDStrings(v42);

      v44 = __accessoriesWithModelIDs(v14, v43);
      v45 = v44;
      if (v14)
      {
        v46 = [v44 na_map:&__block_literal_global_50_262047];
      }

      else
      {
        v46 = 0;
      }

      v79 = v46;
      v75 = v45;
      if ((HMFEqualObjects() & 1) == 0)
      {
        v47 = objc_autoreleasePoolPush();
        v48 = v14;
        v49 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v50 = HMFGetLogIdentifier();
          *buf = 138543874;
          v84 = v50;
          v85 = 2112;
          v86 = v43;
          v87 = 2112;
          v88 = v75;
          _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_ERROR, "%{public}@Fatal: found non hap accessory in endpoint list %@, accessories: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v47);
      }

      v77 = v10;
      v51 = [(HMDAssistantAccessControl *)v14 _hapAccessoryIdentifiers];
      v52 = objc_autoreleasePoolPush();
      v53 = v14;
      v54 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = HMFGetLogIdentifier();
        [(HMDAssistantAccessControl *)v53 accessories];
        v73 = v11;
        v56 = v43;
        v57 = v51;
        v59 = v58 = v8;
        *buf = 138543874;
        v84 = v55;
        v85 = 2112;
        v86 = v79;
        v87 = 2112;
        v88 = v59;
        _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_DEFAULT, "%{public}@Got access control update for hap accessories: %@, allCurrent:%@", buf, 0x20u);

        v8 = v58;
        v51 = v57;
        v43 = v56;
        v11 = v73;
      }

      objc_autoreleasePoolPop(v52);
      v60 = HMFEqualObjects();
      v61 = objc_autoreleasePoolPush();
      v62 = v53;
      v63 = HMFGetOSLogHandle();
      v64 = v63;
      if (v60)
      {
        if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          v65 = HMFGetLogIdentifier();
          *buf = 138543362;
          v84 = v65;
          _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_INFO, "%{public}@endpoint list is the same skipping", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v61);
        v17 = v80;
      }

      else
      {
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          v66 = HMFGetLogIdentifier();
          *buf = 138543874;
          v84 = v66;
          v85 = 2112;
          v86 = v43;
          v87 = 2112;
          v88 = v51;
          _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_DEFAULT, "%{public}@Updated assistant access control accessories to: %@ from: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v61);
        [(HMDAssistantAccessControl *)v62 setHapAccessoryIdentifiers:v43];
        v17 = v80;
        [v80 markChanged];
      }

      v10 = v77;
      v16 = v81;
    }

    if ([v17 changed])
    {
      [(HMDAssistantAccessControl *)v14 notifyClientOfUpdateWithMessage:v16];
    }

    v67 = [v16 responseHandler];

    if (v67)
    {
      v68 = [v16 responseHandler];
      v68[2](v68, 0, 0);
    }

    v69 = [(HMDAssistantAccessControl *)v14 user];
    v70 = [v69 home];
    v71 = [(HMDAssistantAccessControl *)v14 accessories];
    [v70 userAssistantAccessControlDidUpdate:v69 accessories:v71];

    v13 = v82;
  }

  else
  {
    v39 = [v10 responseHandler];
    v40 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (v39)[2](v39, v40, 0);
  }

  v72 = *MEMORY[0x277D85DE8];
}

- (id)_appleMediaAccessories
{
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    v2 = [*(a1 + 16) allObjects];
    os_unfair_lock_unlock((a1 + 8));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id __66__HMDAssistantAccessControl_siriEndpointAccessoriesInAccessories___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 siriEndpointProfile];

    if (v6)
    {
      v7 = v5;
      v6 = v2;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)transactionWithObjectChangeType:(unint64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(HMDAssistantAccessControl *)self user];
  if (v5)
  {
    v6 = [HMDAssistantAccessControlModel alloc];
    v7 = [(HMDAssistantAccessControl *)self modelID];
    v8 = [v5 uuid];
    v9 = [(HMDBackingStoreModelObject *)v6 initWithObjectChangeType:a3 uuid:v7 parentUUID:v8];
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
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to create model without parent user", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDAssistantAccessControlModel)model
{
  v3 = [(HMDAssistantAccessControl *)self transactionWithObjectChangeType:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAssistantAccessControl isEnabled](self, "isEnabled")}];
  [v3 setEnabled:v4];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAssistantAccessControl options](self, "options")}];
  [v3 setOptions:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAssistantAccessControl areActivityNotificationsEnabledForPersonalRequests](self, "areActivityNotificationsEnabledForPersonalRequests")}];
  [v3 setActivityNotificationsEnabledForPersonalRequests:v6];

  v7 = [(HMDAssistantAccessControl *)self _appleMediaAccessories];
  [(HMDAssistantAccessControl *)self _populateModel:v3 withAccessoryIdsFromAccessories:v7];

  v8 = [(HMDAssistantAccessControl *)self _hapAccessoryIdentifiers];
  v9 = [v8 na_map:&__block_literal_global_58_262086];
  [v3 setSiriEndpointAccessoryModelUUIDs:v9];

  return v3;
}

- (void)_populateModel:(void *)a3 withAccessoryIdsFromAccessories:
{
  if (a1)
  {
    v4 = a2;
    v6 = [a3 na_map:&__block_literal_global_47_262088];
    v5 = __modelIDStringsFromAccessories(v6);
    [v4 setAccessoryModelIDs:v5];
  }
}

void *__64__HMDAssistantAccessControl_appleMediaAccessoriesInAccessories___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSUUID)modelID
{
  v2 = [(HMDAssistantAccessControl *)self user];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CCAD78]);
    v4 = +[HMDAssistantAccessControl modelIDNamespace];
    v5 = [v2 uuid];
    v6 = [v5 UUIDString];
    v7 = [v6 dataUsingEncoding:4];
    v8 = [v3 initWithNamespace:v4 data:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)notifyClientOfUpdateWithMessage:(id)a3
{
  v4 = a3;
  v5 = [(HMDAssistantAccessControl *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__HMDAssistantAccessControl_notifyClientOfUpdateWithMessage___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __61__HMDAssistantAccessControl_notifyClientOfUpdateWithMessage___block_invoke(uint64_t a1)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) user];
  if (v2)
  {
    v3 = encodeRootObjectForSPIClients(*(a1 + 32));
    v4 = MEMORY[0x277D0F848];
    v5 = *MEMORY[0x277CD1300];
    v6 = [*(a1 + 40) identifier];
    v7 = *MEMORY[0x277CD12F8];
    v21[0] = v3;
    v8 = *MEMORY[0x277CD12D8];
    v20[0] = v7;
    v20[1] = v8;
    v9 = [*(a1 + 32) accessories];
    v10 = __modelIDStringsFromAccessories(v9);
    v21[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v12 = [v4 entitledMessageWithName:v5 identifier:v6 messagePayload:v11];

    v13 = objc_alloc(MEMORY[0x277D0F820]);
    v14 = [v2 uuid];
    v15 = [v13 initWithTarget:v14];
    [v12 setDestination:v15];

    v16 = [v2 home];
    v17 = [v16 homeManager];
    v18 = [v17 messageDispatcher];
    [v18 sendMessage:v12 completionHandler:0];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)handleRemovedAccessory:(id)a3
{
  v4 = a3;
  v5 = [(HMDAssistantAccessControl *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HMDAssistantAccessControl_handleRemovedAccessory___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __52__HMDAssistantAccessControl_handleRemovedAccessory___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) userInfo];
  v4 = [v3 objectForKeyedSubscript:@"HMDAccessoryNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [*v2 userInfo];
  v8 = [v7 hmf_numberForKey:@"HMDNotificationSourceKey"];

  if (v8)
  {
    v9 = [v8 unsignedIntegerValue];
    if (v6)
    {
      if (v9 == 1)
      {
        v10 = objc_autoreleasePoolPush();
        v11 = *(a1 + 40);
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = HMFGetLogIdentifier();
          *buf = 138543618;
          v37 = v13;
          v38 = 2112;
          v39 = v6;
          _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory was removed: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v10);
        v14 = [(HMDAssistantAccessControl *)*(a1 + 40) _appleMediaAccessories];
        v15 = [v14 mutableCopy];

        v16 = [(HMDAssistantAccessControl *)*(a1 + 40) _hapAccessoryIdentifiers];
        v32 = [v16 mutableCopy];

        if (([v15 containsObject:v6] & 1) != 0 || (objc_msgSend(v6, "uuid"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v32, "containsObject:", v17), v17, v18))
        {
          if ([v15 containsObject:v6])
          {
            [v15 removeObject:v6];
          }

          else
          {
            v19 = [v6 uuid];
            v20 = [v32 containsObject:v19];

            if (v20)
            {
              v21 = [v6 uuid];
              [v32 removeObject:v21];
            }
          }

          v23 = *(a1 + 40);
          v22 = (a1 + 40);
          [v23 removeAccessory:v6];
          v24 = [*v22 transactionWithObjectChangeType:2];
          [(HMDAssistantAccessControl *)*v22 _populateModel:v24 withAccessoryIdsFromAccessories:v15];
          v25 = [v32 na_map:&__block_literal_global_41_262095];
          [v24 setSiriEndpointAccessoryModelUUIDs:v25];

          v26 = [*v22 user];
          v27 = [v26 home];
          v28 = [v27 backingStore];
          v29 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
          v30 = [v28 transaction:0 options:v29];

          [v30 add:v24 withMessage:0];
          objc_initWeak(buf, *v22);
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __52__HMDAssistantAccessControl_handleRemovedAccessory___block_invoke_2;
          v33[3] = &unk_278687540;
          objc_copyWeak(&v35, buf);
          v34 = v6;
          [v30 run:v33];

          objc_destroyWeak(&v35);
          objc_destroyWeak(buf);
        }
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __52__HMDAssistantAccessControl_handleRemovedAccessory___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 32);
      v14 = 138543874;
      v15 = v9;
      v16 = 2112;
      v17 = v3;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Error: %@ running transaction to remove accessory: %@ from ACL adding it back.", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    [v6 addAccessory:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 32);
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Removed accessory %@ from assistant access control list.", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [v6 notifyClientOfUpdateWithMessage:0];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)removeAccessory:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (isKindOfClass)
    {
      os_unfair_lock_lock_with_options();
      hapAccessoryIdentifiers = self->_hapAccessoryIdentifiers;
      v11 = [v6 uuid];
      v12 = [(NSMutableSet *)hapAccessoryIdentifiers containsObject:v11];

      v13 = self->_hapAccessoryIdentifiers;
      v14 = [v6 uuid];
      [(NSMutableSet *)v13 removeObject:v14];

      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      v12 = 0;
    }

    v15 = v6;
    objc_opt_class();
    v16 = objc_opt_isKindOfClass();
    if (v16)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    if (v16)
    {
      os_unfair_lock_lock_with_options();
      v19 = [(NSMutableSet *)self->_appleMediaAccessories containsObject:v15];
      [(NSMutableSet *)self->_appleMediaAccessories removeObject:v15];
      os_unfair_lock_unlock(&self->_lock);
      if (((v19 | v12) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (!v12)
    {
LABEL_18:

      goto LABEL_19;
    }

    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v23;
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Removed accessory %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    goto LABEL_18;
  }

LABEL_19:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)addAccessory:(id)a3 checkForSupport:(BOOL)a4 withError:(id *)a5
{
  v6 = a4;
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (v8)
  {
    if (!v6 || [HMDAssistantAccessControl isAccessorySupported:v8])
    {
      v9 = v8;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      v13 = v9;
      objc_opt_class();
      v14 = objc_opt_isKindOfClass();
      if (v14)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      if (isKindOfClass)
      {
        p_lock = &self->_lock;
        os_unfair_lock_lock_with_options();
        hapAccessoryIdentifiers = self->_hapAccessoryIdentifiers;
        v19 = [v13 uuid];
        [(NSMutableSet *)hapAccessoryIdentifiers addObject:v19];
      }

      else
      {
        if ((v14 & 1) == 0)
        {
          v36 = objc_autoreleasePoolPush();
          v37 = self;
          v38 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            v39 = HMFGetLogIdentifier();
            v40 = 138543618;
            v41 = v39;
            v42 = 2112;
            v43 = v13;
            _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@Accessory type is not supported: %@", &v40, 0x16u);
          }

          objc_autoreleasePoolPop(v36);
          if (a5)
          {
            *a5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:93];
          }

          goto LABEL_21;
        }

        p_lock = &self->_lock;
        os_unfair_lock_lock_with_options();
        [(NSMutableSet *)self->_appleMediaAccessories addObject:v13];
      }

      os_unfair_lock_unlock(p_lock);
      v27 = objc_autoreleasePoolPush();
      v28 = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = HMFGetLogIdentifier();
        v40 = 138543618;
        v41 = v30;
        v42 = 2112;
        v43 = v13;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Added accessory %@", &v40, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
LABEL_21:

      goto LABEL_27;
    }

    v31 = objc_autoreleasePoolPush();
    v32 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      v40 = 138543618;
      v41 = v34;
      v42 = 2112;
      v43 = v8;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Accessory not supported: %@", &v40, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    if (a5)
    {
      v26 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:9002];
      goto LABEL_26;
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [0 uuid];
      v25 = [v24 UUIDString];
      v40 = 138543618;
      v41 = v23;
      v42 = 2112;
      v43 = v25;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Failed to lookup new accessory with identifier: %@", &v40, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    if (a5)
    {
      v26 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:9003];
LABEL_26:
      *a5 = v26;
    }
  }

LABEL_27:

  v35 = *MEMORY[0x277D85DE8];
}

- (void)setAppleMediaAccessories:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277CBEB58] setWithArray:?];
    os_unfair_lock_lock_with_options();
    appleMediaAccessories = self->_appleMediaAccessories;
    self->_appleMediaAccessories = v4;

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)setHapAccessoryIdentifiers:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277CBEB58] setWithArray:?];
    os_unfair_lock_lock_with_options();
    hapAccessoryIdentifiers = self->_hapAccessoryIdentifiers;
    self->_hapAccessoryIdentifiers = v4;

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (NSArray)accessories
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = [(HMDAssistantAccessControl *)self settingsController];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 assistantAccessControlAccessoriesToEncode];
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v8 = [(HMDAssistantAccessControl *)self user];
    v9 = [v8 home];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = [v9 accessoryWithUUID:{*(*(&v23 + 1) + 8 * i), v23}];
          if (v14)
          {
            [v7 addObject:v14];
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    v15 = [v7 copy];
    objc_autoreleasePoolPop(v3);
  }

  else
  {
    objc_autoreleasePoolPop(v3);
    v16 = [MEMORY[0x277CBEA60] array];
    v17 = [MEMORY[0x277CBEA60] array];
    os_unfair_lock_lock_with_options();
    v18 = [(NSMutableSet *)self->_hapAccessoryIdentifiers allObjects];

    os_unfair_lock_unlock(&self->_lock);
    if ([v18 count])
    {
      v19 = __accessoriesWithModelIDs(self, v18);

      v16 = v19;
    }

    os_unfair_lock_lock_with_options();
    v20 = [(NSMutableSet *)self->_appleMediaAccessories allObjects];
    v15 = [v20 arrayByAddingObjectsFromArray:v16];

    os_unfair_lock_unlock(&self->_lock);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)setActivityNotificationsEnabledForPersonalRequests:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_activityNotificationsEnabledForPersonalRequests = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)areActivityNotificationsEnabledForPersonalRequests
{
  v3 = [(HMDAssistantAccessControl *)self settingsController];
  v4 = v3;
  if (v3)
  {
    activityNotificationsEnabledForPersonalRequests = [v3 assistantAccessControlActivityNotificationsEnabledForPersonalRequests];
  }

  else
  {
    os_unfair_lock_lock_with_options();
    activityNotificationsEnabledForPersonalRequests = self->_activityNotificationsEnabledForPersonalRequests;
    os_unfair_lock_unlock(&self->_lock);
  }

  return activityNotificationsEnabledForPersonalRequests & 1;
}

- (void)setOptions:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_options = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setEnabled:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_enabled = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isEnabled
{
  v3 = [(HMDAssistantAccessControl *)self settingsController];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 assistantAccessControlAccessoriesToEncode];
    enabled = [v5 count] != 0;
  }

  else
  {
    os_unfair_lock_lock_with_options();
    enabled = self->_enabled;
    os_unfair_lock_unlock(&self->_lock);
  }

  return enabled;
}

- (void)setUser:(id)a3
{
  obj = a3;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_user, obj);
  if (obj)
  {
    self->_cachedHash = [obj hash];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)cachedHash
{
  os_unfair_lock_lock_with_options();
  cachedHash = self->_cachedHash;
  os_unfair_lock_unlock(&self->_lock);
  return cachedHash;
}

- (HMDUser)user
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_user);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (NSString)propertyDescription
{
  v3 = MEMORY[0x277CCACA8];
  [(HMDAssistantAccessControl *)self isEnabled];
  v4 = HMFBooleanToString();
  [(HMDAssistantAccessControl *)self options];
  v5 = HMAssistantAccessControlOptionsToString();
  [(HMDAssistantAccessControl *)self areActivityNotificationsEnabledForPersonalRequests];
  v6 = HMFBooleanToString();
  v7 = [(HMDAssistantAccessControl *)self accessories];
  v8 = [v3 stringWithFormat:@" Enabled = %@, Options = %@, Activity Notifications Enabled for Personal Requests = %@, Accessories = %@", v4, v5, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(HMDAssistantAccessControl *)self user];
      v8 = [(HMDAssistantAccessControl *)v6 user];
      v9 = v8;
      v10 = 0;
      if (v7 && v8)
      {
        if (HMFEqualObjects() && (v11 = [(HMDAssistantAccessControl *)self isEnabled], v11 == [(HMDAssistantAccessControl *)v6 isEnabled]) && (v12 = [(HMDAssistantAccessControl *)self options], v12 == [(HMDAssistantAccessControl *)v6 options]) && (v13 = [(HMDAssistantAccessControl *)self areActivityNotificationsEnabledForPersonalRequests], v13 == [(HMDAssistantAccessControl *)v6 areActivityNotificationsEnabledForPersonalRequests]))
        {
          v15 = MEMORY[0x277CBEB98];
          v16 = [(HMDAssistantAccessControl *)self accessories];
          v17 = [v15 setWithArray:v16];

          v18 = MEMORY[0x277CBEB98];
          v19 = [(HMDAssistantAccessControl *)v6 accessories];
          v20 = [v18 setWithArray:v19];

          v10 = HMFEqualObjects();
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = HMDAssistantAccessControl;
  [(HMDAssistantAccessControl *)&v4 dealloc];
}

- (HMDAssistantAccessControl)initWithUser:(id)a3 appleAccessories:(id)a4 hapAccessoryIdentifiers:(id)a5 enabled:(BOOL)a6 activityNotificationsEnabledForPersonalRequests:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v27.receiver = self;
  v27.super_class = HMDAssistantAccessControl;
  v15 = [(HMDAssistantAccessControl *)&v27 init];
  v16 = v15;
  if (v15)
  {
    v15->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v15->_user, v12);
    v16->_cachedHash = [v12 hash];
    v16->_enabled = a6;
    v16->_activityNotificationsEnabledForPersonalRequests = a7;
    v17 = [MEMORY[0x277CBEB58] setWithArray:v13];
    appleMediaAccessories = v16->_appleMediaAccessories;
    v16->_appleMediaAccessories = v17;

    v19 = [MEMORY[0x277CBEB58] setWithArray:v14];
    hapAccessoryIdentifiers = v16->_hapAccessoryIdentifiers;
    v16->_hapAccessoryIdentifiers = v19;

    v21 = HMDispatchQueueNameString();
    v22 = [v21 UTF8String];
    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_create(v22, v23);
    clientQueue = v16->_clientQueue;
    v16->_clientQueue = v24;
  }

  return v16;
}

- (HMDAssistantAccessControl)initWithUser:(id)a3 model:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 enabled];
    v10 = [v9 BOOLValue];

    v11 = [(HMDAssistantAccessControl *)self initWithUser:v6 appleAccessories:MEMORY[0x277CBEBF8] enabled:v10];
    if (v11)
    {
      v12 = [v8 options];
      v11->_options = [v12 unsignedIntegerValue];

      v13 = [v8 activityNotificationsEnabledForPersonalRequests];
      v11->_activityNotificationsEnabledForPersonalRequests = [v13 BOOLValue];

      v14 = [v8 accessoryModelIDs];
      v15 = __modelIDsFromModelIDStrings(v14);

      v16 = [MEMORY[0x277CBEB58] set];
      hapAccessoryIdentifiers = v11->_hapAccessoryIdentifiers;
      v11->_hapAccessoryIdentifiers = v16;

      v18 = [v8 siriEndpointAccessoryModelUUIDs];
      v19 = __modelIDsFromModelIDStrings(v18);

      if ([v19 count])
      {
        v20 = [MEMORY[0x277CBEB58] setWithArray:v19];
        v21 = v11->_hapAccessoryIdentifiers;
        v11->_hapAccessoryIdentifiers = v20;
      }

      v22 = MEMORY[0x277CBEB58];
      v23 = __accessoriesWithModelIDs(v11, v15);
      v24 = [v22 setWithArray:v23];
      appleMediaAccessories = v11->_appleMediaAccessories;
      v11->_appleMediaAccessories = v24;
    }

    v26 = v11;
    v27 = v26;
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v26 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      v33 = 138543362;
      v34 = v30;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Model is required", &v33, 0xCu);
    }

    objc_autoreleasePoolPop(v28);
    v27 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v27;
}

- (HMDAssistantAccessControl)init
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
  if (logCategory__hmf_once_t61 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t61, &__block_literal_global_61_262130);
  }

  v3 = logCategory__hmf_once_v62;

  return v3;
}

void __40__HMDAssistantAccessControl_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v62;
  logCategory__hmf_once_v62 = v1;
}

+ (id)modelIDNamespace
{
  if (modelIDNamespace_onceToken_262135 != -1)
  {
    dispatch_once(&modelIDNamespace_onceToken_262135, &__block_literal_global_55_262136);
  }

  v3 = modelIDNamespace_modelIDNamespace_262137;

  return v3;
}

void __45__HMDAssistantAccessControl_modelIDNamespace__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"5FF02DEF-EFB2-45C7-BF0C-042B4F336FD8"];
  v1 = modelIDNamespace_modelIDNamespace_262137;
  modelIDNamespace_modelIDNamespace_262137 = v0;
}

+ (HMDAssistantAccessControl)accessControlWithMessage:(id)a3 user:(id)a4 currentAccessories:(id)a5 error:(id *)a6
{
  v150[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v10 dataForKey:*MEMORY[0x277CD12F8]];
  if (v13)
  {
    v123 = v11;
    v14 = MEMORY[0x277CCAAC8];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v150[0] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v150 count:1];
    v19 = [v14 deserializeObjectWithData:v13 allowedClass:v15 frameworkClasses:v18];

    v126 = v19;
    if (v19)
    {
      v20 = [v10 arrayForKey:*MEMORY[0x277CD12D8]];
      v128 = a6;
      if (v20)
      {
        v125 = [v123 home];
        v124 = [v12 na_map:&__block_literal_global_262147];
        v21 = [v10 arrayForKey:*MEMORY[0x277CD12E0]];
        v22 = [v10 arrayForKey:*MEMORY[0x277CD12E8]];
        if ([v21 count])
        {
          v23 = 1;
        }

        else
        {
          v23 = [v22 count] != 0;
        }

        v40 = objc_autoreleasePoolPush();
        v41 = a1;
        v42 = HMFGetOSLogHandle();
        v43 = os_log_type_enabled(v42, OS_LOG_TYPE_INFO);
        v121 = v21;
        v122 = v22;
        v119 = v13;
        v120 = v12;
        if (!v12 || !v23)
        {
          if (v43)
          {
            v75 = HMFGetLogIdentifier();
            *buf = 138543362;
            v145 = v75;
            _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_INFO, "%{public}@Gathering accessories for access control by legacy approach", buf, 0xCu);
          }

          v127 = v41;
          objc_autoreleasePoolPop(v40);
          v131 = 0u;
          v132 = 0u;
          v129 = 0u;
          v130 = 0u;
          v46 = v20;
          v76 = [v46 countByEnumeratingWithState:&v129 objects:v141 count:16];
          v48 = v126;
          if (!v76)
          {
            goto LABEL_61;
          }

          v77 = v76;
          v118 = v20;
          v78 = *v130;
LABEL_53:
          v79 = 0;
          while (1)
          {
            if (*v130 != v78)
            {
              objc_enumerationMutation(v46);
            }

            v80 = *(*(&v129 + 1) + 8 * v79);
            v81 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v80];
            if (!v81)
            {
              break;
            }

            v82 = v81;
            v83 = [v125 accessoryWithUUID:v81];
            [v126 addAccessory:v83 checkForSupport:objc_msgSend(v124 withError:{"containsObject:", v82) ^ 1, v128}];
            if (*v128)
            {
              v98 = objc_autoreleasePoolPush();
              v99 = v127;
              v100 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
              {
                v101 = HMFGetLogIdentifier();
                v102 = *v128;
                *buf = 138543874;
                v145 = v101;
                v146 = 2112;
                v147 = v83;
                v148 = 2112;
                v149 = v102;
                _os_log_impl(&dword_229538000, v100, OS_LOG_TYPE_ERROR, "%{public}@Failed to add accessory %@ with legacy path: %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v98);
              goto LABEL_80;
            }

            if (v77 == ++v79)
            {
              v77 = [v46 countByEnumeratingWithState:&v129 objects:v141 count:16];
              if (v77)
              {
                goto LABEL_53;
              }

              v20 = v118;
LABEL_61:
              v11 = v123;
LABEL_62:

              [v48 setUser:v11];
              v84 = [v48 accessories];
              v46 = [v84 na_map:&__block_literal_global_24_262159];

              v85 = objc_autoreleasePoolPush();
              v86 = v127;
              v87 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
              {
                HMFGetLogIdentifier();
                v89 = v88 = v11;
                *buf = 138543618;
                v145 = v89;
                v146 = 2112;
                v147 = v46;
                _os_log_impl(&dword_229538000, v87, OS_LOG_TYPE_INFO, "%{public}@Generated access control from message with accessories %@", buf, 0x16u);

                v11 = v88;
              }

              objc_autoreleasePoolPop(v85);
              v30 = v48;
              goto LABEL_92;
            }
          }

          v94 = objc_autoreleasePoolPush();
          v95 = v127;
          v96 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
          {
            v97 = HMFGetLogIdentifier();
            *buf = 138543618;
            v145 = v97;
            v146 = 2112;
            v147 = v80;
            _os_log_impl(&dword_229538000, v96, OS_LOG_TYPE_INFO, "%{public}@Invalid accessory identifier: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v94);
          if (v128)
          {
            [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:9024];
            *v128 = v30 = 0;
          }

          else
          {
LABEL_80:
            v30 = 0;
          }

          v20 = v118;
          goto LABEL_91;
        }

        if (v43)
        {
          v44 = HMFGetLogIdentifier();
          *buf = 138543874;
          v145 = v44;
          v146 = 2112;
          v147 = v21;
          v148 = 2112;
          v149 = v22;
          _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_INFO, "%{public}@Gathering accessories for access control by adding %@, and removing %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v40);
        [v21 na_map:&__block_literal_global_16_262149];
        v46 = v45 = v41;
        v47 = [v46 count];
        v48 = v126;
        if (v47 == [v21 count])
        {
          v127 = v45;
          v49 = [v22 na_map:&__block_literal_global_20_262151];
          v50 = [v49 count];
          if (v50 == [v22 count])
          {
            v117 = v20;
            v139 = 0u;
            v140 = 0u;
            v137 = 0u;
            v138 = 0u;
            v51 = v46;
            v52 = [v51 countByEnumeratingWithState:&v137 objects:v143 count:16];
            if (v52)
            {
              v53 = v52;
              v54 = *v138;
              while (2)
              {
                for (i = 0; i != v53; ++i)
                {
                  if (*v138 != v54)
                  {
                    objc_enumerationMutation(v51);
                  }

                  v56 = *(*(&v137 + 1) + 8 * i);
                  v57 = [v125 accessoryWithUUID:v56];
                  [v126 addAccessory:v57 checkForSupport:objc_msgSend(v124 withError:{"containsObject:", v56) ^ 1, v128}];
                  if (*v128)
                  {
                    v108 = objc_autoreleasePoolPush();
                    v109 = v127;
                    v110 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
                    {
                      v111 = HMFGetLogIdentifier();
                      v112 = *v128;
                      *buf = 138543874;
                      v145 = v111;
                      v146 = 2112;
                      v147 = v57;
                      v148 = 2112;
                      v149 = v112;
                      _os_log_impl(&dword_229538000, v110, OS_LOG_TYPE_ERROR, "%{public}@Failed to add accessory %@: %@", buf, 0x20u);
                    }

                    objc_autoreleasePoolPop(v108);
                    v20 = v117;
                    goto LABEL_90;
                  }
                }

                v53 = [v51 countByEnumeratingWithState:&v137 objects:v143 count:16];
                if (v53)
                {
                  continue;
                }

                break;
              }
            }

            v115 = v51;
            v116 = v10;

            v135 = 0u;
            v136 = 0u;
            v133 = 0u;
            v134 = 0u;
            v58 = v120;
            v59 = [v58 countByEnumeratingWithState:&v133 objects:v142 count:16];
            if (v59)
            {
              v60 = v59;
              v61 = *v134;
              do
              {
                for (j = 0; j != v60; ++j)
                {
                  if (*v134 != v61)
                  {
                    objc_enumerationMutation(v58);
                  }

                  v63 = *(*(&v133 + 1) + 8 * j);
                  v64 = [v63 uuid];
                  v65 = [v49 containsObject:v64];

                  if (v65)
                  {
                    v66 = objc_autoreleasePoolPush();
                    v67 = v127;
                    v68 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
                    {
                      v69 = HMFGetLogIdentifier();
                      v70 = [v63 uuid];
                      *buf = 138543618;
                      v145 = v69;
                      v146 = 2112;
                      v147 = v70;
                      _os_log_impl(&dword_229538000, v68, OS_LOG_TYPE_INFO, "%{public}@Removing existing accessory with identifier: %@", buf, 0x16u);

                      v48 = v126;
                    }

                    objc_autoreleasePoolPop(v66);
                  }

                  else
                  {
                    [v48 addAccessory:v63 checkForSupport:0 withError:v128];
                  }
                }

                v60 = [v58 countByEnumeratingWithState:&v133 objects:v142 count:16];
              }

              while (v60);
            }

            v71 = objc_autoreleasePoolPush();
            v72 = v127;
            v73 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
            {
              v74 = HMFGetLogIdentifier();
              *buf = 138543618;
              v145 = v74;
              v146 = 2112;
              v147 = v117;
              _os_log_impl(&dword_229538000, v73, OS_LOG_TYPE_INFO, "%{public}@Generated access control from message with accessories %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v71);
            v10 = v116;
            v20 = v117;
            v11 = v123;
            v46 = v115;
            goto LABEL_62;
          }

          v103 = objc_autoreleasePoolPush();
          v104 = v127;
          v105 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v107 = v106 = v20;
            *buf = 138543618;
            v145 = v107;
            v146 = 2112;
            v147 = v22;
            _os_log_impl(&dword_229538000, v105, OS_LOG_TYPE_INFO, "%{public}@A string in %@ failed to convert to UUID", buf, 0x16u);

            v20 = v106;
          }

          objc_autoreleasePoolPop(v103);
          if (v128)
          {
            *v128 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:9023];
          }

LABEL_90:

          v30 = 0;
LABEL_91:
          v11 = v123;
        }

        else
        {
          v90 = objc_autoreleasePoolPush();
          v91 = v45;
          v92 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
          {
            v93 = HMFGetLogIdentifier();
            *buf = 138543618;
            v145 = v93;
            v146 = 2112;
            v147 = v121;
            _os_log_impl(&dword_229538000, v92, OS_LOG_TYPE_INFO, "%{public}@A string in %@ failed to convert to UUID", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v90);
          v11 = v123;
          if (v128)
          {
            [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:9022];
            *v128 = v30 = 0;
          }

          else
          {
            v30 = 0;
          }
        }

LABEL_92:

        v13 = v119;
        v12 = v120;
      }

      else
      {
        v35 = objc_autoreleasePoolPush();
        v36 = a1;
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v38 = HMFGetLogIdentifier();
          v39 = [v10 messagePayload];
          *buf = 138543618;
          v145 = v38;
          v146 = 2112;
          v147 = v39;
          _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Missing access control accessories in message payload: %@", buf, 0x16u);

          v20 = 0;
        }

        objc_autoreleasePoolPop(v35);
        if (a6)
        {
          [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
          *a6 = v30 = 0;
        }

        else
        {
          v30 = 0;
        }

        v11 = v123;
      }
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      v32 = a1;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543362;
        v145 = v34;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Invalid access control in message payload", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v31);
      if (a6)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
        *a6 = v30 = 0;
      }

      else
      {
        v30 = 0;
      }

      v11 = v123;
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = a1;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v28 = v27 = v11;
      v29 = [v10 messagePayload];
      *buf = 138543618;
      v145 = v28;
      v146 = 2112;
      v147 = v29;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Missing serialized access control in message payload: %@", buf, 0x16u);

      v11 = v27;
    }

    objc_autoreleasePoolPop(v24);
    if (a6)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      *a6 = v30 = 0;
    }

    else
    {
      v30 = 0;
    }
  }

  v113 = *MEMORY[0x277D85DE8];

  return v30;
}

id __84__HMDAssistantAccessControl_accessControlWithMessage_user_currentAccessories_error___block_invoke_21(uint64_t a1, void *a2)
{
  v2 = [a2 uuid];
  v3 = [v2 UUIDString];

  return v3;
}

id __84__HMDAssistantAccessControl_accessControlWithMessage_user_currentAccessories_error___block_invoke_18(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAD78];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

id __84__HMDAssistantAccessControl_accessControlWithMessage_user_currentAccessories_error___block_invoke_13(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAD78];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

+ (BOOL)isAccessorySupported:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 siriEndpointProfile];
    v8 = v7 != 0;
  }

  else
  {
    v9 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v7 = v10;

    if (v7 && ([v7 capabilities], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
    {
      v12 = [v7 capabilities];
      v8 = [v12 supportsAssistantAccessControl];
    }

    else
    {
      v8 = [v7 isHomePod];
    }
  }

  return v8;
}

@end