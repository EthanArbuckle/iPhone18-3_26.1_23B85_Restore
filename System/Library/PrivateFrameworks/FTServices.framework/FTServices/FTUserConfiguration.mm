@interface FTUserConfiguration
+ (id)sharedInstance;
- (BOOL)_adequateInternalOrCarrierInstall;
- (BOOL)_getCellularDataEnabledForBundleID:(id)d;
- (BOOL)_getNonBluetoothDataAllowedForBundleID:(id)d;
- (BOOL)_getWifiDataAllowedForBundleID:(id)d;
- (BOOL)_nonWifiFaceTimeEntitled;
- (BOOL)allowAnyNetwork;
- (FTUserConfiguration)init;
- (NSArray)selectedPhoneNumberRegistrationSubscriptionLabels;
- (NSNumber)selectedPhoneNumberRegistrationSubscriptionNumber;
- (__CTServerConnection)ctServerConnection;
- (void)_clearCaches;
- (void)_setAppCellularDataEnabled:(BOOL)enabled;
- (void)_setupUsageHandlerIfNeeded;
- (void)dealloc;
- (void)setIsDeviceInDualPhoneIdentityMode:(BOOL)mode;
- (void)setIsDeviceInManualPhoneSelectionMode:(BOOL)mode;
- (void)setSelectedPhoneNumberRegistrationSubscriptionLabels:(id)labels;
- (void)silentlySetSelectedPhoneNumberRegistrationSubscriptionLabels:(id)labels;
@end

@implementation FTUserConfiguration

+ (id)sharedInstance
{
  if (qword_1ED7687B8 != -1)
  {
    sub_195928F80();
  }

  v3 = qword_1ED768718;

  return v3;
}

- (FTUserConfiguration)init
{
  v18 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = FTUserConfiguration;
  v2 = [(FTUserConfiguration *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v2->_shouldCacheCTConnection = 1;
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];

    if ([processName isEqualToString:@"InCallService"])
    {
      v6 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = processName;
        _os_log_impl(&dword_195925000, v6, OS_LOG_TYPE_DEFAULT, "Not building UserConfiguration cache for {processName: %@}", buf, 0xCu);
      }

      v3->_shouldCacheCTConnection = 0;
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      cellularDataAvailableCache = v3->_cellularDataAvailableCache;
      v3->_cellularDataAvailableCache = v7;

      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      wifiAllowedCache = v3->_wifiAllowedCache;
      v3->_wifiAllowedCache = v9;

      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      nonBTAllowedCache = v3->_nonBTAllowedCache;
      v3->_nonBTAllowedCache = v11;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v3;
}

- (NSArray)selectedPhoneNumberRegistrationSubscriptionLabels
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x19A8B8420](@"com.apple.conference", @"phoneNumberRegistrationSubscriptionLabel");
  if (!v3)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [(FTUserConfiguration *)self setSelectedPhoneNumberRegistrationSubscriptionLabels:v4];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
LABEL_6:
    v4 = 0;
  }

LABEL_7:

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (NSNumber)selectedPhoneNumberRegistrationSubscriptionNumber
{
  v2 = MEMORY[0x19A8B8420](@"com.apple.conference", @"phoneNumberRegistrationSubscriptionNumber");
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)dealloc
{
  ctServerConnection = self->_ctServerConnection;
  if (ctServerConnection)
  {
    CFRelease(ctServerConnection);
  }

  v4.receiver = self;
  v4.super_class = FTUserConfiguration;
  [(FTUserConfiguration *)&v4 dealloc];
}

- (__CTServerConnection)ctServerConnection
{
  v27 = *MEMORY[0x1E69E9840];
  ctServerConnection = self->_ctServerConnection;
  if (!ctServerConnection)
  {
    objc_initWeak(&location, self);
    v4 = im_primary_queue();
    objc_copyWeak(&v19, &location);
    v5 = *MEMORY[0x1E695E480];
    ctServerConnection = _CTServerConnectionCreateOnTargetQueue();

    if (ctServerConnection)
    {
      v6 = *MEMORY[0x1E6965288];
      v7 = _CTServerConnectionRegisterForNotification();
      v8 = v7;
      if (v7)
      {
        v9 = HIDWORD(v7);
        v10 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v22 = v6;
          v23 = 1024;
          v24 = v8;
          v25 = 1024;
          v26 = v9;
          _os_log_impl(&dword_195925000, v10, OS_LOG_TYPE_ERROR, "Failed to register CT server DataAccessPolicyChanged notification %@ (domain: %d error: %d).", buf, 0x18u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          _IDSWarnV();
          _IDSLogV();
          _IDSLogTransport();
        }
      }

      v11 = *MEMORY[0x1E6965260];
      v12 = _CTServerConnectionRegisterForNotification();
      v13 = v12;
      if (!v12)
      {
        goto LABEL_17;
      }

      v14 = HIDWORD(v12);
      v15 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v22 = v11;
        v23 = 1024;
        v24 = v13;
        v25 = 1024;
        v26 = v14;
        _os_log_impl(&dword_195925000, v15, OS_LOG_TYPE_ERROR, "Failed to register CT server ConnectionInvalidated notification %@ (domain: %d error: %d).", buf, 0x18u);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_17;
      }
    }

    else
    {
      v16 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, v16, OS_LOG_TYPE_ERROR, "Failed to create CT server connection", buf, 2u);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_17;
      }
    }

    _IDSWarnV();
    _IDSLogV();
    _IDSLogTransport();
