@interface ChromeScenePhaseView
- (_TtC8CameraUI20ChromeScenePhaseView)initWithCoder:(id)a3;
- (_TtC8CameraUI20ChromeScenePhaseView)initWithFrame:(CGRect)a3;
- (void)didMoveToWindow;
@end

@implementation ChromeScenePhaseView

- (_TtC8CameraUI20ChromeScenePhaseView)initWithFrame:(CGRect)a3
{
  v4 = OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_scenePhaseModel;
  type metadata accessor for ChromeScenePhaseModel(0);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC8CameraUI21ChromeScenePhaseModel___phase;
  v7 = *MEMORY[0x1E697BE38];
  v8 = sub_1A3A2F540();
  (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  sub_1A3A2F0B0();
  *(&self->super.super.super.isa + v4) = v5;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_sceneState) = 256;
  result = sub_1A3A32070();
  __break(1u);
  return result;
}

- (_TtC8CameraUI20ChromeScenePhaseView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_scenePhaseModel;
  type metadata accessor for ChromeScenePhaseModel(0);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC8CameraUI21ChromeScenePhaseModel___phase;
  v7 = *MEMORY[0x1E697BE38];
  v8 = sub_1A3A2F540();
  (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  sub_1A3A2F0B0();
  *(&self->super.super.super.isa + v4) = v5;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_sceneState) = 256;
  result = sub_1A3A32070();
  __break(1u);
  return result;
}

- (void)didMoveToWindow
{
  v2 = self;
  sub_1A3966A4C();
}

@end