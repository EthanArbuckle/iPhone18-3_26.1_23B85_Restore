@interface HMDLegacyCloudZoneConfiguration
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation HMDLegacyCloudZoneConfiguration

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [[HMDMutableLegacyCloudZoneConfiguration allocWithZone:?]];
  rootRecordName = [(HMDLegacyCloudZoneConfiguration *)self rootRecordName];
  [(HMDLegacyCloudZoneConfiguration *)v4 setRootRecordName:rootRecordName];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = HMDLegacyCloudZoneConfiguration;
  v4 = [(HMBCloudZoneConfiguration *)&v7 copyWithZone:zone];
  rootRecordName = [(HMDLegacyCloudZoneConfiguration *)self rootRecordName];
  [v4 setRootRecordName:rootRecordName];

  return v4;
}

@end