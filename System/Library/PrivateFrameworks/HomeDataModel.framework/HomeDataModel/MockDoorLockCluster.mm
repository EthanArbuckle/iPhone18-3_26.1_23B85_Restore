@interface MockDoorLockCluster
- (_TtC13HomeDataModel19MockDoorLockCluster)initWithDevice:(id)device endpoint:(unsigned __int16)endpoint queue:(id)queue;
- (_TtC13HomeDataModel19MockDoorLockCluster)initWithDevice:(id)device endpointID:(id)d queue:(id)queue;
- (void)writeAttributeAutoRelockTimeWithValue:(id)value expectedValueInterval:(id)interval;
@end

@implementation MockDoorLockCluster

- (void)writeAttributeAutoRelockTimeWithValue:(id)value expectedValueInterval:(id)interval
{
  v5 = sub_1D1E675FC();
  selfCopy = self;
  sub_1D19F4834(v5, v7);
  swift_beginAccess();
  sub_1D1B0DAF8(v7, 35);
  swift_endAccess();
}

- (_TtC13HomeDataModel19MockDoorLockCluster)initWithDevice:(id)device endpointID:(id)d queue:(id)queue
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC13HomeDataModel19MockDoorLockCluster)initWithDevice:(id)device endpoint:(unsigned __int16)endpoint queue:(id)queue
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end