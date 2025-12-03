@interface HMDHomeData
+ (void)configureKeyedArchiverClassMappings;
- (id)homeWithUUID:(id)d;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation HMDHomeData

- (id)homeWithUUID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  homes = [(HMDHomeData *)self homes];
  v6 = [homes countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(homes);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        uuid = [v9 uuid];
        v11 = [uuid isEqual:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [homes countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = [+[HMDMutableHomeData allocWithZone:](HMDMutableHomeData init];
  __HMDHomeDataCopyProperties(v5, self, zone);
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