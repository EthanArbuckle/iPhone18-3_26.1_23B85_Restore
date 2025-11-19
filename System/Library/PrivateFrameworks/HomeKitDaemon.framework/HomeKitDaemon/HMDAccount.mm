@interface HMDAccount
+ (HMDAccount)accountWithHandle:(id)a3;
+ (id)logCategory;
- (BOOL)hasFamilyMember:(id)a3;
- (BOOL)isAuthenticated;
- (BOOL)isCurrentAccount;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAccount:(id)a3;
- (BOOL)isPresentInContacts;
- (BOOL)isRelatedToAccount:(id)a3;
- (BOOL)mergeObject:(id)a3;
- (BOOL)shouldCache;
- (BOOL)shouldMergeObject:(id)a3;
- (BOOL)updateBackingModel:(id)a3 error:(id *)a4;
- (CNContact)contact;
- (HMDAccount)init;
- (HMDAccount)initWithBackingModel:(id)a3;
- (HMDAccount)initWithCoder:(id)a3;
- (HMDAccount)initWithIdentifier:(id)a3 handles:(id)a4 devices:(id)a5;
- (HMDAccount)initWithIdentifier:(id)a3 handles:(id)a4 devices:(id)a5 featuresDataSource:(id)a6 communicationTrustHandler:(id)a7;
- (HMDAccount)initWithObjectModel:(id)a3;
- (HMDAccountManager)manager;
- (HMDDevice)currentDevice;
- (NSArray)devices;
- (NSArray)handles;
- (NSArray)identities;
- (NSString)name;
- (NSString)senderCorrelationIdentifier;
- (NSUUID)modelIdentifier;
- (NSUUID)modelParentIdentifier;
- (id)accountHandleWithModelIdentifier:(id)a3;
- (id)appleAccountSenderCorrelationIdentifier;
- (id)attributeDescriptions;
- (id)backingStoreObjectsWithChangeType:(unint64_t)a3 version:(int64_t)a4;
- (id)currentDeviceModelsWithChangeType:(unint64_t)a3 version:(int64_t)a4;
- (id)deviceForHandle:(id)a3;
- (id)deviceForIdentifier:(id)a3;
- (id)deviceWithModelIdentifier:(id)a3;
- (id)logIdentifier;
- (id)modelBackedObjects;
- (id)modelObjectWithChangeType:(unint64_t)a3 version:(int64_t)a4;
- (id)shortDescription;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (unint64_t)hash;
- (void)_repairDevicesWithStaleHandle:(id)a3;
- (void)addDevice:(id)a3;
- (void)addHandle:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)isOfKnownPersonWithCompletion:(id)a3;
- (void)isPresentInFamilyCircleWithCompletion:(id)a3;
- (void)isTrustedPersonWithCompletion:(id)a3;
- (void)removeDevice:(id)a3;
- (void)removeHandle:(id)a3;
- (void)setAppleAccountSenderCorrelationIdentifier:(id)a3;
- (void)setHandles:(id)a3;
- (void)setSenderCorrelationIdentifier:(id)a3;
- (void)transactionObjectRemoved:(id)a3 message:(id)a4;
- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
@end

@implementation HMDAccount

- (NSArray)handles
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSSet *)self->_handles allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)devices
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableSet *)self->_devices allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSUUID)modelIdentifier
{
  v2 = [(HMDAccount *)self identifier];
  v3 = [v2 identifier];

  return v3;
}

- (unint64_t)hash
{
  v2 = [(HMDAccount *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (HMDDevice)currentDevice
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(HMDAccount *)self devices];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 isCurrentDevice])
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)isCurrentAccount
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(HMDAccount *)self devices];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) isCurrentDevice])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (HMDAccountManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (id)modelBackedObjects
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  [v3 addObject:self];
  v4 = [(HMDAccount *)self handles];
  [v3 addObjectsFromArray:v4];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(HMDAccount *)self devices];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) modelBackedObjects];
        [v3 addObjectsFromArray:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v3 copy];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)currentDeviceModelsWithChangeType:(unint64_t)a3 version:(int64_t)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(HMDAccount *)self devices];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    v10 = MEMORY[0x277CBEBF8];
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v12 isCurrentDevice])
        {
          v10 = [v12 backingStoreObjectsWithChangeType:a3 version:a4];
          goto LABEL_12;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

LABEL_12:

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)backingStoreObjectsWithChangeType:(unint64_t)a3 version:(int64_t)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [(HMDAccount *)self modelObjectWithChangeType:a3 version:a4];
  [v7 addObject:v8];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = [(HMDAccount *)self handles];
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v28 + 1) + 8 * i) modelObjectWithChangeType:a3 version:a4];
        [v7 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v11);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = [(HMDAccount *)self devices];
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v24 + 1) + 8 * j) backingStoreObjectsWithChangeType:a3 version:a4];
        [v7 addObjectsFromArray:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v17);
  }

  v21 = [v7 copy];
  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)modelObjectWithChangeType:(unint64_t)a3 version:(int64_t)a4
{
  v6 = [HMDAccountModel alloc];
  v7 = [(HMDAccount *)self modelIdentifier];
  v8 = [(HMDAccount *)self modelParentIdentifier];
  v9 = [(HMDBackingStoreModelObject *)v6 initWithObjectChangeType:a3 uuid:v7 parentUUID:v8];

  v10 = [(HMDAccount *)self identifier];
  v11 = [v10 copy];
  [(HMDAccountModel *)v9 setIdentifier:v11];

  return v9;
}

