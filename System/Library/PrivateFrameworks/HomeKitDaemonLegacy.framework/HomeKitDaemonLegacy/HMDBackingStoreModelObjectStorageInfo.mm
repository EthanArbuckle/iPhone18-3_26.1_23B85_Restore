@interface HMDBackingStoreModelObjectStorageInfo
+ (id)deprecatedField;
+ (id)infoWithClass:(Class)class;
+ (id)infoWithClass:(Class)class additionalDecodeClasses:(id)classes;
+ (id)infoWithClass:(Class)class defaultValue:(id)value;
+ (id)infoWithClass:(Class)class defaultValue:(id)value logging:(unint64_t)logging;
+ (id)infoWithClass:(Class)class defaultValue:(id)value logging:(unint64_t)logging readOnly:(id)only;
+ (id)infoWithClass:(Class)class defaultValue:(id)value logging:(unint64_t)logging readOnly:(id)only unavailable:(id)unavailable;
+ (id)infoWithClass:(Class)class logging:(unint64_t)logging;
+ (id)infoWithClass:(Class)class logging:(unint64_t)logging readOnly:(id)only;
+ (id)infoWithClass:(Class)class logging:(unint64_t)logging readOnly:(id)only unavailable:(id)unavailable;
- (HMDBackingStoreModelObjectStorageInfo)initWithClass:(Class)class logging:(unint64_t)logging readOnly:(id)only unavailable:(id)unavailable defaultSet:(BOOL)set defaultValue:(id)value additonalDecodeClasses:(id)classes;
- (id)description;
@end

@implementation HMDBackingStoreModelObjectStorageInfo

- (id)description
{
  defaultValueSet = [(HMDBackingStoreModelObjectStorageInfo *)self defaultValueSet];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromClass([(HMDBackingStoreModelObjectStorageInfo *)self classObj]);
  logging = [(HMDBackingStoreModelObjectStorageInfo *)self logging];
  readOnly = [(HMDBackingStoreModelObjectStorageInfo *)self readOnly];
  unavailable = [(HMDBackingStoreModelObjectStorageInfo *)self unavailable];
  v9 = unavailable;
  if (defaultValueSet)
  {
    defaultValue = [(HMDBackingStoreModelObjectStorageInfo *)self defaultValue];
    v11 = [v4 stringWithFormat:@"<HMDBackingStoreModelObjectStorageInfo class: %@  logging: %lu  readOnly: %@ unavailable: %@ defaultValue:%@>", v5, logging, readOnly, v9, defaultValue];
  }

  else
  {
    v11 = [v4 stringWithFormat:@"<HMDBackingStoreModelObjectStorageInfo class: %@  logging: %lu  readOnly: %@  unavailable: %@>", v5, logging, readOnly, unavailable];
  }

  return v11;
}

