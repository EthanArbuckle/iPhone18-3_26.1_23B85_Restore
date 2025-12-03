@interface HMDBackgroundSystemTaskRequest
- (BGRepeatingSystemTaskRequest)taskRequest;
- (HMDBackgroundSystemTaskRequest)initWithIdentifier:(id)identifier;
- (HMDBackgroundSystemTaskRequest)initWithTaskRequest:(id)request;
- (id)attributeDescriptions;
@end

@implementation HMDBackgroundSystemTaskRequest

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  identifier = [(HMDBackgroundSystemTaskRequest *)self identifier];
  v5 = [v3 initWithName:@"Identifier" value:identifier];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BGRepeatingSystemTaskRequest)taskRequest
{
  v3 = objc_alloc(MEMORY[0x277CF07D8]);
  identifier = [(HMDBackgroundSystemTaskRequest *)self identifier];
  v5 = [v3 initWithIdentifier:identifier];

  [v5 setRequiresInexpensiveNetworkConnectivity:{-[HMDBackgroundSystemTaskRequest requiresInexpensiveNetworkConnectivity](self, "requiresInexpensiveNetworkConnectivity")}];
  [v5 setRequiresSignificantUserInactivity:{-[HMDBackgroundSystemTaskRequest requiresSignificantUserInactivity](self, "requiresSignificantUserInactivity")}];
  [(HMDBackgroundSystemTaskRequest *)self interval];
  [v5 setInterval:?];
  [(HMDBackgroundSystemTaskRequest *)self minDurationBetweenInstances];
  [v5 setMinDurationBetweenInstances:?];
  [v5 setPriority:1];

  return v5;
}

- (HMDBackgroundSystemTaskRequest)initWithTaskRequest:(id)request
{
  requestCopy = request;
  identifier = [requestCopy identifier];
  v6 = [(HMDBackgroundSystemTaskRequest *)self initWithIdentifier:identifier];

  -[HMDBackgroundSystemTaskRequest setRequiresInexpensiveNetworkConnectivity:](v6, "setRequiresInexpensiveNetworkConnectivity:", [requestCopy requiresInexpensiveNetworkConnectivity]);
  -[HMDBackgroundSystemTaskRequest setRequiresSignificantUserInactivity:](v6, "setRequiresSignificantUserInactivity:", [requestCopy requiresSignificantUserInactivity]);
  [requestCopy interval];
  [(HMDBackgroundSystemTaskRequest *)v6 setInterval:?];
  [requestCopy minDurationBetweenInstances];
  v8 = v7;

  [(HMDBackgroundSystemTaskRequest *)v6 setMinDurationBetweenInstances:v8];
  return v6;
}

- (HMDBackgroundSystemTaskRequest)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = HMDBackgroundSystemTaskRequest;
  v6 = [(HMDBackgroundSystemTaskRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
  }

  return v7;
}

@end