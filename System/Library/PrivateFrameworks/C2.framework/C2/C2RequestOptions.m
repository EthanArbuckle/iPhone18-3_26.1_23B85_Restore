@interface C2RequestOptions
+ (id)stringForDiscretionaryNetworkBehavior:(unint64_t)a3;
+ (id)stringForDuetPreClearedMode:(unint64_t)a3;
+ (id)stringForQualityOfService:(unsigned int)a3;
+ (void)initialize;
- (BOOL)allowsCellularAccess;
- (BOOL)isEqual:(id)a3;
- (BOOL)outOfProcess;
- (C2NetworkingDelegate)networkingDelegate;
- (C2RequestOptions)init;
- (C2RequestOptions)initWithCoder:(id)a3;
- (id)copyAndDecorateRequest:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)decorateTask:(id)a3;
- (id)defaultSessionConfigurationWithName:(id)a3;
- (id)sessionConfigurationNameWithRouteHost:(id)a3;
- (id)sessionConfigurationWithName:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)handleCallbackForSessionTask:(id)a3 dataTask:(id)a4 callback:(id)a5;
@end

@implementation C2RequestOptions

- (C2RequestOptions)init
{
  v24.receiver = self;
  v24.super_class = C2RequestOptions;
  v2 = [(C2RequestOptions *)&v24 init];
  v3 = v2;
  if (v2)
  {
    outOfProcessPoolName = v2->_outOfProcessPoolName;
    v2->_outOfProcessPoolName = 0;

    v3->_hasAllowsCellularAccess = 0;
    *&v3->_allowsCellularAccess = 257;
    v3->__allowsPowerNapScheduling = 1;
    __asm { FMOV            V0.2D, #-1.0 }

    *&v3->__timeoutIntervalForRequest = _Q0;
    sourceApplicationBundleIdentifier = v3->__sourceApplicationBundleIdentifier;
    v3->__sourceApplicationBundleIdentifier = 0;

    sourceApplicationSecondaryIdentifier = v3->__sourceApplicationSecondaryIdentifier;
    v3->__sourceApplicationSecondaryIdentifier = 0;

    sourceApplicationAuditTokenData = v3->__sourceApplicationAuditTokenData;
    v3->__sourceApplicationAuditTokenData = 0;

    privacyProxyFailClosedOverride = v3->_privacyProxyFailClosedOverride;
    v3->_privacyProxyFailClosedOverride = 0;

    useNWLoaderOverride = v3->_useNWLoaderOverride;
    v3->_useNWLoaderOverride = 0;

    appleIDContextSessionIdentifier = v3->__appleIDContextSessionIdentifier;
    v3->__appleIDContextSessionIdentifier = 0;

    *&v3->_tlsPinning = 0;
    v3->_discretionaryNetworkBehavior = 0;
    v3->_duetPreClearedMode = 0;
    v16 = [MEMORY[0x277CCAD78] UUID];
    v17 = [v16 UUIDString];
    identifier = v3->_identifier;
    v3->_identifier = v17;

    metricOptions = v3->_metricOptions;
    v3->_metricOptions = 0;

    objc_storeWeak(&v3->_networkingDelegate, 0);
    v3->_containerType = 0;
    *&v3->_redactRemoteEndpointFromNetworkMetrics = 0;
    originalHost = v3->_originalHost;
    v3->_originalHost = 0;

    v3->_metricRequest = 0;
    invokedURL = v3->_invokedURL;
    v3->_invokedURL = 0;

    testBehavior_sessionGroupCreated = v3->_testBehavior_sessionGroupCreated;
    v3->_testBehavior_sessionGroupCreated = 0;
  }

  return v3;
}

- (C2NetworkingDelegate)networkingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_networkingDelegate);

  return WeakRetained;
}

- (BOOL)outOfProcess
{
  v3 = [(C2RequestOptions *)self discretionaryNetworkBehavior];
  v4 = [(C2RequestOptions *)self duetPreClearedMode];
  v5 = [(C2RequestOptions *)self _allowsRetryForBackgroundDataTasks];
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  return v3 || v6;
}

- (BOOL)allowsCellularAccess
{
  v2 = 8;
  if (!self->_hasAllowsCellularAccess)
  {
    v2 = 9;
  }

  return *(&self->super.isa + v2);
}

+ (id)stringForQualityOfService:(unsigned int)a3
{
  if (a3 <= 16)
  {
    if (!a3)
    {
      return @"unspecified";
    }

    if (a3 != 5)
    {
      if (a3 == 9)
      {
        return @"background";
      }

      return @"unknown";
    }

    return @"maintenance";
  }

  else if (a3 > 24)
  {
    if (a3 != 33)
    {
      if (a3 == 25)
      {
        return @"userInitiated";
      }

      return @"unknown";
    }

    return @"userInteractive";
  }

  else
  {
    if (a3 != 17)
    {
      if (a3 == 21)
      {
        return @"default";
      }

      return @"unknown";
    }

    return @"utility";
  }
}

