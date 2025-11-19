@interface HMDDevice
+ (HMDDevice)deviceWithDestination:(id)a3;
+ (HMDDevice)deviceWithHandle:(id)a3;
+ (id)logCategory;
- (BOOL)isBackingStorageEqual:(id)a3;
- (BOOL)isCurrentDevice;
- (BOOL)isDirty;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPublishingOnObservedNetService;
- (BOOL)isRelatedToDevice:(id)a3;
- (BOOL)isSameAccountWithDevice:(id)a3;
- (BOOL)mergeObject:(id)a3;
- (BOOL)supportsHH2;
- (HMDAccount)account;
- (HMDDevice)init;
- (HMDDevice)initWithCoder:(id)a3;
- (HMDDevice)initWithDeviceAddress:(id)a3;
- (HMDDevice)initWithIdentifier:(id)a3 handles:(id)a4 name:(id)a5 productInfo:(id)a6 version:(id)a7 capabilities:(id)a8 account:(id)a9;
- (HMDDevice)initWithObjectModel:(id)a3;
- (HMDDevice)initWithService:(id)a3 device:(id)a4;
- (HMDDeviceAddress)deviceAddress;
- (HMDDeviceCapabilities)capabilities;
- (HMDHomeKitVersion)derivedVersion;
- (HMDHomeKitVersion)localOnlyVersionFromIDS;
- (HMDHomeKitVersion)version;
- (HMDRPIdentity)rpIdentity;
- (HMFProductInfo)productInfo;
- (NSArray)attributeDescriptions;
- (NSArray)identities;
- (NSData)pushToken;
- (NSString)name;
- (NSString)remoteDestinationString;
- (NSString)shortDescription;
- (NSUUID)idsIdentifier;
- (NSUUID)idsIdentifierHash;
- (NSUUID)modelParentIdentifier;
- (id)backingStoreObjectsWithChangeType:(unint64_t)a3 version:(int64_t)a4;
- (id)deviceForIDSService:(id)a3;
- (id)globalDestination;
- (id)globalHandles;
- (id)handles;
- (id)localHandles;
- (id)logIdentifier;
- (id)modelBackedObjects;
- (id)modelObjectWithChangeType:(unint64_t)a3 version:(int64_t)a4;
- (uint64_t)_swapToNetServiceKVOCancellation:(void *)a3 swapToObservedNetService:;
- (unint64_t)hash;
- (void)__handleAccountHandleUpdated:(id)a3;
- (void)__updateDeviceWithActions:(id)a3;
- (void)_postIsPublishingChanged:(void *)a1;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setAccount:(id)a3;
- (void)setCapabilities:(id)a3;
- (void)setDirty:(BOOL)a3;
- (void)setHandles:(id)a3;
- (void)setIDSIdentifierHash:(id)a3;
- (void)setLocalOnlyVersionFromIDS:(id)a3;
- (void)setName:(id)a3;
- (void)setProductInfo:(id)a3;
- (void)setRpIdentity:(id)a3;
- (void)setVersion:(id)a3;
- (void)startObservingIsPublishingForService:(id)a3;
- (void)transactionObjectRemoved:(id)a3 message:(id)a4;
- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)updateVersion:(id)a3;
- (void)updateWithDevice:(id)a3;
@end

@implementation HMDDevice

- (id)deviceForIDSService:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEB98];
  v6 = [(HMDDevice *)self localHandles];
  v7 = [v5 setWithArray:v6];

  if ([v7 count])
  {
    v8 = objc_autoreleasePoolPush();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = [v4 devices];
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v20 = v8;
      v11 = *v22;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = MEMORY[0x277CBEB98];
          v15 = [v13 hmd_handlesForService:v4];
          v16 = [v14 setWithArray:v15];
          v17 = [v7 intersectsSet:v16];

          if (v17)
          {
            v10 = v13;
            goto LABEL_12;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

LABEL_12:
      v8 = v20;
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v10 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v10;
}

- (HMDDevice)initWithService:(id)a3 device:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    [v7 hmd_handlesForService:v6];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v9 = v34 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v32;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v31 + 1) + 8 * i);
          if ([v15 isGlobal])
          {
            v16 = [v15 identifier];

            v12 = v16;
            goto LABEL_16;
          }

          if (!v12)
          {
            if ([v15 isLocal])
            {
              v12 = [v15 identifier];
            }

            else
            {
              v12 = 0;
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

LABEL_16:

      if (v12)
      {
        v17 = [v8 name];
        v18 = [v8 hmd_productInfo];
        v19 = [v8 hmd_version];
        v20 = [v8 hmd_capabilities];
        v21 = [(HMDDevice *)self initWithIdentifier:v12 handles:v9 name:v17 productInfo:v18 version:v19 capabilities:v20];

        v22 = v21;
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
    }

    v26 = objc_autoreleasePoolPush();
    v21 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v28;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to create device identifier", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
    v22 = 0;
    goto LABEL_25;
  }

  v23 = objc_autoreleasePoolPush();
  v21 = self;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = HMFGetLogIdentifier();
    *buf = 138543362;
    v37 = v25;
    _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Device is required", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v23);
  v22 = 0;
LABEL_26:

  v29 = *MEMORY[0x277D85DE8];
  return v22;
}

- (NSArray)identities
{
  v3 = +[HMDIdentityRegistry sharedRegistry];
  v4 = [v3 identitiesForDevice:self];

  return v4;
}

- (void)dealloc
{
  [(HMDDevice *)self _swapToNetServiceKVOCancellation:0 swapToObservedNetService:?];
  v3.receiver = self;
  v3.super_class = HMDDevice;
  [(HMDDevice *)&v3 dealloc];
}

- (uint64_t)_swapToNetServiceKVOCancellation:(void *)a3 swapToObservedNetService:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    v8 = [*(a1 + 8) isPublishing];
    v12 = *(a1 + 16);
    v9 = *(a1 + 8);
    objc_storeStrong((a1 + 16), a2);
    objc_storeStrong((a1 + 8), a3);
    v10 = v8 ^ [*(a1 + 8) isPublishing];
    if (v10 == 1)
    {
      *(a1 + 24) = [*(a1 + 8) isPublishing];
    }

    os_unfair_lock_unlock((a1 + 40));
    if (v12)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__HMDDevice__swapToNetServiceKVOCancellation_swapToObservedNetService___block_invoke;
      block[3] = &unk_2797359B0;
      v14 = v12;
      v15 = v9;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)startObservingIsPublishingForService:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__HMDDevice_startObservingIsPublishingForService___block_invoke;
  aBlock[3] = &unk_27972BB30;
  objc_copyWeak(&v13, &location);
  v5 = _Block_copy(aBlock);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__HMDDevice_startObservingIsPublishingForService___block_invoke_2;
  block[3] = &unk_2797355D0;
  v10 = self;
  v11 = v5;
  v9 = v4;
  v6 = v5;
  v7 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __50__HMDDevice_startObservingIsPublishingForService___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v11;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (WeakRetained && v9)
  {
    os_unfair_lock_lock_with_options();
    v10 = *(WeakRetained + 1);
    if (v9 == v10 && WeakRetained[24] != [v10 isPublishing])
    {
      WeakRetained[24] = [*(WeakRetained + 1) isPublishing];
      os_unfair_lock_unlock(WeakRetained + 10);
      [HMDDevice _postIsPublishingChanged:?];
    }

    else
    {
      os_unfair_lock_unlock(WeakRetained + 10);
    }
  }
}

