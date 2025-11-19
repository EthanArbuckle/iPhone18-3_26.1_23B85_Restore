@interface VideoHostingView
- (_TtC17BridgePreferences16VideoHostingView)initWithCoder:(id)a3;
- (_TtC17BridgePreferences16VideoHostingView)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)playerDidFinishPlaying;
- (void)playerItemFailedToPlayWithNotification:(id)a3;
@end

@implementation VideoHostingView

- (_TtC17BridgePreferences16VideoHostingView)initWithFrame:(CGRect)a3
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

  v7 = sub_241E9DE28(x, y, width, height);

  return v7;
}

- (_TtC17BridgePreferences16VideoHostingView)initWithCoder:(id)a3
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_241E9DFD0(a3);

  return v4;
}

- (void)dealloc
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_241EA9E28();
  sub_241EA9E18();

  swift_task_deinitOnExecutor();
}

- (void)playerDidFinishPlaying
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_241E9FF2C();
}

- (void)playerItemFailedToPlayWithNotification:(id)a3
{
  v4 = sub_241EA9BA8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_241EA9B88();
  v8 = self;
  sub_241EA0448();

  (*(v5 + 8))(v7, v4);
}

- (void)layoutSubviews
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for VideoHostingView();
  v3 = self;
  [(VideoHostingView *)&v6 layoutSubviews];
  v4 = *(&v3->super.super.super.isa + OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_playerLayer);
  if (v4)
  {
    v5 = v4;
    [(VideoHostingView *)v3 bounds:v6.receiver];
    [v5 setFrame_];
  }

  else
  {
  }
}

@end