@interface NDProxyTodayFeedServiceConnection
+ (NDProxyTodayFeedServiceConnection)sharedInstance;
- (void)popInterest;
- (void)pushInterest;
- (void)withTodayFeedService:(id)service;
@end

@implementation NDProxyTodayFeedServiceConnection

+ (NDProxyTodayFeedServiceConnection)sharedInstance
{
  if (qword_280C8C880 != -1)
  {
    swift_once();
  }

  v3 = qword_280C8C888;

  return v3;
}

- (void)withTodayFeedService:(id)service
{
  v4 = _Block_copy(service);
  _Block_copy(v4);
  selfCopy = self;
  sub_25BE2F400(selfCopy, v4);

  _Block_release(v4);
}

- (void)pushInterest
{
  v3 = OBJC_IVAR___NDProxyTodayFeedServiceConnection_xpcConnectionLock;
  v4 = *(&self->super.isa + OBJC_IVAR___NDProxyTodayFeedServiceConnection_xpcConnectionLock);
  selfCopy = self;

  sub_25BE4B7AC();

  v5 = *(&selfCopy->super.isa + OBJC_IVAR___NDProxyTodayFeedServiceConnection_xpcConnectionInterest);
  v6 = __OFADD__(v5, 1);
  v7 = (v5 + 1);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(&selfCopy->super.isa + OBJC_IVAR___NDProxyTodayFeedServiceConnection_xpcConnectionInterest) = v7;
    v8 = *(&self->super.isa + v3);

    sub_25BE4B7BC();
  }
}

- (void)popInterest
{
  selfCopy = self;
  ProxyTodayFeedServiceConnection.popInterest()();
}

@end