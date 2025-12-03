@interface FTNetworkSupport
+ (id)sharedInstance;
- (BOOL)allowAnyNetwork;
- (BOOL)dataActiveAndReachable;
- (BOOL)networkActive;
- (BOOL)networkReachable;
- (BOOL)validNetworkActiveForBundleId:(id)id;
- (BOOL)validNetworkEnabledForBundleId:(id)id;
- (BOOL)validNetworkReachableForBundleId:(id)id;
- (BOOL)wiFiActiveAndReachable;
- (BOOL)willSearchForNetworkForBundleId:(id)id;
- (void)_clearReliabilityTimeoutInterval;
- (void)_createAPSConnectionIfNeeded;
- (void)_reallySetCriticalReliability:(BOOL)reliability;
- (void)_setReliabilityTimeoutInterval;
- (void)_tryToEnableReliability;
@end

@implementation FTNetworkSupport

+ (id)sharedInstance
{
  if (qword_1ED768798 != -1)
  {
    sub_195963378();
  }

  v3 = qword_1ED7686F8;

  return v3;
}

- (BOOL)wiFiActiveAndReachable
{
  mEMORY[0x1E69A6108] = [MEMORY[0x1E69A6108] sharedInstance];
  if (![mEMORY[0x1E69A6108] isWiFiEnabled])
  {
    v5 = 0;
LABEL_6:

    return v5;
  }

  mEMORY[0x1E69A6108]2 = [MEMORY[0x1E69A6108] sharedInstance];
  isHostingWiFiHotSpot = [mEMORY[0x1E69A6108]2 isHostingWiFiHotSpot];

  if ((isHostingWiFiHotSpot & 1) == 0)
  {
    mEMORY[0x1E69A6108] = +[FTEmbeddedReachability reachabilityForInternetConnection];
    v5 = [mEMORY[0x1E69A6108] currentReachabilityStatus] == 1;
    goto LABEL_6;
  }

  return 0;
}

- (BOOL)allowAnyNetwork
{
  v2 = +[FTUserConfiguration sharedInstance];
  allowAnyNetwork = [v2 allowAnyNetwork];

  return allowAnyNetwork;
}

- (BOOL)validNetworkEnabledForBundleId:(id)id
{
  idCopy = id;
  mEMORY[0x1E69A6108] = [MEMORY[0x1E69A6108] sharedInstance];
  if (![mEMORY[0x1E69A6108] isWiFiEnabled])
  {
    goto LABEL_4;
  }

  mEMORY[0x1E69A6108]2 = [MEMORY[0x1E69A6108] sharedInstance];
  if ([mEMORY[0x1E69A6108]2 isHostingWiFiHotSpot])
  {

LABEL_4:
    goto LABEL_5;
  }

  v13 = +[FTDeviceSupport sharedInstance];
  v14 = [v13 wifiAllowedForBundleId:idCopy];

  if (v14)
  {
    isDataConnectionActive = 1;
    goto LABEL_12;
  }

LABEL_5:
  mEMORY[0x1E69A6108]3 = [MEMORY[0x1E69A6108] sharedInstance];
  isAirplaneModeEnabled = [mEMORY[0x1E69A6108]3 isAirplaneModeEnabled];

  if ((isAirplaneModeEnabled & 1) == 0 && (-[FTNetworkSupport allowAnyNetwork](self, "allowAnyNetwork") || (+[FTDeviceSupport sharedInstance](FTDeviceSupport, "sharedInstance"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 nonWifiAvailableForBundleId:idCopy], v10, v11)))
  {
    mEMORY[0x1E69A6108]4 = [MEMORY[0x1E69A6108] sharedInstance];
    isDataConnectionActive = [mEMORY[0x1E69A6108]4 isDataConnectionActive];
  }

  else
  {
    isDataConnectionActive = 0;
  }

LABEL_12:

  return isDataConnectionActive;
}

