@interface HMDDevice
+ (HMDDevice)deviceWithDestination:(id)destination;
+ (HMDDevice)deviceWithHandle:(id)handle;
+ (id)logCategory;
- (BOOL)isBackingStorageEqual:(id)equal;
- (BOOL)isCurrentDevice;
- (BOOL)isDirty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPublishingOnObservedNetService;
- (BOOL)isRelatedToDevice:(id)device;
- (BOOL)isSameAccountWithDevice:(id)device;
- (BOOL)mergeObject:(id)object;
- (BOOL)supportsHH2;
- (HMDAccount)account;
- (HMDDevice)init;
- (HMDDevice)initWithCoder:(id)coder;
- (HMDDevice)initWithDeviceAddress:(id)address;
- (HMDDevice)initWithIdentifier:(id)identifier handles:(id)handles name:(id)name productInfo:(id)info version:(id)version capabilities:(id)capabilities account:(id)account;
- (HMDDevice)initWithObjectModel:(id)model;
- (HMDDevice)initWithService:(id)service device:(id)device;
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
- (id)backingStoreObjectsWithChangeType:(unint64_t)type version:(int64_t)version;
- (id)deviceForIDSService:(id)service;
- (id)globalDestination;
- (id)globalHandles;
- (id)handles;
- (id)localHandles;
- (id)logIdentifier;
- (id)modelBackedObjects;
- (id)modelObjectWithChangeType:(unint64_t)type version:(int64_t)version;
- (uint64_t)_swapToNetServiceKVOCancellation:(void *)cancellation swapToObservedNetService:;
- (unint64_t)hash;
- (void)__handleAccountHandleUpdated:(id)updated;
- (void)__updateDeviceWithActions:(id)actions;
- (void)_postIsPublishingChanged:(void *)changed;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setAccount:(id)account;
- (void)setCapabilities:(id)capabilities;
- (void)setDirty:(BOOL)dirty;
- (void)setHandles:(id)handles;
- (void)setIDSIdentifierHash:(id)hash;
- (void)setLocalOnlyVersionFromIDS:(id)s;
- (void)setName:(id)name;
- (void)setProductInfo:(id)info;
- (void)setRpIdentity:(id)identity;
- (void)setVersion:(id)version;
- (void)startObservingIsPublishingForService:(id)service;
- (void)transactionObjectRemoved:(id)removed message:(id)message;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)updateVersion:(id)version;
- (void)updateWithDevice:(id)device;
@end

@implementation HMDDevice

- (id)deviceForIDSService:(id)service
{
  v26 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v5 = MEMORY[0x277CBEB98];
  localHandles = [(HMDDevice *)self localHandles];
  v7 = [v5 setWithArray:localHandles];

  if ([v7 count])
  {
    v8 = objc_autoreleasePoolPush();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    devices = [serviceCopy devices];
    v10 = [devices countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(devices);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = MEMORY[0x277CBEB98];
          v15 = [v13 hmd_handlesForService:serviceCopy];
          v16 = [v14 setWithArray:v15];
          v17 = [v7 intersectsSet:v16];

          if (v17)
          {
            v10 = v13;
            goto LABEL_12;
          }
        }

        v10 = [devices countByEnumeratingWithState:&v21 objects:v25 count:16];
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

- (HMDDevice)initWithService:(id)service device:(id)device
{
  v38 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  deviceCopy = device;
  v8 = deviceCopy;
  if (deviceCopy)
  {
    [deviceCopy hmd_handlesForService:serviceCopy];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v9 = v34 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      identifier2 = 0;
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
            identifier = [v15 identifier];

            identifier2 = identifier;
            goto LABEL_16;
          }

          if (!identifier2)
          {
            if ([v15 isLocal])
            {
              identifier2 = [v15 identifier];
            }

            else
            {
              identifier2 = 0;
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

      if (identifier2)
      {
        name = [v8 name];
        hmd_productInfo = [v8 hmd_productInfo];
        hmd_version = [v8 hmd_version];
        hmd_capabilities = [v8 hmd_capabilities];
        selfCopy2 = [(HMDDevice *)self initWithIdentifier:identifier2 handles:v9 name:name productInfo:hmd_productInfo version:hmd_version capabilities:hmd_capabilities];

        v22 = selfCopy2;
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
    }

    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
  selfCopy2 = self;
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

- (uint64_t)_swapToNetServiceKVOCancellation:(void *)cancellation swapToObservedNetService:
{
  v6 = a2;
  cancellationCopy = cancellation;
  if (self)
  {
    os_unfair_lock_lock_with_options();
    isPublishing = [*(self + 8) isPublishing];
    v12 = *(self + 16);
    v9 = *(self + 8);
    objc_storeStrong((self + 16), a2);
    objc_storeStrong((self + 8), cancellation);
    v10 = isPublishing ^ [*(self + 8) isPublishing];
    if (v10 == 1)
    {
      *(self + 24) = [*(self + 8) isPublishing];
    }

    os_unfair_lock_unlock((self + 40));
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

- (void)startObservingIsPublishingForService:(id)service
{
  serviceCopy = service;
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
  selfCopy = self;
  v11 = v5;
  v9 = serviceCopy;
  v6 = v5;
  v7 = serviceCopy;
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

- (void)_postIsPublishingChanged:(void *)changed
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEC10];
  v3 = MEMORY[0x277CBEC10];
  if (changed)
  {
    v18 = @"isPublishing";
    v4 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(changed, "isPublishingOnObservedNetService")}];
    v19[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];

    v6 = objc_autoreleasePoolPush();
    changedCopy = changed;
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"HMDDeviceIsPublishingChangedNotification" object:changedCopy userInfo:v5];
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

- (BOOL)isBackingStorageEqual:(id)equal
{
  v63 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
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

  if (![(HMDDevice *)self isEqual:v6])
  {
    goto LABEL_27;
  }

  idsIdentifier = [(HMDDevice *)self idsIdentifier];
  idsIdentifier2 = [v6 idsIdentifier];
  v9 = HMFEqualObjects();

  if ((v9 & 1) == 0)
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy = self;
    v31 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      goto LABEL_26;
    }

    v32 = HMFGetLogIdentifier();
    idsIdentifier3 = [(HMDDevice *)selfCopy idsIdentifier];
    idsIdentifier4 = [v6 idsIdentifier];
    *buf = 138543874;
    v58 = v32;
    v59 = 2112;
    v60 = idsIdentifier3;
    v61 = 2112;
    v62 = idsIdentifier4;
    v35 = "%{public}@Updating Device IDS Identifier from %@ to %@";
LABEL_25:
    _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, v35, buf, 0x20u);

    goto LABEL_26;
  }

  name = [(HMDDevice *)self name];
  name2 = [v6 name];
  v12 = HMFEqualObjects();

  if ((v12 & 1) == 0)
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v31 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      goto LABEL_26;
    }

    v32 = HMFGetLogIdentifier();
    idsIdentifier3 = [(HMDDevice *)selfCopy2 name];
    idsIdentifier4 = [v6 name];
    *buf = 138543874;
    v58 = v32;
    v59 = 2112;
    v60 = idsIdentifier3;
    v61 = 2112;
    v62 = idsIdentifier4;
    v35 = "%{public}@Updating Device name from %@ to %@";
    goto LABEL_25;
  }

  productInfo = [(HMDDevice *)self productInfo];
  productInfo2 = [v6 productInfo];
  v15 = HMFEqualObjects();

  if ((v15 & 1) == 0)
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v31 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      goto LABEL_26;
    }

    v32 = HMFGetLogIdentifier();
    idsIdentifier3 = [(HMDDevice *)selfCopy3 productInfo];
    idsIdentifier4 = [v6 productInfo];
    *buf = 138543874;
    v58 = v32;
    v59 = 2112;
    v60 = idsIdentifier3;
    v61 = 2112;
    v62 = idsIdentifier4;
    v35 = "%{public}@Updating Device Product Info from %@ to %@";
    goto LABEL_25;
  }

  version = [(HMDDevice *)self version];
  version2 = [v6 version];
  v18 = HMFEqualObjects();

  if ((v18 & 1) == 0)
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v31 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      goto LABEL_26;
    }

    v32 = HMFGetLogIdentifier();
    idsIdentifier3 = [(HMDDevice *)selfCopy4 version];
    idsIdentifier4 = [v6 version];
    *buf = 138543874;
    v58 = v32;
    v59 = 2112;
    v60 = idsIdentifier3;
    v61 = 2112;
    v62 = idsIdentifier4;
    v35 = "%{public}@Updating Device version from %@ to %@";
    goto LABEL_25;
  }

  capabilities = [(HMDDevice *)self capabilities];
  capabilities2 = [v6 capabilities];
  v21 = HMFEqualObjects();

  if ((v21 & 1) == 0)
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v31 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      goto LABEL_26;
    }

    v32 = HMFGetLogIdentifier();
    idsIdentifier3 = [(HMDDevice *)selfCopy5 capabilities];
    idsIdentifier4 = [v6 capabilities];
    *buf = 138543874;
    v58 = v32;
    v59 = 2112;
    v60 = idsIdentifier3;
    v61 = 2112;
    v62 = idsIdentifier4;
    v35 = "%{public}@Updating Device capabilities from %@ to %@";
    goto LABEL_25;
  }

  pushToken = [(HMDDevice *)self pushToken];
  pushToken2 = [v6 pushToken];
  v24 = HMFEqualObjects();

  if ((v24 & 1) == 0)
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy6 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      idsIdentifier3 = [(HMDDevice *)selfCopy6 pushToken];
      idsIdentifier4 = [v6 pushToken];
      *buf = 138543874;
      v58 = v32;
      v59 = 2112;
      v60 = idsIdentifier3;
      v61 = 2112;
      v62 = idsIdentifier4;
      v35 = "%{public}@Updating Push Token from %@ to %@";
      goto LABEL_25;
    }

