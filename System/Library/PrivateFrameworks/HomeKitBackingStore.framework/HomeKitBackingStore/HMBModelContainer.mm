@interface HMBModelContainer
+ (NSSet)allowedTypes;
+ (NSSet)internalAllowedTypes;
+ (id)decodeAsNSDictionary:(id)a3 error:(id *)a4;
+ (id)decodeAsOPACK:(id)a3 error:(id *)a4;
+ (id)encodeAsOPACK:(id)a3 error:(id *)a4;
+ (id)logCategory;
- (Class)_modelClassFromDictionary:(id)a3 typeName:(id)a4 error:(id *)a5;
- (Class)modelClassForTypeName:(id)a3;
- (HMBLocalZone)localZone;
- (HMBMirrorProtocol)mirror;
- (HMBModelContainer)init;
- (HMBModelContainer)initWithDataVersion:(id)a3 legacyDataVersion:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dataFromModel:(id)a3 encoding:(unint64_t)a4 storageLocation:(unint64_t)a5 updatedModelIDs:(id)a6 error:(id *)a7;
- (id)decodePropertyValueFromData:(id)a3 forProperty:(id)a4 field:(id)a5 storageLocation:(unint64_t)a6 error:(id *)a7;
- (id)encodePropertyValue:(id)a3 forProperty:(id)a4 field:(id)a5 storageLocation:(unint64_t)a6 error:(id *)a7;
- (id)modelFromData:(id)a3 encoding:(unint64_t)a4 storageLocation:(unint64_t)a5 type:(id)a6 error:(id *)a7;
- (id)modelFromDictionary:(id)a3 storageLocation:(unint64_t)a4 typeName:(id)a5 error:(id *)a6;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)readOnlyVersionsForModelClass:(Class)a3;
- (id)schemaHashForModel:(id)a3;
- (id)typeNameForModelClass:(Class)a3;
- (id)unavailableVersionsForModelClass:(Class)a3;
- (void)updateLocalZone:(id)a3;
- (void)updateMirror:(id)a3;
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

- (id)decodePropertyValueFromData:(id)a3 forProperty:(id)a4 field:(id)a5 storageLocation:(unint64_t)a6 error:(id *)a7
{
  v21[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if ([objc_msgSend(v13 "classObj")])
  {
    a7 = [objc_msgSend(v13 "classObj")];
  }

  else if (a7)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277D0F1A0];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"should conform to HMBModelObjectCoder (but storage class for property %@ does not)", v12, @"message"];
    v21[0] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    *a7 = [v14 errorWithDomain:v15 code:3 userInfo:v17];

    a7 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return a7;
}

- (id)encodePropertyValue:(id)a3 forProperty:(id)a4 field:(id)a5 storageLocation:(unint64_t)a6 error:(id *)a7
{
  v31[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  if ([objc_opt_class() conformsToProtocol:&unk_283EBF9D0])
  {
    v27 = 0;
    v12 = [v10 hmbEncodeForStorageLocation:a6 error:&v27];
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

      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to encode value %@ for property '%@': %@", objc_opt_class(), v11, v14];
      v21 = v20;
      if (a7)
      {
        v22 = MEMORY[0x277CCA9B8];
        v23 = *MEMORY[0x277D0F1A0];
        v28[0] = @"message";
        v28[1] = @"underlyingError";
        v29[0] = v20;
        v29[1] = v14;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
        *a7 = [v22 errorWithDomain:v23 code:3 userInfo:v24];
      }

      v15 = 0;
      v16 = 0;
    }

    goto LABEL_11;
  }

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot encode value of type %@ for property '%@' because it does not conform to HMBModelObjectCoder", objc_opt_class(), v11];
  v14 = v17;
  if (a7)
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277D0F1A0];
    v30 = @"message";
    v31[0] = v17;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    [v18 errorWithDomain:v19 code:3 userInfo:v15];
    *a7 = v16 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v16 = 0;
LABEL_12:

  v25 = *MEMORY[0x277D85DE8];

  return v16;
}