void __50__HMDDevice_startObservingIsPublishingForService___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) hmf_registerObserverForKeyPath:@"isPublishing" options:1 handler:*(a1 + 48)];
  if ([(HMDDevice *)*(a1 + 40) _swapToNetServiceKVOCancellation:v2 swapToObservedNetService:*(a1 + 32)])
  {
    [HMDDevice _postIsPublishingChanged:?];
  }
}

- (void)_postIsPublishingChanged:(void *)a1
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEC10];
  v3 = MEMORY[0x277CBEC10];
  if (a1)
  {
    v18 = @"isPublishing";
    v4 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "isPublishingOnObservedNetService")}];
    v19[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];

    v6 = objc_autoreleasePoolPush();
    v7 = a1;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543874;
      v13 = v9;
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = v2;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Posting HMDDeviceIsPublishingChangedNotification with userInfo: %@, changeDictionary: %@", &v12, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 postNotificationName:@"HMDDeviceIsPublishingChangedNotification" object:v7 userInfo:v5];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)isPublishingOnObservedNetService
{
  os_unfair_lock_lock_with_options();
  lastKnownIsPublishingStateValue = self->_lastKnownIsPublishingStateValue;
  os_unfair_lock_unlock(&self->_lock.lock);
  return lastKnownIsPublishingStateValue;
}

- (BOOL)isBackingStorageEqual:(id)a3
{
  v63 = *MEMORY[0x277D85DE8];
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

  if (![(HMDDevice *)self isEqual:v6])
  {
    goto LABEL_27;
  }

  v7 = [(HMDDevice *)self idsIdentifier];
  v8 = [v6 idsIdentifier];
  v9 = HMFEqualObjects();

  if ((v9 & 1) == 0)
  {
    v29 = objc_autoreleasePoolPush();
    v30 = self;
    v31 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      goto LABEL_26;
    }

    v32 = HMFGetLogIdentifier();
    v33 = [(HMDDevice *)v30 idsIdentifier];
    v34 = [v6 idsIdentifier];
    *buf = 138543874;
    v58 = v32;
    v59 = 2112;
    v60 = v33;
    v61 = 2112;
    v62 = v34;
    v35 = "%{public}@Updating Device IDS Identifier from %@ to %@";
LABEL_25:
    _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, v35, buf, 0x20u);

    goto LABEL_26;
  }

  v10 = [(HMDDevice *)self name];
  v11 = [v6 name];
  v12 = HMFEqualObjects();

  if ((v12 & 1) == 0)
  {
    v29 = objc_autoreleasePoolPush();
    v36 = self;
    v31 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      goto LABEL_26;
    }

    v32 = HMFGetLogIdentifier();
    v33 = [(HMDDevice *)v36 name];
    v34 = [v6 name];
    *buf = 138543874;
    v58 = v32;
    v59 = 2112;
    v60 = v33;
    v61 = 2112;
    v62 = v34;
    v35 = "%{public}@Updating Device name from %@ to %@";
    goto LABEL_25;
  }

  v13 = [(HMDDevice *)self productInfo];
  v14 = [v6 productInfo];
  v15 = HMFEqualObjects();

  if ((v15 & 1) == 0)
  {
    v29 = objc_autoreleasePoolPush();
    v37 = self;
    v31 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      goto LABEL_26;
    }

    v32 = HMFGetLogIdentifier();
    v33 = [(HMDDevice *)v37 productInfo];
    v34 = [v6 productInfo];
    *buf = 138543874;
    v58 = v32;
    v59 = 2112;
    v60 = v33;
    v61 = 2112;
    v62 = v34;
    v35 = "%{public}@Updating Device Product Info from %@ to %@";
    goto LABEL_25;
  }

  v16 = [(HMDDevice *)self version];
  v17 = [v6 version];
  v18 = HMFEqualObjects();

  if ((v18 & 1) == 0)
  {
    v29 = objc_autoreleasePoolPush();
    v38 = self;
    v31 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      goto LABEL_26;
    }

    v32 = HMFGetLogIdentifier();
    v33 = [(HMDDevice *)v38 version];
    v34 = [v6 version];
    *buf = 138543874;
    v58 = v32;
    v59 = 2112;
    v60 = v33;
    v61 = 2112;
    v62 = v34;
    v35 = "%{public}@Updating Device version from %@ to %@";
    goto LABEL_25;
  }

  v19 = [(HMDDevice *)self capabilities];
  v20 = [v6 capabilities];
  v21 = HMFEqualObjects();

  if ((v21 & 1) == 0)
  {
    v29 = objc_autoreleasePoolPush();
    v39 = self;
    v31 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      goto LABEL_26;
    }

    v32 = HMFGetLogIdentifier();
    v33 = [(HMDDevice *)v39 capabilities];
    v34 = [v6 capabilities];
    *buf = 138543874;
    v58 = v32;
    v59 = 2112;
    v60 = v33;
    v61 = 2112;
    v62 = v34;
    v35 = "%{public}@Updating Device capabilities from %@ to %@";
    goto LABEL_25;
  }

  v22 = [(HMDDevice *)self pushToken];
  v23 = [v6 pushToken];
  v24 = HMFEqualObjects();

  if ((v24 & 1) == 0)
  {
    v29 = objc_autoreleasePoolPush();
    v40 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      v33 = [(HMDDevice *)v40 pushToken];
      v34 = [v6 pushToken];
      *buf = 138543874;
      v58 = v32;
      v59 = 2112;
      v60 = v33;
      v61 = 2112;
      v62 = v34;
      v35 = "%{public}@Updating Push Token from %@ to %@";
      goto LABEL_25;
    }

LABEL_26:

    objc_autoreleasePoolPop(v29);
LABEL_27:
    v28 = 0;
    goto LABEL_28;
  }

  v25 = [(HMDDevice *)self rpIdentity];
  v26 = [v6 rpIdentity];
  v27 = HMFEqualObjects();

  if ((v27 & 1) == 0)
  {
    v43 = objc_autoreleasePoolPush();
    v44 = self;
    v45 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v46 = HMFGetLogIdentifier();
      v47 = [(HMDDevice *)v44 rpIdentity];
      v48 = [v6 rpIdentity];
      *buf = 138543874;
      v58 = v46;
      v59 = 2112;
      v60 = v47;
      v61 = 2112;
      v62 = v48;
      _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_INFO, "%{public}@Updating Device Rapport identity from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v43);
    v29 = objc_autoreleasePoolPush();
    v49 = v44;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v50 = HMFGetLogIdentifier();
      v56 = [(HMDDevice *)v49 rpIdentity];
      v55 = [v56 deviceIRK];
      v51 = [v55 data];
      v52 = [v6 rpIdentity];
      v53 = [v52 deviceIRK];
      v54 = [v53 data];
      *buf = 138543874;
      v58 = v50;
      v59 = 2112;
      v60 = v51;
      v61 = 2112;
      v62 = v54;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Rapport identity changed from %@ to %@", buf, 0x20u);
    }

    goto LABEL_26;
  }

  v28 = 1;
