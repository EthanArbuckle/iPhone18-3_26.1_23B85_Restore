@interface HMDServiceGroup
+ (id)logCategory;
- (HMDHome)home;
- (HMDServiceGroup)initWithCoder:(id)a3;
- (HMDServiceGroup)initWithName:(id)a3 uuid:(id)a4 home:(id)a5 queue:(id)a6;
- (NSArray)serviceUUIDs;
- (NSDictionary)assistantObject;
- (NSString)name;
- (NSString)urlString;
- (id)backingStoreObjects:(int64_t)a3;
- (id)dumpStateWithPrivacyLevel:(unint64_t)a3;
- (id)modelObjectWithChangeType:(unint64_t)a3;
- (id)updateServiceGroupWithModel:(id)a3 message:(id)a4;
- (void)_handleAddServiceRequest:(id)a3;
- (void)_handleRemoveAppDataModel:(id)a3 message:(id)a4;
- (void)_handleRemoveServiceRequest:(id)a3;
- (void)_handleRenameRequest:(id)a3;
- (void)_handleUpdateAppDataModel:(id)a3 message:(id)a4;
- (void)_handleUpdateServicesTransaction:(id)a3;
- (void)_registerForMessages;
- (void)_transactionServiceGroupUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)configure:(id)a3 queue:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)fixupServiceGroup;
- (void)fixupServicesForReplacementAccessory:(id)a3;
- (void)removeService:(id)a3;
- (void)removeServicesForAccessory:(id)a3;
- (void)setName:(id)a3;
- (void)setServiceIfPresent:(id)a3;
- (void)transactionObjectRemoved:(id)a3 message:(id)a4;
- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
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
  v3 = [(NSMutableDictionary *)self->_serviceMapping allKeys];
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = *v22;
    obj = v3;
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
        v9 = [v8 uuid];
        v10 = [v9 UUIDString];
        v11 = [v10 isEqual:v7];

        if ((v11 & 1) == 0)
        {
          serviceMapping = self->_serviceMapping;
          v13 = [v8 uuid];
          v14 = [v13 UUIDString];
          [(NSMutableDictionary *)serviceMapping setObject:v8 forKey:v14];

          [(NSMutableDictionary *)self->_serviceMapping removeObjectForKey:v7];
        }
      }

      v3 = obj;
      v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v4);
  }

  v15 = [(NSMutableDictionary *)self->_serviceMapping allKeys];
  v16 = [v15 mutableCopy];
  serviceUUIDs = self->_serviceUUIDs;
  self->_serviceUUIDs = v16;

  os_unfair_lock_unlock((self + v19));
  v18 = *MEMORY[0x277D85DE8];
}

- (id)backingStoreObjects:(int64_t)a3
{
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [(HMDServiceGroup *)self modelObjectWithChangeType:1];
  [v5 addObject:v6];

  v7 = [(HMDServiceGroup *)self appData];

  if (a3 >= 3 && v7)
  {
    v8 = [(HMDServiceGroup *)self appData];
    v9 = [v8 modelObjectWithChangeType:1];
    [v5 addObject:v9];
  }

  return v5;
}

- (id)modelObjectWithChangeType:(unint64_t)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = [HMDServiceGroupModel alloc];
  v6 = [(HMDServiceGroup *)self uuid];
  v7 = [(HMDServiceGroup *)self home];
  v8 = [v7 uuid];
  v24 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:a3 uuid:v6 parentUUID:v8];

  v9 = MEMORY[0x277CBEB18];
  v10 = [(HMDServiceGroup *)self serviceUUIDs];
  v11 = [v9 arrayWithCapacity:{objc_msgSend(v10, "count")}];

  v23 = 8;
  os_unfair_lock_lock_with_options();
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = [(NSMutableDictionary *)self->_serviceMapping allValues];
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = [*(*(&v25 + 1) + 8 * i) modelObjectWithChangeType:{a3, v23}];
        v17 = [v16 uuid];
        v18 = [v17 UUIDString];
        [v11 addObject:v18];
      }

      v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  os_unfair_lock_unlock((self + v23));
  v19 = [(HMDServiceGroup *)self name];
  [(HMDServiceGroupModel *)v24 setName:v19];

  v20 = [v11 copy];
  [(HMDServiceGroupModel *)v24 setServices:v20];

  v21 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)_handleRemoveAppDataModel:(id)a3 message:(id)a4
{
  v5 = a4;
  [(HMDServiceGroup *)self setAppData:0];
  v6 = [v5 transactionResult];
  [v6 markChanged];
  [v5 respondWithPayload:0];
}

