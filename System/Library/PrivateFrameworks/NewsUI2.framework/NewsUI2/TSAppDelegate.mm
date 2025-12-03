@interface TSAppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)application:(id)application openURL:(id)l options:(id)options;
- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (UIWindow)window;
- (id)createBridgedAppResolver;
- (id)createCarPlaySceneContainer;
- (id)createSceneContainer;
- (id)forwardingTargetForSelector:(SEL)selector;
- (void)application:(id)application didReceiveRemoteNotification:(id)notification fetchCompletionHandler:(id)handler;
- (void)application:(id)application handleIntent:(id)intent completionHandler:(id)handler;
- (void)application:(id)application performFetchWithCompletionHandler:(id)handler;
- (void)buildMenuWithBuilder:(id)builder;
- (void)didCommitFirstFrame;
- (void)didEnterBackground;
- (void)setWindow:(id)window;
- (void)validateCommand:(id)command;
- (void)willEnterForeground;
@end

@implementation TSAppDelegate

- (id)createBridgedAppResolver
{
  selfCopy = self;
  sub_2186C6E00(v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3 = sub_219BE1DA4();

  __swift_destroy_boxed_opaque_existential_1(v5);

  return v3;
}

- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options
{
  if (options)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_2187A5670(&qword_27CC0A758, type metadata accessor for LaunchOptionsKey);
    sub_219BF5214();
  }

  applicationCopy = application;
  selfCopy = self;
  v8 = _s7NewsUI211AppDelegateC11application_30willFinishLaunchingWithOptionsSbSo13UIApplicationC_SDySo0k6LaunchJ3KeyaypGSgtF_0();

  return v8 & 1;
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  optionsCopy = options;
  if (options)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_2187A5670(&qword_27CC0A758, type metadata accessor for LaunchOptionsKey);
    optionsCopy = sub_219BF5214();
  }

  applicationCopy = application;
  selfCopy = self;
  v9 = sub_2187A5BE8(optionsCopy);

  return v9 & 1;
}

- (id)createSceneContainer
{
  v3 = sub_219BE6224();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_2186C72B8();
  (*(v4 + 104))(v6, *MEMORY[0x277D6D550], v3);
  v8 = sub_219BE6B24();

  (*(v4 + 8))(v6, v3);

  return v8;
}

- (void)didCommitFirstFrame
{
  selfCopy = self;
  AppDelegate.didCommitFirstFrame()();
}

- (UIWindow)window
{
  v3 = OBJC_IVAR___TSAppDelegate_window;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setWindow:(id)window
{
  v5 = OBJC_IVAR___TSAppDelegate_window;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = window;
  windowCopy = window;
}

- (id)createCarPlaySceneContainer
{
  selfCopy = self;
  sub_2186C72B8();
  v3 = sub_219BE6B04();

  return v3;
}

- (void)didEnterBackground
{
  selfCopy = self;
  sub_2191148D4(MEMORY[0x277D6CE50]);
}

- (void)willEnterForeground
{
  selfCopy = self;
  sub_2191148D4(MEMORY[0x277D6CE58]);
}

- (BOOL)application:(id)application openURL:(id)l options:(id)options
{
  v7 = sub_219BDB954();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDB8B4();
  type metadata accessor for OpenURLOptionsKey(0);
  sub_2187A5670(&unk_280E8DC50, type metadata accessor for OpenURLOptionsKey);
  v11 = sub_219BF5214();
  applicationCopy = application;
  selfCopy = self;
  sub_219115F30(v10, v11);
  v15 = v14;

  (*(v8 + 8))(v10, v7);
  return v15 & 1;
}

- (void)application:(id)application didReceiveRemoteNotification:(id)notification fetchCompletionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = sub_219BF5214();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  applicationCopy = application;
  selfCopy = self;
  sub_219116344(v8, sub_219116B34, v9);
}

- (void)application:(id)application handleIntent:(id)intent completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  applicationCopy = application;
  intentCopy = intent;
  selfCopy = self;
  sub_21911654C(intentCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)application:(id)application performFetchWithCompletionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  applicationCopy = application;
  selfCopy = self;
  sub_219116748(sub_2189A6A5C, v7);
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  selfCopy = self;
  AppDelegate.forwardingTarget(for:)(selector, v12);

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

- (void)buildMenuWithBuilder:(id)builder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v5 = sub_219114120();
  [v5 buildMenuWithBuilder_];

  swift_unknownObjectRelease();
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
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

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = AppDelegate.canPerformAction(_:withSender:)(action, v10);

  sub_21874546C(v10, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186C5500);
  return v8 & 1;
}

@end