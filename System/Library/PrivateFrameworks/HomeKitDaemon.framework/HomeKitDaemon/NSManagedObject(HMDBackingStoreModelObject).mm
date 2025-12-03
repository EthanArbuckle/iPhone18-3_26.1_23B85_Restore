@interface NSManagedObject(HMDBackingStoreModelObject)
- (id)hmd_lastKnownValueForKey:()HMDBackingStoreModelObject;
- (id)hmd_modelID;
- (id)hmd_modelsWithChangeType:()HMDBackingStoreModelObject detached:createManagedObject:error:;
- (id)hmd_parentModelID;
@end

@implementation NSManagedObject(HMDBackingStoreModelObject)

- (id)hmd_modelsWithChangeType:()HMDBackingStoreModelObject detached:createManagedObject:error:
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = objc_opt_class();
  if ((HMDManagedObjectClassIsBSORepresentable(v11) & 1) == 0)
  {
    _HMFPreconditionFailure();
  }

  v12 = [objc_alloc(objc_msgSend(objc_opt_class() "cd_modelClass"))];
  if ((a5 & 1) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Since this managed object was created without a managed object context setting model.managedObject to nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    [v12 setManagedObject:0];
  }

  if (v12)
  {
    v20 = v12;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)hmd_parentModelID
{
  v2 = objc_opt_class();
  if (HMDManagedObjectClassIsBSORepresentable(v2))
  {
    v3 = [objc_msgSend(objc_opt_class() "cd_modelClass")];
    if (v3)
    {
      v4 = [self hmd_lastKnownValueForKey:v3];
      hmd_modelID = [v4 hmd_modelID];
    }

    else
    {
      hmd_modelID = [MEMORY[0x277CCAD78] hmf_zeroUUID];
    }

    return hmd_modelID;
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    return [(NSManagedObject(HMDBackingStoreModelObject) *)v7 hmd_modelID];
  }
}

- (id)hmd_modelID
{
  v2 = objc_opt_class();
  if (HMDManagedObjectClassIsBSORepresentable(v2))
  {
    selfCopy = self;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = selfCopy;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

    v6 = [v5 hmd_lastKnownValueForKey:@"modelID"];

    return v6;
  }

  else
  {
    v8 = _HMFPreconditionFailure();
    return [NSManagedObject(HMDBackingStoreModelObject) hmd_lastKnownValueForKey:v8];
  }
}

- (id)hmd_lastKnownValueForKey:()HMDBackingStoreModelObject
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([self isDeleted])
  {
    v13[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v6 = [self committedValuesForKeys:v5];
    v7 = [v6 objectForKeyedSubscript:v4];
    v8 = v7;
    if (*MEMORY[0x277CBEEE8] == v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = v7;
    }

    v10 = v9;
  }

  else
  {
    v10 = [self valueForKey:v4];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end