@interface HMDNotificationRegistryActionSetRequest
- (id)attributeDescriptions;
@end

@implementation HMDNotificationRegistryActionSetRequest

- (id)attributeDescriptions
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = HMDNotificationRegistryActionSetRequest;
  v3 = [(HMDNotificationRegistryRequest *)&v11 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(HMDNotificationRegistryActionSetRequest *)self actionSetUUID];
  v6 = [v4 initWithName:@"ActionSet UUID" value:v5];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v8 = [v3 arrayByAddingObjectsFromArray:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end