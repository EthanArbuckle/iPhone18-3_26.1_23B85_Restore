@interface HMDLegacyCloudZoneConfiguration
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation HMDLegacyCloudZoneConfiguration

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [[HMDMutableLegacyCloudZoneConfiguration allocWithZone:?]];
  v5 = [(HMDLegacyCloudZoneConfiguration *)self rootRecordName];
  [(HMDLegacyCloudZoneConfiguration *)v4 setRootRecordName:v5];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = HMDLegacyCloudZoneConfiguration;
  v4 = [(HMBCloudZoneConfiguration *)&v7 copyWithZone:a3];
  v5 = [(HMDLegacyCloudZoneConfiguration *)self rootRecordName];
  [v4 setRootRecordName:v5];

  return v4;
}

@end