LABEL_26:

    objc_autoreleasePoolPop(v29);
LABEL_27:
    v28 = 0;
    goto LABEL_28;
  }

  rpIdentity = [(HMDDevice *)self rpIdentity];
  rpIdentity2 = [v6 rpIdentity];
  v27 = HMFEqualObjects();

  if ((v27 & 1) == 0)
  {
    v43 = objc_autoreleasePoolPush();
    selfCopy7 = self;
    v45 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v46 = HMFGetLogIdentifier();
      rpIdentity3 = [(HMDDevice *)selfCopy7 rpIdentity];
      rpIdentity4 = [v6 rpIdentity];
      *buf = 138543874;
      v58 = v46;
      v59 = 2112;
      v60 = rpIdentity3;
      v61 = 2112;
      v62 = rpIdentity4;
      _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_INFO, "%{public}@Updating Device Rapport identity from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v43);
    v29 = objc_autoreleasePoolPush();
    v49 = selfCopy7;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v50 = HMFGetLogIdentifier();
      rpIdentity5 = [(HMDDevice *)v49 rpIdentity];
      deviceIRK = [rpIdentity5 deviceIRK];
      data = [deviceIRK data];
      rpIdentity6 = [v6 rpIdentity];
      deviceIRK2 = [rpIdentity6 deviceIRK];
      data2 = [deviceIRK2 data];
      *buf = 138543874;
      v58 = v50;
      v59 = 2112;
      v60 = data;
      v61 = 2112;
      v62 = data2;
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
  array = [MEMORY[0x277CBEB18] array];
  [array addObject:self];
  capabilities = [(HMDDevice *)self capabilities];
  if (capabilities)
  {
    [array addObject:capabilities];
  }

  v5 = [array copy];

  return v5;
}

