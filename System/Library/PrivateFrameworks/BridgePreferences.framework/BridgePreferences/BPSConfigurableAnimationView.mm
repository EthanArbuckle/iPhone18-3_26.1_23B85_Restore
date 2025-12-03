@interface BPSConfigurableAnimationView
- (BPSConfigurableAnimationView)initWithCoder:(id)coder;
- (BPSConfigurableAnimationView)initWithFrame:(CGRect)frame;
- (id)view;
- (void)pauseAnimation;
- (void)resetToInitialStateAnimated:(BOOL)animated;
- (void)resumeAnimation;
- (void)updateToState:(id)state animated:(BOOL)animated;
@end

@implementation BPSConfigurableAnimationView

- (BPSConfigurableAnimationView)initWithCoder:(id)coder
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = (&self->super.super.super.isa + OBJC_IVAR___BPSConfigurableAnimationView_hostingView);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___BPSConfigurableAnimationView_autoStartTimer) = 0;
  result = sub_241EA9F18();
  __break(1u);
  return result;
}

- (id)view
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;

  return selfCopy;
}

- (void)updateToState:(id)state animated:(BOOL)animated
{
  animatedCopy = animated;
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_241EA9D38();
  v8 = v7;
  v9 = *(&self->super.super.super.isa + OBJC_IVAR___BPSConfigurableAnimationView_hostingView);
  if (v9)
  {
    v10 = v6;
    v11 = *(&self->super.super._responderFlags + OBJC_IVAR___BPSConfigurableAnimationView_hostingView);
    ObjectType = swift_getObjectType();
    if (animatedCopy)
    {
      v13 = 1.0;
    }

    else
    {
      v13 = 0.0;
    }

    v14 = *(v11 + 8);
    selfCopy = self;
    v16 = v9;
    v14(v10, v8, ObjectType, v11, v13);
  }

  else
  {
  }
}

- (void)resetToInitialStateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *(&self->super._layerRetained + OBJC_IVAR___BPSConfigurableAnimationView_configuration);
  v6 = *(&self->super._subviewCache + OBJC_IVAR___BPSConfigurableAnimationView_configuration);
  v7 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0xD8);
  selfCopy = self;

  v7(v5, v6, animatedCopy);
}

- (void)pauseAnimation
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = OBJC_IVAR___BPSConfigurableAnimationView_autoStartTimer;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___BPSConfigurableAnimationView_autoStartTimer);
  selfCopy = self;
  [v4 invalidate];
  v6 = *(&self->super.super.super.isa + v3);
  *(&self->super.super.super.isa + v3) = 0;
}

- (void)resumeAnimation
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_241EA8A8C();
}

- (BPSConfigurableAnimationView)initWithFrame:(CGRect)frame
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