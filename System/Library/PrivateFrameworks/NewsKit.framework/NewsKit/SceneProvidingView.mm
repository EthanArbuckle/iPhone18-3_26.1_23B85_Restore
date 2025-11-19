@interface SceneProvidingView
- (_TtC7NewsKit18SceneProvidingView)initWithCoder:(id)a3;
- (_TtC7NewsKit18SceneProvidingView)initWithFrame:(CGRect)a3;
- (void)didMoveToWindow;
@end

@implementation SceneProvidingView

- (_TtC7NewsKit18SceneProvidingView)initWithCoder:(id)a3
{
  result = sub_25BEF8BF8();
  __break(1u);
  return result;
}

- (void)didMoveToWindow
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  [(SceneProvidingView *)&v7 didMoveToWindow];
  v3 = [v2 window];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 windowScene];

    if (v5)
    {
      v6 = *&v2[OBJC_IVAR____TtC7NewsKit18SceneProvidingView_sceneProvider + 32];
      __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC7NewsKit18SceneProvidingView_sceneProvider], *&v2[OBJC_IVAR____TtC7NewsKit18SceneProvidingView_sceneProvider + 24]);
      sub_25BEF8738();
    }
  }
}

- (_TtC7NewsKit18SceneProvidingView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end