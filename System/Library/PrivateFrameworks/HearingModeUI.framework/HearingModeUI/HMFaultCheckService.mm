@interface HMFaultCheckService
- (_TtC13HearingModeUI19HMFaultCheckService)init;
- (int64_t)faultCheckResult;
@end

@implementation HMFaultCheckService

- (int64_t)faultCheckResult
{
  v2 = self;
  v3 = sub_252045FCC();

  return v3;
}

- (_TtC13HearingModeUI19HMFaultCheckService)init
{
  v3 = OBJC_IVAR____TtC13HearingModeUI19HMFaultCheckService_observer;
  type metadata accessor for HMFaultCheckService.FaultCheckObserver();
  v4 = swift_allocObject();
  *(v4 + 2) = 0xD000000000000012;
  *(v4 + 3) = 0x800000025206D430;
  *(&self->super.isa + v3) = v4;
  v5 = OBJC_IVAR____TtC13HearingModeUI19HMFaultCheckService_manager;
  *(&self->super.isa + v5) = sub_252063FE4();
  v7.receiver = self;
  v7.super_class = type metadata accessor for HMFaultCheckService();
  return [(HMFaultCheckService *)&v7 init];
}

@end