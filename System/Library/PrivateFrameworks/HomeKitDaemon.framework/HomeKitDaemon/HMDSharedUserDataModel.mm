@interface HMDSharedUserDataModel
+ (id)hmbProperties;
@end

@implementation HMDSharedUserDataModel

+ (id)hmbProperties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__HMDSharedUserDataModel_hmbProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (hmbProperties_onceToken_5 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_5, block);
  }

  v2 = hmbProperties__properties_6;

  return v2;
}

void __39__HMDSharedUserDataModel_hmbProperties__block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v10.receiver = *(a1 + 32);
  v10.super_class = &OBJC_METACLASS___HMDSharedUserDataModel;
  v1 = objc_msgSendSuper2(&v10, sel_hmbProperties);
  v2 = [v1 mutableCopy];
  v3 = hmbProperties__properties_6;
  hmbProperties__properties_6 = v2;

  v4 = hmbProperties__properties_6;
  v11[0] = @"assistantAccessControlModelUUID";
  v5 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v12[0] = v5;
  v11[1] = @"userListeningHistoryUpdateControlModelUUID";
  v6 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v12[1] = v6;
  v11[2] = @"mediaContentProfileAccessControlModelUUID";
  v7 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v12[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  [v4 addEntriesFromDictionary:v8];

  v9 = *MEMORY[0x277D85DE8];
}

@end