@interface SceneProvidingView
- (_TtC7NewsKit18SceneProvidingView)initWithCoder:(id)coder;
- (_TtC7NewsKit18SceneProvidingView)initWithFrame:(CGRect)frame;
- (void)didMoveToWindow;
@end

@implementation SceneProvidingView

- (_TtC7NewsKit18SceneProvidingView)initWithCoder:(id)coder
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
  window = [v2 window];
  if (window)
  {
    v4 = window;
    windowScene = [window windowScene];

    if (windowScene)
    {
      v6 = *&v2[OBJC_IVAR____TtC7NewsKit18SceneProvidingView_sceneProvider + 32];
      __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC7NewsKit18SceneProvidingView_sceneProvider], *&v2[OBJC_IVAR____TtC7NewsKit18SceneProvidingView_sceneProvider + 24]);
      sub_25BEF8738();
    }
  }
}

- (_TtC7NewsKit18SceneProvidingView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end