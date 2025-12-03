@interface PresenceDataSource
- (_TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource)init;
- (void)presentDevicesChangedForPresence:(id)presence;
@end

@implementation PresenceDataSource

- (void)presentDevicesChangedForPresence:(id)presence
{
  presenceCopy = presence;
  selfCopy = self;
  sub_100216E90(presenceCopy);
}

- (_TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end