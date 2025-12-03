@interface NMSNotificationDispatcher
- (NMSNotificationDispatcher)initWithNotificationName:(id)name;
- (NMSNotificationDispatcherDelegate)delegate;
- (void)_handleLocalNotificationIgnoringSenderPID:(BOOL)d;
- (void)_handleRemoteNotification;
- (void)_postLocalDarwinNotification;
- (void)beginWaitingForUpdates;
- (void)dealloc;
- (void)endWaitingForUpdates;
- (void)scheduleLocalDarwinNotification;
@end

@implementation NMSNotificationDispatcher

- (NMSNotificationDispatcher)initWithNotificationName:(id)name
{
  nameCopy = name;
  v25.receiver = self;
  v25.super_class = NMSNotificationDispatcher;
  v6 = [(NMSNotificationDispatcher *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseNotificationName, name);
    v8 = [nameCopy stringByAppendingString:@".local"];
    localDarwinNotificationName = v7->_localDarwinNotificationName;
    v7->_localDarwinNotificationName = v8;

    v10 = [nameCopy stringByAppendingString:@".remote"];
    remoteDarwinNotificationName = v7->_remoteDarwinNotificationName;
    v7->_remoteDarwinNotificationName = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.NanoMusicSync.NotificationDispatcher", v12);
    queue = v7->_queue;
    v7->_queue = v13;

    objc_initWeak(&location, v7);
    v7->_localNotifyToken = -1;
    uTF8String = [(NSString *)v7->_localDarwinNotificationName UTF8String];
    v16 = v7->_queue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __54__NMSNotificationDispatcher_initWithNotificationName___block_invoke;
    handler[3] = &unk_27993E300;
    objc_copyWeak(&v23, &location);
    notify_register_dispatch(uTF8String, &v7->_localNotifyToken, v16, handler);
    v7->_remoteNotifyToken = -1;
    uTF8String2 = [(NSString *)v7->_remoteDarwinNotificationName UTF8String];
    v18 = v7->_queue;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __54__NMSNotificationDispatcher_initWithNotificationName___block_invoke_2;
    v20[3] = &unk_27993E300;
    objc_copyWeak(&v21, &location);
    notify_register_dispatch(uTF8String2, &v7->_remoteNotifyToken, v18, v20);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __54__NMSNotificationDispatcher_initWithNotificationName___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleLocalNotificationIgnoringSenderPID:0];
}

void __54__NMSNotificationDispatcher_initWithNotificationName___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleRemoteNotification];
}

- (void)dealloc
{
  if (notify_is_valid_token(self->_localNotifyToken))
  {
    notify_cancel(self->_localNotifyToken);
  }

  if (notify_is_valid_token(self->_remoteNotifyToken))
  {
    notify_cancel(self->_remoteNotifyToken);
  }

  v3.receiver = self;
  v3.super_class = NMSNotificationDispatcher;
  [(NMSNotificationDispatcher *)&v3 dealloc];
}

- (void)scheduleLocalDarwinNotification
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__NMSNotificationDispatcher_scheduleLocalDarwinNotification__block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __60__NMSNotificationDispatcher_scheduleLocalDarwinNotification__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!*(result + 32))
  {
    return [result _postLocalDarwinNotification];
  }

  *(result + 40) = 1;
  return result;
}

- (void)beginWaitingForUpdates
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__NMSNotificationDispatcher_beginWaitingForUpdates__block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)endWaitingForUpdates
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__NMSNotificationDispatcher_endWaitingForUpdates__block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __49__NMSNotificationDispatcher_endWaitingForUpdates__block_invoke(uint64_t result)
{
  --*(*(result + 32) + 32);
  v1 = *(result + 32);
  if (!*(v1 + 32) && *(v1 + 40) == 1)
  {
    *(v1 + 40) = 0;
    return [*(result + 32) _postLocalDarwinNotification];
  }

  return result;
}

- (void)_handleLocalNotificationIgnoringSenderPID:(BOOL)d
{
  v16 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v4 = NMLogForCategory(5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    localDarwinNotificationName = self->_localDarwinNotificationName;
    *buf = 138412290;
    *&buf[4] = localDarwinNotificationName;
    _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "[NMSyncDefaults] Received notification: %@", buf, 0xCu);
  }

  *buf = 0;
  v6 = getpid();
  notify_get_state(self->_localNotifyToken, buf);
  v7 = *buf;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (v7 == v6)
  {
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      [v10 dispatcherDidReceiveNotificationFromCurrentProcess:self];
LABEL_8:
    }
  }

  else
  {
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      [v10 dispatcherDidReceiveNotificationFromOtherProcess:self];
      goto LABEL_8;
    }
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__NMSNotificationDispatcher__handleLocalNotificationIgnoringSenderPID___block_invoke;
  v13[3] = &unk_27993E610;
  v13[4] = self;
  v14 = v7 == v6;
  dispatch_async(MEMORY[0x277D85CD0], v13);
  v12 = *MEMORY[0x277D85DE8];
}

void __71__NMSNotificationDispatcher__handleLocalNotificationIgnoringSenderPID___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(*(a1 + 32) + 56);
  v7 = @"IsInProcessNotification";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v2 postNotificationName:v3 object:0 userInfo:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleRemoteNotification
{
  v12 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = NMLogForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    remoteDarwinNotificationName = self->_remoteDarwinNotificationName;
    *buf = 138412290;
    v11 = remoteDarwinNotificationName;
    _os_log_impl(&dword_25B27B000, v3, OS_LOG_TYPE_DEFAULT, "[NMSyncDefaults] Received notification: %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 dispatcherDidReceiveNotificationFromRemoteDevice:self];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__NMSNotificationDispatcher__handleRemoteNotification__block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v8 = *MEMORY[0x277D85DE8];
}

void __54__NMSNotificationDispatcher__handleRemoteNotification__block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(*(a1 + 32) + 56);
  v6 = @"IsInProcessNotification";
  v7[0] = MEMORY[0x277CBEC28];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 postNotificationName:v3 object:0 userInfo:v4];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_postLocalDarwinNotification
{
  v10 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = NMLogForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    localDarwinNotificationName = self->_localDarwinNotificationName;
    v8 = 138412290;
    v9 = localDarwinNotificationName;
    _os_log_impl(&dword_25B27B000, v3, OS_LOG_TYPE_DEFAULT, "[NMSyncDefaults] Posting notification: %@", &v8, 0xCu);
  }

  localNotifyToken = self->_localNotifyToken;
  v6 = getpid();
  notify_set_state(localNotifyToken, v6);
  notify_post([(NSString *)self->_localDarwinNotificationName UTF8String]);
  v7 = *MEMORY[0x277D85DE8];
}

- (NMSNotificationDispatcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end