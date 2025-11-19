@interface IDSPeerIDQueryHandler
+ (BOOL)isQueryRetryForBadSignatureEnabled;
+ (BOOL)isServerBackoffModeActive;
+ (BOOL)shouldUseSelfTokens;
+ (double)ktQueryMetricTimeout;
+ (double)queryRetryIntervalForBadSignature;
+ (double)timeToRefreshQueuedQuery;
+ (int)queryRetryNumberForBadSignature;
+ (int)serverBackoffModeMaxSenderRetries;
+ (int)serverBackoffModeReceiverRetryInterval;
- (BOOL)_addCompletionBlock:(id)a3 forURIs:(id)a4 fromURI:(id)a5 fromService:(id)a6 context:(id)a7 queryIdentifier:(id)a8;
- (BOOL)startQueryForURIs:(id)a3 fromIdentity:(id)a4 fromURI:(id)a5 fromService:(id)a6 context:(id)a7 reason:(id)a8 completionBlock:(id)a9;
- (IDSPeerIDQueryHandler)initWithDelegate:(id)a3 dataSource:(id)a4;
- (IDSPeerIDQueryHandler)initWithDelegate:(id)a3 dataSource:(id)a4 dualMessageDelivery:(id)a5 networkChangeNotifier:(id)a6 pushHandler:(id)a7;
- (IDSPeerIDQueryHandlerDelegate)delegate;
- (id)_completionBlocksForURIs:(id)a3 fromURI:(id)a4 fromService:(id)a5 forceToServer:(BOOL)a6;
- (void)_bagLoaded:(id)a3;
- (void)_completeWithEventTrace:(id)a3;
- (void)_dequeuePendingQueryIfPossible;
- (void)_removeCompletionBlocksForURIs:(id)a3 fromURI:(id)a4 fromService:(id)a5 forRefresh:(BOOL)a6;
- (void)_startQueryForURIs:(id)a3 fromIdentity:(id)a4 fromURI:(id)a5 fromService:(id)a6 context:(id)a7 queryIdentifier:(id)a8 reason:(id)a9 completionBlock:(id)a10;
- (void)_triggerAutoBugCaptureForQueuedQueryRefresh;
- (void)addCompletionBlock:(id)a3 forToken:(id)a4;
- (void)cleanupUnpostedQueryMetrics;
- (void)dealloc;
- (void)noteKTQueryFinishedForURI:(id)a3 service:(id)a4;
- (void)removeCompletionBlockForToken:(id)a3;
@end

@implementation IDSPeerIDQueryHandler

+ (BOOL)shouldUseSelfTokens
{
  if (IMGetDomainBoolForKey())
  {
    return 1;
  }

  v3 = [IDSServerBag sharedInstanceForBagType:0];
  v4 = [v3 objectForKey:@"vc-disaster-sender-self-tokens"];
  v2 = [v4 intValue] > 0;

  return v2;
}

+ (BOOL)isServerBackoffModeActive
{
  if (IMGetDomainBoolForKey())
  {
    return 1;
  }

  v3 = [IDSServerBag sharedInstanceForBagType:0];
  v4 = [v3 isInDebilitatedMode];

  return v4;
}

+ (int)serverBackoffModeMaxSenderRetries
{
  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"vc-disaster-sender-max-retries"];

  if (v3)
  {
    v4 = [v3 intValue];
    if ((v4 & ~(v4 >> 31)) >= 15)
    {
      v5 = 15;
    }

    else
    {
      v5 = v4 & ~(v4 >> 31);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (int)serverBackoffModeReceiverRetryInterval
{
  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"vc-disaster-receiver-retry-interval"];

  if (v3)
  {
    v4 = [v3 intValue];
    if ((v4 & ~(v4 >> 31)) >= 1800)
    {
      v5 = 1800;
    }

    else
    {
      v5 = v4 & ~(v4 >> 31);
    }
  }

  else
  {
    v5 = 300;
  }

  return v5;
}

+ (BOOL)isQueryRetryForBadSignatureEnabled
{
  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"id-query-bad-signature-retry-enabled"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (double)queryRetryIntervalForBadSignature
{
  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"id-query-bad-signature-retry-interval"];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 5.0;
  }

  return v5;
}

+ (int)queryRetryNumberForBadSignature
{
  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"id-query-bad-signature-retry-number"];

  if (v3)
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (double)timeToRefreshQueuedQuery
{
  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"id-query-refresh-queued-query-interval-v2"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 3600.0;
  }

  return v5;
}

+ (double)ktQueryMetricTimeout
{
  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"id-query-kt-query-timeout"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 600.0;
  }

  return v5;
}

- (IDSPeerIDQueryHandler)initWithDelegate:(id)a3 dataSource:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[FTMessageDelivery_DualMode alloc] initWithPreferedType:1];
  v9 = +[IDSRegistrationRequestTracker sharedInstance];
  [v8 addRequestObserver:v9];

  v10 = +[NetworkChangeNotifier sharedInstance];
  v11 = [IDSPushHandler sharedInstanceWithPortName:@"com.apple.identityservicesd.aps"];
  v12 = [(IDSPeerIDQueryHandler *)self initWithDelegate:v7 dataSource:v6 dualMessageDelivery:v8 networkChangeNotifier:v10 pushHandler:v11];

  return v12;
}

- (IDSPeerIDQueryHandler)initWithDelegate:(id)a3 dataSource:(id)a4 dualMessageDelivery:(id)a5 networkChangeNotifier:(id)a6 pushHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v25.receiver = self;
  v25.super_class = IDSPeerIDQueryHandler;
  v17 = [(IDSPeerIDQueryHandler *)&v25 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_delegate, v12);
    objc_storeStrong(&v18->_dataSource, a4);
    objc_storeStrong(&v18->_networkChangeNotifier, a6);
    objc_storeStrong(&v18->_dualInterfaceidQueryMessageDelivery, a5);
    [(FTMessageDelivery_DualMode *)v18->_dualInterfaceidQueryMessageDelivery setUserAgent:@"com.apple.madrid-lookup"];
    v19 = [CUTDeferredTaskQueue alloc];
    v20 = im_primary_queue();
    v21 = [v19 initWithCapacity:1 queue:v20 block:&stru_100BE3028];
    cleanupOpenQueryMetricsTask = v18->_cleanupOpenQueryMetricsTask;
    v18->_cleanupOpenQueryMetricsTask = v21;

    objc_storeStrong(&v18->_pushHandler, a7);
    v18->_isInServerBackoffMode = +[IDSPeerIDQueryHandler isServerBackoffModeActive];
    v23 = +[NSNotificationCenter defaultCenter];
    [v23 addObserver:v18 selector:"_bagLoaded:" name:IDSServerBagFinishedLoadingNotification object:0];
  }

  return v18;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:0 object:0];

  [(FTMessageDelivery_DualMode *)self->_dualInterfaceidQueryMessageDelivery invalidate];
  v4.receiver = self;
  v4.super_class = IDSPeerIDQueryHandler;
  [(IDSPeerIDQueryHandler *)&v4 dealloc];
}

