@interface FTMessageDelivery_HTTP
- (BOOL)_sendMessageAsynchronously:(id)a3 error:(id *)a4;
- (BOOL)_tryRetryMessageWithTimeInterval:(double)a3;
- (BOOL)authKitBAADisabled;
- (BOOL)sendMessage:(id)a3;
- (BOOL)sendMessageAtTopOfTheQueue:(id)a3;
- (BOOL)shouldFailFastForMessage:(id)a3;
- (FTMessageDelivery_HTTP)initWithAPSConnection:(id)a3;
- (FTMessageDelivery_HTTP)initWithIDSServerBag:(id)a3 apsConnection:(id)a4;
- (FTMessageDelivery_HTTP)initWithIDSServerBag:(id)a3 iMessageServerBag:(id)a4 remoteConnectionFactory:(id)a5 mobileNetworkManager:(id)a6 apsConnection:(id)a7 retryBackoffProvider:(id)a8 timeoutBackoffProvider:(id)a9;
- (id)_processResultData:(id)a3 forMessage:(id)a4 error:(id *)a5;
- (void)_cleanupURLConnection;
- (void)_clearRetryTimer;
- (void)_dequeueIfNeeded;
- (void)_informDelegatesOfMessage:(id)a3 result:(id)a4 resultCode:(int64_t)a5 error:(id)a6;
- (void)_notifyDelegateAboutError:(id)a3 forMessage:(id)a4;
- (void)_serverBagLoaded:(id)a3;
- (void)_updateWiFiAssertions;
- (void)_urlRequestWithURL:(id)a3 andData:(id)a4 message:(id)a5 completionBlock:(id)a6;
- (void)cancelMessage:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)networkStateChanged;
- (void)queue:(id)a3 hitTimeoutForMessage:(id)a4;
@end

@implementation FTMessageDelivery_HTTP

- (void)_dequeueIfNeeded
{
  v54 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  [(FTMessageDelivery_HTTP *)v2 _updateWiFiAssertions];
  v3 = [(FTMessageDelivery *)v2 _queue];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(FTMessageDelivery *)v2 _queue];
    v6 = [v5 topMessage];

    [v6 startSendEventTracing];
    v7 = v2->_idsServerBag;
    if (![v6 isIDSMessage]|| ([(IDSServerBag *)v7 isLoaded]& 1) != 0)
    {
      [(FTMessageDelivery_HTTP *)v2 _cleanupURLConnection];
      v8 = [(FTMessageDelivery *)v2 _queue];
      v9 = [v8 dequeueTopMessage];

      if (([v9 isValidMessage]& 1) == 0)
      {
        v12 = [MEMORY[0x1E696AEC0] stringGUID];
        v19 = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v51 = v12;
          _os_log_impl(&dword_195925000, v19, OS_LOG_TYPE_DEFAULT, "%@ Message not being delivered, invalid message", buf, 0xCu);
        }

        v20 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v51 = v12;
          _os_log_impl(&dword_195925000, v20, OS_LOG_TYPE_DEFAULT, "%@ Cancelling message delivery! invalid message!", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (MarcoShouldLog())
          {
            v39 = v12;
            MarcoLog();
          }

          if (IMShouldLog())
          {
            v39 = v12;
            IMLogString();
          }
        }

        v18 = [FTMessageDelivery _errorForTDMessageDeliveryStatus:5003 userInfo:0, v39];
        [(FTMessageDelivery_HTTP *)v2 _notifyDelegateAboutError:v18 forMessage:v9];
        v11 = 0;
        goto LABEL_60;
      }

      v49 = 0;
      v10 = [v9 hasRequiredKeys:&v49];
      v11 = v49;
      if ((v10 & 1) == 0)
      {
        v12 = [MEMORY[0x1E696AEC0] stringGUID];
        v24 = [MEMORY[0x1E69A6138] warning];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_1959639CC();
        }

        v25 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v51 = v12;
          v52 = 2112;
          v53 = v11;
          _os_log_impl(&dword_195925000, v25, OS_LOG_TYPE_DEFAULT, "%@ Cancelling message delivery! Missing keys: %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (MarcoShouldLog())
          {
            v39 = v12;
            v40 = v11;
            MarcoLog();
          }

          if (IMShouldLog())
          {
            v39 = v12;
            v40 = v11;
            IMLogString();
          }
        }

        if ([v9 payloadCanBeLogged:v39])
        {
          v26 = [v9 messageBodyUsingCache];
          v27 = [v26 description];
          v28 = IDSLoggableDescriptionForObjectOnService();

          v47 = v12;
          v48 = v28;
          cut_dispatch_log_queue();
        }

        v18 = [FTMessageDelivery _errorForTDMessageDeliveryStatus:5008 userInfo:0];
        [(FTMessageDelivery_HTTP *)v2 _notifyDelegateAboutError:v18 forMessage:v9];
        goto LABEL_60;
      }

      if ([(FTMessageDelivery *)v2 retryInAirplaneMode]|| ![(FTMessageDeliveryHTTPMobileNetworkManager *)v2->_mobileNetworkManager isAirplaneModeEnabled]|| ([(FTMessageDeliveryHTTPMobileNetworkManager *)v2->_mobileNetworkManager isWiFiUsable]& 1) != 0)
      {
        if (![(FTMessageDelivery_HTTP *)v2 shouldFailFastForMessage:v9])
        {
          if (![(FTMessageDelivery *)v2 isTrafficDisabledOnVMForMessage:v9])
          {
            [(FTMessageDelivery_HTTP *)v2 _sendMessageAsynchronously:v9 error:0];
            goto LABEL_61;
          }

          v12 = [MEMORY[0x1E696AEC0] stringGUID];
          v30 = [MEMORY[0x1E69A6138] warning];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            sub_195963AB8();
          }

          if ([v9 payloadCanBeLogged])
          {
            v31 = [v9 messageBodyUsingCache];
            v32 = [v31 description];
            v33 = IDSLoggableDescriptionForObjectOnService();

            v41 = v12;
            v42 = v33;
            cut_dispatch_log_queue();
          }

          v18 = [FTMessageDelivery _errorForTDMessageDeliveryStatus:20000 userInfo:0];
          [(FTMessageDelivery_HTTP *)v2 _notifyDelegateAboutError:v18 forMessage:v9];
LABEL_60:

LABEL_61:
          [(FTMessageDelivery_HTTP *)v2 _updateWiFiAssertions];
LABEL_62:

LABEL_63:
LABEL_64:

          goto LABEL_65;
        }

        v12 = [MEMORY[0x1E696AEC0] stringGUID];
        v13 = [MEMORY[0x1E69A6138] warning];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_195963B28();
        }

        v14 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v51 = v12;
          _os_log_impl(&dword_195925000, v14, OS_LOG_TYPE_DEFAULT, "%@ Message not being delivered, network is unavailable, can attempt stewie", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (MarcoShouldLog())
          {
            v39 = v12;
            MarcoLog();
          }

          if (IMShouldLog())
          {
            v39 = v12;
            IMLogString();
          }
        }

        if ([v9 payloadCanBeLogged])
        {
          v15 = [v9 messageBodyUsingCache];
          v16 = [v15 description];
          v17 = IDSLoggableDescriptionForObjectOnService();

          v43 = v12;
          v44 = v17;
          cut_dispatch_log_queue();
        }
      }

      else
      {
        v12 = [MEMORY[0x1E696AEC0] stringGUID];
        v34 = [MEMORY[0x1E69A6138] warning];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_195963A48();
        }

        v35 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v51 = v12;
          _os_log_impl(&dword_195925000, v35, OS_LOG_TYPE_DEFAULT, "%@ Message not being delivered, airplane mode is enabled", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (MarcoShouldLog())
          {
            v39 = v12;
            MarcoLog();
          }

          if (IMShouldLog())
          {
            v39 = v12;
            IMLogString();
          }
        }

        if ([v9 payloadCanBeLogged])
        {
          v36 = [v9 messageBodyUsingCache];
          v37 = [v36 description];
          v38 = IDSLoggableDescriptionForObjectOnService();

          v45 = v12;
          v46 = v38;
          cut_dispatch_log_queue();
        }
      }

      v18 = [FTMessageDelivery _errorForTDMessageDeliveryStatus:10000 userInfo:0];
      [(FTMessageDelivery_HTTP *)v2 _notifyDelegateAboutError:v18 forMessage:v9];
      goto LABEL_60;
    }

    if ([(FTMessageDelivery *)v2 logToRegistration])
    {
      v21 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, v21, OS_LOG_TYPE_DEFAULT, "Server bag is not loaded, waiting for it", buf, 2u);
      }
    }

    if ([(IDSServerBag *)v7 isServerAvailable])
    {
      if ([(FTMessageDelivery *)v2 logToRegistration])
      {
        v22 = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_195925000, v22, OS_LOG_TYPE_DEFAULT, " => Server is available", buf, 2u);
        }
      }

      if (([(IDSServerBag *)v7 isLoading]& 1) != 0)
      {
        if ([(FTMessageDelivery *)v2 logToRegistration])
        {
          v11 = [MEMORY[0x1E69A6138] registration];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v23 = " => Already loading";
LABEL_78:
            _os_log_impl(&dword_195925000, v11, OS_LOG_TYPE_DEFAULT, v23, buf, 2u);
            goto LABEL_79;
          }

          goto LABEL_79;
        }
      }

      else
      {
        [(IDSServerBag *)v7 startBagLoad];
        if ([(FTMessageDelivery *)v2 logToRegistration])
        {
          v11 = [MEMORY[0x1E69A6138] registration];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v23 = " => Starting load";
            goto LABEL_78;
          }

          goto LABEL_79;
        }
      }
    }

    else if ([(FTMessageDelivery *)v2 logToRegistration])
    {
      v11 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v23 = " => Server not available";
        goto LABEL_78;
      }

