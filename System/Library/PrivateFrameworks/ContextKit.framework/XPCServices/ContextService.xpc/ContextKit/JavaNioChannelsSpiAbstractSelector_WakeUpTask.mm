@interface JavaNioChannelsSpiAbstractSelector_WakeUpTask
- (void)__javaClone;
- (void)run;
@end

@implementation JavaNioChannelsSpiAbstractSelector_WakeUpTask

- (void)run
{
  Weak = objc_loadWeak(&self->this$0_);

  [Weak wakeup];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaNioChannelsSpiAbstractSelector_WakeUpTask;
  [(JavaNioChannelsSpiAbstractSelector_WakeUpTask *)&v3 __javaClone];
}

@end