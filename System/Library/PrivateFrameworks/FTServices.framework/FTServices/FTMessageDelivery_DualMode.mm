@interface FTMessageDelivery_DualMode
- (BOOL)_isInBackoffMode;
- (BOOL)_shouldUseDualDeliveryForMessage:(id)message;
- (FTMessageDelivery_DualMode)initWithPreferedType:(int64_t)type;
- (void)_deliverOnHTTP:(id)p;
- (void)_enterBackOffMode;
- (void)_handleWebTunnelResponse:(id)response error:(id)error resultCode:(int64_t)code resultDictionary:(id)dictionary originalMessage:(id)message;
- (void)addRequestObserver:(id)observer;
- (void)cancelMessage:(id)message;
- (void)dequeueMessageIfNeeded;
- (void)handleTranslationAndDeliveryOnAPS:(id)s;
- (void)invalidate;
- (void)queue:(id)queue hitTimeoutForMessage:(id)message;
- (void)sendMessage:(id)message;
- (void)setUserAgent:(id)agent;
@end

@implementation FTMessageDelivery_DualMode

- (BOOL)_shouldUseDualDeliveryForMessage:(id)message
{
  v40 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  if ((IMGetDomainBoolForKey() & 1) == 0)
  {
    topic = [messageCopy topic];
    mEMORY[0x1E69A53F0] = [MEMORY[0x1E69A53F0] sharedInstance];
    v8 = [mEMORY[0x1E69A53F0] objectForKey:@"apns-webtunnel-blacklisted-topics"];

    if ([v8 containsObject:topic])
    {
      v9 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v37 = topic;
        v38 = 2112;
        v39 = v8;
        _os_log_impl(&dword_195925000, v9, OS_LOG_TYPE_DEFAULT, "Message topic (%@) is in the list of blocklisted topics (%@)", buf, 0x16u);
      }

      if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
      {
        goto LABEL_78;
      }

      goto LABEL_77;
    }

    mEMORY[0x1E69A53F0]2 = [MEMORY[0x1E69A53F0] sharedInstance];
    v11 = [mEMORY[0x1E69A53F0]2 objectForKey:@"apns-ids-query-min-version"];

    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = v11;
      intValue = [v12 intValue];
      v14 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v37) = intValue;
        _os_log_impl(&dword_195925000, v14, OS_LOG_TYPE_DEFAULT, "Server Bag provided us with %d Web Tunnel Version", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v35 = intValue;
        _IDSLogV();
      }

      intValue = intValue;
    }

    else
    {
      v15 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v37 = 0x4000000000000000;
        _os_log_impl(&dword_195925000, v15, OS_LOG_TYPE_DEFAULT, "Server Bag has no value for Min Version, using the default: %f", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v35 = 0x4000000000000000;
        _IDSLogV();
      }

      intValue = 2;
    }

    v16 = _IDSWebTunnelServiceVersionNumber();
    integerValue = [v16 integerValue];

    if (integerValue < intValue)
    {
      v18 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, v18, OS_LOG_TYPE_DEFAULT, "We do not meet the version requirements for web tunnel ID queries", buf, 2u);
      }

      if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
      {
        goto LABEL_78;
      }

      goto LABEL_77;
    }

    if ([messageCopy importanceLevel] == 2)
    {
      if ([(FTMessageDelivery_DualMode *)self _isInBackoffMode])
      {
        v19 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_195925000, v19, OS_LOG_TYPE_DEFAULT, "We are in backoff mode ", buf, 2u);
        }

        if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
        {
          goto LABEL_78;
        }

        goto LABEL_77;
      }

      mEMORY[0x1E69A53F0]3 = [MEMORY[0x1E69A53F0] sharedInstance];
      v22 = [mEMORY[0x1E69A53F0]3 objectForKey:@"apns-ids-query-percentage-2"];

      if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v23 = v22;
        intValue2 = [v23 intValue];
        v25 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v37) = intValue2;
          _os_log_impl(&dword_195925000, v25, OS_LOG_TYPE_DEFAULT, "Server Bag provided us with %d Web Tunnel Percentage", buf, 8u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v35 = intValue2;
          _IDSLogV();
        }

        if (!intValue2)
        {
          v32 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_195925000, v32, OS_LOG_TYPE_DEFAULT, "Server gave us 0 quota to use this feature", buf, 2u);
          }

          if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
          {
            goto LABEL_78;
          }

          goto LABEL_77;
        }

        v26 = intValue2;
      }

      else
      {
        v27 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v37 = 0x4059000000000000;
          _os_log_impl(&dword_195925000, v27, OS_LOG_TYPE_DEFAULT, "Server Bag has no value for percentage, using the default: %f percentage", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v35 = 0x4059000000000000;
          _IDSLogV();
        }

        v26 = 100;
      }

      _randomPercentageChanceForDualDelivery = [(FTMessageDelivery_DualMode *)self _randomPercentageChanceForDualDelivery];
      v29 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v37 = _randomPercentageChanceForDualDelivery;
        _os_log_impl(&dword_195925000, v29, OS_LOG_TYPE_DEFAULT, "Diceroll Was %ld", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      if (_randomPercentageChanceForDualDelivery <= v26)
      {
        v31 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_195925000, v31, OS_LOG_TYPE_DEFAULT, "Diceroll Sucesss, dual query will be performed", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        v5 = 1;
        goto LABEL_79;
      }

      v30 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, v30, OS_LOG_TYPE_DEFAULT, "Diceroll failed", buf, 2u);
      }

      if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
      {
LABEL_78:
        v5 = 0;
LABEL_79:

        goto LABEL_80;
      }
    }

    else
    {
      v20 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, v20, OS_LOG_TYPE_DEFAULT, "This query is not important enough to perform a web tunnel ID query", buf, 2u);
      }

      if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
      {
        goto LABEL_78;
      }
    }

