@interface HMDDevice
+ (HMDDevice)deviceWithDestination:(id)destination;
+ (HMDDevice)deviceWithHandle:(id)handle;
+ (id)logCategory;
- (BOOL)addHandle:(id)handle;
- (BOOL)isBackingStorageEqual:(id)equal;
- (BOOL)isCurrentDevice;
- (BOOL)isDirty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isRelatedToDevice:(id)device;
- (BOOL)isSameAccountWithDevice:(id)device;
- (BOOL)mergeObject:(id)object;
- (BOOL)updateBackingModel:(id)model error:(id *)error;
- (HMDAccount)account;
- (HMDDevice)init;
- (HMDDevice)initWithBackingModel:(id)model;
- (HMDDevice)initWithCoder:(id)coder;
- (HMDDevice)initWithDeviceAddress:(id)address;
- (HMDDevice)initWithIdentifier:(id)identifier handles:(id)handles name:(id)name productInfo:(id)info version:(id)version capabilities:(id)capabilities account:(id)account;
- (HMDDevice)initWithObjectModel:(id)model;
- (HMDDevice)initWithService:(id)service device:(id)device;
- (HMDDeviceAddress)deviceAddress;
- (HMDDeviceCapabilities)capabilities;
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
- (unint64_t)hash;
- (void)__handleAccountHandleUpdated:(id)updated;
- (void)__updateDeviceWithActions:(id)actions;
- (void)encodeWithCoder:(id)coder;
- (void)setAccount:(id)account;
- (void)setCapabilities:(id)capabilities;
- (void)setDirty:(BOOL)dirty;
- (void)setHandles:(id)handles;
- (void)setName:(id)name;
- (void)setProductInfo:(id)info;
- (void)setRpIdentity:(id)identity;
- (void)setVersion:(id)version;
- (void)transactionObjectRemoved:(id)removed message:(id)message;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)updateVersion:(id)version;
- (void)updateWithDevice:(id)device;
@end

@implementation HMDDevice

- (HMFProductInfo)productInfo
{
  os_unfair_lock_lock_with_options();
  v3 = self->_productInfo;
  os_unfair_lock_unlock(&self->_lock.lock);

  return v3;
}

- (NSString)name
{
  os_unfair_lock_lock_with_options();
  v3 = self->_name;
  os_unfair_lock_unlock(&self->_lock.lock);

  return v3;
}

- (NSArray)attributeDescriptions
{
  v33[7] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  identifier = [(HMDDevice *)self identifier];
  uUIDString = [identifier UUIDString];
  v30 = [v3 initWithName:@"ID" value:?];
  v33[0] = v30;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  name = [(HMDDevice *)self name];
  defaultFormatter = [MEMORY[0x277D0F8D8] defaultFormatter];
  v29 = name;
  v27 = [v4 initWithName:@"Nm" value:name options:0 formatter:?];
  v33[1] = v27;
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

  v24 = version2;
  v26 = [v6 initWithName:@"Ver" value:version2];
  v33[2] = v26;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  capabilities = [(HMDDevice *)self capabilities];
  shortDescription = [capabilities shortDescription];
  v12 = [v9 initWithName:@"Cap" value:shortDescription];
  v33[3] = v12;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  sharedUserIDSIdentifier = [(HMDDevice *)self sharedUserIDSIdentifier];
  v15 = [v13 initWithName:@"SHID" value:sharedUserIDSIdentifier];
  v33[4] = v15;
  v16 = objc_alloc(MEMORY[0x277D0F778]);
  idsIdentifier = [(HMDDevice *)self idsIdentifier];
  v18 = [v16 initWithName:@"IDS" value:idsIdentifier];
  v33[5] = v18;
  v19 = objc_alloc(MEMORY[0x277D0F778]);
  handles = [(HMDDevice *)self handles];
  v21 = [v19 initWithName:@"Hndl" value:handles];
  v33[6] = v21;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:7];

  if (version)
  {
  }

  v22 = *MEMORY[0x277D85DE8];

  return v25;
}

- (HMDHomeKitVersion)version
{
  os_unfair_lock_lock_with_options();
  v3 = self->_version;
  os_unfair_lock_unlock(&self->_lock.lock);

  return v3;
}

