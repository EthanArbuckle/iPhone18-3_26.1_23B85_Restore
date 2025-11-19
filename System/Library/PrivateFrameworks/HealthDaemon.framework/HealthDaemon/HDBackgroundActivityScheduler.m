@interface HDBackgroundActivityScheduler
- (void)backgroundAppRefreshEnabledForApp:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)registerForUpdates:(id)a3 onQueue:(id)a4;
@end

@implementation HDBackgroundActivityScheduler

- (void)registerForUpdates:(id)a3 onQueue:(id)a4
{
  v6 = a3;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __60__HDBackgroundActivityScheduler_registerForUpdates_onQueue___block_invoke;
  handler[3] = &unk_27862A390;
  v9 = v6;
  v7 = v6;
  notify_register_dispatch("kKeepAppsUpToDateEnabledChangedNotification", &self->_backgroundAppRefreshNotifyToken, a4, handler);
}

- (void)backgroundAppRefreshEnabledForApp:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277D06A28];
  v7 = a3;
  v8 = [v6 sharedScheduler];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__HDBackgroundActivityScheduler_backgroundAppRefreshEnabledForApp_completion___block_invoke;
  v10[3] = &unk_27862A3B8;
  v11 = v5;
  v9 = v5;
  [v8 backgroundAppRefreshEnabledForApp:v7 withHandler:v10];
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