@interface DockCoreObservation
- (_TtC11DockKitCore19DockCoreObservation)init;
- (_TtC11DockKitCore19DockCoreObservation)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DockCoreObservation

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_22461D514(coderCopy);
}

- (_TtC11DockKitCore19DockCoreObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_22461F2C8(coderCopy);

  return v4;
}

- (_TtC11DockKitCore19DockCoreObservation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end