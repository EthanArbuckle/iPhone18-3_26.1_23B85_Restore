@interface HMDDevice
+ (HMDDevice)deviceWithDestination:(id)a3;
+ (HMDDevice)deviceWithHandle:(id)a3;
+ (id)logCategory;
- (BOOL)addHandle:(id)a3;
- (BOOL)isBackingStorageEqual:(id)a3;
- (BOOL)isCurrentDevice;
- (BOOL)isDirty;
- (BOOL)isEqual:(id)a3;
- (BOOL)isRelatedToDevice:(id)a3;
- (BOOL)isSameAccountWithDevice:(id)a3;
- (BOOL)mergeObject:(id)a3;
- (BOOL)updateBackingModel:(id)a3 error:(id *)a4;
- (HMDAccount)account;
- (HMDDevice)init;
- (HMDDevice)initWithBackingModel:(id)a3;
- (HMDDevice)initWithCoder:(id)a3;
- (HMDDevice)initWithDeviceAddress:(id)a3;
- (HMDDevice)initWithIdentifier:(id)a3 handles:(id)a4 name:(id)a5 productInfo:(id)a6 version:(id)a7 capabilities:(id)a8 account:(id)a9;
- (HMDDevice)initWithObjectModel:(id)a3;
- (HMDDevice)initWithService:(id)a3 device:(id)a4;
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
- (id)backingStoreObjectsWithChangeType:(unint64_t)a3 version:(int64_t)a4;
- (id)deviceForIDSService:(id)a3;
- (id)globalDestination;
- (id)globalHandles;
- (id)handles;
- (id)localHandles;
- (id)logIdentifier;
- (id)modelBackedObjects;
- (id)modelObjectWithChangeType:(unint64_t)a3 version:(int64_t)a4;
- (unint64_t)hash;
- (void)__handleAccountHandleUpdated:(id)a3;
- (void)__updateDeviceWithActions:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAccount:(id)a3;
- (void)setCapabilities:(id)a3;
- (void)setDirty:(BOOL)a3;
- (void)setHandles:(id)a3;
- (void)setName:(id)a3;
- (void)setProductInfo:(id)a3;
- (void)setRpIdentity:(id)a3;
- (void)setVersion:(id)a3;
- (void)transactionObjectRemoved:(id)a3 message:(id)a4;
- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)updateVersion:(id)a3;
- (void)updateWithDevice:(id)a3;
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
  v32 = [(HMDDevice *)self identifier];
  v31 = [v32 UUIDString];
  v30 = [v3 initWithName:@"ID" value:?];
  v33[0] = v30;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(HMDDevice *)self name];
  v28 = [MEMORY[0x277D0F8D8] defaultFormatter];
  v29 = v5;
  v27 = [v4 initWithName:@"Nm" value:v5 options:0 formatter:?];
  v33[1] = v27;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDDevice *)self version];
  if (v7)
  {
    v8 = [(HMDDevice *)self version];
  }

  else
  {
    v8 = @"Unknown";
  }

  v24 = v8;
  v26 = [v6 initWithName:@"Ver" value:v8];
  v33[2] = v26;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMDDevice *)self capabilities];
  v11 = [v10 shortDescription];
  v12 = [v9 initWithName:@"Cap" value:v11];
  v33[3] = v12;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  v14 = [(HMDDevice *)self sharedUserIDSIdentifier];
  v15 = [v13 initWithName:@"SHID" value:v14];
  v33[4] = v15;
  v16 = objc_alloc(MEMORY[0x277D0F778]);
  v17 = [(HMDDevice *)self idsIdentifier];
  v18 = [v16 initWithName:@"IDS" value:v17];
  v33[5] = v18;
  v19 = objc_alloc(MEMORY[0x277D0F778]);
  v20 = [(HMDDevice *)self handles];
  v21 = [v19 initWithName:@"Hndl" value:v20];
  v33[6] = v21;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:7];

  if (v7)
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

- (unint64_t)hash
{
  v2 = [(HMDDevice *)self identifier];
  v3 = [v2 hash];

  return v3;
}

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
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to create device identifier", buf, 0xCu);
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
    _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, v35, buf, 0x20u);

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
      _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_INFO, "%{public}@Updating Device Rapport identity from %@ to %@", buf, 0x20u);
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
  v21 = [v20 copy];
  [(HMDDeviceModel *)v9 setHandles:v21];

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
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, v15, &v21, 0xCu);

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

  isWatch();
  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    v21 = 138543362;
    v22 = v20;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Not marking local transaction for cloud upload", &v21, 0xCu);
  }

  objc_autoreleasePoolPop(v17);
  [(HMDDevice *)v18 setCloudTracked:1];
  [v4 markLocalChanged];