- (void)_handleUpdateAppDataModel:(id)a3 message:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDServiceGroup *)self appData];

  if (v8)
  {
    v9 = [(HMDServiceGroup *)self appData];
    [v9 updateWithModel:v6];
  }

  else
  {
    v10 = [HMDApplicationData alloc];
    v11 = [v6 appDataDictionary];
    v12 = [(HMDServiceGroup *)self uuid];
    v13 = [(HMDApplicationData *)v10 initWithDictionary:v11 parentUUID:v12];
    [(HMDServiceGroup *)self setAppData:v13];

    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [v6 appDataDictionary];
      v21 = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Updating the application data : %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  v19 = [v7 transactionResult];
  [v19 markChanged];
  [v7 respondWithPayload:0];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdateServicesTransaction:(id)a3
{
  v78 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v51 = self;
  v47 = [(HMDServiceGroup *)self home];
  v50 = [MEMORY[0x277CBEB38] dictionary];
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v4;
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
        v8 = [v47 accessories];
        v9 = [v8 countByEnumeratingWithState:&v60 objects:v76 count:16];
        if (v9)
        {
          v10 = *v61;
          while (2)
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v61 != v10)
              {
                objc_enumerationMutation(v8);
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

                v16 = [v15 type];
                v17 = [v16 isEqualToString:v44];

                if ((v17 & 1) == 0)
                {
                  [v50 setObject:v15 forKeyedSubscript:v6];
                }

                goto LABEL_20;
              }
            }

            v9 = [v8 countByEnumeratingWithState:&v60 objects:v76 count:16];
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
  v19 = [(NSMutableDictionary *)v51->_serviceMapping allKeys];
  [v18 removeObjectsInArray:v19];

  v20 = [(NSMutableDictionary *)v51->_serviceMapping allKeys];
  v45 = [v20 mutableCopy];

  [v45 removeObjectsInArray:obj];
  v21 = [obj mutableCopy];
  serviceUUIDs = v51->_serviceUUIDs;
  v51->_serviceUUIDs = v21;

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
        v27 = [v50 objectForKeyedSubscript:v26];
        if (v27)
        {
          [(NSMutableDictionary *)v51->_serviceMapping setObject:v27 forKey:v26];
          v28 = objc_autoreleasePoolPush();
          v29 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = HMFGetLogIdentifier();
            name = v51->_name;
            *buf = 138543874;
            v70 = v30;
            v71 = 2112;
            v72 = v26;
            v73 = 2112;
            v74 = name;
            _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Add service uuid: %@ to group: %@", buf, 0x20u);
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
        v37 = [(NSMutableDictionary *)v51->_serviceMapping objectForKey:v36];
        if (v37)
        {
          [(NSMutableDictionary *)v51->_serviceMapping removeObjectForKey:v36];
          v38 = objc_autoreleasePoolPush();
          v39 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            v40 = HMFGetLogIdentifier();
            v41 = v51->_name;
            *buf = 138543874;
            v70 = v40;
            v71 = 2112;
            v72 = v36;
            v73 = 2112;
            v74 = v41;
            _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@Remove service uuid: %@ from group: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v38);
        }
      }

      v33 = [v32 countByEnumeratingWithState:&v52 objects:v68 count:16];
    }

    while (v33);
  }

  os_unfair_lock_unlock(&v51->_lock);
  v42 = *MEMORY[0x277D85DE8];
}

- (void)_transactionServiceGroupUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v7 = a5;
  v8 = [(HMDServiceGroup *)self updateServiceGroupWithModel:a4 message:v7];
  [v7 respondWithPayload:0 error:v8];
}

