@interface IDSService(HMUAdditions)
- (id)hmu_accessories;
- (id)hmu_appleTVs;
- (id)hmu_homePods;
@end

@implementation IDSService(HMUAdditions)

- (id)hmu_homePods
{
  v1 = [a1 devices];
  v2 = [v1 na_filter:&__block_literal_global_5];

  return v2;
}

- (id)hmu_appleTVs
{
  v1 = [a1 devices];
  v2 = [v1 na_filter:&__block_literal_global_3_1];

  return v2;
}

- (id)hmu_accessories
{
  v1 = [a1 devices];
  v2 = [v1 na_filter:&__block_literal_global_5_0];

  return v2;
}

@end