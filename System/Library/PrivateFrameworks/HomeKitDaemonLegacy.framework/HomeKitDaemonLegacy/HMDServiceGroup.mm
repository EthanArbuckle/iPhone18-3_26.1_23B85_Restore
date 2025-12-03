@interface HMDServiceGroup
+ (id)logCategory;
- (HMDHome)home;
- (HMDServiceGroup)initWithCoder:(id)coder;
- (HMDServiceGroup)initWithName:(id)name uuid:(id)uuid home:(id)home queue:(id)queue;
- (NSArray)serviceUUIDs;
- (NSDictionary)assistantObject;
- (NSString)name;
- (NSString)urlString;
- (id)backingStoreObjects:(int64_t)objects;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)modelObjectWithChangeType:(unint64_t)type;
- (id)updateServiceGroupWithModel:(id)model message:(id)message;
- (void)_handleAddServiceRequest:(id)request;
- (void)_handleRemoveAppDataModel:(id)model message:(id)message;
- (void)_handleRemoveServiceRequest:(id)request;
- (void)_handleRenameRequest:(id)request;
- (void)_handleUpdateAppDataModel:(id)model message:(id)message;
- (void)_handleUpdateServicesTransaction:(id)transaction;
- (void)_registerForMessages;
- (void)_transactionServiceGroupUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)configure:(id)configure queue:(id)queue;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)fixupServiceGroup;
- (void)fixupServicesForReplacementAccessory:(id)accessory;
- (void)removeService:(id)service;
- (void)removeServicesForAccessory:(id)accessory;
- (void)setName:(id)name;
- (void)setServiceIfPresent:(id)present;
- (void)transactionObjectRemoved:(id)removed message:(id)message;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
@end

@implementation HMDServiceGroup

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)fixupServiceGroup
{
  v26 = *MEMORY[0x277D85DE8];
  v19 = 8;
  os_unfair_lock_lock_with_options();
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  allKeys = [(NSMutableDictionary *)self->_serviceMapping allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = *v22;
    obj = allKeys;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        v8 = [(NSMutableDictionary *)self->_serviceMapping objectForKey:v7, v19];
        uuid = [v8 uuid];
        uUIDString = [uuid UUIDString];
        v11 = [uUIDString isEqual:v7];

        if ((v11 & 1) == 0)
        {
          serviceMapping = self->_serviceMapping;
          uuid2 = [v8 uuid];
          uUIDString2 = [uuid2 UUIDString];
          [(NSMutableDictionary *)serviceMapping setObject:v8 forKey:uUIDString2];

          [(NSMutableDictionary *)self->_serviceMapping removeObjectForKey:v7];
        }
      }

      allKeys = obj;
      v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v4);
  }

  allKeys2 = [(NSMutableDictionary *)self->_serviceMapping allKeys];
  v16 = [allKeys2 mutableCopy];
  serviceUUIDs = self->_serviceUUIDs;
  self->_serviceUUIDs = v16;

  os_unfair_lock_unlock((self + v19));
  v18 = *MEMORY[0x277D85DE8];
}

- (id)backingStoreObjects:(int64_t)objects
{
  array = [MEMORY[0x277CBEB18] array];
  v6 = [(HMDServiceGroup *)self modelObjectWithChangeType:1];
  [array addObject:v6];

  appData = [(HMDServiceGroup *)self appData];

  if (objects >= 3 && appData)
  {
    appData2 = [(HMDServiceGroup *)self appData];
    v9 = [appData2 modelObjectWithChangeType:1];
    [array addObject:v9];
  }

  return array;
}

- (id)modelObjectWithChangeType:(unint64_t)type
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = [HMDServiceGroupModel alloc];
  uuid = [(HMDServiceGroup *)self uuid];
  home = [(HMDServiceGroup *)self home];
  uuid2 = [home uuid];
  v24 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:type uuid:uuid parentUUID:uuid2];

  v9 = MEMORY[0x277CBEB18];
  serviceUUIDs = [(HMDServiceGroup *)self serviceUUIDs];
  v11 = [v9 arrayWithCapacity:{objc_msgSend(serviceUUIDs, "count")}];

  v23 = 8;
  os_unfair_lock_lock_with_options();
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  allValues = [(NSMutableDictionary *)self->_serviceMapping allValues];
  v13 = [allValues countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(allValues);
        }

        v16 = [*(*(&v25 + 1) + 8 * i) modelObjectWithChangeType:{type, v23}];
        uuid3 = [v16 uuid];
        uUIDString = [uuid3 UUIDString];
        [v11 addObject:uUIDString];
      }

      v13 = [allValues countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  os_unfair_lock_unlock((self + v23));
  name = [(HMDServiceGroup *)self name];
  [(HMDServiceGroupModel *)v24 setName:name];

  v20 = [v11 copy];
  [(HMDServiceGroupModel *)v24 setServices:v20];

  v21 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)_handleRemoveAppDataModel:(id)model message:(id)message
{
  messageCopy = message;
  [(HMDServiceGroup *)self setAppData:0];
  transactionResult = [messageCopy transactionResult];
  [transactionResult markChanged];
  [messageCopy respondWithPayload:0];
}

