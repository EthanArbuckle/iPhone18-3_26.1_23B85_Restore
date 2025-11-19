@interface AccountNotificationHandler
+ (id)makeHandler;
- (_TtC13FinanceDaemon26AccountNotificationHandler)init;
- (void)primaryAppleAccountWasAdded;
- (void)primaryAppleAccountWasDeleted;
@end

@implementation AccountNotificationHandler

+ (id)makeHandler
{
  v2 = sub_226B1B4E0();

  return v2;
}

- (void)primaryAppleAccountWasAdded
{
  v2 = self;
  sub_226B1B0E0();
}

- (void)primaryAppleAccountWasDeleted
{
  v2 = self;
  sub_226B1B134();
}

- (_TtC13FinanceDaemon26AccountNotificationHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end