LABEL_77:
    _IDSLogV();
    goto LABEL_78;
  }

  v5 = 1;
LABEL_80:

  v33 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)_isInBackoffMode
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = IMGetAppIntForKey();
  if (v2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v3 = v2;
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, v4, OS_LOG_TYPE_DEFAULT, "We have a cached vale for server backoff mode", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    date = [MEMORY[0x1E695DF00] date];
    v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v3];
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_195925000, v7, OS_LOG_TYPE_DEFAULT, "Back off End Date is %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v16 = v6;
      _IDSLogV();
    }

    v8 = [date dateByAddingTimeInterval:{3600.0, v16}];
    v9 = [v6 earlierDate:v8];

    [v9 timeIntervalSinceNow];
    v11 = v10 >= 0.0;
    if (v10 < 0.0)
    {
      v13 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, v13, OS_LOG_TYPE_DEFAULT, "Back off Interval is in the past, we are good to go", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      IMRemoveAppValueForKey();
    }

    else
    {
      v12 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, v12, OS_LOG_TYPE_DEFAULT, "Back off Interval is in the future, we are in backoff", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)_enterBackOffMode
{
  date = [MEMORY[0x1E695DF00] date];
  v2 = [date dateByAddingTimeInterval:3600.0];
  v3 = MEMORY[0x1E696AD98];
  [v2 timeIntervalSinceReferenceDate];
  v4 = [v3 numberWithDouble:?];
  IMSetAppValueForKey();
}

- (FTMessageDelivery_DualMode)initWithPreferedType:(int64_t)type
{
  v13.receiver = self;
  v13.super_class = FTMessageDelivery_DualMode;
  v3 = [(FTMessageDelivery_DualMode *)&v13 init];
  if (v3)
  {
    v4 = objc_alloc_init(+[FTMessageDelivery APNSMessageDeliveryClass]);
    apsDelivery = v3->_apsDelivery;
    v3->_apsDelivery = v4;

    v6 = objc_alloc(+[FTMessageDelivery HTTPMessageDeliveryClass]);
    connection = [(FTMessageDelivery *)v3->_apsDelivery connection];
    v8 = [v6 initWithAPSConnection:connection];
    httpDelivery = v3->_httpDelivery;
    v3->_httpDelivery = v8;

    [(FTMessageDelivery *)v3->_apsDelivery setMaxConcurrentMessages:8];
    v10 = objc_alloc_init(FTMessageQueue);
    dualModeQueue = v3->_dualModeQueue;
    v3->_dualModeQueue = v10;

    [(FTMessageQueue *)v3->_dualModeQueue setDelegate:v3];
    [(FTMessageDelivery_DualMode *)v3 setUserAgent:@"com.apple.identityservicesd"];
  }

  return v3;
}