- (void)_handleUpdateAppDataModel:(id)model message:(id)message
{
  v25 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  appData = [(HMDServiceGroup *)self appData];

  if (appData)
  {
    appData2 = [(HMDServiceGroup *)self appData];
    [appData2 updateWithModel:modelCopy];
  }

  else
  {
    v10 = [HMDApplicationData alloc];
    appDataDictionary = [modelCopy appDataDictionary];
    uuid = [(HMDServiceGroup *)self uuid];
    v13 = [(HMDApplicationData *)v10 initWithDictionary:appDataDictionary parentUUID:uuid];
    [(HMDServiceGroup *)self setAppData:v13];

    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = HMFGetLogIdentifier();
      appDataDictionary2 = [modelCopy appDataDictionary];
      v21 = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = appDataDictionary2;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Updating the application data : %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  transactionResult = [messageCopy transactionResult];
  [transactionResult markChanged];
  [messageCopy respondWithPayload:0];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdateServicesTransaction:(id)transaction
{
  v78 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  selfCopy = self;
  home = [(HMDServiceGroup *)self home];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = transactionCopy;
  v48 = [obj countByEnumeratingWithState:&v64 objects:v77 count:16];
  if (v48)
  {
    v46 = *v65;
    v44 = *MEMORY[0x277CFE810];
    do
    {
      for (i = 0; i != v48; i = i + 1)
      {
        if (*v65 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v64 + 1) + 8 * i);
        v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v6];
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        accessories = [home accessories];
        v9 = [accessories countByEnumeratingWithState:&v60 objects:v76 count:16];
        if (v9)
        {
          v10 = *v61;
          while (2)
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v61 != v10)
              {
                objc_enumerationMutation(accessories);
              }

              v12 = *(*(&v60 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v13 = v12;
              }

              else
              {
                v13 = 0;
              }

              v14 = v13;

              v15 = [v14 serviceWithUUID:v7];

              if (v15)
              {

                type = [v15 type];
                v17 = [type isEqualToString:v44];

                if ((v17 & 1) == 0)
                {
                  [dictionary setObject:v15 forKeyedSubscript:v6];
                }

                goto LABEL_20;
              }
            }

            v9 = [accessories countByEnumeratingWithState:&v60 objects:v76 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        v15 = 0;
LABEL_20:
      }

      v48 = [obj countByEnumeratingWithState:&v64 objects:v77 count:16];
    }

    while (v48);
  }

  v18 = [obj mutableCopy];
  os_unfair_lock_lock_with_options();
  allKeys = [(NSMutableDictionary *)selfCopy->_serviceMapping allKeys];
  [v18 removeObjectsInArray:allKeys];

  allKeys2 = [(NSMutableDictionary *)selfCopy->_serviceMapping allKeys];
  v45 = [allKeys2 mutableCopy];

  [v45 removeObjectsInArray:obj];
  v21 = [obj mutableCopy];
  serviceUUIDs = selfCopy->_serviceUUIDs;
  selfCopy->_serviceUUIDs = v21;

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v49 = v18;
  v23 = [v49 countByEnumeratingWithState:&v56 objects:v75 count:16];
  if (v23)
  {
    v24 = *v57;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v57 != v24)
        {
          objc_enumerationMutation(v49);
        }

        v26 = *(*(&v56 + 1) + 8 * k);
        v27 = [dictionary objectForKeyedSubscript:v26];
        if (v27)
        {
          [(NSMutableDictionary *)selfCopy->_serviceMapping setObject:v27 forKey:v26];
          v28 = objc_autoreleasePoolPush();
          v29 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = HMFGetLogIdentifier();
            name = selfCopy->_name;
            *buf = 138543874;
            v70 = v30;
            v71 = 2112;
            v72 = v26;
            v73 = 2112;
            v74 = name;
            _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@Add service uuid: %@ to group: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v28);
        }
      }

      v23 = [v49 countByEnumeratingWithState:&v56 objects:v75 count:16];
    }

    while (v23);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v32 = v45;
  v33 = [v32 countByEnumeratingWithState:&v52 objects:v68 count:16];
  if (v33)
  {
    v34 = *v53;
    do
    {
      for (m = 0; m != v33; ++m)
      {
        if (*v53 != v34)
        {
          objc_enumerationMutation(v32);
        }

        v36 = *(*(&v52 + 1) + 8 * m);
        v37 = [(NSMutableDictionary *)selfCopy->_serviceMapping objectForKey:v36];
        if (v37)
        {
          [(NSMutableDictionary *)selfCopy->_serviceMapping removeObjectForKey:v36];
          v38 = objc_autoreleasePoolPush();
          v39 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            v40 = HMFGetLogIdentifier();
            v41 = selfCopy->_name;
            *buf = 138543874;
            v70 = v40;
            v71 = 2112;
            v72 = v36;
            v73 = 2112;
            v74 = v41;
            _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@Remove service uuid: %@ from group: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v38);
        }
      }

      v33 = [v32 countByEnumeratingWithState:&v52 objects:v68 count:16];
    }

    while (v33);
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
  v42 = *MEMORY[0x277D85DE8];
}

