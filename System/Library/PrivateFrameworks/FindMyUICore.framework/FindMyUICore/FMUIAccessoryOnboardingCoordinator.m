@interface FMUIAccessoryOnboardingCoordinator
- (BOOL)shouldShowFMOnboardingFlow;
- (FMUIAccessoryOnboardingCoordinator)init;
- (FMUIAccessoryOnboardingCoordinatorDelegate)delegate;
- (void)setDelegate:(id)a3;
- (void)start;
@end

@implementation FMUIAccessoryOnboardingCoordinator

- (FMUIAccessoryOnboardingCoordinatorDelegate)delegate
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)a3
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

- (BOOL)shouldShowFMOnboardingFlow
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = MobileGestalt_get_current_device();
  if (v2)
  {
    v3 = v2;
    ApplePencil = MobileGestalt_get_deviceSupportsFindApplePencil();

    LOBYTE(v2) = ApplePencil;
  }

  else
  {
    __break(1u);
  }

  return v2;
}

- (void)start
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  AccessoryOnboardingCoordinator.start()();
}

- (FMUIAccessoryOnboardingCoordinator)init
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end