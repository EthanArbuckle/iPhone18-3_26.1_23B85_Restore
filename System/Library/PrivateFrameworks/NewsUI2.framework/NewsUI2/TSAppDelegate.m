@interface TSAppDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5;
- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (UIWindow)window;
- (id)createBridgedAppResolver;
- (id)createCarPlaySceneContainer;
- (id)createSceneContainer;
- (id)forwardingTargetForSelector:(SEL)a3;
- (void)application:(id)a3 didReceiveRemoteNotification:(id)a4 fetchCompletionHandler:(id)a5;
- (void)application:(id)a3 handleIntent:(id)a4 completionHandler:(id)a5;
- (void)application:(id)a3 performFetchWithCompletionHandler:(id)a4;
- (void)buildMenuWithBuilder:(id)a3;
- (void)didCommitFirstFrame;
- (void)didEnterBackground;
- (void)setWindow:(id)a3;
- (void)validateCommand:(id)a3;
- (void)willEnterForeground;
@end

@implementation TSAppDelegate

- (id)createBridgedAppResolver
{
  v2 = self;
  sub_2186C6E00(v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3 = sub_219BE1DA4();

  __swift_destroy_boxed_opaque_existential_1(v5);

  return v3;
}

- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4
{
  if (a4)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_2187A5670(&qword_27CC0A758, type metadata accessor for LaunchOptionsKey);
    sub_219BF5214();
  }

  v6 = a3;
  v7 = self;
  v8 = _s7NewsUI211AppDelegateC11application_30willFinishLaunchingWithOptionsSbSo13UIApplicationC_SDySo0k6LaunchJ3KeyaypGSgtF_0();

  return v8 & 1;
}

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v4 = a4;
  if (a4)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_2187A5670(&qword_27CC0A758, type metadata accessor for LaunchOptionsKey);
    v4 = sub_219BF5214();
  }

  v7 = a3;
  v8 = self;
  v9 = sub_2187A5BE8(v4);

  return v9 & 1;
}

- (id)createSceneContainer
{
  v3 = sub_219BE6224();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self;
  sub_2186C72B8();
  (*(v4 + 104))(v6, *MEMORY[0x277D6D550], v3);
  v8 = sub_219BE6B24();

  (*(v4 + 8))(v6, v3);

  return v8;
}

- (void)didCommitFirstFrame
{
  v2 = self;
  AppDelegate.didCommitFirstFrame()();
}

- (UIWindow)window
{
  v3 = OBJC_IVAR___TSAppDelegate_window;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setWindow:(id)a3
{
  v5 = OBJC_IVAR___TSAppDelegate_window;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (id)createCarPlaySceneContainer
{
  v2 = self;
  sub_2186C72B8();
  v3 = sub_219BE6B04();

  return v3;
}

- (void)didEnterBackground
{
  v2 = self;
  sub_2191148D4(MEMORY[0x277D6CE50]);
}

- (void)willEnterForeground
{
  v2 = self;
  sub_2191148D4(MEMORY[0x277D6CE58]);
}

- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5
{
  v7 = sub_219BDB954();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDB8B4();
  type metadata accessor for OpenURLOptionsKey(0);
  sub_2187A5670(&unk_280E8DC50, type metadata accessor for OpenURLOptionsKey);
  v11 = sub_219BF5214();
  v12 = a3;
  v13 = self;
  sub_219115F30(v10, v11);
  v15 = v14;

  (*(v8 + 8))(v10, v7);
  return v15 & 1;
}

- (void)application:(id)a3 didReceiveRemoteNotification:(id)a4 fetchCompletionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_219BF5214();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = a3;
  v11 = self;
  sub_219116344(v8, sub_219116B34, v9);
}

- (void)application:(id)a3 handleIntent:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_21911654C(v10, v11, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)application:(id)a3 performFetchWithCompletionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_219116748(sub_2189A6A5C, v7);
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  v4 = self;
  AppDelegate.forwardingTarget(for:)(a3, v12);

  v5 = v13;
  if (v13)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = *(v5 - 8);
    MEMORY[0x28223BE20](v6);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_219BF78D4();
    (*(v7 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)buildMenuWithBuilder:(id)a3
{
  swift_unknownObjectRetain();
  v6 = self;
  v5 = sub_219114120();
  [v5 buildMenuWithBuilder_];

  swift_unknownObjectRelease();
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_219114120();
  swift_getObjectType();
  sub_219114200();
  v7 = sub_2191142D8();
  v8[3] = sub_219BDD274();
  v8[4] = sub_2187A5670(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
  v8[0] = v7;
  sub_219BE6734();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v8);
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = AppDelegate.canPerformAction(_:withSender:)(a3, v10);

  sub_21874546C(v10, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186C5500);
  return v8 & 1;
}

@end