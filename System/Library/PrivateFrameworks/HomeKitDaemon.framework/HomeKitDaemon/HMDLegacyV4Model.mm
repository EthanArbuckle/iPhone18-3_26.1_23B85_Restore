@interface HMDLegacyV4Model
+ (Class)hmbModelClassForHMDModelClass:(Class)a3;
+ (id)createWithLegacyRecord:(id)a3 modelContainer:(id)a4 error:(id *)a5;
+ (id)hmbProperties;
- (id)convertToHMDModelObject;
- (id)encodeWithExistingRecord:(id)a3 cloudZone:(id)a4 modelContainer:(id)a5 error:(id *)a6;
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

  v4 = [(HMBModel *)self hmbParentModelID];
  v5 = [MEMORY[0x277CCAD78] hmf_zeroUUID];
  if ([v4 hmf_isEqualToUUID:v5])
  {
    v6 = 0;
  }

  else
  {
    v6 = [(HMBModel *)self hmbParentModelID];
  }

  v7 = objc_alloc([v3 hmdModelClass]);
  v8 = [(HMBModel *)self hmbModelID];
  v9 = [v7 initWithUUID:v8 parentUUID:v6];

  v10 = [(HMBModel *)self hmbReserved];
  v11 = [v10 mutableCopy];
  v12 = v9[1];
  v9[1] = v11;

  v13 = +[HMDHomeKitVersion currentVersion];
  [v9 setBsoDataVersion:v13];

  return v9;
}

- (id)encodeWithExistingRecord:(id)a3 cloudZone:(id)a4 modelContainer:(id)a5 error:(id *)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v36 = 0;
  if (a6)
  {
    v13 = a6;
  }

  else
  {
    v13 = &v36;
  }

  v14 = v11;
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

  v17 = [(HMDLegacyV4Model *)self convertToHMDModelObject];
  v18 = [v17 encodeWithEncoding:1 for:1 error:v13];
  if (v18)
  {
    v19 = [(HMBModel *)self hmbParentModelID];
    v20 = [v16 recordWithExistingRecord:v10 modelData:v18 parentModelID:v19 modelContainer:v12 error:v13];

    if (v20)
    {
      v21 = v20;
    }

    else
    {
      context = objc_autoreleasePoolPush();
      v27 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v30 = *v13;
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
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v25 = contexta = v22;
      v26 = *v13;
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
    v4 = [v2 hmdTypeName];

    os_unfair_lock_unlock(&lock);

    return v4;
  }

  else
  {
    result = _HMFPreconditionFailure();
    __break(1u);
  }

  return result;
}

+ (id)createWithLegacyRecord:(id)a3 modelContainer:(id)a4 error:(id *)a5
{
  v78 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v71 = 0;
  if (a5)
  {
    v10 = a5;
  }

  else
  {
    v10 = &v71;
  }

  v11 = v9;
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

  v14 = [v8 recordType];
  v15 = [v14 isEqual:@"ObjectRecord"];

  if (v15)
  {
    v16 = [v8 objectForKey:@"k00"];
    if (v16)
    {
      v17 = MEMORY[0x277CCAAC8];
      v18 = [MEMORY[0x277D170A8] allowedTypes];
      v19 = [v17 unarchivedObjectOfClasses:v18 fromData:v16 error:v10];

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
          v65 = [v8 objectForKey:v41];
          v42 = [v13 decryptData:? decompress:? error:?];
          v43 = 0;
          v64 = v43;
          if (v43)
          {
            v44 = v43;
            v63 = v41;
            v67 = v19;
            v45 = objc_autoreleasePoolPush();
            v46 = a1;
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

          v58 = [HMDBackingStoreModelObject objectFromData:v42 encoding:1 error:v10];
          v29 = [v58 convertToLegacyV4];
          [v29 hmbAssociateWithContainer:v13];
        }

        else
        {
          v52 = objc_autoreleasePoolPush();
          v53 = a1;
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
          *v10 = v29 = 0;
        }
      }

      else
      {
        v34 = objc_autoreleasePoolPush();
        v35 = a1;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = HMFGetLogIdentifier();
          v38 = *v10;
          *buf = 138543874;
          v73 = v37;
          v74 = 2112;
          v75 = v16;
          v76 = 2112;
          v77 = v38;
          _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@NSKeyedUnarchiver failed to unarchive metadata %@: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v34);
        if (*v10)
        {
          v29 = 0;
        }

        else
        {
          [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
          *v10 = v29 = 0;
        }
      }
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = a1;
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
      *v10 = v29 = 0;
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = a1;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      v28 = [v8 recordType];
      *buf = 138543618;
      v73 = v27;
      v74 = 2112;
      v75 = v28;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Unexpected legacy record type: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    *v10 = v29 = 0;
  }

  v59 = *MEMORY[0x277D85DE8];

  return v29;
}

+ (id)hmbProperties
{
  os_unfair_lock_lock_with_options();
  v2 = [__propertiesMap objectForKey:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 properties];

    os_unfair_lock_unlock(&lock);

    return v4;
  }

  else
  {
    result = _HMFPreconditionFailure();
    __break(1u);
  }

  return result;
}

+ (Class)hmbModelClassForHMDModelClass:(Class)a3
{
  v23 = *MEMORY[0x277D85DE8];
  if (hmbModelClassForHMDModelClass__onceToken != -1)
  {
    dispatch_once(&hmbModelClassForHMDModelClass__onceToken, &__block_literal_global_17468);
  }

  os_unfair_lock_lock_with_options();
  if (!a3)
  {
    _HMFPreconditionFailure();
    __break(1u);
  }

  v5 = [__classMap objectForKey:a3];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = NSStringFromClass(a3);
    v9 = [v7 stringWithFormat:@"%@%@", @"WRAP_", v8];

    v10 = objc_opt_class();
    ClassPair = objc_allocateClassPair(v10, [v9 UTF8String], 0);
    objc_registerClassPair(ClassPair);
    v12 = objc_autoreleasePoolPush();
    v13 = a1;
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
    v16 = [[HMDLegacyV4ModelInfo alloc] initWithClass:a3];
    [__propertiesMap setObject:v16 forKey:ClassPair];
    [__classMap setObject:ClassPair forKey:a3];
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