@interface CDPWalrusNotificationHandler
+ (id)sharedInstance;
- (BOOL)isObservingWalrusStatus;
- (CDPWalrusNotificationHandler)init;
- (void)_stopObservingWalrusStateChangeNotification;
- (void)dealloc;
- (void)startObservingWalrusStateChangeNotification;
@end

@implementation CDPWalrusNotificationHandler

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[CDPWalrusNotificationHandler sharedInstance];
  }

  v3 = sharedInstance_handler;

  return v3;
}

- (void)startObservingWalrusStateChangeNotification
{
  os_unfair_lock_lock(&self->_observerLock);
  isObservingWalrusStatus = self->_isObservingWalrusStatus;
  v4 = _CDPLogSystem();
  v5 = v4;
  if (isObservingWalrusStatus)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(CDPWalrusNotificationHandler *)v5 startObservingWalrusStateChangeNotification];
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DED99000, v5, OS_LOG_TYPE_DEFAULT, "Starting to observe walrus state change notification.", buf, 2u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, HandleWalrusStateChangedNotification, @"_CDPWalrusStateChangeDarwinNotification", 0, 0);
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1DED99000, v7, OS_LOG_TYPE_DEFAULT, "Starting to observe OT peer change notification.", v9, 2u);
    }

    v8 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v8, self, HandleWalrusStateChangedNotification, @"com.apple.security.octagon.peer-changed", 0, 0);
    self->_isObservingWalrusStatus = 1;
  }

  os_unfair_lock_unlock(&self->_observerLock);
}

uint64_t __46__CDPWalrusNotificationHandler_sharedInstance__block_invoke()
{
  sharedInstance_handler = objc_alloc_init(CDPWalrusNotificationHandler);

  return MEMORY[0x1EEE66BB8]();
}

- (CDPWalrusNotificationHandler)init
{
  v3.receiver = self;
  v3.super_class = CDPWalrusNotificationHandler;
  result = [(CDPWalrusNotificationHandler *)&v3 init];
  if (result)
  {
    result->_observerLock._os_unfair_lock_opaque = 0;
    result->_isObservingWalrusStatus = 0;
  }

  return result;
}

- (BOOL)isObservingWalrusStatus
{
  os_unfair_lock_lock(&self->_observerLock);
  isObservingWalrusStatus = self->_isObservingWalrusStatus;
  os_unfair_lock_unlock(&self->_observerLock);
  return isObservingWalrusStatus;
}

- (void)dealloc
{
  [(CDPWalrusNotificationHandler *)self _stopObservingWalrusStateChangeNotification];
  v3.receiver = self;
  v3.super_class = CDPWalrusNotificationHandler;
  [(CDPWalrusNotificationHandler *)&v3 dealloc];
}

- (void)_stopObservingWalrusStateChangeNotification
{
  os_unfair_lock_lock(&self->_observerLock);
  isObservingWalrusStatus = self->_isObservingWalrusStatus;
  v4 = _CDPLogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (isObservingWalrusStatus)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1DED99000, v4, OS_LOG_TYPE_DEFAULT, "Stopping to observe walrus state change notification.", buf, 2u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"_CDPWalrusStateChangeDarwinNotification", 0);
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1DED99000, v7, OS_LOG_TYPE_DEFAULT, "Stopping to observe OT peer change notification.", v9, 2u);
    }

    v8 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v8, self, @"com.apple.security.octagon.peer-changed", 0);
    self->_isObservingWalrusStatus = 0;
  }

  else
  {
    if (v5)
    {
      *v11 = 0;
      _os_log_impl(&dword_1DED99000, v4, OS_LOG_TYPE_DEFAULT, "Not yet started to observe walrus state change notification.", v11, 2u);
    }
  }

  os_unfair_lock_unlock(&self->_observerLock);
}

@end