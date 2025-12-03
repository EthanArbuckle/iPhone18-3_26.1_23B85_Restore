@interface HMDAssistantAccessControl
+ (BOOL)isAccessorySupported:(id)supported;
+ (HMDAssistantAccessControl)accessControlWithMessage:(id)message user:(id)user currentAccessories:(id)accessories error:(id *)error;
+ (id)logCategory;
+ (id)modelIDNamespace;
- (BOOL)areActivityNotificationsEnabledForPersonalRequests;
- (BOOL)isEnabled;
- (BOOL)isEqual:(id)equal;
- (HMDAssistantAccessControl)init;
- (HMDAssistantAccessControl)initWithCoder:(id)coder;
- (HMDAssistantAccessControl)initWithUser:(id)user appleAccessories:(id)accessories hapAccessoryIdentifiers:(id)identifiers enabled:(BOOL)enabled activityNotificationsEnabledForPersonalRequests:(BOOL)requests;
- (HMDAssistantAccessControl)initWithUser:(id)user model:(id)model;
- (HMDAssistantAccessControlModel)model;
- (HMDUser)user;
- (HMDUserAccessorySettingsDataController)settingsController;
- (NSArray)accessories;
- (NSString)propertyDescription;
- (NSUUID)modelID;
- (id)_appleMediaAccessories;
- (id)_hapAccessoryIdentifiers;
- (id)assistantAccessControlModelWithRemovedAccessories:(id)accessories;
- (id)logIdentifier;
- (id)transactionWithObjectChangeType:(unint64_t)type;
- (unint64_t)cachedHash;
- (void)_populateModel:(void *)model withAccessoryIdsFromAccessories:;
- (void)addAccessory:(id)accessory checkForSupport:(BOOL)support withError:(id *)error;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)handleRemovedAccessory:(id)accessory;
- (void)notifyClientOfUpdateWithMessage:(id)message;
- (void)removeAccessory:(id)accessory;
- (void)setActivityNotificationsEnabledForPersonalRequests:(BOOL)requests;
- (void)setAppleMediaAccessories:(id)accessories;
- (void)setEnabled:(BOOL)enabled;
- (void)setHapAccessoryIdentifiers:(id)identifiers;
- (void)setOptions:(unint64_t)options;
- (void)setUser:(id)user;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
@end

@implementation HMDAssistantAccessControl

- (HMDUserAccessorySettingsDataController)settingsController
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsController);

  return WeakRetained;
}