- (void)_transactionServiceGroupUpdated:(id)updated newValues:(id)values message:(id)message
{
  messageCopy = message;
  v8 = [(HMDServiceGroup *)self updateServiceGroupWithModel:values message:messageCopy];
  [messageCopy respondWithPayload:0 error:v8];
}

- (id)updateServiceGroupWithModel:(id)model message:(id)message
{
  v24[1] = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  home = [(HMDServiceGroup *)self home];
  if (home)
  {
    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
  }

  name = [modelCopy name];
  if (name)
  {
    name2 = [(HMDServiceGroup *)self name];
    v12 = HMFEqualObjects();

    if ((v12 & 1) == 0)
    {
      hm_truncatedNameString = [name hm_truncatedNameString];

      name3 = [(HMDServiceGroup *)self name];
      v15 = [home replaceName:name3 withNewName:hm_truncatedNameString];

      [(HMDServiceGroup *)self setName:hm_truncatedNameString];
      v23 = *MEMORY[0x277CD0D58];
      spiClientIdentifier = [(HMDServiceGroup *)self spiClientIdentifier];
      v24[0] = spiClientIdentifier;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      logAndPostNotification(@"HMDServiceGroupNameChangedNotification", self, v17);

      name = hm_truncatedNameString;
    }
  }

  if (!v9)
  {
    services = [modelCopy services];

    if (services)
    {
      services2 = [modelCopy services];
      [(HMDServiceGroup *)self _handleUpdateServicesTransaction:services2];
    }

    transactionResult = [messageCopy transactionResult];
    [transactionResult markChanged];
    [transactionResult markSaveToAssistant];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)transactionObjectRemoved:(id)removed message:(id)message
{
  v24 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  messageCopy = message;
  v8 = removedCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    [(HMDServiceGroup *)self _handleRemoveAppDataModel:v10 message:messageCopy];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v18 = 138543874;
      v19 = v14;
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = objc_opt_class();
      v15 = v23;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectRemoved]", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v28 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = valuesCopy;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  if (v12)
  {
    [(HMDServiceGroup *)self _transactionServiceGroupUpdated:0 newValues:v12 message:messageCopy];
    v13 = valuesCopy;
  }

  else
  {
    v13 = valuesCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    if (v15)
    {
      [(HMDServiceGroup *)self _handleUpdateAppDataModel:v15 message:messageCopy];
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v22 = 138543874;
        v23 = v19;
        v24 = 2112;
        v25 = v13;
        v26 = 2112;
        v27 = objc_opt_class();
        v20 = v27;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectUpdated]", &v22, 0x20u);
      }

      objc_autoreleasePoolPop(v16);
      v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [messageCopy respondWithError:v13];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_handleRemoveServiceRequest:(id)request
{
  v46 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [requestCopy uuidForKey:*MEMORY[0x277CCF0B0]];
  v6 = [requestCopy numberForKey:*MEMORY[0x277CD25F8]];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v10 = [HMDService generateUUIDWithAccessoryUUID:v5 serviceID:v6];
    home = [(HMDServiceGroup *)self home];
    v11 = [HMDServiceGroupModel alloc];
    uuid = [(HMDServiceGroup *)self uuid];
    uuid2 = [home uuid];
    v31 = [(HMDBackingStoreModelObject *)v11 initWithObjectChangeType:2 uuid:uuid parentUUID:uuid2];

    os_unfair_lock_lock_with_options();
    serviceUUIDs = self->_serviceUUIDs;
    uUIDString = [v10 UUIDString];
    v16 = [(NSMutableArray *)serviceUUIDs containsObject:uUIDString];

    if (v16)
    {
      v17 = self->_serviceUUIDs;
      uUIDString2 = [v10 UUIDString];
      [(NSMutableArray *)v17 removeObject:uUIDString2];

      v19 = [(NSMutableArray *)self->_serviceUUIDs copy];
      [(HMDServiceGroupModel *)v31 setServices:v19];

      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v30 = v20;
        v22 = HMFGetLogIdentifier();
        name = self->_name;
        name = [home name];
        *buf = 138544386;
        v37 = v22;
        v38 = 2112;
        v39 = v7;
        v40 = 2112;
        v41 = v5;
        v42 = 2112;
        v43 = name;
        v44 = 2112;
        v45 = name;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Service %@:%@ does not exist in group %@ in home %@", buf, 0x34u);

        v20 = v30;
      }

      objc_autoreleasePoolPop(v20);
      v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      os_unfair_lock_unlock(&self->_lock);
      if (v25)
      {
        [requestCopy respondWithError:v25];
LABEL_14:

        goto LABEL_15;
      }
    }

    backingStore = [home backingStore];
    name2 = [requestCopy name];
    v28 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v25 = [backingStore transaction:name2 options:v28];

    [v25 add:v31];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __47__HMDServiceGroup__handleRemoveServiceRequest___block_invoke;
    v33[3] = &unk_279734D88;
    v33[4] = self;
    v34 = v10;
    v35 = requestCopy;
    [v25 run:v33];

    goto LABEL_14;
  }

  v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
  [requestCopy respondWithError:v9];

