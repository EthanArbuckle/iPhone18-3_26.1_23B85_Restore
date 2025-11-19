@interface DockCoreObservation
- (_TtC11DockKitCore19DockCoreObservation)init;
- (_TtC11DockKitCore19DockCoreObservation)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DockCoreObservation

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_22461D514(v4);
}

- (_TtC11DockKitCore19DockCoreObservation)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_22461F2C8(v3);

  return v4;
}

- (_TtC11DockKitCore19DockCoreObservation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end