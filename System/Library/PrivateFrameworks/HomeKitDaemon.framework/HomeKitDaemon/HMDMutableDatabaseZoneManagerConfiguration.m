@interface HMDMutableDatabaseZoneManagerConfiguration
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMDMutableDatabaseZoneManagerConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[HMDDatabaseZoneManagerConfiguration allocWithZone:?]];
  [(HMDDatabaseZoneManagerConfiguration *)v4 setZoneOwner:[(HMDDatabaseZoneManagerConfiguration *)self isZoneOwner]];
  [(HMDDatabaseZoneManagerConfiguration *)v4 setShouldCreateZone:[(HMDDatabaseZoneManagerConfiguration *)self shouldCreateZone]];
  v5 = [(HMDDatabaseZoneManagerConfiguration *)self externalRecordTypesForSubscriptions];
  [(HMDDatabaseZoneManagerConfiguration *)v4 setExternalRecordTypesForSubscriptions:v5];

  v6 = [(HMDDatabaseZoneManagerConfiguration *)self minimumHomeKitVersion];
  [(HMDDatabaseZoneManagerConfiguration *)v4 setMinimumHomeKitVersion:v6];

  v7 = [(HMDDatabaseZoneManagerConfiguration *)self requiredSupportedFeatures];
  [(HMDDatabaseZoneManagerConfiguration *)v4 setRequiredSupportedFeatures:v7];

  v8 = [(HMDDatabaseZoneManagerConfiguration *)self cloudZoneConfiguration];
  [(HMDDatabaseZoneManagerConfiguration *)v4 setCloudZoneConfiguration:v8];

  return v4;
}

@end