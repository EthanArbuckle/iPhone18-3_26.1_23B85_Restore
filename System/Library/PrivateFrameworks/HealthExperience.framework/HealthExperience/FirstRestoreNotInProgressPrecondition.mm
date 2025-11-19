@interface FirstRestoreNotInProgressPrecondition
- (NSString)description;
- (_TtC16HealthExperience37FirstRestoreNotInProgressPrecondition)init;
- (void)cloudSyncObserver:(id)a3 didFailToPopulateStatusWithError:(id)a4;
- (void)cloudSyncObserverStatusUpdated:(id)a3 status:(id)a4;
- (void)dealloc;
@end

@implementation FirstRestoreNotInProgressPrecondition

- (void)dealloc
{
  v2 = self;

  sub_1D0FF4518();

  sub_1D0F9CC30();

  sub_1D0FF4528();

  v3.receiver = v2;
  v3.super_class = type metadata accessor for FirstRestoreNotInProgressPrecondition();
  [(FirstRestoreNotInProgressPrecondition *)&v3 dealloc];
}

- (NSString)description
{
  v2 = self;
  sub_1D0F9CFBC();

  v3 = sub_1D0FF53E8();

  return v3;
}

- (_TtC16HealthExperience37FirstRestoreNotInProgressPrecondition)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)cloudSyncObserverStatusUpdated:(id)a3 status:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D0F9D71C(v7);
}

- (void)cloudSyncObserver:(id)a3 didFailToPopulateStatusWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  _s16HealthExperience37FirstRestoreNotInProgressPreconditionC17cloudSyncObserver_32didFailToPopulateStatusWithErrorySo07HKCloudjK0C_s0R0_ptF_0();
}

@end