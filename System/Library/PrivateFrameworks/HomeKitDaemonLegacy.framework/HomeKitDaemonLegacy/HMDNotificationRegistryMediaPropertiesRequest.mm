@interface HMDNotificationRegistryMediaPropertiesRequest
- (id)attributeDescriptions;
@end

@implementation HMDNotificationRegistryMediaPropertiesRequest

- (id)attributeDescriptions
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = HMDNotificationRegistryMediaPropertiesRequest;
  v3 = [(HMDNotificationRegistryRequest *)&v16 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(HMDNotificationRegistryMediaPropertiesRequest *)self mediaProfileUUID];
  v6 = [v4 initWithName:@"Media Profile UUID" value:v5];
  v17[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [(HMDNotificationRegistryMediaPropertiesRequest *)self mediaProperties];
  v9 = [v8 allObjects];
  v10 = [v9 componentsJoinedByString:{@", "}];
  v11 = [v7 initWithName:@"Media Properties" value:v10];
  v17[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v13 = [v3 arrayByAddingObjectsFromArray:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end