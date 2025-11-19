@interface AnimationHostingView
- (_TtC17BridgePreferences20AnimationHostingView)initWithCoder:(id)a3;
- (_TtC17BridgePreferences20AnimationHostingView)initWithFrame:(CGRect)a3;
@end

@implementation AnimationHostingView

- (_TtC17BridgePreferences20AnimationHostingView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v10 = [(AnimationHostingView *)&v12 initWithFrame:x, y, width, height];
  sub_241EA474C();

  return v10;
}

- (_TtC17BridgePreferences20AnimationHostingView)initWithCoder:(id)a3
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_241EA4614(a3);

  return v4;
}

@end