- (HMDDeviceCapabilities)capabilities
{
  os_unfair_lock_lock_with_options();
  v3 = self->_capabilities;
  os_unfair_lock_unlock(&self->_lock.lock);

  return v3;
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

- (unint64_t)hash
{
  identifier = [(HMDDevice *)self identifier];
  v3 = [identifier hash];

  return v3;
}

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
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to create device identifier", buf, 0xCu);
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
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Device is required", buf, 0xCu);
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
    _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, v35, buf, 0x20u);

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
      _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_INFO, "%{public}@Updating Device Rapport identity from %@ to %@", buf, 0x20u);
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
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Rapport identity changed from %@ to %@", buf, 0x20u);
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
  v21 = [handles copy];
  [(HMDDeviceModel *)v9 setHandles:v21];

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
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Not marking cloud transaction as a change for current device", &v21, 0xCu);
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
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, v15, &v21, 0xCu);

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

  isWatch();
  v17 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    v21 = 138543362;
    v22 = v20;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Not marking local transaction for cloud upload", &v21, 0xCu);
  }

  objc_autoreleasePoolPop(v17);
  [(HMDDevice *)selfCopy4 setCloudTracked:1];
  [actionsCopy markLocalChanged];
LABEL_22:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v99 = *MEMORY[0x277D85DE8];
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

  v81 = v15;
  v82 = v12;
  if (!(v12 | v15))
  {
    v49 = objc_autoreleasePoolPush();
    selfCopy = self;
    v51 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = HMFGetLogIdentifier();
      *v90 = 138543874;
      *&v90[4] = v52;
      v91 = 2112;
      v92 = v13;
      v93 = 2112;
      v94 = objc_opt_class();
      v53 = v94;
      _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectUpdated:newValues:message:]", v90, 0x20u);
    }

    objc_autoreleasePoolPop(v49);
    v54 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:v54];

    goto LABEL_48;
  }

  transactionResult = [messageCopy transactionResult];
  [(HMDDevice *)self __updateDeviceWithActions:transactionResult];
  account = [(HMDDevice *)self account];
  manager = [account manager];
  v19 = [manager shouldDevice:self processModel:v13 actions:transactionResult];

  if (!v19)
  {

LABEL_48:
    v47 = v81;
    v20 = v82;
    goto LABEL_63;
  }

  v80 = transactionResult;
  v20 = v82;
  if (v82)
  {
    v78 = v13;
    selfCopy2 = self;
    v22 = v82;
    v77 = messageCopy;
    v76 = messageCopy;
    transactionResult2 = [v76 transactionResult];
    v24 = [(HMDDevice *)selfCopy2 modelObjectWithChangeType:0 version:4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;

    if (v26)
    {
      v85 = 0;
      v27 = [v26 diff:v22 differingFields:&v85];
      v28 = v85;
      if (!v27)
      {
        v47 = v81;
        v20 = v82;
        v48 = transactionResult;
        v46 = v76;
        goto LABEL_56;
      }

      v74 = v26;
      v75 = updatedCopy;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      obj = v28;
      v29 = [obj countByEnumeratingWithState:&v95 objects:v90 count:16];
      if (!v29)
      {
        goto LABEL_41;
      }

      v30 = v29;
      v31 = *v96;
      v83 = v22;
      while (1)
      {
        v32 = 0;
        do
        {
          if (*v96 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v95 + 1) + 8 * v32);
          v34 = objc_autoreleasePoolPush();
          v35 = selfCopy2;
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            v37 = HMFGetLogIdentifier();
            *buf = 138543618;
            v87 = v37;
            v88 = 2112;
            v89 = v33;
            _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Updating device information for %@", buf, 0x16u);

            v22 = v83;
          }

          objc_autoreleasePoolPop(v34);
          if ([v33 isEqualToString:@"handles"])
          {
            deviceHandles = [v22 deviceHandles];
            if (deviceHandles)
            {
              [(HMDDevice *)v35 setHandles:deviceHandles];
            }

            goto LABEL_34;
          }

          if ([v33 isEqualToString:@"name"])
          {
            deviceHandles = [v22 name];
            v39 = [deviceHandles copy];
            [(HMDDevice *)v35 setName:v39];
LABEL_33:

LABEL_34:
            [transactionResult2 markChanged];
            goto LABEL_35;
          }

          if ([v33 isEqualToString:@"version"])
          {
            deviceHandles = [v22 version];
            v39 = [deviceHandles copy];
            [(HMDDevice *)v35 setVersion:v39];
            goto LABEL_33;
          }

          if ([v33 isEqualToString:@"productInfo"])
          {
            deviceHandles = [v22 productInfo];
            v39 = [deviceHandles copy];
            [(HMDDevice *)v35 setProductInfo:v39];
            goto LABEL_33;
          }

          if ([v33 isEqualToString:@"rpIdentity"])
          {
            deviceHandles = [v22 rpIdentity];
            v39 = [deviceHandles copy];
            [(HMDDevice *)v35 setRpIdentity:v39];
            goto LABEL_33;
          }

          v40 = objc_autoreleasePoolPush();
          v41 = v35;
          v42 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            v43 = HMFGetLogIdentifier();
            *buf = 138543618;
            v87 = v43;
            v88 = 2112;
            v89 = v33;
            _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@Unexpected field! -- changedField: %@", buf, 0x16u);

            v22 = v83;
          }

          objc_autoreleasePoolPop(v40);
LABEL_35:
          ++v32;
        }

        while (v30 != v32);
        v44 = [obj countByEnumeratingWithState:&v95 objects:v90 count:16];
        v30 = v44;
        if (!v44)
        {
LABEL_41:

          if ([transactionResult2 changed])
          {
            [(HMDDevice *)selfCopy2 setDirty:1];
            backingStore = [transactionResult2 backingStore];
            __HMDDeviceMarkDirty(selfCopy2, backingStore);
          }

          updatedCopy = v75;
          v46 = v76;
          v47 = v81;
          v20 = v82;
          v48 = v80;
          v26 = v74;
          v28 = obj;
          goto LABEL_56;
        }
      }
    }

    v61 = objc_autoreleasePoolPush();
    v62 = selfCopy2;
    v63 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      v64 = HMFGetLogIdentifier();
      *v90 = 138543362;
      *&v90[4] = v64;
      _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_ERROR, "%{public}@Unable to retrieve device model for updated device", v90, 0xCu);
    }

    objc_autoreleasePoolPop(v61);
    v65 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    v46 = v76;
    [v76 respondWithError:v65];
    v28 = v65;
    v47 = v81;
    v20 = v82;
    v48 = transactionResult;
