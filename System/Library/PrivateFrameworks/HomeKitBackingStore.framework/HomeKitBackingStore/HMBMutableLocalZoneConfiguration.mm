@interface HMBMutableLocalZoneConfiguration
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMBMutableLocalZoneConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[HMBLocalZoneConfiguration allocWithZone:?]];
  [(HMBLocalZoneConfiguration *)v4 setReadOnly:[(HMBLocalZoneConfiguration *)self readOnly]];
  [(HMBLocalZoneConfiguration *)v4 setCreateIfNeeded:[(HMBLocalZoneConfiguration *)self createIfNeeded]];
  modelContainer = [(HMBLocalZoneConfiguration *)self modelContainer];
  [(HMBLocalZoneConfiguration *)v4 setModelContainer:modelContainer];

  delegate = [(HMBLocalZoneConfiguration *)self delegate];
  [(HMBLocalZoneConfiguration *)v4 setDelegate:delegate];

  return v4;
}

@end