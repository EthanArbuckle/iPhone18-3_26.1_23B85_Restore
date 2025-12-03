@interface HMBModelContainer
+ (NSSet)allowedTypes;
+ (NSSet)internalAllowedTypes;
+ (id)decodeAsNSDictionary:(id)dictionary error:(id *)error;
+ (id)decodeAsOPACK:(id)k error:(id *)error;
+ (id)encodeAsOPACK:(id)k error:(id *)error;
+ (id)logCategory;
- (Class)_modelClassFromDictionary:(id)dictionary typeName:(id)name error:(id *)error;
- (Class)modelClassForTypeName:(id)name;
- (HMBLocalZone)localZone;
- (HMBMirrorProtocol)mirror;
- (HMBModelContainer)init;
- (HMBModelContainer)initWithDataVersion:(id)version legacyDataVersion:(id)dataVersion;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dataFromModel:(id)model encoding:(unint64_t)encoding storageLocation:(unint64_t)location updatedModelIDs:(id)ds error:(id *)error;
- (id)decodePropertyValueFromData:(id)data forProperty:(id)property field:(id)field storageLocation:(unint64_t)location error:(id *)error;
- (id)encodePropertyValue:(id)value forProperty:(id)property field:(id)field storageLocation:(unint64_t)location error:(id *)error;
- (id)modelFromData:(id)data encoding:(unint64_t)encoding storageLocation:(unint64_t)location type:(id)type error:(id *)error;
- (id)modelFromDictionary:(id)dictionary storageLocation:(unint64_t)location typeName:(id)name error:(id *)error;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)readOnlyVersionsForModelClass:(Class)class;
- (id)schemaHashForModel:(id)model;
- (id)typeNameForModelClass:(Class)class;
- (id)unavailableVersionsForModelClass:(Class)class;
- (void)updateLocalZone:(id)zone;
- (void)updateMirror:(id)mirror;
@end

@implementation HMBModelContainer

- (HMBMirrorProtocol)mirror
{
  WeakRetained = objc_loadWeakRetained(&self->_mirror);

  return WeakRetained;
}

- (HMBLocalZone)localZone
{
  WeakRetained = objc_loadWeakRetained(&self->_localZone);

  return WeakRetained;
}

- (id)decodePropertyValueFromData:(id)data forProperty:(id)property field:(id)field storageLocation:(unint64_t)location error:(id *)error
{
  v21[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  propertyCopy = property;
  fieldCopy = field;
  if ([objc_msgSend(fieldCopy "classObj")])
  {
    error = [objc_msgSend(fieldCopy "classObj")];
  }

  else if (error)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277D0F1A0];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"should conform to HMBModelObjectCoder (but storage class for property %@ does not)", propertyCopy, @"message"];
    v21[0] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    *error = [v14 errorWithDomain:v15 code:3 userInfo:v17];

    error = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return error;
}

- (id)encodePropertyValue:(id)value forProperty:(id)property field:(id)field storageLocation:(unint64_t)location error:(id *)error
{
  v31[1] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  propertyCopy = property;
  if ([objc_opt_class() conformsToProtocol:&unk_283EBF9D0])
  {
    v27 = 0;
    v12 = [valueCopy hmbEncodeForStorageLocation:location error:&v27];
    v13 = v27;
    v14 = v13;
    if (v12)
    {
      v15 = v12;
      v16 = v15;
    }

    else
    {
      if (!v13)
      {
        v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
      }

      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to encode value %@ for property '%@': %@", objc_opt_class(), propertyCopy, v14];
      v21 = v20;
      if (error)
      {
        v22 = MEMORY[0x277CCA9B8];
        v23 = *MEMORY[0x277D0F1A0];
        v28[0] = @"message";
        v28[1] = @"underlyingError";
        v29[0] = v20;
        v29[1] = v14;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
        *error = [v22 errorWithDomain:v23 code:3 userInfo:v24];
      }

      v15 = 0;
      v16 = 0;
    }

    goto LABEL_11;
  }

  propertyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot encode value of type %@ for property '%@' because it does not conform to HMBModelObjectCoder", objc_opt_class(), propertyCopy];
  v14 = propertyCopy;
  if (error)
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277D0F1A0];
    v30 = @"message";
    v31[0] = propertyCopy;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    [v18 errorWithDomain:v19 code:3 userInfo:v15];
    *error = v16 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v16 = 0;