LABEL_56:

    messageCopy = v77;
    v13 = v78;
  }

  else
  {
    v48 = transactionResult;
    v47 = v81;
    if (v81)
    {
      selfCopy3 = self;
      v56 = v81;
      v57 = messageCopy;
      transactionResult3 = [v57 transactionResult];
      capabilities = [(HMDDevice *)selfCopy3 capabilities];
      v60 = capabilities;
      if (capabilities)
      {
        [capabilities transactionObjectUpdated:0 newValues:v56 message:v57];
      }

      else
      {
        v66 = [[HMDDeviceCapabilities alloc] initWithObjectModel:v56];
        [(HMDDevice *)selfCopy3 setCapabilities:v66];

        capabilities2 = [(HMDDevice *)selfCopy3 capabilities];

        if (capabilities2)
        {
          [transactionResult3 markChanged];
          capabilities3 = [(HMDDevice *)selfCopy3 capabilities];
          *&v95 = @"HMDDeviceCapabilitiesUpdatedDifferingFieldsNotificationKey";
          [v56 setProperties];
          v69 = v79 = v13;
          *v90 = v69;
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:&v95 count:1];
          v71 = v70 = updatedCopy;
          logAndPostNotification(@"HMDDeviceCapabilitiiesUpdatedNotification", capabilities3, v71);

          updatedCopy = v70;
          v13 = v79;
        }
      }

      if ([transactionResult3 changed])
      {
        [(HMDDevice *)selfCopy3 setDirty:1];
        backingStore2 = [transactionResult3 backingStore];
        __HMDDeviceMarkDirty(selfCopy3, backingStore2);
      }

      v47 = v81;
      v20 = 0;
      v48 = v80;
    }
  }

