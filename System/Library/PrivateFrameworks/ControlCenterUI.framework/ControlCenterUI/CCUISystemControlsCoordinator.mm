@interface CCUISystemControlsCoordinator
- (CCUISystemControlsCoordinator)init;
- (CCUISystemControlsCoordinator)initWithSystemHost:(id)host;
- (void)beginObservingSystemState;
- (void)dealloc;
- (void)endObservingSystemState;
@end

@implementation CCUISystemControlsCoordinator

- (CCUISystemControlsCoordinator)initWithSystemHost:(id)host
{
  *(&self->super.isa + OBJC_IVAR___CCUISystemControlsCoordinator_userInterfaceStyleMode) = 0;
  *(&self->super.isa + OBJC_IVAR___CCUISystemControlsCoordinator_silentModeObservation) = 0;
  *(&self->super.isa + OBJC_IVAR___CCUISystemControlsCoordinator_systemHost) = host;
  v4.receiver = self;
  v4.super_class = CCUISystemControlsCoordinator;
  swift_unknownObjectRetain();
  return [(CCUISystemControlsCoordinator *)&v4 init];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CCUISystemControlsCoordinator;
  selfCopy = self;
  [(CCUISystemControlsCoordinator *)&v3 dealloc];
}

- (void)beginObservingSystemState
{
  selfCopy = self;
  sub_21EA884F8();
}

- (void)endObservingSystemState
{
  selfCopy = self;
  sub_21EA88730();
}

- (CCUISystemControlsCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end