- (id)updateServiceGroupWithModel:(id)a3 message:(id)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDServiceGroup *)self home];
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
  }

  v10 = [v6 name];
  if (v10)
  {
    v11 = [(HMDServiceGroup *)self name];
    v12 = HMFEqualObjects();

    if ((v12 & 1) == 0)
    {
      v13 = [v10 hm_truncatedNameString];

      v14 = [(HMDServiceGroup *)self name];
      v15 = [v8 replaceName:v14 withNewName:v13];

      [(HMDServiceGroup *)self setName:v13];
      v23 = *MEMORY[0x277CD0D58];
      v16 = [(HMDServiceGroup *)self spiClientIdentifier];
      v24[0] = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      logAndPostNotification(@"HMDServiceGroupNameChangedNotification", self, v17);

      v10 = v13;
    }
  }

  if (!v9)
  {
    v18 = [v6 services];

    if (v18)
    {
      v19 = [v6 services];
      [(HMDServiceGroup *)self _handleUpdateServicesTransaction:v19];
    }

    v20 = [v7 transactionResult];
    [v20 markChanged];
    [v20 markSaveToAssistant];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)transactionObjectRemoved:(id)a3 message:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v6;
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
    [(HMDServiceGroup *)self _handleRemoveAppDataModel:v10 message:v7];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
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
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectRemoved]", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v7 respondWithError:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  if (v12)
  {
    [(HMDServiceGroup *)self _transactionServiceGroupUpdated:0 newValues:v12 message:v10];
    v13 = v9;
  }

  else
  {
    v13 = v9;
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
      [(HMDServiceGroup *)self _handleUpdateAppDataModel:v15 message:v10];
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = self;
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
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectUpdated]", &v22, 0x20u);
      }

      objc_autoreleasePoolPop(v16);
      v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v10 respondWithError:v13];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_handleRemoveServiceRequest:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uuidForKey:*MEMORY[0x277CCF0B0]];
  v6 = [v4 numberForKey:*MEMORY[0x277CD25F8]];
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
    v32 = [(HMDServiceGroup *)self home];
    v11 = [HMDServiceGroupModel alloc];
    v12 = [(HMDServiceGroup *)self uuid];
    v13 = [v32 uuid];
    v31 = [(HMDBackingStoreModelObject *)v11 initWithObjectChangeType:2 uuid:v12 parentUUID:v13];

    os_unfair_lock_lock_with_options();
    serviceUUIDs = self->_serviceUUIDs;
    v15 = [v10 UUIDString];
    v16 = [(NSMutableArray *)serviceUUIDs containsObject:v15];

    if (v16)
    {
      v17 = self->_serviceUUIDs;
      v18 = [v10 UUIDString];
      [(NSMutableArray *)v17 removeObject:v18];

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
        v24 = [v32 name];
        *buf = 138544386;
        v37 = v22;
        v38 = 2112;
        v39 = v7;
        v40 = 2112;
        v41 = v5;
        v42 = 2112;
        v43 = name;
        v44 = 2112;
        v45 = v24;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Service %@:%@ does not exist in group %@ in home %@", buf, 0x34u);

        v20 = v30;
      }

      objc_autoreleasePoolPop(v20);
      v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      os_unfair_lock_unlock(&self->_lock);
      if (v25)
      {
        [v4 respondWithError:v25];
LABEL_14:

        goto LABEL_15;
      }
    }

    v26 = [v32 backingStore];
    v27 = [v4 name];
    v28 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v25 = [v26 transaction:v27 options:v28];

    [v25 add:v31];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __47__HMDServiceGroup__handleRemoveServiceRequest___block_invoke;
    v33[3] = &unk_278688D58;
    v33[4] = self;
    v34 = v10;
    v35 = v4;
    [v25 run:v33];

    goto LABEL_14;
  }

  v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
  [v4 respondWithError:v9];

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