- (NSUUID)modelParentIdentifier
{
  if (modelParentIdentifier_onceToken != -1)
  {
    dispatch_once(&modelParentIdentifier_onceToken, &__block_literal_global_405);
  }

  v3 = modelParentIdentifier_homeManagerUUID;

  return v3;
}

void __35__HMDAccount_modelParentIdentifier__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CCAD78]);
  v1 = [v0 initWithUUIDString:*MEMORY[0x277CD23C8]];
  v2 = modelParentIdentifier_homeManagerUUID;
  modelParentIdentifier_homeManagerUUID = v1;
}

- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
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

  v12 = v9;
  if (!v11)
  {
    v12 = v9;
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

    if (v14)
    {
      v15 = self;
      v34 = v8;
      v16 = v14;
      v17 = v10;
      v18 = [v17 transactionResult];
      v19 = [v16 uuid];
      v20 = [(HMDAccount *)v15 accountHandleWithModelIdentifier:v19];

      if (v20)
      {
        v21 = v34;
        [(HMDAccountHandle *)v20 transactionObjectUpdated:v34 newValues:v16 message:v17];
      }

      else
      {
        v20 = [[HMDAccountHandle alloc] initWithObjectModel:v16];
        if (v20)
        {
          os_unfair_lock_lock_with_options();
          v32 = __HMDAccountAddHandle(v15, v20);
          os_unfair_lock_unlock(&v15->_lock);
          if (v32)
          {
            __HMDAccountDidUpdateHandles(v15);
          }

          [v18 markChanged];
        }

        v21 = v34;
      }

      if (![v18 source] && !-[HMDAccountHandle isLocallyTracked](v20, "isLocallyTracked"))
      {
        [(HMDAccountHandle *)v20 setLocallyTracked:1];
        [v18 markChanged];
      }

LABEL_32:

      goto LABEL_33;
    }

    v12 = v12;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v12;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    if (v23)
    {
      v15 = self;
      v35 = v8;
      v16 = v23;
      v17 = v10;
      v18 = [v17 transactionResult];
      v24 = [v16 uuid];
      v20 = [(HMDAccount *)v15 deviceWithModelIdentifier:v24];

      if (v20)
      {
        v21 = v35;
        [(HMDAccountHandle *)v20 transactionObjectUpdated:v35 newValues:v16 message:v17];
      }

      else
      {
        v20 = [[HMDDevice alloc] initWithObjectModel:v16];
        os_unfair_lock_lock_with_options();
        v33 = __HMDAccountAddDevice(v15, v20);
        os_unfair_lock_unlock(&v15->_lock);
        if (v33)
        {
          [(HMDAccountHandle *)v20 setAccount:v15];
          __HMDAccountDidAddDevice(v15, v20);
        }

        v21 = v35;
      }

      [(HMDAccountHandle *)v20 __updateDeviceWithActions:v18];
      goto LABEL_32;
    }

    v25 = objc_autoreleasePoolPush();
    v26 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543874;
      v37 = v28;
      v38 = 2112;
      v39 = v12;
      v40 = 2112;
      v41 = objc_opt_class();
      v29 = v41;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectUpdated:newValues:message:]", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v25);
    v30 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v10 respondWithError:v30];

    v12 = 0;
  }

