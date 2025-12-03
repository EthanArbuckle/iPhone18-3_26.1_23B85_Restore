@interface FTEntitlementSupport
+ (id)sharedInstance;
- (BOOL)_disconnectCTServerConnection;
- (BOOL)_reconnectCTServerConnectionIfNecessary;
- (BOOL)_registerForCTEntitlementNotifications;
- (BOOL)_setupCTServerConnection;
- (BOOL)faceTimeNonWiFiEntitled;
- (FTEntitlementSupport)init;
- (NSDictionary)registrationState;
- (void)_cleanupMachInfo;
- (void)_entitlementStatusChanged;
- (void)_handleCTServiceRequestName:(__CFString *)name userInfo:(__CFDictionary *)info contextInfo:(void *)contextInfo;
- (void)_updateEntitlementStatusUsingCTEntitlementsInfo:(__CFDictionary *)info;
@end

@implementation FTEntitlementSupport

- (void)_cleanupMachInfo
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, " Cleaning up mach bits", v5, 2u);
  }

  ctServerConnection = self->_ctServerConnection;
  if (ctServerConnection)
  {
    self->_ctServerConnection = 0;
    CFRelease(ctServerConnection);
  }
}

+ (id)sharedInstance
{
  if (qword_1ED7687B0 != -1)
  {
    sub_195926B6C();
  }

  v3 = qword_1ED768710;

  return v3;
}

- (FTEntitlementSupport)init
{
  v5.receiver = self;
  v5.super_class = FTEntitlementSupport;
  v2 = [(FTEntitlementSupport *)&v5 init];
  if (v2)
  {
    v3 = *MEMORY[0x1E6965178];
    v2->_entitlementStatus = *MEMORY[0x1E6965178];
    if (v3)
    {
      CFRetain(v3);
    }

    [(FTEntitlementSupport *)v2 _setupCTServerConnection];
  }

  return v2;
}

- (BOOL)_setupCTServerConnection
{
  if (self->_ctServerConnection)
  {
    return 1;
  }

  [(FTEntitlementSupport *)self _cleanupMachInfo];
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Connecting to CT for requests", buf, 2u);
  }

  v17 = 0;
  *buf = 0u;
  v16 = 0u;
  v5 = *MEMORY[0x1E695E480];
  v6 = _CTServerConnectionCreateWithIdentifier();
  self->_ctServerConnection = v6;
  v2 = v6 != 0;
  if (v6)
  {
    v7 = im_primary_queue();
    _CTServerConnectionSetTargetQueue();

    ctServerConnection = self->_ctServerConnection;
    v9 = *MEMORY[0x1E6965188];
    if (_CTServerConnectionRegisterForNotification() >> 32)
    {
      v10 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_impl(&dword_195925000, v10, OS_LOG_TYPE_ERROR, "Carrier Entitlements: Could not register for Message received notification", v14, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        _IDSLogTransport();
      }
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x1E6965268], 0);
    [(FTEntitlementSupport *)self _registerForCTEntitlementNotifications];
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, " ** Failed connection", v14, 2u);
    }

    [(FTEntitlementSupport *)self _cleanupMachInfo];
  }

  return v2;
}

- (BOOL)_registerForCTEntitlementNotifications
{
  v25 = *MEMORY[0x1E69E9840];
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Registering for CT entitlement requests", buf, 2u);
  }

  v4 = *MEMORY[0x1E6965170];
  v5 = IMSingleObjectArray();
  if ([v5 count])
  {
    ctServerConnection = self->_ctServerConnection;
    v7 = _CTServerConnectionVerifyCarrierEntitlements();
    registration2 = [MEMORY[0x1E69A6138] registration];
    v9 = os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT);
    if (HIDWORD(v7))
    {
      if (!v9)
      {
LABEL_20:

        goto LABEL_21;
      }

      *buf = 134218240;
      v22 = v7;
      v23 = 2048;
      v24 = v7 >> 32;
      v16 = " => Failed registration (domain: %ld error: %ld)";
      v17 = registration2;
      v18 = 22;
LABEL_19:
      _os_log_impl(&dword_195925000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
      goto LABEL_20;
    }

    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, " => Registered for entitlements updates", buf, 2u);
    }
  }

  registration3 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "Retrieving initial CT carrier entitlements", buf, 2u);
  }

  v11 = self->_ctServerConnection;
  CarrierEntitlements = _CTServerConnectionGetCarrierEntitlements();
  if (!HIDWORD(CarrierEntitlements))
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (!os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v16 = " => Initial carrier CT entitlements dictionary was NULL";
    v17 = registration2;
    v18 = 2;
    goto LABEL_19;
  }

  v14 = CarrierEntitlements;
  registration4 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v22 = v14;
    v23 = 2048;
    v24 = v14 >> 32;
    _os_log_impl(&dword_195925000, registration4, OS_LOG_TYPE_DEFAULT, " => Failed to retrieve initial CT carrier entitlements (domain: %ld error: %ld)", buf, 0x16u);
  }