LABEL_63:
  v73 = *MEMORY[0x277D85DE8];
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
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Received remove capabilities", &v18, 0xCu);
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
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectRemoved:message:]", &v18, 0x20u);
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
  v54[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v4 = 0x277CCA000uLL;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.name"];
  v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.productInfo"];
  if ([coderCopy containsValueForKey:@"HM.handles"])
  {
    v7 = MEMORY[0x277CBEB98];
    v54[0] = objc_opt_class();
    v54[1] = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
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

  v47 = v15;
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
        v51 = v23;
        v52 = 2112;
        v53 = stringValue;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Updating the version of device '%@'", buf, 0x16u);
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
      v15 = v47;
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

  v36 = [(HMDDevice *)self initWithIdentifier:v5 handles:v15 name:v6 productInfo:v49 version:v17 capabilities:v28];
  if (v36)
  {
    if ([coderCopy containsValueForKey:@"HM.modelIdentifier"])
    {
      v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.modelIdentifier"];
      modelIdentifier = v36->_modelIdentifier;
      v36->_modelIdentifier = v37;
    }

    v39 = v36->_modelIdentifier;
    modelParentIdentifier = [(HMDDeviceCapabilities *)v36->_capabilities modelParentIdentifier];
    LOBYTE(v39) = HMFEqualObjects();

    if ((v39 & 1) == 0)
    {
      [(HMDDeviceCapabilities *)v36->_capabilities setModelParentIdentifier:v36->_modelIdentifier];
    }

    if ([coderCopy containsValueForKey:@"HM.rpIdentity"])
    {
      v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.rpIdentity"];
      rpIdentity = v36->_rpIdentity;
      v36->_rpIdentity = v41;
    }

    v36->_locallyTracked = [coderCopy decodeBoolForKey:@"HM.locallyTracked"];
    v36->_cloudTracked = [coderCopy decodeBoolForKey:@"HM.cloudTracked"];
    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.sharedUserIDSIdentifier"];
    sharedUserIDSIdentifier = v36->_sharedUserIDSIdentifier;
    v36->_sharedUserIDSIdentifier = v43;

    v15 = v47;
  }

  v45 = *MEMORY[0x277D85DE8];
  return v36;
}

- (BOOL)mergeObject:(id)object
{
  v82 = *MEMORY[0x277D85DE8];
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
    goto LABEL_38;
  }

  name = [(HMDDevice *)self name];
  name2 = [v6 name];
  v9 = [name isEqualToString:name2];

  if ((v9 & 1) == 0)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      name3 = [v6 name];
      v78 = 138543618;
      v79 = v13;
      v80 = 2112;
      v81 = name3;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Updating device name to %@", &v78, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    name4 = [v6 name];
    [(HMDDevice *)selfCopy setName:name4];
  }

  v16 = v9 ^ 1;
  productInfo = [v6 productInfo];
  if (productInfo)
  {
    v18 = productInfo;
    productInfo2 = [(HMDDevice *)self productInfo];
    productInfo3 = [v6 productInfo];
    v21 = [productInfo2 isEqual:productInfo3];

    if ((v21 & 1) == 0)
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v25 = HMFGetLogIdentifier();
        productInfo4 = [v6 productInfo];
        v78 = 138543618;
        v79 = v25;
        v80 = 2112;
        v81 = productInfo4;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Updating device product info to %@", &v78, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      productInfo5 = [v6 productInfo];
      [(HMDDevice *)selfCopy2 setProductInfo:productInfo5];

      v16 = 1;
    }
  }

  version = [v6 version];

  if (!version)
  {
    goto LABEL_22;
  }

  if ([(HMDDevice *)self isCurrentDevice])
  {
    version2 = [(HMDDevice *)self version];
    version3 = [v6 version];
    v31 = [version2 isEqual:version3];

    if (v31)
    {
      goto LABEL_22;
    }
  }

  else
  {
    version4 = [v6 version];
    version5 = [(HMDDevice *)self version];
    v34 = [version4 isGreaterThanVersion:version5];

    if (!v34)
    {
      goto LABEL_22;
    }
  }

  v35 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v37 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    v38 = HMFGetLogIdentifier();
    version6 = [v6 version];
    v78 = 138543618;
    v79 = v38;
    v80 = 2112;
    v81 = version6;
    _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_DEBUG, "%{public}@Updating device version to %@", &v78, 0x16u);
  }

  objc_autoreleasePoolPop(v35);
  version7 = [v6 version];
  [(HMDDevice *)selfCopy3 setVersion:version7];

  v16 = 1;