+ (id)stringForDiscretionaryNetworkBehavior:(unint64_t)a3
{
  if (a3 > 2)
  {
    return @"?";
  }

  else
  {
    return off_278D40720[a3];
  }
}

+ (id)stringForDuetPreClearedMode:(unint64_t)a3
{
  if (a3 > 2)
  {
    return @"?";
  }

  else
  {
    return off_278D40738[a3];
  }
}

+ (void)initialize
{
  if ((hasTriesteMetricsEnabled & 1) == 0)
  {
    v2 = [MEMORY[0x277CBEBD0] c2DefaultsDomain];
    triesteMetricsEnabled = [v2 BOOLForKey:@"C2_triesteMetricsEnabled"];

    hasTriesteMetricsEnabled = 1;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [C2RequestOptions allocWithZone:a3];
  v5 = v4;
  if (v4)
  {
    [(C2RequestOptions *)v4 setOutOfProcessPoolName:self->_outOfProcessPoolName];
    if (self->_hasAllowsCellularAccess)
    {
      [(C2RequestOptions *)v5 setAllowsCellularAccess:self->_allowsCellularAccess];
    }

    [(C2RequestOptions *)v5 set_allowsExpensiveAccess:self->__allowsExpensiveAccess];
    [(C2RequestOptions *)v5 set_allowsPowerNapScheduling:self->__allowsPowerNapScheduling];
    [(C2RequestOptions *)v5 set_timeoutIntervalForRequest:self->__timeoutIntervalForRequest];
    [(C2RequestOptions *)v5 set_timeoutIntervalForResource:self->__timeoutIntervalForResource];
    [(C2RequestOptions *)v5 set_sourceApplicationBundleIdentifier:self->__sourceApplicationBundleIdentifier];
    [(C2RequestOptions *)v5 set_sourceApplicationSecondaryIdentifier:self->__sourceApplicationSecondaryIdentifier];
    [(C2RequestOptions *)v5 set_sourceApplicationAuditTokenData:self->__sourceApplicationAuditTokenData];
    [(C2RequestOptions *)v5 set_appleIDContextSessionIdentifier:self->__appleIDContextSessionIdentifier];
    [(C2RequestOptions *)v5 setTlsPinning:self->_tlsPinning];
    [(C2RequestOptions *)v5 setAllowRouting:self->_allowRouting];
    [(C2RequestOptions *)v5 setAllowExpiredDNSBehavior:self->_allowExpiredDNSBehavior];
    [(C2RequestOptions *)v5 setDiscretionaryNetworkBehavior:self->_discretionaryNetworkBehavior];
    [(C2RequestOptions *)v5 setDuetPreClearedMode:self->_duetPreClearedMode];
    [(C2RequestOptions *)v5 set_allowsRetryForBackgroundDataTasks:self->__allowsRetryForBackgroundDataTasks];
    [(C2RequestOptions *)v5 setPrivacyProxyFailClosedOverride:self->_privacyProxyFailClosedOverride];
    [(C2RequestOptions *)v5 setIdentifier:self->_identifier];
    [(C2RequestOptions *)v5 setMetricOptions:self->_metricOptions];
    WeakRetained = objc_loadWeakRetained(&self->_networkingDelegate);
    [(C2RequestOptions *)v5 setNetworkingDelegate:WeakRetained];

    [(C2RequestOptions *)v5 setRedactRemoteEndpointFromNetworkMetrics:self->_redactRemoteEndpointFromNetworkMetrics];
    [(C2RequestOptions *)v5 setRedactUniformResourceIdentifierFromNetworkMetrics:self->_redactUniformResourceIdentifierFromNetworkMetrics];
    [(C2RequestOptions *)v5 setContainerType:self->_containerType];
    [(C2RequestOptions *)v5 set_optIntoDisableAPWakeOnIdleConnections:self->__optIntoDisableAPWakeOnIdleConnections];
    [(C2RequestOptions *)v5 setOriginalHost:self->_originalHost];
    [(C2RequestOptions *)v5 setMetricRequest:self->_metricRequest];
    [(C2RequestOptions *)v5 setInvokedURL:self->_invokedURL];
    [(C2RequestOptions *)v5 setTestBehavior_sessionGroupCreated:self->_testBehavior_sessionGroupCreated];
  }

  return v5;
}

- (id)sessionConfigurationNameWithRouteHost:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277CCAB68];
    v5 = a3;
    v6 = objc_alloc_init(v4);
    [v6 appendFormat:@"route=%@", v5];

    if ([(C2RequestOptions *)self outOfProcess])
    {
      v7 = @"T";
    }

    else
    {
      v7 = @"F";
    }

    [v6 appendFormat:@":outOfProcess=%@", v7];
    if ([(C2RequestOptions *)self _allowsPowerNapScheduling])
    {
      v8 = @"T";
    }

    else
    {
      v8 = @"F";
    }

    [v6 appendFormat:@":powerNap=%@", v8];
    v9 = [(C2RequestOptions *)self _sourceApplicationBundleIdentifier];

    if (v9)
    {
      v10 = [(C2RequestOptions *)self _sourceApplicationBundleIdentifier];
      [v6 appendFormat:@":app=%@", v10];
    }

    v11 = [(C2RequestOptions *)self _sourceApplicationSecondaryIdentifier];

    if (v11)
    {
      v12 = [(C2RequestOptions *)self _sourceApplicationSecondaryIdentifier];
      [v6 appendFormat:@":2app=%@", v12];
    }

    v13 = [(C2RequestOptions *)self _sourceApplicationAuditTokenData];

    if (v13)
    {
      [v6 appendString:@":auditToken=Y"];
    }

    if ([(C2RequestOptions *)self outOfProcess])
    {
      v14 = [C2RequestOptions stringForDiscretionaryNetworkBehavior:[(C2RequestOptions *)self discretionaryNetworkBehavior]];
      [v6 appendFormat:@":disc=%@", v14];

      v15 = [C2RequestOptions stringForDuetPreClearedMode:[(C2RequestOptions *)self duetPreClearedMode]];
      [v6 appendFormat:@":duet=%@", v15];

      v16 = [(C2RequestOptions *)self _allowsRetryForBackgroundDataTasks]? @"T" : @"F";
      [v6 appendFormat:@":retry=%@", v16];
      v17 = [(C2RequestOptions *)self outOfProcessPoolName];

      if (v17)
      {
        v18 = [(C2RequestOptions *)self outOfProcessPoolName];
        [v6 appendFormat:@":pool=%@", v18];
      }
    }

    v19 = [(C2RequestOptions *)self useNWLoaderOverride];

    if (v19)
    {
      v20 = [(C2RequestOptions *)self useNWLoaderOverride];
      if ([v20 BOOLValue])
      {
        v21 = @"T";
      }

      else
      {
        v21 = @"F";
      }

      [v6 appendFormat:@":useNWLoaderOverride=%@", v21];
    }

    v22 = [(C2RequestOptions *)self networkingDelegate];

    if (v22)
    {
      v23 = [(C2RequestOptions *)self networkingDelegate];
      [v6 appendFormat:@":networkingDelegate=%@", v23];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)defaultSessionConfigurationWithName:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (![(C2RequestOptions *)self outOfProcess])
  {
    v8 = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
    [v8 set_preventsIdleSleepOnceConnected:1];
    if (+[C2DeviceInfo whitelistedForDisableAPWakeOnIdleConnections]|| [(C2RequestOptions *)self _optIntoDisableAPWakeOnIdleConnections])
    {
      if (C2_DEFAULT_LOG_BLOCK_5 != -1)
      {
        [C2RequestOptions defaultSessionConfigurationWithName:];
      }

      v9 = C2_DEFAULT_LOG_INTERNAL_5;
      if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_242158000, v9, OS_LOG_TYPE_DEBUG, "set_disableAPWakeOnIdleConnections.", buf, 2u);
      }

      [v8 set_disableAPWakeOnIdleConnections:1];
    }

    goto LABEL_13;
  }

  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = [v5 UUIDString];

  if (!v6)
  {
LABEL_5:
    v8 = 0;
    goto LABEL_14;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:uuid:%@", v4, v6];
  v8 = [MEMORY[0x277CCAD38] backgroundSessionConfigurationWithIdentifier:v7];

LABEL_13:
  [v8 setURLCredentialStorage:0];
  [v8 setHTTPCookieStorage:0];
  [v8 setURLCache:0];
  [v8 setRequestCachePolicy:1];
  [v8 set_timingDataOptions:85];
LABEL_14:

  return v8;
}

