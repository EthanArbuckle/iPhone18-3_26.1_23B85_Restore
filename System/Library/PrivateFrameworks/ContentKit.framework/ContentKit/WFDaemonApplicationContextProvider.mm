@interface WFDaemonApplicationContextProvider
- (WFDaemonApplicationContextProvider)initWithUserInterfaceType:(id)a3;
@end

@implementation WFDaemonApplicationContextProvider

- (WFDaemonApplicationContextProvider)initWithUserInterfaceType:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFDaemonApplicationContextProvider;
  v5 = [(WFDaemonApplicationContextProvider *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    userInterfaceType = v5->_userInterfaceType;
    v5->_userInterfaceType = v6;

    v8 = v5;
  }

  return v5;
}

@end