@interface HMDNotificationRegistryRequest
- (HMDNotificationRegistryRequest)initWithEnable:(BOOL)a3 user:(id)a4 deviceIdsDestination:(id)a5;
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
  v8 = [(HMDNotificationRegistryRequest *)self user];
  v9 = [v8 shortDescription];
  v10 = [v7 initWithName:@"User" value:v9];
  [v3 addObject:v10];

  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v12 = [(HMDNotificationRegistryRequest *)self deviceIdsDestination];
  v13 = [v11 initWithName:@"Device IDS Destination" value:v12];
  [v3 addObject:v13];

  if ([(HMDNotificationRegistryRequest *)self retryCount]>= 1)
  {
    v14 = objc_alloc(MEMORY[0x277D0F778]);
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDNotificationRegistryRequest retryCount](self, "retryCount")}];
    v16 = [v14 initWithName:@"Retry Count" value:v15];
    [v3 addObject:v16];
  }

  v17 = [v3 copy];

  return v17;
}

- (HMDNotificationRegistryRequest)initWithEnable:(BOOL)a3 user:(id)a4 deviceIdsDestination:(id)a5
{
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = HMDNotificationRegistryRequest;
  v11 = [(HMDNotificationRegistryRequest *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_enable = a3;
    objc_storeStrong(&v11->_user, a4);
    v13 = [v10 copy];
    deviceIdsDestination = v12->_deviceIdsDestination;
    v12->_deviceIdsDestination = v13;
  }

  return v12;
}

@end