@interface HMRoom
@end

@implementation HMRoom

BOOL __55__HMRoom_HMUAdditions__hmu_roomsWithHomePodsFromRooms___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 hmu_homePods];
  v3 = [v2 count] != 0;

  return v3;
}

BOOL __66__HMRoom_HMUAdditions__hmu_roomsWithAnnounceAccessoriesFromRooms___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD1650];
  v3 = [a2 accessories];
  v4 = [v2 hmu_announceAccessoriesFromAccessories:v3];
  v5 = [v4 count] != 0;

  return v5;
}

@end