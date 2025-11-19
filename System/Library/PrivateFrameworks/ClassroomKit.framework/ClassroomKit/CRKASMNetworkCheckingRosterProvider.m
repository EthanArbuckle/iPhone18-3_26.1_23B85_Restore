@interface CRKASMNetworkCheckingRosterProvider
- (CRKASMNetworkCheckingRosterProvider)initWithRosterProvider:(id)a3;
- (void)createCourseWithProperties:(id)a3 completion:(id)a4;
- (void)removeCourseWithIdentifier:(id)a3 completion:(id)a4;
- (void)updateCourseWithIdentifier:(id)a3 properties:(id)a4 completion:(id)a5;
@end

@implementation CRKASMNetworkCheckingRosterProvider

- (CRKASMNetworkCheckingRosterProvider)initWithRosterProvider:(id)a3
{
  v9.receiver = self;
  v9.super_class = CRKASMNetworkCheckingRosterProvider;
  v3 = [(CRKASMRosterProviderDecoratorBase *)&v9 initWithRosterProvider:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CF9530] reachabilityForInternetConnection];
    networkReachability = v3->_networkReachability;
    v3->_networkReachability = v4;

    v6 = v3->_networkReachability;
    v7 = [MEMORY[0x277CBEB88] mainRunLoop];
    [(CATNetworkReachability *)v6 scheduleInRunLoop:v7 forMode:*MEMORY[0x277CBE640]];
  }

  return v3;
}

- (void)createCourseWithProperties:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(CRKASMNetworkCheckingRosterProvider *)self networkReachability];
  v8 = [v7 isReachable];

  if (v8)
  {
    v9 = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
    [v9 createCourseWithProperties:v10 completion:v6];
  }

  else
  {
    v9 = [objc_opt_class() reachabilityError];
    v6[2](v6, v9);
  }
}

- (void)updateCourseWithIdentifier:(id)a3 properties:(id)a4 completion:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(CRKASMNetworkCheckingRosterProvider *)self networkReachability];
  v11 = [v10 isReachable];

  if (v11)
  {
    v12 = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
    [v12 updateCourseWithIdentifier:v13 properties:v8 completion:v9];
  }

  else
  {
    v12 = [objc_opt_class() reachabilityError];
    v9[2](v9, v12);
  }
}

- (void)removeCourseWithIdentifier:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(CRKASMNetworkCheckingRosterProvider *)self networkReachability];
  v8 = [v7 isReachable];

  if (v8)
  {
    v9 = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
    [v9 removeCourseWithIdentifier:v10 completion:v6];
  }

  else
  {
    v9 = [objc_opt_class() reachabilityError];
    v6[2](v6, v9);
  }
}

@end