@interface HMDMediaAccessoryModel
+ (id)cd_getMKFMediaAccessoryFromAccessory:(id)accessory;
+ (id)cd_getMKFMediaAccessoryFromAccessoryUUID:(id)d;
+ (id)properties;
@end

@implementation HMDMediaAccessoryModel

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__HMDMediaAccessoryModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (properties_onceToken_97552 != -1)
  {
    dispatch_once(&properties_onceToken_97552, block);
  }

  v2 = properties__properties_97553;

  return v2;
}

void __36__HMDMediaAccessoryModel_properties__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CBEB38];
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___HMDMediaAccessoryModel;
  v2 = objc_msgSendSuper2(&v5, sel_properties);
  v3 = [v1 dictionaryWithDictionary:v2];
  v4 = properties__properties_97553;
  properties__properties_97553 = v3;
}

+ (id)cd_getMKFMediaAccessoryFromAccessory:(id)accessory
{
  v24 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  if (!accessoryCopy)
  {
    _HMFPreconditionFailure();
  }

  v5 = accessoryCopy;
  v17 = 0;
  v6 = [HMDBackingStore cdlsFetchManagedObjectWithUUID:accessoryCopy ofManagedObjectType:objc_opt_class() error:&v17];
  v7 = v17;
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v14 = v6;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543874;
      v19 = v13;
      v20 = 2112;
      v21 = v5;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to find mkfMediaAccessory for accessory with UUID %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)cd_getMKFMediaAccessoryFromAccessoryUUID:(id)d
{
  dCopy = d;
  v4 = objc_opt_class();
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:dCopy];

  v6 = [v4 cd_getMKFMediaAccessoryFromAccessory:v5];

  return v6;
}

@end