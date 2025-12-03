@interface AnimationHostingView
- (_TtC17BridgePreferences20AnimationHostingView)initWithCoder:(id)coder;
- (_TtC17BridgePreferences20AnimationHostingView)initWithFrame:(CGRect)frame;
@end

@implementation AnimationHostingView

- (_TtC17BridgePreferences20AnimationHostingView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC17BridgePreferences20AnimationHostingView_hostingView) = 0;
  v8 = (&self->super.super.super.isa + OBJC_IVAR____TtC17BridgePreferences20AnimationHostingView_animationView);
  v9 = type metadata accessor for AnimationHostingView();
  v8[1] = 0;
  v8[2] = 0;
  *v8 = 0;
  v12.receiver = self;
  v12.super_class = v9;
  height = [(AnimationHostingView *)&v12 initWithFrame:x, y, width, height];
  sub_241EA474C();

  return height;
}

- (_TtC17BridgePreferences20AnimationHostingView)initWithCoder:(id)coder
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_241EA4614(coder);

  return v4;
}

@end