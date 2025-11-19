@interface CDPWebAccessNotificationHandler
+ (id)sharedInstance;
- (void)_stopObservingWebAccessStateChangeNotification;
- (void)dealloc;
- (void)startObservingWebAccessStateChangeNotification;
@end

@implementation CDPWebAccessNotificationHandler

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[CDPWebAccessNotificationHandler sharedInstance];
  }

  v3 = sharedInstance_handler_0;

  return v3;
}

uint64_t __49__CDPWebAccessNotificationHandler_sharedInstance__block_invoke()
{
  sharedInstance_handler_0 = objc_alloc_init(CDPWebAccessNotificationHandler);

  return MEMORY[0x1EEE66BB8]();
}

- (void)dealloc
{
  [(CDPWebAccessNotificationHandler *)self _stopObservingWebAccessStateChangeNotification];
  v3.receiver = self;
  v3.super_class = CDPWebAccessNotificationHandler;
  [(CDPWebAccessNotificationHandler *)&v3 dealloc];
}

- (void)startObservingWebAccessStateChangeNotification
{
  isObservingWebAccessStatus = self->_isObservingWebAccessStatus;
  v4 = _CDPLogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (isObservingWebAccessStatus)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1DED99000, v4, OS_LOG_TYPE_DEFAULT, "Already observing web access state change notification.", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&dword_1DED99000, v4, OS_LOG_TYPE_DEFAULT, "Starting to observe web access state change notification.", v7, 2u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, HandleWebAccessStateChangedNotification, @"_CDPWebAccessStateChangeDarwinNotification", 0, 0);
    self->_isObservingWebAccessStatus = 1;
  }
}

- (void)_stopObservingWebAccessStateChangeNotification
{
  isObservingWebAccessStatus = self->_isObservingWebAccessStatus;
  v4 = _CDPLogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (isObservingWebAccessStatus)
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&dword_1DED99000, v4, OS_LOG_TYPE_DEFAULT, "Stopping to observe web access state change notification.", v7, 2u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"_CDPWebAccessStateChangeDarwinNotification", 0);
    self->_isObservingWebAccessStatus = 0;
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1DED99000, v4, OS_LOG_TYPE_DEFAULT, "Not yet started to observe web access state change notification.", buf, 2u);
    }
  }
}

@end