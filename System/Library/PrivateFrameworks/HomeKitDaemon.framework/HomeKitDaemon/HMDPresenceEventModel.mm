@interface HMDPresenceEventModel
+ (id)eventModelWithDictionary:(id)a3 home:(id)a4 eventTriggerUUID:(id)a5 message:(id)a6;
+ (id)properties;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5;
- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5;
@end

@implementation HMDPresenceEventModel

- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:@"users_"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"users"])
    {
      goto LABEL_6;
    }

LABEL_7:
    v12 = 0;
    goto LABEL_9;
  }

  if ([v9 isEqualToString:@"guests_"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"users"])
    {
LABEL_6:
      v11 = [(HMDPresenceEventModel *)self users];
      v12 = [HMDBackingStore cdlsFetchManagedObjectsWithUUIDStrings:v11 ofManagedObjectType:objc_opt_class()];

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v14.receiver = self;
  v14.super_class = HMDPresenceEventModel;
  v12 = [(HMDBackingStoreModelObject *)&v14 cd_generateValueForProperty:v8 managedObjectField:v9 context:v10];
LABEL_9:

  return v12;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:@"users"])
  {
    v11 = [MEMORY[0x277CBEB18] array];
    v12 = [v8 users];
    v13 = [HMDBackingStore cdlsModelIDStringsForManagedObjects:v12];

    [v11 addObjectsFromArray:v13];
    v14 = [v8 guests];
    v15 = [HMDBackingStore cdlsModelIDStringsForManagedObjects:v14];

    [v11 addObjectsFromArray:v15];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = HMDPresenceEventModel;
    v11 = [(HMDBackingStoreModelObject *)&v17 cd_generateValueForModelObjectFromManagedObject:v8 modelObjectField:v9 modelFieldInfo:v10];
  }

  return v11;
}

+ (id)eventModelWithDictionary:(id)a3 home:(id)a4 eventTriggerUUID:(id)a5 message:(id)a6
{
  v41[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [HMDEventModel eventModelWithDictionary:v10 home:v11 eventTriggerUUID:v12 className:objc_opt_class() message:v13];
  v15 = [v10 hmf_stringForKey:*MEMORY[0x277CD24C8]];
  [v14 setPresenceType:v15];

  v16 = [v14 presenceType];
  v17 = [v16 isEqualToString:*MEMORY[0x277CD0C50]];

  if (v17)
  {
    v18 = MEMORY[0x277CD0C68];
  }

  else
  {
    v19 = [v14 presenceType];
    v20 = [v19 isEqualToString:*MEMORY[0x277CD0C58]];

    if ((v20 & 1) == 0)
    {
      v31 = [v10 hmf_arrayForKey:*MEMORY[0x277CD24D0]];
      [v14 setUsers:v31];

      goto LABEL_14;
    }

    v18 = MEMORY[0x277CD0C70];
  }

  [v14 setPresenceType:*v18];
  v36 = v12;
  if (v13)
  {
    [v13 userForHome:v11];
  }

  else
  {
    [v11 currentUser];
  }
  v21 = ;
  v22 = v21;
  if (v21)
  {
    v23 = [v21 uuid];
    v24 = [v23 UUIDString];
    v41[0] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
    [v14 setUsers:v25];
  }

  v26 = objc_autoreleasePoolPush();
  v27 = a1;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = HMFGetLogIdentifier();
    v30 = [v14 users];
    *buf = 138543618;
    v38 = v29;
    v39 = 2112;
    v40 = v30;
    _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Populated tracked users %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v26);
  v12 = v36;
LABEL_14:
  v32 = [MEMORY[0x277CD1D28] activationGranularityWithDict:v10];
  v33 = [v32 number];
  [v14 setActivation:v33];

  v34 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HMDPresenceEventModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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