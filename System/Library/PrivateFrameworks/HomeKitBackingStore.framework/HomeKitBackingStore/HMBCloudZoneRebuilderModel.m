@interface HMBCloudZoneRebuilderModel
+ (NSUUID)sentinelUUID;
+ (id)hmbProperties;
- (HMBCloudZoneRebuilderModel)init;
@end

@implementation HMBCloudZoneRebuilderModel

- (HMBCloudZoneRebuilderModel)init
{
  v3 = [objc_opt_class() sentinelUUID];
  v4 = [objc_opt_class() sentinelUUID];
  v7.receiver = self;
  v7.super_class = HMBCloudZoneRebuilderModel;
  v5 = [(HMBModel *)&v7 initWithModelID:v3 parentModelID:v4];

  return v5;
}

+ (NSUUID)sentinelUUID
{
  if (sentinelUUID_onceToken != -1)
  {
    dispatch_once(&sentinelUUID_onceToken, &__block_literal_global_12_3012);
  }

  v3 = sentinelUUID__sentinelUUID;

  return v3;
}

uint64_t __42__HMBCloudZoneRebuilderModel_sentinelUUID__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"4C636B6B-9784-4D02-9E47-5A5259B3BAF2"];
  v1 = sentinelUUID__sentinelUUID;
  sentinelUUID__sentinelUUID = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_3018 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_3018, &__block_literal_global_3019);
  }

  v3 = hmbProperties__properties_3020;

  return v3;
}

void __43__HMBCloudZoneRebuilderModel_hmbProperties__block_invoke()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"uniqueToken";
  v0 = [HMBModelField fieldWithClass:objc_opt_class()];
  v5[1] = @"hasCompleted";
  v6[0] = v0;
  v1 = [HMBModelField fieldWithClass:objc_opt_class()];
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = hmbProperties__properties_3020;
  hmbProperties__properties_3020 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

@end