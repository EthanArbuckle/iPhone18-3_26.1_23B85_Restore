@interface HMBMutableCloudDatabaseConfiguration
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMBMutableCloudDatabaseConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMBCloudDatabaseConfiguration alloc];
  v5 = [(HMBCloudDatabaseConfiguration *)self containerID];
  v6 = [(HMBCloudDatabaseConfiguration *)v4 initWithContainerID:v5];

  v7 = [(HMBCloudDatabaseConfiguration *)self sourceApplicationBundleIdentifier];
  [(HMBCloudDatabaseConfiguration *)v6 setSourceApplicationBundleIdentifier:v7];

  [(HMBCloudDatabaseConfiguration *)v6 setManateeContainer:[(HMBCloudDatabaseConfiguration *)self isManateeContainer]];
  v8 = [(HMBCloudDatabaseConfiguration *)self defaultOperationConfiguration];
  [(HMBCloudDatabaseConfiguration *)v6 setDefaultOperationConfiguration:v8];

  [(HMBCloudDatabaseConfiguration *)v6 setSubscriptionPushRegistrationAction:[(HMBCloudDatabaseConfiguration *)self subscriptionPushRegistrationAction]];
  v9 = [(HMBCloudDatabaseConfiguration *)self operationQueue];
  [(HMBCloudDatabaseConfiguration *)v6 setOperationQueue:v9];

  return v6;
}

@end