LABEL_33:

  v31 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectRemoved:(id)a3 message:(id)a4
{
  v73 = *MEMORY[0x277D85DE8];
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

  v61 = v7;
  v62 = v8;
  if (v10)
  {
    v11 = self;
    v12 = v10;
    v13 = v7;
    v14 = [v13 transactionResult];
    v15 = [v12 uuid];
    v16 = [(HMDAccount *)v11 accountHandleWithModelIdentifier:v15];

    if (v16)
    {
      v17 = [(HMDAccount *)v11 manager];
      v18 = [v17 shouldAccount:v11 pushbackModel:v12 actions:v14];

      if (v18)
      {
        v19 = [v14 backingStore];
        v20 = +[HMDBackingStoreTransactionOptions localPushBackOptions];
        v21 = [v19 transaction:@"accountHandle pushback" options:v20];

        v22 = [v16 modelObjectWithChangeType:1 version:4];
        [v21 add:v22];

        [v21 run];
      }

      else
      {
        os_unfair_lock_lock_with_options();
        v21 = __HMDAccountRemoveHandle(v11, v16);
        os_unfair_lock_unlock(&v11->_lock);
        if (v21)
        {
          __HMDAccountDidUpdateHandles(v11);
        }

        [v14 markChanged];
      }
    }

    else
    {
      v40 = objc_autoreleasePoolPush();
      v41 = v11;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = HMFGetLogIdentifier();
        *buf = 138543874;
        v68 = v43;
        v69 = 2112;
        v70 = v12;
        v71 = 2112;
        v72 = objc_opt_class();
        v44 = v40;
        v45 = v72;
        _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@Delete request for unknown object (%@) sent to [%@ transactionObjectRemoved:message:]", buf, 0x20u);

        v40 = v44;
      }

      objc_autoreleasePoolPop(v40);
      v46 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v13 respondWithError:v46];
    }

    v27 = v62;
    goto LABEL_48;
  }

  v23 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  if (v25)
  {
    v26 = self;
    v27 = v25;
    v60 = v7;
    v28 = [v60 transactionResult];
    v29 = [v27 uuid];
    v30 = [(HMDAccount *)v26 deviceWithModelIdentifier:v29];

    if (!v30)
    {
      v52 = objc_autoreleasePoolPush();
      v53 = v26;
      v54 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v55 = HMFGetLogIdentifier();
        *buf = 138543874;
        v68 = v55;
        v69 = 2112;
        v70 = v27;
        v71 = 2112;
        v72 = objc_opt_class();
        v56 = v72;
        _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_ERROR, "%{public}@Delete request for unknown object (%@) sent to [%@ transactionObjectRemoved:message:]", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v52);
      v57 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v60 respondWithError:v57];

      goto LABEL_47;
    }

    v31 = [(HMDAccount *)v26 manager];
    v32 = [v31 shouldAccount:v26 pushbackModel:v27 actions:v28];

    if (v32)
    {
      v33 = [v28 backingStore];
      v34 = +[HMDBackingStoreTransactionOptions localPushBackOptions];
      v35 = [v33 transaction:@"device pushback" options:v34];

      v36 = [v30 backingStoreObjectsWithChangeType:1 version:4];
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v37 = [v36 countByEnumeratingWithState:&v63 objects:buf count:16];
      if (v37)
      {
        v38 = *v64;
        do
        {
          v39 = 0;
          do
          {
            if (*v64 != v38)
            {
              objc_enumerationMutation(v36);
            }

            [v35 add:*(*(&v63 + 1) + 8 * v39++)];
          }

          while (v37 != v39);
          v37 = [v36 countByEnumeratingWithState:&v63 objects:buf count:16];
        }

        while (v37);
      }

      [v35 run];

LABEL_47:
      goto LABEL_48;
    }

    if ([v28 source])
    {
      if ([v28 source] != 2 || !objc_msgSend(v30, "isCloudTracked"))
      {
LABEL_43:
        if (([v30 isLocallyTracked] & 1) == 0)
        {
          os_unfair_lock_lock_with_options();
          v58 = __HMDAccountRemoveDevice(v26, v30);
          os_unfair_lock_unlock(&v26->_lock);
          if (v58)
          {
            __HMDAccountDidRemoveDevice(v26, v58);
            [v58 setAccount:0];
          }

          [v28 markChanged];
        }

        goto LABEL_47;
      }

      [v30 setCloudTracked:0];
    }

    else
    {
      if (![v30 isLocallyTracked])
      {
        goto LABEL_43;
      }

      [v30 setLocallyTracked:0];
    }

    [v28 markChanged];
    goto LABEL_43;
  }

  v47 = objc_autoreleasePoolPush();
  v48 = self;
  v49 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
  {
    v50 = HMFGetLogIdentifier();
    *buf = 138543874;
    v68 = v50;
    v69 = 2112;
    v70 = v23;
    v71 = 2112;
    v72 = objc_opt_class();
    v51 = v72;
    _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectRemoved:message:]", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v47);
  v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  [v61 respondWithError:v27];
LABEL_48:

  v59 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccount *)self identifier];
  [v4 encodeObject:v5 forKey:@"HM.identifier2"];

  v6 = [(HMDAccount *)self handles];
  [v4 encodeObject:v6 forKey:@"HM.handles"];

  v7 = [(HMDAccount *)self devices];
  [v4 encodeObject:v7 forKey:@"HM.devices"];
}