LABEL_17:
    if (self->_shouldCacheCTConnection)
    {
      self->_ctServerConnection = ctServerConnection;
      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
      ctServerConnection = self->_ctServerConnection;
    }

    else
    {
      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return ctServerConnection;
}

- (void)_clearCaches
{
  pthread_mutex_lock(&stru_1ED768558);
  [(NSMutableDictionary *)self->_cellularDataAvailableCache removeAllObjects];
  pthread_mutex_unlock(&stru_1ED768558);
  pthread_mutex_lock(&stru_1ED7684D8);
  [(NSMutableDictionary *)self->_wifiAllowedCache removeAllObjects];
  pthread_mutex_unlock(&stru_1ED7684D8);
  pthread_mutex_lock(&stru_1ED768518);
  [(NSMutableDictionary *)self->_nonBTAllowedCache removeAllObjects];

  pthread_mutex_unlock(&stru_1ED768518);
}

- (void)_setAppCellularDataEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v11[1] = *MEMORY[0x1E69E9840];
  if ([(FTUserConfiguration *)self ctServerConnection])
  {
    v10 = *MEMORY[0x1E6965230];
    v4 = MEMORY[0x1E6965238];
    if (!enabledCopy)
    {
      v4 = MEMORY[0x1E6965240];
    }

    v11[0] = *v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    _CTServerConnectionSetCellularUsagePolicy();
  }

  else
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = @"com.apple.facetime";
      _os_log_impl(&dword_195925000, v6, OS_LOG_TYPE_ERROR, "Failed to set the data usage policy for bundle %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)_getCellularDataEnabledForBundleID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    pthread_mutex_lock(&stru_1ED768558);
    v5 = [(NSMutableDictionary *)self->_cellularDataAvailableCache objectForKey:dCopy];
    if (!v5)
    {
      if ([(FTUserConfiguration *)self ctServerConnection])
      {
        v6 = _CTServerConnectionCopyCellularUsagePolicy();
        v7 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v13 = 0;
          v14 = 1024;
          v15 = v6;
          v16 = 1024;
          v17 = HIDWORD(v6);
          _os_log_impl(&dword_195925000, v7, OS_LOG_TYPE_DEFAULT, "_getCellularDataEnabledForBundleID copied cellularPolicy %@ {ctError.domain: %d, ctError.error: %d}", buf, 0x18u);
        }
      }

      else
      {
        v7 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_195925000, v7, OS_LOG_TYPE_DEFAULT, "_getCellularDataEnabledForBundleID unable to get a server connection", buf, 2u);
        }
      }

      v9 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = dCopy;
        _os_log_impl(&dword_195925000, v9, OS_LOG_TYPE_ERROR, "Failed to get the data usage policy for bundle %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        _IDSLogTransport();
      }

      v5 = 0;
    }

    pthread_mutex_unlock(&stru_1ED768558);
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (BOOL)_getWifiDataAllowedForBundleID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    pthread_mutex_lock(&stru_1ED7684D8);
    v5 = [(NSMutableDictionary *)self->_wifiAllowedCache objectForKey:dCopy];
    if (!v5)
    {
      if ([(FTUserConfiguration *)self ctServerConnection])
      {
        v6 = _CTServerConnectionCopyCellularUsagePolicy();
        v7 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v13 = 0;
          v14 = 1024;
          v15 = v6;
          v16 = 1024;
          v17 = HIDWORD(v6);
          _os_log_impl(&dword_195925000, v7, OS_LOG_TYPE_DEFAULT, "_getWifiDataAllowedForBundleID copied cellularPolicy %@ {ctError.domain: %d, ctError.error: %d}", buf, 0x18u);
        }
      }

      else
      {
        v7 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_195925000, v7, OS_LOG_TYPE_DEFAULT, "_getWifiDataAllowedForBundleID unable to get a server connection", buf, 2u);
        }
      }

      v9 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = dCopy;
        _os_log_impl(&dword_195925000, v9, OS_LOG_TYPE_ERROR, "Failed to get the data usage policy for bundle %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        _IDSLogTransport();
      }

      v5 = 0;
    }

    pthread_mutex_unlock(&stru_1ED7684D8);
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (void)_setupUsageHandlerIfNeeded
{
  if (!self->_usageClient)
  {
    v3 = [MEMORY[0x1E69A61A0] weakRefWithObject:self];
    self->_usageClient = network_usage_policy_create_client();
    v4 = im_primary_queue();
    v6 = v3;
    v5 = v3;
    network_usage_policy_set_changed_handler();
  }
}

