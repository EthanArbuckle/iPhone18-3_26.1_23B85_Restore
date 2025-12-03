@interface HMDCoreDataCloudTransformableLocalApplicationData
+ (BOOL)exportUpdateWithObjectID:(id)d updatedProperties:(id)properties additionalUpdates:(id)updates context:(id)context;
@end

@implementation HMDCoreDataCloudTransformableLocalApplicationData

+ (BOOL)exportUpdateWithObjectID:(id)d updatedProperties:(id)properties additionalUpdates:(id)updates context:(id)context
{
  v57 = *MEMORY[0x277D85DE8];
  dCopy = d;
  propertiesCopy = properties;
  updatesCopy = updates;
  contextCopy = context;
  entity = [dCopy entity];
  v15 = +[_MKFApplicationData entity];
  v16 = [entity isKindOfEntity:v15];

  if (v16)
  {
    v44 = 0;
    v17 = [contextCopy existingObjectWithID:dCopy error:&v44];
    v18 = v44;
    if (v17)
    {
      home = [v17 home];

      if (home)
      {
        home2 = [v17 home];
        objectID = [home2 objectID];
        v50 = @"applicationData";
        v22 = MEMORY[0x277CBEA60];
        v23 = &v50;
LABEL_17:
        v35 = [v22 arrayWithObjects:v23 count:1];
        [self addToUpdates:updatesCopy objectID:objectID properties:v35];

        goto LABEL_18;
      }

      actionSet = [v17 actionSet];

      if (actionSet)
      {
        home2 = [v17 actionSet];
        objectID = [home2 objectID];
        v49 = @"applicationData";
        v22 = MEMORY[0x277CBEA60];
        v23 = &v49;
        goto LABEL_17;
      }

      room = [v17 room];

      if (room)
      {
        home2 = [v17 room];
        objectID = [home2 objectID];
        v48 = @"applicationData";
        v22 = MEMORY[0x277CBEA60];
        v23 = &v48;
        goto LABEL_17;
      }

      accessory = [v17 accessory];

      if (accessory)
      {
        home2 = [v17 accessory];
        objectID = [home2 objectID];
        v47 = @"applicationData";
        v22 = MEMORY[0x277CBEA60];
        v23 = &v47;
        goto LABEL_17;
      }

      service = [v17 service];

      if (service)
      {
        service2 = [v17 service];
        accessory2 = [service2 accessory];
        objectID2 = [accessory2 objectID];
        v46 = @"services_";
        v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
        [self addToUpdates:updatesCopy objectID:objectID2 properties:v41];

        goto LABEL_18;
      }

      serviceGroup = [v17 serviceGroup];

      if (serviceGroup)
      {
        home2 = [v17 serviceGroup];
        objectID = [home2 objectID];
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
        v54 = dCopy;
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
        v54 = dCopy;
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