- (HMDAccount)initWithCoder:(id)a3
{
  v32[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEB98];
  v32[0] = objc_opt_class();
  v32[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  v7 = [v5 setWithArray:v6];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"HM.devices"];

  v9 = MEMORY[0x277CBEB98];
  v31[0] = objc_opt_class();
  v31[1] = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  v11 = [v9 setWithArray:v10];
  v12 = [v4 decodeObjectOfClasses:v11 forKey:@"HM.handles"];

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.identifier2"];
  if (v13 && v12 && v8)
  {
    v14 = objc_alloc_init(HMDFeaturesDataSource);
    v15 = +[HMDCommunicationTrustHandlerFactory sharedHandler];
    v16 = [(HMDAccount *)self initWithIdentifier:v13 handles:v12 devices:v8 featuresDataSource:v14 communicationTrustHandler:v15];

    v17 = v16;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v16 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v23 = 138544130;
      v24 = v20;
      v25 = 2112;
      v26 = v13;
      v27 = 2112;
      v28 = v12;
      v29 = 2112;
      v30 = v8;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Cannot initialize HMDAccount from decoded identifier: %@ handles: %@ devices:%@ ", &v23, 0x2Au);
    }

    objc_autoreleasePoolPop(v18);
    v17 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)mergeObject:(id)a3
{
  v98 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    v7 = MEMORY[0x277CBEB58];
    v8 = [(HMDAccount *)self handles];
    v9 = [v7 setWithArray:v8];

    v10 = MEMORY[0x277CBEB98];
    v11 = [v6 handles];
    v12 = [v10 setWithArray:v11];
    v13 = [v9 mergeObject:v12];

    if (v13)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543618;
        v90 = v17;
        v91 = 2112;
        v92 = v9;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Updated handles: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      v18 = [v9 allObjects];
      [(HMDAccount *)v15 setHandles:v18];
    }

    v69 = v6;

    v19 = MEMORY[0x277CBEB98];
    v20 = [(HMDAccount *)self devices];
    v21 = [v19 setWithArray:v20];

    v22 = MEMORY[0x277CBEB98];
    v70 = v4;
    v23 = [v4 devices];
    v24 = [v22 setWithArray:v23];

    v71 = v21;
    v25 = [v21 mutableCopy];
    v76 = v24;
    [v25 minusSet:v24];
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    obj = v25;
    v26 = [obj countByEnumeratingWithState:&v85 objects:v97 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v86;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v86 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v85 + 1) + 8 * i);
          v31 = objc_autoreleasePoolPush();
          v32 = self;
          v33 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v34 = HMFGetLogIdentifier();
            *buf = 138543618;
            v90 = v34;
            v91 = 2112;
            v92 = v30;
            _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Removed device: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v31);
          [(HMDAccount *)v32 removeDevice:v30];
        }

        v27 = [obj countByEnumeratingWithState:&v85 objects:v97 count:16];
      }

      while (v27);
      LOBYTE(v13) = 1;
    }

    v35 = [v76 mutableCopy];
    [v35 minusSet:v21];
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v74 = v35;
    v36 = [v74 countByEnumeratingWithState:&v81 objects:v96 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v82;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v82 != v38)
          {
            objc_enumerationMutation(v74);
          }

          v40 = *(*(&v81 + 1) + 8 * j);
          v41 = objc_autoreleasePoolPush();
          v42 = self;
          v43 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
          {
            v44 = HMFGetLogIdentifier();
            *buf = 138543618;
            v90 = v44;
            v91 = 2112;
            v92 = v40;
            _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@Added device: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v41);
          [(HMDAccount *)v42 addDevice:v40];
        }

        v37 = [v74 countByEnumeratingWithState:&v81 objects:v96 count:16];
      }

      while (v37);
      LOBYTE(v13) = 1;
    }

    v72 = v13;

    v45 = [v21 mutableCopy];
    [v45 minusSet:obj];
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v73 = v45;
    v46 = [v73 countByEnumeratingWithState:&v77 objects:v95 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v78;
      do
      {
        for (k = 0; k != v47; ++k)
        {
          if (*v78 != v48)
          {
            objc_enumerationMutation(v73);
          }

          v50 = *(*(&v77 + 1) + 8 * k);
          v51 = [v76 member:v50];
          if (v51)
          {
            v52 = objc_autoreleasePoolPush();
            v53 = self;
            v54 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
            {
              v55 = HMFGetLogIdentifier();
              *buf = 138543874;
              v90 = v55;
              v91 = 2112;
              v92 = v50;
              v93 = 2112;
              v94 = v51;
              _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_DEBUG, "%{public}@Merging existing device: %@ with device: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v52);
            if ([v50 mergeObject:v51])
            {
              v56 = objc_autoreleasePoolPush();
              v57 = v53;
              v58 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
              {
                v59 = HMFGetLogIdentifier();
                *buf = 138543618;
                v90 = v59;
                v91 = 2112;
                v92 = v51;
                _os_log_impl(&dword_229538000, v58, OS_LOG_TYPE_INFO, "%{public}@Updated device: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v56);
              v72 = 1;
            }
          }
        }

        v47 = [v73 countByEnumeratingWithState:&v77 objects:v95 count:16];
      }

      while (v47);
    }

    v60 = [(HMDAccount *)self appleAccountSenderCorrelationIdentifier];
    v6 = v69;
    v61 = [v69 appleAccountSenderCorrelationIdentifier];
    if (v61)
    {
      v4 = v70;
      v62 = v72;
      if (([v60 isEqualToString:v61] & 1) == 0)
      {
        v63 = objc_autoreleasePoolPush();
        v64 = self;
        v65 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          v66 = HMFGetLogIdentifier();
          *buf = 138543618;
          v90 = v66;
          v91 = 2112;
          v92 = v61;
          _os_log_impl(&dword_229538000, v65, OS_LOG_TYPE_INFO, "%{public}@Updating sender correlation identifier to %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v63);
        [(HMDAccount *)v64 setAppleAccountSenderCorrelationIdentifier:v61];
        v62 = 1;
      }
    }

    else
    {
      v4 = v70;
      v62 = v72;
    }
  }

  else
  {
    v62 = 0;
  }

  v67 = *MEMORY[0x277D85DE8];
  return v62 & 1;
}

- (BOOL)shouldMergeObject:(id)a3
{
  v4 = a3;
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
  v7 = [(HMDAccount *)self identifier];
  v8 = [v6 identifier];

  LOBYTE(v6) = [v7 isEqual:v8];
  return v6;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v8 = [(HMDAccount *)self devices];
  v9 = [v8 countByEnumeratingWithState:a3 objects:a4 count:a5];

  return v9;
}

- (id)logIdentifier
{
  v2 = [(HMDAccount *)self identifier];
  v3 = [v2 identifier];
  v4 = [v3 UUIDString];

  return v4;
}

- (void)removeDevice:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    os_unfair_lock_lock_with_options();
    v5 = __HMDAccountRemoveDevice(self, v9);
    os_unfair_lock_unlock(&self->_lock);
    if (v5)
    {
      v6 = self;
      v7 = v5;
      v8 = +[HMDAccountRegistry sharedRegistry];
      [v8 removeDevice:v7 fromAccount:v6];

      [v7 setAccount:0];
      __HMDAccountDidRemoveDevice(v6, v7);
    }

    v4 = v9;
  }
}