LABEL_28:

  v41 = *MEMORY[0x277D85DE8];
  return v28;
}

- (id)modelBackedObjects
{
  v3 = [MEMORY[0x277CBEB18] array];
  [v3 addObject:self];
  v4 = [(HMDDevice *)self capabilities];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [v3 copy];

  return v5;
}

- (id)backingStoreObjectsWithChangeType:(unint64_t)a3 version:(int64_t)a4
{
  v7 = [HMDDevice modelObjectWithChangeType:"modelObjectWithChangeType:version:" version:?];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEB18] array];
    [v8 addObject:v7];
    v9 = [(HMDDevice *)self capabilities];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 modelObjectWithChangeType:a3 version:a4];
      [v8 addObject:v11];
    }

    v12 = [v8 copy];
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  return v12;
}

- (id)modelObjectWithChangeType:(unint64_t)a3 version:(int64_t)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = [HMDDeviceModel alloc];
  v7 = [(HMDDevice *)self modelIdentifier];
  v8 = [(HMDDevice *)self modelParentIdentifier];
  v9 = [(HMDBackingStoreModelObject *)v6 initWithObjectChangeType:a3 uuid:v7 parentUUID:v8];

  v10 = [(HMDDevice *)self identifier];
  [(HMDDeviceModel *)v9 setIdentifier:v10];

  v11 = [(HMDDevice *)self name];
  v12 = [v11 copy];
  [(HMDDeviceModel *)v9 setName:v12];

  v13 = [(HMDDevice *)self version];
  v14 = [v13 copy];
  [(HMDDeviceModel *)v9 setVersion:v14];

  v15 = [(HMDDevice *)self productInfo];
  v16 = [v15 copy];
  [(HMDDeviceModel *)v9 setProductInfo:v16];

  v17 = [(HMDDevice *)self rpIdentity];

  if (v17)
  {
    v18 = [(HMDDevice *)self rpIdentity];
    v19 = [v18 copy];
    [(HMDDeviceModel *)v9 setRpIdentity:v19];
  }

  v20 = [(HMDDevice *)self handles];
  v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v20, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v22 = v20;
  v23 = [v22 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v32;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = encodeRootObjectForRemoteDeviceOnSameAccountMigrateToHH2(*(*(&v31 + 1) + 8 * i), 1, 0);
        if (v27)
        {
          [v21 addObject:{v27, v31}];
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v24);
  }

  v28 = [v21 copy];
  [(HMDDeviceModel *)v9 setHandles:v28];

  v29 = *MEMORY[0x277D85DE8];

  return v9;
}

- (NSUUID)modelParentIdentifier
{
  v2 = [(HMDDevice *)self account];
  v3 = [v2 modelIdentifier];

  return v3;
}

- (void)__updateDeviceWithActions:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDDevice *)self account];
  v6 = [v5 manager];

  if ([v4 source] == 2)
  {
    if (-[HMDDevice isCurrentDevice](self, "isCurrentDevice") || [v6 isCurrentDeviceDataOwnerForDevice:self])
    {
      if (![(HMDDevice *)self isLocallyTracked])
      {
        [(HMDDevice *)self setLocallyTracked:1];
      }

      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v21 = 138543362;
        v22 = v10;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Not marking cloud transaction as a change for current device", &v21, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
      goto LABEL_22;
    }

    if (![(HMDDevice *)self isCloudTracked])
    {
      [(HMDDevice *)self setCloudTracked:1];
    }

    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
LABEL_21:

      objc_autoreleasePoolPop(v11);
      [v4 markChanged];
      goto LABEL_22;
    }

    v14 = HMFGetLogIdentifier();
    v21 = 138543362;
    v22 = v14;
    v15 = "%{public}@Marking cloud transaction as a change";
LABEL_20:
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, v15, &v21, 0xCu);

    goto LABEL_21;
  }

  if ([v4 source])
  {
    goto LABEL_22;
  }

  if (-[HMDDevice isCurrentDevice](self, "isCurrentDevice") || [v6 isCurrentDeviceDataOwnerForDevice:self])
  {
    if (![(HMDDevice *)self isLocallyTracked])
    {
      [(HMDDevice *)self setLocallyTracked:1];
    }

    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      goto LABEL_21;
    }

    v14 = HMFGetLogIdentifier();
    v21 = 138543362;
    v22 = v14;
    v15 = "%{public}@Marking local transaction for cloud upload";
    goto LABEL_20;
  }

  if (!isWatch())
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Not marking local transaction for cloud upload", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    [(HMDDevice *)v18 setCloudTracked:1];
  }

  [v4 markLocalChanged];
