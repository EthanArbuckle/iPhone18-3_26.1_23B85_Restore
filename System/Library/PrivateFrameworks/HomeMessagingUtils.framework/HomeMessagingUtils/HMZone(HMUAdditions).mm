@interface HMZone(HMUAdditions)
+ (id)hmu_accessoriesInZones:()HMUAdditions;
+ (id)hmu_roomsInZones:()HMUAdditions;
+ (id)hmu_roomsInZones:()HMUAdditions appendingRooms:;
- (id)hmu_accessories;
- (id)hmu_homePods;
@end

@implementation HMZone(HMUAdditions)

- (id)hmu_accessories
{
  rooms = [self rooms];
  v2 = [rooms na_map:&__block_literal_global_0];
  v3 = [v2 na_flatMap:&__block_literal_global_3];

  return v3;
}

- (id)hmu_homePods
{
  rooms = [self rooms];
  v2 = [rooms na_map:&__block_literal_global_5];
  v3 = [v2 na_flatMap:&__block_literal_global_7];

  return v3;
}

+ (id)hmu_accessoriesInZones:()HMUAdditions
{
  v3 = [a3 na_map:&__block_literal_global_10];
  v4 = [v3 na_flatMap:&__block_literal_global_12];

  return v4;
}

+ (id)hmu_roomsInZones:()HMUAdditions
{
  v3 = [a3 na_map:&__block_literal_global_16];
  v4 = [v3 na_flatMap:&__block_literal_global_18];

  return v4;
}

+ (id)hmu_roomsInZones:()HMUAdditions appendingRooms:
{
  v5 = MEMORY[0x277CBEB58];
  v6 = MEMORY[0x277CD1F50];
  v7 = a4;
  v8 = [v6 hmu_roomsInZones:a3];
  v9 = [v5 setWithArray:v8];

  [v9 addObjectsFromArray:v7];
  allObjects = [v9 allObjects];

  return allObjects;
}

@end