LABEL_15:
  v29 = *MEMORY[0x277D85DE8];
}

void __47__HMDServiceGroup__handleRemoveServiceRequest___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = *(a1 + 32);
    os_unfair_lock_lock_with_options();
    v4 = *(*(a1 + 32) + 16);
    v5 = [*(a1 + 40) UUIDString];
    [v4 addObject:v5];

    os_unfair_lock_unlock(v3 + 2);
    [*(a1 + 48) respondWithError:v6];
  }

  else
  {
    [*(a1 + 48) respondWithSuccess];
  }
}

- (void)_handleAddServiceRequest:(id)request
{
  v69 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [requestCopy uuidForKey:*MEMORY[0x277CCF0B0]];
  v6 = [requestCopy numberForKey:*MEMORY[0x277CD25F8]];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v55 = [HMDService generateUUIDWithAccessoryUUID:v5 serviceID:v6];
    home = [(HMDServiceGroup *)self home];
    v11 = [home accessoryWithUUID:v5];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    v53 = v14;
    v15 = [v14 serviceWithUUID:v55];
    v54 = v15;
    if (!v15)
    {
      v23 = objc_autoreleasePoolPush();
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        name = [home name];
        *buf = 138543874;
        v60 = v25;
        v61 = 2112;
        v62 = v55;
        v63 = 2112;
        v64 = name;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Service with UUID %@ does not exist in home %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v23);
      v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [requestCopy respondWithError:v22];
      goto LABEL_31;
    }

    type = [v15 type];
    v17 = [type isEqualToString:*MEMORY[0x277CFE810]];

    if (v17)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        name2 = [home name];
        *buf = 138543874;
        v60 = v20;
        v61 = 2112;
        v62 = v55;
        v63 = 2112;
        v64 = name2;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Rejecting attempt to associate acc info service with UUID %@ in home %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      [requestCopy respondWithError:v22];
      goto LABEL_31;
    }

    v27 = [HMDServiceGroupModel alloc];
    uuid = [(HMDServiceGroup *)self uuid];
    uuid2 = [home uuid];
    v22 = [(HMDBackingStoreModelObject *)v27 initWithObjectChangeType:2 uuid:uuid parentUUID:uuid2];

    os_unfair_lock_lock_with_options();
    v30 = [(NSMutableArray *)self->_serviceUUIDs count];
    if (v30 >= maximumServicesPerServiceGroup)
    {
      v38 = objc_autoreleasePoolPush();
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v50 = v38;
        v52 = HMFGetLogIdentifier();
        name = self->_name;
        name3 = [home name];
        *buf = 138544386;
        v60 = v52;
        v61 = 2112;
        v62 = v7;
        v63 = 2112;
        v64 = v5;
        v65 = 2112;
        v66 = name;
        v67 = 2112;
        v68 = name3;
        _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@Can't add service %@:%@ to service group %@ in home %@; already at maximum services for group", buf, 0x34u);

        v38 = v50;
      }

      objc_autoreleasePoolPop(v38);
      v37 = 49;
    }

    else
    {
      serviceUUIDs = self->_serviceUUIDs;
      uUIDString = [v55 UUIDString];
      LODWORD(serviceUUIDs) = [(NSMutableArray *)serviceUUIDs containsObject:uUIDString];

      if (!serviceUUIDs)
      {
        v43 = self->_serviceUUIDs;
        uUIDString2 = [v55 UUIDString];
        [(NSMutableArray *)v43 addObject:uUIDString2];

        v45 = [(NSMutableArray *)self->_serviceUUIDs copy];
        [(HMDServiceGroupModel *)v22 setServices:v45];

        os_unfair_lock_unlock(&self->_lock);
        goto LABEL_29;
      }

      v33 = objc_autoreleasePoolPush();
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v50 = v33;
        v51 = HMFGetLogIdentifier();
        v35 = self->_name;
        name4 = [home name];
        *buf = 138544386;
        v60 = v51;
        v61 = 2112;
        v62 = v7;
        v63 = 2112;
        v64 = v5;
        v65 = 2112;
        v66 = v35;
        v67 = 2112;
        v68 = name4;
        _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Service %@:%@ already exists in service group %@ in home %@", buf, 0x34u);

        v33 = v50;
      }

      objc_autoreleasePoolPop(v33);
      v37 = 1;
    }

    v42 = [MEMORY[0x277CCA9B8] hmErrorWithCode:{v37, v50}];
    os_unfair_lock_unlock(&self->_lock);
    if (v42)
    {
      [requestCopy respondWithError:v42];
LABEL_30:

LABEL_31:
      goto LABEL_32;
    }