LABEL_22:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v46[1] = *MEMORY[0x277D85DE8];
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

  if (v12 | v15)
  {
    v16 = [v10 transactionResult];
    [(HMDDevice *)self __updateDeviceWithActions:v16];
    v17 = [(HMDDevice *)self account];
    v18 = [v17 manager];
    v19 = [v18 shouldDevice:self processModel:v13 actions:v16];

    if (v19)
    {
      if (v12)
      {
        __transactionDeviceUpdated(self, v12, v10);
      }

      else if (v15)
      {
        v26 = self;
        v27 = v15;
        v28 = v10;
        v29 = [v28 transactionResult];
        v30 = [(HMDDevice *)v26 capabilities];
        v39 = v28;
        v40 = v27;
        v38 = v30;
        if (v30)
        {
          [v30 transactionObjectUpdated:0 newValues:v27 message:v28];
          v31 = v29;
        }

        else
        {
          v32 = [[HMDDeviceCapabilities alloc] initWithObjectModel:v27];
          [(HMDDevice *)v26 setCapabilities:v32];

          v33 = [(HMDDevice *)v26 capabilities];

          v31 = v29;
          if (v33)
          {
            [v29 markChanged];
            v34 = [(HMDDevice *)v26 capabilities];
            v46[0] = @"HMDDeviceCapabilitiesUpdatedDifferingFieldsNotificationKey";
            v37 = [v40 setProperties];
            *buf = v37;
            v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v46 count:1];
            logAndPostNotification(@"HMDDeviceCapabilitiiesUpdatedNotification", v34, v35);
          }
        }

        if ([v31 changed])
        {
          [(HMDDevice *)v26 setDirty:1];
          v36 = [v31 backingStore];
          __HMDDeviceMarkDirty(v26, v36);
        }
      }
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543874;
      *&buf[4] = v23;
      v42 = 2112;
      v43 = v13;
      v44 = 2112;
      v45 = objc_opt_class();
      v24 = v45;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectUpdated:newValues:message:]", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v10 respondWithError:v16];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectRemoved:(id)a3 message:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (isKindOfClass)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Received remove capabilities", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v18 = 138543874;
      v19 = v14;
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = objc_opt_class();
      v15 = v23;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectRemoved:message:]", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v7 respondWithError:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)a3
{
  v33 = a3;
  v4 = [v33 hmd_isForXPCTransport];
  v5 = [(HMDDevice *)self identifier];
  if (v4)
  {
    [v33 encodeObject:v5 forKey:@"HM.identifier"];

    v6 = [(HMDDevice *)self name];
    [v33 encodeObject:v6 forKey:@"HM.name"];

    v7 = [(HMDDevice *)self productInfo];
    [v33 encodeObject:v7 forKey:*MEMORY[0x277CCFC60]];

    [v33 encodeBool:-[HMDDevice isCurrentDevice](self forKey:{"isCurrentDevice"), @"HM.currentDevice"}];
    v8 = [(HMDDevice *)self idsIdentifier];
    [v33 encodeObject:v8 forKey:*MEMORY[0x277CCFC58]];

    if (([v33 hmd_entitlements] & 0x1000) != 0)
    {
      v9 = [(HMDDevice *)self remoteDestinationString];
      [v33 encodeObject:v9 forKey:*MEMORY[0x277CCFC50]];
    }

    v10 = [(HMDDevice *)self rpIdentity];
    v11 = [v10 deviceIRK];
    [v33 encodeObject:v11 forKey:*MEMORY[0x277CCFC68]];

    v12 = [(HMDDevice *)self supportsHH2];
    [v33 encodeBool:v12 forKey:*MEMORY[0x277CCFCD0]];
  }

  else
  {
    [v33 encodeObject:v5 forKey:@"HM.identifier"];

    v13 = [(HMDDevice *)self handles];
    [v33 encodeObject:v13 forKey:@"HM.handles"];

    v14 = [(HMDDevice *)self name];
    [v33 encodeObject:v14 forKey:@"HM.name"];

    v15 = [(HMDDevice *)self version];
    [v33 encodeObject:v15 forKey:@"HM.version2"];

    if (([v33 hmd_isForLocalStore] & 1) != 0 || objc_msgSend(v33, "hmd_isForRemoteTransportOnSameAccount"))
    {
      v16 = [(HMDDevice *)self productInfo];
      [v33 encodeObject:v16 forKey:@"HM.productInfo"];
    }

    v17 = [(HMDDevice *)self version];
    v18 = v17;
    if (v17)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%tu.%tu", objc_msgSend(v17, "majorVersion"), objc_msgSend(v17, "minorVersion")];
      v20 = MEMORY[0x277CCABB0];
      [v19 doubleValue];
      v21 = [v20 numberWithDouble:?];
    }

    else
    {
      v21 = 0;
    }

    [v33 encodeObject:v21 forKey:@"HM.version"];

    v22 = [(HMDDevice *)self remoteDestinationString];
    [v33 encodeObject:v22 forKey:@"HM.destination"];

    v23 = [(HMDDevice *)self idsIdentifier];
    [v33 encodeObject:v23 forKey:@"HM.idsIdentifier"];

    v24 = [(HMDDevice *)self idsIdentifierHash];
    [v33 encodeObject:v24 forKey:@"HM.accountIdentifier"];

    v25 = [(HMDDevice *)self rpIdentity];
    [v33 encodeObject:v25 forKey:@"HM.rpIdentity"];

    v26 = [(HMDDevice *)self capabilities];
    [v33 encodeObject:v26 forKey:@"HM.capabilities"];
    if (v26)
    {
      v27 = [(HMDDevice *)self capabilities];
      [v33 encodeBool:objc_msgSend(v27 forKey:{"supportsKeychainSync"), @"HM.supportsKeychainSync"}];

      v28 = [(HMDDevice *)self capabilities];
      [v33 encodeBool:objc_msgSend(v28 forKey:{"supportsCloudDataSync"), @"HM.supportsCloudDataSync"}];

      v29 = [(HMDDevice *)self capabilities];
      [v33 encodeBool:objc_msgSend(v29 forKey:{"isResidentCapable"), @"HM.residentCapable"}];

      v30 = [(HMDDevice *)self capabilities];
      [v33 encodeBool:objc_msgSend(v30 forKey:{"isRemoteGatewayCapable"), @"HM.remoteGatewayCapable"}];
    }

    if ([v33 hmd_isForLocalStore])
    {
      v31 = [(HMDDevice *)self modelIdentifier];
      [v33 encodeObject:v31 forKey:@"HM.modelIdentifier"];

      [v33 encodeBool:-[HMDDevice isLocallyTracked](self forKey:{"isLocallyTracked"), @"HM.locallyTracked"}];
      [v33 encodeBool:-[HMDDevice isCloudTracked](self forKey:{"isCloudTracked"), @"HM.cloudTracked"}];
      v32 = [(HMDDevice *)self sharedUserIDSIdentifier];
      [v33 encodeObject:v32 forKey:@"HM.sharedUserIDSIdentifier"];
    }
  }
}

- (HMDDevice)initWithCoder:(id)a3
{
  v56[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = 0x277CCA000uLL;
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HM.identifier"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HM.name"];
  v51 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HM.productInfo"];
  if ([v3 containsValueForKey:@"HM.handles"])
  {
    v7 = MEMORY[0x277CBEB98];
    v56[0] = objc_opt_class();
    v56[1] = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
    v9 = [v7 setWithArray:v8];
    v10 = [v3 decodeObjectOfClasses:v9 forKey:@"HM.handles"];
  }

  else
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HM.idsIdentifier"];
    if (v9)
    {
      v11 = [[_HMDLocalDeviceHandle alloc] initWithDeviceIdentifier:v9];
      if (v11)
      {
        v12 = [[HMDDeviceHandle alloc] initWithInternal:v11];
        [v8 addObject:v12];
      }
    }

    v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HM.destination"];
    v14 = [HMDDeviceHandle deviceHandleForDestination:v13];

    if (v14)
    {
      [v8 addObject:v14];
    }

    v10 = [v8 copy];
  }

  v15 = v10;

  v49 = v15;
  if ([v3 containsValueForKey:@"HM.version2"])
  {
    v16 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HM.version2"];
    v17 = fixHomeKitVersion(v16);
  }

  else
  {
    v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HM.version"];
    if (v17)
    {
      v18 = v6;
      v19 = v5;
      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v24 = [v17 stringValue];
        *buf = 138543618;
        v53 = v23;
        v54 = 2112;
        v55 = v24;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Updating the version of device '%@'", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v16 = v17;
      v25 = [HMDHomeKitVersion alloc];
      v26 = [v16 stringValue];

      v27 = [(HMDHomeKitVersion *)v25 initWithString:v26];
      v17 = fixHomeKitVersion(v27);

      v5 = v19;
      v6 = v18;
      v4 = 0x277CCA000;
      v15 = v49;
    }

    else
    {
      v16 = 0;
    }
  }

  if ([v3 containsValueForKey:@"HM.capabilities"])
  {
    v28 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HM.capabilities"];
  }

  else
  {
    v29 = [HMDDeviceCapabilitiesModel alloc];
    v30 = [*(v4 + 3448) UUID];
    v31 = [(HMDBackingStoreModelObject *)v29 initWithUUID:v30];

    v32 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "decodeBoolForKey:", @"HM.supportsKeychainSync"}];
    [(HMDDeviceCapabilitiesModel *)v31 setSupportsKeychainSync:v32];

    v33 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "decodeBoolForKey:", @"HM.supportsCloudDataSync"}];
    [(HMDDeviceCapabilitiesModel *)v31 setSupportsCloudDataSync:v33];

    v34 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "decodeBoolForKey:", @"HM.residentCapable"}];
    [(HMDDeviceCapabilitiesModel *)v31 setResidentCapable:v34];

    v35 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "decodeBoolForKey:", @"HM.remoteGatewayCapable"}];
    [(HMDDeviceCapabilitiesModel *)v31 setRemoteGatewayCapable:v35];

    v28 = [[HMDDeviceCapabilities alloc] initWithObjectModel:v31];
  }

  v36 = [(HMDDevice *)self initWithIdentifier:v5 handles:v15 name:v6 productInfo:v51 version:v17 capabilities:v28];
  if (v36)
  {
    if ([v3 containsValueForKey:@"HM.modelIdentifier"])
    {
      v37 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HM.modelIdentifier"];
    }

    else
    {
      v37 = [(NSUUID *)v36->_identifier copy];
    }

    modelIdentifier = v36->_modelIdentifier;
    v36->_modelIdentifier = v37;

    v39 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HM.accountIdentifier"];
    idsIdentifierHash = v36->_idsIdentifierHash;
    v36->_idsIdentifierHash = v39;

    v41 = v36->_modelIdentifier;
    v42 = [(HMDDeviceCapabilities *)v36->_capabilities modelParentIdentifier];
    LOBYTE(v41) = HMFEqualObjects();

    if ((v41 & 1) == 0)
    {
      [(HMDDeviceCapabilities *)v36->_capabilities setModelParentIdentifier:v36->_modelIdentifier];
    }

    if ([v3 containsValueForKey:@"HM.rpIdentity"])
    {
      v43 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HM.rpIdentity"];
      rpIdentity = v36->_rpIdentity;
      v36->_rpIdentity = v43;
    }

    v36->_locallyTracked = [v3 decodeBoolForKey:@"HM.locallyTracked"];
    v36->_cloudTracked = [v3 decodeBoolForKey:@"HM.cloudTracked"];
    v45 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HM.sharedUserIDSIdentifier"];
    sharedUserIDSIdentifier = v36->_sharedUserIDSIdentifier;
    v36->_sharedUserIDSIdentifier = v45;

    v15 = v49;
  }

  v47 = *MEMORY[0x277D85DE8];
  return v36;
}

