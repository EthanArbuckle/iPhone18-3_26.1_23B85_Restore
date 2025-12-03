@interface FirstRestoreNotInProgressPrecondition
- (NSString)description;
- (_TtC16HealthExperience37FirstRestoreNotInProgressPrecondition)init;
- (void)cloudSyncObserver:(id)observer didFailToPopulateStatusWithError:(id)error;
- (void)cloudSyncObserverStatusUpdated:(id)updated status:(id)status;
- (void)dealloc;
@end

@implementation FirstRestoreNotInProgressPrecondition

- (void)dealloc
{
  selfCopy = self;

  sub_1D0FF4518();

  sub_1D0F9CC30();

  sub_1D0FF4528();

  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for FirstRestoreNotInProgressPrecondition();
  [(FirstRestoreNotInProgressPrecondition *)&v3 dealloc];
}

- (NSString)description
{
  selfCopy = self;
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

- (void)cloudSyncObserverStatusUpdated:(id)updated status:(id)status
{
  updatedCopy = updated;
  statusCopy = status;
  selfCopy = self;
  sub_1D0F9D71C(statusCopy);
}

- (void)cloudSyncObserver:(id)observer didFailToPopulateStatusWithError:(id)error
{
  observerCopy = observer;
  errorCopy = error;
  selfCopy = self;
  _s16HealthExperience37FirstRestoreNotInProgressPreconditionC17cloudSyncObserver_32didFailToPopulateStatusWithErrorySo07HKCloudjK0C_s0R0_ptF_0();
}

@end