LABEL_29:
    backingStore = [home backingStore];
    name5 = [requestCopy name];
    v48 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v42 = [backingStore transaction:name5 options:v48];

    [v42 add:v22];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __44__HMDServiceGroup__handleAddServiceRequest___block_invoke;
    v56[3] = &unk_279734D88;
    v56[4] = self;
    v57 = v55;
    v58 = requestCopy;
    [v42 run:v56];

    goto LABEL_30;
  }

  v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
  [requestCopy respondWithError:v9];

LABEL_32:
  v49 = *MEMORY[0x277D85DE8];
}

void __44__HMDServiceGroup__handleAddServiceRequest___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = *(a1 + 32);
    os_unfair_lock_lock_with_options();
    v4 = *(*(a1 + 32) + 16);
    v5 = [*(a1 + 40) UUIDString];
    [v4 removeObject:v5];

    os_unfair_lock_unlock(v3 + 2);
    [*(a1 + 48) respondWithError:v6];
  }

  else
  {
    [*(a1 + 48) respondWithSuccess];
  }
}

- (void)_registerForMessages
{
  v30 = *MEMORY[0x277D85DE8];
  home = [(HMDServiceGroup *)self home];
  v4 = home;
  if (home)
  {
    administratorHandler = [home administratorHandler];
    v6 = *MEMORY[0x277CD20A8];
    v7 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v27[0] = v7;
    v8 = [HMDXPCMessagePolicy policyWithEntitlements:1];
    v27[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    [administratorHandler registerForMessage:v6 receiver:self policies:v9 selector:sel__handleAddServiceRequest_];

    administratorHandler2 = [v4 administratorHandler];
    v11 = *MEMORY[0x277CD2528];
    v12 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v26[0] = v12;
    v13 = [HMDXPCMessagePolicy policyWithEntitlements:1];
    v26[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    [administratorHandler2 registerForMessage:v11 receiver:self policies:v14 selector:sel__handleRemoveServiceRequest_];

    administratorHandler3 = [v4 administratorHandler];
    v16 = *MEMORY[0x277CD2548];
    v17 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v18 = [HMDXPCMessagePolicy policyWithEntitlements:1, v17];
    v25[1] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
    [administratorHandler3 registerForMessage:v16 receiver:self policies:v19 selector:sel__handleRenameRequest_];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v23;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Not registering for messages as home is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  home = [(HMDServiceGroup *)self home];
  [coderCopy encodeConditionalObject:home forKey:@"home"];
  name = [(HMDServiceGroup *)self name];
  [coderCopy encodeObject:name forKey:*MEMORY[0x277CD25B8]];

  uuid = [(HMDServiceGroup *)self uuid];
  uUIDString = [uuid UUIDString];
  [coderCopy encodeObject:uUIDString forKey:*MEMORY[0x277CD25D8]];

  hmd_isForXPCTransport = [coderCopy hmd_isForXPCTransport];
  hmd_isForXPCTransportEntitledForSPIAccess = [coderCopy hmd_isForXPCTransportEntitledForSPIAccess];
  hmd_isForLocalStore = [coderCopy hmd_isForLocalStore];
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_serviceMapping allValues];
  if (hmd_isForLocalStore)
    v11 = {;
    [coderCopy hm_encodeArrayOfConditionalObjects:v11 forKey:*MEMORY[0x277CD25D0]];

    [coderCopy encodeObject:self->_serviceUUIDs forKey:*MEMORY[0x277CD25C8]];
  }

  else
    v12 = {;
    [coderCopy hm_encodeArrayOfConditionalObjects:v12 forKey:*MEMORY[0x277CD25D0]];
  }

  os_unfair_lock_unlock(&self->_lock);
  if (hmd_isForXPCTransport)
  {
    if (hmd_isForXPCTransportEntitledForSPIAccess)
    {
      hmd_clientIdentifier = @"com.apple.homekit-entitledclient.identifer";
      v14 = @"com.apple.homekit-entitledclient.identifer";
    }

    else
    {
      hmd_clientIdentifier = [coderCopy hmd_clientIdentifier];
    }

    appData = [(HMDServiceGroup *)self appData];
    v16 = [appData applicationDataForIdentifier:hmd_clientIdentifier];
    [coderCopy encodeObject:v16 forKey:@"HM.appData"];
  }

  else
  {
    hmd_clientIdentifier = [(HMDServiceGroup *)self appData];
    [coderCopy encodeObject:hmd_clientIdentifier forKey:@"HM.appDataRepository"];
  }
}

- (HMDServiceGroup)initWithCoder:(id)coder
{
  v51[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"home"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD25B8]];
  hm_truncatedNameString = [v6 hm_truncatedNameString];

  v8 = [coderCopy hm_decodeAndCacheUUIDFromStringForKey:*MEMORY[0x277CD25D8]];
  v9 = [(HMDServiceGroup *)self initWithName:hm_truncatedNameString uuid:v8 home:v5 queue:0];
  if (v9)
  {
    v45 = v8;
    v10 = [coderCopy hm_decodeArrayOfConditionalObjects:objc_opt_class() forKey:*MEMORY[0x277CD25D0]];
    v11 = MEMORY[0x277CBEB98];
    v51[0] = objc_opt_class();
    v51[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
    v13 = v11;
    v14 = v10;
    v15 = [v13 setWithArray:v12];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:*MEMORY[0x277CD25C8]];

    v17 = &OBJC_IVAR___HMDProcessExitInfoLogEvent__exitReason;
    if ([v10 count])
    {
      v40 = v16;
      v41 = v10;
      v42 = hm_truncatedNameString;
      v43 = v5;
      v44 = coderCopy;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v18 = v10;
      v19 = [v18 countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v47;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v47 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v46 + 1) + 8 * i);
            uuid = [v23 uuid];

            if (uuid)
            {
              serviceMapping = v9->_serviceMapping;
              uuid2 = [v23 uuid];
              uUIDString = [uuid2 UUIDString];
              [(NSMutableDictionary *)serviceMapping setObject:v23 forKey:uUIDString];
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v46 objects:v50 count:16];
        }

        while (v20);
      }

      allKeys = [(NSMutableDictionary *)v9->_serviceMapping allKeys];
      v29 = [allKeys mutableCopy];
      v17 = &OBJC_IVAR___HMDProcessExitInfoLogEvent__exitReason;
      serviceUUIDs = v9->_serviceUUIDs;
      v9->_serviceUUIDs = v29;

      v5 = v43;
      coderCopy = v44;
      v14 = v41;
      hm_truncatedNameString = v42;
      v16 = v40;
    }

    if ([v16 count])
    {
      [(HMDServiceGroup *)v9 _handleUpdateServicesTransaction:v16];
    }

    else
    {
      [(NSMutableDictionary *)v9->_serviceMapping allKeys];
      v32 = v31 = v16;
      v33 = [v32 mutableCopy];
      v34 = v17[388];
      v35 = *(&v9->super.super.isa + v34);
      *(&v9->super.super.isa + v34) = v33;

      v16 = v31;
    }

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.appDataRepository"];
    appData = v9->_appData;
    v9->_appData = v36;

    [(HMDApplicationData *)v9->_appData updateParentUUIDIfNil:v9->_uuid];
    v8 = v45;
  }

  v38 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)removeService:(id)service
{
  v18 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  if (serviceCopy)
  {
    os_unfair_lock_lock_with_options();
    serviceUUIDs = self->_serviceUUIDs;
    uuid = [serviceCopy uuid];
    uUIDString = [uuid UUIDString];
    [(NSMutableArray *)serviceUUIDs removeObject:uUIDString];

    serviceMapping = self->_serviceMapping;
    uuid2 = [serviceCopy uuid];
    uUIDString2 = [uuid2 UUIDString];
    [(NSMutableDictionary *)serviceMapping removeObjectForKey:uUIDString2];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Cannot remove nil service from service group", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)removeServicesForAccessory:(id)accessory
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  services = [accessory services];
  v5 = [services countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(services);
        }

        [(HMDServiceGroup *)self removeService:*(*(&v11 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [services countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  home = [(HMDServiceGroup *)self home];
  [home saveWithReason:@"kServiceRemovedFromGroupNotificationKey" postSyncNotification:1];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setServiceIfPresent:(id)present
{
  presentCopy = present;
  os_unfair_lock_lock_with_options();
  serviceUUIDs = self->_serviceUUIDs;
  uuid = [presentCopy uuid];
  uUIDString = [uuid UUIDString];
  LODWORD(serviceUUIDs) = [(NSMutableArray *)serviceUUIDs containsObject:uUIDString];

  if (serviceUUIDs)
  {
    serviceMapping = self->_serviceMapping;
    uuid2 = [presentCopy uuid];
    uUIDString2 = [uuid2 UUIDString];
    [(NSMutableDictionary *)serviceMapping setObject:presentCopy forKey:uUIDString2];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)fixupServicesForReplacementAccessory:(id)accessory
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  services = [accessory services];
  v5 = [services countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(services);
        }

        [(HMDServiceGroup *)self setServiceIfPresent:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [services countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleRenameRequest:(id)request
{
  v30 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [requestCopy stringForKey:*MEMORY[0x277CD25C0]];
  if (!v5)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = 20;
LABEL_7:
    home = [v11 hmErrorWithCode:v12];
    [requestCopy respondWithError:home];
    goto LABEL_12;
  }

  v6 = HMMaxLengthForNaming();
  if ([v5 length] > v6)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@New name is longer than the pre-defined max length", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = MEMORY[0x277CCA9B8];
    v12 = 46;
    goto LABEL_7;
  }

  home = [(HMDServiceGroup *)self home];
  name = [(HMDServiceGroup *)self name];
  v15 = [home replaceName:name withNewName:v5];

  if (v15)
  {
    [requestCopy respondWithError:v15];
  }

  else
  {
    v16 = [HMDServiceGroupModel alloc];
    uuid = [(HMDServiceGroup *)self uuid];
    uuid2 = [home uuid];
    v19 = [(HMDBackingStoreModelObject *)v16 initWithObjectChangeType:2 uuid:uuid parentUUID:uuid2];

    [(HMDServiceGroupModel *)v19 setName:v5];
    backingStore = [home backingStore];
    name2 = [requestCopy name];
    v22 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v23 = [backingStore transaction:name2 options:v22];

    [v23 add:v19];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __40__HMDServiceGroup__handleRenameRequest___block_invoke;
    v25[3] = &unk_2797358C8;
    v26 = requestCopy;
    v27 = v5;
    [v23 run:v25];
  }

LABEL_12:
  v24 = *MEMORY[0x277D85DE8];
}

void __40__HMDServiceGroup__handleRenameRequest___block_invoke(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *MEMORY[0x277D85DE8];
    v4 = *(a1 + 32);

    [v4 respondWithError:a2];
  }

  else
  {
    v5 = *(a1 + 40);
    v8 = *MEMORY[0x277CD25C0];
    v9[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [v2 respondWithPayload:v6];

    v7 = *MEMORY[0x277D85DE8];
  }
}

- (void)setName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  v4 = [nameCopy copy];
  name = self->_name;
  self->_name = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)name
{
  os_unfair_lock_lock_with_options();
  v3 = self->_name;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)serviceUUIDs
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_serviceUUIDs copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  v38 = *MEMORY[0x277D85DE8];
  v29 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v3 = MEMORY[0x277CCACA8];
  name = [(HMDServiceGroup *)self name];
  uuid = [(HMDServiceGroup *)self uuid];
  uUIDString = [uuid UUIDString];
  urlString = [(HMDServiceGroup *)self urlString];
  v28 = [v3 stringWithFormat:@"name: %@, uuid: %@, assistantIdentifier: %@", name, uUIDString, urlString];

  [v29 setObject:v28 forKeyedSubscript:*MEMORY[0x277D0F170]];
  os_unfair_lock_lock_with_options();
  v8 = [(NSMutableDictionary *)self->_serviceMapping copy];
  os_unfair_lock_unlock(&self->_lock);
  if ([v8 count])
  {
    v27 = v8;
    v32 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = [v8 allValues];
    v9 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v9)
    {
      v10 = *v34;
      v11 = *MEMORY[0x277CFE988];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v34 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v33 + 1) + 8 * i);
          accessory = [v13 accessory];
          serviceType = [v13 serviceType];
          if ([serviceType hasSuffix:v11])
          {
            v16 = [serviceType substringToIndex:{objc_msgSend(serviceType, "length") - objc_msgSend(v11, "length")}];

            serviceType = v16;
          }

          v17 = MEMORY[0x277CCACA8];
          uuid2 = [accessory uuid];
          uUIDString2 = [uuid2 UUIDString];
          instanceID = [v13 instanceID];
          v21 = [v17 stringWithFormat:@"Accessory: %@, serviceID: %@, type: %@", uUIDString2, instanceID, serviceType];
          [v32 addObject:v21];
        }

        v9 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v9);
    }

    [v29 setObject:v32 forKeyedSubscript:*MEMORY[0x277D0F150]];
    appData = [(HMDServiceGroup *)self appData];
    v23 = [appData dumpStateWithPrivacyLevel:level];
    [v29 setObject:v23 forKeyedSubscript:*MEMORY[0x277D0F050]];

    v8 = v27;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v29;
}

- (void)configure:(id)configure queue:(id)queue
{
  queueCopy = queue;
  [(HMDServiceGroup *)self setMsgDispatcher:configure];
  [(HMDServiceGroup *)self setWorkQueue:queueCopy];

  [(HMDServiceGroup *)self _registerForMessages];
}

- (void)dealloc
{
  msgDispatcher = [(HMDServiceGroup *)self msgDispatcher];
  [msgDispatcher deregisterReceiver:self];

  home = [(HMDServiceGroup *)self home];
  administratorHandler = [home administratorHandler];
  [administratorHandler deregisterReceiver:self];

  v6.receiver = self;
  v6.super_class = HMDServiceGroup;
  [(HMDServiceGroup *)&v6 dealloc];
}

- (HMDServiceGroup)initWithName:(id)name uuid:(id)uuid home:(id)home queue:(id)queue
{
  nameCopy = name;
  uuidCopy = uuid;
  homeCopy = home;
  queueCopy = queue;
  v31.receiver = self;
  v31.super_class = HMDServiceGroup;
  v14 = [(HMDServiceGroup *)&v31 init];
  if (v14)
  {
    v15 = [nameCopy copy];
    name = v14->_name;
    v14->_name = v15;

    if (uuidCopy)
    {
      uUID = [uuidCopy copy];
    }

    else
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
    }

    v18 = uUID;
    v19 = [MEMORY[0x277D0F890] hmf_cachedInstanceForNSUUID:uUID];
    uuid = v14->_uuid;
    v14->_uuid = v19;

    v21 = spiClientIdentifierForUUID(v14->_uuid);
    v22 = [MEMORY[0x277D0F890] hmf_cachedInstanceForNSUUID:v21];
    spiClientIdentifier = v14->_spiClientIdentifier;
    v14->_spiClientIdentifier = v22;

    objc_storeStrong(&v14->_workQueue, queue);
    objc_storeWeak(&v14->_home, homeCopy);
    msgDispatcher = [homeCopy msgDispatcher];
    msgDispatcher = v14->_msgDispatcher;
    v14->_msgDispatcher = msgDispatcher;

    array = [MEMORY[0x277CBEB18] array];
    serviceUUIDs = v14->_serviceUUIDs;
    v14->_serviceUUIDs = array;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    serviceMapping = v14->_serviceMapping;
    v14->_serviceMapping = dictionary;

    if (queueCopy)
    {
      [(HMDServiceGroup *)v14 _registerForMessages];
    }
  }

  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t33 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t33, &__block_literal_global_21466);
  }

  v3 = logCategory__hmf_once_v34;

  return v3;
}

