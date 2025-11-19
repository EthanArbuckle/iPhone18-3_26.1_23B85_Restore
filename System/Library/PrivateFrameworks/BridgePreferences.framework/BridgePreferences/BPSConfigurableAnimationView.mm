@interface BPSConfigurableAnimationView
- (BPSConfigurableAnimationView)initWithCoder:(id)a3;
- (BPSConfigurableAnimationView)initWithFrame:(CGRect)a3;
- (id)view;
- (void)pauseAnimation;
- (void)resetToInitialStateAnimated:(BOOL)a3;
- (void)resumeAnimation;
- (void)updateToState:(id)a3 animated:(BOOL)a4;
@end

@implementation BPSConfigurableAnimationView

- (BPSConfigurableAnimationView)initWithCoder:(id)a3
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

  v3 = self;

  return v3;
}

- (void)updateToState:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
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
    if (v4)
    {
      v13 = 1.0;
    }

    else
    {
      v13 = 0.0;
    }

    v14 = *(v11 + 8);
    v15 = self;
    v16 = v9;
    v14(v10, v8, ObjectType, v11, v13);
  }

  else
  {
  }
}

- (void)resetToInitialStateAnimated:(BOOL)a3
{
  v3 = a3;
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
  v8 = self;

  v7(v5, v6, v3);
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
  v5 = self;
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

  v3 = self;
  sub_241EA8A8C();
}

- (BPSConfigurableAnimationView)initWithFrame:(CGRect)a3
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