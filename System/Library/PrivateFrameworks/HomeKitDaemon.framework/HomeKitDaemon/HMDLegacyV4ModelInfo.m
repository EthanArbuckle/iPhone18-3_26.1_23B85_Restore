@interface HMDLegacyV4ModelInfo
- (HMDLegacyV4ModelInfo)initWithClass:(Class)a3;
@end

@implementation HMDLegacyV4ModelInfo

- (HMDLegacyV4ModelInfo)initWithClass:(Class)a3
{
  v20.receiver = self;
  v20.super_class = HMDLegacyV4ModelInfo;
  v4 = [(HMDLegacyV4ModelInfo *)&v20 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_hmdModelClass, a3);
    v6 = +[HMDBackingStoreSingleton sharedInstance];
    v7 = [v6 classToNameTransform];
    v8 = [v7 objectForKey:a3];
    hmdTypeName = v5->_hmdTypeName;
    v5->_hmdTypeName = v8;

    if (!v5->_hmdTypeName)
    {
      v10 = NSStringFromClass(a3);
      v11 = v5->_hmdTypeName;
      v5->_hmdTypeName = v10;
    }

    v12 = [(objc_class *)a3 properties];
    v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v12, "count")}];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __38__HMDLegacyV4ModelInfo_initWithClass___block_invoke;
    v18[3] = &unk_278670C58;
    v19 = v13;
    v14 = v13;
    [v12 enumerateKeysAndObjectsUsingBlock:v18];
    v15 = [v14 copy];
    properties = v5->_properties;
    v5->_properties = v15;
  }

  return v5;
}

void __38__HMDLegacyV4ModelInfo_initWithClass___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = a3;
  v5 = a2;
  v6 = [v19 classObj];
  if (v6 == objc_opt_class())
  {
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x277D170B8] deprecatedField];
    [v9 setObject:v10 forKey:v5];
  }

  else
  {
    v7 = [v19 logging];
    if (v7 > 3)
    {
      v8 = 0;
    }

    else
    {
      v8 = qword_22A587090[v7];
    }

    v11 = +[HMDBackingStoreModelObjectStorageInfo deprecatedField];

    if (v11 == v19)
    {
      v12 = [MEMORY[0x277D170B8] deprecatedField];
      v6 = [v12 classObj];
    }

    v10 = [MEMORY[0x277CBEB18] array];
    v13 = [MEMORY[0x277D17100] fieldWithClass:v6 options:v10];
    v14 = [v19 readOnly];
    [v13 setReadonlyVersion:v14];

    v15 = [v19 unavailable];
    [v13 setUnavailableVersion:v15];

    v16 = [v19 defaultValue];
    [v13 setDefaultValue:v16];

    [v13 setLoggingVisibility:v8];
    v17 = *(a1 + 32);
    v18 = [v13 copy];
    [v17 setObject:v18 forKey:v5];

    v5 = v13;
  }
}

@end