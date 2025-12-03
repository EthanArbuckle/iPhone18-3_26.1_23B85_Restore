@interface HMDMediaPlaybackActionModel
+ (id)properties;
- (BOOL)validForStorage;
- (id)_profilesFromManagedObject:(id)object;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info;
- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context;
- (id)dependentUUIDs;
- (id)validate;
- (void)loadModelWithActionInformation:(id)information;
@end

@implementation HMDMediaPlaybackActionModel

- (id)dependentUUIDs
{
  v32 = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = HMDMediaPlaybackActionModel;
  dependentUUIDs = [(HMDBackingStoreModelObject *)&v29 dependentUUIDs];
  v4 = [dependentUUIDs mutableCopy];

  parentUUID = [(HMDBackingStoreModelObject *)self parentUUID];

  if (parentUUID)
  {
    parentUUID2 = [(HMDBackingStoreModelObject *)self parentUUID];
    [v4 addObject:parentUUID2];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  accessories = [(HMDMediaPlaybackActionModel *)self accessories];
  v8 = [accessories countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(accessories);
        }

        v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v25 + 1) + 8 * i)];
        [v4 addObject:v12];
      }

      v9 = [accessories countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v9);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  services = [(HMDMediaPlaybackActionModel *)self services];
  v14 = [services countByEnumeratingWithState:&v21 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(services);
        }

        v18 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v21 + 1) + 8 * j)];
        [v4 addObject:v18];
      }

      v15 = [services countByEnumeratingWithState:&v21 objects:v30 count:16];
    }

    while (v15);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)validate
{
  profiles = [(HMDMediaPlaybackActionModel *)self profiles];
  state = [(HMDMediaPlaybackActionModel *)self state];
  integerValue = [state integerValue];
  volume = [(HMDMediaPlaybackActionModel *)self volume];
  v7 = [HMDMediaPlaybackAction isPlaybackActionValidWithProfiles:profiles state:integerValue volume:volume];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  }

  return v8;
}

- (BOOL)validForStorage
{
  profiles = [(HMDMediaPlaybackActionModel *)self profiles];
  if ([profiles count])
  {
    accessories = [(HMDMediaPlaybackActionModel *)self accessories];
    if ([accessories count])
    {
      state = [(HMDMediaPlaybackActionModel *)self state];
      if ([state integerValue])
      {
        v6 = 1;
      }

      else
      {
        volume = [(HMDMediaPlaybackActionModel *)self volume];
        if (volume)
        {
          v6 = 1;
        }

        else
        {
          encodedPlaybackArchive = [(HMDMediaPlaybackActionModel *)self encodedPlaybackArchive];
          v6 = encodedPlaybackArchive != 0;
        }
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)loadModelWithActionInformation:(id)information
{
  informationCopy = information;
  v11.receiver = self;
  v11.super_class = HMDMediaPlaybackActionModel;
  [(HMDActionModel *)&v11 loadModelWithActionInformation:informationCopy];
  v5 = [informationCopy hmf_numberForKey:*MEMORY[0x277CD08B0]];
  [(HMDMediaPlaybackActionModel *)self setState:v5];

  v6 = [informationCopy hmf_numberForKey:*MEMORY[0x277CD08C0]];
  [(HMDMediaPlaybackActionModel *)self setVolume:v6];

  v7 = [informationCopy hmf_arrayForKey:*MEMORY[0x277CD08A0]];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEB98] setWithArray:v7];
    [(HMDMediaPlaybackActionModel *)self setProfiles:v8];
  }

  v9 = [informationCopy hmf_dataForKey:*MEMORY[0x277CD0890]];
  if (v9)
  {
    v10 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:0];
    if (v10)
    {
      [(HMDMediaPlaybackActionModel *)self setEncodedPlaybackArchive:v10];
    }
  }
}

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__HMDMediaPlaybackActionModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (properties_onceToken_259207 != -1)
  {
    dispatch_once(&properties_onceToken_259207, block);
  }

  v2 = properties__properties_259208;

  return v2;
}