- (BOOL)mergeObject:(id)a3
{
  v94 = *MEMORY[0x277D85DE8];
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

  if (!v6)
  {
    goto LABEL_46;
  }

  v7 = [(HMDDevice *)self idsIdentifier];
  if (v7)
  {

LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v33 = [v6 idsIdentifierHash];
  if (!v33)
  {
    goto LABEL_7;
  }

  v34 = v33;
  v35 = [(HMDDevice *)self idsIdentifierHash];
  v36 = [v6 idsIdentifierHash];
  v37 = [v35 isEqual:v36];

  if (v37)
  {
    goto LABEL_7;
  }

  v38 = objc_autoreleasePoolPush();
  v39 = self;
  v40 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    v41 = HMFGetLogIdentifier();
    v42 = [v6 idsIdentifierHash];
    v90 = 138543618;
    v91 = v41;
    v92 = 2112;
    v93 = v42;
    _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_DEBUG, "%{public}@Updating device account identifier to %@", &v90, 0x16u);
  }

  objc_autoreleasePoolPop(v38);
  v43 = [v6 idsIdentifierHash];
  [(HMDDevice *)v39 setIDSIdentifierHash:v43];

  v8 = 1;
LABEL_8:
  v9 = [(HMDDevice *)self name];
  v10 = [v6 name];
  v11 = [v9 isEqualToString:v10];

  if ((v11 & 1) == 0)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [v6 name];
      v90 = 138543618;
      v91 = v15;
      v92 = 2112;
      v93 = v16;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Updating device name to %@", &v90, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v17 = [v6 name];
    [(HMDDevice *)v13 setName:v17];

    v8 = 1;
  }

  v18 = [v6 productInfo];
  if (v18)
  {
    v19 = v18;
    v20 = [(HMDDevice *)self productInfo];
    v21 = [v6 productInfo];
    v22 = [v20 isEqual:v21];

    if ((v22 & 1) == 0)
    {
      v23 = objc_autoreleasePoolPush();
      v24 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = HMFGetLogIdentifier();
        v27 = [v6 productInfo];
        v90 = 138543618;
        v91 = v26;
        v92 = 2112;
        v93 = v27;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Updating device product info to %@", &v90, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      v28 = [v6 productInfo];
      [(HMDDevice *)v24 setProductInfo:v28];

      v8 = 1;
    }
  }

  v29 = [v6 version];

  if (v29)
  {
    if ([(HMDDevice *)self isCurrentDevice])
    {
      v30 = [(HMDDevice *)self version];
      v31 = [v6 version];
      v32 = [v30 isEqual:v31];

      if (v32)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v44 = [v6 version];
      v45 = [(HMDDevice *)self version];
      v46 = [v44 isGreaterThanVersion:v45];

      if (!v46)
      {
        goto LABEL_30;
      }
    }

    v47 = objc_autoreleasePoolPush();
    v48 = self;
    v49 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      v50 = HMFGetLogIdentifier();
      v51 = [v6 version];
      v90 = 138543618;
      v91 = v50;
      v92 = 2112;
      v93 = v51;
      _os_log_impl(&dword_2531F8000, v49, OS_LOG_TYPE_DEBUG, "%{public}@Updating device version to %@", &v90, 0x16u);
    }

    objc_autoreleasePoolPop(v47);
    v52 = [v6 version];
    [(HMDDevice *)v48 setVersion:v52];

    v8 = 1;
  }

LABEL_30:
  v53 = [v6 capabilities];
  if (v53)
  {
    v54 = v53;
    v55 = [(HMDDevice *)self capabilities];
    v56 = [v6 capabilities];
    v57 = [v55 isEqual:v56];

    if ((v57 & 1) == 0)
    {
      v58 = objc_autoreleasePoolPush();
      v59 = self;
      v60 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        v61 = HMFGetLogIdentifier();
        v62 = [v6 capabilities];
        v90 = 138543618;
        v91 = v61;
        v92 = 2112;
        v93 = v62;
        _os_log_impl(&dword_2531F8000, v60, OS_LOG_TYPE_DEBUG, "%{public}@Updating device capabilities to: %@", &v90, 0x16u);
      }

      objc_autoreleasePoolPop(v58);
      v63 = [v6 capabilities];
      [(HMDDevice *)v59 setCapabilities:v63];

      v8 = 1;
    }
  }

  v64 = [v6 rpIdentity];
  if (v64)
  {
    v65 = v64;
    v66 = [v6 rpIdentity];
    v67 = [(HMDDevice *)self rpIdentity];
    v68 = [v66 isEqual:v67];

    if ((v68 & 1) == 0)
    {
      v69 = [v6 rpIdentity];
      [(HMDDevice *)self setRpIdentity:v69];

      v8 = 1;
    }
  }

  v70 = MEMORY[0x277CBEB58];
  v71 = [(HMDDevice *)self handles];
  v72 = [v70 setWithArray:v71];

  v73 = MEMORY[0x277CBEB98];
  v74 = [v6 handles];
  v75 = [v73 setWithArray:v74];
  v76 = [v72 mergeObject:v75];

  if (v76)
  {
    v77 = objc_autoreleasePoolPush();
    v78 = self;
    v79 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
    {
      v80 = HMFGetLogIdentifier();
      v90 = 138543618;
      v91 = v80;
      v92 = 2112;
      v93 = v72;
      _os_log_impl(&dword_2531F8000, v79, OS_LOG_TYPE_DEBUG, "%{public}@Updating handles: %@", &v90, 0x16u);
    }

    objc_autoreleasePoolPop(v77);
    v81 = [v72 allObjects];
    [(HMDDevice *)v78 setHandles:v81];

    goto LABEL_43;
  }

  if (!v8)
  {
LABEL_46:
    v87 = 0;
    goto LABEL_47;
  }

