@interface HMDDeviceModel
+ (id)properties;
+ (id)schemaHashRoot;
- (BOOL)diff:(id)diff differingFields:(id *)fields;
- (id)cd_childrenExcluding:(id)excluding fromContext:(id)context error:(id *)error;
@end

@implementation HMDDeviceModel

- (BOOL)diff:(id)diff differingFields:(id *)fields
{
  diffCopy = diff;
  v21.receiver = self;
  v21.super_class = HMDDeviceModel;
  v22 = 0;
  v7 = [(HMDBackingStoreModelObject *)&v21 diff:diffCopy differingFields:&v22];
  v8 = v22;
  v9 = v8;
  if (v7 && [v8 containsObject:@"handles"])
  {
    v10 = diffCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v12)
    {
      deviceHandles = [(HMDDeviceModel *)self deviceHandles];
      deviceHandles2 = [v12 deviceHandles];
      v15 = isEqualDeepCompare(deviceHandles, deviceHandles2);

      if (v15)
      {
        v16 = [v9 mutableCopy];
        [v16 removeObject:@"handles"];
        v17 = [v16 copy];

        v9 = v17;
      }
    }
  }

  if (fields)
  {
    v18 = v9;
    *fields = v9;
  }

  v19 = [v9 count] != 0;

  return v19;
}

+ (id)properties
{
  if (properties_onceToken_177291 != -1)
  {
    dispatch_once(&properties_onceToken_177291, &__block_literal_global_605_177292);
  }

  v3 = properties__properties_177293;

  return v3;
}

void __28__HMDDeviceModel_properties__block_invoke()
{
  v10[6] = *MEMORY[0x277D85DE8];
  v9[0] = @"identifier";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v10[0] = v0;
  v9[1] = @"handles";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v10[1] = v1;
  v9[2] = @"name";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v10[2] = v2;
  v9[3] = @"version";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v10[3] = v3;
  v9[4] = @"productInfo";
  v4 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v10[4] = v4;
  v9[5] = @"rpIdentity";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v10[5] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:6];
  v7 = properties__properties_177293;
  properties__properties_177293 = v6;

  v8 = *MEMORY[0x277D85DE8];
}

+ (id)schemaHashRoot
{
  v2 = [@"6D8998A8-13E4-4269-83B8-672645AE2D15" copy];

  return v2;
}

- (id)cd_childrenExcluding:(id)excluding fromContext:(id)context error:(id *)error
{
  v5 = [(HMDBackingStoreModelObject *)self cd_fetchManagedObjectInContext:context error:error];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end