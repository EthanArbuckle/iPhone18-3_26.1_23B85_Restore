@interface HMDLegacyV4Model
+ (Class)hmbModelClassForHMDModelClass:(Class)class;
+ (id)createWithLegacyRecord:(id)record modelContainer:(id)container error:(id *)error;
+ (id)hmbProperties;
- (id)convertToHMDModelObject;
- (id)encodeWithExistingRecord:(id)record cloudZone:(id)zone modelContainer:(id)container error:(id *)error;
- (id)hmbType;
@end

@implementation HMDLegacyV4Model

- (id)convertToHMDModelObject
{
  os_unfair_lock_lock_with_options();
  v3 = [__propertiesMap objectForKey:objc_opt_class()];
  os_unfair_lock_unlock(&lock);
  if (!v3)
  {
    v15 = _HMFPreconditionFailure();
    os_unfair_lock_unlock(&lock);
    _Unwind_Resume(v15);
  }

  hmbParentModelID = [(HMBModel *)self hmbParentModelID];
  hmf_zeroUUID = [MEMORY[0x277CCAD78] hmf_zeroUUID];
  if ([hmbParentModelID hmf_isEqualToUUID:hmf_zeroUUID])
  {
    hmbParentModelID2 = 0;
  }

  else
  {
    hmbParentModelID2 = [(HMBModel *)self hmbParentModelID];
  }

  v7 = objc_alloc([v3 hmdModelClass]);
  hmbModelID = [(HMBModel *)self hmbModelID];
  v9 = [v7 initWithUUID:hmbModelID parentUUID:hmbParentModelID2];

  hmbReserved = [(HMBModel *)self hmbReserved];
  v11 = [hmbReserved mutableCopy];
  v12 = v9[1];
  v9[1] = v11;

  v13 = +[HMDHomeKitVersion currentVersion];
  [v9 setBsoDataVersion:v13];

  return v9;
}

- (id)encodeWithExistingRecord:(id)record cloudZone:(id)zone modelContainer:(id)container error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  zoneCopy = zone;
  containerCopy = container;
  v36 = 0;
  if (error)
  {
    errorCopy = error;
  }

  else
  {
    errorCopy = &v36;
  }

  v14 = zoneCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (!v16)
  {
    _HMFPreconditionFailure();
  }

  convertToHMDModelObject = [(HMDLegacyV4Model *)self convertToHMDModelObject];
  v18 = [convertToHMDModelObject encodeWithEncoding:1 for:1 error:errorCopy];
  if (v18)
  {
    hmbParentModelID = [(HMBModel *)self hmbParentModelID];
    v20 = [v16 recordWithExistingRecord:recordCopy modelData:v18 parentModelID:hmbParentModelID modelContainer:containerCopy error:errorCopy];

    if (v20)
    {
      v21 = v20;
    }

    else
    {
      context = objc_autoreleasePoolPush();
      selfCopy = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v30 = *errorCopy;
        *buf = 138543618;
        v38 = v29;
        v31 = v29;
        v39 = 2112;
        v40 = v30;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Unable to create CKRecord for encapsulated legacy record: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(context);
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v25 = contexta = v22;
      v26 = *errorCopy;
      *buf = 138543618;
      v38 = v25;
      v39 = 2112;
      v40 = v26;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unable to encode model for cloud record: %@", buf, 0x16u);

      v22 = contexta;
    }

    objc_autoreleasePoolPop(v22);
    v20 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)hmbType
{
  os_unfair_lock_lock_with_options();
  v2 = [__propertiesMap objectForKey:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    hmdTypeName = [v2 hmdTypeName];

    os_unfair_lock_unlock(&lock);

    return hmdTypeName;
  }

  else
  {
    result = _HMFPreconditionFailure();
    __break(1u);
  }

  return result;
}

