@interface IDSService(HMUAdditions)
- (id)hmu_accessories;
- (id)hmu_appleTVs;
- (id)hmu_homePods;
@end

@implementation IDSService(HMUAdditions)

- (id)hmu_homePods
{
  devices = [self devices];
  v2 = [devices na_filter:&__block_literal_global_5];

  return v2;
}

- (id)hmu_appleTVs
{
  devices = [self devices];
  v2 = [devices na_filter:&__block_literal_global_3_1];

  return v2;
}

- (id)hmu_accessories
{
  devices = [self devices];
  v2 = [devices na_filter:&__block_literal_global_5_0];

  return v2;
}

@end