- (void)encodeWithCoder:(id)coder
{
  v29 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  user = [(HMDAssistantAccessControl *)self user];
  [coderCopy encodeConditionalObject:user forKey:*MEMORY[0x277CCE7A0]];

  isEnabled = [(HMDAssistantAccessControl *)self isEnabled];
  [coderCopy encodeBool:isEnabled forKey:*MEMORY[0x277CCF268]];
  options = [(HMDAssistantAccessControl *)self options];
  [coderCopy encodeInteger:options forKey:*MEMORY[0x277CCF270]];
  areActivityNotificationsEnabledForPersonalRequests = [(HMDAssistantAccessControl *)self areActivityNotificationsEnabledForPersonalRequests];
  [coderCopy encodeBool:areActivityNotificationsEnabledForPersonalRequests forKey:*MEMORY[0x277CCF260]];
  accessories = [(HMDAssistantAccessControl *)self accessories];
  array = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = accessories;
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
          [array addObject:{v16, v24}];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  hmd_isForXPCTransport = [coderCopy hmd_isForXPCTransport];
  v20 = *MEMORY[0x277CCF258];
  if (hmd_isForXPCTransport)
  {
    [coderCopy hm_encodeArrayOfConditionalObjects:v11 forKey:v20];
  }

  else
  {
    [coderCopy hm_encodeArrayOfConditionalObjects:array forKey:v20];
    _hapAccessoryIdentifiers = [(HMDAssistantAccessControl *)self _hapAccessoryIdentifiers];
    v22 = [_hapAccessoryIdentifiers na_map:&__block_literal_global_78_262013];

    [coderCopy encodeObject:v22 forKey:@"HMD.ac.siriEndpointIdentifiers"];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)_hapAccessoryIdentifiers
{
  if (self)
  {
    os_unfair_lock_lock_with_options();
    allObjects = [*(self + 24) allObjects];
    os_unfair_lock_unlock((self + 8));
  }

  else
  {
    allObjects = 0;
  }

  return allObjects;
}

- (HMDAssistantAccessControl)initWithCoder:(id)coder
{
  v25[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCE7A0]];
  v6 = [(HMDAssistantAccessControl *)self initWithUser:v5];
  if (v6)
  {
    v6->_enabled = [coderCopy decodeBoolForKey:*MEMORY[0x277CCF268]];
    v6->_options = [coderCopy decodeIntegerForKey:*MEMORY[0x277CCF270]];
    v7 = *MEMORY[0x277CCF260];
    v6->_activityNotificationsEnabledForPersonalRequests = [coderCopy containsValueForKey:*MEMORY[0x277CCF260]] ? objc_msgSend(coderCopy, "decodeBoolForKey:", v7) : 1;
    v8 = *MEMORY[0x277CCF258];
    if ([coderCopy containsValueForKey:*MEMORY[0x277CCF258]])
    {
      v9 = [coderCopy hm_decodeArrayOfConditionalObjects:objc_opt_class() forKey:v8];
      v10 = [v9 mutableCopy];

      v11 = [coderCopy hm_decodeArrayOfConditionalObjects:objc_opt_class() forKey:@"HMD.ac.homepods"];
      if (v11)
      {
        [v10 addObjectsFromArray:v11];
      }

      v12 = [coderCopy hm_decodeArrayOfConditionalObjects:objc_opt_class() forKey:@"HMD.ac.homepods_6_1"];
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
      v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"HMD.ac.siriEndpointIdentifiers"];

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
  modelID = [(HMDAssistantAccessControl *)self modelID];
  uUIDString = [modelID UUIDString];

  return uUIDString;
}

- (id)assistantAccessControlModelWithRemovedAccessories:(id)accessories
{
  v50 = *MEMORY[0x277D85DE8];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  accessoriesCopy = accessories;
  v5 = [accessoriesCopy countByEnumeratingWithState:&v44 objects:v49 count:16];
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
          objc_enumerationMutation(accessoriesCopy);
        }

        v9 = *(*(&v44 + 1) + 8 * i);
        accessories = [(HMDAssistantAccessControl *)self accessories];
        LOBYTE(v9) = [accessories containsObject:v9];

        if (v9)
        {

          model = [(HMDAssistantAccessControl *)self model];
          accessoryModelIDs = [model accessoryModelIDs];
          v39 = [accessoryModelIDs mutableCopy];

          siriEndpointAccessoryModelUUIDs = [model siriEndpointAccessoryModelUUIDs];
          v38 = [siriEndpointAccessoryModelUUIDs mutableCopy];

          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v37 = accessoriesCopy;
          v15 = accessoriesCopy;
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
                accessoryModelIDs2 = [model accessoryModelIDs];
                uuid = [v20 uuid];
                uUIDString = [uuid UUIDString];
                v24 = [accessoryModelIDs2 containsObject:uUIDString];

                if (v24)
                {
                  uuid2 = [v20 uuid];
                  uUIDString2 = [uuid2 UUIDString];
                  [v39 removeObject:uUIDString2];
                }

                siriEndpointAccessoryModelUUIDs2 = [model siriEndpointAccessoryModelUUIDs];
                uuid3 = [v20 uuid];
                uUIDString3 = [uuid3 UUIDString];
                v30 = [siriEndpointAccessoryModelUUIDs2 containsObject:uUIDString3];

                if (v30)
                {
                  uuid4 = [v20 uuid];
                  uUIDString4 = [uuid4 UUIDString];
                  [v38 removeObject:uUIDString4];
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v40 objects:v48 count:16];
            }

            while (v17);
          }

          v12 = v39;
          v33 = [v39 copy];
          [model setAccessoryModelIDs:v33];

          v34 = [v38 copy];
          [model setSiriEndpointAccessoryModelUUIDs:v34];

          accessoriesCopy = v37;
          goto LABEL_22;
        }
      }

      v6 = [accessoriesCopy countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  model = 0;
  v12 = accessoriesCopy;
LABEL_22:

  v35 = *MEMORY[0x277D85DE8];

  return model;
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v89 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  v11 = valuesCopy;
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
    selfCopy = self;
    v82 = v13;
    v15 = v13;
    v16 = messageCopy;
    transactionResult = [v16 transactionResult];
    if ([v15 propertyWasSet:@"enabled"])
    {
      enabled = [v15 enabled];
      bOOLValue = [enabled BOOLValue];

      if (bOOLValue != [(HMDAssistantAccessControl *)selfCopy isEnabled])
      {
        [(HMDAssistantAccessControl *)selfCopy setEnabled:bOOLValue];
        [transactionResult markChanged];
      }
    }

    if ([v15 propertyWasSet:@"options"])
    {
      options = [v15 options];
      unsignedIntegerValue = [options unsignedIntegerValue];

      if ([(HMDAssistantAccessControl *)selfCopy options]!= unsignedIntegerValue)
      {
        [(HMDAssistantAccessControl *)selfCopy setOptions:unsignedIntegerValue];
        [transactionResult markChanged];
      }
    }

    if ([v15 propertyWasSet:@"activityNotificationsEnabledForPersonalRequests"])
    {
      activityNotificationsEnabledForPersonalRequests = [v15 activityNotificationsEnabledForPersonalRequests];
      bOOLValue2 = [activityNotificationsEnabledForPersonalRequests BOOLValue];

      if (bOOLValue2 != [(HMDAssistantAccessControl *)selfCopy areActivityNotificationsEnabledForPersonalRequests])
      {
        [(HMDAssistantAccessControl *)selfCopy setActivityNotificationsEnabledForPersonalRequests:bOOLValue2];
        [transactionResult markChanged];
      }
    }

    v80 = transactionResult;
    v81 = v16;
    if ([v15 propertyWasSet:@"accessoryModelIDs"])
    {
      accessoryModelIDs = [v15 accessoryModelIDs];
      v25 = __modelIDsFromModelIDStrings(accessoryModelIDs);

      v74 = v25;
      v26 = __accessoriesWithModelIDs(selfCopy, v25);
      _appleMediaAccessories = [(HMDAssistantAccessControl *)selfCopy _appleMediaAccessories];
      v27 = objc_autoreleasePoolPush();
      v28 = selfCopy;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        HMFGetLogIdentifier();
        v76 = messageCopy;
        v31 = v30 = updatedCopy;
        accessories = [(HMDAssistantAccessControl *)v28 accessories];
        *buf = 138543874;
        v84 = v31;
        v85 = 2112;
        v86 = v26;
        v87 = 2112;
        v88 = accessories;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Got access control update for apple media accessories: %@, allCurrent:%@", buf, 0x20u);

        updatedCopy = v30;
        messageCopy = v76;
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
        transactionResult = v80;
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
          v88 = _appleMediaAccessories;
          _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@Updated assistant access control apple media accessories to: %@, from: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v34);
        [(HMDAssistantAccessControl *)v35 setAppleMediaAccessories:v26];
        transactionResult = v80;
        [v80 markChanged];
      }

      v16 = v81;
    }

    if ([v15 propertyWasSet:@"siriEndpointAccessoryModelUUIDs"])
    {
      siriEndpointAccessoryModelUUIDs = [v15 siriEndpointAccessoryModelUUIDs];
      v43 = __modelIDsFromModelIDStrings(siriEndpointAccessoryModelUUIDs);

      v44 = __accessoriesWithModelIDs(selfCopy, v43);
      v45 = v44;
      if (selfCopy)
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
        v48 = selfCopy;
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

      v77 = messageCopy;
      _hapAccessoryIdentifiers = [(HMDAssistantAccessControl *)selfCopy _hapAccessoryIdentifiers];
      v52 = objc_autoreleasePoolPush();
      v53 = selfCopy;
      v54 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = HMFGetLogIdentifier();
        [(HMDAssistantAccessControl *)v53 accessories];
        v73 = v11;
        v56 = v43;
        v57 = _hapAccessoryIdentifiers;
        v59 = v58 = updatedCopy;
        *buf = 138543874;
        v84 = v55;
        v85 = 2112;
        v86 = v79;
        v87 = 2112;
        v88 = v59;
        _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_DEFAULT, "%{public}@Got access control update for hap accessories: %@, allCurrent:%@", buf, 0x20u);

        updatedCopy = v58;
        _hapAccessoryIdentifiers = v57;
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
        transactionResult = v80;
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
          v88 = _hapAccessoryIdentifiers;
          _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_DEFAULT, "%{public}@Updated assistant access control accessories to: %@ from: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v61);
        [(HMDAssistantAccessControl *)v62 setHapAccessoryIdentifiers:v43];
        transactionResult = v80;
        [v80 markChanged];
      }

      messageCopy = v77;
      v16 = v81;
    }

    if ([transactionResult changed])
    {
      [(HMDAssistantAccessControl *)selfCopy notifyClientOfUpdateWithMessage:v16];
    }

    responseHandler = [v16 responseHandler];

    if (responseHandler)
    {
      responseHandler2 = [v16 responseHandler];
      responseHandler2[2](responseHandler2, 0, 0);
    }

    user = [(HMDAssistantAccessControl *)selfCopy user];
    home = [user home];
    accessories2 = [(HMDAssistantAccessControl *)selfCopy accessories];
    [home userAssistantAccessControlDidUpdate:user accessories:accessories2];

    v13 = v82;
  }

  else
  {
    responseHandler3 = [messageCopy responseHandler];
    v40 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (responseHandler3)[2](responseHandler3, v40, 0);
  }

  v72 = *MEMORY[0x277D85DE8];
}

