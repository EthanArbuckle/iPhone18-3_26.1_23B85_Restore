@interface JavaNioChannelsSpiAbstractSelector
- (BOOL)isOpen;
- (void)begin;
- (void)cancelWithJavaNioChannelsSelectionKey:(id)key;
- (void)close;
- (void)dealloc;
- (void)deregisterWithJavaNioChannelsSpiAbstractSelectionKey:(id)key;
- (void)end;
@end

@implementation JavaNioChannelsSpiAbstractSelector

- (void)close
{
  isOpen = self->isOpen_;
  if (!isOpen)
  {
    JreThrowNullPointerException();
  }

  if ([(JavaUtilConcurrentAtomicAtomicBoolean *)isOpen getAndSetWithBoolean:0])
  {

    [(JavaNioChannelsSpiAbstractSelector *)self implCloseSelector];
  }
}

- (BOOL)isOpen
{
  isOpen = self->isOpen_;
  if (!isOpen)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilConcurrentAtomicAtomicBoolean *)isOpen get];
}

- (void)deregisterWithJavaNioChannelsSpiAbstractSelectionKey:(id)key
{
  if (!key || (v4 = [key channel], objc_opt_class(), !v4))
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  [v4 deregisterWithJavaNioChannelsSelectionKey:key];
  *(key + 16) = 0;
}

- (void)begin
{
  v3 = JavaLangThread_currentThread();
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  wakeupRunnable = self->wakeupRunnable_;

  [(JavaLangThread *)v3 pushInterruptAction$WithJavaLangRunnable:wakeupRunnable];
}

- (void)end
{
  v3 = JavaLangThread_currentThread();
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  wakeupRunnable = self->wakeupRunnable_;

  [(JavaLangThread *)v3 popInterruptAction$WithJavaLangRunnable:wakeupRunnable];
}

- (void)cancelWithJavaNioChannelsSelectionKey:(id)key
{
  cancelledKeysSet = self->cancelledKeysSet_;
  objc_sync_enter(cancelledKeysSet);
  v6 = self->cancelledKeysSet_;
  if (!v6)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilSet *)v6 addWithId:key];

  objc_sync_exit(cancelledKeysSet);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioChannelsSpiAbstractSelector;
  [(JavaNioChannelsSpiAbstractSelector *)&v3 dealloc];
}

@end