- (void)setUserAgent:(id)agent
{
  objc_storeStrong(&self->_userAgentString, agent);
  agentCopy = agent;
  [(FTMessageDelivery *)self->_httpDelivery setUserAgent:agentCopy];
  [(FTMessageDelivery *)self->_apsDelivery setUserAgent:agentCopy];
}

- (void)addRequestObserver:(id)observer
{
  httpDelivery = self->_httpDelivery;
  observerCopy = observer;
  [(FTMessageDelivery *)httpDelivery addRequestObserver:observerCopy];
  [(FTMessageDelivery *)self->_apsDelivery addRequestObserver:observerCopy];
}

- (void)sendMessage:(id)message
{
  v10 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = messageCopy;
    _os_log_impl(&dword_195925000, v5, OS_LOG_TYPE_DEFAULT, "Incoming request to send a dualMode message %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v7 = messageCopy;
    _IDSLogV();
  }

  [(FTMessageQueue *)self->_dualModeQueue addMessage:messageCopy, v7];
  [(FTMessageDelivery_DualMode *)self dequeueMessageIfNeeded];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)cancelMessage:(id)message
{
  apsDelivery = self->_apsDelivery;
  messageCopy = message;
  [(FTMessageDelivery *)apsDelivery cancelMessage:messageCopy];
  [(FTMessageDelivery *)self->_httpDelivery cancelMessage:messageCopy];
}

- (void)dequeueMessageIfNeeded
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195925000, v3, OS_LOG_TYPE_DEFAULT, "Dequeing message if needed", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  if ([(FTMessageQueue *)self->_dualModeQueue count]>= 1)
  {
    dequeueTopMessage = [(FTMessageQueue *)self->_dualModeQueue dequeueTopMessage];
    if ([dequeueTopMessage dualModeConfig])
    {
      v5 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_195925000, v5, OS_LOG_TYPE_DEFAULT, "Message Allow Dual Delivery", v12, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      if ([(FTMessageDelivery_DualMode *)self _shouldUseDualDeliveryForMessage:dequeueTopMessage])
      {
        v6 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v11 = 0;
          _os_log_impl(&dword_195925000, v6, OS_LOG_TYPE_DEFAULT, "Server says yes for APS delivery, lets go ahead and use that", v11, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }

        [dequeueTopMessage setHasAttemptedAPSDelivery:1];
        [(FTMessageDelivery_DualMode *)self handleTranslationAndDeliveryOnAPS:dequeueTopMessage];
LABEL_29:

        return;
      }

      v7 = OSLogHandleForIDSCategory();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
LABEL_25:

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        [(FTMessageDelivery_DualMode *)self _deliverOnHTTP:dequeueTopMessage, v9];
        goto LABEL_29;
      }

      *v10 = 0;
      v8 = v10;
    }

    else
    {
      v7 = OSLogHandleForIDSCategory();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      LOWORD(v9) = 0;
      v8 = &v9;
    }

    _os_log_impl(&dword_195925000, v7, OS_LOG_TYPE_DEFAULT, "Not allowed to use APS delivery, using HTTP", v8, 2u);
    goto LABEL_25;
  }
}

