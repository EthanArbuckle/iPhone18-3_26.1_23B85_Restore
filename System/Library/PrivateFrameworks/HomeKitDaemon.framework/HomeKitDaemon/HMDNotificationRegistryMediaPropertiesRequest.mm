@interface HMDNotificationRegistryMediaPropertiesRequest
- (id)attributeDescriptions;
@end

@implementation HMDNotificationRegistryMediaPropertiesRequest

- (id)attributeDescriptions
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = HMDNotificationRegistryMediaPropertiesRequest;
  attributeDescriptions = [(HMDNotificationRegistryRequest *)&v16 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  mediaProfileUUID = [(HMDNotificationRegistryMediaPropertiesRequest *)self mediaProfileUUID];
  v6 = [v4 initWithName:@"Media Profile UUID" value:mediaProfileUUID];
  v17[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  mediaProperties = [(HMDNotificationRegistryMediaPropertiesRequest *)self mediaProperties];
  allObjects = [mediaProperties allObjects];
  v10 = [allObjects componentsJoinedByString:{@", "}];
  v11 = [v7 initWithName:@"Media Properties" value:v10];
  v17[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v13 = [attributeDescriptions arrayByAddingObjectsFromArray:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end