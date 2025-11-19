@interface HMDAccessorySettingEventsGenerated
+ (id)topicsForAccessoryUUID:(id)a3 homeUUID:(id)a4;
@end

@implementation HMDAccessorySettingEventsGenerated

+ (id)topicsForAccessoryUUID:(id)a3 homeUUID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__HMDAccessorySettingEventsGenerated_topicsForAccessoryUUID_homeUUID___block_invoke;
  v11[3] = &unk_278680A10;
  v12 = v6;
  v13 = v5;
  v7 = v5;
  v8 = v6;
  v9 = [&unk_283E75530 na_map:v11];

  return v9;
}

void __70__HMDAccessorySettingEventsGenerated_topicsForAccessoryUUID_homeUUID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  JUMPOUT(0x22AAD2730);
}

@end