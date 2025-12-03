@interface HMDAccessorySettingEventsGenerated
+ (id)topicsForAccessoryUUID:(id)d homeUUID:(id)iD;
@end

@implementation HMDAccessorySettingEventsGenerated

+ (id)topicsForAccessoryUUID:(id)d homeUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__HMDAccessorySettingEventsGenerated_topicsForAccessoryUUID_homeUUID___block_invoke;
  v11[3] = &unk_27972E468;
  v12 = iDCopy;
  v13 = dCopy;
  v7 = dCopy;
  v8 = iDCopy;
  v9 = [&unk_286626DB8 na_map:v11];

  return v9;
}

void __70__HMDAccessorySettingEventsGenerated_topicsForAccessoryUUID_homeUUID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  JUMPOUT(0x259C01CC0);
}

@end