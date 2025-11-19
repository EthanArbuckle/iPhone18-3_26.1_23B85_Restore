@interface HMBMutableLocalZoneConfiguration
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMBMutableLocalZoneConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[HMBLocalZoneConfiguration allocWithZone:?]];
  [(HMBLocalZoneConfiguration *)v4 setReadOnly:[(HMBLocalZoneConfiguration *)self readOnly]];
  [(HMBLocalZoneConfiguration *)v4 setCreateIfNeeded:[(HMBLocalZoneConfiguration *)self createIfNeeded]];
  v5 = [(HMBLocalZoneConfiguration *)self modelContainer];
  [(HMBLocalZoneConfiguration *)v4 setModelContainer:v5];

  v6 = [(HMBLocalZoneConfiguration *)self delegate];
  [(HMBLocalZoneConfiguration *)v4 setDelegate:v6];

  return v4;
}

@end