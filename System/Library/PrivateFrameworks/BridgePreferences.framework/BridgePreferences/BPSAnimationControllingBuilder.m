@interface BPSAnimationControllingBuilder
+ (id)animationControllerWithFileName:(id)a3 fileExtension:(id)a4 fileType:(id)a5 initialState:(id)a6 targetState:(id)a7 bundle:(id)a8 autoStart:(BOOL)a9 startDelay:(double)a10;
- (BPSAnimationControllingBuilder)init;
@end

@implementation BPSAnimationControllingBuilder

+ (id)animationControllerWithFileName:(id)a3 fileExtension:(id)a4 fileType:(id)a5 initialState:(id)a6 targetState:(id)a7 bundle:(id)a8 autoStart:(BOOL)a9 startDelay:(double)a10
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
  if (a4)
  {
    v30 = sub_241EA9D38();
    a4 = v18;
    if (a5)
    {
      goto LABEL_5;
    }

LABEL_8:
    v19 = 0;
    if (a6)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  v30 = 0;
  if (!a5)
  {
    goto LABEL_8;
  }

LABEL_5:
  v19 = sub_241EA9D38();
  a5 = v20;
  if (a6)
  {
LABEL_6:
    v21 = sub_241EA9D38();
    a6 = v22;
    goto LABEL_10;
  }

LABEL_9:
  v21 = 0;
LABEL_10:
  v23 = a7;
  v24 = a8;
  if (v23)
  {
    v25 = sub_241EA9D38();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v28 = sub_241EA93A4(v31, v17, v30, a4, v19, a5, v21, a6, a10, v25, v27, v24, a9);

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