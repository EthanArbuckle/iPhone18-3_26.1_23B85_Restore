@interface RPCompanionLinkClient(HMU_HomeKit)
- (id)hmu_devicesForUser:()HMU_HomeKit;
- (id)hmu_devicesInHome:()HMU_HomeKit;
@end

@implementation RPCompanionLinkClient(HMU_HomeKit)

- (id)hmu_devicesInHome:()HMU_HomeKit
{
  v4 = a3;
  v5 = [a1 activeDevices];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__RPCompanionLinkClient_HMU_HomeKit__hmu_devicesInHome___block_invoke;
  v9[3] = &unk_2797725D0;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_filter:v9];

  return v7;
}

- (id)hmu_devicesForUser:()HMU_HomeKit
{
  v4 = a3;
  v5 = [a1 activeDevices];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__RPCompanionLinkClient_HMU_HomeKit__hmu_devicesForUser___block_invoke;
  v9[3] = &unk_2797725D0;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_filter:v9];

  return v7;
}

@end