- (void)_bagLoaded:(id)a3
{
  v4 = a3;
  v5 = +[IDSPeerIDQueryHandler isServerBackoffModeActive];
  if (self->_isInServerBackoffMode != v5)
  {
    self->_isInServerBackoffMode = v5;
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_isInServerBackoffMode)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Bag loaded notification! Is in backoff mode changed to %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    if (self->_isInServerBackoffMode)
    {
      v8 = @"entered";
    }

    else
    {
      v8 = @"left";
    }

    v9 = [NSString stringWithFormat:@"iMessage server has %@ debilitated mode.", v8];
    sub_100450174(0, @"iMessage Debilitated Mode", v9, 1073);
  }
}

- (BOOL)_addCompletionBlock:(id)a3 forURIs:(id)a4 fromURI:(id)a5 fromService:(id)a6 context:(id)a7 queryIdentifier:(id)a8
{
  v74 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if ([(__CFString *)v14 count])
  {
    v73 = v18;
    v19 = [(__CFString *)v15 prefixedURI];
    v20 = [v19 length];

    if (!v20)
    {
      LOBYTE(v25) = 0;
LABEL_65:
      v18 = v73;
      goto LABEL_66;
    }

    v70 = [(__CFString *)v14 __imArrayByApplyingBlock:&stru_100BE3048];
    v71 = [v70 __imSetFromArray];
    v72 = sub_1006452B4(v15, v16, [v17 forceToServer]);
    v21 = [(NSMutableDictionary *)self->_completionBlocksToURIsMap objectForKey:v72];
    v22 = [v21 objectForKey:v71];

    v23 = [(IDSPeerIDQueryHandlerCompletionsForURIs *)v22 completionBlocks];
    v24 = [v23 count];
    LOBYTE(v25) = v24 == 0;

    if (!v74)
    {
      v38 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = @"NO";
        if (!v24)
        {
          v39 = @"YES";
        }

        *buf = 138412290;
        v76 = v39;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "No block supplied, but is this the first query: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      goto LABEL_64;
    }

    if (v24)
    {
      v26 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [(IDSPeerIDQueryHandlerCompletionsForURIs *)v22 queryIdentifier];
        v28 = [(IDSPeerIDQueryHandlerCompletionsForURIs *)v22 queryStart];
        *buf = 138413058;
        v76 = v73;
        v77 = 2112;
        v78 = *&v27;
        v79 = 2112;
        v80 = v14;
        v81 = 2112;
        v82 = v28;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Query ID %@ queued behind query %@ for URIs: %@, original query start %@", buf, 0x2Au);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v29 = [(IDSPeerIDQueryHandlerCompletionsForURIs *)v22 queryIdentifier];
        [(IDSPeerIDQueryHandlerCompletionsForURIs *)v22 queryStart];
        v66 = v65 = v14;
        v61 = v73;
        v63 = *&v29;
        _IDSLogV();
      }

      v30 = [(IDSPeerIDQueryHandlerCompletionsForURIs *)v22 queryStart:v61];
      [v30 timeIntervalSinceNow];
      v32 = v31;

      +[IDSPeerIDQueryHandler timeToRefreshQueuedQuery];
      v33 = fabs(v32);
      if (v33 <= v34)
      {
        v25 = 0;
        goto LABEL_35;
      }

      v35 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = [(IDSPeerIDQueryHandlerCompletionsForURIs *)v22 queryIdentifier];
        *buf = 138412546;
        v76 = v36;
        v77 = 2048;
        v78 = v33;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Query with ID %@ has been queued for %f seconds. Allowing next query to skip the queue to try to unblock.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        [(IDSPeerIDQueryHandlerCompletionsForURIs *)v22 queryIdentifier];
        v61 = v63 = v33;
        _IDSLogV();
      }

      v37 = objc_alloc_init(NSDate);
      [(IDSPeerIDQueryHandlerCompletionsForURIs *)v22 setQueryStart:v37];

      [(IDSPeerIDQueryHandlerCompletionsForURIs *)v22 setQueryIdentifier:v73];
      [(IDSPeerIDQueryHandler *)self _triggerAutoBugCaptureForQueuedQueryRefresh];
    }

    else if ([v17 preventNewQuery])
    {
      v40 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v76 = @"YES";
        v77 = 2112;
        v78 = *&v17;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "First query, but not allowed to start: %@ %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      LOBYTE(v25) = 1;
      goto LABEL_64;
    }

    v25 = 1;