- (void)_handleAddServiceRequest:(id)a3
{
  v69 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uuidForKey:*MEMORY[0x277CCF0B0]];
  v6 = [v4 numberForKey:*MEMORY[0x277CD25F8]];
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
    v10 = [(HMDServiceGroup *)self home];
    v11 = [v10 accessoryWithUUID:v5];
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
        v26 = [v10 name];
        *buf = 138543874;
        v60 = v25;
        v61 = 2112;
        v62 = v55;
        v63 = 2112;
        v64 = v26;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Service with UUID %@ does not exist in home %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v23);
      v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v4 respondWithError:v22];
      goto LABEL_31;
    }

    v16 = [v15 type];
    v17 = [v16 isEqualToString:*MEMORY[0x277CFE810]];

    if (v17)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v21 = [v10 name];
        *buf = 138543874;
        v60 = v20;
        v61 = 2112;
        v62 = v55;
        v63 = 2112;
        v64 = v21;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Rejecting attempt to associate acc info service with UUID %@ in home %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      [v4 respondWithError:v22];
      goto LABEL_31;
    }

    v27 = [HMDServiceGroupModel alloc];
    v28 = [(HMDServiceGroup *)self uuid];
    v29 = [v10 uuid];
    v22 = [(HMDBackingStoreModelObject *)v27 initWithObjectChangeType:2 uuid:v28 parentUUID:v29];

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
        v41 = [v10 name];
        *buf = 138544386;
        v60 = v52;
        v61 = 2112;
        v62 = v7;
        v63 = 2112;
        v64 = v5;
        v65 = 2112;
        v66 = name;
        v67 = 2112;
        v68 = v41;
        _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@Can't add service %@:%@ to service group %@ in home %@; already at maximum services for group", buf, 0x34u);

        v38 = v50;
      }

      objc_autoreleasePoolPop(v38);
      v37 = 49;
    }

    else
    {
      serviceUUIDs = self->_serviceUUIDs;
      v32 = [v55 UUIDString];
      LODWORD(serviceUUIDs) = [(NSMutableArray *)serviceUUIDs containsObject:v32];

      if (!serviceUUIDs)
      {
        v43 = self->_serviceUUIDs;
        v44 = [v55 UUIDString];
        [(NSMutableArray *)v43 addObject:v44];

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
        v36 = [v10 name];
        *buf = 138544386;
        v60 = v51;
        v61 = 2112;
        v62 = v7;
        v63 = 2112;
        v64 = v5;
        v65 = 2112;
        v66 = v35;
        v67 = 2112;
        v68 = v36;
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Service %@:%@ already exists in service group %@ in home %@", buf, 0x34u);

        v33 = v50;
      }

      objc_autoreleasePoolPop(v33);
      v37 = 1;
    }

    v42 = [MEMORY[0x277CCA9B8] hmErrorWithCode:{v37, v50}];
    os_unfair_lock_unlock(&self->_lock);
    if (v42)
    {
      [v4 respondWithError:v42];
LABEL_30:

LABEL_31:
      goto LABEL_32;
    }

