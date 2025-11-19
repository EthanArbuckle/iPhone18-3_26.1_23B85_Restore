@interface RPCompanionLinkClient
@end

@implementation RPCompanionLinkClient

uint64_t __56__RPCompanionLinkClient_HMU_HomeKit__hmu_devicesInHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 homeKitIdentifier];
  if (v4 && ([*(a1 + 32) accessoryWithUniqueIdentifier:v4], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = 1;
  }

  else
  {
    v7 = [v3 homeKitUserIdentifiers];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __56__RPCompanionLinkClient_HMU_HomeKit__hmu_devicesInHome___block_invoke_2;
    v9[3] = &unk_2797725A8;
    v10 = *(a1 + 32);
    v6 = [v7 na_any:v9];
  }

  return v6;
}

BOOL __56__RPCompanionLinkClient_HMU_HomeKit__hmu_devicesInHome___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) hmu_userWithUniqueIdentifier:a2];
  v3 = v2 != 0;

  return v3;
}

uint64_t __57__RPCompanionLinkClient_HMU_HomeKit__hmu_devicesForUser___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 homeKitUserIdentifiers];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v3 containsObject:v4];

  return v5;
}

@end