LABEL_22:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v99 = *MEMORY[0x277D85DE8];
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

  v81 = v15;
  v82 = v12;
  if (!(v12 | v15))
  {
    v49 = objc_autoreleasePoolPush();
    v50 = self;
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
    [v10 respondWithError:v54];

    goto LABEL_48;
  }

  v16 = [v10 transactionResult];
  [(HMDDevice *)self __updateDeviceWithActions:v16];
  v17 = [(HMDDevice *)self account];
  v18 = [v17 manager];
  v19 = [v18 shouldDevice:self processModel:v13 actions:v16];

  if (!v19)
  {

LABEL_48:
    v47 = v81;
    v20 = v82;
    goto LABEL_63;
  }

  v80 = v16;
  v20 = v82;
  if (v82)
  {
    v78 = v13;
    v21 = self;
    v22 = v82;
    v77 = v10;
    v76 = v10;
    v23 = [v76 transactionResult];
    v24 = [(HMDDevice *)v21 modelObjectWithChangeType:0 version:4];
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
        v48 = v16;
        v46 = v76;
        goto LABEL_56;
      }

      v74 = v26;
      v75 = v8;
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
          v35 = v21;
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
            v38 = [v22 deviceHandles];
            if (v38)
            {
              [(HMDDevice *)v35 setHandles:v38];
            }

            goto LABEL_34;
          }

          if ([v33 isEqualToString:@"name"])
          {
            v38 = [v22 name];
            v39 = [v38 copy];
            [(HMDDevice *)v35 setName:v39];
LABEL_33:

LABEL_34:
            [v23 markChanged];
            goto LABEL_35;
          }

          if ([v33 isEqualToString:@"version"])
          {
            v38 = [v22 version];
            v39 = [v38 copy];
            [(HMDDevice *)v35 setVersion:v39];
            goto LABEL_33;
          }

          if ([v33 isEqualToString:@"productInfo"])
          {
            v38 = [v22 productInfo];
            v39 = [v38 copy];
            [(HMDDevice *)v35 setProductInfo:v39];
            goto LABEL_33;
          }

          if ([v33 isEqualToString:@"rpIdentity"])
          {
            v38 = [v22 rpIdentity];
            v39 = [v38 copy];
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

          if ([v23 changed])
          {
            [(HMDDevice *)v21 setDirty:1];
            v45 = [v23 backingStore];
            __HMDDeviceMarkDirty(v21, v45);
          }

          v8 = v75;
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
    v62 = v21;
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
    v48 = v16;
LABEL_56:

    v10 = v77;
    v13 = v78;
  }

  else
  {
    v48 = v16;
    v47 = v81;
    if (v81)
    {
      v55 = self;
      v56 = v81;
      v57 = v10;
      v58 = [v57 transactionResult];
      v59 = [(HMDDevice *)v55 capabilities];
      v60 = v59;
      if (v59)
      {
        [v59 transactionObjectUpdated:0 newValues:v56 message:v57];
      }

      else
      {
        v66 = [[HMDDeviceCapabilities alloc] initWithObjectModel:v56];
        [(HMDDevice *)v55 setCapabilities:v66];

        v67 = [(HMDDevice *)v55 capabilities];

        if (v67)
        {
          [v58 markChanged];
          v68 = [(HMDDevice *)v55 capabilities];
          *&v95 = @"HMDDeviceCapabilitiesUpdatedDifferingFieldsNotificationKey";
          [v56 setProperties];
          v69 = v79 = v13;
          *v90 = v69;
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:&v95 count:1];
          v71 = v70 = v8;
          logAndPostNotification(@"HMDDeviceCapabilitiiesUpdatedNotification", v68, v71);

          v8 = v70;
          v13 = v79;
        }
      }

      if ([v58 changed])
      {
        [(HMDDevice *)v55 setDirty:1];
        v72 = [v58 backingStore];
        __HMDDeviceMarkDirty(v55, v72);
      }

      v47 = v81;
      v20 = 0;
      v48 = v80;
    }
  }