LABEL_29:
    v46 = [v10 backingStore];
    v47 = [v4 name];
    v48 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v42 = [v46 transaction:v47 options:v48];

    [v42 add:v22];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __44__HMDServiceGroup__handleAddServiceRequest___block_invoke;
    v56[3] = &unk_278688D58;
    v56[4] = self;
    v57 = v55;
    v58 = v4;
    [v42 run:v56];

    goto LABEL_30;
  }

  v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
  [v4 respondWithError:v9];

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
  v3 = [(HMDServiceGroup *)self home];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 administratorHandler];
    v6 = *MEMORY[0x277CD20A8];
    v7 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v27[0] = v7;
    v8 = [HMDXPCMessagePolicy policyWithEntitlements:1];
    v27[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    [v5 registerForMessage:v6 receiver:self policies:v9 selector:sel__handleAddServiceRequest_];

    v10 = [v4 administratorHandler];
    v11 = *MEMORY[0x277CD2528];
    v12 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v26[0] = v12;
    v13 = [HMDXPCMessagePolicy policyWithEntitlements:1];
    v26[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    [v10 registerForMessage:v11 receiver:self policies:v14 selector:sel__handleRemoveServiceRequest_];

    v15 = [v4 administratorHandler];
    v16 = *MEMORY[0x277CD2548];
    v17 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v18 = [HMDXPCMessagePolicy policyWithEntitlements:1, v17];
    v25[1] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
    [v15 registerForMessage:v16 receiver:self policies:v19 selector:sel__handleRenameRequest_];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Not registering for messages as home is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)a3
{
  v17 = a3;
  v4 = [(HMDServiceGroup *)self home];
  [v17 encodeConditionalObject:v4 forKey:@"home"];
  v5 = [(HMDServiceGroup *)self name];
  [v17 encodeObject:v5 forKey:*MEMORY[0x277CD25B8]];

  v6 = [(HMDServiceGroup *)self uuid];
  v7 = [v6 UUIDString];
  [v17 encodeObject:v7 forKey:*MEMORY[0x277CD25D8]];

  v8 = [v17 hmd_isForXPCTransport];
  v9 = [v17 hmd_isForXPCTransportEntitledForSPIAccess];
  v10 = [v17 hmd_isForLocalStore];
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_serviceMapping allValues];
  if (v10)
    v11 = {;
    [v17 hm_encodeArrayOfConditionalObjects:v11 forKey:*MEMORY[0x277CD25D0]];

    [v17 encodeObject:self->_serviceUUIDs forKey:*MEMORY[0x277CD25C8]];
  }

  else
    v12 = {;
    [v17 hm_encodeArrayOfConditionalObjects:v12 forKey:*MEMORY[0x277CD25D0]];
  }

  os_unfair_lock_unlock(&self->_lock);
  if (v8)
  {
    if (v9)
    {
      v13 = @"com.apple.homekit-entitledclient.identifer";
      v14 = @"com.apple.homekit-entitledclient.identifer";
    }

    else
    {
      v13 = [v17 hmd_clientIdentifier];
    }

    v15 = [(HMDServiceGroup *)self appData];
    v16 = [v15 applicationDataForIdentifier:v13];
    [v17 encodeObject:v16 forKey:@"HM.appData"];
  }

  else
  {
    v13 = [(HMDServiceGroup *)self appData];
    [v17 encodeObject:v13 forKey:@"HM.appDataRepository"];
  }
}

- (HMDServiceGroup)initWithCoder:(id)a3
{
  v51[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"home"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD25B8]];
  v7 = [v6 hm_truncatedNameString];

  v8 = [v4 hm_decodeAndCacheUUIDFromStringForKey:*MEMORY[0x277CD25D8]];
  v9 = [(HMDServiceGroup *)self initWithName:v7 uuid:v8 home:v5 queue:0];
  if (v9)
  {
    v45 = v8;
    v10 = [v4 hm_decodeArrayOfConditionalObjects:objc_opt_class() forKey:*MEMORY[0x277CD25D0]];
    v11 = MEMORY[0x277CBEB98];
    v51[0] = objc_opt_class();
    v51[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
    v13 = v11;
    v14 = v10;
    v15 = [v13 setWithArray:v12];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:*MEMORY[0x277CD25C8]];

    v17 = &OBJC_IVAR___HMDHome__networkRouterSupportDisableReason;
    if ([v10 count])
    {
      v40 = v16;
      v41 = v10;
      v42 = v7;
      v43 = v5;
      v44 = v4;
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
            v24 = [v23 uuid];

            if (v24)
            {
              serviceMapping = v9->_serviceMapping;
              v26 = [v23 uuid];
              v27 = [v26 UUIDString];
              [(NSMutableDictionary *)serviceMapping setObject:v23 forKey:v27];
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v46 objects:v50 count:16];
        }

        while (v20);
      }

      v28 = [(NSMutableDictionary *)v9->_serviceMapping allKeys];
      v29 = [v28 mutableCopy];
      v17 = &OBJC_IVAR___HMDHome__networkRouterSupportDisableReason;
      serviceUUIDs = v9->_serviceUUIDs;
      v9->_serviceUUIDs = v29;

      v5 = v43;
      v4 = v44;
      v14 = v41;
      v7 = v42;
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
      v34 = v17[659];
      v35 = *(&v9->super.super.isa + v34);
      *(&v9->super.super.isa + v34) = v33;

      v16 = v31;
    }

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.appDataRepository"];
    appData = v9->_appData;
    v9->_appData = v36;

    [(HMDApplicationData *)v9->_appData updateParentUUIDIfNil:v9->_uuid];
    v8 = v45;
  }

  v38 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)removeService:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock_with_options();
    serviceUUIDs = self->_serviceUUIDs;
    v6 = [v4 uuid];
    v7 = [v6 UUIDString];
    [(NSMutableArray *)serviceUUIDs removeObject:v7];

    serviceMapping = self->_serviceMapping;
    v9 = [v4 uuid];
    v10 = [v9 UUIDString];
    [(NSMutableDictionary *)serviceMapping removeObjectForKey:v10];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Cannot remove nil service from service group", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)removeServicesForAccessory:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [a3 services];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(HMDServiceGroup *)self removeService:*(*(&v11 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = [(HMDServiceGroup *)self home];
  [v9 saveWithReason:@"kServiceRemovedFromGroupNotificationKey" postSyncNotification:1];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setServiceIfPresent:(id)a3
{
  v10 = a3;
  os_unfair_lock_lock_with_options();
  serviceUUIDs = self->_serviceUUIDs;
  v5 = [v10 uuid];
  v6 = [v5 UUIDString];
  LODWORD(serviceUUIDs) = [(NSMutableArray *)serviceUUIDs containsObject:v6];

  if (serviceUUIDs)
  {
    serviceMapping = self->_serviceMapping;
    v8 = [v10 uuid];
    v9 = [v8 UUIDString];
    [(NSMutableDictionary *)serviceMapping setObject:v10 forKey:v9];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)fixupServicesForReplacementAccessory:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [a3 services];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(HMDServiceGroup *)self setServiceIfPresent:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleRenameRequest:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 stringForKey:*MEMORY[0x277CD25C0]];
  if (!v5)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = 20;
