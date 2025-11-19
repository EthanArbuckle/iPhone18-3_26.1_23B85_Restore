@interface HMDDurationEventModel
+ (id)eventModelWithDictionary:(id)a3 home:(id)a4 eventTriggerUUID:(id)a5 message:(id)a6;
+ (id)properties;
@end

@implementation HMDDurationEventModel

+ (id)eventModelWithDictionary:(id)a3 home:(id)a4 eventTriggerUUID:(id)a5 message:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [HMDEventModel eventModelWithDictionary:v12 home:v11 eventTriggerUUID:v10 className:objc_opt_class() message:v9];

  v14 = [v12 hmf_numberForKey:*MEMORY[0x277CD2280]];

  [v13 setDuration:v14];

  return v13;
}

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HMDDurationEventModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (properties_onceToken_263743 != -1)
  {
    dispatch_once(&properties_onceToken_263743, block);
  }

  v2 = properties__properties_263744;

  return v2;
}

void __35__HMDDurationEventModel_properties__block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB38];
  v9.receiver = *(a1 + 32);
  v9.super_class = &OBJC_METACLASS___HMDDurationEventModel;
  v2 = objc_msgSendSuper2(&v9, sel_properties);
  v3 = [v1 dictionaryWithDictionary:v2];
  v4 = properties__properties_263744;
  properties__properties_263744 = v3;

  v5 = properties__properties_263744;
  v10 = @"duration";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v5 addEntriesFromDictionary:v7];

  v8 = *MEMORY[0x277D85DE8];
}

@end