- (void)addDevice:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    os_unfair_lock_lock_with_options();
    v5 = __HMDAccountAddDevice(self, v9);
    os_unfair_lock_unlock(&self->_lock);
    v4 = v9;
    if (v5)
    {
      [v9 setAccount:self];
      v6 = self;
      v7 = v9;
      v8 = +[HMDAccountRegistry sharedRegistry];
      [v8 addDevice:v7 toAccount:v6];

      __HMDAccountDidAddDevice(v6, v7);
      v4 = v9;
    }
  }
}

- (id)deviceWithModelIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    [(HMDAccount *)self devices];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v17 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [v9 modelIdentifier];
          v11 = [v4 hmf_isEqualToUUID:v10];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)deviceForHandle:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_devices;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 handles];
        v11 = [v10 containsObject:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_lock);
  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)deviceForIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_devices;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 hmf_isEqualToUUID:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_lock);
  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)accountHandleWithModelIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(HMDAccount *)self handles];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [v9 modelIdentifier];
          v11 = [v4 hmf_isEqualToUUID:v10];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_repairDevicesWithStaleHandle:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccount *)self primaryHandle];
  v6 = [(HMDAccount *)self devices];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __44__HMDAccount__repairDevicesWithStaleHandle___block_invoke;
  v32[3] = &unk_278686FB0;
  v26 = v4;
  v33 = v26;
  v7 = [v6 na_filter:v32];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    v27 = v8;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = self;
        v16 = HMFGetOSLogHandle();
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
        if (v5)
        {
          if (v17)
          {
            v18 = HMFGetLogIdentifier();
            *buf = 138543874;
            v35 = v18;
            v36 = 2112;
            v37 = v13;
            v38 = 2112;
            v39 = v5;
            _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Repairing stale handle for device %@ updating to %@", buf, 0x20u);

            v8 = v27;
          }

          objc_autoreleasePoolPop(v14);
          [v13 setAccount:v15];
        }

        else
        {
          if (v17)
          {
            v19 = HMFGetLogIdentifier();
            *buf = 138543618;
            v35 = v19;
            v36 = 2112;
            v37 = v13;
            _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Removing device from empty account %@", buf, 0x16u);

            v8 = v27;
          }

          objc_autoreleasePoolPop(v14);
          [(HMDAccount *)v15 removeDevice:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v10);
  }

  if (v5)
  {
    v20 = self;
    v21 = v8;
    v22 = +[HMDAccountRegistry sharedRegistry];
    v23 = [MEMORY[0x277CBEB98] setWithArray:v21];

    v24 = [v22 updateDevices:v23 onAccount:v20];
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __44__HMDAccount__repairDevicesWithStaleHandle___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 handles];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__HMDAccount__repairDevicesWithStaleHandle___block_invoke_2;
  v6[3] = &unk_2786773A8;
  v7 = *(a1 + 32);
  v4 = [v3 na_any:v6];

  return v4;
}

uint64_t __44__HMDAccount__repairDevicesWithStaleHandle___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 accountHandle];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)removeHandle:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    os_unfair_lock_lock_with_options();
    v5 = __HMDAccountRemoveHandle(self, v9);
    os_unfair_lock_unlock(&self->_lock);
    if (v5)
    {
      v6 = self;
      v7 = v5;
      v8 = +[HMDAccountRegistry sharedRegistry];
      [v8 removeHandle:v7 fromAccount:v6];

      __HMDAccountDidUpdateHandles(v6);
      [(HMDAccount *)v6 _repairDevicesWithStaleHandle:v9];
    }

    v4 = v9;
  }
}

- (void)addHandle:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    os_unfair_lock_lock_with_options();
    v5 = __HMDAccountAddHandle(self, v6);
    os_unfair_lock_unlock(&self->_lock);
    v4 = v6;
    if (v5)
    {
      __HMDAccountDidUpdateHandles(self);
      v4 = v6;
    }
  }
}

- (void)setHandles:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB98] setWithArray:v4];
    os_unfair_lock_lock_with_options();
    if ([(NSSet *)self->_handles isEqualToSet:v5])
    {
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      objc_storeStrong(&self->_handles, v5);
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v6 = self->_handles;
      v7 = [(NSSet *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        v8 = *v16;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v15 + 1) + 8 * i);
            v11 = [v10 modelParentIdentifier];
            v12 = v11 == 0;

            if (v12)
            {
              v13 = [(HMDAccount *)self modelIdentifier];
              [v10 setModelParentIdentifier:v13];
            }
          }

          v7 = [(NSSet *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v7);
      }

      os_unfair_lock_unlock(&self->_lock);
      __HMDAccountDidUpdateHandles(self);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __39__HMDAccount__primaryHandleForDisplay___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 isLocal];
  if (v6 == [v5 isLocal])
  {
    v8 = [v4 type];
    if (v8 != [v5 type])
    {
      if ([v4 type] == 1)
      {
        v7 = 1;
        goto LABEL_11;
      }

      if ([v5 type] == 1)
      {
        v7 = -1;
        goto LABEL_11;
      }
    }

    v9 = +[HMDAccountHandleFormatter defaultFormatter];
    v10 = [v9 stringForObjectValue:v4];
    v11 = [v9 stringForObjectValue:v5];
    v7 = [v10 caseInsensitiveCompare:v11];
  }

  else if ([v4 isLocal])
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

