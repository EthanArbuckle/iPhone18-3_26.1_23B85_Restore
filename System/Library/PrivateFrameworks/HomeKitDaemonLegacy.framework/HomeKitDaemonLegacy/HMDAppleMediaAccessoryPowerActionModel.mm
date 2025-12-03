@interface HMDAppleMediaAccessoryPowerActionModel
+ (id)properties;
- (void)loadModelWithActionInformation:(id)information;
@end

@implementation HMDAppleMediaAccessoryPowerActionModel

- (void)loadModelWithActionInformation:(id)information
{
  v7.receiver = self;
  v7.super_class = HMDAppleMediaAccessoryPowerActionModel;
  informationCopy = information;
  [(HMDActionModel *)&v7 loadModelWithActionInformation:informationCopy];
  v5 = [informationCopy hmf_UUIDForKey:{*MEMORY[0x277CCF210], v7.receiver, v7.super_class}];
  [(HMDAppleMediaAccessoryPowerActionModel *)self setAccessoryUUID:v5];

  v6 = [informationCopy hmf_numberForKey:*MEMORY[0x277CCF220]];

  [(HMDAppleMediaAccessoryPowerActionModel *)self setTargetSleepWakeState:v6];
}

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HMDAppleMediaAccessoryPowerActionModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (properties_onceToken_40568 != -1)
  {
    dispatch_once(&properties_onceToken_40568, block);
  }

  v2 = properties__properties_40569;

  return v2;
}

void __52__HMDAppleMediaAccessoryPowerActionModel_properties__block_invoke(uint64_t a1)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v9.receiver = *(a1 + 32);
  v9.super_class = &OBJC_METACLASS___HMDAppleMediaAccessoryPowerActionModel;
  v1 = objc_msgSendSuper2(&v9, sel_properties);
  v2 = [v1 mutableCopy];
  v3 = properties__properties_40569;
  properties__properties_40569 = v2;

  v4 = properties__properties_40569;
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