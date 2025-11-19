@interface MockDoorLockCluster
- (_TtC13HomeDataModel19MockDoorLockCluster)initWithDevice:(id)a3 endpoint:(unsigned __int16)a4 queue:(id)a5;
- (_TtC13HomeDataModel19MockDoorLockCluster)initWithDevice:(id)a3 endpointID:(id)a4 queue:(id)a5;
- (void)writeAttributeAutoRelockTimeWithValue:(id)a3 expectedValueInterval:(id)a4;
@end

@implementation MockDoorLockCluster

- (void)writeAttributeAutoRelockTimeWithValue:(id)a3 expectedValueInterval:(id)a4
{
  v5 = sub_1D1E675FC();
  v6 = self;
  sub_1D19F4834(v5, v7);
  swift_beginAccess();
  sub_1D1B0DAF8(v7, 35);
  swift_endAccess();
}

- (_TtC13HomeDataModel19MockDoorLockCluster)initWithDevice:(id)a3 endpointID:(id)a4 queue:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC13HomeDataModel19MockDoorLockCluster)initWithDevice:(id)a3 endpoint:(unsigned __int16)a4 queue:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end