LABEL_63:
  v73 = *MEMORY[0x277D85DE8];
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
      v21 = v6;
      v22 = 2112;
      v23 = objc_opt_class();
      v15 = v23;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectRemoved:message:]", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v7 respondWithError:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)a3
{
  v32 = a3;
  v4 = [v32 hmd_isForXPCTransport];
  v5 = [(HMDDevice *)self identifier];
  if (v4)
  {
    [v32 encodeObject:v5 forKey:@"HM.identifier"];

    v6 = [(HMDDevice *)self name];
    [v32 encodeObject:v6 forKey:@"HM.name"];

    v7 = [(HMDDevice *)self productInfo];
    [v32 encodeObject:v7 forKey:*MEMORY[0x277CCFC60]];

    [v32 encodeBool:-[HMDDevice isCurrentDevice](self forKey:{"isCurrentDevice"), @"HM.currentDevice"}];
    v8 = [(HMDDevice *)self idsIdentifier];
    [v32 encodeObject:v8 forKey:*MEMORY[0x277CCFC58]];

    if (([v32 hmd_entitlements] & 0x1000) != 0)
    {
      v9 = [(HMDDevice *)self remoteDestinationString];
      [v32 encodeObject:v9 forKey:*MEMORY[0x277CCFC50]];
    }

    v10 = [(HMDDevice *)self rpIdentity];
    v11 = [v10 deviceIRK];
    [v32 encodeObject:v11 forKey:*MEMORY[0x277CCFC68]];

    v12 = [(HMDDevice *)self supportsHH2];
    [v32 encodeBool:v12 forKey:*MEMORY[0x277CCFCD0]];
  }

  else
  {
    [v32 encodeObject:v5 forKey:@"HM.identifier"];

    v13 = [(HMDDevice *)self handles];
    [v32 encodeObject:v13 forKey:@"HM.handles"];

    v14 = [(HMDDevice *)self name];
    [v32 encodeObject:v14 forKey:@"HM.name"];

    v15 = [(HMDDevice *)self version];
    [v32 encodeObject:v15 forKey:@"HM.version2"];

    if (([v32 hmd_isForLocalStore] & 1) != 0 || objc_msgSend(v32, "hmd_isForRemoteTransportOnSameAccount"))
    {
      v16 = [(HMDDevice *)self productInfo];
      [v32 encodeObject:v16 forKey:@"HM.productInfo"];
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

    [v32 encodeObject:v21 forKey:@"HM.version"];

    v22 = [(HMDDevice *)self remoteDestinationString];
    [v32 encodeObject:v22 forKey:@"HM.destination"];

    v23 = [(HMDDevice *)self idsIdentifier];
    [v32 encodeObject:v23 forKey:@"HM.idsIdentifier"];

    v24 = [(HMDDevice *)self rpIdentity];
    [v32 encodeObject:v24 forKey:@"HM.rpIdentity"];

    v25 = [(HMDDevice *)self capabilities];
    [v32 encodeObject:v25 forKey:@"HM.capabilities"];
    if (v25)
    {
      v26 = [(HMDDevice *)self capabilities];
      [v32 encodeBool:objc_msgSend(v26 forKey:{"supportsKeychainSync"), @"HM.supportsKeychainSync"}];

      v27 = [(HMDDevice *)self capabilities];
      [v32 encodeBool:objc_msgSend(v27 forKey:{"supportsCloudDataSync"), @"HM.supportsCloudDataSync"}];

      v28 = [(HMDDevice *)self capabilities];
      [v32 encodeBool:objc_msgSend(v28 forKey:{"isResidentCapable"), @"HM.residentCapable"}];

      v29 = [(HMDDevice *)self capabilities];
      [v32 encodeBool:objc_msgSend(v29 forKey:{"isRemoteGatewayCapable"), @"HM.remoteGatewayCapable"}];
    }

    if ([v32 hmd_isForLocalStore])
    {
      v30 = [(HMDDevice *)self modelIdentifier];
      [v32 encodeObject:v30 forKey:@"HM.modelIdentifier"];

      [v32 encodeBool:-[HMDDevice isLocallyTracked](self forKey:{"isLocallyTracked"), @"HM.locallyTracked"}];
      [v32 encodeBool:-[HMDDevice isCloudTracked](self forKey:{"isCloudTracked"), @"HM.cloudTracked"}];
      v31 = [(HMDDevice *)self sharedUserIDSIdentifier];
      [v32 encodeObject:v31 forKey:@"HM.sharedUserIDSIdentifier"];
    }
  }
}

- (HMDDevice)initWithCoder:(id)a3
{
  v54[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = 0x277CCA000uLL;
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HM.identifier"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HM.name"];
  v49 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HM.productInfo"];
  if ([v3 containsValueForKey:@"HM.handles"])
  {
    v7 = MEMORY[0x277CBEB98];
    v54[0] = objc_opt_class();
    v54[1] = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
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

  v47 = v15;
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
        v51 = v23;
        v52 = 2112;
        v53 = v24;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Updating the version of device '%@'", buf, 0x16u);
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
      v15 = v47;
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

  v36 = [(HMDDevice *)self initWithIdentifier:v5 handles:v15 name:v6 productInfo:v49 version:v17 capabilities:v28];
  if (v36)
  {
    if ([v3 containsValueForKey:@"HM.modelIdentifier"])
    {
      v37 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HM.modelIdentifier"];
      modelIdentifier = v36->_modelIdentifier;
      v36->_modelIdentifier = v37;
    }

    v39 = v36->_modelIdentifier;
    v40 = [(HMDDeviceCapabilities *)v36->_capabilities modelParentIdentifier];
    LOBYTE(v39) = HMFEqualObjects();

    if ((v39 & 1) == 0)
    {
      [(HMDDeviceCapabilities *)v36->_capabilities setModelParentIdentifier:v36->_modelIdentifier];
    }

    if ([v3 containsValueForKey:@"HM.rpIdentity"])
    {
      v41 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HM.rpIdentity"];
      rpIdentity = v36->_rpIdentity;
      v36->_rpIdentity = v41;
    }

    v36->_locallyTracked = [v3 decodeBoolForKey:@"HM.locallyTracked"];
    v36->_cloudTracked = [v3 decodeBoolForKey:@"HM.cloudTracked"];
    v43 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HM.sharedUserIDSIdentifier"];
    sharedUserIDSIdentifier = v36->_sharedUserIDSIdentifier;
    v36->_sharedUserIDSIdentifier = v43;

    v15 = v47;
  }

  v45 = *MEMORY[0x277D85DE8];
  return v36;
}

- (BOOL)mergeObject:(id)a3
{
  v82 = *MEMORY[0x277D85DE8];
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
    goto LABEL_38;
  }

  v7 = [(HMDDevice *)self name];
  v8 = [v6 name];
  v9 = [v7 isEqualToString:v8];

  if ((v9 & 1) == 0)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v6 name];
      v78 = 138543618;
      v79 = v13;
      v80 = 2112;
      v81 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Updating device name to %@", &v78, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = [v6 name];
    [(HMDDevice *)v11 setName:v15];
  }

  v16 = v9 ^ 1;
  v17 = [v6 productInfo];
  if (v17)
  {
    v18 = v17;
    v19 = [(HMDDevice *)self productInfo];
    v20 = [v6 productInfo];
    v21 = [v19 isEqual:v20];

    if ((v21 & 1) == 0)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v25 = HMFGetLogIdentifier();
        v26 = [v6 productInfo];
        v78 = 138543618;
        v79 = v25;
        v80 = 2112;
        v81 = v26;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Updating device product info to %@", &v78, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      v27 = [v6 productInfo];
      [(HMDDevice *)v23 setProductInfo:v27];

      v16 = 1;
    }
  }

  v28 = [v6 version];

  if (!v28)
  {
    goto LABEL_22;
  }

  if ([(HMDDevice *)self isCurrentDevice])
  {
    v29 = [(HMDDevice *)self version];
    v30 = [v6 version];
    v31 = [v29 isEqual:v30];

    if (v31)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v32 = [v6 version];
    v33 = [(HMDDevice *)self version];
    v34 = [v32 isGreaterThanVersion:v33];

    if (!v34)
    {
      goto LABEL_22;
    }
  }

  v35 = objc_autoreleasePoolPush();
  v36 = self;
  v37 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    v38 = HMFGetLogIdentifier();
    v39 = [v6 version];
    v78 = 138543618;
    v79 = v38;
    v80 = 2112;
    v81 = v39;
    _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_DEBUG, "%{public}@Updating device version to %@", &v78, 0x16u);
  }

  objc_autoreleasePoolPop(v35);
  v40 = [v6 version];
  [(HMDDevice *)v36 setVersion:v40];

  v16 = 1;