LABEL_21:
  v19 = *MEMORY[0x1E69E9840];
  return 0;
}

- (BOOL)faceTimeNonWiFiEntitled
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = +[FTDeviceSupport sharedInstance];
  supportsNonWiFiFaceTime = [v3 supportsNonWiFiFaceTime];

  if (supportsNonWiFiFaceTime)
  {
    v5 = +[FTUserConfiguration sharedInstance];
    _nonWifiFaceTimeEntitled = [v5 _nonWifiFaceTimeEntitled];

    if (_nonWifiFaceTimeEntitled)
    {
      result = 1;
    }

    else
    {
      registration = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
      {
        entitlementStatus = self->_entitlementStatus;
        v12 = 138412290;
        v13 = entitlementStatus;
        _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Returning entitlement based on status: %@", &v12, 0xCu);
      }

      result = CFEqual(self->_entitlementStatus, *MEMORY[0x1E6965180]) == 0;
    }
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "This device does not support non WiFi facetime, thus we're not entitled", &v12, 2u);
    }

    result = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSDictionary)registrationState
{
  v2 = +[FTDeviceSupport sharedInstance];
  registrationState = [v2 registrationState];

  return registrationState;
}

- (void)_entitlementStatusChanged
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Posting notification for entitlement status changed", v5, 2u);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:@"__kFTEntitlementStatusChangedNotification" object:self userInfo:0];
}

- (void)_updateEntitlementStatusUsingCTEntitlementsInfo:(__CFDictionary *)info
{
  v16 = *MEMORY[0x1E69E9840];
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    infoCopy = info;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Entitlement update: %@", &v14, 0xCu);
  }

  if (info)
  {
    entitlementStatus = self->_entitlementStatus;
    if (entitlementStatus)
    {
      CFRelease(entitlementStatus);
      self->_entitlementStatus = 0;
    }

    if (*MEMORY[0x1E6965170])
    {
      self->_entitlementStatus = CFDictionaryGetValue(info, *MEMORY[0x1E6965170]);
    }

    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_entitlementStatus;
      v14 = 138412290;
      infoCopy = v8;
      _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "CT returned entitlement value: %@", &v14, 0xCu);
    }

    v9 = self->_entitlementStatus;
    registration3 = [MEMORY[0x1E69A6138] registration];
    v11 = os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, " => saving it", &v14, 2u);
      }

      v12 = self->_entitlementStatus;
LABEL_17:
      CFRetain(v12);
      goto LABEL_18;
    }

    if (v11)
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, " => empty value, defaulting to allowed", &v14, 2u);
    }

    v12 = *MEMORY[0x1E6965178];
    self->_entitlementStatus = *MEMORY[0x1E6965178];
    if (v12)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)_reconnectCTServerConnectionIfNecessary
{
  v10 = 0;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Reconnecting to CT if we can", buf, 2u);
  }

  if ([(FTEntitlementSupport *)self _setupCTServerConnection])
  {
    if (self->_ctServerConnection && (CommCenterInitializationState = _CTServerConnectionGetCommCenterInitializationState(), self->_ctServerConnection) && (CommCenterInitializationState || v10))
    {
      [(FTEntitlementSupport *)self _registerForCTEntitlementNotifications];
    }

    else
    {
      [(FTEntitlementSupport *)self _cleanupMachInfo];
      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, " => Watching for launch", v8, 2u);
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_195953140, *MEMORY[0x1E6965268], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }
  }

  return 1;
}

- (BOOL)_disconnectCTServerConnection
{
  if (self->_ctServerConnection)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Disconnect CT server connection", v5, 2u);
    }

    [(FTEntitlementSupport *)self _unregisterForCTEntitlementNotifications];
    [(FTEntitlementSupport *)self _cleanupMachInfo];
  }

  return 1;
}

- (void)_handleCTServiceRequestName:(__CFString *)name userInfo:(__CFDictionary *)info contextInfo:(void *)contextInfo
{
  v17 = *MEMORY[0x1E69E9840];
  if (CFEqual(name, *MEMORY[0x1E6965188]))
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Entitlement update", &v13, 2u);
    }

    [(FTEntitlementSupport *)self _updateEntitlementStatusUsingCTEntitlementsInfo:info];
    [(FTEntitlementSupport *)self _entitlementStatusChanged];
  }

  else
  {
    v9 = CFEqual(name, *MEMORY[0x1E6965260]);
    registration2 = [MEMORY[0x1E69A6138] registration];
    v11 = os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "** CT Mach port died", &v13, 2u);
      }

      [(FTEntitlementSupport *)self _disconnectCTServerConnection];
      [(FTEntitlementSupport *)self _reconnectCTServerConnectionIfNecessary];
    }

    else
    {
      if (v11)
      {
        v13 = 138412546;
        nameCopy = name;
        v15 = 2112;
        infoCopy = info;
        _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "Unhandled request type, name: %@   userInfo: %@", &v13, 0x16u);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end