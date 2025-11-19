@interface LACSharedModeDataSourceMSAdapter
- (LACSharedModeDataSourceMSAdapter)initWithReplyQueue:(id)a3;
- (void)fetchSharedModeWithOptions:(id)a3 completion:(id)a4;
@end

@implementation LACSharedModeDataSourceMSAdapter

- (LACSharedModeDataSourceMSAdapter)initWithReplyQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LACSharedModeDataSourceMSAdapter;
  v6 = [(LACSharedModeDataSourceMSAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_replyQueue, a3);
  }

  return v7;
}

- (void)fetchSharedModeWithOptions:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(LACSharedModeDataSourceMSAdapter *)self _isManagedSettingsFrameworkAvailable];
  v7 = +[LACSharedMode defaultSharedMode];
  v8 = LACLogSharedMode();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v6)
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

  v5[2](v5, v7);
}

@end