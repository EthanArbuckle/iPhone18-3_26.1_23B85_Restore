@interface DBLocalSceneHostWindow
- (FBSScene)clientScene;
- (FBScene)localScene;
- (id)presentationViewWithIdentifier:(id)a3;
@end

@implementation DBLocalSceneHostWindow

- (FBScene)localScene
{
  v2 = [*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard22DBLocalSceneHostWindow__localSceneController) scene];

  return v2;
}

- (FBSScene)clientScene
{
  v2 = [*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard22DBLocalSceneHostWindow__localSceneController) clientScene];

  return v2;
}

- (id)presentationViewWithIdentifier:(id)a3
{
  v3 = [*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard22DBLocalSceneHostWindow__localSceneController) presentationViewWithIdentifier_];

  return v3;
}

@end