@interface HMDBackgroundSystemTaskRequest
- (BGRepeatingSystemTaskRequest)taskRequest;
- (HMDBackgroundSystemTaskRequest)initWithIdentifier:(id)a3;
- (HMDBackgroundSystemTaskRequest)initWithTaskRequest:(id)a3;
- (id)attributeDescriptions;
@end

@implementation HMDBackgroundSystemTaskRequest

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDBackgroundSystemTaskRequest *)self identifier];
  v5 = [v3 initWithName:@"Identifier" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BGRepeatingSystemTaskRequest)taskRequest
{
  v3 = objc_alloc(MEMORY[0x277CF07D8]);
  v4 = [(HMDBackgroundSystemTaskRequest *)self identifier];
  v5 = [v3 initWithIdentifier:v4];

  [v5 setRequiresInexpensiveNetworkConnectivity:{-[HMDBackgroundSystemTaskRequest requiresInexpensiveNetworkConnectivity](self, "requiresInexpensiveNetworkConnectivity")}];
  [v5 setRequiresSignificantUserInactivity:{-[HMDBackgroundSystemTaskRequest requiresSignificantUserInactivity](self, "requiresSignificantUserInactivity")}];
  [(HMDBackgroundSystemTaskRequest *)self interval];
  [v5 setInterval:?];
  [(HMDBackgroundSystemTaskRequest *)self minDurationBetweenInstances];
  [v5 setMinDurationBetweenInstances:?];
  [v5 setPriority:1];

  return v5;
}

- (HMDBackgroundSystemTaskRequest)initWithTaskRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(HMDBackgroundSystemTaskRequest *)self initWithIdentifier:v5];

  -[HMDBackgroundSystemTaskRequest setRequiresInexpensiveNetworkConnectivity:](v6, "setRequiresInexpensiveNetworkConnectivity:", [v4 requiresInexpensiveNetworkConnectivity]);
  -[HMDBackgroundSystemTaskRequest setRequiresSignificantUserInactivity:](v6, "setRequiresSignificantUserInactivity:", [v4 requiresSignificantUserInactivity]);
  [v4 interval];
  [(HMDBackgroundSystemTaskRequest *)v6 setInterval:?];
  [v4 minDurationBetweenInstances];
  v8 = v7;

  [(HMDBackgroundSystemTaskRequest *)v6 setMinDurationBetweenInstances:v8];
  return v6;
}

- (HMDBackgroundSystemTaskRequest)initWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDBackgroundSystemTaskRequest;
  v6 = [(HMDBackgroundSystemTaskRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
  }

  return v7;
}

@end