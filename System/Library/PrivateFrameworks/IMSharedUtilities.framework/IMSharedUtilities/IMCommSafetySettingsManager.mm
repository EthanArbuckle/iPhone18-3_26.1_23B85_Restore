@interface IMCommSafetySettingsManager
+ (id)sharedManager;
- (BOOL)_hasOverriddenEnablementGroup;
- (BOOL)checkSensitivePhotosAnalyticsEnabled;
- (BOOL)checksForSensitivityOnSend;
- (BOOL)childIsYoungAgeGroup;
- (BOOL)isFeatureEnabled;
- (IMCommSafetySettingsManager)init;
- (int64_t)_fetchEnablementGroup;
- (int64_t)_overriddenEnablementGroup;
- (int64_t)enablementGroup;
- (void)_configureUserSafetySettingsListener;
- (void)_connectToFamilyCircle:(id)a3;
- (void)_updateSettings;
- (void)dealloc;
- (void)systemDidLeaveFirstDataProtectionLock;
@end

@implementation IMCommSafetySettingsManager

+ (id)sharedManager
{
  if (qword_1ED8CA128 != -1)
  {
    sub_1A85FFC3C();
  }

  v3 = qword_1ED8C9908;

  return v3;
}

- (IMCommSafetySettingsManager)init
{
  v22.receiver = self;
  v22.super_class = IMCommSafetySettingsManager;
  v2 = [(IMCommSafetySettingsManager *)&v22 init];
  if (!v2)
  {
    goto LABEL_14;
  }

  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "Initializing", buf, 2u);
    }
  }

  v2->_notificationToken = -1;
  v2->_protectedChildAge = -1;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  parents = v2->_parents;
  v2->_parents = v4;

  v2->_hasConnected = 0;
  v2->_enablementGroup = 3;
  v6 = dispatch_queue_create("com.apple.private.IMCommSafetySettingsManager.connection", 0);
  connectionQueue = v2->_connectionQueue;
  v2->_connectionQueue = v6;

  v8 = +[IMUnlockMonitor sharedInstance];
  [v8 addListener:v2];

  if (![(IMCommSafetySettingsManager *)v2 _shouldUseScreenTimeAndFamilyCircle])
  {
LABEL_13:
    [(IMCommSafetySettingsManager *)v2 _configureUserSafetySettingsListener];
LABEL_14:
    v14 = v2;
    goto LABEL_15;
  }

  objc_initWeak(&location, v2);
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v9 = qword_1ED8C9878;
  v31 = qword_1ED8C9878;
  if (!qword_1ED8C9878)
  {
    *buf = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = sub_1A8700DA0;
    v26 = &unk_1E78261C8;
    v27 = &v28;
    v10 = sub_1A86008C0();
    v11 = dlsym(v10, "STSettingsDidChangeNotification");
    *(v27[1] + 24) = v11;
    qword_1ED8C9878 = *(v27[1] + 24);
    v9 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (v9)
  {
    v12 = *v9;
    v13 = v2->_connectionQueue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1A86FFDB4;
    handler[3] = &unk_1E782B338;
    objc_copyWeak(&v20, &location);
    if (notify_register_dispatch(v12, &v2->_notificationToken, v13, handler))
    {
      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
      v14 = 0;
LABEL_15:

      return v14;
    }

    v15 = v2->_connectionQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A8600ABC;
    block[3] = &unk_1E7826078;
    objc_copyWeak(&v18, &location);
    dispatch_async(v15, block);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
    goto LABEL_13;
  }

  dlerror();
  result = abort_report_np();
  __break(1u);
  return result;
}

