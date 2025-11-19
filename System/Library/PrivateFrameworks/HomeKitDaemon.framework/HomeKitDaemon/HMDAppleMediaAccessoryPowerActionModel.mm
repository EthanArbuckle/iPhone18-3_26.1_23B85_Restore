@interface HMDAppleMediaAccessoryPowerActionModel
+ (id)properties;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5;
- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5;
- (void)loadModelWithActionInformation:(id)a3;
@end

@implementation HMDAppleMediaAccessoryPowerActionModel

- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:@"accessory"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"accessoryUUID"])
    {
      v11 = [(HMDAppleMediaAccessoryPowerActionModel *)self accessoryUUID];
      v12 = [HMDBackingStore cdlsFetchManagedObjectWithUUID:v11 ofManagedObjectType:objc_opt_class() error:0];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = HMDAppleMediaAccessoryPowerActionModel;
    v12 = [(HMDBackingStoreModelObject *)&v14 cd_generateValueForProperty:v8 managedObjectField:v9 context:v10];
  }

  return v12;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  if ([v8 isEqualToString:@"accessoryUUID"])
  {
    v11 = [v10 accessory];

    v12 = [v11 modelID];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = HMDAppleMediaAccessoryPowerActionModel;
    v12 = [(HMDBackingStoreModelObject *)&v14 cd_generateValueForModelObjectFromManagedObject:v10 modelObjectField:v8 modelFieldInfo:v9];
  }

  return v12;
}

- (void)loadModelWithActionInformation:(id)a3
{
  v7.receiver = self;
  v7.super_class = HMDAppleMediaAccessoryPowerActionModel;
  v4 = a3;
  [(HMDActionModel *)&v7 loadModelWithActionInformation:v4];
  v5 = [v4 hmf_UUIDForKey:{*MEMORY[0x277CCF210], v7.receiver, v7.super_class}];
  [(HMDAppleMediaAccessoryPowerActionModel *)self setAccessoryUUID:v5];

  v6 = [v4 hmf_numberForKey:*MEMORY[0x277CCF220]];

  [(HMDAppleMediaAccessoryPowerActionModel *)self setTargetSleepWakeState:v6];
}

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HMDAppleMediaAccessoryPowerActionModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (properties_onceToken_247242 != -1)
  {
    dispatch_once(&properties_onceToken_247242, block);
  }

  v2 = properties__properties_247243;

  return v2;
}

void __52__HMDAppleMediaAccessoryPowerActionModel_properties__block_invoke(uint64_t a1)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v9.receiver = *(a1 + 32);
  v9.super_class = &OBJC_METACLASS___HMDAppleMediaAccessoryPowerActionModel;
  v1 = objc_msgSendSuper2(&v9, sel_properties);
  v2 = [v1 mutableCopy];
  v3 = properties__properties_247243;
  properties__properties_247243 = v2;

  v4 = properties__properties_247243;
  v10[0] = @"accessoryUUID";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v10[1] = @"targetSleepWakeState";
  v11[0] = v5;
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v4 addEntriesFromDictionary:v7];

  v8 = *MEMORY[0x277D85DE8];
}

@end