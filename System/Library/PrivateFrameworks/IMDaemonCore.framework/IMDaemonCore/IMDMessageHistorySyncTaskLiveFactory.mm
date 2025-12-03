@interface IMDMessageHistorySyncTaskLiveFactory
- (IMDMessageHistorySyncTaskLiveFactory)init;
- (id)_initWithAccountController:(id)controller replayController:(id)replayController;
- (id)_newFirstUnlockReplaySyncTask;
- (id)newSyncTaskForType:(unint64_t)type;
- (void)dealloc;
@end

@implementation IMDMessageHistorySyncTaskLiveFactory

- (IMDMessageHistorySyncTaskLiveFactory)init
{
  +[IMDAccountController sharedInstance];
  +[IMDReplayController sharedInstance];

  return MEMORY[0x2821F9670](self, sel__initWithAccountController_replayController_);
}

- (void)dealloc
{
  self->_ckSyncController = 0;
  self->_accountController = 0;
  self->_replayController = 0;
  v3.receiver = self;
  v3.super_class = IMDMessageHistorySyncTaskLiveFactory;
  [(IMDMessageHistorySyncTaskLiveFactory *)&v3 dealloc];
}

- (id)_initWithAccountController:(id)controller replayController:(id)replayController
{
  v8.receiver = self;
  v8.super_class = IMDMessageHistorySyncTaskLiveFactory;
  v6 = [(IMDMessageHistorySyncTaskLiveFactory *)&v8 init];
  if (v6)
  {
    v6->_accountController = controller;
    v6->_replayController = replayController;
  }

  return v6;
}

- (id)newSyncTaskForType:(unint64_t)type
{
  if (type)
  {
    return 0;
  }

  else
  {
    return MEMORY[0x2821F9670](self, sel__newFirstUnlockReplaySyncTask);
  }
}

- (id)_newFirstUnlockReplaySyncTask
{
  v2 = [[IMDMessageHistoryFirstUnlockReplaySyncTask alloc] initWithReplayController:self->_replayController accountController:self->_accountController];
  objc_opt_isKindOfClass();
  return v2;
}

@end