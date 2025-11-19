@interface ProfileConnectionObserver
- (_TtC17NanoControlCenter25ProfileConnectionObserver)init;
- (void)dealloc;
- (void)profileConnectionDidReceivePasscodeChangedNotification:(id)a3 userInfo:(id)a4;
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
  v4 = self;
  v5 = [v3 sharedConnection];
  if (v5)
  {
    v6 = v5;
    [v5 unregisterObserver_];

    v7.receiver = v4;
    v7.super_class = type metadata accessor for ProfileConnectionObserver();
    [(ProfileConnectionObserver *)&v7 dealloc];
  }

  else
  {
    __break(1u);
  }
}

- (void)profileConnectionDidReceivePasscodeChangedNotification:(id)a3 userInfo:(id)a4
{
  if (a4)
  {
    sub_25B0058C4();
  }

  v6 = a3;
  v7 = self;
  sub_25AF456B8();
}

@end