- (id)backingStoreObjectsWithChangeType:(unint64_t)type version:(int64_t)version
{
  v7 = [HMDDevice modelObjectWithChangeType:"modelObjectWithChangeType:version:" version:?];
  if (v7)
  {
    array = [MEMORY[0x277CBEB18] array];
    [array addObject:v7];
    capabilities = [(HMDDevice *)self capabilities];
    v10 = capabilities;
    if (capabilities)
    {
      v11 = [capabilities modelObjectWithChangeType:type version:version];
      [array addObject:v11];
    }

    v12 = [array copy];
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  return v12;
}

- (id)modelObjectWithChangeType:(unint64_t)type version:(int64_t)version
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = [HMDDeviceModel alloc];
  modelIdentifier = [(HMDDevice *)self modelIdentifier];
  modelParentIdentifier = [(HMDDevice *)self modelParentIdentifier];
  v9 = [(HMDBackingStoreModelObject *)v6 initWithObjectChangeType:type uuid:modelIdentifier parentUUID:modelParentIdentifier];

  identifier = [(HMDDevice *)self identifier];
  [(HMDDeviceModel *)v9 setIdentifier:identifier];

  name = [(HMDDevice *)self name];
  v12 = [name copy];
  [(HMDDeviceModel *)v9 setName:v12];

  version = [(HMDDevice *)self version];
  v14 = [version copy];
  [(HMDDeviceModel *)v9 setVersion:v14];

  productInfo = [(HMDDevice *)self productInfo];
  v16 = [productInfo copy];
  [(HMDDeviceModel *)v9 setProductInfo:v16];

  rpIdentity = [(HMDDevice *)self rpIdentity];

  if (rpIdentity)
  {
    rpIdentity2 = [(HMDDevice *)self rpIdentity];
    v19 = [rpIdentity2 copy];
    [(HMDDeviceModel *)v9 setRpIdentity:v19];
  }

  handles = [(HMDDevice *)self handles];
  v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(handles, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v22 = handles;
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
  account = [(HMDDevice *)self account];
  modelIdentifier = [account modelIdentifier];

  return modelIdentifier;
}

- (void)__updateDeviceWithActions:(id)actions
{
  v23 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  account = [(HMDDevice *)self account];
  manager = [account manager];

  if ([actionsCopy source] == 2)
  {
    if (-[HMDDevice isCurrentDevice](self, "isCurrentDevice") || [manager isCurrentDeviceDataOwnerForDevice:self])
    {
      if (![(HMDDevice *)self isLocallyTracked])
      {
        [(HMDDevice *)self setLocallyTracked:1];
      }

      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
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
    selfCopy3 = self;
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
LABEL_21:

      objc_autoreleasePoolPop(v11);
      [actionsCopy markChanged];
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

  if ([actionsCopy source])
  {
    goto LABEL_22;
  }

  if (-[HMDDevice isCurrentDevice](self, "isCurrentDevice") || [manager isCurrentDeviceDataOwnerForDevice:self])
  {
    if (![(HMDDevice *)self isLocallyTracked])
    {
      [(HMDDevice *)self setLocallyTracked:1];
    }

    v11 = objc_autoreleasePoolPush();
    selfCopy3 = self;
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
    selfCopy4 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Not marking local transaction for cloud upload", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    [(HMDDevice *)selfCopy4 setCloudTracked:1];
  }

  [actionsCopy markLocalChanged];
LABEL_22:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v46[1] = *MEMORY[0x277D85DE8];
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

  if (v12 | v15)
  {
    transactionResult = [messageCopy transactionResult];
    [(HMDDevice *)self __updateDeviceWithActions:transactionResult];
    account = [(HMDDevice *)self account];
    manager = [account manager];
    v19 = [manager shouldDevice:self processModel:v13 actions:transactionResult];

    if (v19)
    {
      if (v12)
      {
        __transactionDeviceUpdated(self, v12, messageCopy);
      }

      else if (v15)
      {
        selfCopy = self;
        v27 = v15;
        v28 = messageCopy;
        transactionResult2 = [v28 transactionResult];
        capabilities = [(HMDDevice *)selfCopy capabilities];
        v39 = v28;
        v40 = v27;
        v38 = capabilities;
        if (capabilities)
        {
          [capabilities transactionObjectUpdated:0 newValues:v27 message:v28];
          v31 = transactionResult2;
        }

        else
        {
          v32 = [[HMDDeviceCapabilities alloc] initWithObjectModel:v27];
          [(HMDDevice *)selfCopy setCapabilities:v32];

          capabilities2 = [(HMDDevice *)selfCopy capabilities];

          v31 = transactionResult2;
          if (capabilities2)
          {
            [transactionResult2 markChanged];
            capabilities3 = [(HMDDevice *)selfCopy capabilities];
            v46[0] = @"HMDDeviceCapabilitiesUpdatedDifferingFieldsNotificationKey";
            setProperties = [v40 setProperties];
            *buf = setProperties;
            v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v46 count:1];
            logAndPostNotification(@"HMDDeviceCapabilitiiesUpdatedNotification", capabilities3, v35);
          }
        }

        if ([v31 changed])
        {
          [(HMDDevice *)selfCopy setDirty:1];
          backingStore = [v31 backingStore];
          __HMDDeviceMarkDirty(selfCopy, backingStore);
        }
      }
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    transactionResult = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:transactionResult];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectRemoved:(id)removed message:(id)message
{
  v24 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  messageCopy = message;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
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
      v21 = removedCopy;
      v22 = 2112;
      v23 = objc_opt_class();
      v15 = v23;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectRemoved:message:]", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  hmd_isForXPCTransport = [coderCopy hmd_isForXPCTransport];
  identifier = [(HMDDevice *)self identifier];
  if (hmd_isForXPCTransport)
  {
    [coderCopy encodeObject:identifier forKey:@"HM.identifier"];

    name = [(HMDDevice *)self name];
    [coderCopy encodeObject:name forKey:@"HM.name"];

    productInfo = [(HMDDevice *)self productInfo];
    [coderCopy encodeObject:productInfo forKey:*MEMORY[0x277CCFC60]];

    [coderCopy encodeBool:-[HMDDevice isCurrentDevice](self forKey:{"isCurrentDevice"), @"HM.currentDevice"}];
    idsIdentifier = [(HMDDevice *)self idsIdentifier];
    [coderCopy encodeObject:idsIdentifier forKey:*MEMORY[0x277CCFC58]];

    if (([coderCopy hmd_entitlements] & 0x1000) != 0)
    {
      remoteDestinationString = [(HMDDevice *)self remoteDestinationString];
      [coderCopy encodeObject:remoteDestinationString forKey:*MEMORY[0x277CCFC50]];
    }

    rpIdentity = [(HMDDevice *)self rpIdentity];
    deviceIRK = [rpIdentity deviceIRK];
    [coderCopy encodeObject:deviceIRK forKey:*MEMORY[0x277CCFC68]];

    supportsHH2 = [(HMDDevice *)self supportsHH2];
    [coderCopy encodeBool:supportsHH2 forKey:*MEMORY[0x277CCFCD0]];
  }

  else
  {
    [coderCopy encodeObject:identifier forKey:@"HM.identifier"];

    handles = [(HMDDevice *)self handles];
    [coderCopy encodeObject:handles forKey:@"HM.handles"];

    name2 = [(HMDDevice *)self name];
    [coderCopy encodeObject:name2 forKey:@"HM.name"];

    version = [(HMDDevice *)self version];
    [coderCopy encodeObject:version forKey:@"HM.version2"];

    if (([coderCopy hmd_isForLocalStore] & 1) != 0 || objc_msgSend(coderCopy, "hmd_isForRemoteTransportOnSameAccount"))
    {
      productInfo2 = [(HMDDevice *)self productInfo];
      [coderCopy encodeObject:productInfo2 forKey:@"HM.productInfo"];
    }

    version2 = [(HMDDevice *)self version];
    v18 = version2;
    if (version2)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%tu.%tu", objc_msgSend(version2, "majorVersion"), objc_msgSend(version2, "minorVersion")];
      v20 = MEMORY[0x277CCABB0];
      [v19 doubleValue];
      v21 = [v20 numberWithDouble:?];
    }

    else
    {
      v21 = 0;
    }

    [coderCopy encodeObject:v21 forKey:@"HM.version"];

    remoteDestinationString2 = [(HMDDevice *)self remoteDestinationString];
    [coderCopy encodeObject:remoteDestinationString2 forKey:@"HM.destination"];

    idsIdentifier2 = [(HMDDevice *)self idsIdentifier];
    [coderCopy encodeObject:idsIdentifier2 forKey:@"HM.idsIdentifier"];

    idsIdentifierHash = [(HMDDevice *)self idsIdentifierHash];
    [coderCopy encodeObject:idsIdentifierHash forKey:@"HM.accountIdentifier"];

    rpIdentity2 = [(HMDDevice *)self rpIdentity];
    [coderCopy encodeObject:rpIdentity2 forKey:@"HM.rpIdentity"];

    capabilities = [(HMDDevice *)self capabilities];
    [coderCopy encodeObject:capabilities forKey:@"HM.capabilities"];
    if (capabilities)
    {
      capabilities2 = [(HMDDevice *)self capabilities];
      [coderCopy encodeBool:objc_msgSend(capabilities2 forKey:{"supportsKeychainSync"), @"HM.supportsKeychainSync"}];

      capabilities3 = [(HMDDevice *)self capabilities];
      [coderCopy encodeBool:objc_msgSend(capabilities3 forKey:{"supportsCloudDataSync"), @"HM.supportsCloudDataSync"}];

      capabilities4 = [(HMDDevice *)self capabilities];
      [coderCopy encodeBool:objc_msgSend(capabilities4 forKey:{"isResidentCapable"), @"HM.residentCapable"}];

      capabilities5 = [(HMDDevice *)self capabilities];
      [coderCopy encodeBool:objc_msgSend(capabilities5 forKey:{"isRemoteGatewayCapable"), @"HM.remoteGatewayCapable"}];
    }

    if ([coderCopy hmd_isForLocalStore])
    {
      modelIdentifier = [(HMDDevice *)self modelIdentifier];
      [coderCopy encodeObject:modelIdentifier forKey:@"HM.modelIdentifier"];

      [coderCopy encodeBool:-[HMDDevice isLocallyTracked](self forKey:{"isLocallyTracked"), @"HM.locallyTracked"}];
      [coderCopy encodeBool:-[HMDDevice isCloudTracked](self forKey:{"isCloudTracked"), @"HM.cloudTracked"}];
      sharedUserIDSIdentifier = [(HMDDevice *)self sharedUserIDSIdentifier];
      [coderCopy encodeObject:sharedUserIDSIdentifier forKey:@"HM.sharedUserIDSIdentifier"];
    }
  }
}

- (HMDDevice)initWithCoder:(id)coder
{
  v56[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v4 = 0x277CCA000uLL;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.name"];
  v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.productInfo"];
  if ([coderCopy containsValueForKey:@"HM.handles"])
  {
    v7 = MEMORY[0x277CBEB98];
    v56[0] = objc_opt_class();
    v56[1] = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
    v9 = [v7 setWithArray:v8];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"HM.handles"];
  }

  else
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.idsIdentifier"];
    if (v9)
    {
      v11 = [[_HMDLocalDeviceHandle alloc] initWithDeviceIdentifier:v9];
      if (v11)
      {
        v12 = [[HMDDeviceHandle alloc] initWithInternal:v11];
        [v8 addObject:v12];
      }
    }

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.destination"];
    v14 = [HMDDeviceHandle deviceHandleForDestination:v13];

    if (v14)
    {
      [v8 addObject:v14];
    }

    v10 = [v8 copy];
  }

  v15 = v10;

  v49 = v15;
  if ([coderCopy containsValueForKey:@"HM.version2"])
  {
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.version2"];
    v17 = fixHomeKitVersion(v16);
  }

  else
  {
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.version"];
    if (v17)
    {
      v18 = v6;
      v19 = v5;
      v20 = objc_autoreleasePoolPush();
      selfCopy = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        stringValue = [v17 stringValue];
        *buf = 138543618;
        v53 = v23;
        v54 = 2112;
        v55 = stringValue;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Updating the version of device '%@'", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v16 = v17;
      v25 = [HMDHomeKitVersion alloc];
      stringValue2 = [v16 stringValue];

      v27 = [(HMDHomeKitVersion *)v25 initWithString:stringValue2];
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

  if ([coderCopy containsValueForKey:@"HM.capabilities"])
  {
    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.capabilities"];
  }

  else
  {
    v29 = [HMDDeviceCapabilitiesModel alloc];
    uUID = [*(v4 + 3448) UUID];
    v31 = [(HMDBackingStoreModelObject *)v29 initWithUUID:uUID];

    v32 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(coderCopy, "decodeBoolForKey:", @"HM.supportsKeychainSync"}];
    [(HMDDeviceCapabilitiesModel *)v31 setSupportsKeychainSync:v32];

    v33 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(coderCopy, "decodeBoolForKey:", @"HM.supportsCloudDataSync"}];
    [(HMDDeviceCapabilitiesModel *)v31 setSupportsCloudDataSync:v33];

    v34 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(coderCopy, "decodeBoolForKey:", @"HM.residentCapable"}];
    [(HMDDeviceCapabilitiesModel *)v31 setResidentCapable:v34];

    v35 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(coderCopy, "decodeBoolForKey:", @"HM.remoteGatewayCapable"}];
    [(HMDDeviceCapabilitiesModel *)v31 setRemoteGatewayCapable:v35];

    v28 = [[HMDDeviceCapabilities alloc] initWithObjectModel:v31];
  }

  v36 = [(HMDDevice *)self initWithIdentifier:v5 handles:v15 name:v6 productInfo:v51 version:v17 capabilities:v28];
  if (v36)
  {
    if ([coderCopy containsValueForKey:@"HM.modelIdentifier"])
    {
      v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.modelIdentifier"];
    }

    else
    {
      v37 = [(NSUUID *)v36->_identifier copy];
    }

    modelIdentifier = v36->_modelIdentifier;
    v36->_modelIdentifier = v37;

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.accountIdentifier"];
    idsIdentifierHash = v36->_idsIdentifierHash;
    v36->_idsIdentifierHash = v39;

    v41 = v36->_modelIdentifier;
    modelParentIdentifier = [(HMDDeviceCapabilities *)v36->_capabilities modelParentIdentifier];
    LOBYTE(v41) = HMFEqualObjects();

    if ((v41 & 1) == 0)
    {
      [(HMDDeviceCapabilities *)v36->_capabilities setModelParentIdentifier:v36->_modelIdentifier];
    }

    if ([coderCopy containsValueForKey:@"HM.rpIdentity"])
    {
      v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.rpIdentity"];
      rpIdentity = v36->_rpIdentity;
      v36->_rpIdentity = v43;
    }

    v36->_locallyTracked = [coderCopy decodeBoolForKey:@"HM.locallyTracked"];
    v36->_cloudTracked = [coderCopy decodeBoolForKey:@"HM.cloudTracked"];
    v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.sharedUserIDSIdentifier"];
    sharedUserIDSIdentifier = v36->_sharedUserIDSIdentifier;
    v36->_sharedUserIDSIdentifier = v45;

    v15 = v49;
  }

  v47 = *MEMORY[0x277D85DE8];
  return v36;
}

