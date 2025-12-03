@interface HMBMutableCloudDatabaseConfiguration
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMBMutableCloudDatabaseConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMBCloudDatabaseConfiguration alloc];
  containerID = [(HMBCloudDatabaseConfiguration *)self containerID];
  v6 = [(HMBCloudDatabaseConfiguration *)v4 initWithContainerID:containerID];

  sourceApplicationBundleIdentifier = [(HMBCloudDatabaseConfiguration *)self sourceApplicationBundleIdentifier];
  [(HMBCloudDatabaseConfiguration *)v6 setSourceApplicationBundleIdentifier:sourceApplicationBundleIdentifier];

  [(HMBCloudDatabaseConfiguration *)v6 setManateeContainer:[(HMBCloudDatabaseConfiguration *)self isManateeContainer]];
  defaultOperationConfiguration = [(HMBCloudDatabaseConfiguration *)self defaultOperationConfiguration];
  [(HMBCloudDatabaseConfiguration *)v6 setDefaultOperationConfiguration:defaultOperationConfiguration];

  [(HMBCloudDatabaseConfiguration *)v6 setSubscriptionPushRegistrationAction:[(HMBCloudDatabaseConfiguration *)self subscriptionPushRegistrationAction]];
  operationQueue = [(HMBCloudDatabaseConfiguration *)self operationQueue];
  [(HMBCloudDatabaseConfiguration *)v6 setOperationQueue:operationQueue];

  return v6;
}

@end