LABEL_35:
    completionBlocksToURIsMap = self->_completionBlocksToURIsMap;
    if (!completionBlocksToURIsMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v43 = self->_completionBlocksToURIsMap;
      self->_completionBlocksToURIsMap = Mutable;

      completionBlocksToURIsMap = self->_completionBlocksToURIsMap;
    }

    v44 = [(NSMutableDictionary *)completionBlocksToURIsMap objectForKey:v72, v61, *&v63];
    if (!v44)
    {
      v44 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      [(NSMutableDictionary *)self->_completionBlocksToURIsMap setObject:v44 forKey:v72];
    }

    if (!v22)
    {
      v45 = [IDSPeerIDQueryHandlerCompletionsForURIs alloc];
      v46 = +[NSMutableArray array];
      v47 = objc_alloc_init(NSDate);
      v22 = [(IDSPeerIDQueryHandlerCompletionsForURIs *)v45 initWithCompletionArray:v46 queryIdentifier:v73 queryStart:v47];

      [v44 setObject:v22 forKey:v71];
    }

    v48 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = [v17 forceToServer];
      v50 = [v17 preventNewQuery];
      v51 = @"NO";
      *buf = 138413826;
      v76 = v15;
      if (v49)
      {
        v52 = @"YES";
      }

      else
      {
        v52 = @"NO";
      }

      if (v50)
      {
        v53 = @"YES";
      }

      else
      {
        v53 = @"NO";
      }

      if (v25)
      {
        v51 = @"YES";
      }

      v77 = 2112;
      v78 = *&v16;
      v79 = 2112;
      v80 = v52;
      v81 = 2112;
      v82 = v53;
      v83 = 2112;
      v84 = v51;
      v85 = 2112;
      v86 = v73;
      v87 = 2112;
      v88 = v14;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Adding queued query fromURI: %@  service: %@   forRefresh: %@ preventNew: %@ first query: %@ identifier: %@ for URIs: %@", buf, 0x48u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      if ([v17 forceToServer])
      {
        v54 = @"YES";
      }

      else
      {
        v54 = @"NO";
      }

      if ([v17 preventNewQuery])
      {
        v55 = @"YES";
      }

      else
      {
        v55 = @"NO";
      }

      if (v25)
      {
        v56 = @"YES";
      }

      else
      {
        v56 = @"NO";
      }

      v68 = v73;
      v69 = v14;
      v66 = v55;
      v67 = v56;
      v64 = v16;
      v65 = v54;
      v62 = v15;
      _IDSLogV();
    }

    v57 = [v74 copy];
    v58 = [(IDSPeerIDQueryHandlerCompletionsForURIs *)v22 completionBlocks];
    v59 = objc_retainBlock(v57);
    [v58 addObject:v59];

LABEL_64:
    goto LABEL_65;
  }

  LOBYTE(v25) = 0;
LABEL_66:

  return v25;
}

- (id)_completionBlocksForURIs:(id)a3 fromURI:(id)a4 fromService:(id)a5 forceToServer:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 count])
  {
    v13 = [v10 __imArrayByApplyingBlock:&stru_100BE3068];
    v14 = [v13 __imSetFromArray];

    completionBlocksToURIsMap = self->_completionBlocksToURIsMap;
    v16 = sub_1006452B4(v11, v12, v6);
    v17 = [(NSMutableDictionary *)completionBlocksToURIsMap objectForKey:v16];
    v18 = [v17 objectForKey:v14];

    v19 = [v18 completionBlocks];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)_removeCompletionBlocksForURIs:(id)a3 fromURI:(id)a4 fromService:(id)a5 forRefresh:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 count])
  {
    v13 = sub_1006452B4(v11, v12, v6);
    v14 = [(NSMutableDictionary *)self->_completionBlocksToURIsMap objectForKey:v13];
    v15 = [v10 __imArrayByApplyingBlock:&stru_100BE3088];
    v16 = [v15 __imSetFromArray];
    v17 = [v14 objectForKey:v16];

    [v14 removeObjectForKey:v16];
    if (![v14 count])
    {
      [(NSMutableDictionary *)self->_completionBlocksToURIsMap removeObjectForKey:v13];
    }

    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = @"YES";
      *buf = 138413058;
      *&buf[4] = v10;
      if (!v17)
      {
        v19 = @"NO";
      }

      *&buf[12] = 2112;
      *&buf[14] = v11;
      v27 = 2112;
      v28 = v12;
      v29 = 2112;
      v30 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Removing queued query for URIs: %@   fromURI: %@  service: %@ URIs set found in completion block map: %@", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v20 = @"YES";
      if (!v17)
      {
        v20 = @"NO";
      }

      v24 = v12;
      v25 = v20;
      v22 = v10;
      v23 = v11;
      _IDSLogV();
    }

    if (![(NSMutableDictionary *)self->_completionBlocksToURIsMap count:v22])
    {
      completionBlocksToURIsMap = self->_completionBlocksToURIsMap;
      self->_completionBlocksToURIsMap = 0;
    }
  }
}

