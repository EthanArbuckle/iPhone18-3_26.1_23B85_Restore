@interface AAFAnalyticsEventSecureBackup
+ (id)fetchDeviceSessionIDFromAuthKit:(id)a3;
- (AAFAnalyticsEventSecureBackup)initWithMetrics:(id)a3 altDSID:(id)a4 flowID:(id)a5 deviceSessionID:(id)a6 eventName:(id)a7 testsAreEnabled:(BOOL)a8 canSendMetrics:(BOOL)a9 category:(id)a10;
- (BOOL)permittedToSendMetrics;
- (void)addMetrics:(id)a3;
- (void)populateUnderlyingErrorsStartingWithRootError:(id)a3;
@end

@implementation AAFAnalyticsEventSecureBackup

- (BOOL)permittedToSendMetrics
{
  if (![(AAFAnalyticsEventSecureBackup *)self isAAAFoundationAvailable]|| ![(AAFAnalyticsEventSecureBackup *)self isAuthKitAvailable]|| [(AAFAnalyticsEventSecureBackup *)self areTestsEnabled])
  {
    return 0;
  }

  return [(AAFAnalyticsEventSecureBackup *)self canSendMetrics];
}

+ (id)fetchDeviceSessionIDFromAuthKit:(id)a3
{
  v3 = a3;
  v4 = +[AKAccountManager sharedInstance];
  v5 = v4;
  if (v3)
  {
    v11 = 0;
    v6 = [v4 authKitAccountWithAltDSID:v3 error:&v11];
    v7 = v11;
    if (v7)
    {
      v8 = CloudServicesLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000482D0(v7, v8);
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

  return v9;
}

- (AAFAnalyticsEventSecureBackup)initWithMetrics:(id)a3 altDSID:(id)a4 flowID:(id)a5 deviceSessionID:(id)a6 eventName:(id)a7 testsAreEnabled:(BOOL)a8 canSendMetrics:(BOOL)a9 category:(id)a10
{
  v10 = a8;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a10;
  if (+[AAFAnalyticsEventSecureBackup isAAAFoundationAvailable](AAFAnalyticsEventSecureBackup, "isAAAFoundationAvailable") && +[AAFAnalyticsEventSecureBackup isAuthKitAvailable]&& a9 && !v10)
  {
    v46.receiver = self;
    v46.super_class = AAFAnalyticsEventSecureBackup;
    v22 = [(AAFAnalyticsEventSecureBackup *)&v46 init];
    if (v22)
    {
      dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v23 = v41 = v17;
      v24 = dispatch_queue_create("com.apple.sbd.aafanalyticsevent.queue", v23);
      queue = v22->_queue;
      v22->_queue = v24;

      v17 = v41;
      v22->_areTestsEnabled = 0;
      v22->_canSendMetrics = a9;
      *&v22->_isAAAFoundationAvailable = 257;
      v26 = [[AAFAnalyticsEvent alloc] initWithEventName:v20 eventCategory:v21 initData:0 altDSID:v41];
      if (v18 && ([v18 isEqualToString:&stru_1000767A0] & 1) == 0)
      {
        [v26 setObject:v18 forKeyedSubscript:kAAFFlowIdString];
      }

      if (v19 && ([v19 isEqualToString:&stru_1000767A0] & 1) == 0)
      {
        [v26 setObject:v19 forKeyedSubscript:kAAFDeviceSessionIdString];
        if (!v16)
        {
LABEL_24:
          event = v22->_event;
          v22->_event = v26;

          goto LABEL_25;
        }
      }

      else
      {
        v27 = [AAFAnalyticsEventSecureBackup fetchDeviceSessionIDFromAuthKit:v41];
        [v26 setObject:v27 forKeyedSubscript:kAAFDeviceSessionIdString];

        v17 = v41;
        if (!v16)
        {
          goto LABEL_24;
        }
      }

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v28 = [v16 allKeys];
      v29 = [v28 countByEnumeratingWithState:&v42 objects:v48 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v43;
        do
        {
          for (i = 0; i != v30; i = i + 1)
          {
            if (*v43 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v42 + 1) + 8 * i);
            v34 = [v16 objectForKeyedSubscript:v33];
            [v26 setObject:v34 forKeyedSubscript:v33];
          }

          v30 = [v28 countByEnumeratingWithState:&v42 objects:v48 count:16];
        }

        while (v30);
      }

      v18 = v40;
      v17 = v41;
      v21 = v38;
      v20 = v39;
      goto LABEL_24;
    }
  }

  else
  {
    v47.receiver = self;
    v47.super_class = AAFAnalyticsEventSecureBackup;
    v22 = [(AAFAnalyticsEventSecureBackup *)&v47 init];
    if (v22)
    {
      v22->_isAAAFoundationAvailable = +[AAFAnalyticsEventSecureBackup isAAAFoundationAvailable];
      v22->_isAuthKitAvailable = +[AAFAnalyticsEventSecureBackup isAuthKitAvailable];
      v22->_areTestsEnabled = v10;
      v22->_canSendMetrics = a9;
    }
  }

LABEL_25:
  v36 = v22;

  return v36;
}

- (void)populateUnderlyingErrorsStartingWithRootError:(id)a3
{
  v4 = a3;
  if ([(AAFAnalyticsEventSecureBackup *)self permittedToSendMetrics])
  {
    v5 = [(AAFAnalyticsEventSecureBackup *)self queue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000033E0;
    v6[3] = &unk_100074F40;
    v6[4] = self;
    v7 = v4;
    dispatch_sync(v5, v6);
  }
}

- (void)addMetrics:(id)a3
{
  v4 = a3;
  if ([(AAFAnalyticsEventSecureBackup *)self permittedToSendMetrics])
  {
    v5 = [(AAFAnalyticsEventSecureBackup *)self queue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000034F0;
    v6[3] = &unk_100074F40;
    v7 = v4;
    v8 = self;
    dispatch_async(v5, v6);
  }
}

@end