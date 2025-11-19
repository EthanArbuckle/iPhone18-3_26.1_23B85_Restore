@interface HMBCloudDatabaseConfiguration
- (HMBCloudDatabaseConfiguration)initWithContainerID:(id)a3;
- (id)attributeDescriptions;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation HMBCloudDatabaseConfiguration

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMBMutableCloudDatabaseConfiguration alloc];
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

- (id)attributeDescriptions
{
  v24[6] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v23 = [(HMBCloudDatabaseConfiguration *)self containerID];
  v22 = [v3 initWithName:@"Container ID" value:v23];
  v24[0] = v22;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v21 = [(HMBCloudDatabaseConfiguration *)self sourceApplicationBundleIdentifier];
  v5 = [v4 initWithName:@"Bundle ID" value:v21];
  v24[1] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMBCloudDatabaseConfiguration *)self isManateeContainer];
  v7 = HMFBooleanToString();
  v8 = [v6 initWithName:@"Manatee Container" value:v7];
  v24[2] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMBCloudDatabaseConfiguration *)self defaultOperationConfiguration];
  v11 = [v9 initWithName:@"Default Operation Configuration" value:v10];
  v24[3] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMBCloudDatabaseConfiguration subscriptionPushRegistrationAction](self, "subscriptionPushRegistrationAction")}];
  v14 = [v12 initWithName:@"Subscription Push Registration Action" value:v13];
  v24[4] = v14;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  v16 = [(HMBCloudDatabaseConfiguration *)self operationQueue];
  v17 = [v15 initWithName:@"Operations Queue" value:v16];
  v24[5] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:6];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (HMBCloudDatabaseConfiguration)initWithContainerID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v17.receiver = self;
    v17.super_class = HMBCloudDatabaseConfiguration;
    v6 = [(HMBCloudDatabaseConfiguration *)&v17 init];
    if (v6)
    {
      v7 = [v5 copy];
      containerID = v6->_containerID;
      v6->_containerID = v7;

      sourceApplicationBundleIdentifier = v6->_sourceApplicationBundleIdentifier;
      v6->_sourceApplicationBundleIdentifier = @"com.apple.willowd";

      v6->_subscriptionPushRegistrationAction = 0;
      v10 = dispatch_get_global_queue(21, 0);
      operationQueue = v6->_operationQueue;
      v6->_operationQueue = v10;

      v12 = objc_alloc_init(MEMORY[0x277CBC4F0]);
      defaultOperationConfiguration = v6->_defaultOperationConfiguration;
      v6->_defaultOperationConfiguration = v12;

      [(CKOperationConfiguration *)v6->_defaultOperationConfiguration setQualityOfService:17];
    }

    return v6;
  }

  else
  {
    v15 = _HMFPreconditionFailure();
    [(HMBProcessingModelResult *)v15 .cxx_destruct];
  }

  return result;
}

@end