- (void)_configureUserSafetySettingsListener
{
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    v3 = MEMORY[0x1E69DF298];
    v5 = MEMORY[0x1E69E9820];
    v6 = 3221225472;
    v7 = sub_1A87003C0;
    v8 = &unk_1E782B388;
    objc_copyWeak(&v9, &location);
    v4 = [v3 subscribeForAnalysisEnabledChanges:&v5];
    [(IMCommSafetySettingsManager *)self setEnablementSubscription:v4, v5, v6, v7, v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)_updateSettings
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = +[IMUnlockMonitor sharedInstance];
  v4 = [v3 isUnderFirstDataProtectionLock];

  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(v30) = 0;
        _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Not updating settings as we are under first unlock.", &v30, 2u);
      }
    }
  }

  else
  {
    dispatch_assert_queue_not_V2(MEMORY[0x1E69E96A0]);
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v6 = qword_1ED8C9880;
    v29 = qword_1ED8C9880;
    if (!qword_1ED8C9880)
    {
      *&v30 = MEMORY[0x1E69E9820];
      *(&v30 + 1) = 3221225472;
      v31 = sub_1A8600F1C;
      v32 = &unk_1E78261C8;
      v33 = &v26;
      sub_1A8600F1C(&v30);
      v6 = v27[3];
    }

    v7 = v6;
    _Block_object_dispose(&v26, 8);
    v8 = objc_alloc_init(v6);
    v25 = 0;
    v9 = [v8 currentConfigurationWithError:&v25];
    v10 = v25;
    v11 = v10;
    if (!v9 || v10)
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          LODWORD(v30) = 138412290;
          *(&v30 + 4) = v11;
          _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "IMCommSafetySettingsManager: Error fetching CommSafety configuration from ScreenTime: %@", &v30, 0xCu);
        }
      }
    }

    else
    {
      v12 = [v9 isCommunicationSafetyNotificationEnabled];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = sub_1A8603FE8;
      v22[3] = &unk_1E782B3B0;
      v22[4] = self;
      v23 = v9;
      v24 = v12;
      v13 = MEMORY[0x1E69E96A0];
      dispatch_async(MEMORY[0x1E69E96A0], v22);
    }

    v15 = +[IMDefaults sharedInstance];
    v16 = [v15 getValueFromDomain:@"com.apple.messages" forKey:@"kCommSafetyRefreshInterval"];

    v17 = [v16 longLongValue];
    v18 = 240;
    if (v17)
    {
      v18 = v17;
    }

    v19 = dispatch_time(0, ((v18 * 60.0) * 1000000000.0));
    connectionQueue = self->_connectionQueue;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1A8700660;
    v21[3] = &unk_1E7828050;
    v21[4] = self;
    dispatch_after(v19, connectionQueue, v21);
  }
}

- (BOOL)isFeatureEnabled
{
  v3 = [(IMCommSafetySettingsManager *)self enablementGroup];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(IMCommSafetySettingsManager *)self enablementGroup]== 2;
  }

  return v3;
}

- (int64_t)enablementGroup
{
  if ([(IMCommSafetySettingsManager *)self _hasOverriddenEnablementGroup])
  {

    return MEMORY[0x1EEE66B58](self, sel__overriddenEnablementGroup);
  }

  else
  {
    result = self->_enablementGroup;
    if (result == 3)
    {
      result = [(IMCommSafetySettingsManager *)self _fetchEnablementGroup];
      self->_enablementGroup = result;
    }
  }

  return result;
}

- (BOOL)_hasOverriddenEnablementGroup
{
  if (qword_1EB30A920 != -1)
  {
    sub_1A8601010();
  }

  return byte_1EB3095E8;
}

- (int64_t)_fetchEnablementGroup
{
  v7 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E69DF298] isCommunicationSafetyEnabled])
  {
    v2 = 1;
  }

  else if ([MEMORY[0x1E69DF298] isNudityDetectionEnabled])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 134217984;
      v6 = v2;
      _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "Fetched CommSafety enablement group: %ld", &v5, 0xCu);
    }
  }

  return v2;
}

- (void)dealloc
{
  notificationToken = self->_notificationToken;
  if (notificationToken != -1)
  {
    notify_cancel(notificationToken);
  }

  v4 = [(IMCommSafetySettingsManager *)self enablementSubscription];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(IMCommSafetySettingsManager *)self enablementSubscription];
    [v6 cancel];
  }

  v7.receiver = self;
  v7.super_class = IMCommSafetySettingsManager;
  [(IMCommSafetySettingsManager *)&v7 dealloc];
}

- (BOOL)checkSensitivePhotosAnalyticsEnabled
{
  if ([(IMCommSafetySettingsManager *)self hasConnected])
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    connectionQueue = self->_connectionQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1A86FFF88;
    v8[3] = &unk_1E7828258;
    v8[4] = self;
    v8[5] = &v9;
    dispatch_sync(connectionQueue, v8);
    v4 = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
    return v4;
  }

  else
  {
    v6 = +[IMDefaults sharedInstance];
    v7 = [v6 getBoolFromDomain:@"com.apple.messages.commsafety" forKey:@"CheckSensitivePhotosAnalytics" defaultValue:0];

    return v7;
  }
}

