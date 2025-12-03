@interface DriverApprovalState
- (DriverApprovalState)initWithSwiftDriverApprovalState:(id)state;
@end

@implementation DriverApprovalState

- (DriverApprovalState)initWithSwiftDriverApprovalState:(id)state
{
  stateCopy = state;
  v9.receiver = self;
  v9.super_class = DriverApprovalState;
  v6 = [(DriverApprovalState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_swiftDriverApprovalState, state);
  }

  return v7;
}

@end