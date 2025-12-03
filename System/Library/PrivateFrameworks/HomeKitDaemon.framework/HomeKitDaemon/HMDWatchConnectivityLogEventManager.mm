@interface HMDWatchConnectivityLogEventManager
+ (HMDWatchConnectivityLogEventManager)sharedInstance;
- (HMDWatchConnectivityLogEventManager)init;
- (HMDWatchConnectivityLogEventManagerSnapshot)currentWatchConnectivitySnapshot;
- (void)completeCurrentReport;
- (void)incrementWatchAddedNotificationCount;
- (void)incrementWatchRemovedNotificationCount;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDWatchConnectivityLogEventManager

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  watchConnectivityLogEventManagerTimer = [(HMDWatchConnectivityLogEventManager *)self watchConnectivityLogEventManagerTimer];

  if (watchConnectivityLogEventManagerTimer == fireCopy)
  {

    [(HMDWatchConnectivityLogEventManager *)self completeCurrentReport];
  }
}

- (HMDWatchConnectivityLogEventManagerSnapshot)currentWatchConnectivitySnapshot
{
  *&retstr->var0 = 0;
  os_unfair_lock_lock_with_options();
  hasCompleteReport = self->_hasCompleteReport;
  v6 = &OBJC_IVAR___HMDWatchConnectivityLogEventManager__watchAddedNotificationCountForCurrentIncompleteReport;
  if (hasCompleteReport)
  {
    v6 = &OBJC_IVAR___HMDWatchConnectivityLogEventManager__watchAddedNotificationCountForLastCompleteReport;
    v7 = &OBJC_IVAR___HMDWatchConnectivityLogEventManager__watchRemovedNotificationCountForLastCompleteReport;
  }

  else
  {
    v7 = &OBJC_IVAR___HMDWatchConnectivityLogEventManager__watchRemovedNotificationCountForCurrentIncompleteReport;
  }

  v8 = *(&self->super.super.isa + *v7);
  retstr->var1 = *(&self->super.super.isa + *v6);
  retstr->var2 = v8;
  retstr->var0 = hasCompleteReport;

  os_unfair_lock_unlock(&self->_lock);
  return result;
}

- (void)completeCurrentReport
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  self->_hasCompleteReport = 1;
  self->_watchAddedNotificationCountForLastCompleteReport = self->_watchAddedNotificationCountForCurrentIncompleteReport;
  self->_watchRemovedNotificationCountForLastCompleteReport = self->_watchRemovedNotificationCountForCurrentIncompleteReport;
  self->_watchAddedNotificationCountForCurrentIncompleteReport = 0;
  self->_watchRemovedNotificationCountForCurrentIncompleteReport = 0;
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    watchAddedNotificationCountForLastCompleteReport = self->_watchAddedNotificationCountForLastCompleteReport;
    watchRemovedNotificationCountForLastCompleteReport = self->_watchRemovedNotificationCountForLastCompleteReport;
    hasCompleteReport = self->_hasCompleteReport;
    v10 = 138544130;
    v11 = v5;
    v12 = 2048;
    v13 = watchAddedNotificationCountForLastCompleteReport;
    v14 = 2048;
    v15 = watchRemovedNotificationCountForLastCompleteReport;
    v16 = 1024;
    v17 = hasCompleteReport;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@WatchConnectivityLogEventManagerTimer fired: Watch added: %lu Watch removed: %lu reportComplete: %d", &v10, 0x26u);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_unlock(&self->_lock);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)incrementWatchRemovedNotificationCount
{
  os_unfair_lock_lock_with_options();
  ++self->_watchRemovedNotificationCountForCurrentIncompleteReport;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)incrementWatchAddedNotificationCount
{
  os_unfair_lock_lock_with_options();
  ++self->_watchAddedNotificationCountForCurrentIncompleteReport;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDWatchConnectivityLogEventManager)init
{
  v6.receiver = self;
  v6.super_class = HMDWatchConnectivityLogEventManager;
  v2 = [(HMDWatchConnectivityLogEventManager *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:13 options:86400.0];
    watchConnectivityLogEventManagerTimer = v2->_watchConnectivityLogEventManagerTimer;
    v2->_watchConnectivityLogEventManagerTimer = v3;

    [(HMFTimer *)v2->_watchConnectivityLogEventManagerTimer setDelegate:v2];
    [(HMFTimer *)v2->_watchConnectivityLogEventManagerTimer resume];
  }

  return v2;
}

+ (HMDWatchConnectivityLogEventManager)sharedInstance
{
  if (sharedInstance_onceToken_87827 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_87827, &__block_literal_global_87828);
  }

  v3 = sharedInstance_watchConnectivityLogEventManager;

  return v3;
}

void __53__HMDWatchConnectivityLogEventManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(HMDWatchConnectivityLogEventManager);
  v1 = sharedInstance_watchConnectivityLogEventManager;
  sharedInstance_watchConnectivityLogEventManager = v0;
}

@end