- (Class)_modelClassFromDictionary:(id)a3 typeName:(id)a4 error:(id *)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v8 hmf_stringForKey:@"_i"];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x277D0F940]) initWithString:v10];
    v12 = [(HMBModelContainer *)self dataVersion];
    v13 = [v12 isAtLeastVersion:v11];

    if (!v13)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v21 = [(HMBModelContainer *)v18 dataVersion];
        *buf = 138543874;
        v47 = v20;
        v48 = 2112;
        v49 = v11;
        v50 = 2112;
        v51 = v21;
        _os_log_impl(&dword_22AD27000, v19, OS_LOG_TYPE_INFO, "%{public}@Using HMBModelUnsupported because model's minimum version %@ is higher than current version: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
      a5 = objc_opt_class();

      goto LABEL_26;
    }
  }

  if (!v9)
  {
    v14 = [v8 hmf_stringForKey:@"_T"];
    if (!v14)
    {
      v14 = [v8 hmf_stringForKey:@"_t"];
      if (!v14)
      {
        if (a5)
        {
          *a5 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
        }

        v40 = objc_autoreleasePoolPush();
        v41 = self;
        v42 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v43 = HMFGetLogIdentifier();
          *buf = 138543618;
          v47 = v43;
          v48 = 2112;
          v49 = v8;
          _os_log_impl(&dword_22AD27000, v42, OS_LOG_TYPE_ERROR, "%{public}@Cannot find type information in model dictionary: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v40);
        v9 = 0;
        goto LABEL_17;
      }
    }

    v9 = v14;
  }

  v15 = [(HMBModelContainer *)self modelClassForTypeName:v9];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v47 = v31;
      v48 = 2112;
      v49 = v9;
      _os_log_impl(&dword_22AD27000, v30, OS_LOG_TYPE_INFO, "%{public}@Unable to find model class named %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v32 = [v8 hmf_stringForKey:@"_G"];

    if (!v32 || (v33 = NSClassFromString(v32)) == 0)
    {
      v34 = objc_autoreleasePoolPush();
      v35 = v29;
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
      a5 = objc_opt_class();
      v9 = v32;
      goto LABEL_26;
    }

    v16 = v33;
    v9 = v32;
  }

  if (([(objc_class *)v16 isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    a5 = v16;
    goto LABEL_26;
  }

  if (a5)
  {
    v22 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277D0F1A0];
    v44 = @"message";
    v24 = MEMORY[0x277CCACA8];
    v25 = NSStringFromClass(v16);
    v26 = [v24 stringWithFormat:@"remapped (or explicit map) is not a subclass of HMBModel (%@ is not a sub-class of HMBModel)", v25];
    v45 = v26;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    *a5 = [v22 errorWithDomain:v23 code:3 userInfo:v27];

LABEL_17:
    a5 = 0;
  }

LABEL_26:

  v38 = *MEMORY[0x277D85DE8];

  return a5;
}

- (void)updateMirror:(id)a3
{
  obj = a3;
  v4 = [(HMBModelContainer *)self mirror];
  if (obj)
  {
    if (!v4)
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

- (void)updateLocalZone:(id)a3
{
  obj = a3;
  v4 = [(HMBModelContainer *)self localZone];
  if (obj)
  {
    if (!v4)
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

- (id)schemaHashForModel:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CBEB28] data];
  v6 = [objc_opt_class() hmbPropertyNames];
  v7 = [v6 allObjects];
  v8 = [v7 sortedArrayUsingSelector:sel_compare_];
  [v4 addObjectsFromArray:v8];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v4;
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
        [v5 appendData:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v15 = MEMORY[0x277CCAD78];
  v16 = [objc_opt_class() hmbSchemaHashRoot];
  v17 = [v15 hmf_UUIDWithNamespace:v16 data:v5];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HMBModelContainer *)self dataVersion];
  v6 = [(HMBModelContainer *)self legacyDataVersion];
  v7 = [v4 initWithDataVersion:v5 legacyDataVersion:v6];

  if (v7)
  {
    v8 = [(HMBModelContainer *)self classToNameTransform];
    v9 = [v8 copy];
    [v7 setClassToNameTransform:v9];

    v10 = [(HMBModelContainer *)self nameToClassTransform];
    v11 = [v10 copy];
    [v7 setNameToClassTransform:v11];
  }

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMBMutableModelContainer alloc];
  v5 = [(HMBModelContainer *)self dataVersion];
  v6 = [(HMBModelContainer *)self legacyDataVersion];
  v7 = [(HMBModelContainer *)v4 initWithDataVersion:v5 legacyDataVersion:v6];

  if (v7)
  {
    v8 = [(HMBModelContainer *)self classToNameTransform];
    v9 = [v8 copy];
    [(HMBModelContainer *)v7 setClassToNameTransform:v9];

    v10 = [(HMBModelContainer *)self nameToClassTransform];
    v11 = [v10 copy];
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

+ (id)decodeAsNSDictionary:(id)a3 error:(id *)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = MEMORY[0x277CCAAC8];
  v9 = +[HMBModelContainer internalAllowedTypes];
  v31 = 0;
  v10 = [v8 unarchivedObjectOfClasses:v9 fromData:v6 error:&v31];
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
      v23 = a1;
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
      if (a4)
      {
        [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
        *a4 = v16 = 0;
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
    v18 = a1;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543874;
      v33 = v20;
      v34 = 2112;
      v35 = v6;
      v36 = 2112;
      v37 = v11;
      _os_log_impl(&dword_22AD27000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive model data %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    if (a4)
    {
      v21 = v11;
      v16 = 0;
      *a4 = v11;
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

+ (id)decodeAsOPACK:(id)a3 error:(id *)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
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
    v15 = a1;
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
    if (a4)
    {
      [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      *a4 = v13 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v12 = 0;
    v19 = objc_autoreleasePoolPush();
    v20 = a1;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543874;
      v27 = v22;
      v28 = 2112;
      v29 = v6;
      v30 = 2112;
      v31 = 0;
      _os_log_impl(&dword_22AD27000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to OPACK decode model data %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    if (a4)
    {
      v23 = 0;
      v13 = 0;
      *a4 = 0;
      goto LABEL_17;
    }
  }

  v13 = 0;
LABEL_17:

  v24 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)encodeAsOPACK:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x231885660]();
  if (!v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = a1;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v16 = v11;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = 0;
      _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to OPACK encode dictionary %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    if (a4)
    {
      v12 = 0;
      *a4 = 0;
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

- (id)modelFromData:(id)a3 encoding:(unint64_t)a4 storageLocation:(unint64_t)a5 type:(id)a6 error:(id *)a7
{
  v27 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  if (a4 == 2)
  {
    v14 = [HMBModelContainer decodeAsOPACK:v12 error:a7];
LABEL_5:
    v15 = v14;
    if (v14)
    {
      v16 = [(HMBModelContainer *)self modelFromDictionary:v14 storageLocation:a5 typeName:v13 error:a7];

      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (a4 == 1)
  {
    v14 = [HMBModelContainer decodeAsNSDictionary:v12 error:a7];
    goto LABEL_5;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    v23 = 138543618;
    v24 = v20;
    v25 = 2048;
    v26 = a4;
    _os_log_impl(&dword_22AD27000, v19, OS_LOG_TYPE_ERROR, "%{public}@Cannot deserialize from unknown encoding: %lu", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  if (a7)
  {
    [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
    *a7 = v16 = 0;
    goto LABEL_12;
  }

LABEL_11:
  v16 = 0;
LABEL_12:

  v21 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)modelFromDictionary:(id)a3 storageLocation:(unint64_t)a4 typeName:(id)a5 error:(id *)a6
{
  v48[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = [(HMBModelContainer *)self _modelClassFromDictionary:v10 typeName:v11 error:a6];
  if (!v12)
  {
    v16 = 0;
    goto LABEL_22;
  }

  v13 = v12;
  v14 = [v10 hmf_stringForKey:@"_V"];
  v15 = v14;
  if (v14)
  {
    v40 = v14;
LABEL_12:
    v25 = objc_alloc(MEMORY[0x277CCAD78]);
    v26 = [v10 valueForKey:@"_u"];
    v27 = [v25 initWithUUIDString:v26];

    v22 = v27;
    v28 = objc_alloc(MEMORY[0x277CCAD78]);
    v29 = [v10 valueForKey:@"_P"];
    v23 = [v28 initWithUUIDString:v29];

    v30 = [[v13 alloc] initWithModelID:v22 parentModelID:v23];
    v31 = [v30 populateModelWithDictionary:v10 fromStorageLocation:a4 using:self];
    if (v31)
    {
      v32 = objc_autoreleasePoolPush();
      v33 = self;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v35 = v39 = v22;
        *buf = 138543874;
        v42 = v35;
        v43 = 2112;
        v44 = v10;
        v45 = 2112;
        v46 = v31;
        _os_log_impl(&dword_22AD27000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed to populate model with dictionary %@: %@", buf, 0x20u);

        v22 = v39;
      }

      objc_autoreleasePoolPop(v32);
      if (a6)
      {
        v36 = v31;
        v16 = 0;
        *a6 = v31;
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

  v17 = [v10 valueForKey:@"_v"];

  if (v17)
  {
    if (v10)
    {
      v18 = [(HMBModelContainer *)self legacyDataVersion];
      v19 = [v18 versionString];
    }

    else
    {
      v19 = @"0.0.0";
    }

    v40 = 0;
    v24 = [v10 mutableCopy];
    [v24 setObject:v19 forKey:@"_V"];

    v10 = v24;
    goto LABEL_12;
  }

  if (!a6)
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
  *a6 = v16 = 0;
LABEL_20:

LABEL_21:
LABEL_22:

  v37 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)dataFromModel:(id)a3 encoding:(unint64_t)a4 storageLocation:(unint64_t)a5 updatedModelIDs:(id)a6 error:(id *)a7
{
  v36 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  [v12 hmbAssociateWithContainer:self];
  v29 = 0;
  v14 = [v12 prepareForStorageLocation:a5 using:self updatedModelIDs:v13 error:&v29];
  v15 = v29;
  if (v14)
  {
    if (a4 == 2)
    {
      v16 = [HMBModelContainer encodeAsOPACK:v14 error:a7];
      goto LABEL_10;
    }

    if (a4 == 1)
    {
      v16 = [HMBModelContainer encodeAsNSDictionary:v14 error:a7];
LABEL_10:
      v22 = v16;
      goto LABEL_16;
    }

    v23 = objc_autoreleasePoolPush();
    v24 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543874;
      v31 = v26;
      v32 = 2112;
      v33 = v12;
      v34 = 2048;
      v35 = a4;
      _os_log_impl(&dword_22AD27000, v25, OS_LOG_TYPE_ERROR, "%{public}@Cannot encode data from model %@ with unknown encoding: %lu", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v23);
    if (a7)
    {
      [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      *a7 = v22 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543874;
      v31 = v20;
      v32 = 2112;
      v33 = v12;
      v34 = 2112;
      v35 = v15;
      _os_log_impl(&dword_22AD27000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to prepare model %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    if (a7)
    {
      v21 = v15;
      v22 = 0;
      *a7 = v15;
      goto LABEL_16;
    }
  }

  v22 = 0;
LABEL_16:

  v27 = *MEMORY[0x277D85DE8];

  return v22;
}

- (Class)modelClassForTypeName:(id)a3
{
  v4 = a3;
  v5 = [(HMBModelContainer *)self nameToClassTransform];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v6 = NSClassFromString(v4);
  }

  v7 = v6;

  return v6;
}

- (id)typeNameForModelClass:(Class)a3
{
  v4 = [(HMBModelContainer *)self classToNameTransform];
  v5 = [v4 objectForKey:a3];

  if (!v5)
  {
    v5 = NSStringFromClass(a3);
  }

  return v5;
}

- (id)unavailableVersionsForModelClass:(Class)a3
{
  os_unfair_lock_lock_with_options();
  v5 = [(HMBModelContainer *)self classUnavailableVersionCache];
  v6 = [v5 objectForKey:a3];

  if (!v6)
  {
    if (([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) == 0)
    {
      result = _HMFPreconditionFailure();
      __break(1u);
      return result;
    }

    v7 = [MEMORY[0x277CBEB38] dictionary];
    v8 = [(objc_class *)a3 hmbProperties];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __54__HMBModelContainer_unavailableVersionsForModelClass___block_invoke;
    v12[3] = &unk_2786E0E00;
    v9 = v7;
    v13 = v9;
    [v8 enumerateKeysAndObjectsUsingBlock:v12];
    v6 = v9;
    v10 = [(HMBModelContainer *)self classUnavailableVersionCache];
    [v10 setObject:v6 forKey:a3];
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

- (id)readOnlyVersionsForModelClass:(Class)a3
{
  os_unfair_lock_lock_with_options();
  v5 = [(HMBModelContainer *)self classReadOnlyVersionCache];
  v6 = [v5 objectForKey:a3];

  if (!v6)
  {
    if (([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) == 0)
    {
      result = _HMFPreconditionFailure();
      __break(1u);
      return result;
    }

    v7 = [MEMORY[0x277CBEB38] dictionary];
    v8 = [(objc_class *)a3 hmbProperties];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __51__HMBModelContainer_readOnlyVersionsForModelClass___block_invoke;
    v12[3] = &unk_2786E0E00;
    v9 = v7;
    v13 = v9;
    [v8 enumerateKeysAndObjectsUsingBlock:v12];
    v6 = v9;
    v10 = [(HMBModelContainer *)self classReadOnlyVersionCache];
    [v10 setObject:v6 forKey:a3];
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

- (HMBModelContainer)initWithDataVersion:(id)a3 legacyDataVersion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v24.receiver = self;
  v24.super_class = HMBModelContainer;
  v9 = [(HMBModelContainer *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_legacyDataVersion, a4);
    objc_storeStrong(&v10->_dataVersion, a3);
    v11 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    classToNameTransform = v10->_classToNameTransform;
    v10->_classToNameTransform = v11;

    v13 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    nameToClassTransform = v10->_nameToClassTransform;
    v10->_nameToClassTransform = v13;

    v15 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    objectPropertyHashLookup = v10->_objectPropertyHashLookup;
    v10->_objectPropertyHashLookup = v15;

    v17 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    classReadOnlyVersionCache = v10->_classReadOnlyVersionCache;
    v10->_classReadOnlyVersionCache = v17;

    v19 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    classUnavailableVersionCache = v10->_classUnavailableVersionCache;
    v10->_classUnavailableVersionCache = v19;

    v21 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    queryFieldsCache = v10->_queryFieldsCache;
    v10->_queryFieldsCache = v21;
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