uint64_t __56__C2RequestOptions_defaultSessionConfigurationWithName___block_invoke()
{
  C2_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (id)sessionConfigurationWithName:(id)a3
{
  if (a3)
  {
    v4 = [(C2RequestOptions *)self defaultSessionConfigurationWithName:?];
    if (v4)
    {
      [v4 set_allowsPowerNapScheduling:{-[C2RequestOptions _allowsPowerNapScheduling](self, "_allowsPowerNapScheduling")}];
      v5 = [(C2RequestOptions *)self _sourceApplicationBundleIdentifier];
      if (v5)
      {
        v6 = v5;
        v7 = [(C2RequestOptions *)self _sourceApplicationBundleIdentifier];
        v8 = [v7 length];

        if (v8)
        {
          v9 = [(C2RequestOptions *)self _sourceApplicationBundleIdentifier];
          [v4 set_sourceApplicationBundleIdentifier:v9];
        }
      }

      v10 = [(C2RequestOptions *)self _sourceApplicationSecondaryIdentifier];
      if (v10)
      {
        v11 = v10;
        v12 = [(C2RequestOptions *)self _sourceApplicationSecondaryIdentifier];
        v13 = [v12 length];

        if (v13)
        {
          v14 = [(C2RequestOptions *)self _sourceApplicationSecondaryIdentifier];
          [v4 set_sourceApplicationSecondaryIdentifier:v14];
        }
      }

      v15 = [(C2RequestOptions *)self _sourceApplicationAuditTokenData];

      if (v15)
      {
        v16 = [(C2RequestOptions *)self _sourceApplicationAuditTokenData];
        [v4 set_sourceApplicationAuditTokenData:v16];
      }

      if (![(C2RequestOptions *)self outOfProcess])
      {
        v17 = [(C2RequestOptions *)self _sourceApplicationBundleIdentifier];
        if (v17)
        {
          v18 = v17;
          v19 = [(C2RequestOptions *)self _sourceApplicationSecondaryIdentifier];

          if (v19)
          {
            BRContainersMonitorClass = getBRContainersMonitorClass();
            v21 = [(C2RequestOptions *)self _sourceApplicationBundleIdentifier];
            v22 = [(C2RequestOptions *)self _sourceApplicationSecondaryIdentifier];
            v23 = [BRContainersMonitorClass containerIDFromPrimaryIdentifier:v21 secondaryIdentifier:v22];

            if (v23)
            {
              v24 = getBRContainersMonitorClass();
              v25 = [(C2RequestOptions *)self _sourceApplicationBundleIdentifier];
              v26 = [(C2RequestOptions *)self _sourceApplicationSecondaryIdentifier];
              v27 = [v24 bundleIDFromPrimaryIdentifier:v25 secondaryIdentifier:v26];

              if (v27)
              {
                v28 = v27;
              }

              else
              {
                v28 = v23;
              }

              [v4 set_sourceApplicationBundleIdentifier:v28];
            }
          }
        }
      }

      if ([(C2RequestOptions *)self outOfProcess])
      {
        [v4 setDiscretionary:{-[C2RequestOptions discretionaryNetworkBehavior](self, "discretionaryNetworkBehavior") == 2}];
        [v4 set_infersDiscretionaryFromOriginatingClient:{-[C2RequestOptions discretionaryNetworkBehavior](self, "discretionaryNetworkBehavior") == 1}];
        v29 = [(C2RequestOptions *)self outOfProcessPoolName];
        [v4 set_connectionPoolName:v29];

        [v4 set_allowsRetryForBackgroundDataTasks:{-[C2RequestOptions _allowsRetryForBackgroundDataTasks](self, "_allowsRetryForBackgroundDataTasks")}];
        if ([(C2RequestOptions *)self duetPreClearedMode]== 1)
        {
          if (objc_opt_respondsToSelector())
          {
            [v4 set_duetPreClearedMode:1];
          }

          else
          {
            [v4 setDiscretionary:0];
            if (C2_DEFAULT_LOG_BLOCK_5 != -1)
            {
              [C2RequestOptions sessionConfigurationWithName:];
            }

            v30 = C2_DEFAULT_LOG_INTERNAL_5;
            if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_242158000, v30, OS_LOG_TYPE_INFO, "Unable to apply PreClearedModeWithBudgeting", buf, 2u);
            }
          }
        }

        if ([(C2RequestOptions *)self duetPreClearedMode]== 2)
        {
          if (objc_opt_respondsToSelector())
          {
            [v4 set_duetPreClearedMode:2];
          }

          else
          {
            [v4 setDiscretionary:0];
            if (C2_DEFAULT_LOG_BLOCK_5 != -1)
            {
              [C2RequestOptions sessionConfigurationWithName:];
            }

            v31 = C2_DEFAULT_LOG_INTERNAL_5;
            if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
            {
              *v36 = 0;
              _os_log_impl(&dword_242158000, v31, OS_LOG_TYPE_INFO, "Unable to apply PreClearedModeWithoutBudgeting", v36, 2u);
            }
          }
        }
      }

      if ([(C2RequestOptions *)self tlsPinning])
      {
        [v4 set_tlsTrustPinningPolicyName:*MEMORY[0x277CDC4E0]];
      }

      if ([(C2RequestOptions *)self allowExpiredDNSBehavior])
      {
        [v4 set_expiredDNSBehavior:1];
      }

      v32 = [(C2RequestOptions *)self useNWLoaderOverride];

      if (v32)
      {
        v33 = [(C2RequestOptions *)self useNWLoaderOverride];
        [v4 setUsesClassicLoadingMode:{objc_msgSend(v33, "BOOLValue") ^ 1}];
      }

      if ([(C2RequestOptions *)self allowsUCA])
      {
        [v4 _setAllowsUCA:1];
      }

      v34 = v4;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __49__C2RequestOptions_sessionConfigurationWithName___block_invoke()
{
  C2_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __49__C2RequestOptions_sessionConfigurationWithName___block_invoke_185()
{
  C2_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (id)copyAndDecorateRequest:(id)a3
{
  v4 = [a3 mutableCopy];
  if (v4)
  {
    if ([(C2RequestOptions *)self hasAllowsCellularAccess])
    {
      [v4 setAllowsCellularAccess:{-[C2RequestOptions allowsCellularAccess](self, "allowsCellularAccess")}];
    }

    [v4 setAllowsExpensiveNetworkAccess:{-[C2RequestOptions _allowsExpensiveAccess](self, "_allowsExpensiveAccess")}];
    v5 = [(C2RequestOptions *)self privacyProxyFailClosedOverride];

    if (v5)
    {
      v6 = [(C2RequestOptions *)self privacyProxyFailClosedOverride];
      [v4 _setPrivacyProxyFailClosed:{objc_msgSend(v6, "BOOLValue")}];
    }

    [(C2RequestOptions *)self _timeoutIntervalForRequest];
    if (v7 > 0.0)
    {
      [(C2RequestOptions *)self _timeoutIntervalForRequest];
      [v4 setTimeoutInterval:?];
    }

    v8 = [(C2RequestOptions *)self metricOptions];
    if (v8)
    {
      v9 = v8;
      v10 = [(C2RequestOptions *)self allowRouting];

      if (v10)
      {
        v11 = [(C2MetricOptions *)self->_metricOptions headerValueForTriggers];
        [v4 addValue:v11 forHTTPHeaderField:@"x-apple-c2-metric-triggers"];
      }
    }

    v12 = v4;
  }

  return v4;
}

- (id)decorateTask:(id)a3
{
  v4 = a3;
  [(C2RequestOptions *)self _timeoutIntervalForResource];
  if (v5 > 0.0)
  {
    [(C2RequestOptions *)self _timeoutIntervalForResource];
    [v4 set_timeoutIntervalForResource:?];
  }

  v6 = [(C2RequestOptions *)self _appleIDContextSessionIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = [(C2RequestOptions *)self _appleIDContextSessionIdentifier];
    v9 = [v8 length];

    if (v9)
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2050000000;
      v10 = getAKAppleIDSessionClass_softClass;
      v20 = getAKAppleIDSessionClass_softClass;
      if (!getAKAppleIDSessionClass_softClass)
      {
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __getAKAppleIDSessionClass_block_invoke;
        v16[3] = &unk_278D400F0;
        v16[4] = &v17;
        __getAKAppleIDSessionClass_block_invoke(v16);
        v10 = v18[3];
      }

      v11 = v10;
      _Block_object_dispose(&v17, 8);
      v12 = [v10 alloc];
      v13 = [(C2RequestOptions *)self _appleIDContextSessionIdentifier];
      v14 = [v12 initWithIdentifier:v13];
      [v4 _setAppleIDContext:v14];
    }
  }

  return v4;
}

- (void)handleCallbackForSessionTask:(id)a3 dataTask:(id)a4 callback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(C2RequestOptions *)self containerType];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__C2RequestOptions_handleCallbackForSessionTask_dataTask_callback___block_invoke;
  v15[3] = &unk_278D404D0;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [C2CallstackAnnotations annotateCallstackForContainerType:v11 block:v15];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      outOfProcessPoolName = self->_outOfProcessPoolName;
      v7 = [(C2RequestOptions *)v5 outOfProcessPoolName];
      v8 = v7;
      if (outOfProcessPoolName == v7)
      {
      }

      else
      {
        v9 = self->_outOfProcessPoolName;
        if (!v9)
        {
          goto LABEL_71;
        }

        v10 = [(C2RequestOptions *)v5 outOfProcessPoolName];
        v11 = [(NSString *)v9 isEqual:v10];

        if (!v11)
        {
          goto LABEL_72;
        }
      }

      hasAllowsCellularAccess = self->_hasAllowsCellularAccess;
      if (hasAllowsCellularAccess != [(C2RequestOptions *)v5 hasAllowsCellularAccess])
      {
        goto LABEL_72;
      }

      allowsCellularAccess = self->_allowsCellularAccess;
      if (allowsCellularAccess != [(C2RequestOptions *)v5 allowsCellularAccess])
      {
        goto LABEL_72;
      }

      allowsExpensiveAccess = self->__allowsExpensiveAccess;
      if (allowsExpensiveAccess != [(C2RequestOptions *)v5 _allowsExpensiveAccess])
      {
        goto LABEL_72;
      }

      allowsPowerNapScheduling = self->__allowsPowerNapScheduling;
      if (allowsPowerNapScheduling != [(C2RequestOptions *)v5 _allowsPowerNapScheduling])
      {
        goto LABEL_72;
      }

      timeoutIntervalForRequest = self->__timeoutIntervalForRequest;
      [(C2RequestOptions *)v5 _timeoutIntervalForRequest];
      if (timeoutIntervalForRequest != v18)
      {
        goto LABEL_72;
      }

      timeoutIntervalForResource = self->__timeoutIntervalForResource;
      [(C2RequestOptions *)v5 _timeoutIntervalForResource];
      if (timeoutIntervalForResource != v20)
      {
        goto LABEL_72;
      }

      sourceApplicationBundleIdentifier = self->__sourceApplicationBundleIdentifier;
      v22 = [(C2RequestOptions *)v5 _sourceApplicationBundleIdentifier];
      v8 = v22;
      if (sourceApplicationBundleIdentifier == v22)
      {
      }

      else
      {
        v23 = self->__sourceApplicationBundleIdentifier;
        if (!v23)
        {
          goto LABEL_71;
        }

        v24 = [(C2RequestOptions *)v5 _sourceApplicationBundleIdentifier];
        v25 = [(NSString *)v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_72;
        }
      }

      sourceApplicationSecondaryIdentifier = self->__sourceApplicationSecondaryIdentifier;
      v27 = [(C2RequestOptions *)v5 _sourceApplicationSecondaryIdentifier];
      v8 = v27;
      if (sourceApplicationSecondaryIdentifier == v27)
      {
      }

      else
      {
        v28 = self->__sourceApplicationSecondaryIdentifier;
        if (!v28)
        {
          goto LABEL_71;
        }

        v29 = [(C2RequestOptions *)v5 _sourceApplicationSecondaryIdentifier];
        v30 = [(NSString *)v28 isEqual:v29];

        if (!v30)
        {
          goto LABEL_72;
        }
      }

      sourceApplicationAuditTokenData = self->__sourceApplicationAuditTokenData;
      v32 = [(C2RequestOptions *)v5 _sourceApplicationAuditTokenData];
      v8 = v32;
      if (sourceApplicationAuditTokenData == v32)
      {
      }

      else
      {
        v33 = self->__sourceApplicationAuditTokenData;
        if (!v33)
        {
          goto LABEL_71;
        }

        v34 = [(C2RequestOptions *)v5 _sourceApplicationAuditTokenData];
        v35 = [(NSData *)v33 isEqual:v34];

        if (!v35)
        {
          goto LABEL_72;
        }
      }

      appleIDContextSessionIdentifier = self->__appleIDContextSessionIdentifier;
      v37 = [(C2RequestOptions *)v5 _appleIDContextSessionIdentifier];
      v8 = v37;
      if (appleIDContextSessionIdentifier == v37)
      {
      }

      else
      {
        v38 = self->__appleIDContextSessionIdentifier;
        if (!v38)
        {
          goto LABEL_71;
        }

        v39 = [(C2RequestOptions *)v5 _appleIDContextSessionIdentifier];
        v40 = [(NSString *)v38 isEqual:v39];

        if (!v40)
        {
          goto LABEL_72;
        }
      }

      tlsPinning = self->_tlsPinning;
      if (tlsPinning != [(C2RequestOptions *)v5 tlsPinning])
      {
        goto LABEL_72;
      }

      allowRouting = self->_allowRouting;
      if (allowRouting != [(C2RequestOptions *)v5 allowRouting])
      {
        goto LABEL_72;
      }

      allowExpiredDNSBehavior = self->_allowExpiredDNSBehavior;
      if (allowExpiredDNSBehavior != [(C2RequestOptions *)v5 allowExpiredDNSBehavior])
      {
        goto LABEL_72;
      }

      discretionaryNetworkBehavior = self->_discretionaryNetworkBehavior;
      if (discretionaryNetworkBehavior != [(C2RequestOptions *)v5 discretionaryNetworkBehavior])
      {
        goto LABEL_72;
      }

      duetPreClearedMode = self->_duetPreClearedMode;
      if (duetPreClearedMode != [(C2RequestOptions *)v5 duetPreClearedMode])
      {
        goto LABEL_72;
      }

      allowsRetryForBackgroundDataTasks = self->__allowsRetryForBackgroundDataTasks;
      if (allowsRetryForBackgroundDataTasks != [(C2RequestOptions *)v5 _allowsRetryForBackgroundDataTasks])
      {
        goto LABEL_72;
      }

      privacyProxyFailClosedOverride = self->_privacyProxyFailClosedOverride;
      v48 = [(C2RequestOptions *)v5 privacyProxyFailClosedOverride];
      v8 = v48;
      if (privacyProxyFailClosedOverride == v48)
      {
      }

      else
      {
        v49 = self->_privacyProxyFailClosedOverride;
        if (!v49)
        {
          goto LABEL_71;
        }

        v50 = [(C2RequestOptions *)v5 privacyProxyFailClosedOverride];
        v51 = [(NSNumber *)v49 isEqual:v50];

        if (!v51)
        {
          goto LABEL_72;
        }
      }

      identifier = self->_identifier;
      v53 = [(C2RequestOptions *)v5 identifier];
      v8 = v53;
      if (identifier == v53)
      {
      }

      else
      {
        v54 = self->_identifier;
        if (!v54)
        {
          goto LABEL_71;
        }

        v55 = [(C2RequestOptions *)v5 identifier];
        v56 = [(NSString *)v54 isEqual:v55];

        if (!v56)
        {
          goto LABEL_72;
        }
      }

      metricOptions = self->_metricOptions;
      v58 = [(C2RequestOptions *)v5 metricOptions];
      v8 = v58;
      if (metricOptions == v58)
      {
      }

      else
      {
        v59 = self->_metricOptions;
        if (!v59)
        {
          goto LABEL_71;
        }

        v60 = [(C2RequestOptions *)v5 metricOptions];
        v61 = [(C2MetricOptions *)v59 isEqual:v60];

        if (!v61)
        {
          goto LABEL_72;
        }
      }

      redactRemoteEndpointFromNetworkMetrics = self->_redactRemoteEndpointFromNetworkMetrics;
      if (redactRemoteEndpointFromNetworkMetrics != [(C2RequestOptions *)v5 redactRemoteEndpointFromNetworkMetrics])
      {
        goto LABEL_72;
      }

      redactUniformResourceIdentifierFromNetworkMetrics = self->_redactUniformResourceIdentifierFromNetworkMetrics;
      if (redactUniformResourceIdentifierFromNetworkMetrics != [(C2RequestOptions *)v5 redactUniformResourceIdentifierFromNetworkMetrics])
      {
        goto LABEL_72;
      }

      containerType = self->_containerType;
      if (containerType != [(C2RequestOptions *)v5 containerType])
      {
        goto LABEL_72;
      }

      optIntoDisableAPWakeOnIdleConnections = self->__optIntoDisableAPWakeOnIdleConnections;
      if (optIntoDisableAPWakeOnIdleConnections != [(C2RequestOptions *)v5 _optIntoDisableAPWakeOnIdleConnections])
      {
        goto LABEL_72;
      }

      originalHost = self->_originalHost;
      v67 = [(C2RequestOptions *)v5 originalHost];
      v8 = v67;
      if (originalHost == v67)
      {
      }

      else
      {
        v68 = self->_originalHost;
        if (!v68)
        {
          goto LABEL_71;
        }

        v69 = [(C2RequestOptions *)v5 originalHost];
        v70 = [(NSString *)v68 isEqual:v69];

        if (!v70)
        {
          goto LABEL_72;
        }
      }

      metricRequest = self->_metricRequest;
      if (metricRequest != [(C2RequestOptions *)v5 metricRequest])
      {
        goto LABEL_72;
      }

      invokedURL = self->_invokedURL;
      v73 = [(C2RequestOptions *)v5 invokedURL];
      v8 = v73;
      if (invokedURL == v73)
      {

LABEL_76:
        v12 = 1;
        goto LABEL_73;
      }

      v74 = self->_invokedURL;
      if (v74)
      {
        v75 = [(C2RequestOptions *)v5 invokedURL];
        v76 = [(NSURL *)v74 isEqual:v75];

        if (v76)
        {
          goto LABEL_76;
        }

LABEL_72:
        v12 = 0;
LABEL_73:

        goto LABEL_74;
      }

LABEL_71:

      goto LABEL_72;
    }

    v12 = 0;
  }