LABEL_11:

  return v7;
}

- (void)setAppleAccountSenderCorrelationIdentifier:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v20 = v4;
  if (self)
  {
    os_unfair_lock_assert_owner(&self->_lock);
    v5 = [(HMDAccount *)self identifier];
    v6 = [v5 senderCorrelationIdentifier];

    if (v6)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        HMFGetLogIdentifier();
        v22 = *buf = 138543362;
        v17 = v22;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: MergeID cannot be updated on an account with identifier based on MergeID", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
      v18 = [[HMDAssertionLogEvent alloc] initWithReason:@"MergeID cannot be updated on an account with identifier based on MergeID"];
      v19 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v19 submitLogEvent:v18];
    }

    v7 = [(HMDAccount *)self identifier];
    v8 = [v7 senderCorrelationIdentifier];

    if (!v8)
    {
      if (v20)
      {
        appleAccountSenderCorrelationIdentifier = self->_appleAccountSenderCorrelationIdentifier;
        if ((HMFEqualObjects() & 1) == 0)
        {
          v10 = [v20 copy];
          v11 = self->_appleAccountSenderCorrelationIdentifier;
          self->_appleAccountSenderCorrelationIdentifier = v10;

          v12 = [MEMORY[0x277CCAB98] defaultCenter];
          [v12 postNotificationName:@"HMDAppleAccountMergeIdentifierUpdatedNotification" object:self];
        }
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v13 = *MEMORY[0x277D85DE8];
}

- (id)appleAccountSenderCorrelationIdentifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_appleAccountSenderCorrelationIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSenderCorrelationIdentifier:(id)a3
{
  if (a3)
  {
    [(HMDAccount *)self setAppleAccountSenderCorrelationIdentifier:?];
  }
}

- (NSString)senderCorrelationIdentifier
{
  v3 = [(HMDAccount *)self identifier];
  v4 = [v3 senderCorrelationIdentifier];

  if (!v4)
  {
    v4 = [(HMDAccount *)self appleAccountSenderCorrelationIdentifier];
  }

  return v4;
}

- (CNContact)contact
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(HMDAccount *)self handles];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v11 + 1) + 8 * i) contact];
        if (v7)
        {
          v8 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (NSString)name
{
  v3 = [(HMDAccount *)self contact];
  if (!v3 || ([MEMORY[0x277CBDA78] stringFromContact:v3 style:0], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = +[HMDAccountHandleFormatter defaultFormatter];
    v6 = [(HMDAccount *)self handles];
    v7 = [v6 firstObject];
    v4 = [v5 stringForObjectValue:v7];
  }

  return v4;
}

- (BOOL)shouldCache
{
  v2 = self;
  v3 = [(HMDAccount *)self manager];
  LOBYTE(v2) = [v3 shouldCacheAccount:v2];

  return v2;
}

- (BOOL)isAuthenticated
{
  v2 = [(HMDAccount *)self identifier];
  v3 = [v2 isAuthenticated];

  return v3;
}

- (id)attributeDescriptions
{
  v19[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDAccount *)self identifier];
  v5 = [v4 shortDescription];
  v6 = [v3 initWithName:@"Id" value:v5];
  v19[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [(HMDAccount *)self senderCorrelationIdentifier];
  v9 = [v7 initWithName:@"MID" value:v8];
  v19[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  v11 = [(HMDAccount *)self handles];
  v12 = [v10 initWithName:@"Hndl" value:v11];
  v19[2] = v12;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  v14 = [(HMDAccount *)self devices];
  v15 = [v13 initWithName:@"Dev" value:v14];
  v19[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMDAccount *)self identifier];
  v6 = [v5 shortDescription];
  v7 = [v3 stringWithFormat:@"%@ %@", v4, v6];

  return v7;
}

- (void)isOfKnownPersonWithCompletion:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccount *)self featuresDataSource];
  v6 = [v5 isCommunicationTrustInvitationsEnabled];

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Validating account with CommunicationsTrust", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDAccount *)v8 isTrustedPersonWithCompletion:v4];
  }

  else
  {
    if (v10)
    {
      v12 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v12;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Validating account with contacts", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    if ([(HMDAccount *)v8 isPresentInContacts])
    {
      v4[2](v4, 1);
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = v8;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v16;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Account is not present in contacts, checking family circle.", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      [(HMDAccount *)v14 isPresentInFamilyCircleWithCompletion:v4];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)isTrustedPersonWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccount *)self handles];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(HMDAccount *)self communicationTrustHandler];
    v8 = [(HMDAccount *)self handles];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __44__HMDAccount_isTrustedPersonWithCompletion___block_invoke;
    v9[3] = &unk_278677380;
    v9[4] = self;
    v10 = v4;
    [v7 isTrustedPersonWithAccountHandles:v8 completionHandler:v9];
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

void __44__HMDAccount_isTrustedPersonWithCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = v5;
      v10 = "%{public}@Could not validate if home invitation sender is trusted with error: %@. Checking with Family Circle";
      v11 = v8;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 22;
LABEL_8:
      _os_log_impl(&dword_229538000, v11, v12, v10, &v15, v13);

      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if (!a2)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v9;
      v10 = "%{public}@Not a known person in CommunicationsTrust. Using family circle as a back-up.";
      v11 = v8;
      v12 = OS_LOG_TYPE_INFO;
      v13 = 12;
      goto LABEL_8;
    }

LABEL_9:

    objc_autoreleasePoolPop(v6);
    [*(a1 + 32) isPresentInFamilyCircleWithCompletion:*(a1 + 40)];
    goto LABEL_10;
  }

  (*(*(a1 + 40) + 16))();
LABEL_10:

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)isPresentInContacts
{
  v29 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [(HMDAccount *)self handles];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [v8 contact];
        if (v9)
        {
          v11 = v9;
          v12 = objc_autoreleasePoolPush();
          v13 = self;
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = HMFGetLogIdentifier();
            *buf = 138543874;
            v23 = v15;
            v24 = 2112;
            v25 = v11;
            v26 = 2112;
            v27 = v8;
            _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Found contact: %@ for handle: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v12);
          v10 = 1;
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v28 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isRelatedToAccount:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([(HMDAccount *)self isEqualToAccount:v4])
    {
      v5 = 1;
    }

    else
    {
      v6 = [v4 senderCorrelationIdentifier];
      if (v6 && (-[HMDAccount senderCorrelationIdentifier](self, "senderCorrelationIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isEqualToString:v6], v7, (v8 & 1) != 0))
      {
        v5 = 1;
      }

      else
      {
        v9 = MEMORY[0x277CBEB58];
        v10 = [v4 handles];
        v11 = [v9 setWithArray:v10];

        v12 = MEMORY[0x277CBEB98];
        v13 = [(HMDAccount *)self handles];
        v14 = [v12 setWithArray:v13];
        [v11 intersectSet:v14];

        v5 = [v11 count] != 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToAccount:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (v4 == self)
    {
      v8 = 1;
    }

    else
    {
      v6 = [(HMDAccount *)v4 identifier];
      v7 = [(HMDAccount *)self identifier];
      v8 = [v6 isEqual:v7];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
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
      v7 = [(HMDAccount *)self isEqualToAccount:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (HMDAccount)initWithObjectModel:(id)a3
{
  v4 = [a3 identifier];
  v5 = objc_alloc_init(HMDFeaturesDataSource);
  v6 = +[HMDCommunicationTrustHandlerFactory sharedHandler];
  v7 = [(HMDAccount *)self initWithIdentifier:v4 handles:MEMORY[0x277CBEBF8] devices:MEMORY[0x277CBEBF8] featuresDataSource:v5 communicationTrustHandler:v6];

  return v7;
}

- (BOOL)updateBackingModel:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 modelID];
  v7 = [(HMDAccount *)self modelIdentifier];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v9 = [(HMDAccount *)self identifier];
    v10 = [v5 identifier];
    v11 = HMFEqualObjects();

    if ((v11 & 1) == 0)
    {
      [v5 setIdentifier:v9];
    }

    v12 = [(HMDAccount *)self handles];
    [v5 synchronizeHandlesRelationWith:v12];

    v13 = [(HMDAccount *)self devices];
    [v5 synchronizeDevicesRelationWith:v13];

    return 1;
  }

  else
  {
    v15 = _HMFPreconditionFailure();
    return [(HMDAccount *)v15 backingModelType];
  }
}

- (HMDAccount)initWithBackingModel:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = [v4 array];
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [v5 handles];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __35__HMDAccount_initWithBackingModel___block_invoke;
  v20[3] = &unk_278677330;
  v21 = v6;
  v9 = v6;
  [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:v20];

  v10 = [v5 devices];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __35__HMDAccount_initWithBackingModel___block_invoke_2;
  v18 = &unk_278677358;
  v19 = v7;
  v11 = v7;
  [v10 hmf_enumerateWithAutoreleasePoolUsingBlock:&v15];

  v12 = [v5 identifier];

  v13 = [(HMDAccount *)self initWithIdentifier:v12 handles:v9 devices:v11];
  return v13;
}

void __35__HMDAccount_initWithBackingModel___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [[HMDAccountHandle alloc] initWithBackingModel:v3];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
    v4 = v5;
  }
}

void __35__HMDAccount_initWithBackingModel___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[HMDDevice alloc] initWithBackingModel:v3];

  [v2 addObject:v4];
}

