@interface AVPlayerView
+ (Class)layerClass;
- (_TtC7HomeUI2P33_33C2D5E6D8C15322E88C11963146B55E12AVPlayerView)initWithCoder:(id)a3;
- (_TtC7HomeUI2P33_33C2D5E6D8C15322E88C11963146B55E12AVPlayerView)initWithFrame:(CGRect)a3;
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

- (_TtC7HomeUI2P33_33C2D5E6D8C15322E88C11963146B55E12AVPlayerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for AVPlayerView();
  v8 = [(AVPlayerView *)&v10 initWithFrame:x, y, width, height];

  return v8;
}

- (_TtC7HomeUI2P33_33C2D5E6D8C15322E88C11963146B55E12AVPlayerView)initWithCoder:(id)a3
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
  v5 = a3;
  v6 = [(AVPlayerView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end