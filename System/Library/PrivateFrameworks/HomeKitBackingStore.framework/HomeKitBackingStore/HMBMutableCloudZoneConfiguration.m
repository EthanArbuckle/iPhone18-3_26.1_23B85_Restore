@interface HMBMutableCloudZoneConfiguration
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMBMutableCloudZoneConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[HMBCloudZoneConfiguration allocWithZone:?]];
  [(HMBCloudZoneConfiguration *)v4 setShouldRebuildOnManateeKeyLoss:[(HMBCloudZoneConfiguration *)self shouldRebuildOnManateeKeyLoss]];
  [(HMBCloudZoneConfiguration *)v4 setShouldSkipCloudPulls:[(HMBCloudZoneConfiguration *)self shouldSkipCloudPulls]];
  return v4;
}

@end