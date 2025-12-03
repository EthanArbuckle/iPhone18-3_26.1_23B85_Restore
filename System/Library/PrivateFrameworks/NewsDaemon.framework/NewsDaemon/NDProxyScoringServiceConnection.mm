@interface NDProxyScoringServiceConnection
+ (NDProxyScoringServiceConnection)sharedInstance;
- (void)popInterest;
- (void)pushInterest;
@end

@implementation NDProxyScoringServiceConnection

+ (NDProxyScoringServiceConnection)sharedInstance
{
  if (qword_280C8CB98 != -1)
  {
    swift_once();
  }

  v3 = qword_280C8C9C0;

  return v3;
}

- (void)pushInterest
{
  v3 = OBJC_IVAR___NDProxyScoringServiceConnection_xpcConnectionLock;
  v4 = *(&self->super.isa + OBJC_IVAR___NDProxyScoringServiceConnection_xpcConnectionLock);
  selfCopy = self;

  sub_25BE4B7AC();

  v5 = *(&selfCopy->super.isa + OBJC_IVAR___NDProxyScoringServiceConnection_xpcConnectionInterest);
  v6 = __OFADD__(v5, 1);
  v7 = (v5 + 1);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(&selfCopy->super.isa + OBJC_IVAR___NDProxyScoringServiceConnection_xpcConnectionInterest) = v7;
    v8 = *(&self->super.isa + v3);

    sub_25BE4B7BC();
  }
}

- (void)popInterest
{
  selfCopy = self;
  ProxyScoringServiceConnection.popInterest()();
}

@end