- (BOOL)mergeObject:(id)object
{
  v94 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
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

  idsIdentifier = [(HMDDevice *)self idsIdentifier];
  if (idsIdentifier)
  {

LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  idsIdentifierHash = [v6 idsIdentifierHash];
  if (!idsIdentifierHash)
  {
    goto LABEL_7;
  }

  v34 = idsIdentifierHash;
  idsIdentifierHash2 = [(HMDDevice *)self idsIdentifierHash];
  idsIdentifierHash3 = [v6 idsIdentifierHash];
  v37 = [idsIdentifierHash2 isEqual:idsIdentifierHash3];

  if (v37)
  {
    goto LABEL_7;
  }

  v38 = objc_autoreleasePoolPush();
  selfCopy = self;
  v40 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    v41 = HMFGetLogIdentifier();
    idsIdentifierHash4 = [v6 idsIdentifierHash];
    v90 = 138543618;
    v91 = v41;
    v92 = 2112;
    v93 = idsIdentifierHash4;
    _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_DEBUG, "%{public}@Updating device account identifier to %@", &v90, 0x16u);
  }

  objc_autoreleasePoolPop(v38);
  idsIdentifierHash5 = [v6 idsIdentifierHash];
  [(HMDDevice *)selfCopy setIDSIdentifierHash:idsIdentifierHash5];

  v8 = 1;