LABEL_79:
      v9 = v6;
      goto LABEL_62;
    }

    v9 = v6;
    goto LABEL_63;
  }

  if ([(FTMessageDelivery *)v2 logToRegistration])
  {
    v9 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, v9, OS_LOG_TYPE_DEFAULT, "Nothing left in queue, done", buf, 2u);
    }

    goto LABEL_64;
  }

LABEL_65:
  objc_sync_exit(v2);

  v29 = *MEMORY[0x1E69E9840];
}

- (void)_updateWiFiAssertions
{
  v3 = [(FTMessageDelivery_HTTP *)self busy];
  mobileNetworkManager = self->_mobileNetworkManager;
  if (v3)
  {

    MEMORY[0x1EEE66B58](mobileNetworkManager, sel_addWiFiAutoAssociationClientToken_);
  }

  else
  {

    MEMORY[0x1EEE66B58](mobileNetworkManager, sel_removeWiFiAutoAssociationClientToken_);
  }
}

- (void)_cleanupURLConnection
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_remoteConnection && [(FTMessageDelivery *)v2 logToRegistration])
  {
    v3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_195925000, v3, OS_LOG_TYPE_DEFAULT, "Cleaning out url connection", v5, 2u);
    }
  }

  [(FTMessageDeliveryRemoteURLConnection *)v2->_remoteConnection cancel];
  remoteConnection = v2->_remoteConnection;
  v2->_remoteConnection = 0;

  objc_sync_exit(v2);
}

- (FTMessageDelivery_HTTP)initWithAPSConnection:(id)a3
{
  v4 = MEMORY[0x1E69A53F0];
  v5 = a3;
  v6 = [v4 sharedInstanceForBagType:0];
  v7 = [(FTMessageDelivery_HTTP *)self initWithIDSServerBag:v6 apsConnection:v5];

  return v7;
}

