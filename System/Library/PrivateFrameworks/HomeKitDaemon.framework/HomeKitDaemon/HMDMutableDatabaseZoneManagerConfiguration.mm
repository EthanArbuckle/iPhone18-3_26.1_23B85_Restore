@interface HMDMutableDatabaseZoneManagerConfiguration
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMDMutableDatabaseZoneManagerConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[HMDDatabaseZoneManagerConfiguration allocWithZone:?]];
  [(HMDDatabaseZoneManagerConfiguration *)v4 setZoneOwner:[(HMDDatabaseZoneManagerConfiguration *)self isZoneOwner]];
  [(HMDDatabaseZoneManagerConfiguration *)v4 setShouldCreateZone:[(HMDDatabaseZoneManagerConfiguration *)self shouldCreateZone]];
  externalRecordTypesForSubscriptions = [(HMDDatabaseZoneManagerConfiguration *)self externalRecordTypesForSubscriptions];
  [(HMDDatabaseZoneManagerConfiguration *)v4 setExternalRecordTypesForSubscriptions:externalRecordTypesForSubscriptions];

  minimumHomeKitVersion = [(HMDDatabaseZoneManagerConfiguration *)self minimumHomeKitVersion];
  [(HMDDatabaseZoneManagerConfiguration *)v4 setMinimumHomeKitVersion:minimumHomeKitVersion];

  requiredSupportedFeatures = [(HMDDatabaseZoneManagerConfiguration *)self requiredSupportedFeatures];
  [(HMDDatabaseZoneManagerConfiguration *)v4 setRequiredSupportedFeatures:requiredSupportedFeatures];

  cloudZoneConfiguration = [(HMDDatabaseZoneManagerConfiguration *)self cloudZoneConfiguration];
  [(HMDDatabaseZoneManagerConfiguration *)v4 setCloudZoneConfiguration:cloudZoneConfiguration];

  return v4;
}

@end