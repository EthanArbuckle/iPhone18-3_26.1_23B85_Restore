@interface HMDCoreDataCloudTransformableLocalApplicationData
+ (BOOL)exportUpdateWithObjectID:(id)a3 updatedProperties:(id)a4 additionalUpdates:(id)a5 context:(id)a6;
@end

@implementation HMDCoreDataCloudTransformableLocalApplicationData

+ (BOOL)exportUpdateWithObjectID:(id)a3 updatedProperties:(id)a4 additionalUpdates:(id)a5 context:(id)a6
{
  v57 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 entity];
  v15 = +[_MKFApplicationData entity];
  v16 = [v14 isKindOfEntity:v15];

  if (v16)
  {
    v44 = 0;
    v17 = [v13 existingObjectWithID:v10 error:&v44];
    v18 = v44;
    if (v17)
    {
      v19 = [v17 home];

      if (v19)
      {
        v20 = [v17 home];
        v21 = [v20 objectID];
        v50 = @"applicationData";
        v22 = MEMORY[0x277CBEA60];
        v23 = &v50;
LABEL_17:
        v35 = [v22 arrayWithObjects:v23 count:1];
        [a1 addToUpdates:v12 objectID:v21 properties:v35];

        goto LABEL_18;
      }

      v32 = [v17 actionSet];

      if (v32)
      {
        v20 = [v17 actionSet];
        v21 = [v20 objectID];
        v49 = @"applicationData";
        v22 = MEMORY[0x277CBEA60];
        v23 = &v49;
        goto LABEL_17;
      }

      v33 = [v17 room];

      if (v33)
      {
        v20 = [v17 room];
        v21 = [v20 objectID];
        v48 = @"applicationData";
        v22 = MEMORY[0x277CBEA60];
        v23 = &v48;
        goto LABEL_17;
      }

      v34 = [v17 accessory];

      if (v34)
      {
        v20 = [v17 accessory];
        v21 = [v20 objectID];
        v47 = @"applicationData";
        v22 = MEMORY[0x277CBEA60];
        v23 = &v47;
        goto LABEL_17;
      }

      v38 = [v17 service];

      if (v38)
      {
        v43 = [v17 service];
        v39 = [v43 accessory];
        v40 = [v39 objectID];
        v46 = @"services_";
        v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
        [a1 addToUpdates:v12 objectID:v40 properties:v41];

        goto LABEL_18;
      }

      v42 = [v17 serviceGroup];

      if (v42)
      {
        v20 = [v17 serviceGroup];
        v21 = [v20 objectID];
        v45 = @"applicationData";
        v22 = MEMORY[0x277CBEA60];
        v23 = &v45;
        goto LABEL_17;
      }

      v24 = objc_autoreleasePoolPush();
      v25 = objc_opt_class();
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v52 = v27;
        v53 = 2114;
        v54 = v10;
        v29 = "%{public}@Failed to determine app data container for object with objectID %{public}@";
        v30 = v26;
        v31 = 22;
LABEL_9:
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, v29, buf, v31);
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = objc_opt_class();
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v28 = @"not found";
        *buf = 138543874;
        v52 = v27;
        if (v18)
        {
          v28 = v18;
        }

        v53 = 2114;
        v54 = v10;
        v55 = 2114;
        v56 = v28;
        v29 = "%{public}@Failed to fetch object with objectID %{public}@: %{public}@";
        v30 = v26;
        v31 = 32;
        goto LABEL_9;
      }
    }

    objc_autoreleasePoolPop(v24);
LABEL_18:
  }

  v36 = *MEMORY[0x277D85DE8];
  return 1;
}

@end