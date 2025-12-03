@interface SceneDelegate
- (_TtC16MagnifierSupport13SceneDelegate)init;
- (uint64_t)sceneDidBecomeActive:;
- (uint64_t)sceneWillResignActive:;
- (void)scene:(id)scene continueUserActivity:(id)activity;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidEnterBackground:;
- (void)sceneWillEnterForeground:;
- (void)setWindow:(id)window;
- (void)updateAppearanceForReduceTransparency:(id)transparency;
- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler;
@end

@implementation SceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC16MagnifierSupport13SceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC16MagnifierSupport13SceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_257E4D800(sceneCopy, optionsCopy);
}

- (void)scene:(id)scene continueUserActivity:(id)activity
{
  sceneCopy = scene;
  activityCopy = activity;
  selfCopy = self;
  sub_257E4E0E4(activityCopy);
}

- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  itemCopy = item;
  selfCopy = self;
  sub_257E493A4(item);
  v7[2](v7, 1);

  _Block_release(v7);
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  sub_257BD2C2C(0, &qword_281543F58);
  sub_257E4D770(&qword_281543F50, &qword_281543F58);
  v6 = sub_257ECFA70();
  sceneCopy = scene;
  selfCopy = self;
  sub_257E49A10(sceneCopy, v6);
}

- (void)updateAppearanceForReduceTransparency:(id)transparency
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9E30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  if (transparency)
  {
    sub_257ECC7E0();
    v8 = sub_257ECC810();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_257ECC810();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  selfCopy = self;
  sub_257E4D264();

  sub_257BE4084(v7, &qword_27F8F9E30);
}

- (_TtC16MagnifierSupport13SceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC16MagnifierSupport13SceneDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SceneDelegate();
  return [(SceneDelegate *)&v3 init];
}

- (uint64_t)sceneDidBecomeActive:
{
  v0 = sub_257ECD990();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD4E0();
  v8 = sub_257ECDA20();
  v9 = sub_257ECFBD0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_257BAC000, v8, v9, "Scene Became Active", v10, 2u);
    MEMORY[0x259C74820](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  if (qword_27F8F45A8 != -1)
  {
    swift_once();
  }

  v11 = sub_257ECD9C0();
  __swift_project_value_buffer(v11, qword_27F8F5D90);
  sub_257ECD980();
  v12 = sub_257ECD9A0();
  v13 = sub_257ECFDD0();
  if (sub_257ED0090())
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_257ECD970();
    _os_signpost_emit_with_name_impl(&dword_257BAC000, v12, v13, v15, "SceneBecameActive", "", v14, 2u);
    MEMORY[0x259C74820](v14, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

- (uint64_t)sceneWillResignActive:
{
  v0 = sub_257ECDA30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sharedApplication = [objc_opt_self() sharedApplication];
  [sharedApplication setShortcutItems_];

  sub_257ECD4E0();
  v5 = sub_257ECDA20();
  v6 = sub_257ECFBD0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_257BAC000, v5, v6, "Scene Will Resign Active", v7, 2u);
    MEMORY[0x259C74820](v7, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

- (void)sceneWillEnterForeground:
{
  v0 = sub_257ECD990();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD4E0();
  v8 = sub_257ECDA20();
  v9 = sub_257ECFBD0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_257BAC000, v8, v9, "Scene Will Enter Foreground", v10, 2u);
    MEMORY[0x259C74820](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  if (qword_27F8F45A8 != -1)
  {
    swift_once();
  }

  v11 = sub_257ECD9C0();
  __swift_project_value_buffer(v11, qword_27F8F5D90);
  sub_257ECD980();
  v12 = sub_257ECD9A0();
  v13 = sub_257ECFDD0();
  if (sub_257ED0090())
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_257ECD970();
    _os_signpost_emit_with_name_impl(&dword_257BAC000, v12, v13, v15, "SceneEnterFG", "", v14, 2u);
    MEMORY[0x259C74820](v14, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  currentDevice = [objc_opt_self() currentDevice];
  [currentDevice beginGeneratingDeviceOrientationNotifications];
}

- (void)sceneDidEnterBackground:
{
  v0 = sub_257ECDA30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD4E0();
  v4 = sub_257ECDA20();
  v5 = sub_257ECFBD0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_257BAC000, v4, v5, "Scene Did Enter Background", v6, 2u);
    MEMORY[0x259C74820](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  currentDevice = [objc_opt_self() currentDevice];
  [currentDevice endGeneratingDeviceOrientationNotifications];
}

@end