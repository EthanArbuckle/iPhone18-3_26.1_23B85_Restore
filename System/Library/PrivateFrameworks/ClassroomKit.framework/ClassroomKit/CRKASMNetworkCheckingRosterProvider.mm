@interface CRKASMNetworkCheckingRosterProvider
- (CRKASMNetworkCheckingRosterProvider)initWithRosterProvider:(id)provider;
- (void)createCourseWithProperties:(id)properties completion:(id)completion;
- (void)removeCourseWithIdentifier:(id)identifier completion:(id)completion;
- (void)updateCourseWithIdentifier:(id)identifier properties:(id)properties completion:(id)completion;
@end

@implementation CRKASMNetworkCheckingRosterProvider

- (CRKASMNetworkCheckingRosterProvider)initWithRosterProvider:(id)provider
{
  v9.receiver = self;
  v9.super_class = CRKASMNetworkCheckingRosterProvider;
  v3 = [(CRKASMRosterProviderDecoratorBase *)&v9 initWithRosterProvider:provider];
  if (v3)
  {
    reachabilityForInternetConnection = [MEMORY[0x277CF9530] reachabilityForInternetConnection];
    networkReachability = v3->_networkReachability;
    v3->_networkReachability = reachabilityForInternetConnection;

    v6 = v3->_networkReachability;
    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [(CATNetworkReachability *)v6 scheduleInRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE640]];
  }

  return v3;
}

- (void)createCourseWithProperties:(id)properties completion:(id)completion
{
  propertiesCopy = properties;
  completionCopy = completion;
  networkReachability = [(CRKASMNetworkCheckingRosterProvider *)self networkReachability];
  isReachable = [networkReachability isReachable];

  if (isReachable)
  {
    underlyingRosterProvider = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
    [underlyingRosterProvider createCourseWithProperties:propertiesCopy completion:completionCopy];
  }

  else
  {
    underlyingRosterProvider = [objc_opt_class() reachabilityError];
    completionCopy[2](completionCopy, underlyingRosterProvider);
  }
}

- (void)updateCourseWithIdentifier:(id)identifier properties:(id)properties completion:(id)completion
{
  identifierCopy = identifier;
  propertiesCopy = properties;
  completionCopy = completion;
  networkReachability = [(CRKASMNetworkCheckingRosterProvider *)self networkReachability];
  isReachable = [networkReachability isReachable];

  if (isReachable)
  {
    underlyingRosterProvider = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
    [underlyingRosterProvider updateCourseWithIdentifier:identifierCopy properties:propertiesCopy completion:completionCopy];
  }

  else
  {
    underlyingRosterProvider = [objc_opt_class() reachabilityError];
    completionCopy[2](completionCopy, underlyingRosterProvider);
  }
}

- (void)removeCourseWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  networkReachability = [(CRKASMNetworkCheckingRosterProvider *)self networkReachability];
  isReachable = [networkReachability isReachable];

  if (isReachable)
  {
    underlyingRosterProvider = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
    [underlyingRosterProvider removeCourseWithIdentifier:identifierCopy completion:completionCopy];
  }

  else
  {
    underlyingRosterProvider = [objc_opt_class() reachabilityError];
    completionCopy[2](completionCopy, underlyingRosterProvider);
  }
}

@end