LABEL_22:
  v41 = [v6 capabilities];
  if (v41)
  {
    v42 = v41;
    v43 = [(HMDDevice *)self capabilities];
    v44 = [v6 capabilities];
    v45 = [v43 isEqual:v44];

    if ((v45 & 1) == 0)
    {
      v46 = objc_autoreleasePoolPush();
      v47 = self;
      v48 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        v49 = HMFGetLogIdentifier();
        v50 = [v6 capabilities];
        v78 = 138543618;
        v79 = v49;
        v80 = 2112;
        v81 = v50;
        _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_DEBUG, "%{public}@Updating device capabilities to: %@", &v78, 0x16u);
      }

      objc_autoreleasePoolPop(v46);
      v51 = [v6 capabilities];
      [(HMDDevice *)v47 setCapabilities:v51];

      v16 = 1;
    }
  }

  v52 = [v6 rpIdentity];
  if (v52)
  {
    v53 = v52;
    v54 = [v6 rpIdentity];
    v55 = [(HMDDevice *)self rpIdentity];
    v56 = [v54 isEqual:v55];

    if ((v56 & 1) == 0)
    {
      v57 = [v6 rpIdentity];
      [(HMDDevice *)self setRpIdentity:v57];

      v16 = 1;
    }
  }

  v58 = MEMORY[0x277CBEB58];
  v59 = [(HMDDevice *)self handles];
  v60 = [v58 setWithArray:v59];

  v61 = MEMORY[0x277CBEB98];
  v62 = [v6 handles];
  v63 = [v61 setWithArray:v62];
  v64 = [v60 mergeObject:v63];

  if (v64)
  {
    v65 = objc_autoreleasePoolPush();
    v66 = self;
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
    v69 = [v60 allObjects];
    [(HMDDevice *)v66 setHandles:v69];

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
  v71 = self;
  v72 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
  {
    v73 = HMFGetLogIdentifier();
    v78 = 138543362;
    v79 = v73;
    _os_log_impl(&dword_229538000, v72, OS_LOG_TYPE_INFO, "%{public}@Merge resulted in changes, posting update notification", &v78, 0xCu);
  }

  objc_autoreleasePoolPop(v70);
  v74 = [MEMORY[0x277CCAB98] defaultCenter];
  [v74 postNotificationName:@"HMDDeviceUpdatedNotification" object:v71];

  v75 = 1;
LABEL_39:

  v76 = *MEMORY[0x277D85DE8];
  return v75;
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
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Setting RPIdentity %@", &v11, 0x16u);
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

- (BOOL)addHandle:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEB58];
  v6 = [(HMDDevice *)self handles];
  v7 = [v5 setWithArray:v6];

  v8 = [v7 containsObject:v4];
  if ((v8 & 1) == 0)
  {
    [v7 addObject:v4];
    v9 = [v7 allObjects];
    [(HMDDevice *)self setHandles:v9];

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 postNotificationName:@"HMDDeviceUpdatedNotification" object:self];

    v11 = +[HMDAccountRegistry sharedRegistry];
    [v11 updateDevice:self withDevice:self];
  }

  return v8 ^ 1;
}

