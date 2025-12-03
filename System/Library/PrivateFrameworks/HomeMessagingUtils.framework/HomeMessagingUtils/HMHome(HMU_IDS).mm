@interface HMHome(HMU_IDS)
- (id)hmu_accessoryWithDestination:()HMU_IDS service:;
- (id)hmu_accessoryWithFromID:()HMU_IDS service:;
- (id)hmu_userWithDestination:()HMU_IDS;
- (id)hmu_userWithFromID:()HMU_IDS;
@end

@implementation HMHome(HMU_IDS)

- (id)hmu_accessoryWithFromID:()HMU_IDS service:
{
  v6 = a3;
  v7 = a4;
  accessories = [self accessories];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__HMHome_HMU_IDS__hmu_accessoryWithFromID_service___block_invoke;
  v13[3] = &unk_279772640;
  v14 = v7;
  v15 = v6;
  v9 = v6;
  v10 = v7;
  v11 = [accessories na_firstObjectPassingTest:v13];

  return v11;
}

- (id)hmu_userWithFromID:()HMU_IDS
{
  v2 = IDSCopyAddressDestinationForDestination();
  hmu_allUsersIncludingCurrentUser = [self hmu_allUsersIncludingCurrentUser];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__HMHome_HMU_IDS__hmu_userWithFromID___block_invoke;
  v7[3] = &unk_279772560;
  v8 = v2;
  v4 = v2;
  v5 = [hmu_allUsersIncludingCurrentUser na_firstObjectPassingTest:v7];

  return v5;
}

- (id)hmu_userWithDestination:()HMU_IDS
{
  v4 = a3;
  hmu_allUsersIncludingCurrentUser = [self hmu_allUsersIncludingCurrentUser];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__HMHome_HMU_IDS__hmu_userWithDestination___block_invoke;
  v9[3] = &unk_279772560;
  v10 = v4;
  v6 = v4;
  v7 = [hmu_allUsersIncludingCurrentUser na_firstObjectPassingTest:v9];

  return v7;
}

- (id)hmu_accessoryWithDestination:()HMU_IDS service:
{
  v6 = a3;
  v7 = a4;
  accessories = [self accessories];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__HMHome_HMU_IDS__hmu_accessoryWithDestination_service___block_invoke;
  v13[3] = &unk_279772640;
  v14 = v7;
  v15 = v6;
  v9 = v6;
  v10 = v7;
  v11 = [accessories na_firstObjectPassingTest:v13];

  return v11;
}

@end