LABEL_12:

  v25 = *MEMORY[0x277D85DE8];

  return v16;
}

- (Class)_modelClassFromDictionary:(id)dictionary typeName:(id)name error:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  nameCopy = name;
  v10 = [dictionaryCopy hmf_stringForKey:@"_i"];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x277D0F940]) initWithString:v10];
    dataVersion = [(HMBModelContainer *)self dataVersion];
    v13 = [dataVersion isAtLeastVersion:v11];

    if (!v13)
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        dataVersion2 = [(HMBModelContainer *)selfCopy dataVersion];
        *buf = 138543874;
        v47 = v20;
        v48 = 2112;
        v49 = v11;
        v50 = 2112;
        v51 = dataVersion2;
        _os_log_impl(&dword_22AD27000, v19, OS_LOG_TYPE_INFO, "%{public}@Using HMBModelUnsupported because model's minimum version %@ is higher than current version: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
      error = objc_opt_class();

      goto LABEL_26;
    }
  }

  if (!nameCopy)
  {
    v14 = [dictionaryCopy hmf_stringForKey:@"_T"];
    if (!v14)
    {
      v14 = [dictionaryCopy hmf_stringForKey:@"_t"];
      if (!v14)
      {
        if (error)
        {
          *error = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
        }

        v40 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v42 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v43 = HMFGetLogIdentifier();
          *buf = 138543618;
          v47 = v43;
          v48 = 2112;
          v49 = dictionaryCopy;
          _os_log_impl(&dword_22AD27000, v42, OS_LOG_TYPE_ERROR, "%{public}@Cannot find type information in model dictionary: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v40);
        nameCopy = 0;
        goto LABEL_17;
      }
    }

    nameCopy = v14;
  }

  v15 = [(HMBModelContainer *)self modelClassForTypeName:nameCopy];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v47 = v31;
      v48 = 2112;
      v49 = nameCopy;
      _os_log_impl(&dword_22AD27000, v30, OS_LOG_TYPE_INFO, "%{public}@Unable to find model class named %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v32 = [dictionaryCopy hmf_stringForKey:@"_G"];

    if (!v32 || (v33 = NSClassFromString(v32)) == 0)
    {
      v34 = objc_autoreleasePoolPush();
      v35 = selfCopy3;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543618;
        v47 = v37;
        v48 = 2112;
        v49 = v32;
        _os_log_impl(&dword_22AD27000, v36, OS_LOG_TYPE_INFO, "%{public}@Unable to resolve type name to class: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v34);
      error = objc_opt_class();
      nameCopy = v32;
      goto LABEL_26;
    }

    v16 = v33;
    nameCopy = v32;
  }

  if (([(objc_class *)v16 isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    error = v16;
    goto LABEL_26;
  }

  if (error)
  {
    v22 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277D0F1A0];
    v44 = @"message";
    v24 = MEMORY[0x277CCACA8];
    v25 = NSStringFromClass(v16);
    v26 = [v24 stringWithFormat:@"remapped (or explicit map) is not a subclass of HMBModel (%@ is not a sub-class of HMBModel)", v25];
    v45 = v26;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    *error = [v22 errorWithDomain:v23 code:3 userInfo:v27];

LABEL_17:
    error = 0;
  }

LABEL_26:

  v38 = *MEMORY[0x277D85DE8];

  return error;
}

- (void)updateMirror:(id)mirror
{
  obj = mirror;
  mirror = [(HMBModelContainer *)self mirror];
  if (obj)
  {
    if (!mirror)
    {
      objc_storeWeak(&self->_mirror, obj);
    }
  }

  else
  {
    v5 = _HMFPreconditionFailure();
    [(HMBModelContainer *)v5 updateLocalZone:v6, v7];
  }
}

- (void)updateLocalZone:(id)zone
{
  obj = zone;
  localZone = [(HMBModelContainer *)self localZone];
  if (obj)
  {
    if (!localZone)
    {
      objc_storeWeak(&self->_localZone, obj);
    }
  }

  else
  {
    v5 = _HMFPreconditionFailure();
    [(HMBModelContainer *)v5 schemaHashForModel:v6, v7];
  }
}

- (id)schemaHashForModel:(id)model
{
  v25 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  array = [MEMORY[0x277CBEB18] array];
  data = [MEMORY[0x277CBEB28] data];
  hmbPropertyNames = [objc_opt_class() hmbPropertyNames];
  allObjects = [hmbPropertyNames allObjects];
  v8 = [allObjects sortedArrayUsingSelector:sel_compare_];
  [array addObjectsFromArray:v8];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = array;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v20 + 1) + 8 * i) dataUsingEncoding:{4, v20}];
        [data appendData:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v15 = MEMORY[0x277CCAD78];
  hmbSchemaHashRoot = [objc_opt_class() hmbSchemaHashRoot];
  v17 = [v15 hmf_UUIDWithNamespace:hmbSchemaHashRoot data:data];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  dataVersion = [(HMBModelContainer *)self dataVersion];
  legacyDataVersion = [(HMBModelContainer *)self legacyDataVersion];
  v7 = [v4 initWithDataVersion:dataVersion legacyDataVersion:legacyDataVersion];

  if (v7)
  {
    classToNameTransform = [(HMBModelContainer *)self classToNameTransform];
    v9 = [classToNameTransform copy];
    [v7 setClassToNameTransform:v9];

    nameToClassTransform = [(HMBModelContainer *)self nameToClassTransform];
    v11 = [nameToClassTransform copy];
    [v7 setNameToClassTransform:v11];
  }

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMBMutableModelContainer alloc];
  dataVersion = [(HMBModelContainer *)self dataVersion];
  legacyDataVersion = [(HMBModelContainer *)self legacyDataVersion];
  v7 = [(HMBModelContainer *)v4 initWithDataVersion:dataVersion legacyDataVersion:legacyDataVersion];

  if (v7)
  {
    classToNameTransform = [(HMBModelContainer *)self classToNameTransform];
    v9 = [classToNameTransform copy];
    [(HMBModelContainer *)v7 setClassToNameTransform:v9];

    nameToClassTransform = [(HMBModelContainer *)self nameToClassTransform];
    v11 = [nameToClassTransform copy];
    [(HMBModelContainer *)v7 setNameToClassTransform:v11];
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t21 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t21, &__block_literal_global_108);
  }

  v3 = logCategory__hmf_once_v22;

  return v3;
}