- (FTMessageDelivery_HTTP)initWithIDSServerBag:(id)a3 apsConnection:(id)a4
{
  v6 = MEMORY[0x1E69A53F0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 sharedInstanceForBagType:1];
  v10 = objc_alloc_init(FTMessageDeliveryRemoteURLConnectionFactory);
  v11 = [MEMORY[0x1E69A6108] sharedInstance];
  v12 = [(FTMessageDelivery_HTTP *)self initWithIDSServerBag:v8 iMessageServerBag:v9 remoteConnectionFactory:v10 mobileNetworkManager:v11 apsConnection:v7 retryBackoffProvider:&unk_1F09C70E8 timeoutBackoffProvider:&unk_1F09C7108];

  return v12;
}

- (FTMessageDelivery_HTTP)initWithIDSServerBag:(id)a3 iMessageServerBag:(id)a4 remoteConnectionFactory:(id)a5 mobileNetworkManager:(id)a6 apsConnection:(id)a7 retryBackoffProvider:(id)a8 timeoutBackoffProvider:(id)a9
{
  v31 = a3;
  v30 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = a9;
  v32.receiver = self;
  v32.super_class = FTMessageDelivery_HTTP;
  v20 = [(FTMessageDelivery *)&v32 initWithAPSConnection:a7];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_idsServerBag, a3);
    objc_storeStrong(&v21->_iMessageServerBag, a4);
    objc_storeStrong(&v21->_remoteConnectionFactory, a5);
    objc_storeStrong(&v21->_mobileNetworkManager, a6);
    v22 = MEMORY[0x19A8B8CC0](v18);
    retryBackoffProvider = v21->_retryBackoffProvider;
    v21->_retryBackoffProvider = v22;

    v24 = MEMORY[0x19A8B8CC0](v19);
    timeoutBackoffProvider = v21->_timeoutBackoffProvider;
    v21->_timeoutBackoffProvider = v24;

    if (_os_feature_enabled_impl() && ([MEMORY[0x1E69A6180] shouldDisableFailFastWhenSatelliteIsAvailable] & 1) == 0)
    {
      v26 = [MEMORY[0x19A8B8550](@"IDSOffGridConnectionMonitor" @"IDS")];
      offGridConnectionMonitor = v21->_offGridConnectionMonitor;
      v21->_offGridConnectionMonitor = v26;
    }

    v28 = [MEMORY[0x1E696AD88] defaultCenter];
    [v28 addObserver:v21 selector:sel__serverBagLoaded_ name:*MEMORY[0x1E69A50A8] object:0];
  }

  return v21;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:0 object:0];

  [(FTMessageDeliveryRemoteURLConnection *)self->_remoteConnection cancel];
  v4.receiver = self;
  v4.super_class = FTMessageDelivery_HTTP;
  [(FTMessageDelivery *)&v4 dealloc];
}