- (void)_startQueryForURIs:(id)a3 fromIdentity:(id)a4 fromURI:(id)a5 fromService:(id)a6 context:(id)a7 queryIdentifier:(id)a8 reason:(id)a9 completionBlock:(id)a10
{
  v16 = a3;
  value = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v52 = a8;
  v53 = a9;
  v20 = a10;
  v21 = [(IDSPeerIDQueryHandler *)v16 count];
  if (v18 && v17 && value && v21)
  {
    if (!self->_queryQueue)
    {
      v22 = objc_alloc_init(NSMutableArray);
      queryQueue = self->_queryQueue;
      self->_queryQueue = v22;
    }

    v24 = [IDSEventTracingOperation alloc];
    v25 = [NSString stringWithFormat:@"Query-%@", v18];
    v26 = [v52 UUIDString];
    v50 = [v24 initWithName:v25 uniqueIdentifier:v26];

    v27 = [(NSMutableArray *)self->_queryQueue count];
    if (v27 > 0x3C)
    {
      v33 = v27;
      v34 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413314;
        v56 = self;
        v57 = 2048;
        v58 = v33;
        v59 = 2112;
        v60 = v16;
        v61 = 2112;
        v62 = v18;
        v63 = 2112;
        v64 = v17;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%@ uh-oh! Our queue is too long %lu. Dropping id query for URIs %@ fromService %@ fromURI %@", buf, 0x34u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
        [(IDSPeerIDQueryHandler *)self _dequeuePendingQueryIfPossible:self];
LABEL_65:

        goto LABEL_66;
      }
    }

    else
    {
      v28 = +[NSMutableDictionary dictionary];
      v29 = v16;
      if (v29)
      {
        CFDictionarySetValue(v28, @"URIs", v29);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10092DAFC();
      }

      CFDictionarySetValue(v28, @"FromIdentity", value);
      CFDictionarySetValue(v28, @"FromURI", v17);
      CFDictionarySetValue(v28, @"FromService", v18);
      v35 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v19 forSending]);
      if (v35)
      {
        CFDictionarySetValue(v28, @"ForSending", v35);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10092DB84();
      }

      v36 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v19 forceToServer]);
      if (v36)
      {
        CFDictionarySetValue(v28, @"forRefresh", v36);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10092DC0C();
      }

      [v50 addFlagSubfieldWithName:@"IsForcedToServer" value:{objc_msgSend(v19, "forceToServer")}];
      v37 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v19 forMessaging]);
      if (v37)
      {
        CFDictionarySetValue(v28, @"ForMessaging", v37);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10092DC94();
      }

      v38 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v19 resultExpected]);
      if (v38)
      {
        CFDictionarySetValue(v28, @"ResultExpected", v38);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10092DD1C();
      }

      v39 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v19 clientRequestedForceQuery]);
      if (v39)
      {
        CFDictionarySetValue(v28, @"IsForced", v39);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10092DDA4();
      }

      v40 = v52;
      if (v40)
      {
        CFDictionarySetValue(v28, @"QueryIdentifier", v40);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10092DE2C();
      }

      v41 = v50;
      if (v41)
      {
        CFDictionarySetValue(v28, @"EventTrace", v41);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10092DEB4();
      }

      if (v53)
      {
        CFDictionarySetValue(v28, @"QueryReason", v53);
      }

      v42 = [v19 requiredValidThroughDate];
      if (v42)
      {
        CFDictionarySetValue(v28, @"RequiredValidThroughDate", v42);
      }

      if (v53)
      {
        [v41 addStringSubfieldWithName:@"Query Reason" value:v53];
      }

      [(NSMutableArray *)self->_queryQueue addObject:v28];
      v43 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = [(NSMutableArray *)self->_queryQueue count];
        *buf = 138412802;
        v56 = self;
        v57 = 2112;
        v58 = v28;
        v59 = 2048;
        v60 = v44;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%@ enqueuing work %@. Current queue size is %lu", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v46 = v28;
        v47 = [(NSMutableArray *)self->_queryQueue count];
        v45 = self;
        _IDSLogV();
      }
    }

    [(IDSPeerIDQueryHandler *)self _dequeuePendingQueryIfPossible:v45];
    goto LABEL_65;
  }

  v30 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v56 = v16;
    v57 = 2112;
    v58 = value;
    v59 = 2112;
    v60 = v17;
    v61 = 2112;
    v62 = v18;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "  *** failing query for URIs: %@    cert: %@   fromURI: %@   fromService: %@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v47 = v17;
    v48 = v18;
    _IDSLogV();
  }

  if (v20)
  {
    -[IDSPeerIDQueryHandler _removeCompletionBlocksForURIs:fromURI:fromService:forRefresh:](self, "_removeCompletionBlocksForURIs:fromURI:fromService:forRefresh:", v16, v17, v18, [v19 forceToServer]);
    v31 = [NSError errorWithDomain:IDSPeerIDManagerErrorDomain code:2 userInfo:0];
    v51 = [NSDictionary dictionaryWithKeyArray:v16 defaultValue:v31];

    v32 = [[IDSPeerIDQueryHandlerMetricContext alloc] initWithDidFlightToServer:0 responseCode:0];
    LOBYTE(v47) = 0;
    (*(v20 + 2))(v20, v17, 0, v16, 0, 0, v18, 0, v32, v51, v47, v48);
  }

LABEL_66:
}

- (void)_dequeuePendingQueryIfPossible
{
  v2 = [(FTMessageDelivery_DualMode *)self->_dualInterfaceidQueryMessageDelivery queuedMessages];
  v3 = [v2 count];

  if (![(NSMutableArray *)self->_queryQueue count])
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Asked to _dequeuePendingQueryIfPossible but we have no queued queries", buf, 2u);
    }

    if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
    {
      return;
    }

