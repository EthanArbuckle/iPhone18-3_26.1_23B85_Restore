@interface PosterEditorOverlaySceneDelegate
- (UIWindow)window;
- (_TtC7ChatKit32PosterEditorOverlaySceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation PosterEditorOverlaySceneDelegate

- (UIWindow)window
{
  v3 = OBJC_IVAR____TtC7ChatKit32PosterEditorOverlaySceneDelegate_window;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setWindow:(id)a3
{
  v5 = OBJC_IVAR____TtC7ChatKit32PosterEditorOverlaySceneDelegate_window;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_190A36188(v8);
}

- (void)sceneDidDisconnect:(id)a3
{
  v5 = OBJC_IVAR____TtC7ChatKit32PosterEditorOverlaySceneDelegate_window;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  if (v6)
  {
    v7 = a3;
    v8 = self;
    v9 = [v6 rootViewController];
    if (v9)
    {
      v10 = v9;
      v11 = swift_dynamicCastObjCProtocolConditional();
      if (v11)
      {
        [v11 invalidate];
      }

      v7 = v8;
    }

    else
    {
      v10 = v8;
    }
  }
}

- (_TtC7ChatKit32PosterEditorOverlaySceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC7ChatKit32PosterEditorOverlaySceneDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for PosterEditorOverlaySceneDelegate();
  return [(PosterEditorOverlaySceneDelegate *)&v3 init];
}

@end