LABEL_43:
  v82 = objc_autoreleasePoolPush();
  v83 = self;
  v84 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
  {
    v85 = HMFGetLogIdentifier();
    v90 = 138543362;
    v91 = v85;
    _os_log_impl(&dword_2531F8000, v84, OS_LOG_TYPE_INFO, "%{public}@Merge resulted in changes, posting update notification", &v90, 0xCu);
  }

  objc_autoreleasePoolPop(v82);
  v86 = [MEMORY[0x277CCAB98] defaultCenter];
  [v86 postNotificationName:@"HMDDeviceUpdatedNotification" object:v83];

  v87 = 1;
LABEL_47:

  v88 = *MEMORY[0x277D85DE8];
  return v87;
}

- (id)logIdentifier
{
  v2 = [(HMDDevice *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)setRpIdentity:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Setting RPIdentity %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  rpIdentity = v6->_rpIdentity;
  v6->_rpIdentity = v4;

  os_unfair_lock_unlock(&v6->_lock.lock);
  v10 = *MEMORY[0x277D85DE8];
}

- (HMDRPIdentity)rpIdentity
{
  os_unfair_lock_lock_with_options();
  v3 = self->_rpIdentity;
  os_unfair_lock_unlock(&self->_lock.lock);

  return v3;
}

- (NSString)remoteDestinationString
{
  v3 = [(HMDDevice *)self globalHandles];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = [v4 destination];
  }

  else
  {
    v6 = [(HMDDevice *)self localHandles];
    v7 = [v6 firstObject];

    v5 = [v7 destination];
  }

  return v5;
}

- (void)setIDSIdentifierHash:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  idsIdentifierHash = self->_idsIdentifierHash;
  self->_idsIdentifierHash = v4;

  os_unfair_lock_unlock(&self->_lock.lock);
}

- (NSUUID)idsIdentifierHash
{
  os_unfair_lock_lock_with_options();
  v3 = self->_idsIdentifierHash;
  os_unfair_lock_unlock(&self->_lock.lock);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = [(HMDDevice *)self idsIdentifier];
    if (v5)
    {
      v6 = [(HMDDevice *)self idsIdentifier];
      v7 = [v6 UUIDString];
      if ([v7 length])
      {
        if (__idsIdentifierHashFromIDSIdentifier_onceToken != -1)
        {
          dispatch_once(&__idsIdentifierHashFromIDSIdentifier_onceToken, &__block_literal_global_417);
        }

        v8 = objc_alloc(MEMORY[0x277CCAD78]);
        v9 = __idsIdentifierHashFromIDSIdentifier_namespace;
        v10 = [v7 dataUsingEncoding:4];
        v4 = [v8 initWithNamespace:v9 data:v10];
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)setDirty:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_dirty = a3;

  os_unfair_lock_unlock(&self->_lock.lock);
}

- (BOOL)isDirty
{
  os_unfair_lock_lock_with_options();
  dirty = self->_dirty;
  os_unfair_lock_unlock(&self->_lock.lock);
  return dirty;
}

- (void)setCapabilities:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v7 copy];
  capabilities = self->_capabilities;
  self->_capabilities = v4;

  if (self->_modelIdentifier)
  {
    v6 = [(HMDDeviceCapabilities *)self->_capabilities modelParentIdentifier];

    if (!v6)
    {
      [(HMDDeviceCapabilities *)self->_capabilities setModelParentIdentifier:self->_modelIdentifier];
    }
  }

  os_unfair_lock_unlock(&self->_lock.lock);
}

- (HMDDeviceCapabilities)capabilities
{
  os_unfair_lock_lock_with_options();
  v3 = self->_capabilities;
  os_unfair_lock_unlock(&self->_lock.lock);

  return v3;
}

- (HMDHomeKitVersion)derivedVersion
{
  v3 = [(HMDDevice *)self localOnlyVersionFromIDS];
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = v3;
  v5 = [(HMDDevice *)self localOnlyVersionFromIDS];
  v6 = [(HMDDevice *)self version];
  v7 = [v5 isGreaterThanVersion:v6];

  if (v7)
  {
    v8 = [(HMDDevice *)self localOnlyVersionFromIDS];
  }

  else
  {
LABEL_4:
    v8 = [(HMDDevice *)self version];
  }

  return v8;
}

- (BOOL)supportsHH2
{
  v2 = [(HMDDevice *)self derivedVersion];
  v3 = HMDMinimumHomeKitVersionSupportingHH2();
  v4 = [v2 isAtLeastVersion:v3];

  return v4;
}

- (void)setLocalOnlyVersionFromIDS:(id)a3
{
  v8 = a3;
  os_unfair_lock_lock_with_options();
  if (self->_localOnlyVersionFromIDS && ![v8 isGreaterThanVersion:?])
  {
    os_unfair_lock_unlock(&self->_lock.lock);
  }

  else
  {
    objc_storeStrong(&self->_localOnlyVersionFromIDS, a3);
    os_unfair_lock_unlock(&self->_lock.lock);
    [(HMDDevice *)self setDirty:1];
    v5 = [(HMDDevice *)self account];
    v6 = [v5 manager];

    v7 = [v6 backingStore];
    __HMDDeviceMarkDirty(self, v7);
  }
}

- (HMDHomeKitVersion)localOnlyVersionFromIDS
{
  os_unfair_lock_lock_with_options();
  v3 = self->_localOnlyVersionFromIDS;
  os_unfair_lock_unlock(&self->_lock.lock);

  return v3;
}

