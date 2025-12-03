@interface VideoHostingView
- (_TtC17BridgePreferences16VideoHostingView)initWithCoder:(id)coder;
- (_TtC17BridgePreferences16VideoHostingView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)layoutSubviews;
- (void)playerDidFinishPlaying;
- (void)playerItemFailedToPlayWithNotification:(id)notification;
@end

@implementation VideoHostingView

- (_TtC17BridgePreferences16VideoHostingView)initWithFrame:(CGRect)frame
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

  v7 = sub_241E9DE28(x, y, width, height);

  return v7;
}

- (_TtC17BridgePreferences16VideoHostingView)initWithCoder:(id)coder
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_241E9DFD0(coder);

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

  selfCopy = self;
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

  selfCopy = self;
  sub_241E9FF2C();
}

- (void)playerItemFailedToPlayWithNotification:(id)notification
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
  selfCopy = self;
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
  selfCopy = self;
  [(VideoHostingView *)&v6 layoutSubviews];
  v4 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_playerLayer);
  if (v4)
  {
    v5 = v4;
    [(VideoHostingView *)selfCopy bounds:v6.receiver];
    [v5 setFrame_];
  }

  else
  {
  }
}

@end