- (void)_urlRequestWithURL:(id)a3 andData:(id)a4 message:(id)a5 completionBlock:(id)a6
{
  v144 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v103 = a4;
  v10 = a5;
  v101 = a6;
  v108 = v10;
  if (v9)
  {
    if ([v10 wantsGZip])
    {
      v98 = [v103 _FTCopyGzippedData];
    }

    else
    {
      v98 = v103;
    }

    v102 = [v10 additionalQueryStringParameters];
    v96 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v102;
      _os_log_impl(&dword_195925000, v12, OS_LOG_TYPE_DEFAULT, " Query parameters: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v90 = v102;
      _IDSLogV();
    }

    if ([v102 count])
    {
      v133[0] = MEMORY[0x1E69E9820];
      v133[1] = 3221225472;
      v133[2] = sub_195940F38;
      v133[3] = &unk_1E7435060;
      v13 = v96;
      v134 = v13;
      [v102 enumerateKeysAndObjectsUsingBlock:v133];
      v14 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v13;
        _os_log_impl(&dword_195925000, v14, OS_LOG_TYPE_DEFAULT, " Query string: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v91 = v13;
        _IDSLogV();
      }

      if ([v13 length])
      {
        v15 = [v9 absoluteString];
        v16 = [v15 stringByAppendingFormat:@"?%@", v13];

        v100 = [MEMORY[0x1E695DFF8] URLWithString:v16];

        v17 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v100;
          _os_log_impl(&dword_195925000, v17, OS_LOG_TYPE_DEFAULT, "Generated final URL: %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v91 = v100;
          _IDSLogV();
        }
      }

      else
      {
        v100 = v9;
      }
    }

    else
    {
      v100 = v9;
    }

    v18 = self->_timeoutBackoffProvider == 0;
    [v108 timeout];
    v20 = v19;
    if (!v18)
    {
      retries = self->super._retries;
      v22 = (*(self->_timeoutBackoffProvider + 2))();
      if (v20 >= v22)
      {
        v20 = v22;
      }
    }

    v110 = [MEMORY[0x1E695AC18] requestWithURL:v100 cachePolicy:1 timeoutInterval:v20];
    if (([v108 wantsHTTPGet] & 1) == 0)
    {
      [v110 setHTTPMethod:@"POST"];
      [v110 setHTTPBody:v98];
    }

    if (([v108 isIDSMessage] & 1) == 0)
    {
      [v110 setHTTPBody:v103];
    }

    if ([v108 httpDoNotDecodeData])
    {
      v23 = v110;
      [v110 _CFURLRequest];
      v24 = *MEMORY[0x1E695AEB8];
      v25 = *MEMORY[0x1E695E4D0];
      _CFURLRequestSetProtocolProperty();
    }

    [v110 setHTTPShouldHandleCookies:0];
    v26 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v100;
      _os_log_impl(&dword_195925000, v26, OS_LOG_TYPE_DEFAULT, "Building URL request with URL: %@", buf, 0xCu);
    }

    v27 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, v27, OS_LOG_TYPE_DEFAULT, "Headers", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        MarcoLog();
      }

      if (IMShouldLog())
      {
        IMLogString();
      }
    }

    v28 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [(FTMessageDelivery *)self userAgent];
      *buf = 138412290;
      *&buf[4] = v29;
      _os_log_impl(&dword_195925000, v28, OS_LOG_TYPE_DEFAULT, "       User Agent: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        v92 = [(FTMessageDelivery *)self userAgent];
        MarcoLog();
      }

      if (IMShouldLog())
      {
        v92 = [(FTMessageDelivery *)self userAgent];
        IMLogString();
      }
    }

    v30 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, v30, OS_LOG_TYPE_DEFAULT, "Headers", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v31 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [(FTMessageDelivery *)self userAgent];
      *buf = 138412290;
      *&buf[4] = v32;
      _os_log_impl(&dword_195925000, v31, OS_LOG_TYPE_DEFAULT, "       User Agent: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v92 = [(FTMessageDelivery *)self userAgent];
      _IDSLogV();
    }

    v104 = [(FTMessageDelivery *)self userAgent];
    if (![(__CFString *)v104 length])
    {

      v104 = @"FTMessageDelivery";
    }

    v33 = MEMORY[0x1E696AEC0];
    v34 = +[FTDeviceSupport sharedInstance];
    v35 = [v34 userAgentString];
    v105 = [v33 stringWithFormat:@"%@ %@", v104, v35];

    v36 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v105;
      _os_log_impl(&dword_195925000, v36, OS_LOG_TYPE_DEFAULT, "            Agent: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        v93 = v105;
        MarcoLog();
      }

      if (IMShouldLog())
      {
        v93 = v105;
        IMLogString();
      }
    }

    v37 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v105;
      _os_log_impl(&dword_195925000, v37, OS_LOG_TYPE_DEFAULT, "            Agent: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v93 = v105;
      _IDSLogV();
    }

    v38 = [v108 isIDSMessage];
    v39 = sub_19592BC58();
    v40 = [v39 length];

    if (v38)
    {
      if (v40)
      {
        v41 = sub_19592BC58();
        [v110 setValue:v41 forHTTPHeaderField:@"Accept-Language"];
      }

      if ([@"gzip" length])
      {
        [v110 setValue:@"gzip" forHTTPHeaderField:@"accept-encoding"];
      }

      if ([v105 length])
      {
        [v110 setValue:v105 forHTTPHeaderField:@"user-agent"];
      }

      if (([v108 wantsHTTPGet] & 1) == 0)
      {
        if ([v108 wantsGZip] && objc_msgSend(@"gzip", "length"))
        {
          [v110 setValue:@"gzip" forHTTPHeaderField:@"content-encoding"];
        }

        v42 = [v108 overrideContentType];
        v43 = v42;
        if (!v42)
        {
          v42 = @"application/x-apple-plist";
        }

        v44 = [(__CFString *)v42 length]== 0;

        if (!v44)
        {
          v45 = [v108 overrideContentType];
          v46 = v45;
          if (v45)
          {
            v47 = v45;
          }

          else
          {
            v47 = @"application/x-apple-plist";
          }

          [v110 setValue:v47 forHTTPHeaderField:@"content-type"];
        }

        v48 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v98, "length")}];

        if (v48)
        {
          v49 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v98, "length")}];
          v50 = [v49 stringValue];
          [v110 setValue:v50 forHTTPHeaderField:@"content-length"];
        }
      }
    }

    else
    {
      if (v40)
      {
        v51 = sub_19592BC58();
        [v110 setValue:v51 forHTTPHeaderField:@"Accept-Language"];
      }

      if ([v105 length])
      {
        [v110 setValue:v105 forHTTPHeaderField:@"user-agent"];
      }
    }

    v52 = [v108 additionalMessageHeaders];
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v53 = [v52 allKeys];
    v54 = [v53 countByEnumeratingWithState:&v129 objects:v139 count:16];
    if (v54)
    {
      v55 = *v130;
      do
      {
        for (i = 0; i != v54; ++i)
        {
          if (*v130 != v55)
          {
            objc_enumerationMutation(v53);
          }

          v57 = *(*(&v129 + 1) + 8 * i);
          v58 = [v52 objectForKey:{v57, v94, v95}];

          if (v58)
          {
            v59 = [v52 objectForKey:v57];
            [v110 setValue:v59 forHTTPHeaderField:v57];
          }

          v60 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            v61 = [v52 objectForKey:v57];
            *buf = 138412546;
            *&buf[4] = v57;
            *&buf[12] = 2112;
            *&buf[14] = v61;
            _os_log_impl(&dword_195925000, v60, OS_LOG_TYPE_DEFAULT, "       %@: %@", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (MarcoShouldLog())
            {
              [v52 objectForKey:v57];
              v95 = v94 = v57;
              MarcoLog();
            }

            if (IMShouldLog())
            {
              [v52 objectForKey:v57];
              v95 = v94 = v57;
              IMLogString();
            }
          }
        }

        v54 = [v53 countByEnumeratingWithState:&v129 objects:v139 count:16];
      }

      while (v54);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v136 = sub_19592BE94;
    v137 = sub_19592BFD8;
    v138 = 0;
    v62 = [v108 uniqueID];
    objc_initWeak(&location, v108);
    v123[0] = MEMORY[0x1E69E9820];
    v123[1] = 3221225472;
    v123[2] = sub_195940FE8;
    v123[3] = &unk_1E7435350;
    objc_copyWeak(v127, &location);
    v127[1] = v62;
    v123[4] = self;
    v63 = v108;
    v124 = v63;
    v64 = v110;
    v125 = v64;
    v126 = buf;
    v109 = MEMORY[0x19A8B8CC0](v123);
    v116[0] = MEMORY[0x1E69E9820];
    v116[1] = 3221225472;
    v116[2] = sub_1959414D4;
    v116[3] = &unk_1E74353C8;
    v116[4] = self;
    v122 = v62;
    v65 = v64;
    v117 = v65;
    v121 = buf;
    v66 = v101;
    v120 = v66;
    v107 = v98;
    v118 = v107;
    v67 = v96;
    v119 = v67;
    v111 = MEMORY[0x19A8B8CC0](v116);
    v115[0] = MEMORY[0x1E69E9820];
    v115[1] = 3221225472;
    v115[2] = sub_195942438;
    v115[3] = &unk_1E7435418;
    v115[4] = buf;
    v68 = MEMORY[0x19A8B8CC0](v115);
    if (![v63 isIDSMessage])
    {
      v85 = im_primary_queue();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1959424D8;
      block[3] = &unk_1E7434FF0;
      v114 = v66;
      v113 = v65;
      dispatch_async(v85, block);

LABEL_152:
      objc_destroyWeak(v127);
      objc_destroyWeak(&location);
      _Block_object_dispose(buf, 8);

      goto LABEL_153;
    }

    v69 = v63;
    [v69 anisetteHeadersTimeout];
    v71 = v70;
    v72 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:0];
    v99 = [v72 objectForKey:@"anisette-headers-global-timeout"];
    objc_opt_class();
    v73 = -1.0;
    if (objc_opt_isKindOfClass())
    {
      [v99 doubleValue];
      v73 = v74;
    }

    v97 = [v72 objectForKey:{@"anisette-headers-lenient-timeout", v94}];
    objc_opt_class();
    v75 = -1.0;
    if (objc_opt_isKindOfClass())
    {
      [v97 doubleValue];
      v75 = v76;
    }

    v77 = MEMORY[0x1E696AEC0];
    v78 = objc_opt_class();
    v79 = NSStringFromClass(v78);
    v80 = [v77 stringWithFormat:@"%@-%@", @"anisette-headers-message-timeout", v79];

    v81 = [v72 objectForKey:v80];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v81 doubleValue], v83 = v82, v82 >= 0.0))
    {
      v88 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
        *v140 = 138412546;
        v141 = *&v80;
        v142 = 2048;
        v143 = v83;
        _os_log_impl(&dword_195925000, v88, OS_LOG_TYPE_DEFAULT, "Using server bag message specific timeout %@: %f second(s)", v140, 0x16u);
      }

      v84 = (v83 * 1000000000.0);
      if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
      {
        goto LABEL_151;
      }
    }

    else
    {
      if (v71 < 0.0)
      {
        v84 = 0;
LABEL_151:

        dispatch_time(0, v84);
        im_dispatch_async_with_timeout();
        goto LABEL_152;
      }

      if (v75 > 0.0 && [v69 allowsServerProvidedLenientAnisetteTimeout])
      {
        v86 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
        {
          *v140 = 134217984;
          v141 = v75;
          _os_log_impl(&dword_195925000, v86, OS_LOG_TYPE_DEFAULT, "Using server bag anisetteHeaderLenientTimeout: %f second(s)", v140, 0xCu);
        }

        v84 = (v75 * 1000000000.0);
        if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
        {
          goto LABEL_151;
        }
      }

      else
      {
        if (v73 <= 0.0)
        {
          v84 = (v71 * 1000000000.0);
          goto LABEL_151;
        }

        v87 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
        {
          *v140 = 134217984;
          v141 = v73;
          _os_log_impl(&dword_195925000, v87, OS_LOG_TYPE_DEFAULT, "Using server bag anisetteHeaderGlobalTimeout: %f second(s)", v140, 0xCu);
        }

        v84 = (v73 * 1000000000.0);
        if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
        {
          goto LABEL_151;
        }
      }
    }

    _IDSLogV();
    goto LABEL_151;
  }

  if (MarcoShouldLogCheckpoints())
  {
    v90 = v10;
    MarcoNoteCheckpoint();
  }

  if ([(FTMessageDelivery *)self logToRegistration])
  {
    v11 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v10;
      _os_log_impl(&dword_195925000, v11, OS_LOG_TYPE_DEFAULT, "Cannot send message: Empty URL requested for message: %@, forcing a bag load", buf, 0xCu);
    }
  }

  [(IDSServerBag *)self->_idsServerBag forceBagLoad];
  [(FTMessageDelivery_HTTP *)self _cleanupURLConnection];
