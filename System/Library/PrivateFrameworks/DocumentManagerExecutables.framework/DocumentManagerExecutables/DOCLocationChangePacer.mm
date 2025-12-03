@interface DOCLocationChangePacer
- (_TtC26DocumentManagerExecutables22DOCLocationChangePacer)init;
- (_TtC26DocumentManagerExecutables22DOCLocationChangePacer)initWithHierarchyController:(id)controller;
- (void)performPendingLocationChange;
@end

@implementation DOCLocationChangePacer

- (_TtC26DocumentManagerExecutables22DOCLocationChangePacer)initWithHierarchyController:(id)controller
{
  v4 = (&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLocationChangePacer_pendingLocationChange);
  *v4 = 0;
  v4[1] = 0;
  controllerCopy = controller;
  Date.init()();
  *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLocationChangePacer_hierarchyController) = controllerCopy;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCLocationChangePacer();
  return [(DOCLocationChangePacer *)&v7 init];
}

- (void)performPendingLocationChange
{
  selfCopy = self;
  DOCLocationChangePacer.performPendingLocationChange()();
}

- (_TtC26DocumentManagerExecutables22DOCLocationChangePacer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end