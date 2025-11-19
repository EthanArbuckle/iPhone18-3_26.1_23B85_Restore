@interface MSAlertManager
+ (id)sharedAlertManager;
- (MSAlertManager)init;
- (void)_dismissNotificationForPersonID:(id)a3;
- (void)_showNotificationInfo:(id)a3;
- (void)_userDidRespondToNotification:(__CFUserNotification *)a3 info:(id)a4 responseFlags:(unint64_t)a5;
- (void)displayAlertForPersonID:(id)a3 notificationDict:(id)a4 completionBlock:(id)a5;
@end

@implementation MSAlertManager

- (void)displayAlertForPersonID:(id)a3 notificationDict:(id)a4 completionBlock:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  error = 0;
  v10 = *MEMORY[0x277CBECE8];
  v11 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 0, &error, a4);
  if (v11)
  {
    v12 = v11;
    RunLoopSource = CFUserNotificationCreateRunLoopSource(v10, v11, _notificationCallBack, 0);
    if (RunLoopSource)
    {
      v14 = RunLoopSource;
      v15 = +[MSAMNotificationInfo info];
      [v15 setOwner:self];
      [v15 setPersonID:v8];
      [v15 setRunLoopSource:v14];
      [v15 setUserNotification:v12];
      [v15 setCompletionBlock:v9];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Showing alert to user.", buf, 2u);
      }

      [(MSAlertManager *)self _showNotificationInfo:v15];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to create user notification run loop source. Cannot display notification.", buf, 2u);
      }

      CFRelease(v12);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v19 = error;
    _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to create user notification. Error: %ld", buf, 0xCu);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_showNotificationInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 personID];
  [(MSAlertManager *)self _dismissNotificationForPersonID:v5];

  Mutable = _notificationToInfo_dict;
  if (!_notificationToInfo_dict)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    _notificationToInfo_dict = Mutable;
  }

  CFDictionarySetValue(Mutable, [v4 userNotification], v4);
  personIDToNotification = self->_personIDToNotification;
  v8 = [v4 userNotification];
  v9 = [v4 personID];
  [(NSMutableDictionary *)personIDToNotification setObject:v8 forKey:v9];

  v10 = [MEMORY[0x277CBEB88] currentRunLoop];
  v11 = [v10 getCFRunLoop];
  v12 = [v4 runLoopSource];

  CFRunLoopAddSource(v11, v12, *MEMORY[0x277CBF058]);
  v13 = +[MSPowerAssertionManager sharedManager];
  [v13 retainUIBusy];
}

- (void)_dismissNotificationForPersonID:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_personIDToNotification objectForKey:v4];

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v15 = 138412290;
      v16 = v4;
      _os_log_debug_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Dismissing notification for personID %@", &v15, 0xCu);
    }

    v6 = [(NSMutableDictionary *)self->_personIDToNotification objectForKey:v4];
    if (v6)
    {
      v7 = v6;
      Mutable = _notificationToInfo_dict;
      if (!_notificationToInfo_dict)
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        _notificationToInfo_dict = Mutable;
      }

      v9 = CFDictionaryGetValue(Mutable, v7);
      CFUserNotificationCancel(v7);
      [(NSMutableDictionary *)self->_personIDToNotification removeObjectForKey:v4];
      v10 = _notificationToInfo_dict;
      if (!_notificationToInfo_dict)
      {
        v10 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        _notificationToInfo_dict = v10;
      }

      CFDictionaryRemoveValue(v10, v7);
      v11 = [v9 completionBlock];

      if (v11)
      {
        v12 = [v9 completionBlock];
        v12[2](v12, 0, 3);
      }

      v13 = +[MSPowerAssertionManager sharedManager];
      [v13 releaseUIBusy];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = v4;
      _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot find notification associated with person ID %@ to dismiss. Ignoring.", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_userDidRespondToNotification:(__CFUserNotification *)a3 info:(id)a4 responseFlags:(unint64_t)a5
{
  v14 = a4;
  Mutable = _notificationToInfo_dict;
  if (!_notificationToInfo_dict)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    _notificationToInfo_dict = Mutable;
  }

  CFDictionaryRemoveValue(Mutable, a3);
  personIDToNotification = self->_personIDToNotification;
  v10 = [v14 personID];
  [(NSMutableDictionary *)personIDToNotification removeObjectForKey:v10];

  v11 = [v14 completionBlock];

  if (v11)
  {
    v12 = [v14 completionBlock];
    v12[2](v12, 1, a5);
  }

  v13 = +[MSPowerAssertionManager sharedManager];
  [v13 releaseUIBusy];
}

- (MSAlertManager)init
{
  v6.receiver = self;
  v6.super_class = MSAlertManager;
  v2 = [(MSAlertManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    personIDToNotification = v2->_personIDToNotification;
    v2->_personIDToNotification = v3;
  }

  return v2;
}

+ (id)sharedAlertManager
{
  if (sharedAlertManager_onceToken != -1)
  {
    dispatch_once(&sharedAlertManager_onceToken, &__block_literal_global_35);
  }

  v3 = sharedAlertManager_mgr;

  return v3;
}

uint64_t __36__MSAlertManager_sharedAlertManager__block_invoke()
{
  sharedAlertManager_mgr = objc_alloc_init(MSAlertManager);

  return MEMORY[0x2821F96F8]();
}

@end