uint64_t __30__HMDServiceGroup_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v34;
  logCategory__hmf_once_v34 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (NSDictionary)assistantObject
{
  v30 = *MEMORY[0x277D85DE8];
  home = [(HMDServiceGroup *)self home];
  name = [(HMDServiceGroup *)self name];
  v5 = name;
  if (name && home)
  {
    name2 = [home name];

    if (name2)
    {
      v21[0] = *MEMORY[0x277D48150];
      v7 = [(HMDServiceGroup *)self name:@"objectType"];
      v21[1] = v7;
      v20[2] = @"objectIdentifier";
      urlString = [(HMDServiceGroup *)self urlString];
      v21[2] = urlString;
      v20[3] = @"objectHome";
      name3 = [home name];
      v21[3] = name3;
      v20[4] = @"objectHomeIdentifier";
      urlString2 = [home urlString];
      v21[4] = urlString2;
      v21[5] = self;
      v20[5] = @"objectReference";
      v20[6] = @"objectGroupType";
      v21[6] = *MEMORY[0x277D48190];
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:7];

      goto LABEL_9;
    }
  }

  else
  {
  }

  v12 = objc_autoreleasePoolPush();
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = HMFGetLogIdentifier();
    name4 = [(HMDServiceGroup *)self name];
    uuid = [(HMDServiceGroup *)self uuid];
    uUIDString = [uuid UUIDString];
    *buf = 138544130;
    v23 = v14;
    v24 = 2112;
    v25 = name4;
    v26 = 2112;
    v27 = uUIDString;
    v28 = 2112;
    v29 = home;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Skipping because attribute(s) is nil self %@/%@  self.home %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  v11 = 0;
LABEL_9:

  v18 = *MEMORY[0x277D85DE8];

  return v11;
}

- (NSString)urlString
{
  v2 = *MEMORY[0x277CCF2B0];
  uuid = [(HMDServiceGroup *)self uuid];
  v4 = hm_assistantIdentifier();

  return v4;
}

@end