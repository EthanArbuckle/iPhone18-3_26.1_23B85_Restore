@interface ProfileConnectionObserver
- (_TtC17NanoControlCenter25ProfileConnectionObserver)init;
- (void)dealloc;
- (void)profileConnectionDidReceivePasscodeChangedNotification:(id)notification userInfo:(id)info;
@end

@implementation ProfileConnectionObserver

- (_TtC17NanoControlCenter25ProfileConnectionObserver)init
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_25AF45208();

  return v2;
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  sharedConnection = [v3 sharedConnection];
  if (sharedConnection)
  {
    v6 = sharedConnection;
    [sharedConnection unregisterObserver_];

    v7.receiver = selfCopy;
    v7.super_class = type metadata accessor for ProfileConnectionObserver();
    [(ProfileConnectionObserver *)&v7 dealloc];
  }

  else
  {
    __break(1u);
  }
}

- (void)profileConnectionDidReceivePasscodeChangedNotification:(id)notification userInfo:(id)info
{
  if (info)
  {
    sub_25B0058C4();
  }

  notificationCopy = notification;
  selfCopy = self;
  sub_25AF456B8();
}

@end