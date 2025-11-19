@interface HMDNotificationRegistryRequest
- (HMDNotificationRegistryRequest)initWithEnable:(BOOL)a3 userID:(id)a4;
- (id)attributeDescriptions;
@end

@implementation HMDNotificationRegistryRequest

- (id)attributeDescriptions
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDNotificationRegistryRequest *)self enable];
  v5 = HMFBooleanToString();
  v6 = [v4 initWithName:@"Enable" value:v5];
  [v3 addObject:v6];

  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [(HMDNotificationRegistryRequest *)self userID];
  v9 = [v7 initWithName:@"User ID" value:v8];
  [v3 addObject:v9];

  if ([(HMDNotificationRegistryRequest *)self retryCount]>= 1)
  {
    v10 = objc_alloc(MEMORY[0x277D0F778]);
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDNotificationRegistryRequest retryCount](self, "retryCount")}];
    v12 = [v10 initWithName:@"Retry Count" value:v11];
    [v3 addObject:v12];
  }

  v13 = [v3 copy];

  return v13;
}

- (HMDNotificationRegistryRequest)initWithEnable:(BOOL)a3 userID:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = HMDNotificationRegistryRequest;
  v7 = [(HMDNotificationRegistryRequest *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_enable = a3;
    v9 = [v6 copy];
    userID = v8->_userID;
    v8->_userID = v9;
  }

  return v8;
}

@end