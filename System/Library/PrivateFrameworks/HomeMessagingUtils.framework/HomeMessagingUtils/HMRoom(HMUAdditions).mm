@interface HMRoom(HMUAdditions)
+ (id)hmu_accessoriesInRooms:()HMUAdditions;
- (id)hmu_homePods;
@end

@implementation HMRoom(HMUAdditions)

- (id)hmu_homePods
{
  accessories = [self accessories];
  v2 = [accessories na_filter:&__block_literal_global_4];

  return v2;
}

+ (id)hmu_accessoriesInRooms:()HMUAdditions
{
  v3 = [a3 na_map:&__block_literal_global_3_0];
  v4 = [v3 na_flatMap:&__block_literal_global_6];

  return v4;
}

@end