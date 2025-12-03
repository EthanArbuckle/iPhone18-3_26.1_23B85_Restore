@interface DBLocalSceneHostWindow
- (FBSScene)clientScene;
- (FBScene)localScene;
- (id)presentationViewWithIdentifier:(id)identifier;
@end

@implementation DBLocalSceneHostWindow

- (FBScene)localScene
{
  scene = [*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard22DBLocalSceneHostWindow__localSceneController) scene];

  return scene;
}

- (FBSScene)clientScene
{
  clientScene = [*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard22DBLocalSceneHostWindow__localSceneController) clientScene];

  return clientScene;
}

- (id)presentationViewWithIdentifier:(id)identifier
{
  presentationViewWithIdentifier_ = [*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard22DBLocalSceneHostWindow__localSceneController) presentationViewWithIdentifier_];

  return presentationViewWithIdentifier_;
}

@end