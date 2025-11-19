@interface HMDApplicationData
+ (id)logCategory;
+ (unint64_t)sizeLimit;
- (BOOL)isEmpty;
- (HMDApplicationData)initWithCoder:(id)a3;
- (HMDApplicationData)initWithDictionary:(id)a3 parentUUID:(id)a4;
- (HMDApplicationData)initWithParentUUID:(id)a3;
- (NSUUID)uuid;
- (id)applicationDataForIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionary;
- (id)dumpStateWithPrivacyLevel:(unint64_t)a3;
- (id)logIdentifier;
- (id)modelObjectWithChangeType:(unint64_t)a3;
- (void)encodeForXPCTransportWithCoder:(id)a3 key:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)removeApplicationDataForIdentifier:(id)a3;
- (void)setApplicationData:(id)a3 forIdentifier:(id)a4;
- (void)updateParentUUIDIfNil:(id)a3;
- (void)updateWithModel:(id)a3;
@end

@implementation HMDApplicationData

- (id)logIdentifier
{
  v2 = [(HMDApplicationData *)self parentUUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)modelObjectWithChangeType:(unint64_t)a3
{
  v5 = [(HMDApplicationData *)self isEmpty];
  v6 = [HMDApplicationDataModel alloc];
  v7 = [(HMDApplicationData *)self uuid];
  v8 = [(HMDApplicationData *)self parentUUID];
  if (v5)
  {
    v9 = [(HMDBackingStoreModelObject *)v6 initWithObjectChangeType:3 uuid:v7 parentUUID:v8];
  }

  else
  {
    v9 = [(HMDBackingStoreModelObject *)v6 initWithObjectChangeType:a3 uuid:v7 parentUUID:v8];

    v7 = [(HMDApplicationData *)self appDataDictionary];
    v8 = [v7 copy];
    [(HMDApplicationDataModel *)v9 setAppDataDictionary:v8];
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(HMDApplicationData *)self parentUUID];
  v6 = [v5 UUIDString];
  [v8 encodeObject:v6 forKey:@"HM.appDataParentUUID"];

  v7 = [(HMDApplicationData *)self appDataDictionary];
  [v8 encodeObject:v7 forKey:@"HM.appData"];

  objc_autoreleasePoolPop(v4);
}

- (HMDApplicationData)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HMDApplicationData;
  v5 = [(HMDApplicationData *)&v16 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_alloc(MEMORY[0x277CCAD78]);
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.appDataParentUUID"];
    v9 = [v7 initWithUUIDString:v8];
    parentUUID = v5->_parentUUID;
    v5->_parentUUID = v9;

    v11 = [MEMORY[0x277CD1818] allowedObjectClasses];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"HM.appData"];

    v13 = [v12 mutableCopy];
    v14 = v13;
    if (!v13)
    {
      v14 = [MEMORY[0x277CBEB38] dictionary];
    }

    objc_storeStrong(&v5->_appDataDictionary, v14);
    if (!v13)
    {
    }

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMDApplicationData alloc];
  v5 = [(HMDApplicationData *)self appDataDictionary];
  v6 = [(HMDApplicationData *)self parentUUID];
  v7 = [(HMDApplicationData *)v4 initWithDictionary:v5 parentUUID:v6];

  return v7;
}

- (void)encodeForXPCTransportWithCoder:(id)a3 key:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([v9 hmd_isForXPCTransportEntitledForSPIAccess])
  {
    v7 = @"com.apple.homekit-entitledclient.identifer";
  }

  else
  {
    v7 = [v9 hmd_clientIdentifier];
  }

  v8 = [(HMDApplicationData *)self applicationDataForIdentifier:v7];
  if (v8)
  {
    [v9 encodeObject:v8 forKey:v6];
  }
}

- (void)updateParentUUIDIfNil:(id)a3
{
  v10 = a3;
  parentUUID = self->_parentUUID;
  if (!parentUUID || ([MEMORY[0x277CCAD78] zeroUUID], v6 = objc_claimAutoreleasedReturnValue(), v7 = -[NSUUID isEqual:](parentUUID, "isEqual:", v6), v6, v7))
  {
    objc_storeStrong(&self->_parentUUID, a3);
    v8 = [MEMORY[0x277CCAD78] hm_deriveUUIDFromBaseUUID:self->_parentUUID identifierSalt:0 withSalts:&unk_286626C80];
    uuid = self->_uuid;
    self->_uuid = v8;
  }
}

