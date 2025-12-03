@interface AVPlayerView
+ (Class)layerClass;
- (_TtC7HomeUI2P33_33C2D5E6D8C15322E88C11963146B55E12AVPlayerView)initWithCoder:(id)coder;
- (_TtC7HomeUI2P33_33C2D5E6D8C15322E88C11963146B55E12AVPlayerView)initWithFrame:(CGRect)frame;
@end

@implementation AVPlayerView

+ (Class)layerClass
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2544AE2B0(0, &qword_27F5FAE80, 0x277CE65D8);

  return swift_getObjCClassFromMetadata();
}

- (_TtC7HomeUI2P33_33C2D5E6D8C15322E88C11963146B55E12AVPlayerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for AVPlayerView();
  height = [(AVPlayerView *)&v10 initWithFrame:x, y, width, height];

  return height;
}

- (_TtC7HomeUI2P33_33C2D5E6D8C15322E88C11963146B55E12AVPlayerView)initWithCoder:(id)coder
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = self;
  v8.super_class = type metadata accessor for AVPlayerView();
  coderCopy = coder;
  v6 = [(AVPlayerView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end