- (BOOL)childIsYoungAgeGroup
{
  if ([(IMCommSafetySettingsManager *)self hasConnected])
  {
    protectedChildAge = self->_protectedChildAge;
    if (protectedChildAge < 0)
    {
      v10 = dispatch_semaphore_create(0);
      *buf = 0;
      v20 = buf;
      v21 = 0x2020000000;
      v22 = 0;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = sub_1A87003AC;
      v16[3] = &unk_1E782B360;
      v18 = buf;
      v7 = v10;
      v17 = v7;
      [(IMCommSafetySettingsManager *)self _connectToFamilyCircle:v16];
      v11 = dispatch_time(0, 100000000);
      if (dispatch_semaphore_wait(v7, v11) || (v20[24] & 1) == 0)
      {
        if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *v15 = 0;
            _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Failed to identify child's age, proceed with default value", v15, 2u);
          }
        }

        _Block_object_dispose(buf, 8);
        goto LABEL_20;
      }

      _Block_object_dispose(buf, 8);
      protectedChildAge = self->_protectedChildAge;
    }

    v4 = +[IMDefaults sharedInstance];
    v5 = [MEMORY[0x1E696AD98] numberWithBool:protectedChildAge < 13];
    [v4 setValue:v5 forDomain:@"com.apple.messages.commsafety" forKey:@"IsYoungAgeGroup"];

    v6 = IMOSLoggingEnabled();
    if (protectedChildAge <= 12)
    {
      if (!v6)
      {
LABEL_21:
        LOBYTE(v6) = 1;
        return v6;
      }

      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Child identified as in young age group", buf, 2u);
      }

LABEL_20:

      goto LABEL_21;
    }

    if (v6)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Child in older age group", buf, 2u);
      }

      LOBYTE(v6) = 0;
    }
  }

  else
  {
    v8 = +[IMDefaults sharedInstance];
    v9 = [v8 getBoolFromDomain:@"com.apple.messages.commsafety" forKey:@"IsYoungAgeGroup" defaultValue:0];

    LOBYTE(v6) = v9;
  }

  return v6;
}

- (BOOL)checksForSensitivityOnSend
{
  v3 = [(IMCommSafetySettingsManager *)self isFeatureEnabled];
  if (v3)
  {
    LOBYTE(v3) = [(IMCommSafetySettingsManager *)self enablementGroup]== 1;
  }

  return v3;
}

- (int64_t)_overriddenEnablementGroup
{
  if (qword_1EB30B840 != -1)
  {
    sub_1A88C6328();
  }

  return qword_1EB30B838;
}

- (void)_connectToFamilyCircle:(id)a3
{
  v4 = a3;
  v5 = +[IMUnlockMonitor sharedInstance];
  v6 = [v5 isUnderFirstDataProtectionLock];

  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Not connecting to FamilyCircle as we are under first unlock.", buf, 2u);
      }
    }
  }

  else
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v8 = qword_1ED8C9888;
    v21 = qword_1ED8C9888;
    if (!qword_1ED8C9888)
    {
      *buf = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = sub_1A86011E0;
      v16 = &unk_1E78261C8;
      v17 = &v18;
      sub_1A86011E0(buf);
      v8 = v19[3];
    }

    v9 = v8;
    _Block_object_dispose(&v18, 8);
    v10 = objc_alloc_init(v8);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1A870088C;
    v11[3] = &unk_1E782B3D8;
    v11[4] = self;
    v12 = v4;
    [v10 startRequestWithCompletionHandler:v11];
  }
}

- (void)systemDidLeaveFirstDataProtectionLock
{
  if ([(IMCommSafetySettingsManager *)self _shouldUseScreenTimeAndFamilyCircle])
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "System did leave first unlock, updating ST settings", buf, 2u);
      }
    }

    objc_initWeak(buf, self);
    connectionQueue = self->_connectionQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A8700C68;
    block[3] = &unk_1E7826078;
    objc_copyWeak(&v6, buf);
    dispatch_async(connectionQueue, block);
    objc_destroyWeak(&v6);
    objc_destroyWeak(buf);
  }
}

@end