LABEL_22:
  capabilities = [v6 capabilities];
  if (capabilities)
  {
    v42 = capabilities;
    capabilities2 = [(HMDDevice *)self capabilities];
    capabilities3 = [v6 capabilities];
    v45 = [capabilities2 isEqual:capabilities3];

    if ((v45 & 1) == 0)
    {
      v46 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v48 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        v49 = HMFGetLogIdentifier();
        capabilities4 = [v6 capabilities];
        v78 = 138543618;
        v79 = v49;
        v80 = 2112;
        v81 = capabilities4;
        _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_DEBUG, "%{public}@Updating device capabilities to: %@", &v78, 0x16u);
      }

      objc_autoreleasePoolPop(v46);
      capabilities5 = [v6 capabilities];
      [(HMDDevice *)selfCopy4 setCapabilities:capabilities5];

      v16 = 1;
    }
  }

  rpIdentity = [v6 rpIdentity];
  if (rpIdentity)
  {
    v53 = rpIdentity;
    rpIdentity2 = [v6 rpIdentity];
    rpIdentity3 = [(HMDDevice *)self rpIdentity];
    v56 = [rpIdentity2 isEqual:rpIdentity3];

    if ((v56 & 1) == 0)
    {
      rpIdentity4 = [v6 rpIdentity];
      [(HMDDevice *)self setRpIdentity:rpIdentity4];

      v16 = 1;
    }
  }

  v58 = MEMORY[0x277CBEB58];
  handles = [(HMDDevice *)self handles];
  v60 = [v58 setWithArray:handles];

  v61 = MEMORY[0x277CBEB98];
  handles2 = [v6 handles];
  v63 = [v61 setWithArray:handles2];
  v64 = [v60 mergeObject:v63];

  if (v64)
  {
    v65 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v67 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
    {
      v68 = HMFGetLogIdentifier();
      v78 = 138543618;
      v79 = v68;
      v80 = 2112;
      v81 = v60;
      _os_log_impl(&dword_229538000, v67, OS_LOG_TYPE_DEBUG, "%{public}@Updating handles: %@", &v78, 0x16u);
    }

    objc_autoreleasePoolPop(v65);
    allObjects = [v60 allObjects];
    [(HMDDevice *)selfCopy5 setHandles:allObjects];

    goto LABEL_35;
  }

  if (!v16)
  {
LABEL_38:
    v75 = 0;
    goto LABEL_39;
  }

LABEL_35:
  v70 = objc_autoreleasePoolPush();
  selfCopy6 = self;
  v72 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
  {
    v73 = HMFGetLogIdentifier();
    v78 = 138543362;
    v79 = v73;
    _os_log_impl(&dword_229538000, v72, OS_LOG_TYPE_INFO, "%{public}@Merge resulted in changes, posting update notification", &v78, 0xCu);
  }

  objc_autoreleasePoolPop(v70);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"HMDDeviceUpdatedNotification" object:selfCopy6];

  v75 = 1;
LABEL_39:

  v76 = *MEMORY[0x277D85DE8];
  return v75;
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
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Setting RPIdentity %@", &v11, 0x16u);
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

- (BOOL)addHandle:(id)handle
{
  handleCopy = handle;
  v5 = MEMORY[0x277CBEB58];
  handles = [(HMDDevice *)self handles];
  v7 = [v5 setWithArray:handles];

  v8 = [v7 containsObject:handleCopy];
  if ((v8 & 1) == 0)
  {
    [v7 addObject:handleCopy];
    allObjects = [v7 allObjects];
    [(HMDDevice *)self setHandles:allObjects];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"HMDDeviceUpdatedNotification" object:self];

    v11 = +[HMDAccountRegistry sharedRegistry];
    [v11 updateDevice:self withDevice:self];
  }

  return v8 ^ 1;
}

