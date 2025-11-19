@interface HMDDatabaseZoneManagerConfiguration
- (BOOL)isEqual:(id)a3;
- (HMDDatabaseZoneManagerConfiguration)init;
- (id)attributeDescriptions;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation HMDDatabaseZoneManagerConfiguration

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(HMDDatabaseZoneManagerConfiguration *)[HMDMutableDatabaseZoneManagerConfiguration allocWithZone:?]];
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

- (unint64_t)hash
{
  v3 = [(HMDDatabaseZoneManagerConfiguration *)self isZoneOwner];
  v4 = v3 ^ [(HMDDatabaseZoneManagerConfiguration *)self shouldCreateZone];
  v5 = [(HMDDatabaseZoneManagerConfiguration *)self externalRecordTypesForSubscriptions];
  v6 = [v5 hash];

  v7 = [(HMDDatabaseZoneManagerConfiguration *)self minimumHomeKitVersion];
  v8 = v6 ^ [v7 hash];

  v9 = [(HMDDatabaseZoneManagerConfiguration *)self requiredSupportedFeatures];
  v10 = v8 ^ [v9 hash] ^ v4;

  v11 = [(HMDDatabaseZoneManagerConfiguration *)self cloudZoneConfiguration];
  v12 = [v11 hash];

  return v10 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (v7 = -[HMDDatabaseZoneManagerConfiguration isZoneOwner](self, "isZoneOwner"), v7 == [v6 isZoneOwner]) && (v8 = -[HMDDatabaseZoneManagerConfiguration shouldCreateZone](self, "shouldCreateZone"), v8 == objc_msgSend(v6, "shouldCreateZone")))
  {
    v11 = [(HMDDatabaseZoneManagerConfiguration *)self externalRecordTypesForSubscriptions];
    v12 = [v6 externalRecordTypesForSubscriptions];
    if ([v11 isEqualToSet:v12])
    {
      v13 = [(HMDDatabaseZoneManagerConfiguration *)self minimumHomeKitVersion];
      v14 = [v6 minimumHomeKitVersion];
      if ([v13 isEqualToVersion:v14])
      {
        v15 = [(HMDDatabaseZoneManagerConfiguration *)self requiredSupportedFeatures];
        v16 = [v6 requiredSupportedFeatures];
        if ([v15 isEqualToSet:v16])
        {
          v18 = [(HMDDatabaseZoneManagerConfiguration *)self cloudZoneConfiguration];
          v17 = [v6 cloudZoneConfiguration];
          v9 = [v18 isEqual:v17];
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
  v21 = [(HMDDatabaseZoneManagerConfiguration *)self externalRecordTypesForSubscriptions];
  v6 = [v5 initWithName:@"External Record Types" value:v21];
  v26[2] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [(HMDDatabaseZoneManagerConfiguration *)self minimumHomeKitVersion];
  v9 = [v7 initWithName:@"Minumum HomeKit Version" value:v8];
  v26[3] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  v11 = [(HMDDatabaseZoneManagerConfiguration *)self requiredSupportedFeatures];
  v12 = [v11 allObjects];
  v13 = [v12 componentsJoinedByString:{@", "}];
  v14 = [v10 initWithName:@"Required Supported Features" value:v13];
  v26[4] = v14;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  v16 = [(HMDDatabaseZoneManagerConfiguration *)self cloudZoneConfiguration];
  v17 = [v15 initWithName:@"Cloud Zone Configuration" value:v16];
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