LABEL_7:
    _IDSLogV();
    return;
  }

  if (v3 >= 6)
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Tried to _dequeuePendingQueryIfPossible but we currently have %lu in-flight queries", buf, 0xCu);
    }

    if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
    {
      return;
    }

    goto LABEL_7;
  }

  v137 = [(NSMutableArray *)self->_queryQueue objectAtIndex:0];
  [(NSMutableArray *)self->_queryQueue removeObjectAtIndex:0];
  if (![(NSMutableArray *)self->_queryQueue count])
  {
    queryQueue = self->_queryQueue;
    self->_queryQueue = 0;
  }

  v7 = [v137 objectForKey:@"URIs"];
  v134 = [v137 objectForKey:@"FromIdentity"];
  v8 = [v137 objectForKey:@"FromURI"];
  v150 = [v137 objectForKey:@"FromService"];
  v9 = [v137 objectForKey:@"ForSending"];
  v127 = [v9 BOOLValue];

  v10 = [v137 objectForKey:@"forRefresh"];
  v149 = [v10 BOOLValue];

  v11 = [v137 objectForKey:@"ForMessaging"];
  v131 = [v11 BOOLValue];

  v12 = [v137 objectForKey:@"ResultExpected"];
  v130 = [v12 BOOLValue];

  v13 = [v137 objectForKey:@"IsForced"];
  v129 = [v13 BOOLValue];

  v133 = [v137 objectForKey:@"QueryIdentifier"];
  v135 = [v137 objectForKey:@"QueryReason"];
  v132 = [v137 objectForKey:@"EventTrace"];
  v147 = [v137 objectForKey:@"RequiredValidThroughDate"];
  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v150;
    *&buf[22] = 2112;
    v212 = v133;
    *v213 = 2112;
    *&v213[2] = v135;
    *&v213[10] = 2112;
    *&v213[12] = v7;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Starting ID query from URI: %@ Service: %@ identifier: %@ reason: %@ for IDs: %@", buf, 0x34u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    v125 = v135;
    v126 = v7;
    v118 = v150;
    v121 = v133;
    v113 = v8;
    _IDSLogEventV();
  }

  v15 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v134;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "       Identity: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v113 = v134;
    _IDSLogV();
  }

  v16 = [IDSRegistrationKeyManager sharedInstance:v113];
  v128 = [v16 identityPrivateKey];

  v198[0] = 0;
  v198[1] = v198;
  v198[2] = 0x2020000000;
  v199 = 1;
  v196[0] = 0;
  v196[1] = v196;
  v196[2] = 0x2020000000;
  v197 = 1;
  v194[0] = 0;
  v194[1] = v194;
  v194[2] = 0x2020000000;
  v195 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v212 = sub_10000AAC4;
  *v213 = sub_10000BCD4;
  *&v213[8] = 0;
  v188 = 0;
  v189 = &v188;
  v190 = 0x3032000000;
  v191 = sub_10000AAC4;
  v192 = sub_10000BCD4;
  v193 = 0;
  if ([v150 isEqualToIgnoringCase:@"com.apple.madrid"])
  {
    v17 = 20.0;
  }

  else
  {
    v17 = 60.0;
  }

  v18 = objc_alloc_init(NSMutableArray);
  v143 = objc_alloc_init(NSMutableArray);
  v186 = 0u;
  v187 = 0u;
  v184 = 0u;
  v185 = 0u;
  obj = v7;
  v19 = [obj countByEnumeratingWithState:&v184 objects:v210 count:16];
  v140 = v18;
  if (!v19)
  {
    v141 = 0;
    v136 = 0;
    goto LABEL_100;
  }

  v141 = 0;
  v136 = 0;
  v138 = 0;
  v20 = *v185;
  v145 = kIDSServiceDefaultsSentinelAlias;
  do
  {
    v21 = 0;
    do
    {
      if (*v185 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v184 + 1) + 8 * v21);
      v23 = [v22 tokenFreeURI];
      v24 = [(IDSPeerIDQueryHandler *)self dataSource];
      v25 = [v24 hasQueryResultsForURI:v22 fromURI:v8 service:v150 isForceQuery:v149 validThrough:v147];

      if (v25)
      {
        if (v149)
        {
          v26 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *v208 = 138412802;
            *&v208[4] = v22;
            *&v208[12] = 2112;
            *&v208[14] = v8;
            *&v208[22] = 2112;
            v209 = v150;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "               Skipping URI: %@   => query is forced but uri queried very recently   (From: %@   Service: %@)", v208, 0x20u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v119 = v8;
            v122 = v150;
            v114 = v22;
            _IDSLogV();
          }

          ++v141;
        }

        else
        {
          v39 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *v208 = 138412802;
            *&v208[4] = v22;
            *&v208[12] = 2112;
            *&v208[14] = v8;
            *&v208[22] = 2112;
            v209 = v150;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "               Skipping URI: %@   => already have tokens   (From: %@   Service: %@)", v208, 0x20u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v119 = v8;
            v122 = v150;
            v114 = v22;
            _IDSLogV();
          }
        }

        [v143 addObject:{v23, v114, v119, v122}];
        goto LABEL_55;
      }

      v27 = [v23 FZIDType];
      v28 = [v8 prefixedURI];
      v29 = [v28 _im_normalizedURIString];
      v30 = [v145 lowercaseString];
      v31 = [v29 rangeOfString:v30] == 0x7FFFFFFFFFFFFFFFLL;

      if (v31)
      {
        if ([v8 FZIDType] == -1)
        {
          v41 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *v208 = 138412290;
            *&v208[4] = v8;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "******** Found invalid from URI: %@, failing *********", v208, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            goto LABEL_64;
          }
        }

        else
        {
          v32 = [v23 prefixedURI];
          v33 = [v32 _im_normalizedURIString];
          v34 = [v145 lowercaseString];
          v35 = [v33 rangeOfString:v34] == 0x7FFFFFFFFFFFFFFFLL;

          if (v35)
          {
            if (v27 == 1)
            {
              v36 = [v23 prefixedURI];
              v37 = [v36 rangeOfString:@"@"] == 0x7FFFFFFFFFFFFFFFLL;

              if (v37)
              {
                v38 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                {
                  *v208 = 138412290;
                  *&v208[4] = v23;
                  _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "******** Found malformed email in query set: %@, failing *********", v208, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  goto LABEL_69;
                }

                goto LABEL_55;
              }
            }

            else if (v27 >= 7)
            {
              v46 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                *v208 = 138412546;
                *&v208[4] = v23;
                *&v208[12] = 2048;
                *&v208[14] = v27;
                _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "******** Found bad URI type in query set: %@ (%ld), failing *********", v208, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v114 = v23;
                v119 = v27;
                _IDSLogV();
              }

              goto LABEL_55;
            }

            v47 = [v150 isEqualToString:@"com.apple.private.alloy.facetime.multi"];
            if (v27)
            {
              v48 = 1;
            }

            else
            {
              v48 = v47;
            }

            if ((v48 & 1) != 0 || (+[IDSCTAdapter sharedInstance](IDSCTAdapter, "sharedInstance"), v49 = objc_claimAutoreleasedReturnValue(), [v23 unprefixedURI], v50 = objc_claimAutoreleasedReturnValue(), v51 = objc_msgSend(v49, "isPhoneNumberEmergencyNumber:", v50), v50, v49, !v51))
            {
              v54 = +[IDSTrafficMonitor sharedInstance];
              v55 = [v54 noteQueryForService:v150 requestor:@"unknown"];

              if (v55)
              {
                [v140 addObject:v23];
                if (v138 & HIDWORD(v138))
                {
                  v138 = 0x100000001;
                }

                else
                {
                  v57 = [v23 unprefixedURI];
                  IsEmail = IMStringIsEmail();

                  v59 = BYTE4(v138) | IsEmail ^ 1;
                  v60 = v136 | 2;
                  LODWORD(v138) = v138 | IsEmail;
                  HIDWORD(v138) |= IsEmail ^ 1;
                  if ((v138 & 1) == 0)
                  {
                    v60 = v136;
                  }

                  v136 = v60 | v59 & 1;
                }
              }

              else
              {
                v56 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                {
                  *v208 = 138412290;
                  *&v208[4] = v23;
                  _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "******** Not querying URI %@ service is over budget, not performing query ********", v208, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  _IDSWarnV();
                  _IDSLogV();
                  v114 = v23;
                  _IDSLogTransport();
                }
              }
            }

            else
            {
              v52 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
              {
                *v208 = 138412290;
                *&v208[4] = v23;
                _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "******** URI %@ is an emergency number, not performing query ********", v208, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                v53 = _IDSShouldLog();
                v43 = v23;
                if (v53)
                {
                  goto LABEL_70;
                }
              }
            }
          }

          else
          {
            v44 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              *v208 = 138412290;
              *&v208[4] = v23;
              _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "******** Found sentinel alias in query set: %@, failing *********", v208, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
LABEL_69:
              v45 = _IDSShouldLog();
              v43 = v23;
              if ((v45 & 1) == 0)
              {
                goto LABEL_55;
              }

              goto LABEL_70;
            }
          }
        }
      }

      else
      {
        v40 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *v208 = 138412290;
          *&v208[4] = v8;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "******** Found sentinel alias as from URI: %@, failing *********", v208, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
LABEL_64:
          v42 = _IDSShouldLog();
          v43 = v8;
          if ((v42 & 1) == 0)
          {
            goto LABEL_55;
          }

LABEL_70:
          v114 = v43;
          _IDSLogV();
        }
      }