- (void)updateWithDevice:(id)device
{
  v18 = *MEMORY[0x277D85DE8];
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
      v12 = 138543874;
      v13 = v9;
      v14 = 2112;
      v15 = selfCopy;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating with device -- local: %@, remote: %@", &v12, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDDevice *)selfCopy mergeObject:v5];
    v10 = +[HMDAccountRegistry sharedRegistry];
    [v10 updateDevice:selfCopy withDevice:selfCopy];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateVersion:(id)version
{
  versionCopy = version;
  [(HMDDevice *)self setVersion:versionCopy];
  v5 = +[HMDAccountRegistry sharedRegistry];
  [v5 updateDevice:self toVersion:versionCopy];
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

- (void)setProductInfo:(id)info
{
  infoCopy = info;
  os_unfair_lock_lock_with_options();
  v4 = [infoCopy copy];
  productInfo = self->_productInfo;
  self->_productInfo = v4;

  os_unfair_lock_unlock(&self->_lock.lock);
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

- (BOOL)isCurrentDevice
{
  idsIdentifier = [(HMDDevice *)self idsIdentifier];
  v3 = +[HMDDeviceAddress localDeviceIDSIdentifier];
  v4 = [idsIdentifier isEqual:v3];

  return v4;
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
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Processing updated account handle", &v20, 0xCu);
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
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Device is missing account %@", &v17, 0x16u);
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

- (BOOL)updateBackingModel:(id)model error:(id *)error
{
  modelCopy = model;
  modelIdentifier = [(HMDDevice *)self modelIdentifier];

  if (modelIdentifier && ([modelCopy modelID], v7 = objc_claimAutoreleasedReturnValue(), -[HMDDevice modelIdentifier](self, "modelIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqual:", v8), v8, v7, (v9 & 1) == 0))
  {
    v34 = _HMFPreconditionFailure();
    return [(HMDDevice *)v34 backingModelType];
  }

  else
  {
    if ([(HMDDevice *)self isCurrentDevice])
    {
      capabilities = [(HMDDevice *)self capabilities];

      if (!capabilities)
      {
        v11 = +[HMDDeviceCapabilities deviceCapabilities];
        [(HMDDevice *)self setCapabilities:v11];
      }
    }

    identifier = [(HMDDevice *)self identifier];
    identifier2 = [modelCopy identifier];
    v14 = HMFEqualObjects();

    if ((v14 & 1) == 0)
    {
      [modelCopy setIdentifier:identifier];
    }

    name = [(HMDDevice *)self name];
    name2 = [modelCopy name];
    v17 = HMFEqualObjects();

    if ((v17 & 1) == 0)
    {
      [modelCopy setName:name];
    }

    handles = [(HMDDevice *)self handles];
    handles2 = [modelCopy handles];
    v20 = [handles2 count];
    if (v20 != [handles count] || (objc_msgSend(MEMORY[0x277CBEB98], "setWithArray:", handles2), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CBEB98], "setWithArray:", handles), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v21, "isEqualToSet:", v22), v22, v21, (v23 & 1) == 0))
    {
      [modelCopy setHandles:handles];
    }

    rpIdentity = [(HMDDevice *)self rpIdentity];
    if (rpIdentity)
    {
      rpIdentity2 = [modelCopy rpIdentity];
      v26 = HMFEqualObjects();

      if ((v26 & 1) == 0)
      {
        [modelCopy setRpIdentity:rpIdentity];
      }
    }

    productInfo = [(HMDDevice *)self productInfo];
    productInfo2 = [modelCopy productInfo];
    v29 = HMFEqualObjects();

    if ((v29 & 1) == 0)
    {
      [modelCopy setProductInfo:productInfo];
    }

    version = [(HMDDevice *)self version];
    version2 = [modelCopy version];
    v32 = HMFEqualObjects();

    if ((v32 & 1) == 0)
    {
      [modelCopy setVersion:version];
    }

    return 1;
  }
}

- (HMDDevice)initWithBackingModel:(id)model
{
  modelCopy = model;
  identifier = [modelCopy identifier];
  name = [modelCopy name];
  productInfo = [modelCopy productInfo];
  version = [modelCopy version];
  handles = [modelCopy handles];
  modelID = [modelCopy modelID];
  rpIdentity = [modelCopy rpIdentity];

  v12 = [(HMDDevice *)self initWithIdentifier:identifier handles:handles name:name productInfo:productInfo version:version capabilities:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_modelIdentifier, modelID);
    objc_storeStrong(&v13->_rpIdentity, rpIdentity);
  }

  return v13;
}