+ (id)createWithLegacyRecord:(id)record modelContainer:(id)container error:(id *)error
{
  v78 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  containerCopy = container;
  v71 = 0;
  if (error)
  {
    errorCopy = error;
  }

  else
  {
    errorCopy = &v71;
  }

  v11 = containerCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (!v13)
  {
    _HMFPreconditionFailure();
  }

  recordType = [recordCopy recordType];
  v15 = [recordType isEqual:@"ObjectRecord"];

  if (v15)
  {
    v16 = [recordCopy objectForKey:@"k00"];
    if (v16)
    {
      v17 = MEMORY[0x277CCAAC8];
      allowedTypes = [MEMORY[0x277D170A8] allowedTypes];
      v19 = [v17 unarchivedObjectOfClasses:allowedTypes fromData:v16 error:errorCopy];

      if (v19)
      {
        v20 = v19;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v22 = v20;
        }

        else
        {
          v22 = 0;
        }

        v70 = v22;

        if (isKindOfClass)
        {
          v23 = [v20 hmf_numberForKey:*MEMORY[0x277D17158]];
        }

        else
        {
          v23 = v20;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v39 = v23;
        }

        else
        {
          v39 = 0;
        }

        v40 = v39;

        v69 = v40;
        if ([v40 unsignedIntegerValue] == 1)
        {
          v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"k%02lu", 1];
          v65 = [recordCopy objectForKey:v41];
          v42 = [v13 decryptData:? decompress:? error:?];
          v43 = 0;
          v64 = v43;
          if (v43)
          {
            v44 = v43;
            v63 = v41;
            v67 = v19;
            v45 = objc_autoreleasePoolPush();
            selfCopy = self;
            v47 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              v62 = HMFGetLogIdentifier();
              v48 = objc_opt_class();
              NSStringFromClass(v48);
              v49 = v61 = v45;
              *buf = 138543874;
              v73 = v62;
              v74 = 2112;
              v75 = v49;
              v76 = 2112;
              v77 = v44;
              _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@%@ unable to decrypt model data (will try decoding it unencrypted): %@", buf, 0x20u);

              v45 = v61;
            }

            objc_autoreleasePoolPop(v45);
            v50 = v65;
            v51 = v65;

            v42 = v51;
            v19 = v67;
            v41 = v63;
          }

          else
          {
            v50 = v65;
          }

          v58 = [HMDBackingStoreModelObject objectFromData:v42 encoding:1 error:errorCopy];
          convertToLegacyV4 = [v58 convertToLegacyV4];
          [convertToLegacyV4 hmbAssociateWithContainer:v13];
        }

        else
        {
          v52 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v54 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v55 = v66 = v52;
            v56 = objc_opt_class();
            NSStringFromClass(v56);
            v57 = v68 = v19;
            *buf = 138543874;
            v73 = v55;
            v74 = 2112;
            v75 = v57;
            v76 = 2112;
            v77 = v20;
            _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_ERROR, "%{public}@%@ Unexpected encoding: %@", buf, 0x20u);

            v19 = v68;
            v52 = v66;
          }

          objc_autoreleasePoolPop(v52);
          [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
          *errorCopy = convertToLegacyV4 = 0;
        }
      }

      else
      {
        v34 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = HMFGetLogIdentifier();
          v38 = *errorCopy;
          *buf = 138543874;
          v73 = v37;
          v74 = 2112;
          v75 = v16;
          v76 = 2112;
          v77 = v38;
          _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@NSKeyedUnarchiver failed to unarchive metadata %@: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v34);
        if (*errorCopy)
        {
          convertToLegacyV4 = 0;
        }

        else
        {
          [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
          *errorCopy = convertToLegacyV4 = 0;
        }
      }
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543362;
        v73 = v33;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly nil recordMetadata.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v30);
      [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      *errorCopy = convertToLegacyV4 = 0;
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      recordType2 = [recordCopy recordType];
      *buf = 138543618;
      v73 = v27;
      v74 = 2112;
      v75 = recordType2;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Unexpected legacy record type: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    *errorCopy = convertToLegacyV4 = 0;
  }

  v59 = *MEMORY[0x277D85DE8];

  return convertToLegacyV4;
}

+ (id)hmbProperties
{
  os_unfair_lock_lock_with_options();
  v2 = [__propertiesMap objectForKey:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    properties = [v2 properties];

    os_unfair_lock_unlock(&lock);

    return properties;
  }

  else
  {
    result = _HMFPreconditionFailure();
    __break(1u);
  }

  return result;
}

+ (Class)hmbModelClassForHMDModelClass:(Class)class
{
  v23 = *MEMORY[0x277D85DE8];
  if (hmbModelClassForHMDModelClass__onceToken != -1)
  {
    dispatch_once(&hmbModelClassForHMDModelClass__onceToken, &__block_literal_global_17468);
  }

  os_unfair_lock_lock_with_options();
  if (!class)
  {
    _HMFPreconditionFailure();
    __break(1u);
  }

  v5 = [__classMap objectForKey:class];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = NSStringFromClass(class);
    v9 = [v7 stringWithFormat:@"%@%@", @"WRAP_", v8];

    v10 = objc_opt_class();
    ClassPair = objc_allocateClassPair(v10, [v9 UTF8String], 0);
    objc_registerClassPair(ClassPair);
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v15;
      v21 = 2112;
      v22 = ClassPair;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Created Legacy wrapper class: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [[HMDLegacyV4ModelInfo alloc] initWithClass:class];
    [__propertiesMap setObject:v16 forKey:ClassPair];
    [__classMap setObject:ClassPair forKey:class];
    v6 = ClassPair;
  }

  os_unfair_lock_unlock(&lock);
  v17 = *MEMORY[0x277D85DE8];

  return v6;
}

void __50__HMDLegacyV4Model_hmbModelClassForHMDModelClass___block_invoke()
{
  v0 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v1 = __classMap;
  __classMap = v0;

  v2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v3 = __propertiesMap;
  __propertiesMap = v2;
}

@end