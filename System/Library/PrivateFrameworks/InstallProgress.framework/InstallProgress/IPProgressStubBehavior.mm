@interface IPProgressStubBehavior
- (IPProgressServerBehaviorDelegate)delegate;
- (IPProgressStubBehavior)initWithEventStreamName:(id)name;
- (OS_dispatch_queue)queue;
- (void)resume;
@end

@implementation IPProgressStubBehavior

- (IPProgressStubBehavior)initWithEventStreamName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = IPProgressStubBehavior;
  v5 = [(IPProgressStubBehavior *)&v9 init];
  if (v5)
  {
    v6 = [[IPXPCEventSubscriptionBlackhole alloc] initWithStreamName:nameCopy];
    streamBlackhole = v5->_streamBlackhole;
    v5->_streamBlackhole = v6;
  }

  return v5;
}

- (OS_dispatch_queue)queue
{
  if (queue_onceToken != -1)
  {
    [IPProgressStubBehavior queue];
  }

  v3 = queue_queue;

  return v3;
}

void __31__IPProgressStubBehavior_queue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.InstallProgress.IPProgressStubBehavior", v2);
  v1 = queue_queue;
  queue_queue = v0;
}

- (void)resume
{
  v3 = _IPServerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_254C69000, v3, OS_LOG_TYPE_DEFAULT, "Resuming stub behavior. The sand exerts a comforting influence on the buried head.", v4, 2u);
  }

  [(IPXPCEventSubscriptionBlackhole *)self->_streamBlackhole resume];
}

- (IPProgressServerBehaviorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end