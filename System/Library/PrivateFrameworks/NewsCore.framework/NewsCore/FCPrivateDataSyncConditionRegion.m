@interface FCPrivateDataSyncConditionRegion
- (id)description;
@end

@implementation FCPrivateDataSyncConditionRegion

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = +[FCGeoUtilities currentRegion];
  v5 = [v3 stringWithFormat:@"<%p condition=Region, region=%@>", self, v4];

  return v5;
}

@end