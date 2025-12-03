@interface PosterEditorOverlaySceneDelegate
- (UIWindow)window;
- (_TtC7ChatKit32PosterEditorOverlaySceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)setWindow:(id)window;
@end

@implementation PosterEditorOverlaySceneDelegate

- (UIWindow)window
{
  v3 = OBJC_IVAR____TtC7ChatKit32PosterEditorOverlaySceneDelegate_window;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setWindow:(id)window
{
  v5 = OBJC_IVAR____TtC7ChatKit32PosterEditorOverlaySceneDelegate_window;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_190A36188(sceneCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  v5 = OBJC_IVAR____TtC7ChatKit32PosterEditorOverlaySceneDelegate_window;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  if (v6)
  {
    disconnectCopy = disconnect;
    selfCopy = self;
    rootViewController = [v6 rootViewController];
    if (rootViewController)
    {
      v10 = rootViewController;
      v11 = swift_dynamicCastObjCProtocolConditional();
      if (v11)
      {
        [v11 invalidate];
      }

      disconnectCopy = selfCopy;
    }

    else
    {
      v10 = selfCopy;
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