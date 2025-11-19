@interface HMDSoftwareUpdateModel
+ (id)properties;
- (id)cd_fetchManagedObjectInContext:(id)a3 error:(id *)a4;
@end

@implementation HMDSoftwareUpdateModel

+ (id)properties
{
  if (properties_onceToken_130998 != -1)
  {
    dispatch_once(&properties_onceToken_130998, &__block_literal_global_254);
  }

  v3 = properties__properties_130999;

  return v3;
}

void __36__HMDSoftwareUpdateModel_properties__block_invoke()
{
  v11[7] = *MEMORY[0x277D85DE8];
  v10[0] = @"softwareVersion";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[0] = v0;
  v10[1] = @"displayableSoftwareVersion";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[1] = v1;
  v10[2] = @"state";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[2] = v2;
  v10[3] = @"downloadSize";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[3] = v3;
  v10[4] = @"installDuration";
  v4 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[4] = v4;
  v10[5] = @"documentationMetadata";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[5] = v5;
  v10[6] = @"releaseDate";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[6] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:7];
  v8 = properties__properties_130999;
  properties__properties_130999 = v7;

  v9 = *MEMORY[0x277D85DE8];
}

- (id)cd_fetchManagedObjectInContext:(id)a3 error:(id *)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMDBackingStoreModelObject *)self managedObject];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 managedObjectContext];

    if (!v9)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v13 = HMFGetLogIdentifier();
        v14 = [(HMDBackingStoreModelObject *)v11 uuid];
        v15 = [(HMDBackingStoreModelObject *)v11 parentUUID];
        *buf = 138544130;
        v31 = v13;
        v32 = 2112;
        v33 = v8;
        v34 = 2112;
        v35 = v14;
        v36 = 2112;
        v37 = v15;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_FAULT, "%{public}@Managed object context appears to be reset on this object %@, someone did something very bad: %@/%@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v10);
    }
  }

  else
  {
    v16 = [objc_msgSend(objc_opt_class() "cd_entityClass")];
    v17 = MEMORY[0x277CCAC30];
    v18 = [(HMDBackingStoreModelObject *)self parentUUID];
    v19 = [v17 predicateWithFormat:@"%K.%K == %@", @"accessory", @"modelID", v18];
    [v16 setPredicate:v19];

    v20 = [v16 execute:a4];
    if (v20)
    {
      v21 = v20;
      if ([v20 count] >= 2)
      {
        _HMFPreconditionFailure();
      }

      v8 = [v21 firstObject];
      [(HMDBackingStoreModelObject *)self setManagedObject:v8];
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v26 = [(HMDBackingStoreModelObject *)v23 parentUUID];
        v27 = *a4;
        *buf = 138543874;
        v31 = v25;
        v32 = 2112;
        v33 = v26;
        v34 = 2112;
        v35 = v27;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Fetch of software update model with parent UUID : %@ failed: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v22);
      v8 = 0;
    }
  }

  v28 = *MEMORY[0x277D85DE8];

  return v8;
}

@end