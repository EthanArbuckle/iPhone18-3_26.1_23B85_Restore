@interface HMDApplicationData
+ (id)logCategory;
+ (unint64_t)sizeLimit;
- (BOOL)isEmpty;
- (HMDApplicationData)initWithCoder:(id)coder;
- (HMDApplicationData)initWithDictionary:(id)dictionary parentUUID:(id)d;
- (HMDApplicationData)initWithParentUUID:(id)d;
- (NSUUID)uuid;
- (id)applicationDataForIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionary;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)logIdentifier;
- (id)modelObjectWithChangeType:(unint64_t)type;
- (void)encodeForXPCTransportWithCoder:(id)coder key:(id)key;
- (void)encodeWithCoder:(id)coder;
- (void)removeApplicationDataForIdentifier:(id)identifier;
- (void)setApplicationData:(id)data forIdentifier:(id)identifier;
- (void)updateParentUUIDIfNil:(id)nil;
- (void)updateWithModel:(id)model;
@end

@implementation HMDApplicationData

- (id)logIdentifier
{
  parentUUID = [(HMDApplicationData *)self parentUUID];
  uUIDString = [parentUUID UUIDString];

  return uUIDString;
}

- (id)modelObjectWithChangeType:(unint64_t)type
{
  isEmpty = [(HMDApplicationData *)self isEmpty];
  v6 = [HMDApplicationDataModel alloc];
  uuid = [(HMDApplicationData *)self uuid];
  parentUUID = [(HMDApplicationData *)self parentUUID];
  if (isEmpty)
  {
    v9 = [(HMDBackingStoreModelObject *)v6 initWithObjectChangeType:3 uuid:uuid parentUUID:parentUUID];
  }

  else
  {
    v9 = [(HMDBackingStoreModelObject *)v6 initWithObjectChangeType:type uuid:uuid parentUUID:parentUUID];

    uuid = [(HMDApplicationData *)self appDataDictionary];
    parentUUID = [uuid copy];
    [(HMDApplicationDataModel *)v9 setAppDataDictionary:parentUUID];
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  parentUUID = [(HMDApplicationData *)self parentUUID];
  uUIDString = [parentUUID UUIDString];
  [coderCopy encodeObject:uUIDString forKey:@"HM.appDataParentUUID"];

  appDataDictionary = [(HMDApplicationData *)self appDataDictionary];
  [coderCopy encodeObject:appDataDictionary forKey:@"HM.appData"];

  objc_autoreleasePoolPop(v4);
}

- (HMDApplicationData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = HMDApplicationData;
  v5 = [(HMDApplicationData *)&v16 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_alloc(MEMORY[0x277CCAD78]);
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.appDataParentUUID"];
    v9 = [v7 initWithUUIDString:v8];
    parentUUID = v5->_parentUUID;
    v5->_parentUUID = v9;

    allowedObjectClasses = [MEMORY[0x277CD1818] allowedObjectClasses];
    v12 = [coderCopy decodeObjectOfClasses:allowedObjectClasses forKey:@"HM.appData"];

    v13 = [v12 mutableCopy];
    dictionary = v13;
    if (!v13)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    objc_storeStrong(&v5->_appDataDictionary, dictionary);
    if (!v13)
    {
    }

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMDApplicationData alloc];
  appDataDictionary = [(HMDApplicationData *)self appDataDictionary];
  parentUUID = [(HMDApplicationData *)self parentUUID];
  v7 = [(HMDApplicationData *)v4 initWithDictionary:appDataDictionary parentUUID:parentUUID];

  return v7;
}

- (void)encodeForXPCTransportWithCoder:(id)coder key:(id)key
{
  coderCopy = coder;
  keyCopy = key;
  if ([coderCopy hmd_isForXPCTransportEntitledForSPIAccess])
  {
    hmd_clientIdentifier = @"com.apple.homekit-entitledclient.identifer";
  }

  else
  {
    hmd_clientIdentifier = [coderCopy hmd_clientIdentifier];
  }

  v8 = [(HMDApplicationData *)self applicationDataForIdentifier:hmd_clientIdentifier];
  if (v8)
  {
    [coderCopy encodeObject:v8 forKey:keyCopy];
  }
}

- (void)updateParentUUIDIfNil:(id)nil
{
  nilCopy = nil;
  parentUUID = self->_parentUUID;
  if (!parentUUID || ([MEMORY[0x277CCAD78] zeroUUID], v6 = objc_claimAutoreleasedReturnValue(), v7 = -[NSUUID isEqual:](parentUUID, "isEqual:", v6), v6, v7))
  {
    objc_storeStrong(&self->_parentUUID, nil);
    v8 = [MEMORY[0x277CCAD78] hm_deriveUUIDFromBaseUUID:self->_parentUUID identifierSalt:0 withSalts:&unk_283E755C0];
    uuid = self->_uuid;
    self->_uuid = v8;
  }
}

- (void)updateWithModel:(id)model
{
  v24 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  appDataDictionary = [modelCopy appDataDictionary];

  if (appDataDictionary)
  {
    appDataDictionary2 = [modelCopy appDataDictionary];
    v7 = [appDataDictionary2 mutableCopy];
    [(HMDApplicationData *)self setAppDataDictionary:v7];

    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      appDataDictionary3 = [(HMDApplicationData *)selfCopy appDataDictionary];
      parentUUID = [(HMDApplicationData *)selfCopy parentUUID];
      v18 = 138543874;
      v19 = v11;
      v20 = 2112;
      v21 = appDataDictionary3;
      v22 = 2112;
      v23 = parentUUID;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Updating the application data from transaction: %@ / %@", &v18, 0x20u);

LABEL_6:
    }
  }

  else
  {
    appDataDictionary4 = [(HMDApplicationData *)self appDataDictionary];
    [appDataDictionary4 removeAllObjects];

    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      parentUUID2 = [(HMDApplicationData *)selfCopy2 parentUUID];
      v18 = 138543618;
      v19 = v11;
      v20 = 2112;
      v21 = parentUUID2;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Removing entire app data for container: %@", &v18, 0x16u);

      goto LABEL_6;
    }
  }

  objc_autoreleasePoolPop(v8);
  v17 = *MEMORY[0x277D85DE8];
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
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
        appDataDictionary = [(HMDApplicationData *)v21 appDataDictionary];
        v24 = v5;
        v7 = [appDataDictionary hmf_dictionaryForKey:v5];

        dictionary = [MEMORY[0x277CBEB38] dictionary];
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
                shortDescription = [v15 shortDescription];
                [dictionary setObject:shortDescription forKeyedSubscript:v14];
              }

              else
              {
                [dictionary setObject:v15 forKeyedSubscript:v14];
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v11);
        }

        [v22 setObject:dictionary forKeyedSubscript:v24];
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
  appDataDictionary = [(HMDApplicationData *)self appDataDictionary];
  v3 = [appDataDictionary copy];

  return v3;
}