void __41__HMDMediaPlaybackActionModel_properties__block_invoke(uint64_t a1)
{
  v24[6] = *MEMORY[0x277D85DE8];
  v19.receiver = *(a1 + 32);
  v19.super_class = &OBJC_METACLASS___HMDMediaPlaybackActionModel;
  v1 = objc_msgSendSuper2(&v19, sel_properties);
  v2 = [v1 mutableCopy];
  v3 = properties__properties_259208;
  properties__properties_259208 = v2;

  v18 = properties__properties_259208;
  v23[0] = @"accessories";
  v4 = objc_opt_class();
  v22 = objc_opt_class();
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:v4 additionalDecodeClasses:v17];
  v24[0] = v5;
  v23[1] = @"state";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v24[1] = v6;
  v23[2] = @"volume";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v24[2] = v7;
  v23[3] = @"profiles";
  v8 = objc_opt_class();
  v21 = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  v10 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:v8 additionalDecodeClasses:v9];
  v24[3] = v10;
  v23[4] = @"encodedPlaybackArchive";
  v11 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v24[4] = v11;
  v23[5] = @"services";
  v12 = objc_opt_class();
  v20 = objc_opt_class();
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  v14 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:v12 additionalDecodeClasses:v13];
  v24[5] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:6];
  [v18 addEntriesFromDictionary:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context
{
  propertyCopy = property;
  fieldCopy = field;
  contextCopy = context;
  if ([fieldCopy isEqualToString:@"accessories_"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"accessories"])
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x3032000000;
      v21 = __Block_byref_object_copy__261886;
      v22 = __Block_byref_object_dispose__261887;
      v11 = MEMORY[0x277CBEB58];
      accessories = [(HMDMediaPlaybackActionModel *)self accessories];
      v23 = [v11 setWithCapacity:{objc_msgSend(accessories, "count")}];

      accessories2 = [(HMDMediaPlaybackActionModel *)self accessories];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __96__HMDMediaPlaybackActionModel_CoreData__cd_generateValueForProperty_managedObjectField_context___block_invoke;
      v17[3] = &unk_278687248;
      v17[4] = self;
      v17[5] = &v18;
      [accessories2 hmf_enumerateWithAutoreleasePoolUsingBlock:v17];

      v14 = v19[5];
      _Block_object_dispose(&v18, 8);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = HMDMediaPlaybackActionModel;
    v14 = [(HMDBackingStoreModelObject *)&v16 cd_generateValueForProperty:propertyCopy managedObjectField:fieldCopy context:contextCopy];
  }

  return v14;
}

void __96__HMDMediaPlaybackActionModel_CoreData__cd_generateValueForProperty_managedObjectField_context___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [HMDAccessoryTransaction cd_getMKFAccessoryFromAccessoryUUID:v3];
  if (v4)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v4];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_FAULT, "%{public}@The found NSManagedObject is not of type MKFAccessory", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_profilesFromManagedObject:(id)object
{
  v3 = MEMORY[0x277CBEB58];
  objectCopy = object;
  accessories = [objectCopy accessories];
  v6 = [v3 setWithCapacity:{objc_msgSend(accessories, "count")}];

  accessories2 = [objectCopy accessories];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__HMDMediaPlaybackActionModel_CoreData___profilesFromManagedObject___block_invoke;
  v11[3] = &unk_278687220;
  v12 = v6;
  v8 = v6;
  [accessories2 hmf_enumerateWithAutoreleasePoolUsingBlock:v11];

  v9 = [v8 copy];

  return v9;
}

void __68__HMDMediaPlaybackActionModel_CoreData___profilesFromManagedObject___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v5 = [a2 modelID];
  v3 = [HMDMediaProfile uniqueIdentifierFromAccessoryUUID:v5];
  v4 = [v3 UUIDString];
  [v2 addObject:v4];
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info
{
  objectCopy = object;
  fieldCopy = field;
  infoCopy = info;
  if ([fieldCopy isEqualToString:@"accessories"])
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__261886;
    v23 = __Block_byref_object_dispose__261887;
    v11 = MEMORY[0x277CBEB58];
    accessories = [objectCopy accessories];
    v24 = [v11 setWithCapacity:{objc_msgSend(accessories, "count")}];

    accessories2 = [objectCopy accessories];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __121__HMDMediaPlaybackActionModel_CoreData__cd_generateValueForModelObjectFromManagedObject_modelObjectField_modelFieldInfo___block_invoke;
    v18[3] = &unk_2786871F8;
    v18[4] = &v19;
    [accessories2 hmf_enumerateWithAutoreleasePoolUsingBlock:v18];

    v14 = v20[5];
    _Block_object_dispose(&v19, 8);
  }

  else
  {
    if ([fieldCopy isEqualToString:@"profiles"])
    {
      v15 = [(HMDMediaPlaybackActionModel *)self _profilesFromManagedObject:objectCopy];
    }

    else
    {
      v17.receiver = self;
      v17.super_class = HMDMediaPlaybackActionModel;
      v15 = [(HMDBackingStoreModelObject *)&v17 cd_generateValueForModelObjectFromManagedObject:objectCopy modelObjectField:fieldCopy modelFieldInfo:infoCopy];
    }

    v14 = v15;
  }

  return v14;
}

void __121__HMDMediaPlaybackActionModel_CoreData__cd_generateValueForModelObjectFromManagedObject_modelObjectField_modelFieldInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [a2 modelID];
  v3 = [v4 UUIDString];
  [v2 addObject:v3];
}

@end