- (void)updateWithModel:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 appDataDictionary];

  if (v5)
  {
    v6 = [v4 appDataDictionary];
    v7 = [v6 mutableCopy];
    [(HMDApplicationData *)self setAppDataDictionary:v7];

    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [(HMDApplicationData *)v9 appDataDictionary];
      v13 = [(HMDApplicationData *)v9 parentUUID];
      v18 = 138543874;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Updating the application data from transaction: %@ / %@", &v18, 0x20u);

LABEL_6:
    }
  }

  else
  {
    v14 = [(HMDApplicationData *)self appDataDictionary];
    [v14 removeAllObjects];

    v8 = objc_autoreleasePoolPush();
    v15 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v16 = [(HMDApplicationData *)v15 parentUUID];
      v18 = 138543618;
      v19 = v11;
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Removing entire app data for container: %@", &v18, 0x16u);

      goto LABEL_6;
    }
  }

  objc_autoreleasePoolPop(v8);
  v17 = *MEMORY[0x277D85DE8];
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)a3
{
  v36 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v22 = v21 = self;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [(HMDApplicationData *)self appDataDictionary];
  v23 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v23)
  {
    v20 = *v31;
    do
    {
      v4 = 0;
      do
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v4;
        v5 = *(*(&v30 + 1) + 8 * v4);
        v6 = [(HMDApplicationData *)v21 appDataDictionary];
        v24 = v5;
        v7 = [v6 hmf_dictionaryForKey:v5];

        v8 = [MEMORY[0x277CBEB38] dictionary];
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v9 = v7;
        v10 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v27;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v27 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v26 + 1) + 8 * i);
              v15 = [v9 objectForKeyedSubscript:v14];
              if (objc_opt_respondsToSelector())
              {
                v16 = [v15 shortDescription];
                [v8 setObject:v16 forKeyedSubscript:v14];
              }

              else
              {
                [v8 setObject:v15 forKeyedSubscript:v14];
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v11);
        }

        [v22 setObject:v8 forKeyedSubscript:v24];
        v4 = v25 + 1;
      }

      while (v25 + 1 != v23);
      v23 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v23);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)dictionary
{
  v2 = [(HMDApplicationData *)self appDataDictionary];
  v3 = [v2 copy];

  return v3;
}

- (id)applicationDataForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HMDApplicationData *)self appDataDictionary];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)removeApplicationDataForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HMDApplicationData *)self appDataDictionary];
  [v5 setObject:0 forKeyedSubscript:v4];
}

- (void)setApplicationData:(id)a3 forIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDApplicationData *)self appDataDictionary];
  [v8 setObject:v7 forKeyedSubscript:v6];
}

- (NSUUID)uuid
{
  uuid = self->_uuid;
  if (!uuid || ([MEMORY[0x277CCAD78] zeroUUID], v4 = objc_claimAutoreleasedReturnValue(), v5 = -[NSUUID isEqual:](uuid, "isEqual:", v4), v4, v5))
  {
    v6 = [MEMORY[0x277CCAD78] hm_deriveUUIDFromBaseUUID:self->_parentUUID identifierSalt:0 withSalts:&unk_286626C68];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [MEMORY[0x277CCAD78] zeroUUID];
    }

    v9 = self->_uuid;
    self->_uuid = v8;
  }

  v10 = self->_uuid;

  return v10;
}

- (BOOL)isEmpty
{
  v2 = [(HMDApplicationData *)self appDataDictionary];
  v3 = [v2 count] == 0;

  return v3;
}

- (HMDApplicationData)initWithDictionary:(id)a3 parentUUID:(id)a4
{
  v6 = a3;
  v7 = [(HMDApplicationData *)self initWithParentUUID:a4];
  v8 = v7;
  if (v6 && v7)
  {
    [(NSMutableDictionary *)v7->_appDataDictionary setDictionary:v6];
  }

  return v8;
}

- (HMDApplicationData)initWithParentUUID:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HMDApplicationData;
  v5 = [(HMDApplicationData *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    appDataDictionary = v5->_appDataDictionary;
    v5->_appDataDictionary = v6;

    v8 = [v4 copy];
    parentUUID = v5->_parentUUID;
    v5->_parentUUID = v8;
  }

  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_11560 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_11560, &__block_literal_global_20);
  }

  v3 = logCategory__hmf_once_v5_11561;

  return v3;
}

uint64_t __33__HMDApplicationData_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v5_11561 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

+ (unint64_t)sizeLimit
{
  if (sizeLimit__hmf_once_t0 != -1)
  {
    dispatch_once(&sizeLimit__hmf_once_t0, &__block_literal_global_11565);
  }

  return sizeLimit__hmf_once_v1;
}

void __31__HMDApplicationData_sizeLimit__block_invoke()
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v0 = [v2 preferenceForKey:@"maxAppDataSize"];
  v1 = [v0 numberValue];
  sizeLimit__hmf_once_v1 = [v1 unsignedIntegerValue];
}

@end