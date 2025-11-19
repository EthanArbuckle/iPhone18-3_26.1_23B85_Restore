@interface DOCLocationChangePacer
- (_TtC26DocumentManagerExecutables22DOCLocationChangePacer)init;
- (_TtC26DocumentManagerExecutables22DOCLocationChangePacer)initWithHierarchyController:(id)a3;
- (void)performPendingLocationChange;
@end

@implementation DOCLocationChangePacer

- (_TtC26DocumentManagerExecutables22DOCLocationChangePacer)initWithHierarchyController:(id)a3
{
  v4 = (&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLocationChangePacer_pendingLocationChange);
  *v4 = 0;
  v4[1] = 0;
  v5 = a3;
  Date.init()();
  *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLocationChangePacer_hierarchyController) = v5;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCLocationChangePacer();
  return [(DOCLocationChangePacer *)&v7 init];
}

- (void)performPendingLocationChange
{
  v2 = self;
  DOCLocationChangePacer.performPendingLocationChange()();
}

- (_TtC26DocumentManagerExecutables22DOCLocationChangePacer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end