@interface DBDashboardSceneManager
- (DBFocusMovementActionHandling)focusMovementActionHandler;
- (_TtC9DashBoard23DBDashboardSceneManager)init;
- (_TtC9DashBoard23DBDashboardSceneManager)initWithEnvironment:(id)a3 iconProvider:(id)a4 sceneWorkspaceIdentifier:(id)a5;
- (id)scene:(id)a3 handleActions:(id)a4;
- (id)sceneForApplicationEntity:(id)a3;
- (void)_updateWallpaper;
- (void)applicationController:(id)a3 addedApplications:(id)a4 updatedApplications:(id)a5 removedApplications:(id)a6;
- (void)environmentConfiguration:(id)a3 appearanceStyleDidChange:(int64_t)a4;
- (void)environmentConfiguration:(id)a3 mapsAppearanceStyleDidChange:(int64_t)a4;
- (void)invalidate;
- (void)processMonitor:(id)a3 didHandleDeathOfBundleIdentifier:(id)a4;
- (void)processMonitor:(id)a3 shouldHandleDeathOfBundleIdentifier:(id)a4 isCrash:(BOOL)a5;
- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4;
- (void)startObservingNavigationApplicationProcesses;
- (void)thermalMonitorLevelDidChange:(id)a3;
- (void)updateApplicationSceneFrames;
@end

@implementation DBDashboardSceneManager

- (id)sceneForApplicationEntity:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = DBDashboardSceneManager.sceneForApplicationEntity(_:)(v4);

  return v6;
}

- (DBFocusMovementActionHandling)focusMovementActionHandler
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC9DashBoard23DBDashboardSceneManager)initWithEnvironment:(id)a3 iconProvider:(id)a4 sceneWorkspaceIdentifier:(id)a5
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return DBDashboardSceneManager.init(environment:iconProvider:sceneWorkspaceIdentifier:)(a3, a4, a5);
}

- (void)updateApplicationSceneFrames
{
  v2 = self;
  DBDashboardSceneManager.updateApplicationSceneFrames()();
}

- (void)startObservingNavigationApplicationProcesses
{
  v2 = self;
  DBDashboardSceneManager.startObservingNavigationApplicationProcesses()();
}

- (_TtC9DashBoard23DBDashboardSceneManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)invalidate
{
  v2 = self;
  DBDashboardSceneManager.invalidate()();
}

- (void)applicationController:(id)a3 addedApplications:(id)a4 updatedApplications:(id)a5 removedApplications:(id)a6
{
  v7 = a3;
  v8 = self;
  _s9DashBoard23DBDashboardSceneManagerC21applicationController_17addedApplications07updatedI007removedI0ySo013DBApplicationG0C_ShySo0L0CGA2LtF_0();
}

- (void)environmentConfiguration:(id)a3 appearanceStyleDidChange:(int64_t)a4
{
  v5 = self;
  sub_248383DC0();
  v4 = *sub_24827BD58();
  sub_248382A40();

  sub_2482B56AC();
}

- (void)environmentConfiguration:(id)a3 mapsAppearanceStyleDidChange:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_2482B91E8(a4);
}

- (void)processMonitor:(id)a3 shouldHandleDeathOfBundleIdentifier:(id)a4 isCrash:(BOOL)a5
{
  v7 = sub_248383960();
  v9 = v8;
  v10 = a3;
  v11 = self;
  sub_2482B9D34(v7, v9);
}

- (void)processMonitor:(id)a3 didHandleDeathOfBundleIdentifier:(id)a4
{
  v6 = sub_248383960();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_2482BA7B8(v6, v8);
}

- (void)thermalMonitorLevelDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  DBDashboardSceneManager.thermalMonitorLevelDidChange(_:)(v4);
}

- (id)scene:(id)a3 handleActions:(id)a4
{
  sub_24814FB28(0, &unk_27EE91610);
  sub_248151298(&qword_27EE90E30, &unk_27EE91610);
  v6 = sub_248383C80();
  v7 = a3;
  v8 = self;
  DBDashboardSceneManager.scene(_:handle:)(v7, v6);
  v10 = v9;

  if (v10)
  {
    v11 = sub_248383C70();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  _s9DashBoard23DBDashboardSceneManagerC18sceneDidInvalidate_7contextySo7FBSceneC_So25FBSSceneTransitionContextCSgtF_0();
}

- (void)_updateWallpaper
{
  v3 = self;
  sub_248383DC0();
  v2 = *sub_24827BD58();
  sub_248382A40();

  sub_2482B56AC();
}

@end