uint64_t __32__HMBModelContainer_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v22;
  logCategory__hmf_once_v22 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)decodeAsNSDictionary:(id)dictionary error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v7 = objc_autoreleasePoolPush();
  v8 = MEMORY[0x277CCAAC8];
  v9 = +[HMBModelContainer internalAllowedTypes];
  v31 = 0;
  v10 = [v8 unarchivedObjectOfClasses:v9 fromData:dictionaryCopy error:&v31];
  v11 = v31;

  if (v10)
  {
    v12 = v10;
    objc_opt_class();
    v13 = objc_opt_isKindOfClass() & 1;
    if (v13)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    if (v13)
    {
      v16 = v12;
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v25 = v30 = v22;
        v26 = objc_opt_class();
        *buf = 138543874;
        v33 = v25;
        v34 = 2112;
        v35 = v26;
        v36 = 2112;
        v37 = v12;
        v27 = v26;
        _os_log_impl(&dword_22AD27000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unarchived model data was not a dictionary: (%@) %@", buf, 0x20u);

        v22 = v30;
      }

      objc_autoreleasePoolPop(v22);
      if (error)
      {
        [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
        *error = v16 = 0;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543874;
      v33 = v20;
      v34 = 2112;
      v35 = dictionaryCopy;
      v36 = 2112;
      v37 = v11;
      _os_log_impl(&dword_22AD27000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive model data %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    if (error)
    {
      v21 = v11;
      v16 = 0;
      *error = v11;
    }

    else
    {
      v16 = 0;
    }
  }

  objc_autoreleasePoolPop(v7);
  v28 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)decodeAsOPACK:(id)k error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  kCopy = k;
  v7 = OPACKDecodeData();
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    objc_opt_class();
    v10 = objc_opt_isKindOfClass() & 1;
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v10)
    {
      v13 = v9;
      goto LABEL_17;
    }

    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543874;
      v27 = v17;
      v28 = 2112;
      v29 = objc_opt_class();
      v30 = 2112;
      v31 = v9;
      v18 = v29;
      _os_log_impl(&dword_22AD27000, v16, OS_LOG_TYPE_ERROR, "%{public}@OPACK-decoded model data was not a dictionary: (%@) %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      *error = v13 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v12 = 0;
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543874;
      v27 = v22;
      v28 = 2112;
      v29 = kCopy;
      v30 = 2112;
      v31 = 0;
      _os_log_impl(&dword_22AD27000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to OPACK decode model data %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    if (error)
    {
      v23 = 0;
      v13 = 0;
      *error = 0;
      goto LABEL_17;
    }
  }

  v13 = 0;
LABEL_17:

  v24 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)encodeAsOPACK:(id)k error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  kCopy = k;
  v7 = MEMORY[0x231885660]();
  if (!v7)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v16 = v11;
      v17 = 2112;
      v18 = kCopy;
      v19 = 2112;
      v20 = 0;
      _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to OPACK encode dictionary %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    if (error)
    {
      v12 = 0;
      *error = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (NSSet)internalAllowedTypes
{
  if (internalAllowedTypes_onceToken != -1)
  {
    dispatch_once(&internalAllowedTypes_onceToken, &__block_literal_global_10);
  }

  v3 = internalAllowedTypes__internalAllowedTypes;

  return v3;
}

void __41__HMBModelContainer_internalAllowedTypes__block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v4 = +[HMBModelContainer allowedTypes];
  v1 = [v0 setWithSet:v4];
  v2 = [v1 setByAddingObject:objc_opt_class()];
  v3 = internalAllowedTypes__internalAllowedTypes;
  internalAllowedTypes__internalAllowedTypes = v2;
}

+ (NSSet)allowedTypes
{
  if (allowedTypes_onceToken != -1)
  {
    dispatch_once(&allowedTypes_onceToken, &__block_literal_global_2894);
  }

  v3 = allowedTypes__allowedTypes;

  return v3;
}

void __33__HMBModelContainer_allowedTypes__block_invoke()
{
  v5[8] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v5[4] = objc_opt_class();
  v5[5] = objc_opt_class();
  v5[6] = objc_opt_class();
  v5[7] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:8];
  v2 = [v0 setWithArray:v1];
  v3 = allowedTypes__allowedTypes;
  allowedTypes__allowedTypes = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (id)modelFromData:(id)data encoding:(unint64_t)encoding storageLocation:(unint64_t)location type:(id)type error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  typeCopy = type;
  if (encoding == 2)
  {
    v14 = [HMBModelContainer decodeAsOPACK:dataCopy error:error];
LABEL_5:
    v15 = v14;
    if (v14)
    {
      v16 = [(HMBModelContainer *)self modelFromDictionary:v14 storageLocation:location typeName:typeCopy error:error];

      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (encoding == 1)
  {
    v14 = [HMBModelContainer decodeAsNSDictionary:dataCopy error:error];
    goto LABEL_5;
  }

  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    v23 = 138543618;
    v24 = v20;
    v25 = 2048;
    encodingCopy = encoding;
    _os_log_impl(&dword_22AD27000, v19, OS_LOG_TYPE_ERROR, "%{public}@Cannot deserialize from unknown encoding: %lu", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  if (error)
  {
    [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
    *error = v16 = 0;
    goto LABEL_12;
  }

LABEL_11:
  v16 = 0;
LABEL_12:

  v21 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)modelFromDictionary:(id)dictionary storageLocation:(unint64_t)location typeName:(id)name error:(id *)error
{
  v48[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  nameCopy = name;
  v12 = [(HMBModelContainer *)self _modelClassFromDictionary:dictionaryCopy typeName:nameCopy error:error];
  if (!v12)
  {
    v16 = 0;
    goto LABEL_22;
  }

  v13 = v12;
  v14 = [dictionaryCopy hmf_stringForKey:@"_V"];
  v15 = v14;
  if (v14)
  {
    v40 = v14;
LABEL_12:
    v25 = objc_alloc(MEMORY[0x277CCAD78]);
    v26 = [dictionaryCopy valueForKey:@"_u"];
    v27 = [v25 initWithUUIDString:v26];

    v22 = v27;
    v28 = objc_alloc(MEMORY[0x277CCAD78]);
    v29 = [dictionaryCopy valueForKey:@"_P"];
    v23 = [v28 initWithUUIDString:v29];

    v30 = [[v13 alloc] initWithModelID:v22 parentModelID:v23];
    v31 = [v30 populateModelWithDictionary:dictionaryCopy fromStorageLocation:location using:self];
    if (v31)
    {
      v32 = objc_autoreleasePoolPush();
      selfCopy = self;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v35 = v39 = v22;
        *buf = 138543874;
        v42 = v35;
        v43 = 2112;
        v44 = dictionaryCopy;
        v45 = 2112;
        v46 = v31;
        _os_log_impl(&dword_22AD27000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed to populate model with dictionary %@: %@", buf, 0x20u);

        v22 = v39;
      }

      objc_autoreleasePoolPop(v32);
      if (error)
      {
        v36 = v31;
        v16 = 0;
        *error = v31;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      [v30 hmbAssociateWithContainer:self];
      v16 = v30;
    }

    v15 = v40;

    goto LABEL_20;
  }

  v17 = [dictionaryCopy valueForKey:@"_v"];

  if (v17)
  {
    if (dictionaryCopy)
    {
      legacyDataVersion = [(HMBModelContainer *)self legacyDataVersion];
      versionString = [legacyDataVersion versionString];
    }

    else
    {
      versionString = @"0.0.0";
    }

    v40 = 0;
    v24 = [dictionaryCopy mutableCopy];
    [v24 setObject:versionString forKey:@"_V"];

    dictionaryCopy = v24;
    goto LABEL_12;
  }

  if (!error)
  {
    v16 = 0;
    goto LABEL_21;
  }

  v20 = MEMORY[0x277CCA9B8];
  v21 = *MEMORY[0x277D0F1A0];
  v47 = @"message";
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"expecting a versioning key named %@ but one does not exist", @"_v"];
  v48[0] = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
  [v20 errorWithDomain:v21 code:3 userInfo:v23];
  *error = v16 = 0;
LABEL_20:

LABEL_21:
LABEL_22:

  v37 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)dataFromModel:(id)model encoding:(unint64_t)encoding storageLocation:(unint64_t)location updatedModelIDs:(id)ds error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  dsCopy = ds;
  [modelCopy hmbAssociateWithContainer:self];
  v29 = 0;
  v14 = [modelCopy prepareForStorageLocation:location using:self updatedModelIDs:dsCopy error:&v29];
  v15 = v29;
  if (v14)
  {
    if (encoding == 2)
    {
      v16 = [HMBModelContainer encodeAsOPACK:v14 error:error];
      goto LABEL_10;
    }

    if (encoding == 1)
    {
      v16 = [HMBModelContainer encodeAsNSDictionary:v14 error:error];
LABEL_10:
      v22 = v16;
      goto LABEL_16;
    }

    v23 = objc_autoreleasePoolPush();
    selfCopy = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543874;
      v31 = v26;
      v32 = 2112;
      v33 = modelCopy;
      v34 = 2048;
      encodingCopy = encoding;
      _os_log_impl(&dword_22AD27000, v25, OS_LOG_TYPE_ERROR, "%{public}@Cannot encode data from model %@ with unknown encoding: %lu", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v23);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      *error = v22 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543874;
      v31 = v20;
      v32 = 2112;
      v33 = modelCopy;
      v34 = 2112;
      encodingCopy = v15;
      _os_log_impl(&dword_22AD27000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to prepare model %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    if (error)
    {
      v21 = v15;
      v22 = 0;
      *error = v15;
      goto LABEL_16;
    }
  }

  v22 = 0;
LABEL_16:

  v27 = *MEMORY[0x277D85DE8];

  return v22;
}

- (Class)modelClassForTypeName:(id)name
{
  nameCopy = name;
  nameToClassTransform = [(HMBModelContainer *)self nameToClassTransform];
  v6 = [nameToClassTransform objectForKey:nameCopy];

  if (!v6)
  {
    v6 = NSClassFromString(nameCopy);
  }

  v7 = v6;

  return v6;
}

- (id)typeNameForModelClass:(Class)class
{
  classToNameTransform = [(HMBModelContainer *)self classToNameTransform];
  v5 = [classToNameTransform objectForKey:class];

  if (!v5)
  {
    v5 = NSStringFromClass(class);
  }

  return v5;
}

- (id)unavailableVersionsForModelClass:(Class)class
{
  os_unfair_lock_lock_with_options();
  classUnavailableVersionCache = [(HMBModelContainer *)self classUnavailableVersionCache];
  v6 = [classUnavailableVersionCache objectForKey:class];

  if (!v6)
  {
    if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) == 0)
    {
      result = _HMFPreconditionFailure();
      __break(1u);
      return result;
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    hmbProperties = [(objc_class *)class hmbProperties];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __54__HMBModelContainer_unavailableVersionsForModelClass___block_invoke;
    v12[3] = &unk_2786E0E00;
    v9 = dictionary;
    v13 = v9;
    [hmbProperties enumerateKeysAndObjectsUsingBlock:v12];
    v6 = v9;
    classUnavailableVersionCache2 = [(HMBModelContainer *)self classUnavailableVersionCache];
    [classUnavailableVersionCache2 setObject:v6 forKey:class];
  }

  os_unfair_lock_unlock(&self->_propertyLock);

  return v6;
}

void __54__HMBModelContainer_unavailableVersionsForModelClass___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v5 unavailableVersion];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v5 unavailableVersion];
    [v7 setObject:v8 forKey:v9];
  }
}

- (id)readOnlyVersionsForModelClass:(Class)class
{
  os_unfair_lock_lock_with_options();
  classReadOnlyVersionCache = [(HMBModelContainer *)self classReadOnlyVersionCache];
  v6 = [classReadOnlyVersionCache objectForKey:class];

  if (!v6)
  {
    if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) == 0)
    {
      result = _HMFPreconditionFailure();
      __break(1u);
      return result;
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    hmbProperties = [(objc_class *)class hmbProperties];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __51__HMBModelContainer_readOnlyVersionsForModelClass___block_invoke;
    v12[3] = &unk_2786E0E00;
    v9 = dictionary;
    v13 = v9;
    [hmbProperties enumerateKeysAndObjectsUsingBlock:v12];
    v6 = v9;
    classReadOnlyVersionCache2 = [(HMBModelContainer *)self classReadOnlyVersionCache];
    [classReadOnlyVersionCache2 setObject:v6 forKey:class];
  }

  os_unfair_lock_unlock(&self->_propertyLock);

  return v6;
}