LABEL_7:
    v13 = [v11 hmErrorWithCode:v12];
    [v4 respondWithError:v13];
    goto LABEL_12;
  }

  v6 = HMMaxLengthForNaming();
  if ([v5 length] > v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@New name is longer than the pre-defined max length", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = MEMORY[0x277CCA9B8];
    v12 = 46;
    goto LABEL_7;
  }

  v13 = [(HMDServiceGroup *)self home];
  v14 = [(HMDServiceGroup *)self name];
  v15 = [v13 replaceName:v14 withNewName:v5];

  if (v15)
  {
    [v4 respondWithError:v15];
  }

  else
  {
    v16 = [HMDServiceGroupModel alloc];
    v17 = [(HMDServiceGroup *)self uuid];
    v18 = [v13 uuid];
    v19 = [(HMDBackingStoreModelObject *)v16 initWithObjectChangeType:2 uuid:v17 parentUUID:v18];

    [(HMDServiceGroupModel *)v19 setName:v5];
    v20 = [v13 backingStore];
    v21 = [v4 name];
    v22 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v23 = [v20 transaction:v21 options:v22];

    [v23 add:v19];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __40__HMDServiceGroup__handleRenameRequest___block_invoke;
    v25[3] = &unk_27868A1D8;
    v26 = v4;
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

- (void)setName:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
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

- (id)dumpStateWithPrivacyLevel:(unint64_t)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v29 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDServiceGroup *)self name];
  v5 = [(HMDServiceGroup *)self uuid];
  v6 = [v5 UUIDString];
  v7 = [(HMDServiceGroup *)self urlString];
  v28 = [v3 stringWithFormat:@"name: %@, uuid: %@, assistantIdentifier: %@", v4, v6, v7];

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
          v14 = [v13 accessory];
          v15 = [v13 serviceType];
          if ([v15 hasSuffix:v11])
          {
            v16 = [v15 substringToIndex:{objc_msgSend(v15, "length") - objc_msgSend(v11, "length")}];

            v15 = v16;
          }

          v17 = MEMORY[0x277CCACA8];
          v18 = [v14 uuid];
          v19 = [v18 UUIDString];
          v20 = [v13 instanceID];
          v21 = [v17 stringWithFormat:@"Accessory: %@, serviceID: %@, type: %@", v19, v20, v15];
          [v32 addObject:v21];
        }

        v9 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v9);
    }

    [v29 setObject:v32 forKeyedSubscript:*MEMORY[0x277D0F150]];
    v22 = [(HMDServiceGroup *)self appData];
    v23 = [v22 dumpStateWithPrivacyLevel:a3];
    [v29 setObject:v23 forKeyedSubscript:*MEMORY[0x277D0F050]];

    v8 = v27;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v29;
}

