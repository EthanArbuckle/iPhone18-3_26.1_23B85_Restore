@interface MRDSystemGroupSessionRemoteControlService
- (MRDSystemGroupSession)activeGroupSession;
- (MRDSystemGroupSessionRemoteControlService)init;
- (MRDSystemGroupSessionRemoteControlService)initWithDelegate:(id)delegate;
- (void)start;
- (void)startAdvertisement;
- (void)stop;
- (void)stopAdvertisement;
@end

@implementation MRDSystemGroupSessionRemoteControlService

- (MRDSystemGroupSession)activeGroupSession
{
  v2 = *(&self->super.isa + OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_executionQueue);
  selfCopy = self;
  sub_1001BC5A8(&qword_100521D08, &unk_10044F120);
  OS_dispatch_queue.sync<A>(execute:)();

  return v5;
}

- (MRDSystemGroupSessionRemoteControlService)initWithDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  v4 = sub_1001DF7D8(delegate);
  swift_unknownObjectRelease();
  return v4;
}

- (void)start
{
  selfCopy = self;
  sub_1001DA3B8();
}

- (void)stop
{
  selfCopy = self;
  sub_1001DB164();
}

- (void)startAdvertisement
{
  selfCopy = self;
  sub_1001DB47C();
}

- (void)stopAdvertisement
{
  selfCopy = self;
  sub_1001DC8DC();
}

- (MRDSystemGroupSessionRemoteControlService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end