LABEL_153:

  v89 = *MEMORY[0x1E69E9840];
}

- (id)_processResultData:(id)a3 forMessage:(id)a4 error:(id *)a5
{
  v21[3] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  if (![v7 length])
  {
    v11 = 0;
    goto LABEL_5;
  }

  v10 = [v8 parsedIDSMessageResult];
  if (v10)
  {
    v11 = v10;
LABEL_5:
    objc_autoreleasePoolPop(v9);
    v12 = 0;
LABEL_6:
    v13 = v11;
    goto LABEL_7;
  }

  v21[0] = 0xAAAAAAAAAAAAAAAALL;
  v16 = [v7 _FTDecompressData];
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v7;
  }

  v20 = 0;
  v11 = [MEMORY[0x1E696AE40] propertyListWithData:v17 options:0 format:v21 error:&v20];
  v12 = v20;

  objc_autoreleasePoolPop(v9);
  if (!a5 || !v12)
  {
    v19 = objc_autoreleasePoolPush();
    if (v8 && v11)
    {
      [v8 handleResponseDictionary:v11];
    }

    v11 = v11;
    objc_autoreleasePoolPop(v19);
    goto LABEL_6;
  }

  v18 = v12;
  v13 = 0;
  *a5 = v12;
LABEL_7:

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)_notifyDelegateAboutError:(id)a3 forMessage:(id)a4
{
  v12 = a3;
  v6 = a4;
  [(FTMessageDelivery_HTTP *)self _cleanupURLConnection];
  v7 = [(FTMessageDelivery *)self _queue];
  v8 = [v7 topMessage];
  v9 = [v6 isEqual:v8];

  if (v9)
  {
    v10 = [(FTMessageDelivery *)self _queue];
    v11 = [v10 dequeueTopMessage];
  }

  [(FTMessageDelivery *)self _informDelegateAboutMessage:v6 error:v12 result:0 resultCode:20000 interface:0];
  [(FTMessageDelivery_HTTP *)self _dequeueIfNeeded];
}

