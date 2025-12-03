@interface RemoteAlertSceneDelegate
- (_TtC9CoreIDVUI24RemoteAlertSceneDelegate)init;
- (uint64_t)remoteAlertSceneDidInvalidateForRemoteAlertServiceInvalidation:;
- (uint64_t)sceneDidDisconnect:;
- (uint64_t)sceneDidEnterBackground:;
- (uint64_t)sceneWillEnterForeground:;
- (uint64_t)sceneWillResignActive:;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)setWindow:(id)window;
@end

@implementation RemoteAlertSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC9CoreIDVUI24RemoteAlertSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC9CoreIDVUI24RemoteAlertSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_2458D4008(sceneCopy);
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_2458D4D30();
}

- (_TtC9CoreIDVUI24RemoteAlertSceneDelegate)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.isa + OBJC_IVAR____TtC9CoreIDVUI24RemoteAlertSceneDelegate_window) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(RemoteAlertSceneDelegate *)&v5 init];
}

- (uint64_t)sceneDidDisconnect:
{
  v0 = sub_24590F354();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v4 = sub_24590F344();
  v5 = sub_245910F54();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_2458CC378(0xD000000000000016, 0x800000024592E2D0, &v10);
    _os_log_impl(&dword_245767000, v4, v5, "IDVRemoteAlertSceneDelegate %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x245D77B40](v7, -1, -1);
    MEMORY[0x245D77B40](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

- (uint64_t)sceneWillResignActive:
{
  v0 = sub_24590F354();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v4 = sub_24590F344();
  v5 = sub_245910F54();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_2458CC378(0xD000000000000019, 0x800000024592E290, &v10);
    _os_log_impl(&dword_245767000, v4, v5, "IDVRemoteAlertSceneDelegate %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x245D77B40](v7, -1, -1);
    MEMORY[0x245D77B40](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

- (uint64_t)sceneWillEnterForeground:
{
  v0 = sub_24590F354();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v4 = sub_24590F344();
  v5 = sub_245910F54();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_2458CC378(0xD00000000000001CLL, 0x800000024592E270, &v10);
    _os_log_impl(&dword_245767000, v4, v5, "IDVRemoteAlertSceneDelegate %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x245D77B40](v7, -1, -1);
    MEMORY[0x245D77B40](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

- (uint64_t)sceneDidEnterBackground:
{
  v0 = sub_24590F354();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v4 = sub_24590F344();
  v5 = sub_245910F54();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_2458CC378(0xD00000000000001BLL, 0x800000024592E250, &v10);
    _os_log_impl(&dword_245767000, v4, v5, "IDVRemoteAlertSceneDelegate %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x245D77B40](v7, -1, -1);
    MEMORY[0x245D77B40](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

- (uint64_t)remoteAlertSceneDidInvalidateForRemoteAlertServiceInvalidation:
{
  v0 = sub_24590F354();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v4 = sub_24590F344();
  v5 = sub_245910F54();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_2458CC378(0xD000000000000041, 0x800000024592E200, &v10);
    _os_log_impl(&dword_245767000, v4, v5, "IDVRemoteAlertSceneDelegate %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x245D77B40](v7, -1, -1);
    MEMORY[0x245D77B40](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

@end