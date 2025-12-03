@interface SGDCloudKitSyncObserver
- (SGDCloudKitSyncObserver)initWithCloudKitSyncGetter:(id)getter;
- (id)cloudKitSync;
- (void)confirmEventFromOtherDevice:(id)device;
- (void)confirmEventFromThisDevice:(id)device;
- (void)rejectEventFromOtherDevice:(id)device;
- (void)rejectEventFromThisDevice:(id)device;
@end

@implementation SGDCloudKitSyncObserver

- (void)rejectEventFromOtherDevice:(id)device
{
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_231E60000, v3, OS_LOG_TYPE_DEBUG, "SGCK rejectEventFromOtherDevice [IGNORED]", v4, 2u);
  }
}

- (void)rejectEventFromThisDevice:(id)device
{
  deviceCopy = device;
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "SGCK rejectEventFromThisDevice", v7, 2u);
  }

  cloudKitSync = [(SGDCloudKitSyncObserver *)self cloudKitSync];
  [cloudKitSync deleteStorageEvent:deviceCopy];
}

- (void)confirmEventFromOtherDevice:(id)device
{
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_231E60000, v3, OS_LOG_TYPE_DEBUG, "SGCK confirmEventFromOtherDevice [IGNORED]", v4, 2u);
  }
}

- (void)confirmEventFromThisDevice:(id)device
{
  deviceCopy = device;
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "SGCK confirmEventFromThisDevice", v7, 2u);
  }

  cloudKitSync = [(SGDCloudKitSyncObserver *)self cloudKitSync];
  [cloudKitSync deleteStorageEvent:deviceCopy];
}

- (id)cloudKitSync
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cksGetter = selfCopy->_cksGetter;
  if (cksGetter)
  {
    v4 = cksGetter[2]();
    cks = selfCopy->_cks;
    selfCopy->_cks = v4;

    v6 = selfCopy->_cksGetter;
    selfCopy->_cksGetter = 0;
  }

  objc_sync_exit(selfCopy);

  v7 = selfCopy->_cks;

  return v7;
}

- (SGDCloudKitSyncObserver)initWithCloudKitSyncGetter:(id)getter
{
  getterCopy = getter;
  v9.receiver = self;
  v9.super_class = SGDCloudKitSyncObserver;
  v5 = [(SGDCloudKitSyncObserver *)&v9 init];
  if (v5)
  {
    v6 = [getterCopy copy];
    cksGetter = v5->_cksGetter;
    v5->_cksGetter = v6;
  }

  return v5;
}

@end