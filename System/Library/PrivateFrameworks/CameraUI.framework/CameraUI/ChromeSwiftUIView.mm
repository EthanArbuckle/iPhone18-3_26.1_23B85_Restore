@interface ChromeSwiftUIView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (_TtC8CameraUI17ChromeSwiftUIView)initWithCoder:(id)coder;
- (_TtC8CameraUI17ChromeSwiftUIView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation ChromeSwiftUIView

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_1A392D32C();
}

- (_TtC8CameraUI17ChromeSwiftUIView)initWithCoder:(id)coder
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_1A392D7E4(event, x, y);

  return v10;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v12.receiver = self;
  v12.super_class = type metadata accessor for ChromeSwiftUIView();
  eventCopy = event;
  v8 = v12.receiver;
  if ([(ChromeSwiftUIView *)&v12 pointInside:eventCopy withEvent:x, y])
  {
    v9 = sub_1A392E314(x, y);

    return !v9;
  }

  else
  {

    return 0;
  }
}

- (_TtC8CameraUI17ChromeSwiftUIView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end