- (HMDBackingStoreModelObjectStorageInfo)initWithClass:(Class)class logging:(unint64_t)logging readOnly:(id)only unavailable:(id)unavailable defaultSet:(BOOL)set defaultValue:(id)value additonalDecodeClasses:(id)classes
{
  setCopy = set;
  v52 = *MEMORY[0x277D85DE8];
  onlyCopy = only;
  unavailableCopy = unavailable;
  valueCopy = value;
  classesCopy = classes;
  v43.receiver = self;
  v43.super_class = HMDBackingStoreModelObjectStorageInfo;
  v19 = [(HMDBackingStoreModelObjectStorageInfo *)&v43 init];
  v20 = v19;
  if (!v19)
  {
    v27 = 0;
    v23 = valueCopy;
    goto LABEL_16;
  }

  v37 = onlyCopy;
  objc_storeStrong(&v19->_classObj, class);
  +[HMDBackingStore deeplyProblematicObjectTypes];
  v21 = v38 = classesCopy;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __131__HMDBackingStoreModelObjectStorageInfo_initWithClass_logging_readOnly_unavailable_defaultSet_defaultValue_additonalDecodeClasses___block_invoke;
  v40[3] = &unk_279723468;
  classCopy = class;
  v22 = v20;
  v41 = v22;
  [v21 hmf_enumerateWithAutoreleasePoolUsingBlock:v40];

  classesCopy = v38;
  v22[3] = logging;
  objc_storeStrong(v22 + 4, only);
  objc_storeStrong(v22 + 5, unavailable);
  *(v22 + 8) = setCopy;
  objc_storeStrong(v22 + 6, value);
  if (v38)
  {
    if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0)
    {
      v23 = valueCopy;
      if ([v38 count])
      {
        [v38 hmf_enumerateWithAutoreleasePoolUsingBlock:&__block_literal_global_15566];
        v24 = [MEMORY[0x277CBEB18] arrayWithObject:class];
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
  v23 = valueCopy;
LABEL_8:

  if (v23 && setCopy && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = v22;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = NSStringFromClass(class);
      *buf = 138544130;
      v45 = v31;
      v46 = 2112;
      v47 = v23;
      v48 = 2112;
      v49 = v33;
      v50 = 2112;
      v51 = v34;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Unable to create a Storage Info with a default value %@ of type %@ when the stored type is %@", buf, 0x2Au);

      classesCopy = v38;
    }

    objc_autoreleasePoolPop(v28);
    v27 = 0;
  }

  else
  {
    v27 = v22;
  }

  onlyCopy = v37;
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
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Encoding top level type of %@ will fail in the future.", &v13, 0x16u);
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

+ (id)infoWithClass:(Class)class additionalDecodeClasses:(id)classes
{
  classesCopy = classes;
  v6 = [[HMDBackingStoreModelObjectStorageInfo alloc] initWithClass:class logging:1 readOnly:0 unavailable:0 defaultSet:0 defaultValue:0 additonalDecodeClasses:classesCopy];

  return v6;
}

+ (id)infoWithClass:(Class)class defaultValue:(id)value logging:(unint64_t)logging readOnly:(id)only unavailable:(id)unavailable
{
  unavailableCopy = unavailable;
  onlyCopy = only;
  valueCopy = value;
  v14 = [[HMDBackingStoreModelObjectStorageInfo alloc] initWithClass:class logging:logging readOnly:onlyCopy unavailable:unavailableCopy defaultSet:1 defaultValue:valueCopy additonalDecodeClasses:0];

  return v14;
}

+ (id)infoWithClass:(Class)class defaultValue:(id)value logging:(unint64_t)logging readOnly:(id)only
{
  onlyCopy = only;
  valueCopy = value;
  v11 = [[HMDBackingStoreModelObjectStorageInfo alloc] initWithClass:class logging:logging readOnly:onlyCopy unavailable:0 defaultSet:1 defaultValue:valueCopy additonalDecodeClasses:0];

  return v11;
}

+ (id)infoWithClass:(Class)class defaultValue:(id)value logging:(unint64_t)logging
{
  valueCopy = value;
  v8 = [[HMDBackingStoreModelObjectStorageInfo alloc] initWithClass:class logging:logging readOnly:0 unavailable:0 defaultSet:1 defaultValue:valueCopy additonalDecodeClasses:0];

  return v8;
}

+ (id)infoWithClass:(Class)class defaultValue:(id)value
{
  valueCopy = value;
  v6 = [[HMDBackingStoreModelObjectStorageInfo alloc] initWithClass:class logging:1 readOnly:0 unavailable:0 defaultSet:1 defaultValue:valueCopy additonalDecodeClasses:0];

  return v6;
}

+ (id)infoWithClass:(Class)class logging:(unint64_t)logging readOnly:(id)only unavailable:(id)unavailable
{
  unavailableCopy = unavailable;
  onlyCopy = only;
  v11 = [[HMDBackingStoreModelObjectStorageInfo alloc] initWithClass:class logging:logging readOnly:onlyCopy unavailable:unavailableCopy defaultSet:0 defaultValue:0 additonalDecodeClasses:0];

  return v11;
}

+ (id)infoWithClass:(Class)class logging:(unint64_t)logging readOnly:(id)only
{
  onlyCopy = only;
  v8 = [[HMDBackingStoreModelObjectStorageInfo alloc] initWithClass:class logging:logging readOnly:onlyCopy unavailable:0 defaultSet:0 defaultValue:0 additonalDecodeClasses:0];

  return v8;
}

+ (id)infoWithClass:(Class)class logging:(unint64_t)logging
{
  v4 = [[HMDBackingStoreModelObjectStorageInfo alloc] initWithClass:class logging:logging readOnly:0 unavailable:0 defaultSet:0 defaultValue:0 additonalDecodeClasses:0];

  return v4;
}

+ (id)infoWithClass:(Class)class
{
  v3 = [[HMDBackingStoreModelObjectStorageInfo alloc] initWithClass:class logging:1 readOnly:0 unavailable:0 defaultSet:0 defaultValue:0 additonalDecodeClasses:0];

  return v3;
}

@end