- (BOOL)validNetworkActiveForBundleId:(id)id
{
  idCopy = id;
  if ([(FTNetworkSupport *)self allowAnyNetwork])
  {
    v5 = 1;
  }

  else
  {
    v6 = +[FTDeviceSupport sharedInstance];
    v5 = [v6 nonWifiAvailableForBundleId:idCopy];
  }

  mEMORY[0x1E69A6108] = [MEMORY[0x1E69A6108] sharedInstance];
  if ([mEMORY[0x1E69A6108] isWiFiAssociated])
  {
    v8 = +[FTDeviceSupport sharedInstance];
    v9 = [v8 wifiAllowedForBundleId:idCopy];
  }

  else
  {
    v9 = 0;
  }

  if (v5)
  {
    v10 = +[FTEmbeddedReachability reachabilityForInternetConnection];
    currentReachabilityStatus = [v10 currentReachabilityStatus];
    if (v9)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = +[FTEmbeddedReachability reachabilityForLocalWiFi];
    currentReachabilityStatus2 = [v10 currentReachabilityStatus];
    if (v9)
    {
      goto LABEL_16;
    }

    currentReachabilityStatus = currentReachabilityStatus2;
  }

  mEMORY[0x1E69A6108]2 = [MEMORY[0x1E69A6108] sharedInstance];
  isAirplaneModeEnabled = [mEMORY[0x1E69A6108]2 isAirplaneModeEnabled];

  isWiFiUsable = 0;
  if ((isAirplaneModeEnabled & 1) == 0 && ((v5 ^ 1) & 1) == 0)
  {
LABEL_14:
    if ((currentReachabilityStatus - 3) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      mEMORY[0x1E69A6108]3 = [MEMORY[0x1E69A6108] sharedInstance];
      isWiFiUsable = [mEMORY[0x1E69A6108]3 isWiFiUsable];

      goto LABEL_17;
    }

LABEL_16:
    isWiFiUsable = 1;
  }

LABEL_17:

  return isWiFiUsable;
}

- (BOOL)validNetworkReachableForBundleId:(id)id
{
  idCopy = id;
  v5 = +[FTEmbeddedReachability reachabilityForInternetConnection];
  currentReachabilityStatus = [v5 currentReachabilityStatus];
  v7 = +[FTDeviceSupport sharedInstance];
  v8 = [v7 wifiAllowedForBundleId:idCopy];

  if (-[FTNetworkSupport allowAnyNetwork](self, "allowAnyNetwork") || (+[FTDeviceSupport sharedInstance](FTDeviceSupport, "sharedInstance"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 nonWifiAvailableForBundleId:idCopy], v9, v10))
  {
    if (currentReachabilityStatus == 2)
    {
      v11 = 1;
    }

    else
    {
      v11 = (currentReachabilityStatus == 1) & v8;
    }
  }

  else
  {
    v11 = (currentReachabilityStatus == 1) & v8;
  }

  return v11;
}

- (BOOL)willSearchForNetworkForBundleId:(id)id
{
  idCopy = id;
  if (-[FTNetworkSupport validNetworkReachable](self, "validNetworkReachable") || (+[FTDeviceSupport sharedInstance](FTDeviceSupport, "sharedInstance"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 wifiAllowedForBundleId:idCopy], v5, !v6))
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    if (-[FTNetworkSupport allowAnyNetwork](self, "allowAnyNetwork") || (+[FTDeviceSupport sharedInstance](FTDeviceSupport, "sharedInstance"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 nonWifiAvailableForBundleId:idCopy], v7, v8))
    {
      mEMORY[0x1E69A6108] = [MEMORY[0x1E69A6108] sharedInstance];
      v10 = [mEMORY[0x1E69A6108] isDataConnectionActive] ^ 1;
    }

    else
    {
      mEMORY[0x1E69A6108] = [MEMORY[0x1E69A6108] sharedInstance];
      if ([mEMORY[0x1E69A6108] willTryToSearchForWiFiNetwork])
      {
        LOBYTE(v10) = 1;
      }

      else
      {
        mEMORY[0x1E69A6108]2 = [MEMORY[0x1E69A6108] sharedInstance];
        LOBYTE(v10) = [mEMORY[0x1E69A6108]2 willTryToAutoAssociateWiFiNetwork];
      }
    }
  }

  return v10;
}

