@interface MNOfflineCoordinator
- (MNNavigationSessionState)navigationSessionState;
- (_TtC10Navigation20MNOfflineCoordinator)init;
- (_TtP10Navigation28MNOfflineCoordinatorDelegate_)delegate;
- (void)setNavigationSessionState:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation MNOfflineCoordinator

- (void)setNavigationSessionState:(id)a3
{
  v4 = a3;
  v5 = self;
  MNOfflineCoordinator.navigationSessionState.setter(v4);
}

- (_TtP10Navigation28MNOfflineCoordinatorDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)start
{
  v2 = self;
  sub_1D31532C4();
}

- (_TtC10Navigation20MNOfflineCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (MNNavigationSessionState)navigationSessionState
{
  result = *(self + OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__navigationSessionState);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

- (void)stop
{
  if (qword_1EC75BE58 != -1)
  {
    swift_once();
  }

  v0 = sub_1D3276F80();
  __swift_project_value_buffer(v0, qword_1EC760758);
  v1 = sub_1D3276F60();
  v2 = sub_1D32773B0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D311E000, v1, v2, "Releasing control of offline service state.", v3, 2u);
    MEMORY[0x1D38B6000](v3, -1, -1);
  }

  v4 = [objc_opt_self() shared];
  [v4 setDelegate_];
  [v4 shutdownService];
}

@end