void __51__HMBModelContainer_readOnlyVersionsForModelClass___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v5 readonlyVersion];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v5 readonlyVersion];
    [v7 setObject:v8 forKey:v9];
  }
}

- (HMBModelContainer)initWithDataVersion:(id)version legacyDataVersion:(id)dataVersion
{
  versionCopy = version;
  dataVersionCopy = dataVersion;
  v24.receiver = self;
  v24.super_class = HMBModelContainer;
  v9 = [(HMBModelContainer *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_legacyDataVersion, dataVersion);
    objc_storeStrong(&v10->_dataVersion, version);
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    classToNameTransform = v10->_classToNameTransform;
    v10->_classToNameTransform = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    nameToClassTransform = v10->_nameToClassTransform;
    v10->_nameToClassTransform = strongToStrongObjectsMapTable2;

    strongToStrongObjectsMapTable3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    objectPropertyHashLookup = v10->_objectPropertyHashLookup;
    v10->_objectPropertyHashLookup = strongToStrongObjectsMapTable3;

    strongToStrongObjectsMapTable4 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    classReadOnlyVersionCache = v10->_classReadOnlyVersionCache;
    v10->_classReadOnlyVersionCache = strongToStrongObjectsMapTable4;

    strongToStrongObjectsMapTable5 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    classUnavailableVersionCache = v10->_classUnavailableVersionCache;
    v10->_classUnavailableVersionCache = strongToStrongObjectsMapTable5;

    strongToStrongObjectsMapTable6 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    queryFieldsCache = v10->_queryFieldsCache;
    v10->_queryFieldsCache = strongToStrongObjectsMapTable6;
  }

  return v10;
}

- (HMBModelContainer)init
{
  v3 = [objc_alloc(MEMORY[0x277D0F940]) initWithMajorVersion:4 minorVersion:0 updateVersion:0];
  v4 = [objc_alloc(MEMORY[0x277D0F940]) initWithMajorVersion:1 minorVersion:0 updateVersion:0];
  v5 = [(HMBModelContainer *)self initWithDataVersion:v3 legacyDataVersion:v4];

  return v5;
}

@end