- (id)applicationDataForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  appDataDictionary = [(HMDApplicationData *)self appDataDictionary];
  v6 = [appDataDictionary objectForKeyedSubscript:identifierCopy];

  return v6;
}

- (void)removeApplicationDataForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  appDataDictionary = [(HMDApplicationData *)self appDataDictionary];
  [appDataDictionary setObject:0 forKeyedSubscript:identifierCopy];
}

- (void)setApplicationData:(id)data forIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dataCopy = data;
  appDataDictionary = [(HMDApplicationData *)self appDataDictionary];
  [appDataDictionary setObject:dataCopy forKeyedSubscript:identifierCopy];
}

- (NSUUID)uuid
{
  uuid = self->_uuid;
  if (!uuid || ([MEMORY[0x277CCAD78] zeroUUID], v4 = objc_claimAutoreleasedReturnValue(), v5 = -[NSUUID isEqual:](uuid, "isEqual:", v4), v4, v5))
  {
    v6 = [MEMORY[0x277CCAD78] hm_deriveUUIDFromBaseUUID:self->_parentUUID identifierSalt:0 withSalts:&unk_283E755A8];
    v7 = v6;
    if (v6)
    {
      zeroUUID = v6;
    }

    else
    {
      zeroUUID = [MEMORY[0x277CCAD78] zeroUUID];
    }

    v9 = self->_uuid;
    self->_uuid = zeroUUID;
  }

  v10 = self->_uuid;

  return v10;
}

- (BOOL)isEmpty
{
  appDataDictionary = [(HMDApplicationData *)self appDataDictionary];
  v3 = [appDataDictionary count] == 0;

  return v3;
}

- (HMDApplicationData)initWithDictionary:(id)dictionary parentUUID:(id)d
{
  dictionaryCopy = dictionary;
  v7 = [(HMDApplicationData *)self initWithParentUUID:d];
  v8 = v7;
  if (dictionaryCopy && v7)
  {
    [(NSMutableDictionary *)v7->_appDataDictionary setDictionary:dictionaryCopy];
  }

  return v8;
}

- (HMDApplicationData)initWithParentUUID:(id)d
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = HMDApplicationData;
  v5 = [(HMDApplicationData *)&v11 init];
  if (v5)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    appDataDictionary = v5->_appDataDictionary;
    v5->_appDataDictionary = dictionary;

    v8 = [dCopy copy];
    parentUUID = v5->_parentUUID;
    v5->_parentUUID = v8;
  }

  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_16070 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_16070, &__block_literal_global_20);
  }

  v3 = logCategory__hmf_once_v5_16071;

  return v3;
}

void __33__HMDApplicationData_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_16071;
  logCategory__hmf_once_v5_16071 = v1;
}

+ (unint64_t)sizeLimit
{
  if (sizeLimit__hmf_once_t0 != -1)
  {
    dispatch_once(&sizeLimit__hmf_once_t0, &__block_literal_global_16075);
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