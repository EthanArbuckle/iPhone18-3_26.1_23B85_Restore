@interface HMHomeManager(HMUAdditions)
- (id)hmu_homeWithName:()HMUAdditions;
- (id)hmu_homeWithUniqueIdentifier:()HMUAdditions;
- (id)hmu_homesContainingRoomsWithNames:()HMUAdditions;
- (id)hmu_homesContainingZonesWithNames:()HMUAdditions;
- (id)hmu_homesWithHomeLocationStatus:()HMUAdditions;
@end

@implementation HMHomeManager(HMUAdditions)

- (id)hmu_homeWithUniqueIdentifier:()HMUAdditions
{
  v4 = a3;
  homes = [self homes];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__HMHomeManager_HMUAdditions__hmu_homeWithUniqueIdentifier___block_invoke;
  v9[3] = &unk_2797724C8;
  v10 = v4;
  v6 = v4;
  v7 = [homes na_firstObjectPassingTest:v9];

  return v7;
}

- (id)hmu_homeWithName:()HMUAdditions
{
  v4 = a3;
  homes = [self homes];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__HMHomeManager_HMUAdditions__hmu_homeWithName___block_invoke;
  v9[3] = &unk_2797724C8;
  v10 = v4;
  v6 = v4;
  v7 = [homes na_firstObjectPassingTest:v9];

  return v7;
}

- (id)hmu_homesContainingRoomsWithNames:()HMUAdditions
{
  v4 = a3;
  if ([v4 count])
  {
    homes = [self homes];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65__HMHomeManager_HMUAdditions__hmu_homesContainingRoomsWithNames___block_invoke;
    v8[3] = &unk_2797724C8;
    v9 = v4;
    v6 = [homes na_filter:v8];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (id)hmu_homesContainingZonesWithNames:()HMUAdditions
{
  v4 = a3;
  if ([v4 count])
  {
    homes = [self homes];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65__HMHomeManager_HMUAdditions__hmu_homesContainingZonesWithNames___block_invoke;
    v8[3] = &unk_2797724C8;
    v9 = v4;
    v6 = [homes na_filter:v8];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (id)hmu_homesWithHomeLocationStatus:()HMUAdditions
{
  homes = [self homes];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HMHomeManager_HMUAdditions__hmu_homesWithHomeLocationStatus___block_invoke;
  v7[3] = &__block_descriptor_40_e16_B16__0__HMHome_8l;
  v7[4] = a3;
  v5 = [homes na_filter:v7];

  return v5;
}

@end