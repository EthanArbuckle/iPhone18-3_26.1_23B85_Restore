@interface AAFAnalyticsEventSecurity
+ (BOOL)isAAAFoundationAvailable;
+ (BOOL)isAuthKitAvailable;
+ (id)fetchDeviceSessionIDFromAuthKit:(id)a3;
- (AAFAnalyticsEventSecurity)initWithKeychainCircleMetrics:(id)a3 altDSID:(id)a4 flowID:(id)a5 deviceSessionID:(id)a6 eventName:(id)a7 testsAreEnabled:(BOOL)a8 canSendMetrics:(BOOL)a9 category:(id)a10;
- (BOOL)permittedToSendMetrics;
- (void)addMetrics:(id)a3;
- (void)dealloc;
- (void)populateUnderlyingErrorsStartingWithRootError:(id)a3;
- (void)sendMetricWithResult:(BOOL)a3 error:(id)a4;
@end

@implementation AAFAnalyticsEventSecurity

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(AAFAnalyticsEventSecurity *)self permittedToSendMetrics]&& ![(AAFAnalyticsEventSecurity *)self metricSent])
  {
    if (!SecIsInternalRelease())
    {
      v3 = secLogObjForScope("SecError");
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
LABEL_9:

        goto LABEL_10;
      }

      v4 = [(AAFAnalyticsEventSecurity *)self event];
      v5 = [v4 eventName];
      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&dword_22EB09000, v3, OS_LOG_TYPE_DEFAULT, "metrics: failed to send metric event %@ before deallocation", buf, 0xCu);

LABEL_8:
      goto LABEL_9;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      v3 = [(AAFAnalyticsEventSecurity *)self event];
      v4 = [v3 eventName];
      *buf = 138412290;
      v9 = v4;
      _os_log_fault_impl(&dword_22EB09000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "failed to send metric event %@ before deallocation", buf, 0xCu);
      goto LABEL_8;
    }
  }

LABEL_10:
  v7.receiver = self;
  v7.super_class = AAFAnalyticsEventSecurity;
  [(AAFAnalyticsEventSecurity *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)sendMetricWithResult:(BOOL)a3 error:(id)a4
{
  v6 = a4;
  if ([(AAFAnalyticsEventSecurity *)self permittedToSendMetrics])
  {
    v7 = [(AAFAnalyticsEventSecurity *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__AAFAnalyticsEventSecurity_sendMetricWithResult_error___block_invoke;
    block[3] = &unk_278863ED0;
    block[4] = self;
    v10 = a3;
    v9 = v6;
    dispatch_sync(v7, block);
  }
}

uint64_t __56__AAFAnalyticsEventSecurity_sendMetricWithResult_error___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  v3 = [*(a1 + 32) event];
  [v3 setObject:v2 forKeyedSubscript:@"didSucceed"];

  v4 = [*(a1 + 32) event];
  [v4 populateUnderlyingErrorsStartingWithRootError:*(a1 + 40)];

  v5 = +[SecurityAnalyticsReporterRTC rtcAnalyticsReporter];
  v6 = [*(a1 + 32) event];
  [v5 sendEvent:v6];

  v7 = *(a1 + 32);

  return [v7 setMetricSent:1];
}

- (void)addMetrics:(id)a3
{
  v4 = a3;
  if ([(AAFAnalyticsEventSecurity *)self permittedToSendMetrics])
  {
    v5 = [(AAFAnalyticsEventSecurity *)self queue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__AAFAnalyticsEventSecurity_addMetrics___block_invoke;
    v6[3] = &unk_278863EA0;
    v7 = v4;
    v8 = self;
    dispatch_async(v5, v6);
  }
}

void __40__AAFAnalyticsEventSecurity_addMetrics___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) allKeys];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [*(a1 + 32) objectForKeyedSubscript:v7];
        v9 = [*(a1 + 40) event];
        [v9 setObject:v8 forKeyedSubscript:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)populateUnderlyingErrorsStartingWithRootError:(id)a3
{
  v4 = a3;
  if ([(AAFAnalyticsEventSecurity *)self permittedToSendMetrics])
  {
    v5 = [(AAFAnalyticsEventSecurity *)self queue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __75__AAFAnalyticsEventSecurity_populateUnderlyingErrorsStartingWithRootError___block_invoke;
    v6[3] = &unk_278863EA0;
    v6[4] = self;
    v7 = v4;
    dispatch_sync(v5, v6);
  }
}

void __75__AAFAnalyticsEventSecurity_populateUnderlyingErrorsStartingWithRootError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) event];
  [v2 populateUnderlyingErrorsStartingWithRootError:*(a1 + 40)];
}

