@interface DriverApprovalState
- (DriverApprovalState)initWithSwiftDriverApprovalState:(id)a3;
@end

@implementation DriverApprovalState

- (DriverApprovalState)initWithSwiftDriverApprovalState:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DriverApprovalState;
  v6 = [(DriverApprovalState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_swiftDriverApprovalState, a3);
  }

  return v7;
}

@end