LABEL_8:
  name = [(HMDDevice *)self name];
  name2 = [v6 name];
  v11 = [name isEqualToString:name2];

  if ((v11 & 1) == 0)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      name3 = [v6 name];
      v90 = 138543618;
      v91 = v15;
      v92 = 2112;
      v93 = name3;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Updating device name to %@", &v90, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    name4 = [v6 name];
    [(HMDDevice *)selfCopy2 setName:name4];

    v8 = 1;
  }

  productInfo = [v6 productInfo];
  if (productInfo)
  {
    v19 = productInfo;
    productInfo2 = [(HMDDevice *)self productInfo];
    productInfo3 = [v6 productInfo];
    v22 = [productInfo2 isEqual:productInfo3];

    if ((v22 & 1) == 0)
    {
      v23 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = HMFGetLogIdentifier();
        productInfo4 = [v6 productInfo];
        v90 = 138543618;
        v91 = v26;
        v92 = 2112;
        v93 = productInfo4;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Updating device product info to %@", &v90, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      productInfo5 = [v6 productInfo];
      [(HMDDevice *)selfCopy3 setProductInfo:productInfo5];

      v8 = 1;
    }
  }

  version = [v6 version];

  if (version)
  {
    if ([(HMDDevice *)self isCurrentDevice])
    {
      version2 = [(HMDDevice *)self version];
      version3 = [v6 version];
      v32 = [version2 isEqual:version3];

      if (v32)
      {
        goto LABEL_30;
      }
    }

    else
    {
      version4 = [v6 version];
      version5 = [(HMDDevice *)self version];
      v46 = [version4 isGreaterThanVersion:version5];

      if (!v46)
      {
        goto LABEL_30;
      }
    }

    v47 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v49 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      v50 = HMFGetLogIdentifier();
      version6 = [v6 version];
      v90 = 138543618;
      v91 = v50;
      v92 = 2112;
      v93 = version6;
      _os_log_impl(&dword_2531F8000, v49, OS_LOG_TYPE_DEBUG, "%{public}@Updating device version to %@", &v90, 0x16u);
    }

    objc_autoreleasePoolPop(v47);
    version7 = [v6 version];
    [(HMDDevice *)selfCopy4 setVersion:version7];

    v8 = 1;
  }

LABEL_30:
  capabilities = [v6 capabilities];
  if (capabilities)
  {
    v54 = capabilities;
    capabilities2 = [(HMDDevice *)self capabilities];
    capabilities3 = [v6 capabilities];
    v57 = [capabilities2 isEqual:capabilities3];

    if ((v57 & 1) == 0)
    {
      v58 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v60 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        v61 = HMFGetLogIdentifier();
        capabilities4 = [v6 capabilities];
        v90 = 138543618;
        v91 = v61;
        v92 = 2112;
        v93 = capabilities4;
        _os_log_impl(&dword_2531F8000, v60, OS_LOG_TYPE_DEBUG, "%{public}@Updating device capabilities to: %@", &v90, 0x16u);
      }

      objc_autoreleasePoolPop(v58);
      capabilities5 = [v6 capabilities];
      [(HMDDevice *)selfCopy5 setCapabilities:capabilities5];

      v8 = 1;
    }
  }

  rpIdentity = [v6 rpIdentity];
  if (rpIdentity)
  {
    v65 = rpIdentity;
    rpIdentity2 = [v6 rpIdentity];
    rpIdentity3 = [(HMDDevice *)self rpIdentity];
    v68 = [rpIdentity2 isEqual:rpIdentity3];

    if ((v68 & 1) == 0)
    {
      rpIdentity4 = [v6 rpIdentity];
      [(HMDDevice *)self setRpIdentity:rpIdentity4];

      v8 = 1;
    }
  }

  v70 = MEMORY[0x277CBEB58];
  handles = [(HMDDevice *)self handles];
  v72 = [v70 setWithArray:handles];

  v73 = MEMORY[0x277CBEB98];
  handles2 = [v6 handles];
  v75 = [v73 setWithArray:handles2];
  v76 = [v72 mergeObject:v75];

  if (v76)
  {
    v77 = objc_autoreleasePoolPush();
    selfCopy6 = self;
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
    allObjects = [v72 allObjects];
    [(HMDDevice *)selfCopy6 setHandles:allObjects];

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
  selfCopy7 = self;
  v84 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
  {
    v85 = HMFGetLogIdentifier();
    v90 = 138543362;
    v91 = v85;
    _os_log_impl(&dword_2531F8000, v84, OS_LOG_TYPE_INFO, "%{public}@Merge resulted in changes, posting update notification", &v90, 0xCu);
  }

  objc_autoreleasePoolPop(v82);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"HMDDeviceUpdatedNotification" object:selfCopy7];

  v87 = 1;
LABEL_47:

  v88 = *MEMORY[0x277D85DE8];
  return v87;
}