- (void)updateWithDevice:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && self != v4)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543874;
      v49 = v9;
      v50 = 2112;
      v51 = v7;
      v52 = 2112;
      v53 = v5;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating with device -- local: %@, remote: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [(HMDDevice *)v7 account];
    v11 = [v10 manager];

    v47 = v11;
    v12 = [v11 backingStore];
    v13 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v46 = v12;
    v14 = [v12 transaction:@"Update Device" options:v13];

    v15 = [(HMDDevice *)v7 modelObjectWithChangeType:2 version:4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    v18 = [(HMDDevice *)v5 modelObjectWithChangeType:2 version:4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    if ([v17 diff:v20 differingFields:0])
    {
      v21 = [v17 merge:v20];
      v22 = [v17 uuid];
      if (v22)
      {
        v23 = v22;
        v24 = [v17 parentUUID];

        if (v24)
        {
          [v14 add:v17];
        }
      }
    }

    v45 = v14;
    v25 = [(HMDDevice *)v7 capabilities];
    v26 = [v25 modelObjectWithChangeType:2 version:4];

    v27 = [(HMDDevice *)v5 capabilities];
    v28 = [v27 modelObjectWithChangeType:2 version:4];

    v29 = v26;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;

    v32 = v28;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    v34 = v33;

    v35 = v29;
    if (!v31)
    {
      v36 = [(HMDDevice *)v7 modelIdentifier];
      if (v36)
      {
        [HMDDeviceCapabilities deviceCapabilitiesModelIdentifierWithParentIdentifier:v36];
      }

      else
      {
        [MEMORY[0x277CCAD78] UUID];
      }
      v37 = ;
      v35 = [(HMDBackingStoreModelObject *)[HMDDeviceCapabilitiesModel alloc] initWithObjectChangeType:1 uuid:v37 parentUUID:v36];
    }

    if ([(HMDBackingStoreModelObject *)v35 diff:v34 differingFields:0])
    {
      v38 = [(HMDBackingStoreModelObject *)v35 merge:v34];
      v39 = [(HMDBackingStoreModelObject *)v35 uuid];
      if (v39)
      {
        v40 = v39;
        v41 = [(HMDBackingStoreModelObject *)v35 parentUUID];

        if (v41)
        {
          [v45 add:v35];
        }
      }
    }

    if ([v47 shouldSyncDevice:v7])
    {
      [v45 run];
    }

    else
    {
      __transactionDeviceUpdated(v7, v17, 0);
      v42 = [[HMDDeviceCapabilities alloc] initWithObjectModel:v35];
      [(HMDDevice *)v7 setCapabilities:v42];
    }
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (void)updateVersion:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  [(HMDDevice *)self setVersion:a3];
  [(HMDDevice *)self setDirty:1];
  v4 = [(HMDDevice *)self account];
  v5 = [v4 manager];

  v6 = [v5 backingStore];
  __HMDDeviceMarkDirty(self, v6);

  if ([v5 shouldSyncDevice:self])
  {
    v7 = [v5 backingStore];
    v10[0] = self;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    [v7 updateModelObjects:v8 destination:2];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setVersion:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  version = self->_version;
  self->_version = v4;

  os_unfair_lock_unlock(&self->_lock.lock);
}

- (HMDHomeKitVersion)version
{
  os_unfair_lock_lock_with_options();
  v3 = self->_version;
  os_unfair_lock_unlock(&self->_lock.lock);

  return v3;
}

- (void)setProductInfo:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  productInfo = self->_productInfo;
  self->_productInfo = v4;

  os_unfair_lock_unlock(&self->_lock.lock);
}

- (HMFProductInfo)productInfo
{
  os_unfair_lock_lock_with_options();
  v3 = self->_productInfo;
  os_unfair_lock_unlock(&self->_lock.lock);

  return v3;
}

- (void)setAccount:(id)a3
{
  obj = a3;
  v4 = [obj primaryHandle];
  v5 = [obj handles];
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_account, obj);
  if (obj)
  {
    if (!self->_modelIdentifier)
    {
      v6 = [obj modelIdentifier];
      v7 = __modelIdentifierFromParentIdentifier(self, v6);
      modelIdentifier = self->_modelIdentifier;
      self->_modelIdentifier = v7;

      v9 = [(HMDDeviceCapabilities *)self->_capabilities modelParentIdentifier];

      if (!v9)
      {
        [(HMDDeviceCapabilities *)self->_capabilities setModelParentIdentifier:self->_modelIdentifier];
      }
    }

    v10 = obj;
    v11 = self;
    __deregisterForAccountHandleUpdates(v11);
    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v11 selector:sel___handleAccountHandleUpdated_ name:@"HMDAccountHandlesUpdatedNotification" object:v10];

    v13 = MEMORY[0x277CBEB98];
    v14 = [(NSSet *)v11->_handles allObjects];
    v15 = __deviceHandlesForAccount(v14, v5, v4);
    v16 = [v13 setWithArray:v15];
    handles = v11->_handles;
    v11->_handles = v16;
  }

  else
  {
    __deregisterForAccountHandleUpdates(self);
  }

  os_unfair_lock_unlock(&self->_lock.lock);
}

- (HMDAccount)account
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_account);
  os_unfair_lock_unlock(&self->_lock.lock);

  return WeakRetained;
}

- (void)setName:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  name = self->_name;
  self->_name = v4;

  os_unfair_lock_unlock(&self->_lock.lock);
}

- (NSString)name
{
  os_unfair_lock_lock_with_options();
  v3 = self->_name;
  os_unfair_lock_unlock(&self->_lock.lock);

  return v3;
}

- (BOOL)isCurrentDevice
{
  v2 = [(HMDDevice *)self idsIdentifier];
  v3 = +[HMDDeviceAddress localDeviceIDSIdentifier];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (NSUUID)idsIdentifier
{
  v2 = [(HMDDevice *)self localHandles];
  v3 = [v2 firstObject];

  if (v3)
  {
    v4 = [v3 internal];
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

    v7 = [v6 deviceIdentifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)__handleAccountHandleUpdated:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [(HMDDevice *)self account];

    if (v7 == v8)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v20 = 138543362;
        v21 = v12;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Processing updated account handle", &v20, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      v13 = [v7 handles];
      if (([v13 hmf_isEmpty] & 1) == 0)
      {
        v14 = [v7 primaryHandle];
        if (v14)
        {
          os_unfair_lock_lock_with_options();
          v15 = [(NSSet *)v10->_handles allObjects];
          v16 = __deviceHandlesForAccount(v15, v13, v14);

          v17 = [MEMORY[0x277CBEB98] setWithArray:v16];
          handles = v10->_handles;
          v10->_handles = v17;

          os_unfair_lock_unlock(&v10->_lock.lock);
        }
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)setHandles:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12 = v4;
    v5 = [(HMDDevice *)self account];
    v6 = [v12 copy];
    if (v5)
    {
      v7 = [v5 handles];
      v8 = [v5 primaryHandle];
      v9 = __deviceHandlesForAccount(v6, v7, v8);

      v6 = v9;
    }

    os_unfair_lock_lock_with_options();
    v10 = [MEMORY[0x277CBEB98] setWithArray:v6];
    handles = self->_handles;
    self->_handles = v10;

    os_unfair_lock_unlock(&self->_lock.lock);
    v4 = v12;
  }
}

- (NSData)pushToken
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(HMDDevice *)self globalHandles];
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

        v7 = [*(*(&v11 + 1) + 8 * i) pushToken];
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

- (id)globalDestination
{
  v2 = [(HMDDevice *)self globalHandles];
  if ([v2 count])
  {
    v3 = [v2 firstObject];
    v4 = [v3 destination];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)globalHandles
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [(HMDDevice *)self handles];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isGlobal])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)localHandles
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [(HMDDevice *)self handles];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isLocal])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)handles
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSSet *)self->_handles allObjects];
  os_unfair_lock_unlock(&self->_lock.lock);

  return v3;
}

- (HMDDeviceAddress)deviceAddress
{
  v3 = [(HMDDevice *)self idsIdentifier];
  v4 = [(HMDDevice *)self globalHandles];
  v5 = [v4 firstObject];
  v6 = [v5 destination];
  v7 = [HMDDeviceAddress addressWithIDSIdentifier:v3 idsDestination:v6];

  return v7;
}