LABEL_74:

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_outOfProcessPoolName forKey:@"outOfProcessPoolName"];
  if ([(C2RequestOptions *)self hasAllowsCellularAccess])
  {
    [v4 encodeBool:self->_allowsCellularAccess forKey:@"allowsCellularAccess"];
  }

  [v4 encodeBool:self->__allowsExpensiveAccess forKey:@"allowsExpensiveAccess"];
  [v4 encodeBool:self->__allowsPowerNapScheduling forKey:@"allowsPowerNapScheduling"];
  [v4 encodeDouble:@"timeoutIntervalForRequestDouble" forKey:self->__timeoutIntervalForRequest];
  [v4 encodeDouble:@"timeoutIntervalForResourceDouble" forKey:self->__timeoutIntervalForResource];
  [v4 encodeObject:self->__sourceApplicationBundleIdentifier forKey:@"sourceApplicationBundleIdentifier"];
  [v4 encodeObject:self->__sourceApplicationSecondaryIdentifier forKey:@"sourceApplicationSecondaryIdentifier"];
  [v4 encodeObject:self->__sourceApplicationAuditTokenData forKey:@"sourceApplicationAuditTokenData"];
  [v4 encodeObject:self->__appleIDContextSessionIdentifier forKey:@"appleIDContextSessionIdentifier"];
  [v4 encodeBool:self->_tlsPinning forKey:@"tlsPinning"];
  [v4 encodeBool:self->_allowRouting forKey:@"allowRouting"];
  [v4 encodeBool:self->_allowExpiredDNSBehavior forKey:@"allowExpiredDNSBehavior"];
  [v4 encodeInt64:self->_discretionaryNetworkBehavior forKey:@"discretionaryNetworkBehavior"];
  [v4 encodeInt64:self->_duetPreClearedMode forKey:@"duetPreClearedMode"];
  [v4 encodeBool:self->__allowsRetryForBackgroundDataTasks forKey:@"allowsRetryForBackgroundDataTasks"];
  [v4 encodeObject:self->_privacyProxyFailClosedOverride forKey:@"privacyProxyFailClosedOverride"];
  [v4 encodeObject:self->_useNWLoaderOverride forKey:@"useNWLoaderOverride"];
  [v4 encodeObject:self->_identifier forKey:@"identifier"];
  [v4 encodeObject:self->_metricOptions forKey:@"metricOptions"];
  [v4 encodeBool:self->_redactRemoteEndpointFromNetworkMetrics forKey:@"redactRemoteEndpointFromNetworkMetrics"];
  [v4 encodeBool:self->_redactUniformResourceIdentifierFromNetworkMetrics forKey:@"redactUniformResourceIdentifierFromNetworkMetrics"];
  [v4 encodeInteger:self->_containerType forKey:@"containerType"];
  [v4 encodeBool:self->__optIntoDisableAPWakeOnIdleConnections forKey:@"optIntoDisableAPWakeOnIdleConnections"];
  [v4 encodeObject:self->_originalHost forKey:@"originalHost"];
  [v4 encodeBool:self->_metricRequest forKey:@"metricRequest"];
  [v4 encodeObject:self->_invokedURL forKey:@"invokedURL"];
}

