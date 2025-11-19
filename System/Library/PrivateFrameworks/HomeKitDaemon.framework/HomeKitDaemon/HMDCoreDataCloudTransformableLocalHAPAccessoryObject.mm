@interface HMDCoreDataCloudTransformableLocalHAPAccessoryObject
+ (BOOL)exportUpdateWithObjectID:(id)a3 updatedProperties:(id)a4 additionalUpdates:(id)a5 context:(id)a6;
@end

@implementation HMDCoreDataCloudTransformableLocalHAPAccessoryObject

+ (BOOL)exportUpdateWithObjectID:(id)a3 updatedProperties:(id)a4 additionalUpdates:(id)a5 context:(id)a6
{
  v38[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 entity];
  v15 = +[_MKFService entity];
  v16 = [v14 isKindOfEntity:v15];

  if (v16)
  {
    v38[0] = @"accessory";
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
    v30 = 0;
    v18 = [v13 hmd_fetchExistingObjectWithID:v10 propertiesToFetch:v17 error:&v30];
    v19 = v30;

    if (v18)
    {
      v20 = [v18 accessory];
      v21 = [v20 objectID];
      v37 = @"services_";
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
      [a1 addToUpdates:v12 objectID:v21 properties:v22];
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = objc_opt_class();
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        v27 = @"not found";
        *buf = 138543874;
        v32 = v26;
        if (v19)
        {
          v27 = v19;
        }

        v33 = 2114;
        v34 = v10;
        v35 = 2114;
        v36 = v27;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch object with objectID %{public}@: %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v23);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return 1;
}

@end