@interface WFDaemonApplicationContextProvider
- (WFDaemonApplicationContextProvider)initWithUserInterfaceType:(id)type;
@end

@implementation WFDaemonApplicationContextProvider

- (WFDaemonApplicationContextProvider)initWithUserInterfaceType:(id)type
{
  typeCopy = type;
  v10.receiver = self;
  v10.super_class = WFDaemonApplicationContextProvider;
  v5 = [(WFDaemonApplicationContextProvider *)&v10 init];
  if (v5)
  {
    v6 = [typeCopy copy];
    userInterfaceType = v5->_userInterfaceType;
    v5->_userInterfaceType = v6;

    v8 = v5;
  }

  return v5;
}

@end