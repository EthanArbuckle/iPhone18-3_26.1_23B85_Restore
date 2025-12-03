@interface HMDZoneModel
+ (id)properties;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info;
- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context;
- (id)dependentUUIDs;
@end

@implementation HMDZoneModel

- (id)dependentUUIDs
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB58];
  roomUUIDs = [(HMDZoneModel *)self roomUUIDs];
  v5 = [v3 setWithCapacity:{objc_msgSend(roomUUIDs, "count") + 1}];

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
  roomUUIDs2 = [(HMDZoneModel *)self roomUUIDs];
  v9 = [roomUUIDs2 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(roomUUIDs2);
        }

        v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v16 + 1) + 8 * i)];
        [v5 addObject:v13];
      }

      v10 = [roomUUIDs2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)properties
{
  if (properties_onceToken_105853 != -1)
  {
    dispatch_once(&properties_onceToken_105853, &__block_literal_global_105854);
  }

  v3 = properties__properties_105855;

  return v3;
}

void __26__HMDZoneModel_properties__block_invoke()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"name";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v5[1] = @"roomUUIDs";
  v6[0] = v0;
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = properties__properties_105855;
  properties__properties_105855 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context
{
  propertyCopy = property;
  fieldCopy = field;
  contextCopy = context;
  if ([fieldCopy isEqualToString:@"rooms_"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"roomUUIDs"])
    {
      roomUUIDs = [(HMDZoneModel *)self roomUUIDs];
      v12 = [HMDBackingStore cdlsFetchManagedObjectsWithUUIDStrings:roomUUIDs ofManagedObjectType:objc_opt_class()];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = HMDZoneModel;
    v12 = [(HMDBackingStoreModelObject *)&v14 cd_generateValueForProperty:propertyCopy managedObjectField:fieldCopy context:contextCopy];
  }

  return v12;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info
{
  fieldCopy = field;
  infoCopy = info;
  objectCopy = object;
  if ([fieldCopy isEqualToString:@"roomUUIDs"])
  {
    rooms = [objectCopy rooms];

    v12 = [HMDBackingStore cdlsModelIDStringsForManagedObjects:rooms];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = HMDZoneModel;
    v12 = [(HMDBackingStoreModelObject *)&v14 cd_generateValueForModelObjectFromManagedObject:objectCopy modelObjectField:fieldCopy modelFieldInfo:infoCopy];
  }

  return v12;
}

@end