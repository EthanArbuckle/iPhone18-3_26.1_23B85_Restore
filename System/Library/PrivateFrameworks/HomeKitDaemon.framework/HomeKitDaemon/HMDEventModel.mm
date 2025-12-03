@interface HMDEventModel
+ (id)eventModelWithDictionary:(id)dictionary home:(id)home eventTriggerUUID:(id)d className:(Class)name message:(id)message;
+ (id)properties;
@end

@implementation HMDEventModel

+ (id)eventModelWithDictionary:(id)dictionary home:(id)home eventTriggerUUID:(id)d className:(Class)name message:(id)message
{
  v9 = *MEMORY[0x277CD2340];
  dCopy = d;
  dictionaryCopy = dictionary;
  v12 = [dictionaryCopy hmf_UUIDForKey:v9];
  v13 = v12;
  if (v12)
  {
    uUID = v12;
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
  }

  v15 = uUID;

  v16 = [[name alloc] initWithObjectChangeType:1 uuid:v15 parentUUID:dCopy];
  v17 = [dictionaryCopy hmf_numberForKey:*MEMORY[0x277CD22A0]];

  [v16 setEndEvent:v17];

  return v16;
}

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__HMDEventModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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