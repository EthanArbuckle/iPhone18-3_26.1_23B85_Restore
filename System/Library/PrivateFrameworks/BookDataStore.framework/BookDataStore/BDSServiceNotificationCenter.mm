@interface BDSServiceNotificationCenter
+ (id)sharedInstance;
- (BDSServiceNotificationCenter)init;
- (void)_postServiceNotificationNames:(id)names andUpdateChangeToken:(id)token;
- (void)_startMonitoring;
- (void)_startMonitoringServiceNotifications;
- (void)_updateChangeToken:(id)token;
- (void)handleServiceNotificationNames:(id)names latestChangeToken:(int64_t)token;
- (void)q_startMonitoringServiceNotifications;
- (void)serviceConnectionDidResume;
- (void)serviceDidRestart;
- (void)startMonitoring;
@end

@implementation BDSServiceNotificationCenter

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E45E4C60;
  block[3] = &unk_1E875A198;
  block[4] = self;
  if (qword_1EE2B0560 != -1)
  {
    dispatch_once(&qword_1EE2B0560, block);
  }

  v2 = qword_1EE2AEBF8;

  return v2;
}

- (BDSServiceNotificationCenter)init
{
  v10.receiver = self;
  v10.super_class = BDSServiceNotificationCenter;
  v2 = [(BDSServiceNotificationCenter *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_changeTokenLock._os_unfair_lock_opaque = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("BDSServiceNotificationCenter.dispatchQueue", v4);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v5;

    v7 = [[BDSServiceProxy alloc] initWithConnectionDelegate:v3];
    serviceProxy = v3->_serviceProxy;
    v3->_serviceProxy = v7;
  }

  return v3;
}

- (void)serviceConnectionDidResume
{
  if ([(BDSServiceNotificationCenter *)self shouldMonitor])
  {

    MEMORY[0x1EEE66B58](self, sel__startMonitoringServiceNotifications);
  }
}

- (void)startMonitoring
{
  if (BDSXPCNotificationsEnabled())
  {

    MEMORY[0x1EEE66B58](self, sel__startMonitoring);
  }
}

- (void)_startMonitoring
{
  [(BDSServiceNotificationCenter *)self setShouldMonitor:1];

  MEMORY[0x1EEE66B58](self, sel__startMonitoringServiceNotifications);
}

- (void)_startMonitoringServiceNotifications
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E45E51F0;
  block[3] = &unk_1E875A008;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)q_startMonitoringServiceNotifications
{
  serviceProxy = [(BDSServiceNotificationCenter *)self serviceProxy];
  changeTokenObject = [(BDSServiceNotificationCenter *)self changeTokenObject];
  [serviceProxy monitorServiceNotificationsWithChangeToken:changeTokenObject completion:&unk_1F5E61F08];
}

- (void)serviceDidRestart
{
  if ([(BDSServiceNotificationCenter *)self shouldMonitor])
  {

    MEMORY[0x1EEE66B58](self, sel__startMonitoringServiceNotifications);
  }
}

- (void)handleServiceNotificationNames:(id)names latestChangeToken:(int64_t)token
{
  v14 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  v7 = BDSServiceXPCNotificationLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = namesCopy;
    v12 = 2048;
    tokenCopy = token;
    _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "handleServiceNotificationNames: %{public}@, latestChangeToken:%ld", &v10, 0x16u);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:token];
  [(BDSServiceNotificationCenter *)self _postServiceNotificationNames:namesCopy andUpdateChangeToken:v8];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_postServiceNotificationNames:(id)names andUpdateChangeToken:(id)token
{
  v20 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  tokenCopy = token;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [namesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(namesCopy);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter postNotificationName:v12 object:0];

        ++v11;
      }

      while (v9 != v11);
      v9 = [namesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  [(BDSServiceNotificationCenter *)self _updateChangeToken:tokenCopy];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_updateChangeToken:(id)token
{
  tokenCopy = token;
  os_unfair_lock_lock(&self->_changeTokenLock);
  if (tokenCopy)
  {
    [(BDSServiceNotificationCenter *)self setChangeTokenObject:tokenCopy];
  }

  os_unfair_lock_unlock(&self->_changeTokenLock);
}

@end