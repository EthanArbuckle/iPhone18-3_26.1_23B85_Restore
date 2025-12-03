@interface HDBackgroundActivityScheduler
- (void)backgroundAppRefreshEnabledForApp:(id)app completion:(id)completion;
- (void)dealloc;
- (void)registerForUpdates:(id)updates onQueue:(id)queue;
@end

@implementation HDBackgroundActivityScheduler

- (void)registerForUpdates:(id)updates onQueue:(id)queue
{
  updatesCopy = updates;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __60__HDBackgroundActivityScheduler_registerForUpdates_onQueue___block_invoke;
  handler[3] = &unk_27862A390;
  v9 = updatesCopy;
  v7 = updatesCopy;
  notify_register_dispatch("kKeepAppsUpToDateEnabledChangedNotification", &self->_backgroundAppRefreshNotifyToken, queue, handler);
}

- (void)backgroundAppRefreshEnabledForApp:(id)app completion:(id)completion
{
  completionCopy = completion;
  v6 = MEMORY[0x277D06A28];
  appCopy = app;
  sharedScheduler = [v6 sharedScheduler];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__HDBackgroundActivityScheduler_backgroundAppRefreshEnabledForApp_completion___block_invoke;
  v10[3] = &unk_27862A3B8;
  v11 = completionCopy;
  v9 = completionCopy;
  [sharedScheduler backgroundAppRefreshEnabledForApp:appCopy withHandler:v10];
}

- (void)dealloc
{
  notify_cancel(self->_backgroundAppRefreshNotifyToken);
  self->_backgroundAppRefreshNotifyToken = 0;
  v3.receiver = self;
  v3.super_class = HDBackgroundActivityScheduler;
  [(HDBackgroundActivityScheduler *)&v3 dealloc];
}

@end