- (C2RequestOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = C2RequestOptions;
  v5 = [(C2RequestOptions *)&v38 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"outOfProcessPoolName"];
    outOfProcessPoolName = v5->_outOfProcessPoolName;
    v5->_outOfProcessPoolName = v6;

    if ([v4 containsValueForKey:@"allowsCellularAccess"])
    {
      -[C2RequestOptions setAllowsCellularAccess:](v5, "setAllowsCellularAccess:", [v4 decodeBoolForKey:@"allowsCellularAccess"]);
    }

    v5->__allowsExpensiveAccess = [v4 decodeBoolForKey:@"allowsExpensiveAccess"];
    v5->__allowsPowerNapScheduling = [v4 decodeBoolForKey:@"allowsPowerNapScheduling"];
    [v4 decodeDoubleForKey:@"timeoutIntervalForRequestDouble"];
    v5->__timeoutIntervalForRequest = v8;
    [v4 decodeDoubleForKey:@"timeoutIntervalForResourceDouble"];
    v5->__timeoutIntervalForResource = v9;
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceApplicationBundleIdentifier"];
    sourceApplicationBundleIdentifier = v5->__sourceApplicationBundleIdentifier;
    v5->__sourceApplicationBundleIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceApplicationSecondaryIdentifier"];
    sourceApplicationSecondaryIdentifier = v5->__sourceApplicationSecondaryIdentifier;
    v5->__sourceApplicationSecondaryIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceApplicationAuditTokenData"];
    sourceApplicationAuditTokenData = v5->__sourceApplicationAuditTokenData;
    v5->__sourceApplicationAuditTokenData = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appleIDContextSessionIdentifier"];
    appleIDContextSessionIdentifier = v5->__appleIDContextSessionIdentifier;
    v5->__appleIDContextSessionIdentifier = v16;

    v5->_tlsPinning = [v4 decodeBoolForKey:@"tlsPinning"];
    v5->_allowRouting = [v4 decodeBoolForKey:@"allowRouting"];
    v5->_allowExpiredDNSBehavior = [v4 decodeBoolForKey:@"allowExpiredDNSBehavior"];
    v5->_discretionaryNetworkBehavior = [v4 decodeInt64ForKey:@"discretionaryNetworkBehavior"];
    v5->_duetPreClearedMode = [v4 decodeInt64ForKey:@"duetPreClearedMode"];
    v5->__allowsRetryForBackgroundDataTasks = [v4 decodeBoolForKey:@"allowsRetryForBackgroundDataTasks"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"privacyProxyFailClosedOverride"];
    privacyProxyFailClosedOverride = v5->_privacyProxyFailClosedOverride;
    v5->_privacyProxyFailClosedOverride = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"useNWLoaderOverride"];
    useNWLoaderOverride = v5->_useNWLoaderOverride;
    v5->_useNWLoaderOverride = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
      identifier = v5->_identifier;
      v5->_identifier = v24;
    }

    else
    {
      identifier = [MEMORY[0x277CCAD78] UUID];
      v26 = [identifier UUIDString];
      v27 = v5->_identifier;
      v5->_identifier = v26;
    }

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metricOptions"];
    metricOptions = v5->_metricOptions;
    v5->_metricOptions = v28;

    v5->_redactRemoteEndpointFromNetworkMetrics = [v4 decodeBoolForKey:@"redactRemoteEndpointFromNetworkMetrics"];
    v5->_redactUniformResourceIdentifierFromNetworkMetrics = [v4 decodeBoolForKey:@"redactUniformResourceIdentifierFromNetworkMetrics"];
    if ([v4 containsValueForKey:@"containerType"])
    {
      v30 = [v4 decodeIntegerForKey:@"containerType"];
    }

    else
    {
      v30 = 0;
    }

    v5->_containerType = v30;
    v31 = [v4 containsValueForKey:@"optIntoDisableAPWakeOnIdleConnections"];
    if (v31)
    {
      LOBYTE(v31) = [v4 decodeBoolForKey:@"optIntoDisableAPWakeOnIdleConnections"];
    }

    v5->__optIntoDisableAPWakeOnIdleConnections = v31;
    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originalHost"];
    originalHost = v5->_originalHost;
    v5->_originalHost = v32;

    v5->_metricRequest = [v4 decodeBoolForKey:@"metricRequest"];
    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"invokedURL"];
    invokedURL = v5->_invokedURL;
    v5->_invokedURL = v34;

    testBehavior_sessionGroupCreated = v5->_testBehavior_sessionGroupCreated;
    v5->_testBehavior_sessionGroupCreated = 0;
  }

  return v5;
}

@end