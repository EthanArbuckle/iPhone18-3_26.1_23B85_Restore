@interface FDAccountNotificationHandler
- (FDAccountNotificationHandler)init;
@end

@implementation FDAccountNotificationHandler

- (FDAccountNotificationHandler)init
{
  v6.receiver = self;
  v6.super_class = FDAccountNotificationHandler;
  v2 = [(FDAccountNotificationHandler *)&v6 init];
  if (v2)
  {
    v3 = +[_TtC13FinanceDaemon26AccountNotificationHandler makeHandler];
    wrappedHandler = v2->_wrappedHandler;
    v2->_wrappedHandler = v3;
  }

  return v2;
}

@end