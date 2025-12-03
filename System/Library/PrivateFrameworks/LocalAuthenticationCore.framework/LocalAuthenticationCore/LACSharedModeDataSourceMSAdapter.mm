@interface LACSharedModeDataSourceMSAdapter
- (LACSharedModeDataSourceMSAdapter)initWithReplyQueue:(id)queue;
- (void)fetchSharedModeWithOptions:(id)options completion:(id)completion;
@end

@implementation LACSharedModeDataSourceMSAdapter

- (LACSharedModeDataSourceMSAdapter)initWithReplyQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = LACSharedModeDataSourceMSAdapter;
  v6 = [(LACSharedModeDataSourceMSAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_replyQueue, queue);
  }

  return v7;
}

- (void)fetchSharedModeWithOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  _isManagedSettingsFrameworkAvailable = [(LACSharedModeDataSourceMSAdapter *)self _isManagedSettingsFrameworkAvailable];
  v7 = +[LACSharedMode defaultSharedMode];
  v8 = LACLogSharedMode();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (_isManagedSettingsFrameworkAvailable)
  {
    if (v9)
    {
      goto LABEL_5;
    }
  }

  else if (v9)
  {
LABEL_5:
    [LACSharedModeDataSourceFTRCAdapter fetchSharedModeWithOptions:completion:];
  }

  completionCopy[2](completionCopy, v7);
}

@end