- (BOOL)_getNonBluetoothDataAllowedForBundleID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    pthread_mutex_lock(&stru_1ED768518);
    [(FTUserConfiguration *)self _setupUsageHandlerIfNeeded];
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_19592BEB4;
    v19 = sub_19592BFE8;
    v20 = [(NSMutableDictionary *)self->_nonBTAllowedCache objectForKey:dCopy];
    if (!v16[5])
    {
      v5 = [MEMORY[0x1E69A61A0] weakRefWithObject:self];
      v13[0] = 0;
      v13[1] = v13;
      v13[2] = 0x2020000000;
      v14 = 1;
      v6 = dispatch_semaphore_create(0);
      usageClient = self->_usageClient;
      [dCopy UTF8String];
      v10 = dCopy;
      v11 = v5;
      v12 = v6;
      network_usage_policy_get_for_bundle();
      dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);

      _Block_object_dispose(v13, 8);
    }

    pthread_mutex_unlock(&stru_1ED768518);
    bOOLValue = [v16[5] BOOLValue];
    _Block_object_dispose(&v15, 8);
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)_adequateInternalOrCarrierInstall
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  if ([mEMORY[0x1E69A60F0] isInternalInstall])
  {
    v3 = 1;
  }

  else
  {
    mEMORY[0x1E69A60F0]2 = [MEMORY[0x1E69A60F0] sharedInstance];
    if ([mEMORY[0x1E69A60F0]2 isCarrierInstall])
    {
      v3 = IMGetAppBoolForKey();
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (BOOL)allowAnyNetwork
{
  _adequateInternalOrCarrierInstall = [(FTUserConfiguration *)self _adequateInternalOrCarrierInstall];
  if (_adequateInternalOrCarrierInstall)
  {
    if (IMGetDomainBoolForKey())
    {
      LOBYTE(_adequateInternalOrCarrierInstall) = 1;
    }

    else
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v4 = [defaultManager fileExistsAtPath:@"/Library/Preferences/SystemConfiguration/rtether.plist"];

      LOBYTE(_adequateInternalOrCarrierInstall) = v4;
    }
  }

  return _adequateInternalOrCarrierInstall;
}

- (void)setSelectedPhoneNumberRegistrationSubscriptionLabels:(id)labels
{
  labelsCopy = labels;
  [(FTUserConfiguration *)self silentlySetSelectedPhoneNumberRegistrationSubscriptionLabels:labelsCopy];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"FTUserConfigurationSelectedSubscriptionLabelDidChange" object:labelsCopy];
}

- (void)silentlySetSelectedPhoneNumberRegistrationSubscriptionLabels:(id)labels
{
  v8 = *MEMORY[0x1E69E9840];
  labelsCopy = labels;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = labelsCopy;
    _os_log_impl(&dword_195925000, v4, OS_LOG_TYPE_DEFAULT, "Setting persisted phone number registration subscription label {subscriptionLabels: %@}", &v6, 0xCu);
  }

  IMSetDomainValueForKey();
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setIsDeviceInDualPhoneIdentityMode:(BOOL)mode
{
  modeCopy = mode;
  v9 = *MEMORY[0x1E69E9840];
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (modeCopy)
    {
      v5 = @"YES";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_195925000, v4, OS_LOG_TYPE_DEFAULT, "Setting persisted dual phone identity mode {isDeviceInDualPhoneIdentityMode: %@}", &v7, 0xCu);
  }

  IMSetDomainBoolForKey();
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setIsDeviceInManualPhoneSelectionMode:(BOOL)mode
{
  modeCopy = mode;
  v9 = *MEMORY[0x1E69E9840];
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (modeCopy)
    {
      v5 = @"YES";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_195925000, v4, OS_LOG_TYPE_DEFAULT, "Setting persisted manual phone identity mode {isDeviceInManualPhoneSelectionMode: %@}", &v7, 0xCu);
  }

  IMSetDomainBoolForKey();
  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)_nonWifiFaceTimeEntitled
{
  _adequateInternalOrCarrierInstall = [(FTUserConfiguration *)self _adequateInternalOrCarrierInstall];
  if (_adequateInternalOrCarrierInstall)
  {

    LOBYTE(_adequateInternalOrCarrierInstall) = IMGetCachedDomainBoolForKey();
  }

  return _adequateInternalOrCarrierInstall;
}

@end