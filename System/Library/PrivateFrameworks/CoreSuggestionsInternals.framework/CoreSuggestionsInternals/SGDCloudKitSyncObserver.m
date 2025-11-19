@interface SGDCloudKitSyncObserver
- (SGDCloudKitSyncObserver)initWithCloudKitSyncGetter:(id)a3;
- (id)cloudKitSync;
- (void)confirmEventFromOtherDevice:(id)a3;
- (void)confirmEventFromThisDevice:(id)a3;
- (void)rejectEventFromOtherDevice:(id)a3;
- (void)rejectEventFromThisDevice:(id)a3;
@end

@implementation SGDCloudKitSyncObserver

- (void)rejectEventFromOtherDevice:(id)a3
{
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_231E60000, v3, OS_LOG_TYPE_DEBUG, "SGCK rejectEventFromOtherDevice [IGNORED]", v4, 2u);
  }
}

- (void)rejectEventFromThisDevice:(id)a3
{
  v4 = a3;
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "SGCK rejectEventFromThisDevice", v7, 2u);
  }

  v6 = [(SGDCloudKitSyncObserver *)self cloudKitSync];
  [v6 deleteStorageEvent:v4];
}

- (void)confirmEventFromOtherDevice:(id)a3
{
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_231E60000, v3, OS_LOG_TYPE_DEBUG, "SGCK confirmEventFromOtherDevice [IGNORED]", v4, 2u);
  }
}

- (void)confirmEventFromThisDevice:(id)a3
{
  v4 = a3;
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "SGCK confirmEventFromThisDevice", v7, 2u);
  }

  v6 = [(SGDCloudKitSyncObserver *)self cloudKitSync];
  [v6 deleteStorageEvent:v4];
}

- (id)cloudKitSync
{
  v2 = self;
  objc_sync_enter(v2);
  cksGetter = v2->_cksGetter;
  if (cksGetter)
  {
    v4 = cksGetter[2]();
    cks = v2->_cks;
    v2->_cks = v4;

    v6 = v2->_cksGetter;
    v2->_cksGetter = 0;
  }

  objc_sync_exit(v2);

  v7 = v2->_cks;

  return v7;
}

- (SGDCloudKitSyncObserver)initWithCloudKitSyncGetter:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SGDCloudKitSyncObserver;
  v5 = [(SGDCloudKitSyncObserver *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    cksGetter = v5->_cksGetter;
    v5->_cksGetter = v6;
  }

  return v5;
}

@end