- (BOOL)dataActiveAndReachable
{
  v21 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A6108] = [MEMORY[0x1E69A6108] sharedInstance];
  LODWORD(currentReachabilityStatus) = [mEMORY[0x1E69A6108] isDataConnectionActive];

  if (currentReachabilityStatus)
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      mEMORY[0x1E69A6108]2 = [MEMORY[0x1E69A6108] sharedInstance];
      isDataConnectionActive = [mEMORY[0x1E69A6108]2 isDataConnectionActive];
      v7 = @"NO";
      if (isDataConnectionActive)
      {
        v7 = @"YES";
      }

      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&dword_195925000, v4, OS_LOG_TYPE_DEFAULT, "dataActiveAndReachable: isDataConnectionActive: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      mEMORY[0x1E69A6108]3 = [MEMORY[0x1E69A6108] sharedInstance];
      isDataConnectionActive2 = [mEMORY[0x1E69A6108]3 isDataConnectionActive];
      v10 = @"NO";
      if (isDataConnectionActive2)
      {
        v10 = @"YES";
      }

      v18 = v10;
      _IDSLogV();
    }

    mEMORY[0x1E69A6108]4 = [MEMORY[0x1E69A6108] sharedInstance];
    isAirplaneModeEnabled = [mEMORY[0x1E69A6108]4 isAirplaneModeEnabled];

    if (isAirplaneModeEnabled)
    {
      v13 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, v13, OS_LOG_TYPE_DEFAULT, "dataActiveAndReachable: isAirplaneModeEnabled, return NO", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      LOBYTE(currentReachabilityStatus) = 0;
    }

    else
    {
      v14 = +[FTEmbeddedReachability reachabilityForInternetConnection];
      currentReachabilityStatus = [v14 currentReachabilityStatus];
      v15 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v20 = currentReachabilityStatus;
        _os_log_impl(&dword_195925000, v15, OS_LOG_TYPE_DEFAULT, "dataActiveAndReachable: status = %ld", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      LOBYTE(currentReachabilityStatus) = currentReachabilityStatus == 2;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return currentReachabilityStatus;
}

- (BOOL)networkActive
{
  v2 = +[FTEmbeddedReachability reachabilityForInternetConnection];
  if (([v2 currentReachabilityStatus] - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    isWiFiUsable = 1;
  }

  else
  {
    mEMORY[0x1E69A6108] = [MEMORY[0x1E69A6108] sharedInstance];
    isWiFiUsable = [mEMORY[0x1E69A6108] isWiFiUsable];
  }

  return isWiFiUsable;
}

- (BOOL)networkReachable
{
  v2 = +[FTEmbeddedReachability reachabilityForInternetConnection];
  v3 = ([v2 currentReachabilityStatus] - 1) < 2;

  return v3;
}

- (void)_createAPSConnectionIfNeeded
{
  if (!self->_apsConnection)
  {
    v12 = 0;
    IMGetConferenceSettings();
    v3 = 0;
    v4 = *MEMORY[0x19A8B8560]("APSConnectionOverrideNamedDelegatePort", @"ApplePushService");
    APSConnectionClass = self->_APSConnectionClass;
    if (!APSConnectionClass)
    {
      APSConnectionClass = MEMORY[0x19A8B8550](@"APSConnection", @"ApplePushService");
      self->_APSConnectionClass = APSConnectionClass;
    }

    v6 = [APSConnectionClass alloc];
    v7 = im_primary_queue();
    v8 = [v6 initWithEnvironmentName:v3 namedDelegatePort:v4 queue:v7];
    apsConnection = self->_apsConnection;
    self->_apsConnection = v8;

    if (!self->_apsConnection)
    {
      v10 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_impl(&dword_195925000, v10, OS_LOG_TYPE_ERROR, "Could not create APS Connection for critical reliability check", v11, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        _IDSLogTransport();
      }
    }
  }
}

- (void)_clearReliabilityTimeoutInterval
{
  if (self->_reliabilityAttemptTimer)
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_195925000, v3, OS_LOG_TYPE_DEFAULT, "Clearing out reliability check timer", v5, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    [(IMDispatchTimer *)self->_reliabilityAttemptTimer invalidate];
    reliabilityAttemptTimer = self->_reliabilityAttemptTimer;
    self->_reliabilityAttemptTimer = 0;
  }
}

- (void)_setReliabilityTimeoutInterval
{
  [(FTNetworkSupport *)self _clearReliabilityTimeoutInterval];
  v3 = objc_alloc(MEMORY[0x1E69A60C0]);
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19593D020;
  v9[3] = &unk_1E7435238;
  v9[4] = self;
  v5 = [v3 initWithQueue:v4 interval:10 repeats:1 handlerBlock:v9];
  reliabilityAttemptTimer = self->_reliabilityAttemptTimer;
  self->_reliabilityAttemptTimer = v5;

  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_195925000, v7, OS_LOG_TYPE_DEFAULT, "Setting reliability check timer", v8, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (void)_reallySetCriticalReliability:(BOOL)reliability
{
  reliabilityCopy = reliability;
  v22 = *MEMORY[0x1E69E9840];
  self->_criticalReliabilityEnabledState = reliability;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (self->_criticalReliabilityEnabledState)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    if (reliabilityCopy)
    {
      v6 = @"YES";
    }

    *buf = 138412546;
    v19 = v7;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_195925000, v5, OS_LOG_TYPE_DEFAULT, "Updating critical reliability state from: %@ to: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v8 = @"NO";
    if (self->_criticalReliabilityEnabledState)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    if (reliabilityCopy)
    {
      v8 = @"YES";
    }

    v16 = v9;
    v17 = v8;
    _IDSLogV();
  }

  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    apsConnection = self->_apsConnection;
    if (reliabilityCopy)
    {
      v11 = @"YES";
    }

    *buf = 138412546;
    v19 = v11;
    v20 = 2112;
    v21 = apsConnection;
    _os_log_impl(&dword_195925000, v10, OS_LOG_TYPE_DEFAULT, "Setting push critical state to: %@ (Connection: %@)", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v13 = @"NO";
    if (reliabilityCopy)
    {
      v13 = @"YES";
    }

    v16 = v13;
    v17 = self->_apsConnection;
    _IDSLogV();
  }

  [(APSConnection *)self->_apsConnection setEnableCriticalReliability:self->_criticalReliabilityEnabledState, v16, v17];
  if (!self->_criticalReliabilityEnabledState)
  {
    v14 = self->_apsConnection;
    self->_apsConnection = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_tryToEnableReliability
{
  v16 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_enableCriticalReliability)
  {
    [(FTNetworkSupport *)selfCopy _createAPSConnectionIfNeeded];
  }

  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (selfCopy->_enableCriticalReliability)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&dword_195925000, v3, OS_LOG_TYPE_DEFAULT, "Trying to set push critical state to: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    if (selfCopy->_enableCriticalReliability)
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    v13 = v5;
    _IDSLogV();
  }

  if (selfCopy->_enableCriticalReliability)
  {
    v6 = +[FTDeviceSupport sharedInstance];
    conferencingAllowed = [v6 conferencingAllowed];

    if (conferencingAllowed)
    {
      if ([(FTNetworkSupport *)selfCopy validNetworkEnabled])
      {
        if ([(FTNetworkSupport *)selfCopy validNetworkActive])
        {
          v8 = 1;
LABEL_36:
          [(FTNetworkSupport *)selfCopy _reallySetCriticalReliability:v8, v13];
          goto LABEL_37;
        }

        v11 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_195925000, v11, OS_LOG_TYPE_DEFAULT, " => Bailing, network is not active", buf, 2u);
        }

        if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
        {
LABEL_35:
          v8 = 0;
          goto LABEL_36;
        }
      }

      else
      {
        v10 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_195925000, v10, OS_LOG_TYPE_DEFAULT, " => Bailing, network is disabled", buf, 2u);
        }

        if (!os_log_shim_legacy_logging_enabled() || (_IDSShouldLog() & 1) == 0)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      v9 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, v9, OS_LOG_TYPE_DEFAULT, " => Bailing, facetime is disabled", buf, 2u);
      }

      if (!os_log_shim_legacy_logging_enabled() || (_IDSShouldLog() & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    _IDSLogV();
    goto LABEL_35;
  }

  [(FTNetworkSupport *)selfCopy _reallySetCriticalReliability:0];
  [(FTNetworkSupport *)selfCopy _clearReliabilityTimeoutInterval];
LABEL_37:
  objc_sync_exit(selfCopy);

  v12 = *MEMORY[0x1E69E9840];
}

@end