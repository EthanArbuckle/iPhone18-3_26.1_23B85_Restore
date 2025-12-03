@interface HMDNotificationRegistryRequest
- (HMDNotificationRegistryRequest)initWithEnable:(BOOL)enable user:(id)user deviceIdsDestination:(id)destination;
- (id)attributeDescriptions;
@end

@implementation HMDNotificationRegistryRequest

- (id)attributeDescriptions
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDNotificationRegistryRequest *)self enable];
  v5 = HMFBooleanToString();
  v6 = [v4 initWithName:@"Enable" value:v5];
  [array addObject:v6];

  v7 = objc_alloc(MEMORY[0x277D0F778]);
  user = [(HMDNotificationRegistryRequest *)self user];
  shortDescription = [user shortDescription];
  v10 = [v7 initWithName:@"User" value:shortDescription];
  [array addObject:v10];

  v11 = objc_alloc(MEMORY[0x277D0F778]);
  deviceIdsDestination = [(HMDNotificationRegistryRequest *)self deviceIdsDestination];
  v13 = [v11 initWithName:@"Device IDS Destination" value:deviceIdsDestination];
  [array addObject:v13];

  if ([(HMDNotificationRegistryRequest *)self retryCount]>= 1)
  {
    v14 = objc_alloc(MEMORY[0x277D0F778]);
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDNotificationRegistryRequest retryCount](self, "retryCount")}];
    v16 = [v14 initWithName:@"Retry Count" value:v15];
    [array addObject:v16];
  }

  v17 = [array copy];

  return v17;
}

- (HMDNotificationRegistryRequest)initWithEnable:(BOOL)enable user:(id)user deviceIdsDestination:(id)destination
{
  userCopy = user;
  destinationCopy = destination;
  v16.receiver = self;
  v16.super_class = HMDNotificationRegistryRequest;
  v11 = [(HMDNotificationRegistryRequest *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_enable = enable;
    objc_storeStrong(&v11->_user, user);
    v13 = [destinationCopy copy];
    deviceIdsDestination = v12->_deviceIdsDestination;
    v12->_deviceIdsDestination = v13;
  }

  return v12;
}

@end