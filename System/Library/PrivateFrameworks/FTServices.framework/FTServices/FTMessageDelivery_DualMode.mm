@interface FTMessageDelivery_DualMode
- (BOOL)_isInBackoffMode;
- (BOOL)_shouldUseDualDeliveryForMessage:(id)a3;
- (FTMessageDelivery_DualMode)initWithPreferedType:(int64_t)a3;
- (void)_deliverOnHTTP:(id)a3;
- (void)_enterBackOffMode;
- (void)_handleWebTunnelResponse:(id)a3 error:(id)a4 resultCode:(int64_t)a5 resultDictionary:(id)a6 originalMessage:(id)a7;
- (void)addRequestObserver:(id)a3;
- (void)cancelMessage:(id)a3;
- (void)dequeueMessageIfNeeded;
- (void)handleTranslationAndDeliveryOnAPS:(id)a3;
- (void)invalidate;
- (void)queue:(id)a3 hitTimeoutForMessage:(id)a4;
- (void)sendMessage:(id)a3;
- (void)setUserAgent:(id)a3;
@end

@implementation FTMessageDelivery_DualMode

- (BOOL)_shouldUseDualDeliveryForMessage:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((IMGetDomainBoolForKey() & 1) == 0)
  {
    v6 = [v4 topic];
    v7 = [MEMORY[0x1E69A53F0] sharedInstance];
    v8 = [v7 objectForKey:@"apns-webtunnel-blacklisted-topics"];

    if ([v8 containsObject:v6])
    {
      v9 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v37 = v6;
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

    v10 = [MEMORY[0x1E69A53F0] sharedInstance];
    v11 = [v10 objectForKey:@"apns-ids-query-min-version"];

    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = v11;
      v13 = [v12 intValue];
      v14 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v37) = v13;
        _os_log_impl(&dword_195925000, v14, OS_LOG_TYPE_DEFAULT, "Server Bag provided us with %d Web Tunnel Version", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v35 = v13;
        _IDSLogV();
      }

      v13 = v13;
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

      v13 = 2;
    }

    v16 = _IDSWebTunnelServiceVersionNumber();
    v17 = [v16 integerValue];

    if (v17 < v13)
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

    if ([v4 importanceLevel] == 2)
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

      v21 = [MEMORY[0x1E69A53F0] sharedInstance];
      v22 = [v21 objectForKey:@"apns-ids-query-percentage-2"];

      if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v23 = v22;
        v24 = [v23 intValue];
        v25 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v37) = v24;
          _os_log_impl(&dword_195925000, v25, OS_LOG_TYPE_DEFAULT, "Server Bag provided us with %d Web Tunnel Percentage", buf, 8u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v35 = v24;
          _IDSLogV();
        }

        if (!v24)
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

        v26 = v24;
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

      v28 = [(FTMessageDelivery_DualMode *)self _randomPercentageChanceForDualDelivery];
      v29 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v37 = v28;
        _os_log_impl(&dword_195925000, v29, OS_LOG_TYPE_DEFAULT, "Diceroll Was %ld", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      if (v28 <= v26)
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

    v5 = [MEMORY[0x1E695DF00] date];
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

    v8 = [v5 dateByAddingTimeInterval:{3600.0, v16}];
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
  v5 = [MEMORY[0x1E695DF00] date];
  v2 = [v5 dateByAddingTimeInterval:3600.0];
  v3 = MEMORY[0x1E696AD98];
  [v2 timeIntervalSinceReferenceDate];
  v4 = [v3 numberWithDouble:?];
  IMSetAppValueForKey();
}

- (FTMessageDelivery_DualMode)initWithPreferedType:(int64_t)a3
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
    v7 = [(FTMessageDelivery *)v3->_apsDelivery connection];
    v8 = [v6 initWithAPSConnection:v7];
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

- (void)setUserAgent:(id)a3
{
  objc_storeStrong(&self->_userAgentString, a3);
  v5 = a3;
  [(FTMessageDelivery *)self->_httpDelivery setUserAgent:v5];
  [(FTMessageDelivery *)self->_apsDelivery setUserAgent:v5];
}

