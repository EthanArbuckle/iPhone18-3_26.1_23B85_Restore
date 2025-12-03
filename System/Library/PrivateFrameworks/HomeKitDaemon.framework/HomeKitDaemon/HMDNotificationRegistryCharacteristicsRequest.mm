@interface HMDNotificationRegistryCharacteristicsRequest
- (id)attributeDescriptions;
@end

@implementation HMDNotificationRegistryCharacteristicsRequest

- (id)attributeDescriptions
{
  v20[3] = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = HMDNotificationRegistryCharacteristicsRequest;
  attributeDescriptions = [(HMDNotificationRegistryRequest *)&v19 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  accessoryUUID = [(HMDNotificationRegistryCharacteristicsRequest *)self accessoryUUID];
  v5 = [v4 initWithName:@"Accessory UUID" value:accessoryUUID];
  v20[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  characteristicInstanceIDs = [(HMDNotificationRegistryCharacteristicsRequest *)self characteristicInstanceIDs];
  allObjects = [characteristicInstanceIDs allObjects];
  v9 = [allObjects componentsJoinedByString:{@", "}];
  v10 = [v6 initWithName:@"Characteristic IIDs" value:v9];
  v20[1] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  characteristicChangeThresholds = [(HMDNotificationRegistryCharacteristicsRequest *)self characteristicChangeThresholds];
  v13 = [v11 initWithName:@"Change Threshold" value:characteristicChangeThresholds];
  v20[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
  v15 = [attributeDescriptions arrayByAddingObjectsFromArray:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end