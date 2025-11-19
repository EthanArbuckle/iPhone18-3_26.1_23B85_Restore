@interface FTNetworkSupport
+ (id)sharedInstance;
- (BOOL)allowAnyNetwork;
- (BOOL)dataActiveAndReachable;
- (BOOL)networkActive;
- (BOOL)networkReachable;
- (BOOL)validNetworkActiveForBundleId:(id)a3;
- (BOOL)validNetworkEnabledForBundleId:(id)a3;
- (BOOL)validNetworkReachableForBundleId:(id)a3;
- (BOOL)wiFiActiveAndReachable;
- (BOOL)willSearchForNetworkForBundleId:(id)a3;
- (void)_clearReliabilityTimeoutInterval;
- (void)_createAPSConnectionIfNeeded;
- (void)_reallySetCriticalReliability:(BOOL)a3;
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
  v2 = [MEMORY[0x1E69A6108] sharedInstance];
  if (![v2 isWiFiEnabled])
  {
    v5 = 0;
LABEL_6:

    return v5;
  }

  v3 = [MEMORY[0x1E69A6108] sharedInstance];
  v4 = [v3 isHostingWiFiHotSpot];

  if ((v4 & 1) == 0)
  {
    v2 = +[FTEmbeddedReachability reachabilityForInternetConnection];
    v5 = [v2 currentReachabilityStatus] == 1;
    goto LABEL_6;
  }

  return 0;
}

- (BOOL)allowAnyNetwork
{
  v2 = +[FTUserConfiguration sharedInstance];
  v3 = [v2 allowAnyNetwork];

  return v3;
}

- (BOOL)validNetworkEnabledForBundleId:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69A6108] sharedInstance];
  if (![v5 isWiFiEnabled])
  {
    goto LABEL_4;
  }

  v6 = [MEMORY[0x1E69A6108] sharedInstance];
  if ([v6 isHostingWiFiHotSpot])
  {

LABEL_4:
    goto LABEL_5;
  }

  v13 = +[FTDeviceSupport sharedInstance];
  v14 = [v13 wifiAllowedForBundleId:v4];

  if (v14)
  {
    v9 = 1;
    goto LABEL_12;
  }

LABEL_5:
  v7 = [MEMORY[0x1E69A6108] sharedInstance];
  v8 = [v7 isAirplaneModeEnabled];

  if ((v8 & 1) == 0 && (-[FTNetworkSupport allowAnyNetwork](self, "allowAnyNetwork") || (+[FTDeviceSupport sharedInstance](FTDeviceSupport, "sharedInstance"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 nonWifiAvailableForBundleId:v4], v10, v11)))
  {
    v12 = [MEMORY[0x1E69A6108] sharedInstance];
    v9 = [v12 isDataConnectionActive];
  }

  else
  {
    v9 = 0;
  }

LABEL_12:

  return v9;
}

- (BOOL)validNetworkActiveForBundleId:(id)a3
{
  v4 = a3;
  if ([(FTNetworkSupport *)self allowAnyNetwork])
  {
    v5 = 1;
  }

  else
  {
    v6 = +[FTDeviceSupport sharedInstance];
    v5 = [v6 nonWifiAvailableForBundleId:v4];
  }

  v7 = [MEMORY[0x1E69A6108] sharedInstance];
  if ([v7 isWiFiAssociated])
  {
    v8 = +[FTDeviceSupport sharedInstance];
    v9 = [v8 wifiAllowedForBundleId:v4];
  }

  else
  {
    v9 = 0;
  }

  if (v5)
  {
    v10 = +[FTEmbeddedReachability reachabilityForInternetConnection];
    v11 = [v10 currentReachabilityStatus];
    if (v9)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = +[FTEmbeddedReachability reachabilityForLocalWiFi];
    v12 = [v10 currentReachabilityStatus];
    if (v9)
    {
      goto LABEL_16;
    }

    v11 = v12;
  }

  v13 = [MEMORY[0x1E69A6108] sharedInstance];
  v14 = [v13 isAirplaneModeEnabled];

  v15 = 0;
  if ((v14 & 1) == 0 && ((v5 ^ 1) & 1) == 0)
  {
LABEL_14:
    if ((v11 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v16 = [MEMORY[0x1E69A6108] sharedInstance];
      v15 = [v16 isWiFiUsable];

      goto LABEL_17;
    }

LABEL_16:
    v15 = 1;
  }

LABEL_17:

  return v15;
}

- (BOOL)validNetworkReachableForBundleId:(id)a3
{
  v4 = a3;
  v5 = +[FTEmbeddedReachability reachabilityForInternetConnection];
  v6 = [v5 currentReachabilityStatus];
  v7 = +[FTDeviceSupport sharedInstance];
  v8 = [v7 wifiAllowedForBundleId:v4];

  if (-[FTNetworkSupport allowAnyNetwork](self, "allowAnyNetwork") || (+[FTDeviceSupport sharedInstance](FTDeviceSupport, "sharedInstance"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 nonWifiAvailableForBundleId:v4], v9, v10))
  {
    if (v6 == 2)
    {
      v11 = 1;
    }

    else
    {
      v11 = (v6 == 1) & v8;
    }
  }

  else
  {
    v11 = (v6 == 1) & v8;
  }

  return v11;
}

- (BOOL)willSearchForNetworkForBundleId:(id)a3
{
  v4 = a3;
  if (-[FTNetworkSupport validNetworkReachable](self, "validNetworkReachable") || (+[FTDeviceSupport sharedInstance](FTDeviceSupport, "sharedInstance"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 wifiAllowedForBundleId:v4], v5, !v6))
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    if (-[FTNetworkSupport allowAnyNetwork](self, "allowAnyNetwork") || (+[FTDeviceSupport sharedInstance](FTDeviceSupport, "sharedInstance"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 nonWifiAvailableForBundleId:v4], v7, v8))
    {
      v9 = [MEMORY[0x1E69A6108] sharedInstance];
      v10 = [v9 isDataConnectionActive] ^ 1;
    }

    else
    {
      v9 = [MEMORY[0x1E69A6108] sharedInstance];
      if ([v9 willTryToSearchForWiFiNetwork])
      {
        LOBYTE(v10) = 1;
      }

      else
      {
        v12 = [MEMORY[0x1E69A6108] sharedInstance];
        LOBYTE(v10) = [v12 willTryToAutoAssociateWiFiNetwork];
      }
    }
  }

  return v10;
}

