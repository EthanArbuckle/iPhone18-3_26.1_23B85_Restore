@interface HMDPresenceEventModel
+ (id)eventModelWithDictionary:(id)dictionary home:(id)home eventTriggerUUID:(id)d message:(id)message;
+ (id)properties;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info;
- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context;
@end

@implementation HMDPresenceEventModel

- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context
{
  propertyCopy = property;
  fieldCopy = field;
  contextCopy = context;
  if ([fieldCopy isEqualToString:@"users_"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"users"])
    {
      goto LABEL_6;
    }

LABEL_7:
    v12 = 0;
    goto LABEL_9;
  }

  if ([fieldCopy isEqualToString:@"guests_"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"users"])
    {
LABEL_6:
      users = [(HMDPresenceEventModel *)self users];
      v12 = [HMDBackingStore cdlsFetchManagedObjectsWithUUIDStrings:users ofManagedObjectType:objc_opt_class()];

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v14.receiver = self;
  v14.super_class = HMDPresenceEventModel;
  v12 = [(HMDBackingStoreModelObject *)&v14 cd_generateValueForProperty:propertyCopy managedObjectField:fieldCopy context:contextCopy];
LABEL_9:

  return v12;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info
{
  objectCopy = object;
  fieldCopy = field;
  infoCopy = info;
  if ([fieldCopy isEqualToString:@"users"])
  {
    array = [MEMORY[0x277CBEB18] array];
    users = [objectCopy users];
    v13 = [HMDBackingStore cdlsModelIDStringsForManagedObjects:users];

    [array addObjectsFromArray:v13];
    guests = [objectCopy guests];
    v15 = [HMDBackingStore cdlsModelIDStringsForManagedObjects:guests];

    [array addObjectsFromArray:v15];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = HMDPresenceEventModel;
    array = [(HMDBackingStoreModelObject *)&v17 cd_generateValueForModelObjectFromManagedObject:objectCopy modelObjectField:fieldCopy modelFieldInfo:infoCopy];
  }

  return array;
}

+ (id)eventModelWithDictionary:(id)dictionary home:(id)home eventTriggerUUID:(id)d message:(id)message
{
  v41[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  homeCopy = home;
  dCopy = d;
  messageCopy = message;
  v14 = [HMDEventModel eventModelWithDictionary:dictionaryCopy home:homeCopy eventTriggerUUID:dCopy className:objc_opt_class() message:messageCopy];
  v15 = [dictionaryCopy hmf_stringForKey:*MEMORY[0x277CD24C8]];
  [v14 setPresenceType:v15];

  presenceType = [v14 presenceType];
  v17 = [presenceType isEqualToString:*MEMORY[0x277CD0C50]];

  if (v17)
  {
    v18 = MEMORY[0x277CD0C68];
  }

  else
  {
    presenceType2 = [v14 presenceType];
    v20 = [presenceType2 isEqualToString:*MEMORY[0x277CD0C58]];

    if ((v20 & 1) == 0)
    {
      v31 = [dictionaryCopy hmf_arrayForKey:*MEMORY[0x277CD24D0]];
      [v14 setUsers:v31];

      goto LABEL_14;
    }

    v18 = MEMORY[0x277CD0C70];
  }

  [v14 setPresenceType:*v18];
  v36 = dCopy;
  if (messageCopy)
  {
    [messageCopy userForHome:homeCopy];
  }

  else
  {
    [homeCopy currentUser];
  }
  v21 = ;
  v22 = v21;
  if (v21)
  {
    uuid = [v21 uuid];
    uUIDString = [uuid UUIDString];
    v41[0] = uUIDString;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
    [v14 setUsers:v25];
  }

  v26 = objc_autoreleasePoolPush();
  selfCopy = self;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = HMFGetLogIdentifier();
    users = [v14 users];
    *buf = 138543618;
    v38 = v29;
    v39 = 2112;
    v40 = users;
    _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Populated tracked users %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v26);
  dCopy = v36;
LABEL_14:
  v32 = [MEMORY[0x277CD1D28] activationGranularityWithDict:dictionaryCopy];
  number = [v32 number];
  [v14 setActivation:number];

  v34 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HMDPresenceEventModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (properties_onceToken_45209 != -1)
  {
    dispatch_once(&properties_onceToken_45209, block);
  }

  v2 = properties__properties_45210;

  return v2;
}

void __35__HMDPresenceEventModel_properties__block_invoke(uint64_t a1)
{
  v13[3] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB38];
  v11.receiver = *(a1 + 32);
  v11.super_class = &OBJC_METACLASS___HMDPresenceEventModel;
  v2 = objc_msgSendSuper2(&v11, sel_properties);
  v3 = [v1 dictionaryWithDictionary:v2];
  v4 = properties__properties_45210;
  properties__properties_45210 = v3;

  v5 = properties__properties_45210;
  v12[0] = @"presenceType";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v13[0] = v6;
  v12[1] = @"activation";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v13[1] = v7;
  v12[2] = @"users";
  v8 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v13[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  [v5 addEntriesFromDictionary:v9];

  v10 = *MEMORY[0x277D85DE8];
}

@end