- (void)_informDelegatesOfMessage:(id)a3 result:(id)a4 resultCode:(int64_t)a5 error:(id)a6
{
  self->super._retries = 0;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [(FTMessageDelivery *)self _queue];
  [v13 removeMessage:v12];

  [(FTMessageDelivery *)self _informDelegateAboutMessage:v12 error:v10 result:v11 resultCode:a5 interface:0];
  [(FTMessageDelivery_HTTP *)self _cleanupURLConnection];

  [(FTMessageDelivery_HTTP *)self _dequeueIfNeeded];
}

- (void)_clearRetryTimer
{
  v3.receiver = self;
  v3.super_class = FTMessageDelivery_HTTP;
  [(FTMessageDelivery *)&v3 _clearRetryTimer];
  self->_pendingRetryAfterAirplaneMode = 0;
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  obj->_pendingRetryAfterAirplaneMode = 0;
  [(FTMessageDelivery_HTTP *)obj _clearRetryTimer];
  v2 = [(FTMessageDelivery *)obj _queue];
  [v2 removeAllMessages];

  [(FTMessageDelivery_HTTP *)obj _cleanupURLConnection];
  objc_sync_exit(obj);
}

- (BOOL)_sendMessageAsynchronously:(id)a3 error:(id *)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = self;
    objc_sync_enter(v6);
    if ([(FTMessageDelivery *)v6 logToRegistration])
    {
      v7 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v5;
        _os_log_impl(&dword_195925000, v7, OS_LOG_TYPE_DEFAULT, "Requesting async send: %@", buf, 0xCu);
      }
    }

    v8 = [v5 bagKey];
    v9 = [v5 messageBodyDataOverride];

    if (v9)
    {
      v10 = [v5 messageBodyDataOverride];
    }

    else
    {
      if ([v5 isIDSMessage])
      {
        v12 = [v5 messageBodyUsingCache];
        v34 = 0;
        v10 = [MEMORY[0x1E696AE40] dataWithPropertyList:v12 format:100 options:0 error:&v34];
        v13 = v34;
        if (v13)
        {
          v14 = v13;
          v15 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = [v14 localizedDescription];
            *buf = 138412290;
            v36 = v16;
            _os_log_impl(&dword_195925000, v15, OS_LOG_TYPE_ERROR, "error = %@", buf, 0xCu);
          }

          if (!os_log_shim_legacy_logging_enabled())
          {
            v11 = 0;
            goto LABEL_25;
          }

          v28 = [v14 localizedDescription];
          _IDSWarnV();

          v29 = [v14 localizedDescription];
          _IDSLogV();

          v17 = [v14 localizedDescription];
          _IDSLogTransport();
          v11 = 0;
LABEL_24:

LABEL_25:
          objc_sync_exit(v6);
LABEL_26:

          goto LABEL_27;
        }

LABEL_21:
        v18 = [(IDSServerBag *)v6->_idsServerBag urlWithKey:v8];
        v19 = [v5 URLOverride];

        if (v19)
        {
          v20 = [v5 URLOverride];

          v18 = v20;
        }

        [v5 setSentByteCount:{objc_msgSend(v10, "length")}];
        v21 = [MEMORY[0x1E695DF00] date];
        [v5 setRequestStart:v21];

        v22 = [v5 uniqueID];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = sub_195942F04;
        v30[3] = &unk_1E74354B8;
        v30[4] = v6;
        v33 = v22;
        v17 = v18;
        v31 = v17;
        v12 = v12;
        v32 = v12;
        v23 = MEMORY[0x19A8B8CC0](v30);
        v24 = [(FTMessageDeliveryRemoteURLConnectionFactory *)v6->_remoteConnectionFactory remoteURLConnection];
        remoteConnection = v6->_remoteConnection;
        v6->_remoteConnection = v24;

        [(FTMessageDelivery_HTTP *)v6 _urlRequestWithURL:v17 andData:v10 message:v5 completionBlock:v23];
        v14 = 0;
        v11 = 1;
        goto LABEL_24;
      }

      v10 = 0;
    }

    v12 = 0;
    goto LABEL_21;
  }

  if ([(FTMessageDelivery *)self logToRegistration])
  {
    v6 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(&v6->super.super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, &v6->super.super, OS_LOG_TYPE_DEFAULT, "Cannot send nil message", buf, 2u);
    }

    v11 = 0;
    goto LABEL_26;
  }

  v11 = 0;