- (void)handleTranslationAndDeliveryOnAPS:(id)s
{
  v50 = *MEMORY[0x1E69E9840];
  sCopy = s;
  v5 = [[IDSWebTunnelRequestMessage alloc] initWithMessage:sCopy];
  mEMORY[0x1E69A53F0] = [MEMORY[0x1E69A53F0] sharedInstance];
  v7 = [mEMORY[0x1E69A53F0] objectForKey:@"apns-ids-query-wait-time"];

  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = v7;
    [v8 doubleValue];
    v10 = v9;
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v49 = *&v10;
      _os_log_impl(&dword_195925000, v11, OS_LOG_TYPE_DEFAULT, "Server Bag provided us with a wait time interval of %f ", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v40 = *&v10;
      _IDSLogV();
    }
  }

  else
  {
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v49 = 0x4024000000000000;
      _os_log_impl(&dword_195925000, v12, OS_LOG_TYPE_DEFAULT, "Server Bag has no value for wait time interval , using the default: %f interval", buf, 0xCu);
    }

    v10 = 10.0;
    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v40 = 0x4024000000000000;
      _IDSLogV();
    }
  }

  [(IDSBaseMessage *)v5 setTimeout:v10];
  -[IDSWebTunnelRequestMessage setDisableIDSTranslation:](v5, "setDisableIDSTranslation:", [sCopy wantsIDSServer] ^ 1);
  messageBodyDataOverride = [sCopy messageBodyDataOverride];

  if (messageBodyDataOverride)
  {
    messageBodyDataOverride2 = [sCopy messageBodyDataOverride];
    [(IDSWebTunnelRequestMessage *)v5 setMessageRequestBodyData:messageBodyDataOverride2];
    _FTCopyGzippedData = 0;
  }

  else
  {
    messageBodyDataOverride2 = [sCopy messageBodyUsingCache];
    v47 = 0;
    v16 = [MEMORY[0x1E696AE40] dataWithPropertyList:messageBodyDataOverride2 format:100 options:0 error:&v47];
    v17 = v47;
    _FTCopyGzippedData = [v16 _FTCopyGzippedData];
    [(IDSWebTunnelRequestMessage *)v5 setMessageRequestBodyData:_FTCopyGzippedData];
  }

  mEMORY[0x1E69A53F0]2 = [MEMORY[0x1E69A53F0] sharedInstance];
  bagKey = [sCopy bagKey];
  v20 = [mEMORY[0x1E69A53F0]2 urlWithKey:bagKey];

  uRLOverride = [sCopy URLOverride];

  if (uRLOverride)
  {
    uRLOverride2 = [sCopy URLOverride];

    v20 = uRLOverride2;
  }

  v23 = objc_alloc_init(MEMORY[0x1E696AD60]);
  additionalQueryStringParameters = [sCopy additionalQueryStringParameters];
  v25 = [additionalQueryStringParameters count] == 0;

  if (!v25)
  {
    additionalQueryStringParameters2 = [sCopy additionalQueryStringParameters];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = sub_1959332A8;
    v45[3] = &unk_1E7435060;
    v27 = v23;
    v46 = v27;
    [additionalQueryStringParameters2 enumerateKeysAndObjectsUsingBlock:v45];

    if ([v27 length])
    {
      absoluteString = [v20 absoluteString];
      v29 = [absoluteString stringByAppendingFormat:@"?%@", v27];

      v30 = [MEMORY[0x1E695DFF8] URLWithString:v29];

      v20 = v30;
    }
  }

  absoluteString2 = [v20 absoluteString];
  [(IDSWebTunnelRequestMessage *)v5 setMessageURL:absoluteString2];

  underlyingService = [sCopy underlyingService];
  [(IDSBaseMessage *)v5 setTopic:underlyingService];

  overallEventTracingOperation = [(IDSBaseMessage *)v5 overallEventTracingOperation];
  [sCopy addSubEventTracingOperation:overallEventTracingOperation];

  if ([(NSString *)self->_userAgentString length])
  {
    [(IDSWebTunnelRequestMessage *)v5 setUserAgentOverride:self->_userAgentString];
  }

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = sub_195933358;
  v41[3] = &unk_1E74350D8;
  v34 = sCopy;
  v42 = v34;
  v35 = v5;
  v43 = v35;
  selfCopy = self;
  v36 = MEMORY[0x19A8B8CC0](v41);
  if ([v34 wantsIDSSignatures])
  {
    apsDelivery = self->_apsDelivery;
    if ([v34 wantsBodySignature])
    {
      v38 = _FTCopyGzippedData;
    }

    else
    {
      v38 = 0;
    }

    [(FTMessageDelivery *)apsDelivery _signMessage:v34 useDataSignatures:0 authKitHeadersPresent:0 body:v38 queryString:v23 completion:v36];
  }

  else
  {
    v36[2](v36, 0);
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (void)_handleWebTunnelResponse:(id)response error:(id)error resultCode:(int64_t)code resultDictionary:(id)dictionary originalMessage:(id)message
{
  v32 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  errorCopy = error;
  dictionaryCopy = dictionary;
  messageCopy = message;
  v16 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    codeCopy = code;
    _os_log_impl(&dword_195925000, v16, OS_LOG_TYPE_DEFAULT, "Web Tunnel Response got %ld", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    codeCopy2 = code;
    _IDSLogV();
  }

  v17 = responseCopy;
  [v17 stopCurrentEventTracingOperationWithError:errorCopy];
  if (code > 5202)
  {
    if ((code - 5203) < 4)
    {
      [(FTMessageDelivery_DualMode *)self _deliverOnHTTP:messageCopy];
      goto LABEL_30;
    }

    if (code != 5207)
    {
      if (code == 20001)
      {
        [messageCopy setHasAttemptedAPSDelivery:0];
      }

      goto LABEL_21;
    }

    if ([messageCopy dualModeConfig] == 2)
    {
      completionBlock = [messageCopy completionBlock];
      (completionBlock)[2](completionBlock, messageCopy, 0, 5207, 0);

      goto LABEL_30;
    }

LABEL_29:
    [(FTMessageDelivery_DualMode *)self _enterBackOffMode];
    [(FTMessageDelivery_DualMode *)self _deliverOnHTTP:messageCopy];
    goto LABEL_30;
  }

  if ((code - 5200) < 3)
  {
    goto LABEL_29;
  }

  if (code)
  {
LABEL_21:
    v26 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, v26, OS_LOG_TYPE_DEFAULT, "Unknown Error, Falling back to HTTP", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    [(FTMessageDelivery_DualMode *)self _deliverOnHTTP:messageCopy, codeCopy2];
    goto LABEL_30;
  }

  v18 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195925000, v18, OS_LOG_TYPE_DEFAULT, "Web Tunnel Query was successful; passing along the completion information", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  [messageCopy handleResponseDictionary:{dictionaryCopy, codeCopy2}];
  responseBodyData = [v17 responseBodyData];
  [messageCopy handleResponseBody:responseBodyData];

  responseHeaders = [v17 responseHeaders];
  [messageCopy handleResponseHeaders:responseHeaders];

  responseCode = [v17 responseCode];
  [messageCopy handleResponseStatus:{objc_msgSend(responseCode, "unsignedIntegerValue")}];

  completionBlock2 = [messageCopy completionBlock];
  [messageCopy setDeliveryMechanism:1];
  [messageCopy setSentByteCount:{objc_msgSend(v17, "sentByteCount")}];
  [messageCopy setReceivedByteCount:{objc_msgSend(v17, "receivedByteCount")}];
  requestStart = [v17 requestStart];
  [messageCopy setRequestStart:requestStart];

  requestEnd = [v17 requestEnd];
  [messageCopy setRequestEnd:requestEnd];

  responseReceived = [v17 responseReceived];
  [messageCopy setResponseReceived:responseReceived];

  [messageCopy stopEventTracingWithError:0];
  (completionBlock2)[2](completionBlock2, messageCopy, errorCopy, 0, dictionaryCopy);

LABEL_30:
  v28 = *MEMORY[0x1E69E9840];
}

- (void)_deliverOnHTTP:(id)p
{
  pCopy = p;
  if ([pCopy dualModeConfig] == 2)
  {
    completionBlock = [pCopy completionBlock];
    (completionBlock)[2](completionBlock, pCopy, 0, 5208, 0);
  }

  else
  {
    [(FTMessageDelivery *)self->_httpDelivery sendMessage:pCopy];
  }
}

- (void)queue:(id)queue hitTimeoutForMessage:(id)message
{
  messageCopy = message;
  if ([messageCopy hasAttemptedAPSDelivery])
  {
    [(FTMessageDelivery_DualMode *)self _deliverOnHTTP:messageCopy];
  }
}

- (void)invalidate
{
  [(FTMessageDelivery *)self->_httpDelivery invalidate];
  apsDelivery = self->_apsDelivery;

  [(FTMessageDelivery *)apsDelivery invalidate];
}

@end