- (BOOL)isSameAccountWithDevice:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDDevice *)self account];
  v6 = [(HMDDevice *)v4 account];
  v7 = v6;
  if (v5 && v6)
  {
    v8 = HMFEqualObjects();
  }

  else
  {
    if (v5)
    {
      v9 = v4;
    }

    else
    {
      v9 = self;
    }

    v10 = v9;
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Device is missing account %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v8 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)isRelatedToDevice:(id)a3
{
  v4 = a3;
  if ([(HMDDevice *)self isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = MEMORY[0x277CBEB58];
    v7 = [v4 handles];
    v8 = [v6 setWithArray:v7];

    v9 = MEMORY[0x277CBEB98];
    v10 = [(HMDDevice *)self handles];
    v11 = [v9 setWithArray:v10];
    [v8 intersectSet:v11];

    v5 = [v8 count] != 0;
  }

  return v5;
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
      v5 = [(HMDDevice *)v4 identifier];
      v6 = [(HMDDevice *)self identifier];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(HMDDevice *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (NSArray)attributeDescriptions
{
  v37[8] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v36 = [(HMDDevice *)self identifier];
  v35 = [v36 UUIDString];
  v34 = [v3 initWithName:@"ID" value:?];
  v37[0] = v34;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(HMDDevice *)self name];
  v32 = [MEMORY[0x277D0F8D8] defaultFormatter];
  v33 = v5;
  v31 = [v4 initWithName:@"Nm" value:v5 options:0 formatter:?];
  v37[1] = v31;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v30 = [(HMDDevice *)self version];
  if (v30)
  {
    v7 = [(HMDDevice *)self version];
  }

  else
  {
    v7 = @"Unknown";
  }

  v29 = [v6 initWithName:@"Ver" value:{v7, v7}];
  v37[2] = v29;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v28 = [(HMDDevice *)self capabilities];
  v27 = [v28 shortDescription];
  v9 = [v8 initWithName:@"Cap" value:?];
  v37[3] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  v11 = [(HMDDevice *)self sharedUserIDSIdentifier];
  v12 = [v10 initWithName:@"SHID" value:v11];
  v37[4] = v12;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  v14 = [(HMDDevice *)self localOnlyVersionFromIDS];
  if (v14)
  {
    v15 = [(HMDDevice *)self localOnlyVersionFromIDS];
  }

  else
  {
    v15 = @"Unknown";
  }

  v16 = [v13 initWithName:@"IdsVer" value:v15];
  v37[5] = v16;
  v17 = objc_alloc(MEMORY[0x277D0F778]);
  v18 = [(HMDDevice *)self idsIdentifier];
  v19 = [v17 initWithName:@"IDS" value:v18];
  v37[6] = v19;
  v20 = objc_alloc(MEMORY[0x277D0F778]);
  v21 = [(HMDDevice *)self handles];
  v22 = [v20 initWithName:@"Hndl" value:v21];
  v37[7] = v22;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:8];

  if (v14)
  {
  }

  if (v30)
  {
  }

  v23 = *MEMORY[0x277D85DE8];

  return v26;
}

- (NSString)shortDescription
{
  v3 = isInternalBuild();
  v4 = MEMORY[0x277CCACA8];
  v5 = [(HMDDevice *)self identifier];
  v6 = v5;
  if (v3)
  {
    v7 = [(HMDDevice *)self name];
    v8 = [v4 stringWithFormat:@"%@/%@", v6, v7];
  }

  else
  {
    v8 = [v4 stringWithFormat:@"%@", v5];
  }

  return v8;
}

- (HMDDevice)initWithObjectModel:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [v4 uuid];
  }

  v8 = v7;

  v9 = [v4 deviceHandles];
  v10 = [v4 name];
  v11 = [v4 productInfo];
  v12 = [v4 version];
  v13 = [(HMDDevice *)self initWithIdentifier:v8 handles:v9 name:v10 productInfo:v11 version:v12 capabilities:0];

  if (v13)
  {
    v14 = [v4 uuid];
    modelIdentifier = v13->_modelIdentifier;
    v13->_modelIdentifier = v14;

    v16 = [v4 rpIdentity];
    v17 = [v16 copy];
    rpIdentity = v13->_rpIdentity;
    v13->_rpIdentity = v17;
  }

  return v13;
}

- (HMDDevice)initWithDeviceAddress:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 idsDestination];
  v6 = [HMDDeviceHandle deviceHandleForDestination:v5];

  v7 = [v4 idsIdentifier];
  v8 = [HMDDeviceHandle deviceHandleForDeviceIdentifier:v7];

  if (([v6 isGlobal] & 1) == 0)
  {
    _HMFPreconditionFailure();
LABEL_5:
    _HMFPreconditionFailure();
  }

  if (([v8 isLocal] & 1) == 0)
  {
    goto LABEL_5;
  }

  v9 = [v6 identifier];
  v14[0] = v6;
  v14[1] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v11 = [(HMDDevice *)self initWithIdentifier:v9 handles:v10 name:0 productInfo:0 version:0 capabilities:0];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (HMDDevice)initWithIdentifier:(id)a3 handles:(id)a4 name:(id)a5 productInfo:(id)a6 version:(id)a7 capabilities:(id)a8 account:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v38 = a7;
  v19 = a8;
  v20 = a9;
  v39.receiver = self;
  v39.super_class = HMDDevice;
  v21 = [(HMDDevice *)&v39 init];
  v22 = v21;
  if (v21)
  {
    v21->_lock.lock._os_unfair_lock_opaque = 0;
    v23 = [v15 copy];
    identifier = v22->_identifier;
    v22->_identifier = v23;

    v25 = [MEMORY[0x277CBEB98] setWithArray:v16];
    handles = v22->_handles;
    v22->_handles = v25;

    v27 = [v17 copy];
    name = v22->_name;
    v22->_name = v27;

    v29 = [v18 copy];
    productInfo = v22->_productInfo;
    v22->_productInfo = v29;

    objc_storeStrong(&v22->_version, a7);
    v31 = [v19 copy];
    capabilities = v22->_capabilities;
    v22->_capabilities = v31;

    objc_storeStrong(&v22->_localOnlyVersionFromIDS, a7);
    if (v20)
    {
      v33 = [v20 modelIdentifier];
      v34 = __modelIdentifierFromParentIdentifier(v22, v33);
      modelIdentifier = v22->_modelIdentifier;
      v22->_modelIdentifier = v34;

      v36 = v22->_capabilities;
      if (v36)
      {
        [(HMDDeviceCapabilities *)v36 setModelParentIdentifier:v22->_modelIdentifier];
      }
    }
  }

  return v22;
}

- (HMDDevice)init
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
  if (logCategory__hmf_once_t33_117996 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t33_117996, &__block_literal_global_117997);
  }

  v3 = logCategory__hmf_once_v34_117998;

  return v3;
}

uint64_t __24__HMDDevice_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v34_117998;
  logCategory__hmf_once_v34_117998 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (HMDDevice)deviceWithHandle:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 identifier];
  v11[0] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  v8 = [v5 initWithIdentifier:v6 handles:v7 name:0 productInfo:0 version:0 capabilities:0];
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (HMDDevice)deviceWithDestination:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [HMDDeviceHandle deviceHandleForDestination:v4];
  if (v5)
  {
    v6 = [a1 deviceWithHandle:v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Invalid destination: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v6 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

@end