- (HMDDevice)initWithDeviceAddress:(id)address
{
  v27 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  idsDestination = [addressCopy idsDestination];
  v6 = [HMDDeviceHandle deviceHandleForDestination:idsDestination];

  idsIdentifier = [addressCopy idsIdentifier];
  v8 = [HMDDeviceHandle deviceHandleForDeviceIdentifier:idsIdentifier];

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543874;
    v22 = v12;
    v23 = 2112;
    v24 = v6;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Init device with globalHandle: %@ and localHandle: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = +[HMDDemoModeManagerDataSource defaultDataSource];
  isDemoModeMadeForDemoBundle = [v13 isDemoModeMadeForDemoBundle];

  if ((isDemoModeMadeForDemoBundle & 1) == 0)
  {
    if ([v6 isGlobal])
    {
      if ([v8 isLocal])
      {
        goto LABEL_6;
      }
    }

    else
    {
      _HMFPreconditionFailure();
    }

    _HMFPreconditionFailure();
  }

LABEL_6:
  identifier = [v6 identifier];
  v20[0] = v6;
  v20[1] = v8;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v17 = [(HMDDevice *)selfCopy initWithIdentifier:identifier handles:v16 name:0 productInfo:0 version:0 capabilities:0];

  v18 = *MEMORY[0x277D85DE8];
  return v17;
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
  if (identifierCopy)
  {
    v22 = accountCopy;
    v48.receiver = self;
    v48.super_class = HMDDevice;
    v23 = [(HMDDevice *)&v48 init];
    v24 = v23;
    if (v23)
    {
      v23->_lock.lock._os_unfair_lock_opaque = 0;
      v25 = [identifierCopy copy];
      identifier = v24->_identifier;
      v24->_identifier = v25;

      v27 = [MEMORY[0x277CBEB98] setWithArray:handlesCopy];
      handles = v24->_handles;
      v24->_handles = v27;

      v29 = [nameCopy copy];
      name = v24->_name;
      v24->_name = v29;

      v31 = [infoCopy copy];
      productInfo = v24->_productInfo;
      v24->_productInfo = v31;

      objc_storeStrong(&v24->_version, version);
      v33 = [capabilitiesCopy copy];
      capabilities = v24->_capabilities;
      v24->_capabilities = v33;

      if (v22)
      {
        modelIdentifier = [v22 modelIdentifier];
        v36 = __modelIdentifierFromParentIdentifier(v24, modelIdentifier);
        modelIdentifier = v24->_modelIdentifier;
        v24->_modelIdentifier = v36;

        v38 = v24->_capabilities;
        if (v38)
        {
          [(HMDDeviceCapabilities *)v38 setModelParentIdentifier:v24->_modelIdentifier];
        }
      }
    }

    return v24;
  }

  else
  {
    v40 = _HMFPreconditionFailure();
    return [(HMDDevice *)v40 initWithIdentifier:v41 handles:v42 name:v43 productInfo:v44 version:v45 capabilities:v46, v47];
  }
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
  if (logCategory__hmf_once_t26_177468 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t26_177468, &__block_literal_global_177469);
  }

  v3 = logCategory__hmf_once_v27_177470;

  return v3;
}

void __24__HMDDevice_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v27_177470;
  logCategory__hmf_once_v27_177470 = v1;
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
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Invalid destination: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v6 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

@end