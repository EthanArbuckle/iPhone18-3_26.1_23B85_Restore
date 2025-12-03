@interface HMDTriggerModel
+ (id)properties;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info;
- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context;
- (id)createPayload;
- (id)dependentUUIDs;
@end

@implementation HMDTriggerModel

- (id)dependentUUIDs
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB58];
  currentActionSets = [(HMDTriggerModel *)self currentActionSets];
  v5 = [v3 setWithCapacity:{objc_msgSend(currentActionSets, "count") + 1}];

  parentUUID = [(HMDBackingStoreModelObject *)self parentUUID];

  if (parentUUID)
  {
    parentUUID2 = [(HMDBackingStoreModelObject *)self parentUUID];
    [v5 addObject:parentUUID2];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  currentActionSets2 = [(HMDTriggerModel *)self currentActionSets];
  v9 = [currentActionSets2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(currentActionSets2);
        }

        v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v16 + 1) + 8 * i)];
        [v5 addObject:v13];
      }

      v10 = [currentActionSets2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)createPayload
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  uuid = [(HMDBackingStoreModelObject *)self uuid];
  uUIDString = [uuid UUIDString];
  [dictionary setObject:uUIDString forKeyedSubscript:*MEMORY[0x277CD2768]];

  name = [(HMDTriggerModel *)self name];
  [dictionary setObject:name forKeyedSubscript:*MEMORY[0x277CD2758]];

  configuredName = [(HMDTriggerModel *)self configuredName];
  [dictionary setObject:configuredName forKeyedSubscript:*MEMORY[0x277CD1250]];

  active = [(HMDTriggerModel *)self active];
  [dictionary setObject:active forKeyedSubscript:*MEMORY[0x277CD2730]];

  autoDelete = [(HMDTriggerModel *)self autoDelete];
  [dictionary setObject:autoDelete forKeyedSubscript:*MEMORY[0x277CD1260]];

  currentActionSets = [(HMDTriggerModel *)self currentActionSets];
  [dictionary setObject:currentActionSets forKeyedSubscript:*MEMORY[0x277CD2728]];

  v11 = [dictionary copy];

  return v11;
}

+ (id)properties
{
  if (properties_onceToken != -1)
  {
    dispatch_once(&properties_onceToken, &__block_literal_global_368);
  }

  v3 = properties__properties;

  return v3;
}

void __29__HMDTriggerModel_properties__block_invoke()
{
  v12[8] = *MEMORY[0x277D85DE8];
  v11[0] = @"name";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[0] = v0;
  v11[1] = @"configuredName";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[1] = v1;
  v11[2] = @"currentActionSets";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[2] = v2;
  v11[3] = @"active";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[3] = v3;
  v11[4] = @"mostRecentFireDate";
  v4 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[4] = v4;
  v11[5] = @"owner";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[5] = v5;
  v11[6] = @"owningDevice";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[6] = v6;
  v11[7] = @"autoDelete";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[7] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:8];
  v9 = properties__properties;
  properties__properties = v8;

  v10 = *MEMORY[0x277D85DE8];
}

- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context
{
  v34 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  fieldCopy = field;
  contextCopy = context;
  if ([fieldCopy isEqualToString:@"actionSets_"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"currentActionSets"])
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v31 = __Block_byref_object_copy__38060;
      v32 = __Block_byref_object_dispose__38061;
      v11 = MEMORY[0x277CBEB58];
      currentActionSets = [(HMDTriggerModel *)self currentActionSets];
      v33 = [v11 setWithCapacity:{objc_msgSend(currentActionSets, "count")}];

      currentActionSets2 = [(HMDTriggerModel *)self currentActionSets];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __84__HMDTriggerModel_CoreData__cd_generateValueForProperty_managedObjectField_context___block_invoke;
      v29[3] = &unk_278686E68;
      v29[4] = buf;
      [currentActionSets2 hmf_enumerateWithAutoreleasePoolUsingBlock:v29];

      owner = [*(*&buf[8] + 40) copy];
      _Block_object_dispose(buf, 8);
    }

    else
    {
      owner = 0;
    }
  }

  else if ([fieldCopy isEqualToString:@"owner"])
  {
    owner = [(HMDTriggerModel *)self owner];

    if (owner)
    {
      owner2 = [(HMDTriggerModel *)self owner];
      uuid = [owner2 uuid];
      v28 = 0;
      owner = [HMDBackingStore cdlsFetchManagedObjectWithUUID:uuid ofManagedObjectType:objc_opt_class() error:&v28];
      v17 = v28;

      if (owner)
      {
        v18 = owner;
      }

      else
      {
        context = objc_autoreleasePoolPush();
        selfCopy = self;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = HMFGetLogIdentifier();
          owner3 = [(HMDTriggerModel *)selfCopy owner];
          uuid2 = [owner3 uuid];
          *buf = 138543874;
          *&buf[4] = v21;
          *&buf[12] = 2112;
          *&buf[14] = uuid2;
          *&buf[22] = 2112;
          v31 = v17;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unable to find MKFUser with UUID %@: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(context);
      }
    }
  }

  else
  {
    v27.receiver = self;
    v27.super_class = HMDTriggerModel;
    owner = [(HMDBackingStoreModelObject *)&v27 cd_generateValueForProperty:propertyCopy managedObjectField:fieldCopy context:contextCopy];
  }

  v24 = *MEMORY[0x277D85DE8];

  return owner;
}

void __84__HMDTriggerModel_CoreData__cd_generateValueForProperty_managedObjectField_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [objc_opt_class() cd_getMKFActionSetFromActionSetUUID:v3];

  v4 = v5;
  if (v5)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
    v4 = v5;
  }
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info
{
  objectCopy = object;
  fieldCopy = field;
  infoCopy = info;
  if ([fieldCopy isEqualToString:@"currentActionSets"])
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__38060;
    v23 = __Block_byref_object_dispose__38061;
    v11 = MEMORY[0x277CBEB18];
    actionSets = [objectCopy actionSets];
    v24 = [v11 arrayWithCapacity:{objc_msgSend(actionSets, "count")}];

    actionSets2 = [objectCopy actionSets];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __109__HMDTriggerModel_CoreData__cd_generateValueForModelObjectFromManagedObject_modelObjectField_modelFieldInfo___block_invoke;
    v18[3] = &unk_278672828;
    v18[4] = &v19;
    [actionSets2 hmf_enumerateWithAutoreleasePoolUsingBlock:v18];

    owner = [v20[5] copy];
    _Block_object_dispose(&v19, 8);
  }

  else if ([fieldCopy isEqualToString:@"owner"])
  {
    owner = [objectCopy owner];

    if (owner)
    {
      owner2 = [objectCopy owner];
      owner = [HMDUserModel cd_getHMDUserFromMKFUser:owner2];
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = HMDTriggerModel;
    owner = [(HMDBackingStoreModelObject *)&v17 cd_generateValueForModelObjectFromManagedObject:objectCopy modelObjectField:fieldCopy modelFieldInfo:infoCopy];
  }

  return owner;
}

void __109__HMDTriggerModel_CoreData__cd_generateValueForModelObjectFromManagedObject_modelObjectField_modelFieldInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [a2 modelID];
  v3 = [v4 UUIDString];
  [v2 addObject:v3];
}

@end