LABEL_55:

      v21 = v21 + 1;
    }

    while (v19 != v21);
    v61 = [obj countByEnumeratingWithState:&v184 objects:v210 count:16];
    v19 = v61;
  }

  while (v61);
LABEL_100:

  if (v149)
  {
    v62 = [[IDSQueryForceQueryDebouncedMetric alloc] initWithServiceIdentifier:v150 queryReason:v135 uriCount:v141 preventQuery:{objc_msgSend(v140, "count") == 0}];
    v63 = +[IDSCoreAnalyticsLogger defaultLogger];
    [v63 logMetric:v62];
  }

  if ([v140 count])
  {
    v64 = +[NSDate date];
    v65 = [v140 __imArrayByApplyingBlock:&stru_100BE30A8];
    v66 = objc_alloc_init(IDSIDQueryMessage);
    [(IDSIDQueryMessage *)v66 setURIs:v65];
    v67 = [v8 prefixedURI];
    [(IDSIDQueryMessage *)v66 setSelfURI:v67];

    [(IDSIDQueryMessage *)v66 setIDCertificate:v134];
    [(IDSIDQueryMessage *)v66 setIdentityPrivateKey:v128];
    [(IDSIDQueryMessage *)v66 setTimeout:v17];
    v142 = [(IDSPeerIDPushHandler *)self->_pushHandler pushToken];
    [(IDSIDQueryMessage *)v66 setPushToken:v142];
    [(IDSIDQueryMessage *)v66 setTopic:@"com.apple.ids.query"];
    [(IDSIDQueryMessage *)v66 setUnderlyingService:v150];
    [(IDSIDQueryMessage *)v66 setImportanceLevel:2];
    if (v131)
    {
      v68 = @"true";
    }

    else
    {
      v68 = 0;
    }

    [(IDSIDQueryMessage *)v66 setRequiredForMessaging:v68];
    [(IDSIDQueryMessage *)v66 setResultExpected:v130];
    [(IDSIDQueryMessage *)v66 setIsForced:v149];
    [(IDSIDQueryMessage *)v66 setIsClientRequestedForceQuery:v129];
    v69 = [(IDSIDQueryMessage *)v66 overallEventTracingOperation];
    [v132 addSubOperationWithOperation:v69];

    v70 = +[IDSDServiceController sharedInstance];
    v146 = [v70 serviceWithIdentifier:v150];

    if ([v146 isUltraConstrainedPushAllowed])
    {
      [(IDSIDQueryMessage *)v66 setAllowsUltraConstrainedNetworks:1];
    }

    v71 = +[IDSDServiceController sharedInstance];
    v139 = [v71 allPrimaryServices];

    if ([v146 adHocServiceType] != 5)
    {
      if ([v139 containsObject:v146])
      {
        if ([v146 adHocServiceType])
        {
          [(IDSIDQueryMessage *)v66 setService:v150];
        }
      }

      else
      {
        [(IDSIDQueryMessage *)v66 setSubService:v150];
      }
    }

    if ([v146 forceHTTPQueriesOnly])
    {
      v82 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
      {
        *v208 = 0;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "Service wants to force HTTP queries, setting importance level lower to ensure it doesnt use APS", v208, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && (_IDSShouldLog() & 1) != 0)
      {
        goto LABEL_132;
      }

      goto LABEL_133;
    }

    if (IMGetDomainBoolForKey())
    {
      v83 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        *v208 = 0;
        _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "*** We are currently forcing HTTP queries due to a default; remove default to re-enable QORP!", v208, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
LABEL_132:
        _IDSLogV();
      }

LABEL_133:
      [(IDSIDQueryMessage *)v66 setImportanceLevel:1];
    }

    v84 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      v85 = [(IDSIDQueryMessage *)v66 service];
      *v208 = 138412290;
      *&v208[4] = v85;
      _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "The Query Service Is %@", v208, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v115 = [(IDSIDQueryMessage *)v66 service];
      _IDSLogV();
    }

    if (!v189[5])
    {
      v86 = [[IMPowerAssertion alloc] initWithIdentifier:@"IDSPeerIDLookup" timeout:60.0];
      v87 = v189[5];
      v189[5] = v86;
    }

    v88 = +[NSString stringGUID];
    v89 = +[IMMobileNetworkManager sharedInstance];
    [v89 addFastDormancyDisableToken:v88];

    v90 = [v140 componentsJoinedByString:{@", "}];
    *v208 = 0;
    *&v208[8] = v208;
    *&v208[16] = 0x2020000000;
    LODWORD(v209) = 0;
    v174[0] = 0;
    v174[1] = v174;
    v174[2] = 0x2020000000;
    v175 = 0;
    v152[0] = _NSConcreteStackBlock;
    v152[1] = 3221225472;
    v152[2] = sub_100647F04;
    v152[3] = &unk_100BE30D0;
    v152[4] = self;
    v164 = v196;
    v165 = v194;
    v166 = v198;
    v91 = v64;
    v153 = v91;
    v154 = v133;
    v92 = v90;
    v155 = v92;
    v93 = v150;
    v156 = v93;
    v94 = v8;
    v157 = v94;
    v172 = v149;
    v158 = obj;
    v167 = buf;
    v168 = v208;
    v173 = v127;
    v171 = v136;
    v159 = v135;
    v160 = v140;
    v169 = v174;
    v161 = v134;
    v95 = v88;
    v162 = v95;
    v163 = v132;
    v170 = &v188;
    [(IDSIDQueryMessage *)v66 setCompletionBlock:v152];
    v96 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
    {
      *v200 = 138412802;
      v201 = v92;
      v202 = 2112;
      v203 = v94;
      v204 = 2112;
      v205 = v93;
      _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "  Sending off query for URIs: %@  from URI: %@   service: %@", v200, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v119 = v94;
      v122 = v93;
      v116 = v92;
      _IDSLogV();
    }

    v97 = [NetworkChangeNotifier sharedInstance:v116];
    v98 = [v97 linkQualityForInterfaceType:2];

    if (v98 != 2)
    {
      v99 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        *v200 = 0;
        _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, " ** WiFi link quality is not good, requesting cellular preferred", v200, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      [(IDSIDQueryMessage *)v66 setForceCellular:1];
    }

    v100 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
    {
      *v200 = 138412802;
      v201 = v92;
      v202 = 2112;
      v203 = v94;
      v204 = 2112;
      v205 = v93;
      _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, " => Sending query for URIs: %@  from URI: %@   service: %@", v200, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v120 = v94;
      v123 = v93;
      v117 = v92;
      _IDSLogV();
    }

    [(FTMessageDelivery_DualMode *)self->_dualInterfaceidQueryMessageDelivery sendMessage:v66, v117, v120, v123];
    v101 = [IDSServerBag sharedInstanceForBagType:1];
    if ([v101 isServerAvailable])
    {
      [v101 startBagLoad];
    }

    v102 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10064B268;
    block[3] = &unk_100BD6ED0;
    block[4] = self;
    dispatch_async(v102, block);

    _Block_object_dispose(v174, 8);
    _Block_object_dispose(v208, 8);
  }

  else
  {
    v182 = 0u;
    v183 = 0u;
    v180 = 0u;
    v181 = 0u;
    v72 = obj;
    v73 = [v72 countByEnumeratingWithState:&v180 objects:v207 count:16];
    if (v73)
    {
      v74 = *v181;
      LODWORD(v75) = 1;
      do
      {
        for (i = 0; i != v73; i = i + 1)
        {
          if (*v181 != v74)
          {
            objc_enumerationMutation(v72);
          }

          v77 = *(*(&v180 + 1) + 8 * i);
          v78 = objc_autoreleasePoolPush();
          v79 = [v77 tokenFreeURI];
          v80 = [(IDSPeerIDQueryHandler *)self dataSource];
          v81 = [v80 hasPeerTokensForURI:v79 fromURI:v8 service:v150];

          objc_autoreleasePoolPop(v78);
          v75 = v81 & v75;
        }

        v73 = [v72 countByEnumeratingWithState:&v180 objects:v207 count:16];
      }

      while (v73);
    }

    else
    {
      v75 = 1;
    }

    v103 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
    {
      v104 = @"NO";
      *v208 = 138412802;
      if (v75)
      {
        v104 = @"YES";
      }

      *&v208[4] = v104;
      *&v208[12] = 2112;
      *&v208[14] = v143;
      *&v208[22] = 2112;
      v209 = v72;
      _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "The requestedURIsToQuery have already been covered by previous queries! -- Returning {success: %@, checked: %@, requested: %@}", v208, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v105 = @"NO";
      if (v75)
      {
        v105 = @"YES";
      }

      v119 = v143;
      v122 = v72;
      v115 = v105;
      _IDSLogV();
    }

    v106 = [(IDSPeerIDQueryHandler *)self _completionBlocksForURIs:v72 fromURI:v8 fromService:v150 forceToServer:v149, v115, v119, v122];
    v107 = [v106 copy];

    v178 = 0u;
    v179 = 0u;
    v176 = 0u;
    v177 = 0u;
    v91 = v107;
    v108 = [v91 countByEnumeratingWithState:&v176 objects:v206 count:16];
    if (v108)
    {
      v109 = *v177;
      do
      {
        for (j = 0; j != v108; j = j + 1)
        {
          if (*v177 != v109)
          {
            objc_enumerationMutation(v91);
          }

          v111 = *(*(&v176 + 1) + 8 * j);
          v112 = [[IDSPeerIDQueryHandlerMetricContext alloc] initWithDidFlightToServer:0 responseCode:0];
          LOBYTE(v124) = 0;
          (*(v111 + 16))(v111, v8, v72, v140, 0, 0, v150, v75, v112, 0, v124);
        }

        v108 = [v91 countByEnumeratingWithState:&v176 objects:v206 count:16];
      }

      while (v108);
    }

    [(IDSPeerIDQueryHandler *)self _completeWithEventTrace:v132];
    [(IDSPeerIDQueryHandler *)self _removeCompletionBlocksForURIs:v72 fromURI:v8 fromService:v150 forRefresh:v149];
    [(IDSPeerIDQueryHandler *)self _dequeuePendingQueryIfPossible];
  }

  _Block_object_dispose(&v188, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(v194, 8);
  _Block_object_dispose(v196, 8);
  _Block_object_dispose(v198, 8);
}

