@interface HMDNotificationRegistryCharacteristicsRequest
- (id)attributeDescriptions;
@end

@implementation HMDNotificationRegistryCharacteristicsRequest

- (id)attributeDescriptions
{
  v20[3] = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = HMDNotificationRegistryCharacteristicsRequest;
  v3 = [(HMDNotificationRegistryRequest *)&v19 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v18 = [(HMDNotificationRegistryCharacteristicsRequest *)self accessoryUUID];
  v5 = [v4 initWithName:@"Accessory UUID" value:v18];
  v20[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDNotificationRegistryCharacteristicsRequest *)self characteristicInstanceIDs];
  v8 = [v7 allObjects];
  v9 = [v8 componentsJoinedByString:{@", "}];
  v10 = [v6 initWithName:@"Characteristic IIDs" value:v9];
  v20[1] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v12 = [(HMDNotificationRegistryCharacteristicsRequest *)self characteristicChangeThresholds];
  v13 = [v11 initWithName:@"Change Threshold" value:v12];
  v20[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
  v15 = [v3 arrayByAddingObjectsFromArray:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end