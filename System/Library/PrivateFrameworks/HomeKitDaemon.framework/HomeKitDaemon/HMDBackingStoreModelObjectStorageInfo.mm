@interface HMDBackingStoreModelObjectStorageInfo
+ (id)deprecatedField;
+ (id)infoWithClass:(Class)a3;
+ (id)infoWithClass:(Class)a3 additionalDecodeClasses:(id)a4;
+ (id)infoWithClass:(Class)a3 defaultValue:(id)a4;
+ (id)infoWithClass:(Class)a3 defaultValue:(id)a4 logging:(unint64_t)a5;
+ (id)infoWithClass:(Class)a3 defaultValue:(id)a4 logging:(unint64_t)a5 readOnly:(id)a6;
+ (id)infoWithClass:(Class)a3 defaultValue:(id)a4 logging:(unint64_t)a5 readOnly:(id)a6 unavailable:(id)a7;
+ (id)infoWithClass:(Class)a3 logging:(unint64_t)a4;
+ (id)infoWithClass:(Class)a3 logging:(unint64_t)a4 readOnly:(id)a5;
+ (id)infoWithClass:(Class)a3 logging:(unint64_t)a4 readOnly:(id)a5 unavailable:(id)a6;
- (HMDBackingStoreModelObjectStorageInfo)initWithClass:(Class)a3 logging:(unint64_t)a4 readOnly:(id)a5 unavailable:(id)a6 defaultSet:(BOOL)a7 defaultValue:(id)a8 additonalDecodeClasses:(id)a9;
- (id)description;
@end

@implementation HMDBackingStoreModelObjectStorageInfo

- (id)description
{
  v3 = [(HMDBackingStoreModelObjectStorageInfo *)self defaultValueSet];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromClass([(HMDBackingStoreModelObjectStorageInfo *)self classObj]);
  v6 = [(HMDBackingStoreModelObjectStorageInfo *)self logging];
  v7 = [(HMDBackingStoreModelObjectStorageInfo *)self readOnly];
  v8 = [(HMDBackingStoreModelObjectStorageInfo *)self unavailable];
  v9 = v8;
  if (v3)
  {
    v10 = [(HMDBackingStoreModelObjectStorageInfo *)self defaultValue];
    v11 = [v4 stringWithFormat:@"<HMDBackingStoreModelObjectStorageInfo class: %@  logging: %lu  readOnly: %@ unavailable: %@ defaultValue:%@>", v5, v6, v7, v9, v10];
  }

  else
  {
    v11 = [v4 stringWithFormat:@"<HMDBackingStoreModelObjectStorageInfo class: %@  logging: %lu  readOnly: %@  unavailable: %@>", v5, v6, v7, v8];
  }

  return v11;
}

- (HMDBackingStoreModelObjectStorageInfo)initWithClass:(Class)a3 logging:(unint64_t)a4 readOnly:(id)a5 unavailable:(id)a6 defaultSet:(BOOL)a7 defaultValue:(id)a8 additonalDecodeClasses:(id)a9
{
  v10 = a7;
  v52 = *MEMORY[0x277D85DE8];
  v16 = a5;
  v39 = a6;
  v17 = a8;
  v18 = a9;
  v43.receiver = self;
  v43.super_class = HMDBackingStoreModelObjectStorageInfo;
  v19 = [(HMDBackingStoreModelObjectStorageInfo *)&v43 init];
  v20 = v19;
  if (!v19)
  {
    v27 = 0;
    v23 = v17;
    goto LABEL_16;
  }

  v37 = v16;
  objc_storeStrong(&v19->_classObj, a3);
  +[HMDBackingStore deeplyProblematicObjectTypes];
  v21 = v38 = v18;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __131__HMDBackingStoreModelObjectStorageInfo_initWithClass_logging_readOnly_unavailable_defaultSet_defaultValue_additonalDecodeClasses___block_invoke;
  v40[3] = &unk_278671448;
  v42 = a3;
  v22 = v20;
  v41 = v22;
  [v21 hmf_enumerateWithAutoreleasePoolUsingBlock:v40];

  v18 = v38;
  v22[3] = a4;
  objc_storeStrong(v22 + 4, a5);
  objc_storeStrong(v22 + 5, a6);
  *(v22 + 8) = v10;
  objc_storeStrong(v22 + 6, a8);
  if (v38)
  {
    if (([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) != 0)
    {
      v23 = v17;
      if ([v38 count])
      {
        [v38 hmf_enumerateWithAutoreleasePoolUsingBlock:&__block_literal_global_22681];
        v24 = [MEMORY[0x277CBEB18] arrayWithObject:a3];
        [v24 addObjectsFromArray:v38];
        v25 = [MEMORY[0x277CBEB98] setWithArray:v24];
        v26 = v22[7];
        v22[7] = v25;

        goto LABEL_8;
      }
    }

    else
    {
      _HMFPreconditionFailure();
    }

    _HMFPreconditionFailure();
  }

  v24 = v22[7];
  v22[7] = 0;
  v23 = v17;
LABEL_8:

  if (v23 && v10 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = v22;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = NSStringFromClass(a3);
      *buf = 138544130;
      v45 = v31;
      v46 = 2112;
      v47 = v23;
      v48 = 2112;
      v49 = v33;
      v50 = 2112;
      v51 = v34;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Unable to create a Storage Info with a default value %@ of type %@ when the stored type is %@", buf, 0x2Au);

      v18 = v38;
    }

    objc_autoreleasePoolPop(v28);
    v27 = 0;
  }

  else
  {
    v27 = v22;
  }

  v16 = v37;
LABEL_16:

  v35 = *MEMORY[0x277D85DE8];
  return v27;
}