- (void)configure:(id)a3 queue:(id)a4
{
  v6 = a4;
  [(HMDServiceGroup *)self setMsgDispatcher:a3];
  [(HMDServiceGroup *)self setWorkQueue:v6];

  [(HMDServiceGroup *)self _registerForMessages];
}

- (void)dealloc
{
  v3 = [(HMDServiceGroup *)self msgDispatcher];
  [v3 deregisterReceiver:self];

  v4 = [(HMDServiceGroup *)self home];
  v5 = [v4 administratorHandler];
  [v5 deregisterReceiver:self];

  v6.receiver = self;
  v6.super_class = HMDServiceGroup;
  [(HMDServiceGroup *)&v6 dealloc];
}

- (HMDServiceGroup)initWithName:(id)a3 uuid:(id)a4 home:(id)a5 queue:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v31.receiver = self;
  v31.super_class = HMDServiceGroup;
  v14 = [(HMDServiceGroup *)&v31 init];
  if (v14)
  {
    v15 = [v10 copy];
    name = v14->_name;
    v14->_name = v15;

    if (v11)
    {
      v17 = [v11 copy];
    }

    else
    {
      v17 = [MEMORY[0x277CCAD78] UUID];
    }

    v18 = v17;
    v19 = [MEMORY[0x277D0F890] hmf_cachedInstanceForNSUUID:v17];
    uuid = v14->_uuid;
    v14->_uuid = v19;

    v21 = spiClientIdentifierForUUID(v14->_uuid);
    v22 = [MEMORY[0x277D0F890] hmf_cachedInstanceForNSUUID:v21];
    spiClientIdentifier = v14->_spiClientIdentifier;
    v14->_spiClientIdentifier = v22;

    objc_storeStrong(&v14->_workQueue, a6);
    objc_storeWeak(&v14->_home, v12);
    v24 = [v12 msgDispatcher];
    msgDispatcher = v14->_msgDispatcher;
    v14->_msgDispatcher = v24;

    v26 = [MEMORY[0x277CBEB18] array];
    serviceUUIDs = v14->_serviceUUIDs;
    v14->_serviceUUIDs = v26;

    v28 = [MEMORY[0x277CBEB38] dictionary];
    serviceMapping = v14->_serviceMapping;
    v14->_serviceMapping = v28;

    if (v13)
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
    dispatch_once(&logCategory__hmf_once_t33, &__block_literal_global_30578);
  }

  v3 = logCategory__hmf_once_v34;

  return v3;
}

void __30__HMDServiceGroup_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v34;
  logCategory__hmf_once_v34 = v1;
}

- (NSDictionary)assistantObject
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(HMDServiceGroup *)self home];
  v4 = [(HMDServiceGroup *)self name];
  v5 = v4;
  if (v4 && v3)
  {
    v6 = [v3 name];

    if (v6)
    {
      v21[0] = *MEMORY[0x277D48150];
      v7 = [(HMDServiceGroup *)self name:@"objectType"];
      v21[1] = v7;
      v20[2] = @"objectIdentifier";
      v8 = [(HMDServiceGroup *)self urlString];
      v21[2] = v8;
      v20[3] = @"objectHome";
      v9 = [v3 name];
      v21[3] = v9;
      v20[4] = @"objectHomeIdentifier";
      v10 = [v3 urlString];
      v21[4] = v10;
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
    v15 = [(HMDServiceGroup *)self name];
    v16 = [(HMDServiceGroup *)self uuid];
    v17 = [v16 UUIDString];
    *buf = 138544130;
    v23 = v14;
    v24 = 2112;
    v25 = v15;
    v26 = 2112;
    v27 = v17;
    v28 = 2112;
    v29 = v3;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Skipping because attribute(s) is nil self %@/%@  self.home %@", buf, 0x2Au);
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
  v3 = [(HMDServiceGroup *)self uuid];
  v4 = hm_assistantIdentifier();

  return v4;
}

@end