@interface CCUISystemControlsCoordinator
- (CCUISystemControlsCoordinator)init;
- (CCUISystemControlsCoordinator)initWithSystemHost:(id)a3;
- (void)beginObservingSystemState;
- (void)dealloc;
- (void)endObservingSystemState;
@end

@implementation CCUISystemControlsCoordinator

- (CCUISystemControlsCoordinator)initWithSystemHost:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___CCUISystemControlsCoordinator_userInterfaceStyleMode) = 0;
  *(&self->super.isa + OBJC_IVAR___CCUISystemControlsCoordinator_silentModeObservation) = 0;
  *(&self->super.isa + OBJC_IVAR___CCUISystemControlsCoordinator_systemHost) = a3;
  v4.receiver = self;
  v4.super_class = CCUISystemControlsCoordinator;
  swift_unknownObjectRetain();
  return [(CCUISystemControlsCoordinator *)&v4 init];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CCUISystemControlsCoordinator;
  v2 = self;
  [(CCUISystemControlsCoordinator *)&v3 dealloc];
}

- (void)beginObservingSystemState
{
  v2 = self;
  sub_21EA884F8();
}

- (void)endObservingSystemState
{
  v2 = self;
  sub_21EA88730();
}

- (CCUISystemControlsCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end