- (BOOL)startQueryForURIs:(id)a3 fromIdentity:(id)a4 fromURI:(id)a5 fromService:(id)a6 context:(id)a7 reason:(id)a8 completionBlock:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  if ([v15 count])
  {
    v22 = +[NSUUID UUID];
    v23 = [(IDSPeerIDQueryHandler *)self _addCompletionBlock:v21 forURIs:v15 fromURI:v17 fromService:v18 context:v19 queryIdentifier:v22];
    if (v23 && ([v19 preventNewQuery] & 1) == 0)
    {
      [(IDSPeerIDQueryHandler *)self _startQueryForURIs:v15 fromIdentity:v16 fromURI:v17 fromService:v18 context:v19 queryIdentifier:v22 reason:v20 completionBlock:v21];
    }

    v24 = v23 & [v19 preventNewQuery] ^ 1;
  }

  else
  {
    LOBYTE(v24) = 0;
  }

  return v24;
}

- (void)addCompletionBlock:(id)a3 forToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      if (!self->_extraCompletionBlocks)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        extraCompletionBlocks = self->_extraCompletionBlocks;
        self->_extraCompletionBlocks = Mutable;
      }

      v10 = [v6 copy];
      v11 = v10;
      if (v10)
      {
        v12 = self->_extraCompletionBlocks;
        v13 = objc_retainBlock(v10);
        [(NSMutableDictionary *)v12 setObject:v13 forKey:v7];
      }

      goto LABEL_18;
    }

    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Empty completion block for token: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