- (id)_appleMediaAccessories
{
  if (self)
  {
    os_unfair_lock_lock_with_options();
    allObjects = [*(self + 16) allObjects];
    os_unfair_lock_unlock((self + 8));
  }

  else
  {
    allObjects = 0;
  }

  return allObjects;
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

- (id)transactionWithObjectChangeType:(unint64_t)type
{
  v18 = *MEMORY[0x277D85DE8];
  user = [(HMDAssistantAccessControl *)self user];
  if (user)
  {
    v6 = [HMDAssistantAccessControlModel alloc];
    modelID = [(HMDAssistantAccessControl *)self modelID];
    uuid = [user uuid];
    v9 = [(HMDBackingStoreModelObject *)v6 initWithObjectChangeType:type uuid:modelID parentUUID:uuid];
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

  _appleMediaAccessories = [(HMDAssistantAccessControl *)self _appleMediaAccessories];
  [(HMDAssistantAccessControl *)self _populateModel:v3 withAccessoryIdsFromAccessories:_appleMediaAccessories];

  _hapAccessoryIdentifiers = [(HMDAssistantAccessControl *)self _hapAccessoryIdentifiers];
  v9 = [_hapAccessoryIdentifiers na_map:&__block_literal_global_58_262086];
  [v3 setSiriEndpointAccessoryModelUUIDs:v9];

  return v3;
}

- (void)_populateModel:(void *)model withAccessoryIdsFromAccessories:
{
  if (self)
  {
    v4 = a2;
    v6 = [model na_map:&__block_literal_global_47_262088];
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
  user = [(HMDAssistantAccessControl *)self user];
  if (user)
  {
    v3 = objc_alloc(MEMORY[0x277CCAD78]);
    v4 = +[HMDAssistantAccessControl modelIDNamespace];
    uuid = [user uuid];
    uUIDString = [uuid UUIDString];
    v7 = [uUIDString dataUsingEncoding:4];
    v8 = [v3 initWithNamespace:v4 data:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)notifyClientOfUpdateWithMessage:(id)message
{
  messageCopy = message;
  clientQueue = [(HMDAssistantAccessControl *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__HMDAssistantAccessControl_notifyClientOfUpdateWithMessage___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = messageCopy;
  v6 = messageCopy;
  dispatch_async(clientQueue, v7);
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

- (void)handleRemovedAccessory:(id)accessory
{
  accessoryCopy = accessory;
  clientQueue = [(HMDAssistantAccessControl *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HMDAssistantAccessControl_handleRemovedAccessory___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = accessoryCopy;
  selfCopy = self;
  v6 = accessoryCopy;
  dispatch_async(clientQueue, v7);
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

- (void)removeAccessory:(id)accessory
{
  v29 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v5 = accessoryCopy;
  if (accessoryCopy)
  {
    v6 = accessoryCopy;
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
      uuid = [v6 uuid];
      v12 = [(NSMutableSet *)hapAccessoryIdentifiers containsObject:uuid];

      v13 = self->_hapAccessoryIdentifiers;
      uuid2 = [v6 uuid];
      [(NSMutableSet *)v13 removeObject:uuid2];

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
    selfCopy = self;
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

- (void)addAccessory:(id)accessory checkForSupport:(BOOL)support withError:(id *)error
{
  supportCopy = support;
  v44 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  if (accessoryCopy)
  {
    if (!supportCopy || [HMDAssistantAccessControl isAccessorySupported:accessoryCopy])
    {
      v9 = accessoryCopy;
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
        uuid = [v13 uuid];
        [(NSMutableSet *)hapAccessoryIdentifiers addObject:uuid];
      }

      else
      {
        if ((v14 & 1) == 0)
        {
          v36 = objc_autoreleasePoolPush();
          selfCopy = self;
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
          if (error)
          {
            *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:93];
          }

          goto LABEL_21;
        }

        p_lock = &self->_lock;
        os_unfair_lock_lock_with_options();
        [(NSMutableSet *)self->_appleMediaAccessories addObject:v13];
      }

      os_unfair_lock_unlock(p_lock);
      v27 = objc_autoreleasePoolPush();
      selfCopy2 = self;
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
    selfCopy3 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      v40 = 138543618;
      v41 = v34;
      v42 = 2112;
      v43 = accessoryCopy;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Accessory not supported: %@", &v40, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    if (error)
    {
      v26 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:9002];
      goto LABEL_26;
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      uuid2 = [0 uuid];
      uUIDString = [uuid2 UUIDString];
      v40 = 138543618;
      v41 = v23;
      v42 = 2112;
      v43 = uUIDString;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Failed to lookup new accessory with identifier: %@", &v40, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    if (error)
    {
      v26 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:9003];
LABEL_26:
      *error = v26;
    }
  }

LABEL_27:

  v35 = *MEMORY[0x277D85DE8];
}

- (void)setAppleMediaAccessories:(id)accessories
{
  if (accessories)
  {
    v4 = [MEMORY[0x277CBEB58] setWithArray:?];
    os_unfair_lock_lock_with_options();
    appleMediaAccessories = self->_appleMediaAccessories;
    self->_appleMediaAccessories = v4;

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)setHapAccessoryIdentifiers:(id)identifiers
{
  if (identifiers)
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
  settingsController = [(HMDAssistantAccessControl *)self settingsController];
  v5 = settingsController;
  if (settingsController)
  {
    assistantAccessControlAccessoriesToEncode = [settingsController assistantAccessControlAccessoriesToEncode];
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(assistantAccessControlAccessoriesToEncode, "count")}];
    user = [(HMDAssistantAccessControl *)self user];
    home = [user home];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = assistantAccessControlAccessoriesToEncode;
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

          v14 = [home accessoryWithUUID:{*(*(&v23 + 1) + 8 * i), v23}];
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
    array = [MEMORY[0x277CBEA60] array];
    array2 = [MEMORY[0x277CBEA60] array];
    os_unfair_lock_lock_with_options();
    allObjects = [(NSMutableSet *)self->_hapAccessoryIdentifiers allObjects];

    os_unfair_lock_unlock(&self->_lock);
    if ([allObjects count])
    {
      v19 = __accessoriesWithModelIDs(self, allObjects);

      array = v19;
    }

    os_unfair_lock_lock_with_options();
    allObjects2 = [(NSMutableSet *)self->_appleMediaAccessories allObjects];
    v15 = [allObjects2 arrayByAddingObjectsFromArray:array];

    os_unfair_lock_unlock(&self->_lock);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)setActivityNotificationsEnabledForPersonalRequests:(BOOL)requests
{
  os_unfair_lock_lock_with_options();
  self->_activityNotificationsEnabledForPersonalRequests = requests;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)areActivityNotificationsEnabledForPersonalRequests
{
  settingsController = [(HMDAssistantAccessControl *)self settingsController];
  v4 = settingsController;
  if (settingsController)
  {
    activityNotificationsEnabledForPersonalRequests = [settingsController assistantAccessControlActivityNotificationsEnabledForPersonalRequests];
  }

  else
  {
    os_unfair_lock_lock_with_options();
    activityNotificationsEnabledForPersonalRequests = self->_activityNotificationsEnabledForPersonalRequests;
    os_unfair_lock_unlock(&self->_lock);
  }

  return activityNotificationsEnabledForPersonalRequests & 1;
}

- (void)setOptions:(unint64_t)options
{
  os_unfair_lock_lock_with_options();
  self->_options = options;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setEnabled:(BOOL)enabled
{
  os_unfair_lock_lock_with_options();
  self->_enabled = enabled;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isEnabled
{
  settingsController = [(HMDAssistantAccessControl *)self settingsController];
  v4 = settingsController;
  if (settingsController)
  {
    assistantAccessControlAccessoriesToEncode = [settingsController assistantAccessControlAccessoriesToEncode];
    enabled = [assistantAccessControlAccessoriesToEncode count] != 0;
  }

  else
  {
    os_unfair_lock_lock_with_options();
    enabled = self->_enabled;
    os_unfair_lock_unlock(&self->_lock);
  }

  return enabled;
}

- (void)setUser:(id)user
{
  obj = user;
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
  accessories = [(HMDAssistantAccessControl *)self accessories];
  v8 = [v3 stringWithFormat:@" Enabled = %@, Options = %@, Activity Notifications Enabled for Personal Requests = %@, Accessories = %@", v4, v5, v6, accessories];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      user = [(HMDAssistantAccessControl *)self user];
      user2 = [(HMDAssistantAccessControl *)v6 user];
      v9 = user2;
      v10 = 0;
      if (user && user2)
      {
        if (HMFEqualObjects() && (v11 = [(HMDAssistantAccessControl *)self isEnabled], v11 == [(HMDAssistantAccessControl *)v6 isEnabled]) && (v12 = [(HMDAssistantAccessControl *)self options], v12 == [(HMDAssistantAccessControl *)v6 options]) && (v13 = [(HMDAssistantAccessControl *)self areActivityNotificationsEnabledForPersonalRequests], v13 == [(HMDAssistantAccessControl *)v6 areActivityNotificationsEnabledForPersonalRequests]))
        {
          v15 = MEMORY[0x277CBEB98];
          accessories = [(HMDAssistantAccessControl *)self accessories];
          v17 = [v15 setWithArray:accessories];

          v18 = MEMORY[0x277CBEB98];
          accessories2 = [(HMDAssistantAccessControl *)v6 accessories];
          v20 = [v18 setWithArray:accessories2];

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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = HMDAssistantAccessControl;
  [(HMDAssistantAccessControl *)&v4 dealloc];
}

- (HMDAssistantAccessControl)initWithUser:(id)user appleAccessories:(id)accessories hapAccessoryIdentifiers:(id)identifiers enabled:(BOOL)enabled activityNotificationsEnabledForPersonalRequests:(BOOL)requests
{
  userCopy = user;
  accessoriesCopy = accessories;
  identifiersCopy = identifiers;
  v27.receiver = self;
  v27.super_class = HMDAssistantAccessControl;
  v15 = [(HMDAssistantAccessControl *)&v27 init];
  v16 = v15;
  if (v15)
  {
    v15->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v15->_user, userCopy);
    v16->_cachedHash = [userCopy hash];
    v16->_enabled = enabled;
    v16->_activityNotificationsEnabledForPersonalRequests = requests;
    v17 = [MEMORY[0x277CBEB58] setWithArray:accessoriesCopy];
    appleMediaAccessories = v16->_appleMediaAccessories;
    v16->_appleMediaAccessories = v17;

    v19 = [MEMORY[0x277CBEB58] setWithArray:identifiersCopy];
    hapAccessoryIdentifiers = v16->_hapAccessoryIdentifiers;
    v16->_hapAccessoryIdentifiers = v19;

    v21 = HMDispatchQueueNameString();
    uTF8String = [v21 UTF8String];
    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_create(uTF8String, v23);
    clientQueue = v16->_clientQueue;
    v16->_clientQueue = v24;
  }

  return v16;
}

- (HMDAssistantAccessControl)initWithUser:(id)user model:(id)model
{
  v35 = *MEMORY[0x277D85DE8];
  userCopy = user;
  modelCopy = model;
  v8 = modelCopy;
  if (modelCopy)
  {
    enabled = [modelCopy enabled];
    bOOLValue = [enabled BOOLValue];

    v11 = [(HMDAssistantAccessControl *)self initWithUser:userCopy appleAccessories:MEMORY[0x277CBEBF8] enabled:bOOLValue];
    if (v11)
    {
      options = [v8 options];
      v11->_options = [options unsignedIntegerValue];

      activityNotificationsEnabledForPersonalRequests = [v8 activityNotificationsEnabledForPersonalRequests];
      v11->_activityNotificationsEnabledForPersonalRequests = [activityNotificationsEnabledForPersonalRequests BOOLValue];

      accessoryModelIDs = [v8 accessoryModelIDs];
      v15 = __modelIDsFromModelIDStrings(accessoryModelIDs);

      v16 = [MEMORY[0x277CBEB58] set];
      hapAccessoryIdentifiers = v11->_hapAccessoryIdentifiers;
      v11->_hapAccessoryIdentifiers = v16;

      siriEndpointAccessoryModelUUIDs = [v8 siriEndpointAccessoryModelUUIDs];
      v19 = __modelIDsFromModelIDStrings(siriEndpointAccessoryModelUUIDs);

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

    selfCopy = v11;
    v27 = selfCopy;
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    selfCopy = self;
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

+ (HMDAssistantAccessControl)accessControlWithMessage:(id)message user:(id)user currentAccessories:(id)accessories error:(id *)error
{
  v150[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  userCopy = user;
  accessoriesCopy = accessories;
  v13 = [messageCopy dataForKey:*MEMORY[0x277CD12F8]];
  if (v13)
  {
    v123 = userCopy;
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
      v20 = [messageCopy arrayForKey:*MEMORY[0x277CD12D8]];
      errorCopy = error;
      if (v20)
      {
        home = [v123 home];
        v124 = [accessoriesCopy na_map:&__block_literal_global_262147];
        v21 = [messageCopy arrayForKey:*MEMORY[0x277CD12E0]];
        v22 = [messageCopy arrayForKey:*MEMORY[0x277CD12E8]];
        if ([v21 count])
        {
          v23 = 1;
        }

        else
        {
          v23 = [v22 count] != 0;
        }

        v40 = objc_autoreleasePoolPush();
        selfCopy = self;
        v42 = HMFGetOSLogHandle();
        v43 = os_log_type_enabled(v42, OS_LOG_TYPE_INFO);
        v121 = v21;
        v122 = v22;
        v119 = v13;
        v120 = accessoriesCopy;
        if (!accessoriesCopy || !v23)
        {
          if (v43)
          {
            v75 = HMFGetLogIdentifier();
            *buf = 138543362;
            v145 = v75;
            _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_INFO, "%{public}@Gathering accessories for access control by legacy approach", buf, 0xCu);
          }

          v127 = selfCopy;
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
            v83 = [home accessoryWithUUID:v81];
            [v126 addAccessory:v83 checkForSupport:objc_msgSend(v124 withError:{"containsObject:", v82) ^ 1, errorCopy}];
            if (*errorCopy)
            {
              v98 = objc_autoreleasePoolPush();
              v99 = v127;
              v100 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
              {
                v101 = HMFGetLogIdentifier();
                v102 = *errorCopy;
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
              userCopy = v123;
LABEL_62:

              [v48 setUser:userCopy];
              accessories = [v48 accessories];
              v46 = [accessories na_map:&__block_literal_global_24_262159];

              v85 = objc_autoreleasePoolPush();
              v86 = v127;
              v87 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
              {
                HMFGetLogIdentifier();
                v89 = v88 = userCopy;
                *buf = 138543618;
                v145 = v89;
                v146 = 2112;
                v147 = v46;
                _os_log_impl(&dword_229538000, v87, OS_LOG_TYPE_INFO, "%{public}@Generated access control from message with accessories %@", buf, 0x16u);

                userCopy = v88;
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
          if (errorCopy)
          {
            [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:9024];
            *errorCopy = v30 = 0;
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
        v46 = v45 = selfCopy;
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
                  v57 = [home accessoryWithUUID:v56];
                  [v126 addAccessory:v57 checkForSupport:objc_msgSend(v124 withError:{"containsObject:", v56) ^ 1, errorCopy}];
                  if (*errorCopy)
                  {
                    v108 = objc_autoreleasePoolPush();
                    v109 = v127;
                    v110 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
                    {
                      v111 = HMFGetLogIdentifier();
                      v112 = *errorCopy;
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
            v116 = messageCopy;

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
                  uuid = [v63 uuid];
                  v65 = [v49 containsObject:uuid];

                  if (v65)
                  {
                    v66 = objc_autoreleasePoolPush();
                    v67 = v127;
                    v68 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
                    {
                      v69 = HMFGetLogIdentifier();
                      uuid2 = [v63 uuid];
                      *buf = 138543618;
                      v145 = v69;
                      v146 = 2112;
                      v147 = uuid2;
                      _os_log_impl(&dword_229538000, v68, OS_LOG_TYPE_INFO, "%{public}@Removing existing accessory with identifier: %@", buf, 0x16u);

                      v48 = v126;
                    }

                    objc_autoreleasePoolPop(v66);
                  }

                  else
                  {
                    [v48 addAccessory:v63 checkForSupport:0 withError:errorCopy];
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
            messageCopy = v116;
            v20 = v117;
            userCopy = v123;
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
          if (errorCopy)
          {
            *errorCopy = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:9023];
          }

LABEL_90:

          v30 = 0;
LABEL_91:
          userCopy = v123;
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
          userCopy = v123;
          if (errorCopy)
          {
            [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:9022];
            *errorCopy = v30 = 0;
          }

          else
          {
            v30 = 0;
          }
        }

LABEL_92:

        v13 = v119;
        accessoriesCopy = v120;
      }

      else
      {
        v35 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v38 = HMFGetLogIdentifier();
          messagePayload = [messageCopy messagePayload];
          *buf = 138543618;
          v145 = v38;
          v146 = 2112;
          v147 = messagePayload;
          _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Missing access control accessories in message payload: %@", buf, 0x16u);

          v20 = 0;
        }

        objc_autoreleasePoolPop(v35);
        if (error)
        {
          [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
          *error = v30 = 0;
        }

        else
        {
          v30 = 0;
        }

        userCopy = v123;
      }
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543362;
        v145 = v34;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Invalid access control in message payload", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v31);
      if (error)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
        *error = v30 = 0;
      }

      else
      {
        v30 = 0;
      }

      userCopy = v123;
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v28 = v27 = userCopy;
      messagePayload2 = [messageCopy messagePayload];
      *buf = 138543618;
      v145 = v28;
      v146 = 2112;
      v147 = messagePayload2;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Missing serialized access control in message payload: %@", buf, 0x16u);

      userCopy = v27;
    }

    objc_autoreleasePoolPop(v24);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      *error = v30 = 0;
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

+ (BOOL)isAccessorySupported:(id)supported
{
  supportedCopy = supported;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = supportedCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v5;
  if (v5)
  {
    siriEndpointProfile = [v5 siriEndpointProfile];
    supportsAssistantAccessControl = siriEndpointProfile != 0;
  }

  else
  {
    v9 = supportedCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    siriEndpointProfile = v10;

    if (siriEndpointProfile && ([siriEndpointProfile capabilities], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
    {
      capabilities = [siriEndpointProfile capabilities];
      supportsAssistantAccessControl = [capabilities supportsAssistantAccessControl];
    }

    else
    {
      supportsAssistantAccessControl = [siriEndpointProfile isHomePod];
    }
  }

  return supportsAssistantAccessControl;
}

@end