@interface BPSConfigurableVideoView
- (BOOL)isPlaying;
- (BPSConfigurableVideoView)initWithCoder:(id)a3;
- (BPSConfigurableVideoView)initWithFrame:(CGRect)a3;
- (UIView)view;
- (void)dealloc;
- (void)pauseVideo;
- (void)playVideo;
- (void)resetVideo;
- (void)setVolume:(float)a3;
@end

@implementation BPSConfigurableVideoView

- (BPSConfigurableVideoView)initWithCoder:(id)a3
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = (&self->super.super.super.isa + OBJC_IVAR___BPSConfigurableVideoView_hostingView);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___BPSConfigurableVideoView_autoPlayTimer) = 0;
  result = sub_241EA9F18();
  __break(1u);
  return result;
}

- (UIView)view
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;

  return v3;
}

- (BOOL)isPlaying
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.super.super.isa + OBJC_IVAR___BPSConfigurableVideoView_hostingView);
  if (v3)
  {
    v4 = *(&self->super.super._responderFlags + OBJC_IVAR___BPSConfigurableVideoView_hostingView);
    ObjectType = swift_getObjectType();
    LOBYTE(v3) = (*(v4 + 40))(ObjectType, v4);
  }

  return v3 & 1;
}

- (void)playVideo
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(&self->super.super.super.isa + OBJC_IVAR___BPSConfigurableVideoView_hostingView))
  {
    v3 = *(&self->super.super._responderFlags + OBJC_IVAR___BPSConfigurableVideoView_hostingView);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);
  }

  else
  {
  }
}

- (void)pauseVideo
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_241EA5FD8();
}

- (void)resetVideo
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(&self->super.super.super.isa + OBJC_IVAR___BPSConfigurableVideoView_hostingView))
  {
    v3 = *(&self->super.super._responderFlags + OBJC_IVAR___BPSConfigurableVideoView_hostingView);
    ObjectType = swift_getObjectType();
    (*(v3 + 24))(ObjectType, v3);
  }

  else
  {
  }
}

- (void)setVolume:(float)a3
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(&self->super.super.super.isa + OBJC_IVAR___BPSConfigurableVideoView_hostingView))
  {
    v5 = *(&self->super.super._responderFlags + OBJC_IVAR___BPSConfigurableVideoView_hostingView);
    v6 = 0.0;
    if (a3 > 0.0)
    {
      v6 = a3;
    }

    if (v6 <= 1.0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 1.0;
    }

    ObjectType = swift_getObjectType();
    (*(v5 + 32))(ObjectType, v5, v7);
  }

  else
  {
  }
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

- (BPSConfigurableVideoView)initWithFrame:(CGRect)a3
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end