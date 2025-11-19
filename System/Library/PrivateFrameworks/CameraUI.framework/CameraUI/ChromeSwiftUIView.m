@interface ChromeSwiftUIView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (_TtC8CameraUI17ChromeSwiftUIView)initWithCoder:(id)a3;
- (_TtC8CameraUI17ChromeSwiftUIView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation ChromeSwiftUIView

- (void)didMoveToWindow
{
  v2 = self;
  sub_1A392D32C();
}

- (_TtC8CameraUI17ChromeSwiftUIView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC8CameraUI17ChromeSwiftUIView_scenePhaseView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(type metadata accessor for ChromeScenePhaseView()) init];
  result = sub_1A3A32070();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ChromeSwiftUIView();
  v2 = v3.receiver;
  [(ChromeSwiftUIView *)&v3 layoutSubviews];
  sub_1A392D4CC(*&v2[OBJC_IVAR____TtC8CameraUI17ChromeSwiftUIView_viewModel], v2);
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_1A392D7E4(a4, x, y);

  return v10;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v12.receiver = self;
  v12.super_class = type metadata accessor for ChromeSwiftUIView();
  v7 = a4;
  v8 = v12.receiver;
  if ([(ChromeSwiftUIView *)&v12 pointInside:v7 withEvent:x, y])
  {
    v9 = sub_1A392E314(x, y);

    return !v9;
  }

  else
  {

    return 0;
  }
}

- (_TtC8CameraUI17ChromeSwiftUIView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end