LABEL_27:

  v26 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)_tryRetryMessageWithTimeInterval:(double)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(FTMessageDelivery *)self logToRegistration])
  {
    v5 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      retries = self->super._retries;
      v15 = 67109120;
      LODWORD(v16) = retries;
      _os_log_impl(&dword_195925000, v5, OS_LOG_TYPE_DEFAULT, "Should retry, already tried: %d times", &v15, 8u);
    }
  }

  v7 = self->super._retries + 1;
  self->super._retries = v7;
  if (v7 > 0x59)
  {
    if ([(FTMessageDelivery *)self logToRegistration])
    {
      v10 = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        sub_195963B98(v10);
      }
    }
  }

  else if ([(FTMessageDeliveryHTTPMobileNetworkManager *)self->_mobileNetworkManager isAirplaneModeEnabled]&& ([(FTMessageDeliveryHTTPMobileNetworkManager *)self->_mobileNetworkManager isWiFiUsable]& 1) == 0)
  {
    if ([(FTMessageDelivery *)self logToRegistration])
    {
      v12 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_195925000, v12, OS_LOG_TYPE_DEFAULT, "Not retrying right now, we're in airplane mode with no wifi", &v15, 2u);
      }
    }

    self->_pendingRetryAfterAirplaneMode = 1;
    self->_retryTimeAfterAirplaneMode = a3;
  }

  else
  {
    self->_pendingRetryAfterAirplaneMode = 0;
    retryBackoffProvider = self->_retryBackoffProvider;
    if (retryBackoffProvider)
    {
      v9 = retryBackoffProvider[2](retryBackoffProvider, self->super._retries, a3);
    }

    else
    {
      v9 = 300.0;
    }

    if ([(FTMessageDelivery *)self logToRegistration])
    {
      v11 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 134217984;
        v16 = v9;
        _os_log_impl(&dword_195925000, v11, OS_LOG_TYPE_DEFAULT, "Retrying - trying again in %f seconds", &v15, 0xCu);
      }
    }

    [(FTMessageDelivery *)self _setRetryTimer:v9];
  }

  result = v7 < 0x5A;
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)queue:(id)a3 hitTimeoutForMessage:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v7 wantsCFNetworkTimeout])
  {
    if ([(FTMessageDelivery *)self logToRegistration])
    {
      v8 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v19 = v7;
        _os_log_impl(&dword_195925000, v8, OS_LOG_TYPE_DEFAULT, "Message timed out, but we're going to wait for CFNetwork: %@", buf, 0xCu);
      }
    }

    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v19 = v7;
      _os_log_impl(&dword_195925000, v9, OS_LOG_TYPE_DEFAULT, "Message timed out, but we're going to wait for CFNetwork: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        MarcoLog();
      }

      if (IMShouldLog())
      {
        IMLogString();
      }
    }
  }

  else if ([v7 wantsExtraTimeoutRetry] && (v10 = objc_msgSend(v7, "timeoutRetries"), v10 < objc_msgSend(v7, "maxTimeoutRetries")))
  {
    [v7 setTimeoutRetries:{objc_msgSend(v7, "timeoutRetries") + 1}];
    if ([(FTMessageDelivery *)self logToRegistration])
    {
      v11 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109634;
        *v19 = [v7 timeoutRetries];
        *&v19[4] = 1024;
        *&v19[6] = [v7 maxTimeoutRetries];
        v20 = 2112;
        v21 = v7;
        _os_log_impl(&dword_195925000, v11, OS_LOG_TYPE_DEFAULT, "Message timed out, but we want extra timeout retries (%d/%d): %@", buf, 0x18u);
      }

      v12 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v19 = 0x4000000000000000;
        _os_log_impl(&dword_195925000, v12, OS_LOG_TYPE_DEFAULT, "Retrying - trying again in %f seconds", buf, 0xCu);
      }
    }

    [(FTMessageDelivery *)self _setRetryTimer:2.0];
  }

  else
  {
    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v19 = v7;
      _os_log_impl(&dword_195925000, v13, OS_LOG_TYPE_DEFAULT, "Queue timed out delivery for message: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        v17 = v7;
        MarcoLog();
      }

      if (IMShouldLog())
      {
        v17 = v7;
        IMLogString();
      }
    }

    if ([(FTMessageDelivery *)self logToRegistration])
    {
      v14 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v19 = v7;
        _os_log_impl(&dword_195925000, v14, OS_LOG_TYPE_DEFAULT, "Queue timed out delivery for message: %@", buf, 0xCu);
      }
    }

    [(FTMessageDelivery_HTTP *)self _clearRetryTimer];
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A978] code:-1001 userInfo:0];
    self->super._retries = 0;
    [(FTMessageDelivery_HTTP *)self _notifyDelegateAboutError:v15 forMessage:v7];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)cancelMessage:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = FTMessageDelivery_HTTP;
  [(FTMessageDelivery *)&v17 cancelMessage:v4];
  if (v4)
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v4;
      _os_log_impl(&dword_195925000, v5, OS_LOG_TYPE_DEFAULT, "Cancelling message in the queue: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        v16 = v4;
        MarcoLog();
      }

      if (IMShouldLog())
      {
        v16 = v4;
        IMLogString();
      }
    }

    if ([(FTMessageDelivery *)self logToRegistration])
    {
      v6 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v4;
        _os_log_impl(&dword_195925000, v6, OS_LOG_TYPE_DEFAULT, "Cancelling message in the queue: %@", buf, 0xCu);
      }
    }

    v7 = self;
    objc_sync_enter(v7);
    v8 = [(FTMessageDelivery *)v7 _queue];
    v9 = [v8 messages];
    if ([v9 containsObject:v4])
    {
    }

    else
    {
      v10 = [(FTMessageDelivery *)v7 currentMessage];
      v11 = v10 == v4;

      if (!v11)
      {
LABEL_19:
        objc_sync_exit(v7);

        goto LABEL_20;
      }
    }

    v12 = [(FTMessageDelivery *)v7 currentMessage];
    v13 = v12 == v4;

    if (v13)
    {
      v7->_pendingRetryAfterAirplaneMode = 0;
      [(FTMessageDelivery_HTTP *)v7 _cleanupURLConnection];
    }

    v14 = [(FTMessageDelivery *)v7 _queue];
    [v14 removeMessage:v4];

    [(FTMessageDelivery_HTTP *)v7 _dequeueIfNeeded];
    goto LABEL_19;
  }