- (AAFAnalyticsEventSecurity)initWithKeychainCircleMetrics:(id)a3 altDSID:(id)a4 flowID:(id)a5 deviceSessionID:(id)a6 eventName:(id)a7 testsAreEnabled:(BOOL)a8 canSendMetrics:(BOOL)a9 category:(id)a10
{
  v10 = a8;
  v61 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a10;
  if (+[AAFAnalyticsEventSecurity isAAAFoundationAvailable](AAFAnalyticsEventSecurity, "isAAAFoundationAvailable") && +[AAFAnalyticsEventSecurity isAuthKitAvailable]&& a9 && !v10)
  {
    v58.receiver = self;
    v58.super_class = AAFAnalyticsEventSecurity;
    v22 = [(AAFAnalyticsEventSecurity *)&v58 init];
    if (v22)
    {
      dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v23 = v53 = v17;
      v24 = dispatch_queue_create("com.apple.security.aafanalyticsevent.queue", v23);
      queue = v22->_queue;
      v22->_queue = v24;

      v17 = v53;
      v22->_areTestsEnabled = 0;
      v22->_canSendMetrics = a9;
      *&v22->_isAAAFoundationAvailable = 257;
      v22->_metricSent = 0;
      gotLoadHelper_x8__OBJC_CLASS___AAFAnalyticsEvent(v26);
      v28 = [objc_alloc(*(v27 + 1232)) initWithEventName:v20 eventCategory:v21 initData:0 altDSID:v53];
      if (v18 && ([v18 isEqualToString:&stru_2843734B8] & 1) == 0)
      {
        Helper_x8__kAAFFlowIdString = gotLoadHelper_x8__kAAFFlowIdString(v29);
        [v28 setObject:v18 forKeyedSubscript:{**(v31 + 1456), Helper_x8__kAAFFlowIdString}];
      }

      if (v19 && ([v19 isEqualToString:&stru_2843734B8] & 1) == 0)
      {
        Helper_x8__kAAFDeviceSessionIdString = gotLoadHelper_x8__kAAFDeviceSessionIdString(v32);
        [v28 setObject:v19 forKeyedSubscript:{**(v38 + 1408), Helper_x8__kAAFDeviceSessionIdString}];
        if (!v16)
        {
LABEL_24:
          event = v22->_event;
          v22->_event = v28;

          goto LABEL_25;
        }
      }

      else
      {
        v33 = [AAFAnalyticsEventSecurity fetchDeviceSessionIDFromAuthKit:v53];
        v35 = gotLoadHelper_x8__kAAFDeviceSessionIdString(v34);
        [v28 setObject:v33 forKeyedSubscript:{**(v36 + 1408), v35}];

        v17 = v53;
        if (!v16)
        {
          goto LABEL_24;
        }
      }

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v39 = [v16 allKeys];
      v40 = [v39 countByEnumeratingWithState:&v54 objects:v60 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v55;
        do
        {
          for (i = 0; i != v41; ++i)
          {
            if (*v55 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v44 = *(*(&v54 + 1) + 8 * i);
            v45 = [v16 objectForKeyedSubscript:v44];
            [v28 setObject:v45 forKeyedSubscript:v44];
          }

          v41 = [v39 countByEnumeratingWithState:&v54 objects:v60 count:16];
        }

        while (v41);
      }

      v18 = v52;
      v17 = v53;
      v21 = v50;
      v20 = v51;
      goto LABEL_24;
    }
  }

  else
  {
    v59.receiver = self;
    v59.super_class = AAFAnalyticsEventSecurity;
    v22 = [(AAFAnalyticsEventSecurity *)&v59 init];
    if (v22)
    {
      v22->_isAAAFoundationAvailable = +[AAFAnalyticsEventSecurity isAAAFoundationAvailable];
      v22->_isAuthKitAvailable = +[AAFAnalyticsEventSecurity isAuthKitAvailable];
      v22->_areTestsEnabled = v10;
      v22->_canSendMetrics = a9;
    }
  }

LABEL_25:
  v47 = v22;

  v48 = *MEMORY[0x277D85DE8];
  return v47;
}

- (BOOL)permittedToSendMetrics
{
  if (![(AAFAnalyticsEventSecurity *)self isAAAFoundationAvailable]|| ![(AAFAnalyticsEventSecurity *)self isAuthKitAvailable]|| [(AAFAnalyticsEventSecurity *)self areTestsEnabled])
  {
    return 0;
  }

  return [(AAFAnalyticsEventSecurity *)self canSendMetrics];
}

+ (id)fetchDeviceSessionIDFromAuthKit:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CF0138] sharedInstance];
  v5 = v4;
  if (v3)
  {
    v12 = 0;
    v6 = [v4 authKitAccountWithAltDSID:v3 error:&v12];
    v7 = v12;
    if (v7)
    {
      v8 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = v7;
        _os_log_impl(&dword_22EB09000, v8, OS_LOG_TYPE_DEFAULT, "authKitAccountWithAltDSID returned error: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v6 = [v4 primaryAuthKitAccount];
  }

  if ([v5 accountAccessTelemetryOptInForAccount:v6])
  {
    v9 = [v5 telemetryDeviceSessionIDForAccount:v6];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (BOOL)isAuthKitAvailable
{
  if (isAuthKitAvailable_onceToken != -1)
  {
    dispatch_once(&isAuthKitAvailable_onceToken, &__block_literal_global_36);
  }

  return isAuthKitAvailable_available;
}

void __47__AAFAnalyticsEventSecurity_isAuthKitAvailable__block_invoke()
{
  if (objc_opt_class())
  {
    isAuthKitAvailable_available = 1;
  }

  else
  {
    v0 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *v1 = 0;
      _os_log_impl(&dword_22EB09000, v0, OS_LOG_TYPE_DEFAULT, "aafanalyticsevent-security: failed to weaklink AuthKit", v1, 2u);
    }
  }
}

+ (BOOL)isAAAFoundationAvailable
{
  if (isAAAFoundationAvailable_onceToken != -1)
  {
    dispatch_once(&isAAAFoundationAvailable_onceToken, &__block_literal_global_32);
  }

  return isAAAFoundationAvailable_available;
}

void __53__AAFAnalyticsEventSecurity_isAAAFoundationAvailable__block_invoke(double a1)
{
  gotLoadHelper_x8__OBJC_CLASS___AAFAnalyticsEvent(a1);
  v2 = *(v1 + 1232);
  if (objc_opt_class() && (gotLoadHelper_x8__OBJC_CLASS___AAFAnalyticsTransportRTC(v3), v5 = *(v4 + 1280), objc_opt_class()) && (gotLoadHelper_x8__OBJC_CLASS___AAFAnalyticsReporter(v6), v8 = *(v7 + 1248), objc_opt_class()))
  {
    isAAAFoundationAvailable_available = 1;
  }

  else
  {
    v9 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_22EB09000, v9, OS_LOG_TYPE_DEFAULT, "aafanalyticsevent-security: failed to weaklink AAAFoundation", v10, 2u);
    }
  }
}

@end