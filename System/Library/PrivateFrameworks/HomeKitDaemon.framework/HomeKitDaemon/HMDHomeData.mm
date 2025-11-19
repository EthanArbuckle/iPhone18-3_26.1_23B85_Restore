@interface HMDHomeData
+ (void)configureKeyedArchiverClassMappings;
- (id)homeWithUUID:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation HMDHomeData

- (id)homeWithUUID:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(HMDHomeData *)self homes];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 uuid];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = [+[HMDMutableHomeData allocWithZone:](HMDMutableHomeData init];
  __HMDHomeDataCopyProperties(v5, self, a3);
  return v5;
}

+ (void)configureKeyedArchiverClassMappings
{
  [MEMORY[0x277CCAAB0] setClassName:@"HMDAccessory" forClass:objc_opt_class()];
  [MEMORY[0x277CCAAC8] setClass:objc_opt_class() forClassName:@"HMDAccessory"];
  [MEMORY[0x277CCAAB0] setClassName:@"HMDCharacteristicNotificationRegistry" forClass:objc_opt_class()];
  [MEMORY[0x277CCAAC8] setClass:objc_opt_class() forClassName:@"HMDCharacteristicNotificationRegistry"];
  [MEMORY[0x277CCAAC8] setClass:objc_opt_class() forClassName:@"HMDWHAAccessory"];
  [MEMORY[0x277CCAAC8] setClass:objc_opt_class() forClassName:@"HMDMediaSystemExtended"];
  [MEMORY[0x277CCAAC8] setClass:objc_opt_class() forClassName:@"HMDMediaSystemExtendedV2"];
  v2 = MEMORY[0x277CCAAC8];
  v3 = objc_opt_class();

  [v2 setClass:v3 forClassName:@"HMDAppleMediaAccessorySensor"];
}

@end