- (HMDAccount)initWithIdentifier:(id)a3 handles:(id)a4 devices:(id)a5 featuresDataSource:(id)a6 communicationTrustHandler:(id)a7
{
  v62 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v12)
  {
    v57.receiver = self;
    v57.super_class = HMDAccount;
    v17 = [(HMDAccount *)&v57 init];
    if (v17)
    {
      v48 = v15;
      v18 = [v12 copy];
      identifier = v17->_identifier;
      v17->_identifier = v18;

      v17->_lock._os_unfair_lock_opaque = 0;
      v20 = HMDispatchQueueNameString();
      v21 = [v20 UTF8String];
      v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v23 = dispatch_queue_create(v21, v22);
      queue = v17->_queue;
      v17->_queue = v23;

      objc_storeStrong(&v17->_communicationTrustHandler, a7);
      objc_storeStrong(&v17->_featuresDataSource, a6);
      v47 = v16;
      if (v13)
      {
        [MEMORY[0x277CBEB98] setWithArray:v13];
      }

      else
      {
        [MEMORY[0x277CBEB98] set];
      }
      v30 = ;
      objc_storeStrong(&v17->_handles, v30);

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v31 = v17->_handles;
      v32 = [(NSSet *)v31 countByEnumeratingWithState:&v53 objects:v59 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v54;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v54 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v53 + 1) + 8 * i);
            v37 = [v36 modelParentIdentifier];

            if (!v37)
            {
              v38 = [(HMDAccount *)v17 modelIdentifier];
              [v36 setModelParentIdentifier:v38];
            }
          }

          v33 = [(NSSet *)v31 countByEnumeratingWithState:&v53 objects:v59 count:16];
        }

        while (v33);
      }

      if (v14)
      {
        [MEMORY[0x277CBEB58] setWithArray:v14];
      }

      else
      {
        [MEMORY[0x277CBEB58] set];
      }
      v39 = ;
      objc_storeStrong(&v17->_devices, v39);

      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v40 = v17->_devices;
      v41 = [(NSMutableSet *)v40 countByEnumeratingWithState:&v49 objects:v58 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v50;
        do
        {
          for (j = 0; j != v42; ++j)
          {
            if (*v50 != v43)
            {
              objc_enumerationMutation(v40);
            }

            [*(*(&v49 + 1) + 8 * j) setAccount:{v17, v47}];
          }

          v42 = [(NSMutableSet *)v40 countByEnumeratingWithState:&v49 objects:v58 count:16];
        }

        while (v42);
      }

      v16 = v47;
      v15 = v48;
    }

    v26 = v17;
    v29 = v26;
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v61 = v28;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Missing account identifier", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
    v29 = 0;
  }

  v45 = *MEMORY[0x277D85DE8];
  return v29;
}

