@interface BPSVideoControllingBuilder
+ (id)videoControllerWithFileName:(id)name fileExtension:(id)extension bundle:(id)bundle autoPlay:(BOOL)play startDelay:(double)delay shouldLoop:(BOOL)loop volume:(float)volume;
- (BPSVideoControllingBuilder)init;
@end

@implementation BPSVideoControllingBuilder

+ (id)videoControllerWithFileName:(id)name fileExtension:(id)extension bundle:(id)bundle autoPlay:(BOOL)play startDelay:(double)delay shouldLoop:(BOOL)loop volume:(float)volume
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
  if (extension)
  {
    v18 = sub_241EA9D38();
    extension = v19;
  }

  else
  {
    v18 = 0;
  }

  bundleCopy = bundle;
  v21 = sub_241E9C5B0(v15, v17, v18, extension, bundle, play, loop, delay, volume);

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