LABEL_20:

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)sendMessage:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  [v4 _setUsingOutgoingPush:0];
  [v4 setDeliveryMechanism:2];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [v4 setTimeSent:?];
  if ([(FTMessageDelivery *)v5 logToRegistration])
  {
    v6 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&dword_195925000, v6, OS_LOG_TYPE_DEFAULT, "Adding message to the queue: %@", &v14, 0xCu);
    }
  }

  v7 = [(FTMessageDelivery *)v5 _queue];
  [v7 addMessage:v4];

  if ([(FTMessageDelivery_HTTP *)v5 busy])
  {
    if ([(FTMessageDelivery *)v5 logToRegistration])
    {
      v8 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(FTMessageDelivery *)v5 _queue];
        v10 = [v9 currentMessage];
        remoteConnection = v5->_remoteConnection;
        v14 = 138412546;
        v15 = v10;
        v16 = 2112;
        v17 = remoteConnection;
        _os_log_impl(&dword_195925000, v8, OS_LOG_TYPE_DEFAULT, "  Busy delivering: %@  (%@)", &v14, 0x16u);
      }
    }
  }

  else
  {
    [(FTMessageDelivery_HTTP *)v5 _dequeueIfNeeded];
  }

  objc_sync_exit(v5);

  v12 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)sendMessageAtTopOfTheQueue:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [v4 setTimeSent:?];
  if ([(FTMessageDelivery *)v5 logToRegistration])
  {
    v6 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&dword_195925000, v6, OS_LOG_TYPE_DEFAULT, "Adding message to the queue: %@", &v14, 0xCu);
    }
  }

  v7 = [(FTMessageDelivery *)v5 _queue];
  [v7 addMessageAtHeadOfQueue:v4];

  if ([(FTMessageDelivery_HTTP *)v5 busy])
  {
    if ([(FTMessageDelivery *)v5 logToRegistration])
    {
      v8 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(FTMessageDelivery *)v5 _queue];
        v10 = [v9 currentMessage];
        remoteConnection = v5->_remoteConnection;
        v14 = 138412546;
        v15 = v10;
        v16 = 2112;
        v17 = remoteConnection;
        _os_log_impl(&dword_195925000, v8, OS_LOG_TYPE_DEFAULT, "  Busy delivering: %@  (%@)", &v14, 0x16u);
      }
    }
  }

  else
  {
    [(FTMessageDelivery_HTTP *)v5 _dequeueIfNeeded];
  }

  objc_sync_exit(v5);

  v12 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)_serverBagLoaded:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ([(FTMessageDelivery *)v5 logToRegistration])
  {
    v6 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_195925000, v6, OS_LOG_TYPE_DEFAULT, "Server bag loaded", &v12, 2u);
    }
  }

  if ([(FTMessageDelivery_HTTP *)v5 busy])
  {
    if ([(FTMessageDelivery *)v5 logToRegistration])
    {
      v7 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(FTMessageDelivery *)v5 _queue];
        v9 = [v8 currentMessage];
        remoteConnection = v5->_remoteConnection;
        v12 = 138412546;
        v13 = v9;
        v14 = 2112;
        v15 = remoteConnection;
        _os_log_impl(&dword_195925000, v7, OS_LOG_TYPE_DEFAULT, "  Busy delivering: %@  (%@)", &v12, 0x16u);
      }
    }
  }

  else
  {
    [(FTMessageDelivery_HTTP *)v5 _dequeueIfNeeded];
  }

  objc_sync_exit(v5);

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)authKitBAADisabled
{
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"authkit-baa-disabled"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)shouldFailFastForMessage:(id)a3
{
  v4 = a3;
  if (!_os_feature_enabled_impl() || ([MEMORY[0x1E69A6180] shouldDisableFailFastWhenSatelliteIsAvailable] & 1) != 0)
  {
    goto LABEL_14;
  }

  if (qword_1ED7687F0 != -1)
  {
    sub_195963BDC();
  }

  if (qword_1ED768800 != -1)
  {
    sub_195963BF0();
  }

  v5 = [v4 topic];
  if ([v5 isEqualToIgnoringCase:qword_1ED7687F8])
  {
    v6 = [(_FT_IDSOffGridConnectionMonitor *)self->_offGridConnectionMonitor isConnectionSuitableForIMLOverStewie];
  }

  else
  {
    v7 = [v4 topic];
    if (([v7 isEqualToIgnoringCase:qword_1ED768808] & 1) == 0)
    {

      goto LABEL_14;
    }

    v6 = [(_FT_IDSOffGridConnectionMonitor *)self->_offGridConnectionMonitor isConnectionSuitableForIMLOverStewie];
  }

  if ((v6 & 1) == 0)
  {
LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

  v8 = 1;
LABEL_15:

  return v8;
}

- (void)networkStateChanged
{
  v13 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = FTMessageDelivery_HTTP;
  [(FTMessageDelivery *)&v10 networkStateChanged];
  if (self->_pendingRetryAfterAirplaneMode)
  {
    self->_pendingRetryAfterAirplaneMode = 0;
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, v3, OS_LOG_TYPE_DEFAULT, "We're out of airplane mode, and we have a pending retry", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        MarcoLog();
      }

      if (IMShouldLog())
      {
        IMLogString();
      }
    }

    if ([(FTMessageDelivery *)self logToRegistration])
    {
      v4 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, v4, OS_LOG_TYPE_DEFAULT, "We're out of airplane mode, and we have a pending retry", buf, 2u);
      }
    }

    retryTimeAfterAirplaneMode = self->_retryTimeAfterAirplaneMode;
    if (retryTimeAfterAirplaneMode < 10.0)
    {
      LODWORD(retryTimeAfterAirplaneMode) = self->super._retries;
      v6 = *&retryTimeAfterAirplaneMode / 10.0;
      if (v6 > 3.0)
      {
        v6 = 3.0;
      }

      retryTimeAfterAirplaneMode = __exp10(v6 + 1.0);
    }

    if (retryTimeAfterAirplaneMode <= 43200.0)
    {
      v7 = retryTimeAfterAirplaneMode;
    }

    else
    {
      v7 = 43200.0;
    }

    if ([(FTMessageDelivery *)self logToRegistration])
    {
      v8 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v12 = v7;
        _os_log_impl(&dword_195925000, v8, OS_LOG_TYPE_DEFAULT, "Retrying - trying again in %f seconds", buf, 0xCu);
      }
    }

    [(FTMessageDelivery *)self _setRetryTimer:v7];
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end