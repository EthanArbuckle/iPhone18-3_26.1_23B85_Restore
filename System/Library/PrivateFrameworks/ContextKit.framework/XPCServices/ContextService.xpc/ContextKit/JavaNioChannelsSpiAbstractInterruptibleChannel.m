@interface JavaNioChannelsSpiAbstractInterruptibleChannel
- (BOOL)isOpen;
- (void)begin;
- (void)dealloc;
- (void)endWithBoolean:(BOOL)a3;
@end

@implementation JavaNioChannelsSpiAbstractInterruptibleChannel

- (BOOL)isOpen
{
  objc_sync_enter(self);
  v3 = atomic_load(&self->closed_);
  objc_sync_exit(self);
  return (v3 & 1) == 0;
}

- (void)begin
{
  v3 = JavaLangThread_currentThread();
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  interruptAndCloseRunnable = self->interruptAndCloseRunnable_;

  [(JavaLangThread *)v3 pushInterruptAction$WithJavaLangRunnable:interruptAndCloseRunnable];
}

- (void)endWithBoolean:(BOOL)a3
{
  v5 = JavaLangThread_currentThread();
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  [(JavaLangThread *)v5 popInterruptAction$WithJavaLangRunnable:self->interruptAndCloseRunnable_];
  v6 = atomic_load(&self->interrupted_);
  if (v6)
  {
    atomic_store(0, &self->interrupted_);
    v8 = new_JavaNioChannelsClosedByInterruptException_init();
    goto LABEL_9;
  }

  if (!a3)
  {
    v7 = atomic_load(&self->closed_);
    if (v7)
    {
      v8 = new_JavaNioChannelsAsynchronousCloseException_init();
LABEL_9:
      objc_exception_throw(v8);
    }
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioChannelsSpiAbstractInterruptibleChannel;
  [(JavaNioChannelsSpiAbstractInterruptibleChannel *)&v3 dealloc];
}

@end