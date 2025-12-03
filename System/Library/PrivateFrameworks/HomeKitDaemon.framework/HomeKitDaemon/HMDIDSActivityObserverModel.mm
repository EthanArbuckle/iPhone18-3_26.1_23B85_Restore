@interface HMDIDSActivityObserverModel
+ (id)hmbProperties;
+ (id)sentinelParentUUID;
- (HMDIDSActivityObserverModel)initWithModelID:(id)d;
@end

@implementation HMDIDSActivityObserverModel

- (HMDIDSActivityObserverModel)initWithModelID:(id)d
{
  dCopy = d;
  sentinelParentUUID = [objc_opt_class() sentinelParentUUID];
  v8.receiver = self;
  v8.super_class = HMDIDSActivityObserverModel;
  v6 = [(HMBModel *)&v8 initWithModelID:dCopy parentModelID:sentinelParentUUID];

  return v6;
}

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_268301 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_268301, &__block_literal_global_3_268302);
  }

  v3 = hmbProperties_properties_268303;

  return v3;
}

void __44__HMDIDSActivityObserverModel_hmbProperties__block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"pushToken";
  v0 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = hmbProperties_properties_268303;
  hmbProperties_properties_268303 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

+ (id)sentinelParentUUID
{
  if (sentinelParentUUID_onceToken_268311 != -1)
  {
    dispatch_once(&sentinelParentUUID_onceToken_268311, &__block_literal_global_268312);
  }

  v3 = sentinelParentUUID_sentinelParentUUID_268313;

  return v3;
}

void __49__HMDIDSActivityObserverModel_sentinelParentUUID__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"6E0AF7DC-15F3-4FC8-ACB2-B98338E4FE85"];
  v1 = sentinelParentUUID_sentinelParentUUID_268313;
  sentinelParentUUID_sentinelParentUUID_268313 = v0;
}

@end