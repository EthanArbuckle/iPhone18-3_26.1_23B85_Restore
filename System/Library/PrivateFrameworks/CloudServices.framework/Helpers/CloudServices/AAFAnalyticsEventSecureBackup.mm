@interface AAFAnalyticsEventSecureBackup
+ (id)fetchDeviceSessionIDFromAuthKit:(id)kit;
- (AAFAnalyticsEventSecureBackup)initWithMetrics:(id)metrics altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID eventName:(id)name testsAreEnabled:(BOOL)enabled canSendMetrics:(BOOL)sendMetrics category:(id)self0;
- (BOOL)permittedToSendMetrics;
- (void)addMetrics:(id)metrics;
- (void)populateUnderlyingErrorsStartingWithRootError:(id)error;
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

+ (id)fetchDeviceSessionIDFromAuthKit:(id)kit
{
  kitCopy = kit;
  v4 = +[AKAccountManager sharedInstance];
  v5 = v4;
  if (kitCopy)
  {
    v11 = 0;
    primaryAuthKitAccount = [v4 authKitAccountWithAltDSID:kitCopy error:&v11];
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
    primaryAuthKitAccount = [v4 primaryAuthKitAccount];
  }

  if ([v5 accountAccessTelemetryOptInForAccount:primaryAuthKitAccount])
  {
    v9 = [v5 telemetryDeviceSessionIDForAccount:primaryAuthKitAccount];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (AAFAnalyticsEventSecureBackup)initWithMetrics:(id)metrics altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID eventName:(id)name testsAreEnabled:(BOOL)enabled canSendMetrics:(BOOL)sendMetrics category:(id)self0
{
  enabledCopy = enabled;
  metricsCopy = metrics;
  dCopy = d;
  iDCopy = iD;
  sessionIDCopy = sessionID;
  nameCopy = name;
  categoryCopy = category;
  if (+[AAFAnalyticsEventSecureBackup isAAAFoundationAvailable](AAFAnalyticsEventSecureBackup, "isAAAFoundationAvailable") && +[AAFAnalyticsEventSecureBackup isAuthKitAvailable]&& sendMetrics && !enabledCopy)
  {
    v46.receiver = self;
    v46.super_class = AAFAnalyticsEventSecureBackup;
    v22 = [(AAFAnalyticsEventSecureBackup *)&v46 init];
    if (v22)
    {
      dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v23 = v41 = dCopy;
      v24 = dispatch_queue_create("com.apple.sbd.aafanalyticsevent.queue", v23);
      queue = v22->_queue;
      v22->_queue = v24;

      dCopy = v41;
      v22->_areTestsEnabled = 0;
      v22->_canSendMetrics = sendMetrics;
      *&v22->_isAAAFoundationAvailable = 257;
      v26 = [[AAFAnalyticsEvent alloc] initWithEventName:nameCopy eventCategory:categoryCopy initData:0 altDSID:v41];
      if (iDCopy && ([iDCopy isEqualToString:&stru_1000767A0] & 1) == 0)
      {
        [v26 setObject:iDCopy forKeyedSubscript:kAAFFlowIdString];
      }

      if (sessionIDCopy && ([sessionIDCopy isEqualToString:&stru_1000767A0] & 1) == 0)
      {
        [v26 setObject:sessionIDCopy forKeyedSubscript:kAAFDeviceSessionIdString];
        if (!metricsCopy)
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

        dCopy = v41;
        if (!metricsCopy)
        {
          goto LABEL_24;
        }
      }

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      allKeys = [metricsCopy allKeys];
      v29 = [allKeys countByEnumeratingWithState:&v42 objects:v48 count:16];
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
              objc_enumerationMutation(allKeys);
            }

            v33 = *(*(&v42 + 1) + 8 * i);
            v34 = [metricsCopy objectForKeyedSubscript:v33];
            [v26 setObject:v34 forKeyedSubscript:v33];
          }

          v30 = [allKeys countByEnumeratingWithState:&v42 objects:v48 count:16];
        }

        while (v30);
      }

      iDCopy = v40;
      dCopy = v41;
      categoryCopy = v38;
      nameCopy = v39;
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
      v22->_areTestsEnabled = enabledCopy;
      v22->_canSendMetrics = sendMetrics;
    }
  }

LABEL_25:
  v36 = v22;

  return v36;
}

- (void)populateUnderlyingErrorsStartingWithRootError:(id)error
{
  errorCopy = error;
  if ([(AAFAnalyticsEventSecureBackup *)self permittedToSendMetrics])
  {
    queue = [(AAFAnalyticsEventSecureBackup *)self queue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000033E0;
    v6[3] = &unk_100074F40;
    v6[4] = self;
    v7 = errorCopy;
    dispatch_sync(queue, v6);
  }
}

- (void)addMetrics:(id)metrics
{
  metricsCopy = metrics;
  if ([(AAFAnalyticsEventSecureBackup *)self permittedToSendMetrics])
  {
    queue = [(AAFAnalyticsEventSecureBackup *)self queue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000034F0;
    v6[3] = &unk_100074F40;
    v7 = metricsCopy;
    selfCopy = self;
    dispatch_async(queue, v6);
  }
}

@end