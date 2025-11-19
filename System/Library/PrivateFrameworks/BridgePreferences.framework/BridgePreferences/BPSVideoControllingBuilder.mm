@interface BPSVideoControllingBuilder
+ (id)videoControllerWithFileName:(id)a3 fileExtension:(id)a4 bundle:(id)a5 autoPlay:(BOOL)a6 startDelay:(double)a7 shouldLoop:(BOOL)a8 volume:(float)a9;
- (BPSVideoControllingBuilder)init;
@end

@implementation BPSVideoControllingBuilder

+ (id)videoControllerWithFileName:(id)a3 fileExtension:(id)a4 bundle:(id)a5 autoPlay:(BOOL)a6 startDelay:(double)a7 shouldLoop:(BOOL)a8 volume:(float)a9
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = sub_241EA9D38();
  v17 = v16;
  if (a4)
  {
    v18 = sub_241EA9D38();
    a4 = v19;
  }

  else
  {
    v18 = 0;
  }

  v20 = a5;
  v21 = sub_241E9C5B0(v15, v17, v18, a4, a5, a6, a8, a7, a9);

  return v21;
}

- (BPSVideoControllingBuilder)init
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5.receiver = self;
  v5.super_class = BPSVideoControllingBuilder;
  v3 = [(BPSVideoControllingBuilder *)&v5 init];

  return v3;
}

@end