- (void)updateWithDevice:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
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
      v12 = 138543874;
      v13 = v9;
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating with device -- local: %@, remote: %@", &v12, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDDevice *)v7 mergeObject:v5];
    v10 = +[HMDAccountRegistry sharedRegistry];
    [v10 updateDevice:v7 withDevice:v7];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateVersion:(id)a3
{
  v4 = a3;
  [(HMDDevice *)self setVersion:v4];
  v5 = +[HMDAccountRegistry sharedRegistry];
  [v5 updateDevice:self toVersion:v4];
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

- (void)setProductInfo:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  productInfo = self->_productInfo;
  self->_productInfo = v4;

  os_unfair_lock_unlock(&self->_lock.lock);
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

- (BOOL)isCurrentDevice
{
  v2 = [(HMDDevice *)self idsIdentifier];
  v3 = +[HMDDeviceAddress localDeviceIDSIdentifier];
  v4 = [v2 isEqual:v3];

  return v4;
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
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Processing updated account handle", &v20, 0xCu);
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
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Device is missing account %@", &v17, 0x16u);
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

- (BOOL)updateBackingModel:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(HMDDevice *)self modelIdentifier];

  if (v6 && ([v5 modelID], v7 = objc_claimAutoreleasedReturnValue(), -[HMDDevice modelIdentifier](self, "modelIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqual:", v8), v8, v7, (v9 & 1) == 0))
  {
    v34 = _HMFPreconditionFailure();
    return [(HMDDevice *)v34 backingModelType];
  }

  else
  {
    if ([(HMDDevice *)self isCurrentDevice])
    {
      v10 = [(HMDDevice *)self capabilities];

      if (!v10)
      {
        v11 = +[HMDDeviceCapabilities deviceCapabilities];
        [(HMDDevice *)self setCapabilities:v11];
      }
    }

    v12 = [(HMDDevice *)self identifier];
    v13 = [v5 identifier];
    v14 = HMFEqualObjects();

    if ((v14 & 1) == 0)
    {
      [v5 setIdentifier:v12];
    }

    v15 = [(HMDDevice *)self name];
    v16 = [v5 name];
    v17 = HMFEqualObjects();

    if ((v17 & 1) == 0)
    {
      [v5 setName:v15];
    }

    v18 = [(HMDDevice *)self handles];
    v19 = [v5 handles];
    v20 = [v19 count];
    if (v20 != [v18 count] || (objc_msgSend(MEMORY[0x277CBEB98], "setWithArray:", v19), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CBEB98], "setWithArray:", v18), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v21, "isEqualToSet:", v22), v22, v21, (v23 & 1) == 0))
    {
      [v5 setHandles:v18];
    }

    v24 = [(HMDDevice *)self rpIdentity];
    if (v24)
    {
      v25 = [v5 rpIdentity];
      v26 = HMFEqualObjects();

      if ((v26 & 1) == 0)
      {
        [v5 setRpIdentity:v24];
      }
    }

    v27 = [(HMDDevice *)self productInfo];
    v28 = [v5 productInfo];
    v29 = HMFEqualObjects();

    if ((v29 & 1) == 0)
    {
      [v5 setProductInfo:v27];
    }

    v30 = [(HMDDevice *)self version];
    v31 = [v5 version];
    v32 = HMFEqualObjects();

    if ((v32 & 1) == 0)
    {
      [v5 setVersion:v30];
    }

    return 1;
  }
}

