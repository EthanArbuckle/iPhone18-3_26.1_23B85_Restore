@interface NDProxyTodayFeedServiceConnection
+ (NDProxyTodayFeedServiceConnection)sharedInstance;
- (void)popInterest;
- (void)pushInterest;
- (void)withTodayFeedService:(id)a3;
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

- (void)withTodayFeedService:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_25BE2F400(v5, v4);

  _Block_release(v4);
}

- (void)pushInterest
{
  v3 = OBJC_IVAR___NDProxyTodayFeedServiceConnection_xpcConnectionLock;
  v4 = *(&self->super.isa + OBJC_IVAR___NDProxyTodayFeedServiceConnection_xpcConnectionLock);
  v9 = self;

  sub_25BE4B7AC();

  v5 = *(&v9->super.isa + OBJC_IVAR___NDProxyTodayFeedServiceConnection_xpcConnectionInterest);
  v6 = __OFADD__(v5, 1);
  v7 = (v5 + 1);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(&v9->super.isa + OBJC_IVAR___NDProxyTodayFeedServiceConnection_xpcConnectionInterest) = v7;
    v8 = *(&self->super.isa + v3);

    sub_25BE4B7BC();
  }
}

- (void)popInterest
{
  v2 = self;
  ProxyTodayFeedServiceConnection.popInterest()();
}

@end