- (HMDAccount)initWithIdentifier:(id)a3 handles:(id)a4 devices:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(HMDFeaturesDataSource);
  v12 = +[HMDCommunicationTrustHandlerFactory sharedHandler];
  v13 = [(HMDAccount *)self initWithIdentifier:v10 handles:v9 devices:v8 featuresDataSource:v11 communicationTrustHandler:v12];

  return v13;
}

- (HMDAccount)init
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
  if (logCategory__hmf_once_t27_92675 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t27_92675, &__block_literal_global_378_92676);
  }

  v3 = logCategory__hmf_once_v28_92677;

  return v3;
}

void __25__HMDAccount_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v28_92677;
  logCategory__hmf_once_v28_92677 = v1;
}

+ (HMDAccount)accountWithHandle:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [HMDAccountIdentifier accountIdentifierForAccountHandle:v4];
  v11[0] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  v8 = [v5 initWithIdentifier:v6 handles:v7 devices:MEMORY[0x277CBEBF8]];
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)hasFamilyMember:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(HMDAccount *)self handles];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = +[HMDAccountHandleFormatter defaultFormatter];
        v11 = [v10 stringForObjectValue:v9];

        if (v11)
        {
          v12 = [v4 appleID];
          if ([v11 isEqualToString:v12])
          {

LABEL_13:
            LOBYTE(v6) = 1;
            goto LABEL_14;
          }

          v13 = [v4 memberPhoneNumbers];
          v14 = [v11 isEqualToString:v13];

          if (v14)
          {
            goto LABEL_13;
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)isPresentInFamilyCircleWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D08280]);
  [v5 setCachePolicy:2];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HMDAccount_FamilyCircle__isPresentInFamilyCircleWithCompletion___block_invoke;
  v7[3] = &unk_2786773F8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 startRequestWithCompletionHandler:v7];
}

void __66__HMDAccount_FamilyCircle__isPresentInFamilyCircleWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 8);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__HMDAccount_FamilyCircle__isPresentInFamilyCircleWithCompletion___block_invoke_2;
  v12[3] = &unk_278689AB8;
  v13 = v5;
  v14 = v8;
  v15 = v6;
  v16 = v7;
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, v12);
}

uint64_t __66__HMDAccount_FamilyCircle__isPresentInFamilyCircleWithCompletion___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 members];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __66__HMDAccount_FamilyCircle__isPresentInFamilyCircleWithCompletion___block_invoke_563;
    v17[3] = &unk_2786773D0;
    v17[4] = *(a1 + 40);
    [v3 na_any:v17];

    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = HMFBooleanToString();
      *buf = 138543618;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Account is in family circle: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = *(*(a1 + 56) + 16);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 40);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 48);
      *buf = 138543618;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch family members with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = *(*(a1 + 56) + 16);
  }

  result = v9();
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (NSArray)identities
{
  v3 = +[HMDIdentityRegistry sharedRegistry];
  v4 = [v3 identitiesForAccount:self];

  return v4;
}

@end