- (BOOL)dataActiveAndReachable
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6108] sharedInstance];
  LODWORD(v3) = [v2 isDataConnectionActive];

  if (v3)
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x1E69A6108] sharedInstance];
      v6 = [v5 isDataConnectionActive];
      v7 = @"NO";
      if (v6)
      {
        v7 = @"YES";
      }

      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&dword_195925000, v4, OS_LOG_TYPE_DEFAULT, "dataActiveAndReachable: isDataConnectionActive: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v8 = [MEMORY[0x1E69A6108] sharedInstance];
      v9 = [v8 isDataConnectionActive];
      v10 = @"NO";
      if (v9)
      {
        v10 = @"YES";
      }

      v18 = v10;
      _IDSLogV();
    }

    v11 = [MEMORY[0x1E69A6108] sharedInstance];
    v12 = [v11 isAirplaneModeEnabled];

    if (v12)
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

      LOBYTE(v3) = 0;
    }

    else
    {
      v14 = +[FTEmbeddedReachability reachabilityForInternetConnection];
      v3 = [v14 currentReachabilityStatus];
      v15 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v20 = v3;
        _os_log_impl(&dword_195925000, v15, OS_LOG_TYPE_DEFAULT, "dataActiveAndReachable: status = %ld", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      LOBYTE(v3) = v3 == 2;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)networkActive
{
  v2 = +[FTEmbeddedReachability reachabilityForInternetConnection];
  if (([v2 currentReachabilityStatus] - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = 1;
  }

  else
  {
    v3 = [MEMORY[0x1E69A6108] sharedInstance];
    v4 = [v3 isWiFiUsable];
  }

  return v4;
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

- (void)_reallySetCriticalReliability:(BOOL)a3
{
  v3 = a3;
  v22 = *MEMORY[0x1E69E9840];
  self->_criticalReliabilityEnabledState = a3;
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

    if (v3)
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

    if (v3)
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
    if (v3)
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
    if (v3)
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
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_enableCriticalReliability)
  {
    [(FTNetworkSupport *)v2 _createAPSConnectionIfNeeded];
  }

  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (v2->_enableCriticalReliability)
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
    if (v2->_enableCriticalReliability)
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

  if (v2->_enableCriticalReliability)
  {
    v6 = +[FTDeviceSupport sharedInstance];
    v7 = [v6 conferencingAllowed];

    if (v7)
    {
      if ([(FTNetworkSupport *)v2 validNetworkEnabled])
      {
        if ([(FTNetworkSupport *)v2 validNetworkActive])
        {
          v8 = 1;
LABEL_36:
          [(FTNetworkSupport *)v2 _reallySetCriticalReliability:v8, v13];
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

  [(FTNetworkSupport *)v2 _reallySetCriticalReliability:0];
  [(FTNetworkSupport *)v2 _clearReliabilityTimeoutInterval];
LABEL_37:
  objc_sync_exit(v2);

  v12 = *MEMORY[0x1E69E9840];
}

@end