void __131__HMDBackingStoreModelObjectStorageInfo_initWithClass_logging_readOnly_unavailable_defaultSet_defaultValue_additonalDecodeClasses___block_invoke(uint64_t a1, objc_class *a2, _BYTE *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 40);
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = NSStringFromClass(a2);
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Encoding top level type of %@ will fail in the future.", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    *a3 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
}

id __131__HMDBackingStoreModelObjectStorageInfo_initWithClass_logging_readOnly_unavailable_defaultSet_defaultValue_additonalDecodeClasses___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = +[HMDBackingStore allowedTypes];
  if ([v3 containsObject:a2])
  {
  }

  else
  {
    v4 = [a2 isSubclassOfClass:objc_opt_class()];

    if ((v4 & 1) == 0)
    {
LABEL_7:
      v6 = _HMFPreconditionFailure();
      return +[(HMDBackingStoreModelObjectStorageInfo *)v6];
    }
  }

  if (([a2 isSubclassOfClass:objc_opt_class()] & 1) != 0 || (result = objc_msgSend(a2, "isSubclassOfClass:", objc_opt_class()), result))
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  return result;
}

+ (id)deprecatedField
{
  v2 = [[HMDBackingStoreModelObjectStorageInfo alloc] initWithClass:objc_opt_class() logging:0 readOnly:0 unavailable:0 defaultSet:0 defaultValue:0 additonalDecodeClasses:0];

  return v2;
}

+ (id)infoWithClass:(Class)a3 additionalDecodeClasses:(id)a4
{
  v5 = a4;
  v6 = [[HMDBackingStoreModelObjectStorageInfo alloc] initWithClass:a3 logging:1 readOnly:0 unavailable:0 defaultSet:0 defaultValue:0 additonalDecodeClasses:v5];

  return v6;
}

+ (id)infoWithClass:(Class)a3 defaultValue:(id)a4 logging:(unint64_t)a5 readOnly:(id)a6 unavailable:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = [[HMDBackingStoreModelObjectStorageInfo alloc] initWithClass:a3 logging:a5 readOnly:v12 unavailable:v11 defaultSet:1 defaultValue:v13 additonalDecodeClasses:0];

  return v14;
}

+ (id)infoWithClass:(Class)a3 defaultValue:(id)a4 logging:(unint64_t)a5 readOnly:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = [[HMDBackingStoreModelObjectStorageInfo alloc] initWithClass:a3 logging:a5 readOnly:v9 unavailable:0 defaultSet:1 defaultValue:v10 additonalDecodeClasses:0];

  return v11;
}

+ (id)infoWithClass:(Class)a3 defaultValue:(id)a4 logging:(unint64_t)a5
{
  v7 = a4;
  v8 = [[HMDBackingStoreModelObjectStorageInfo alloc] initWithClass:a3 logging:a5 readOnly:0 unavailable:0 defaultSet:1 defaultValue:v7 additonalDecodeClasses:0];

  return v8;
}

+ (id)infoWithClass:(Class)a3 defaultValue:(id)a4
{
  v5 = a4;
  v6 = [[HMDBackingStoreModelObjectStorageInfo alloc] initWithClass:a3 logging:1 readOnly:0 unavailable:0 defaultSet:1 defaultValue:v5 additonalDecodeClasses:0];

  return v6;
}

+ (id)infoWithClass:(Class)a3 logging:(unint64_t)a4 readOnly:(id)a5 unavailable:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = [[HMDBackingStoreModelObjectStorageInfo alloc] initWithClass:a3 logging:a4 readOnly:v10 unavailable:v9 defaultSet:0 defaultValue:0 additonalDecodeClasses:0];

  return v11;
}

+ (id)infoWithClass:(Class)a3 logging:(unint64_t)a4 readOnly:(id)a5
{
  v7 = a5;
  v8 = [[HMDBackingStoreModelObjectStorageInfo alloc] initWithClass:a3 logging:a4 readOnly:v7 unavailable:0 defaultSet:0 defaultValue:0 additonalDecodeClasses:0];

  return v8;
}

+ (id)infoWithClass:(Class)a3 logging:(unint64_t)a4
{
  v4 = [[HMDBackingStoreModelObjectStorageInfo alloc] initWithClass:a3 logging:a4 readOnly:0 unavailable:0 defaultSet:0 defaultValue:0 additonalDecodeClasses:0];

  return v4;
}

+ (id)infoWithClass:(Class)a3
{
  v3 = [[HMDBackingStoreModelObjectStorageInfo alloc] initWithClass:a3 logging:1 readOnly:0 unavailable:0 defaultSet:0 defaultValue:0 additonalDecodeClasses:0];

  return v3;
}

@end