- (id)logIdentifier
{
  identifier = [(HMDDevice *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (void)setRpIdentity:(id)identity
{
  v15 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = identityCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Setting RPIdentity %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  rpIdentity = selfCopy->_rpIdentity;
  selfCopy->_rpIdentity = identityCopy;

  os_unfair_lock_unlock(&selfCopy->_lock.lock);
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
  globalHandles = [(HMDDevice *)self globalHandles];
  firstObject = [globalHandles firstObject];

  if (firstObject)
  {
    destination = [firstObject destination];
  }

  else
  {
    localHandles = [(HMDDevice *)self localHandles];
    firstObject2 = [localHandles firstObject];

    destination = [firstObject2 destination];
  }

  return destination;
}

- (void)setIDSIdentifierHash:(id)hash
{
  hashCopy = hash;
  os_unfair_lock_lock_with_options();
  v4 = [hashCopy copy];
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
    idsIdentifier = [(HMDDevice *)self idsIdentifier];
    if (idsIdentifier)
    {
      idsIdentifier2 = [(HMDDevice *)self idsIdentifier];
      uUIDString = [idsIdentifier2 UUIDString];
      if ([uUIDString length])
      {
        if (__idsIdentifierHashFromIDSIdentifier_onceToken != -1)
        {
          dispatch_once(&__idsIdentifierHashFromIDSIdentifier_onceToken, &__block_literal_global_417);
        }

        v8 = objc_alloc(MEMORY[0x277CCAD78]);
        v9 = __idsIdentifierHashFromIDSIdentifier_namespace;
        v10 = [uUIDString dataUsingEncoding:4];
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

- (void)setDirty:(BOOL)dirty
{
  os_unfair_lock_lock_with_options();
  self->_dirty = dirty;

  os_unfair_lock_unlock(&self->_lock.lock);
}

- (BOOL)isDirty
{
  os_unfair_lock_lock_with_options();
  dirty = self->_dirty;
  os_unfair_lock_unlock(&self->_lock.lock);
  return dirty;
}

- (void)setCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  os_unfair_lock_lock_with_options();
  v4 = [capabilitiesCopy copy];
  capabilities = self->_capabilities;
  self->_capabilities = v4;

  if (self->_modelIdentifier)
  {
    modelParentIdentifier = [(HMDDeviceCapabilities *)self->_capabilities modelParentIdentifier];

    if (!modelParentIdentifier)
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
  localOnlyVersionFromIDS = [(HMDDevice *)self localOnlyVersionFromIDS];
  if (!localOnlyVersionFromIDS)
  {
    goto LABEL_4;
  }

  v4 = localOnlyVersionFromIDS;
  localOnlyVersionFromIDS2 = [(HMDDevice *)self localOnlyVersionFromIDS];
  version = [(HMDDevice *)self version];
  v7 = [localOnlyVersionFromIDS2 isGreaterThanVersion:version];

  if (v7)
  {
    localOnlyVersionFromIDS3 = [(HMDDevice *)self localOnlyVersionFromIDS];
  }

  else
  {
LABEL_4:
    localOnlyVersionFromIDS3 = [(HMDDevice *)self version];
  }

  return localOnlyVersionFromIDS3;
}

- (BOOL)supportsHH2
{
  derivedVersion = [(HMDDevice *)self derivedVersion];
  v3 = HMDMinimumHomeKitVersionSupportingHH2();
  v4 = [derivedVersion isAtLeastVersion:v3];

  return v4;
}

- (void)setLocalOnlyVersionFromIDS:(id)s
{
  sCopy = s;
  os_unfair_lock_lock_with_options();
  if (self->_localOnlyVersionFromIDS && ![sCopy isGreaterThanVersion:?])
  {
    os_unfair_lock_unlock(&self->_lock.lock);
  }

  else
  {
    objc_storeStrong(&self->_localOnlyVersionFromIDS, s);
    os_unfair_lock_unlock(&self->_lock.lock);
    [(HMDDevice *)self setDirty:1];
    account = [(HMDDevice *)self account];
    manager = [account manager];

    backingStore = [manager backingStore];
    __HMDDeviceMarkDirty(self, backingStore);
  }
}

- (HMDHomeKitVersion)localOnlyVersionFromIDS
{
  os_unfair_lock_lock_with_options();
  v3 = self->_localOnlyVersionFromIDS;
  os_unfair_lock_unlock(&self->_lock.lock);

  return v3;
}

- (void)updateWithDevice:(id)device
{
  v54 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = deviceCopy;
  if (deviceCopy && self != deviceCopy)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543874;
      v49 = v9;
      v50 = 2112;
      v51 = selfCopy;
      v52 = 2112;
      v53 = v5;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating with device -- local: %@, remote: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    account = [(HMDDevice *)selfCopy account];
    manager = [account manager];

    v47 = manager;
    backingStore = [manager backingStore];
    v13 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v46 = backingStore;
    v14 = [backingStore transaction:@"Update Device" options:v13];

    v15 = [(HMDDevice *)selfCopy modelObjectWithChangeType:2 version:4];
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
      uuid = [v17 uuid];
      if (uuid)
      {
        v23 = uuid;
        parentUUID = [v17 parentUUID];

        if (parentUUID)
        {
          [v14 add:v17];
        }
      }
    }

    v45 = v14;
    capabilities = [(HMDDevice *)selfCopy capabilities];
    v26 = [capabilities modelObjectWithChangeType:2 version:4];

    capabilities2 = [(HMDDevice *)v5 capabilities];
    v28 = [capabilities2 modelObjectWithChangeType:2 version:4];

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
      modelIdentifier = [(HMDDevice *)selfCopy modelIdentifier];
      if (modelIdentifier)
      {
        [HMDDeviceCapabilities deviceCapabilitiesModelIdentifierWithParentIdentifier:modelIdentifier];
      }

      else
      {
        [MEMORY[0x277CCAD78] UUID];
      }
      v37 = ;
      v35 = [(HMDBackingStoreModelObject *)[HMDDeviceCapabilitiesModel alloc] initWithObjectChangeType:1 uuid:v37 parentUUID:modelIdentifier];
    }

    if ([(HMDBackingStoreModelObject *)v35 diff:v34 differingFields:0])
    {
      v38 = [(HMDBackingStoreModelObject *)v35 merge:v34];
      uuid2 = [(HMDBackingStoreModelObject *)v35 uuid];
      if (uuid2)
      {
        v40 = uuid2;
        parentUUID2 = [(HMDBackingStoreModelObject *)v35 parentUUID];

        if (parentUUID2)
        {
          [v45 add:v35];
        }
      }
    }

    if ([v47 shouldSyncDevice:selfCopy])
    {
      [v45 run];
    }

    else
    {
      __transactionDeviceUpdated(selfCopy, v17, 0);
      v42 = [[HMDDeviceCapabilities alloc] initWithObjectModel:v35];
      [(HMDDevice *)selfCopy setCapabilities:v42];
    }
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (void)updateVersion:(id)version
{
  v10[1] = *MEMORY[0x277D85DE8];
  [(HMDDevice *)self setVersion:version];
  [(HMDDevice *)self setDirty:1];
  account = [(HMDDevice *)self account];
  manager = [account manager];

  backingStore = [manager backingStore];
  __HMDDeviceMarkDirty(self, backingStore);

  if ([manager shouldSyncDevice:self])
  {
    backingStore2 = [manager backingStore];
    v10[0] = self;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    [backingStore2 updateModelObjects:v8 destination:2];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setVersion:(id)version
{
  versionCopy = version;
  os_unfair_lock_lock_with_options();
  v4 = [versionCopy copy];
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

- (void)setProductInfo:(id)info
{
  infoCopy = info;
  os_unfair_lock_lock_with_options();
  v4 = [infoCopy copy];
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

- (void)setAccount:(id)account
{
  obj = account;
  primaryHandle = [obj primaryHandle];
  handles = [obj handles];
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_account, obj);
  if (obj)
  {
    if (!self->_modelIdentifier)
    {
      modelIdentifier = [obj modelIdentifier];
      v7 = __modelIdentifierFromParentIdentifier(self, modelIdentifier);
      modelIdentifier = self->_modelIdentifier;
      self->_modelIdentifier = v7;

      modelParentIdentifier = [(HMDDeviceCapabilities *)self->_capabilities modelParentIdentifier];

      if (!modelParentIdentifier)
      {
        [(HMDDeviceCapabilities *)self->_capabilities setModelParentIdentifier:self->_modelIdentifier];
      }
    }

    v10 = obj;
    selfCopy = self;
    __deregisterForAccountHandleUpdates(selfCopy);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:selfCopy selector:sel___handleAccountHandleUpdated_ name:@"HMDAccountHandlesUpdatedNotification" object:v10];

    v13 = MEMORY[0x277CBEB98];
    allObjects = [(NSSet *)selfCopy->_handles allObjects];
    v15 = __deviceHandlesForAccount(allObjects, handles, primaryHandle);
    v16 = [v13 setWithArray:v15];
    handles = selfCopy->_handles;
    selfCopy->_handles = v16;
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

- (void)setName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  v4 = [nameCopy copy];
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
  idsIdentifier = [(HMDDevice *)self idsIdentifier];
  v3 = +[HMDDeviceAddress localDeviceIDSIdentifier];
  v4 = [idsIdentifier isEqual:v3];

  return v4;
}

- (NSUUID)idsIdentifier
{
  localHandles = [(HMDDevice *)self localHandles];
  firstObject = [localHandles firstObject];

  if (firstObject)
  {
    internal = [firstObject internal];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = internal;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    deviceIdentifier = [v6 deviceIdentifier];
  }

  else
  {
    deviceIdentifier = 0;
  }

  return deviceIdentifier;
}

- (void)__handleAccountHandleUpdated:(id)updated
{
  v22 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  object = [updatedCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    account = [(HMDDevice *)self account];

    if (v7 == account)
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v20 = 138543362;
        v21 = v12;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Processing updated account handle", &v20, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      handles = [v7 handles];
      if (([handles hmf_isEmpty] & 1) == 0)
      {
        primaryHandle = [v7 primaryHandle];
        if (primaryHandle)
        {
          os_unfair_lock_lock_with_options();
          allObjects = [(NSSet *)selfCopy->_handles allObjects];
          v16 = __deviceHandlesForAccount(allObjects, handles, primaryHandle);

          v17 = [MEMORY[0x277CBEB98] setWithArray:v16];
          handles = selfCopy->_handles;
          selfCopy->_handles = v17;

          os_unfair_lock_unlock(&selfCopy->_lock.lock);
        }
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)setHandles:(id)handles
{
  handlesCopy = handles;
  if (handlesCopy)
  {
    v12 = handlesCopy;
    account = [(HMDDevice *)self account];
    v6 = [v12 copy];
    if (account)
    {
      handles = [account handles];
      primaryHandle = [account primaryHandle];
      v9 = __deviceHandlesForAccount(v6, handles, primaryHandle);

      v6 = v9;
    }

    os_unfair_lock_lock_with_options();
    v10 = [MEMORY[0x277CBEB98] setWithArray:v6];
    handles = self->_handles;
    self->_handles = v10;

    os_unfair_lock_unlock(&self->_lock.lock);
    handlesCopy = v12;
  }
}

- (NSData)pushToken
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  globalHandles = [(HMDDevice *)self globalHandles];
  v3 = [globalHandles countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(globalHandles);
        }

        pushToken = [*(*(&v11 + 1) + 8 * i) pushToken];
        if (pushToken)
        {
          v8 = pushToken;
          goto LABEL_11;
        }
      }

      v4 = [globalHandles countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  globalHandles = [(HMDDevice *)self globalHandles];
  if ([globalHandles count])
  {
    firstObject = [globalHandles firstObject];
    destination = [firstObject destination];
  }

  else
  {
    destination = 0;
  }

  return destination;
}

- (id)globalHandles
{
  v17 = *MEMORY[0x277D85DE8];
  handles = [(HMDDevice *)self handles];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(handles, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = handles;
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
  handles = [(HMDDevice *)self handles];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(handles, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = handles;
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
  allObjects = [(NSSet *)self->_handles allObjects];
  os_unfair_lock_unlock(&self->_lock.lock);

  return allObjects;
}

- (HMDDeviceAddress)deviceAddress
{
  idsIdentifier = [(HMDDevice *)self idsIdentifier];
  globalHandles = [(HMDDevice *)self globalHandles];
  firstObject = [globalHandles firstObject];
  destination = [firstObject destination];
  v7 = [HMDDeviceAddress addressWithIDSIdentifier:idsIdentifier idsDestination:destination];

  return v7;
}

- (BOOL)isSameAccountWithDevice:(id)device
{
  v21 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  account = [(HMDDevice *)self account];
  account2 = [(HMDDevice *)deviceCopy account];
  v7 = account2;
  if (account && account2)
  {
    v8 = HMFEqualObjects();
  }

  else
  {
    if (account)
    {
      selfCopy = deviceCopy;
    }

    else
    {
      selfCopy = self;
    }

    v10 = selfCopy;
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

- (BOOL)isRelatedToDevice:(id)device
{
  deviceCopy = device;
  if ([(HMDDevice *)self isEqual:deviceCopy])
  {
    v5 = 1;
  }

  else
  {
    v6 = MEMORY[0x277CBEB58];
    handles = [deviceCopy handles];
    v8 = [v6 setWithArray:handles];

    v9 = MEMORY[0x277CBEB98];
    handles2 = [(HMDDevice *)self handles];
    v11 = [v9 setWithArray:handles2];
    [v8 intersectSet:v11];

    v5 = [v8 count] != 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = [(HMDDevice *)equalCopy identifier];
      identifier2 = [(HMDDevice *)self identifier];
      v7 = [identifier isEqual:identifier2];
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
  identifier = [(HMDDevice *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (NSArray)attributeDescriptions
{
  v37[8] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  identifier = [(HMDDevice *)self identifier];
  uUIDString = [identifier UUIDString];
  v34 = [v3 initWithName:@"ID" value:?];
  v37[0] = v34;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  name = [(HMDDevice *)self name];
  defaultFormatter = [MEMORY[0x277D0F8D8] defaultFormatter];
  v33 = name;
  v31 = [v4 initWithName:@"Nm" value:name options:0 formatter:?];
  v37[1] = v31;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  version = [(HMDDevice *)self version];
  if (version)
  {
    version2 = [(HMDDevice *)self version];
  }

  else
  {
    version2 = @"Unknown";
  }

  v29 = [v6 initWithName:@"Ver" value:{version2, version2}];
  v37[2] = v29;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  capabilities = [(HMDDevice *)self capabilities];
  shortDescription = [capabilities shortDescription];
  v9 = [v8 initWithName:@"Cap" value:?];
  v37[3] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  sharedUserIDSIdentifier = [(HMDDevice *)self sharedUserIDSIdentifier];
  v12 = [v10 initWithName:@"SHID" value:sharedUserIDSIdentifier];
  v37[4] = v12;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  localOnlyVersionFromIDS = [(HMDDevice *)self localOnlyVersionFromIDS];
  if (localOnlyVersionFromIDS)
  {
    localOnlyVersionFromIDS2 = [(HMDDevice *)self localOnlyVersionFromIDS];
  }

  else
  {
    localOnlyVersionFromIDS2 = @"Unknown";
  }

  v16 = [v13 initWithName:@"IdsVer" value:localOnlyVersionFromIDS2];
  v37[5] = v16;
  v17 = objc_alloc(MEMORY[0x277D0F778]);
  idsIdentifier = [(HMDDevice *)self idsIdentifier];
  v19 = [v17 initWithName:@"IDS" value:idsIdentifier];
  v37[6] = v19;
  v20 = objc_alloc(MEMORY[0x277D0F778]);
  handles = [(HMDDevice *)self handles];
  v22 = [v20 initWithName:@"Hndl" value:handles];
  v37[7] = v22;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:8];

  if (localOnlyVersionFromIDS)
  {
  }

  if (version)
  {
  }

  v23 = *MEMORY[0x277D85DE8];

  return v26;
}

- (NSString)shortDescription
{
  v3 = isInternalBuild();
  v4 = MEMORY[0x277CCACA8];
  identifier = [(HMDDevice *)self identifier];
  v6 = identifier;
  if (v3)
  {
    name = [(HMDDevice *)self name];
    v8 = [v4 stringWithFormat:@"%@/%@", v6, name];
  }

  else
  {
    v8 = [v4 stringWithFormat:@"%@", identifier];
  }

  return v8;
}

- (HMDDevice)initWithObjectModel:(id)model
{
  modelCopy = model;
  identifier = [modelCopy identifier];
  v6 = identifier;
  if (identifier)
  {
    uuid = identifier;
  }

  else
  {
    uuid = [modelCopy uuid];
  }

  v8 = uuid;

  deviceHandles = [modelCopy deviceHandles];
  name = [modelCopy name];
  productInfo = [modelCopy productInfo];
  version = [modelCopy version];
  v13 = [(HMDDevice *)self initWithIdentifier:v8 handles:deviceHandles name:name productInfo:productInfo version:version capabilities:0];

  if (v13)
  {
    uuid2 = [modelCopy uuid];
    modelIdentifier = v13->_modelIdentifier;
    v13->_modelIdentifier = uuid2;

    rpIdentity = [modelCopy rpIdentity];
    v17 = [rpIdentity copy];
    rpIdentity = v13->_rpIdentity;
    v13->_rpIdentity = v17;
  }

  return v13;
}

- (HMDDevice)initWithDeviceAddress:(id)address
{
  v14[2] = *MEMORY[0x277D85DE8];
  addressCopy = address;
  idsDestination = [addressCopy idsDestination];
  v6 = [HMDDeviceHandle deviceHandleForDestination:idsDestination];

  idsIdentifier = [addressCopy idsIdentifier];
  v8 = [HMDDeviceHandle deviceHandleForDeviceIdentifier:idsIdentifier];

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

  identifier = [v6 identifier];
  v14[0] = v6;
  v14[1] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v11 = [(HMDDevice *)self initWithIdentifier:identifier handles:v10 name:0 productInfo:0 version:0 capabilities:0];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (HMDDevice)initWithIdentifier:(id)identifier handles:(id)handles name:(id)name productInfo:(id)info version:(id)version capabilities:(id)capabilities account:(id)account
{
  identifierCopy = identifier;
  handlesCopy = handles;
  nameCopy = name;
  infoCopy = info;
  versionCopy = version;
  capabilitiesCopy = capabilities;
  accountCopy = account;
  v39.receiver = self;
  v39.super_class = HMDDevice;
  v21 = [(HMDDevice *)&v39 init];
  v22 = v21;
  if (v21)
  {
    v21->_lock.lock._os_unfair_lock_opaque = 0;
    v23 = [identifierCopy copy];
    identifier = v22->_identifier;
    v22->_identifier = v23;

    v25 = [MEMORY[0x277CBEB98] setWithArray:handlesCopy];
    handles = v22->_handles;
    v22->_handles = v25;

    v27 = [nameCopy copy];
    name = v22->_name;
    v22->_name = v27;

    v29 = [infoCopy copy];
    productInfo = v22->_productInfo;
    v22->_productInfo = v29;

    objc_storeStrong(&v22->_version, version);
    v31 = [capabilitiesCopy copy];
    capabilities = v22->_capabilities;
    v22->_capabilities = v31;

    objc_storeStrong(&v22->_localOnlyVersionFromIDS, version);
    if (accountCopy)
    {
      modelIdentifier = [accountCopy modelIdentifier];
      v34 = __modelIdentifierFromParentIdentifier(v22, modelIdentifier);
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

+ (HMDDevice)deviceWithHandle:(id)handle
{
  v11[1] = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v5 = [self alloc];
  identifier = [handleCopy identifier];
  v11[0] = handleCopy;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  v8 = [v5 initWithIdentifier:identifier handles:v7 name:0 productInfo:0 version:0 capabilities:0];
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (HMDDevice)deviceWithDestination:(id)destination
{
  v17 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  v5 = [HMDDeviceHandle deviceHandleForDestination:destinationCopy];
  if (v5)
  {
    v6 = [self deviceWithHandle:v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = destinationCopy;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Invalid destination: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v6 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

@end