@interface MSAlertManager
+ (id)sharedAlertManager;
- (MSAlertManager)init;
- (void)_dismissNotificationForPersonID:(id)d;
- (void)_showNotificationInfo:(id)info;
- (void)_userDidRespondToNotification:(__CFUserNotification *)notification info:(id)info responseFlags:(unint64_t)flags;
- (void)displayAlertForPersonID:(id)d notificationDict:(id)dict completionBlock:(id)block;
@end

@implementation MSAlertManager

- (void)displayAlertForPersonID:(id)d notificationDict:(id)dict completionBlock:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  blockCopy = block;
  error = 0;
  v10 = *MEMORY[0x277CBECE8];
  v11 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 0, &error, dict);
  if (v11)
  {
    v12 = v11;
    RunLoopSource = CFUserNotificationCreateRunLoopSource(v10, v11, _notificationCallBack, 0);
    if (RunLoopSource)
    {
      v14 = RunLoopSource;
      v15 = +[MSAMNotificationInfo info];
      [v15 setOwner:self];
      [v15 setPersonID:dCopy];
      [v15 setRunLoopSource:v14];
      [v15 setUserNotification:v12];
      [v15 setCompletionBlock:blockCopy];
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

- (void)_showNotificationInfo:(id)info
{
  infoCopy = info;
  personID = [infoCopy personID];
  [(MSAlertManager *)self _dismissNotificationForPersonID:personID];

  Mutable = _notificationToInfo_dict;
  if (!_notificationToInfo_dict)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    _notificationToInfo_dict = Mutable;
  }

  CFDictionarySetValue(Mutable, [infoCopy userNotification], infoCopy);
  personIDToNotification = self->_personIDToNotification;
  userNotification = [infoCopy userNotification];
  personID2 = [infoCopy personID];
  [(NSMutableDictionary *)personIDToNotification setObject:userNotification forKey:personID2];

  currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  getCFRunLoop = [currentRunLoop getCFRunLoop];
  runLoopSource = [infoCopy runLoopSource];

  CFRunLoopAddSource(getCFRunLoop, runLoopSource, *MEMORY[0x277CBF058]);
  v13 = +[MSPowerAssertionManager sharedManager];
  [v13 retainUIBusy];
}

- (void)_dismissNotificationForPersonID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_personIDToNotification objectForKey:dCopy];

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v15 = 138412290;
      v16 = dCopy;
      _os_log_debug_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Dismissing notification for personID %@", &v15, 0xCu);
    }

    v6 = [(NSMutableDictionary *)self->_personIDToNotification objectForKey:dCopy];
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
      [(NSMutableDictionary *)self->_personIDToNotification removeObjectForKey:dCopy];
      v10 = _notificationToInfo_dict;
      if (!_notificationToInfo_dict)
      {
        v10 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        _notificationToInfo_dict = v10;
      }

      CFDictionaryRemoveValue(v10, v7);
      completionBlock = [v9 completionBlock];

      if (completionBlock)
      {
        completionBlock2 = [v9 completionBlock];
        completionBlock2[2](completionBlock2, 0, 3);
      }

      v13 = +[MSPowerAssertionManager sharedManager];
      [v13 releaseUIBusy];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = dCopy;
      _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot find notification associated with person ID %@ to dismiss. Ignoring.", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_userDidRespondToNotification:(__CFUserNotification *)notification info:(id)info responseFlags:(unint64_t)flags
{
  infoCopy = info;
  Mutable = _notificationToInfo_dict;
  if (!_notificationToInfo_dict)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    _notificationToInfo_dict = Mutable;
  }

  CFDictionaryRemoveValue(Mutable, notification);
  personIDToNotification = self->_personIDToNotification;
  personID = [infoCopy personID];
  [(NSMutableDictionary *)personIDToNotification removeObjectForKey:personID];

  completionBlock = [infoCopy completionBlock];

  if (completionBlock)
  {
    completionBlock2 = [infoCopy completionBlock];
    completionBlock2[2](completionBlock2, 1, flags);
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