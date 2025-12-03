@interface BPSAnimationControllingBuilder
+ (id)animationControllerWithFileName:(id)name fileExtension:(id)extension fileType:(id)type initialState:(id)state targetState:(id)targetState bundle:(id)bundle autoStart:(BOOL)start startDelay:(double)self0;
- (BPSAnimationControllingBuilder)init;
@end

@implementation BPSAnimationControllingBuilder

+ (id)animationControllerWithFileName:(id)name fileExtension:(id)extension fileType:(id)type initialState:(id)state targetState:(id)targetState bundle:(id)bundle autoStart:(BOOL)start startDelay:(double)self0
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v31 = sub_241EA9D38();
  v17 = v16;
  if (extension)
  {
    v30 = sub_241EA9D38();
    extension = v18;
    if (type)
    {
      goto LABEL_5;
    }

LABEL_8:
    v19 = 0;
    if (state)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  v30 = 0;
  if (!type)
  {
    goto LABEL_8;
  }

LABEL_5:
  v19 = sub_241EA9D38();
  type = v20;
  if (state)
  {
LABEL_6:
    v21 = sub_241EA9D38();
    state = v22;
    goto LABEL_10;
  }

LABEL_9:
  v21 = 0;
LABEL_10:
  targetStateCopy = targetState;
  bundleCopy = bundle;
  if (targetStateCopy)
  {
    v25 = sub_241EA9D38();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v28 = sub_241EA93A4(v31, v17, v30, extension, v19, type, v21, state, delay, v25, v27, bundleCopy, start);

  return v28;
}

- (BPSAnimationControllingBuilder)init
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5.receiver = self;
  v5.super_class = BPSAnimationControllingBuilder;
  v3 = [(BPSAnimationControllingBuilder *)&v5 init];

  return v3;
}

@end