@interface HMDEventModel
+ (id)eventModelWithDictionary:(id)a3 home:(id)a4 eventTriggerUUID:(id)a5 className:(Class)a6 message:(id)a7;
+ (id)properties;
@end

@implementation HMDEventModel

+ (id)eventModelWithDictionary:(id)a3 home:(id)a4 eventTriggerUUID:(id)a5 className:(Class)a6 message:(id)a7
{
  v9 = *MEMORY[0x277CD2340];
  v10 = a5;
  v11 = a3;
  v12 = [v11 hmf_UUIDForKey:v9];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [MEMORY[0x277CCAD78] UUID];
  }

  v15 = v14;

  v16 = [[a6 alloc] initWithObjectChangeType:1 uuid:v15 parentUUID:v10];
  v17 = [v11 hmf_numberForKey:*MEMORY[0x277CD22A0]];

  [v16 setEndEvent:v17];

  return v16;
}

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__HMDEventModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (properties_onceToken_167997 != -1)
  {
    dispatch_once(&properties_onceToken_167997, block);
  }

  v2 = properties__properties_167998;

  return v2;
}

void __27__HMDEventModel_properties__block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB38];
  v9.receiver = *(a1 + 32);
  v9.super_class = &OBJC_METACLASS___HMDEventModel;
  v2 = objc_msgSendSuper2(&v9, sel_properties);
  v3 = [v1 dictionaryWithDictionary:v2];
  v4 = properties__properties_167998;
  properties__properties_167998 = v3;

  v5 = properties__properties_167998;
  v10 = @"endEvent";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v5 addEntriesFromDictionary:v7];

  v8 = *MEMORY[0x277D85DE8];
}

@end