- (HMDDevice)initWithBackingModel:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v4 name];
  v7 = [v4 productInfo];
  v8 = [v4 version];
  v9 = [v4 handles];
  v10 = [v4 modelID];
  v11 = [v4 rpIdentity];

  v12 = [(HMDDevice *)self initWithIdentifier:v5 handles:v9 name:v6 productInfo:v7 version:v8 capabilities:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_modelIdentifier, v10);
    objc_storeStrong(&v13->_rpIdentity, v11);
  }

  return v13;
}

- (HMDDevice)initWithDeviceAddress:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 idsDestination];
  v6 = [HMDDeviceHandle deviceHandleForDestination:v5];

  v7 = [v4 idsIdentifier];
  v8 = [HMDDeviceHandle deviceHandleForDeviceIdentifier:v7];

  v9 = objc_autoreleasePoolPush();
  v10 = self;
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
  v14 = [v13 isDemoModeMadeForDemoBundle];

  if ((v14 & 1) == 0)
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
  v15 = [v6 identifier];
  v20[0] = v6;
  v20[1] = v8;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v17 = [(HMDDevice *)v10 initWithIdentifier:v15 handles:v16 name:0 productInfo:0 version:0 capabilities:0];

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (HMDDevice)initWithIdentifier:(id)a3 handles:(id)a4 name:(id)a5 productInfo:(id)a6 version:(id)a7 capabilities:(id)a8 account:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  if (v15)
  {
    v22 = v21;
    v48.receiver = self;
    v48.super_class = HMDDevice;
    v23 = [(HMDDevice *)&v48 init];
    v24 = v23;
    if (v23)
    {
      v23->_lock.lock._os_unfair_lock_opaque = 0;
      v25 = [v15 copy];
      identifier = v24->_identifier;
      v24->_identifier = v25;

      v27 = [MEMORY[0x277CBEB98] setWithArray:v16];
      handles = v24->_handles;
      v24->_handles = v27;

      v29 = [v17 copy];
      name = v24->_name;
      v24->_name = v29;

      v31 = [v18 copy];
      productInfo = v24->_productInfo;
      v24->_productInfo = v31;

      objc_storeStrong(&v24->_version, a7);
      v33 = [v20 copy];
      capabilities = v24->_capabilities;
      v24->_capabilities = v33;

      if (v22)
      {
        v35 = [v22 modelIdentifier];
        v36 = __modelIdentifierFromParentIdentifier(v24, v35);
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
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Invalid destination: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v6 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

@end