- (void)addRequestObserver:(id)a3
{
  httpDelivery = self->_httpDelivery;
  v5 = a3;
  [(FTMessageDelivery *)httpDelivery addRequestObserver:v5];
  [(FTMessageDelivery *)self->_apsDelivery addRequestObserver:v5];
}

- (void)sendMessage:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&dword_195925000, v5, OS_LOG_TYPE_DEFAULT, "Incoming request to send a dualMode message %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v7 = v4;
    _IDSLogV();
  }

  [(FTMessageQueue *)self->_dualModeQueue addMessage:v4, v7];
  [(FTMessageDelivery_DualMode *)self dequeueMessageIfNeeded];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)cancelMessage:(id)a3
{
  apsDelivery = self->_apsDelivery;
  v5 = a3;
  [(FTMessageDelivery *)apsDelivery cancelMessage:v5];
  [(FTMessageDelivery *)self->_httpDelivery cancelMessage:v5];
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
    v4 = [(FTMessageQueue *)self->_dualModeQueue dequeueTopMessage];
    if ([v4 dualModeConfig])
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

      if ([(FTMessageDelivery_DualMode *)self _shouldUseDualDeliveryForMessage:v4])
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

        [v4 setHasAttemptedAPSDelivery:1];
        [(FTMessageDelivery_DualMode *)self handleTranslationAndDeliveryOnAPS:v4];
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

        [(FTMessageDelivery_DualMode *)self _deliverOnHTTP:v4, v9];
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

- (void)handleTranslationAndDeliveryOnAPS:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [[IDSWebTunnelRequestMessage alloc] initWithMessage:v4];
  v6 = [MEMORY[0x1E69A53F0] sharedInstance];
  v7 = [v6 objectForKey:@"apns-ids-query-wait-time"];

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
  -[IDSWebTunnelRequestMessage setDisableIDSTranslation:](v5, "setDisableIDSTranslation:", [v4 wantsIDSServer] ^ 1);
  v13 = [v4 messageBodyDataOverride];

  if (v13)
  {
    v14 = [v4 messageBodyDataOverride];
    [(IDSWebTunnelRequestMessage *)v5 setMessageRequestBodyData:v14];
    v15 = 0;
  }

  else
  {
    v14 = [v4 messageBodyUsingCache];
    v47 = 0;
    v16 = [MEMORY[0x1E696AE40] dataWithPropertyList:v14 format:100 options:0 error:&v47];
    v17 = v47;
    v15 = [v16 _FTCopyGzippedData];
    [(IDSWebTunnelRequestMessage *)v5 setMessageRequestBodyData:v15];
  }

  v18 = [MEMORY[0x1E69A53F0] sharedInstance];
  v19 = [v4 bagKey];
  v20 = [v18 urlWithKey:v19];

  v21 = [v4 URLOverride];

  if (v21)
  {
    v22 = [v4 URLOverride];

    v20 = v22;
  }

  v23 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v24 = [v4 additionalQueryStringParameters];
  v25 = [v24 count] == 0;

  if (!v25)
  {
    v26 = [v4 additionalQueryStringParameters];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = sub_1959332A8;
    v45[3] = &unk_1E7435060;
    v27 = v23;
    v46 = v27;
    [v26 enumerateKeysAndObjectsUsingBlock:v45];

    if ([v27 length])
    {
      v28 = [v20 absoluteString];
      v29 = [v28 stringByAppendingFormat:@"?%@", v27];

      v30 = [MEMORY[0x1E695DFF8] URLWithString:v29];

      v20 = v30;
    }
  }

  v31 = [v20 absoluteString];
  [(IDSWebTunnelRequestMessage *)v5 setMessageURL:v31];

  v32 = [v4 underlyingService];
  [(IDSBaseMessage *)v5 setTopic:v32];

  v33 = [(IDSBaseMessage *)v5 overallEventTracingOperation];
  [v4 addSubEventTracingOperation:v33];

  if ([(NSString *)self->_userAgentString length])
  {
    [(IDSWebTunnelRequestMessage *)v5 setUserAgentOverride:self->_userAgentString];
  }

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = sub_195933358;
  v41[3] = &unk_1E74350D8;
  v34 = v4;
  v42 = v34;
  v35 = v5;
  v43 = v35;
  v44 = self;
  v36 = MEMORY[0x19A8B8CC0](v41);
  if ([v34 wantsIDSSignatures])
  {
    apsDelivery = self->_apsDelivery;
    if ([v34 wantsBodySignature])
    {
      v38 = v15;
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

- (void)_handleWebTunnelResponse:(id)a3 error:(id)a4 resultCode:(int64_t)a5 resultDictionary:(id)a6 originalMessage:(id)a7
{
  v32 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v31 = a5;
    _os_log_impl(&dword_195925000, v16, OS_LOG_TYPE_DEFAULT, "Web Tunnel Response got %ld", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v29 = a5;
    _IDSLogV();
  }

  v17 = v12;
  [v17 stopCurrentEventTracingOperationWithError:v13];
  if (a5 > 5202)
  {
    if ((a5 - 5203) < 4)
    {
      [(FTMessageDelivery_DualMode *)self _deliverOnHTTP:v15];
      goto LABEL_30;
    }

    if (a5 != 5207)
    {
      if (a5 == 20001)
      {
        [v15 setHasAttemptedAPSDelivery:0];
      }

      goto LABEL_21;
    }

    if ([v15 dualModeConfig] == 2)
    {
      v27 = [v15 completionBlock];
      (v27)[2](v27, v15, 0, 5207, 0);

      goto LABEL_30;
    }

LABEL_29:
    [(FTMessageDelivery_DualMode *)self _enterBackOffMode];
    [(FTMessageDelivery_DualMode *)self _deliverOnHTTP:v15];
    goto LABEL_30;
  }

  if ((a5 - 5200) < 3)
  {
    goto LABEL_29;
  }

  if (a5)
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

    [(FTMessageDelivery_DualMode *)self _deliverOnHTTP:v15, v29];
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

  [v15 handleResponseDictionary:{v14, v29}];
  v19 = [v17 responseBodyData];
  [v15 handleResponseBody:v19];

  v20 = [v17 responseHeaders];
  [v15 handleResponseHeaders:v20];

  v21 = [v17 responseCode];
  [v15 handleResponseStatus:{objc_msgSend(v21, "unsignedIntegerValue")}];

  v22 = [v15 completionBlock];
  [v15 setDeliveryMechanism:1];
  [v15 setSentByteCount:{objc_msgSend(v17, "sentByteCount")}];
  [v15 setReceivedByteCount:{objc_msgSend(v17, "receivedByteCount")}];
  v23 = [v17 requestStart];
  [v15 setRequestStart:v23];

  v24 = [v17 requestEnd];
  [v15 setRequestEnd:v24];

  v25 = [v17 responseReceived];
  [v15 setResponseReceived:v25];

  [v15 stopEventTracingWithError:0];
  (v22)[2](v22, v15, v13, 0, v14);

LABEL_30:
  v28 = *MEMORY[0x1E69E9840];
}

- (void)_deliverOnHTTP:(id)a3
{
  v5 = a3;
  if ([v5 dualModeConfig] == 2)
  {
    v4 = [v5 completionBlock];
    (v4)[2](v4, v5, 0, 5208, 0);
  }

  else
  {
    [(FTMessageDelivery *)self->_httpDelivery sendMessage:v5];
  }
}

- (void)queue:(id)a3 hitTimeoutForMessage:(id)a4
{
  v5 = a4;
  if ([v5 hasAttemptedAPSDelivery])
  {
    [(FTMessageDelivery_DualMode *)self _deliverOnHTTP:v5];
  }
}

- (void)invalidate
{
  [(FTMessageDelivery *)self->_httpDelivery invalidate];
  apsDelivery = self->_apsDelivery;

  [(FTMessageDelivery *)apsDelivery invalidate];
}

@end