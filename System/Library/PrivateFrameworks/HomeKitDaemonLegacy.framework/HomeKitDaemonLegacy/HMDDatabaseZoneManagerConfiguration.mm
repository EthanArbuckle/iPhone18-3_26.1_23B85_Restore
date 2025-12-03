@interface HMDDatabaseZoneManagerConfiguration
- (BOOL)isEqual:(id)equal;
- (HMDDatabaseZoneManagerConfiguration)init;
- (id)attributeDescriptions;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation HMDDatabaseZoneManagerConfiguration

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(HMDDatabaseZoneManagerConfiguration *)[HMDMutableDatabaseZoneManagerConfiguration allocWithZone:?]];
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

- (unint64_t)hash
{
  isZoneOwner = [(HMDDatabaseZoneManagerConfiguration *)self isZoneOwner];
  v4 = isZoneOwner ^ [(HMDDatabaseZoneManagerConfiguration *)self shouldCreateZone];
  externalRecordTypesForSubscriptions = [(HMDDatabaseZoneManagerConfiguration *)self externalRecordTypesForSubscriptions];
  v6 = [externalRecordTypesForSubscriptions hash];

  minimumHomeKitVersion = [(HMDDatabaseZoneManagerConfiguration *)self minimumHomeKitVersion];
  v8 = v6 ^ [minimumHomeKitVersion hash];

  requiredSupportedFeatures = [(HMDDatabaseZoneManagerConfiguration *)self requiredSupportedFeatures];
  v10 = v8 ^ [requiredSupportedFeatures hash] ^ v4;

  cloudZoneConfiguration = [(HMDDatabaseZoneManagerConfiguration *)self cloudZoneConfiguration];
  v12 = [cloudZoneConfiguration hash];

  return v10 ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (v7 = -[HMDDatabaseZoneManagerConfiguration isZoneOwner](self, "isZoneOwner"), v7 == [v6 isZoneOwner]) && (v8 = -[HMDDatabaseZoneManagerConfiguration shouldCreateZone](self, "shouldCreateZone"), v8 == objc_msgSend(v6, "shouldCreateZone")))
  {
    externalRecordTypesForSubscriptions = [(HMDDatabaseZoneManagerConfiguration *)self externalRecordTypesForSubscriptions];
    externalRecordTypesForSubscriptions2 = [v6 externalRecordTypesForSubscriptions];
    if ([externalRecordTypesForSubscriptions isEqualToSet:externalRecordTypesForSubscriptions2])
    {
      minimumHomeKitVersion = [(HMDDatabaseZoneManagerConfiguration *)self minimumHomeKitVersion];
      minimumHomeKitVersion2 = [v6 minimumHomeKitVersion];
      if ([minimumHomeKitVersion isEqualToVersion:minimumHomeKitVersion2])
      {
        requiredSupportedFeatures = [(HMDDatabaseZoneManagerConfiguration *)self requiredSupportedFeatures];
        requiredSupportedFeatures2 = [v6 requiredSupportedFeatures];
        if ([requiredSupportedFeatures isEqualToSet:requiredSupportedFeatures2])
        {
          cloudZoneConfiguration = [(HMDDatabaseZoneManagerConfiguration *)self cloudZoneConfiguration];
          cloudZoneConfiguration2 = [v6 cloudZoneConfiguration];
          v9 = [cloudZoneConfiguration isEqual:cloudZoneConfiguration2];
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)attributeDescriptions
{
  v26[6] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v25 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDDatabaseZoneManagerConfiguration isZoneOwner](self, "isZoneOwner")}];
  v24 = [v3 initWithName:@"Zone Owner" value:v25];
  v26[0] = v24;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v23 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDDatabaseZoneManagerConfiguration shouldCreateZone](self, "shouldCreateZone")}];
  v22 = [v4 initWithName:@"Should Create Zone" value:v23];
  v26[1] = v22;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  externalRecordTypesForSubscriptions = [(HMDDatabaseZoneManagerConfiguration *)self externalRecordTypesForSubscriptions];
  v6 = [v5 initWithName:@"External Record Types" value:externalRecordTypesForSubscriptions];
  v26[2] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  minimumHomeKitVersion = [(HMDDatabaseZoneManagerConfiguration *)self minimumHomeKitVersion];
  v9 = [v7 initWithName:@"Minumum HomeKit Version" value:minimumHomeKitVersion];
  v26[3] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  requiredSupportedFeatures = [(HMDDatabaseZoneManagerConfiguration *)self requiredSupportedFeatures];
  allObjects = [requiredSupportedFeatures allObjects];
  v13 = [allObjects componentsJoinedByString:{@", "}];
  v14 = [v10 initWithName:@"Required Supported Features" value:v13];
  v26[4] = v14;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  cloudZoneConfiguration = [(HMDDatabaseZoneManagerConfiguration *)self cloudZoneConfiguration];
  v17 = [v15 initWithName:@"Cloud Zone Configuration" value:cloudZoneConfiguration];
  v26[5] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:6];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (HMDDatabaseZoneManagerConfiguration)init
{
  v13.receiver = self;
  v13.super_class = HMDDatabaseZoneManagerConfiguration;
  v2 = [(HMDDatabaseZoneManagerConfiguration *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_shouldCreateZone = 1;
    v4 = [MEMORY[0x277CBEB98] set];
    externalRecordTypesForSubscriptions = v3->_externalRecordTypesForSubscriptions;
    v3->_externalRecordTypesForSubscriptions = v4;

    v6 = +[HMDHomeKitVersion version6];
    minimumHomeKitVersion = v3->_minimumHomeKitVersion;
    v3->_minimumHomeKitVersion = v6;

    v8 = [MEMORY[0x277CBEB98] set];
    requiredSupportedFeatures = v3->_requiredSupportedFeatures;
    v3->_requiredSupportedFeatures = v8;

    v10 = objc_alloc_init(MEMORY[0x277D17068]);
    cloudZoneConfiguration = v3->_cloudZoneConfiguration;
    v3->_cloudZoneConfiguration = v10;
  }

  return v3;
}

@end