LABEL_17:
      _IDSLogV();
    }
  }

  else
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Empty token for completion block", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      goto LABEL_17;
    }
  }

LABEL_18:
}

- (void)removeCompletionBlockForToken:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(NSMutableDictionary *)self->_extraCompletionBlocks removeObjectForKey:v4];
    if (![(NSMutableDictionary *)self->_extraCompletionBlocks count])
    {
      extraCompletionBlocks = self->_extraCompletionBlocks;
      self->_extraCompletionBlocks = 0;
    }
  }

  else
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Empty token for removing completion block", v7, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (void)noteKTQueryFinishedForURI:(id)a3 service:(id)a4
{
  v6 = a3;
  v31 = a4;
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = *&v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Noting KT results for uri %@, posting relevant query metrics if necessary", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v29 = *&v6;
    _IDSLogV();
  }

  os_unfair_lock_lock(&self->_metricsLock);
  v8 = [(NSMutableArray *)self->_openMetricsWaitingForKTQuery count];
  if ((v8 - 1) >= 0)
  {
    do
    {
      v9 = [(NSMutableArray *)self->_openMetricsWaitingForKTQuery objectAtIndexedSubscript:--v8, *&v29];
      v10 = [v9 ktQueryStart];
      [v10 timeIntervalSinceNow];
      v12 = v11;

      v13 = [v9 urisWaitingForKTResponse];
      v14 = [v13 containsObject:v6];

      if (v14)
      {
        v15 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v9 urisWaitingForKTResponse];
          v17 = [v16 count];
          *buf = 138412546;
          v33 = *&v6;
          v34 = 2048;
          v35 = v17 - 1;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Query was waiting for uri %@, remaining uris before posting metric %ld", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v18 = [v9 urisWaitingForKTResponse];
          v29 = *&v6;
          v30 = [v18 count] - 1;
          _IDSLogV();
        }

        v19 = [v9 urisWaitingForKTResponse];
        [v19 removeObject:v6];

        v20 = [v9 urisWaitingForKTResponse];
        v21 = [v20 count] == 0;

        if (v21)
        {
          v22 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [v9 uniqueIdentifier];
            *buf = 138412290;
            v33 = *&v23;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "This was the last uri we were waiting for, posting query metric for query %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            [v9 uniqueIdentifier];
            v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            _IDSLogV();
          }

          v24 = fabs(v12);
          v25 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v33 = v24;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "KT query time: %f", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v29 = v24;
            _IDSLogV();
          }

          v26 = [v9 queryMetricToLog];
          [v26 setKtQueryTimeInterval:v24];

          v27 = +[IDSCoreAnalyticsLogger defaultLogger];
          v28 = [v9 queryMetricToLog];
          [v27 logMetric:v28];

          [(NSMutableArray *)self->_openMetricsWaitingForKTQuery removeObjectAtIndex:v8];
        }
      }
    }

    while (v8 > 0);
  }

  os_unfair_lock_unlock(&self->_metricsLock);
  [(IDSPeerIDQueryHandler *)self cleanupUnpostedQueryMetrics];
}

- (void)cleanupUnpostedQueryMetrics
{
  os_unfair_lock_lock(&self->_metricsLock);
  v3 = +[NSMutableSet set];
  v4 = [(NSMutableArray *)self->_openMetricsWaitingForKTQuery count];
  if (v4 - 1 >= 0)
  {
    v5 = v4;
    do
    {
      v6 = [(NSMutableArray *)self->_openMetricsWaitingForKTQuery objectAtIndexedSubscript:--v5];
      v7 = [v6 ktQueryStart];
      [v7 timeIntervalSinceNow];
      v9 = v8;

      +[IDSPeerIDQueryHandler ktQueryMetricTimeout];
      if (fabs(v9) > v10)
      {
        v11 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v6 uniqueIdentifier];
          v13 = [v6 urisWaitingForKTResponse];
          *buf = 138412546;
          v31 = v12;
          v32 = 2112;
          v33 = v13;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Query metric for query %@ waited too long for KT response for uris: %@, posting without KT query time", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v14 = [v6 uniqueIdentifier];
          [v6 urisWaitingForKTResponse];
          v24 = v23 = v14;
          _IDSLogV();
        }

        v15 = [v6 queryMetricToLog];
        [v15 setKtQueryTimeInterval:-1.0];

        v16 = [v6 queryMetricToLog];
        [v3 addObject:v16];

        [(NSMutableArray *)self->_openMetricsWaitingForKTQuery removeObjectAtIndex:v5];
      }
    }

    while (v5 > 0);
  }

  os_unfair_lock_unlock(&self->_metricsLock);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = v3;
  v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v18)
  {
    v19 = *v26;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v25 + 1) + 8 * i);
        v22 = +[IDSCoreAnalyticsLogger defaultLogger];
        [v22 logMetric:v21];
      }

      v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v18);
  }
}

- (void)_triggerAutoBugCaptureForQueuedQueryRefresh
{
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Triggering AutoBugCapture for queued query refresh, we think a query is stuck!", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  if (+[IDSAutoBugCapture isSupported])
  {
    [NSString stringWithFormat:@"We think a queued query is blocking the queue!"];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10064C078;
    v5 = v4[3] = &unk_100BD9500;
    v3 = v5;
    [IDSAutoBugCapture triggerCaptureWithEvent:212 context:v3 completion:v4];
  }
}

- (IDSPeerIDQueryHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_completeWithEventTrace:(id)a3
{
  v4 = sub_1009364D8();
  __chkstk_darwin(v4 - 8);
  v5 = a3;
  sub_100936238();
  sub_1009364C8();
  v6 = objc_allocWithZone(sub_100936288());
  v7 = sub_100936278();
  sub_1009361D8();
}

@end