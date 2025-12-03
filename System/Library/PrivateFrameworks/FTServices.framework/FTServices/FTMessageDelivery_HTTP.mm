@interface FTMessageDelivery_HTTP
- (BOOL)_sendMessageAsynchronously:(id)asynchronously error:(id *)error;
- (BOOL)_tryRetryMessageWithTimeInterval:(double)interval;
- (BOOL)authKitBAADisabled;
- (BOOL)sendMessage:(id)message;
- (BOOL)sendMessageAtTopOfTheQueue:(id)queue;
- (BOOL)shouldFailFastForMessage:(id)message;
- (FTMessageDelivery_HTTP)initWithAPSConnection:(id)connection;
- (FTMessageDelivery_HTTP)initWithIDSServerBag:(id)bag apsConnection:(id)connection;
- (FTMessageDelivery_HTTP)initWithIDSServerBag:(id)bag iMessageServerBag:(id)serverBag remoteConnectionFactory:(id)factory mobileNetworkManager:(id)manager apsConnection:(id)connection retryBackoffProvider:(id)provider timeoutBackoffProvider:(id)backoffProvider;
- (id)_processResultData:(id)data forMessage:(id)message error:(id *)error;
- (void)_cleanupURLConnection;
- (void)_clearRetryTimer;
- (void)_dequeueIfNeeded;
- (void)_informDelegatesOfMessage:(id)message result:(id)result resultCode:(int64_t)code error:(id)error;
- (void)_notifyDelegateAboutError:(id)error forMessage:(id)message;
- (void)_serverBagLoaded:(id)loaded;
- (void)_updateWiFiAssertions;
- (void)_urlRequestWithURL:(id)l andData:(id)data message:(id)message completionBlock:(id)block;
- (void)cancelMessage:(id)message;
- (void)dealloc;
- (void)invalidate;
- (void)networkStateChanged;
- (void)queue:(id)queue hitTimeoutForMessage:(id)message;
@end

@implementation FTMessageDelivery_HTTP

- (void)_dequeueIfNeeded
{
  v54 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(FTMessageDelivery_HTTP *)selfCopy _updateWiFiAssertions];
  _queue = [(FTMessageDelivery *)selfCopy _queue];
  v4 = [_queue count];

  if (v4)
  {
    _queue2 = [(FTMessageDelivery *)selfCopy _queue];
    topMessage = [_queue2 topMessage];

    [topMessage startSendEventTracing];
    v7 = selfCopy->_idsServerBag;
    if (![topMessage isIDSMessage]|| ([(IDSServerBag *)v7 isLoaded]& 1) != 0)
    {
      [(FTMessageDelivery_HTTP *)selfCopy _cleanupURLConnection];
      _queue3 = [(FTMessageDelivery *)selfCopy _queue];
      dequeueTopMessage = [_queue3 dequeueTopMessage];

      if (([dequeueTopMessage isValidMessage]& 1) == 0)
      {
        stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
        registration = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v51 = stringGUID;
          _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "%@ Message not being delivered, invalid message", buf, 0xCu);
        }

        v20 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v51 = stringGUID;
          _os_log_impl(&dword_195925000, v20, OS_LOG_TYPE_DEFAULT, "%@ Cancelling message delivery! invalid message!", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (MarcoShouldLog())
          {
            v39 = stringGUID;
            MarcoLog();
          }

          if (IMShouldLog())
          {
            v39 = stringGUID;
            IMLogString();
          }
        }

        v18 = [FTMessageDelivery _errorForTDMessageDeliveryStatus:5003 userInfo:0, v39];
        [(FTMessageDelivery_HTTP *)selfCopy _notifyDelegateAboutError:v18 forMessage:dequeueTopMessage];
        registration4 = 0;
        goto LABEL_60;
      }

      v49 = 0;
      v10 = [dequeueTopMessage hasRequiredKeys:&v49];
      registration4 = v49;
      if ((v10 & 1) == 0)
      {
        stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
        warning = [MEMORY[0x1E69A6138] warning];
        if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
        {
          sub_1959639CC();
        }

        v25 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v51 = stringGUID;
          v52 = 2112;
          v53 = registration4;
          _os_log_impl(&dword_195925000, v25, OS_LOG_TYPE_DEFAULT, "%@ Cancelling message delivery! Missing keys: %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (MarcoShouldLog())
          {
            v39 = stringGUID;
            v40 = registration4;
            MarcoLog();
          }

          if (IMShouldLog())
          {
            v39 = stringGUID;
            v40 = registration4;
            IMLogString();
          }
        }

        if ([dequeueTopMessage payloadCanBeLogged:v39])
        {
          messageBodyUsingCache = [dequeueTopMessage messageBodyUsingCache];
          v27 = [messageBodyUsingCache description];
          v28 = IDSLoggableDescriptionForObjectOnService();

          v47 = stringGUID;
          v48 = v28;
          cut_dispatch_log_queue();
        }

        v18 = [FTMessageDelivery _errorForTDMessageDeliveryStatus:5008 userInfo:0];
        [(FTMessageDelivery_HTTP *)selfCopy _notifyDelegateAboutError:v18 forMessage:dequeueTopMessage];
        goto LABEL_60;
      }

      if ([(FTMessageDelivery *)selfCopy retryInAirplaneMode]|| ![(FTMessageDeliveryHTTPMobileNetworkManager *)selfCopy->_mobileNetworkManager isAirplaneModeEnabled]|| ([(FTMessageDeliveryHTTPMobileNetworkManager *)selfCopy->_mobileNetworkManager isWiFiUsable]& 1) != 0)
      {
        if (![(FTMessageDelivery_HTTP *)selfCopy shouldFailFastForMessage:dequeueTopMessage])
        {
          if (![(FTMessageDelivery *)selfCopy isTrafficDisabledOnVMForMessage:dequeueTopMessage])
          {
            [(FTMessageDelivery_HTTP *)selfCopy _sendMessageAsynchronously:dequeueTopMessage error:0];
            goto LABEL_61;
          }

          stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
          warning2 = [MEMORY[0x1E69A6138] warning];
          if (os_log_type_enabled(warning2, OS_LOG_TYPE_ERROR))
          {
            sub_195963AB8();
          }

          if ([dequeueTopMessage payloadCanBeLogged])
          {
            messageBodyUsingCache2 = [dequeueTopMessage messageBodyUsingCache];
            v32 = [messageBodyUsingCache2 description];
            v33 = IDSLoggableDescriptionForObjectOnService();

            v41 = stringGUID;
            v42 = v33;
            cut_dispatch_log_queue();
          }

          v18 = [FTMessageDelivery _errorForTDMessageDeliveryStatus:20000 userInfo:0];
          [(FTMessageDelivery_HTTP *)selfCopy _notifyDelegateAboutError:v18 forMessage:dequeueTopMessage];
LABEL_60:

LABEL_61:
          [(FTMessageDelivery_HTTP *)selfCopy _updateWiFiAssertions];
LABEL_62:

LABEL_63:
LABEL_64:

          goto LABEL_65;
        }

        stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
        warning3 = [MEMORY[0x1E69A6138] warning];
        if (os_log_type_enabled(warning3, OS_LOG_TYPE_ERROR))
        {
          sub_195963B28();
        }

        v14 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v51 = stringGUID;
          _os_log_impl(&dword_195925000, v14, OS_LOG_TYPE_DEFAULT, "%@ Message not being delivered, network is unavailable, can attempt stewie", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (MarcoShouldLog())
          {
            v39 = stringGUID;
            MarcoLog();
          }

          if (IMShouldLog())
          {
            v39 = stringGUID;
            IMLogString();
          }
        }

        if ([dequeueTopMessage payloadCanBeLogged])
        {
          messageBodyUsingCache3 = [dequeueTopMessage messageBodyUsingCache];
          v16 = [messageBodyUsingCache3 description];
          v17 = IDSLoggableDescriptionForObjectOnService();

          v43 = stringGUID;
          v44 = v17;
          cut_dispatch_log_queue();
        }
      }

      else
      {
        stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
        warning4 = [MEMORY[0x1E69A6138] warning];
        if (os_log_type_enabled(warning4, OS_LOG_TYPE_ERROR))
        {
          sub_195963A48();
        }

        v35 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v51 = stringGUID;
          _os_log_impl(&dword_195925000, v35, OS_LOG_TYPE_DEFAULT, "%@ Message not being delivered, airplane mode is enabled", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (MarcoShouldLog())
          {
            v39 = stringGUID;
            MarcoLog();
          }

          if (IMShouldLog())
          {
            v39 = stringGUID;
            IMLogString();
          }
        }

        if ([dequeueTopMessage payloadCanBeLogged])
        {
          messageBodyUsingCache4 = [dequeueTopMessage messageBodyUsingCache];
          v37 = [messageBodyUsingCache4 description];
          v38 = IDSLoggableDescriptionForObjectOnService();

          v45 = stringGUID;
          v46 = v38;
          cut_dispatch_log_queue();
        }
      }

      v18 = [FTMessageDelivery _errorForTDMessageDeliveryStatus:10000 userInfo:0];
      [(FTMessageDelivery_HTTP *)selfCopy _notifyDelegateAboutError:v18 forMessage:dequeueTopMessage];
      goto LABEL_60;
    }

    if ([(FTMessageDelivery *)selfCopy logToRegistration])
    {
      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "Server bag is not loaded, waiting for it", buf, 2u);
      }
    }

    if ([(IDSServerBag *)v7 isServerAvailable])
    {
      if ([(FTMessageDelivery *)selfCopy logToRegistration])
      {
        registration3 = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, " => Server is available", buf, 2u);
        }
      }

      if (([(IDSServerBag *)v7 isLoading]& 1) != 0)
      {
        if ([(FTMessageDelivery *)selfCopy logToRegistration])
        {
          registration4 = [MEMORY[0x1E69A6138] registration];
          if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v23 = " => Already loading";
LABEL_78:
            _os_log_impl(&dword_195925000, registration4, OS_LOG_TYPE_DEFAULT, v23, buf, 2u);
            goto LABEL_79;
          }

          goto LABEL_79;
        }
      }

      else
      {
        [(IDSServerBag *)v7 startBagLoad];
        if ([(FTMessageDelivery *)selfCopy logToRegistration])
        {
          registration4 = [MEMORY[0x1E69A6138] registration];
          if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v23 = " => Starting load";
            goto LABEL_78;
          }

          goto LABEL_79;
        }
      }
    }

    else if ([(FTMessageDelivery *)selfCopy logToRegistration])
    {
      registration4 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v23 = " => Server not available";
        goto LABEL_78;
      }

LABEL_79:
      dequeueTopMessage = topMessage;
      goto LABEL_62;
    }

    dequeueTopMessage = topMessage;
    goto LABEL_63;
  }

  if ([(FTMessageDelivery *)selfCopy logToRegistration])
  {
    dequeueTopMessage = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(dequeueTopMessage, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, dequeueTopMessage, OS_LOG_TYPE_DEFAULT, "Nothing left in queue, done", buf, 2u);
    }

    goto LABEL_64;
  }

LABEL_65:
  objc_sync_exit(selfCopy);

  v29 = *MEMORY[0x1E69E9840];
}

- (void)_updateWiFiAssertions
{
  busy = [(FTMessageDelivery_HTTP *)self busy];
  mobileNetworkManager = self->_mobileNetworkManager;
  if (busy)
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_remoteConnection && [(FTMessageDelivery *)selfCopy logToRegistration])
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Cleaning out url connection", v5, 2u);
    }
  }

  [(FTMessageDeliveryRemoteURLConnection *)selfCopy->_remoteConnection cancel];
  remoteConnection = selfCopy->_remoteConnection;
  selfCopy->_remoteConnection = 0;

  objc_sync_exit(selfCopy);
}

- (FTMessageDelivery_HTTP)initWithAPSConnection:(id)connection
{
  v4 = MEMORY[0x1E69A53F0];
  connectionCopy = connection;
  v6 = [v4 sharedInstanceForBagType:0];
  v7 = [(FTMessageDelivery_HTTP *)self initWithIDSServerBag:v6 apsConnection:connectionCopy];

  return v7;
}

- (FTMessageDelivery_HTTP)initWithIDSServerBag:(id)bag apsConnection:(id)connection
{
  v6 = MEMORY[0x1E69A53F0];
  connectionCopy = connection;
  bagCopy = bag;
  v9 = [v6 sharedInstanceForBagType:1];
  v10 = objc_alloc_init(FTMessageDeliveryRemoteURLConnectionFactory);
  mEMORY[0x1E69A6108] = [MEMORY[0x1E69A6108] sharedInstance];
  v12 = [(FTMessageDelivery_HTTP *)self initWithIDSServerBag:bagCopy iMessageServerBag:v9 remoteConnectionFactory:v10 mobileNetworkManager:mEMORY[0x1E69A6108] apsConnection:connectionCopy retryBackoffProvider:&unk_1F09C70E8 timeoutBackoffProvider:&unk_1F09C7108];

  return v12;
}

- (FTMessageDelivery_HTTP)initWithIDSServerBag:(id)bag iMessageServerBag:(id)serverBag remoteConnectionFactory:(id)factory mobileNetworkManager:(id)manager apsConnection:(id)connection retryBackoffProvider:(id)provider timeoutBackoffProvider:(id)backoffProvider
{
  bagCopy = bag;
  serverBagCopy = serverBag;
  factoryCopy = factory;
  managerCopy = manager;
  providerCopy = provider;
  backoffProviderCopy = backoffProvider;
  v32.receiver = self;
  v32.super_class = FTMessageDelivery_HTTP;
  v20 = [(FTMessageDelivery *)&v32 initWithAPSConnection:connection];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_idsServerBag, bag);
    objc_storeStrong(&v21->_iMessageServerBag, serverBag);
    objc_storeStrong(&v21->_remoteConnectionFactory, factory);
    objc_storeStrong(&v21->_mobileNetworkManager, manager);
    v22 = MEMORY[0x19A8B8CC0](providerCopy);
    retryBackoffProvider = v21->_retryBackoffProvider;
    v21->_retryBackoffProvider = v22;

    v24 = MEMORY[0x19A8B8CC0](backoffProviderCopy);
    timeoutBackoffProvider = v21->_timeoutBackoffProvider;
    v21->_timeoutBackoffProvider = v24;

    if (_os_feature_enabled_impl() && ([MEMORY[0x1E69A6180] shouldDisableFailFastWhenSatelliteIsAvailable] & 1) == 0)
    {
      v26 = [MEMORY[0x19A8B8550](@"IDSOffGridConnectionMonitor" @"IDS")];
      offGridConnectionMonitor = v21->_offGridConnectionMonitor;
      v21->_offGridConnectionMonitor = v26;
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v21 selector:sel__serverBagLoaded_ name:*MEMORY[0x1E69A50A8] object:0];
  }

  return v21;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:0 object:0];

  [(FTMessageDeliveryRemoteURLConnection *)self->_remoteConnection cancel];
  v4.receiver = self;
  v4.super_class = FTMessageDelivery_HTTP;
  [(FTMessageDelivery *)&v4 dealloc];
}

- (void)_urlRequestWithURL:(id)l andData:(id)data message:(id)message completionBlock:(id)block
{
  v144 = *MEMORY[0x1E69E9840];
  lCopy = l;
  dataCopy = data;
  messageCopy = message;
  blockCopy = block;
  v108 = messageCopy;
  if (lCopy)
  {
    if ([messageCopy wantsGZip])
    {
      _FTCopyGzippedData = [dataCopy _FTCopyGzippedData];
    }

    else
    {
      _FTCopyGzippedData = dataCopy;
    }

    additionalQueryStringParameters = [messageCopy additionalQueryStringParameters];
    v96 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = additionalQueryStringParameters;
      _os_log_impl(&dword_195925000, v12, OS_LOG_TYPE_DEFAULT, " Query parameters: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v90 = additionalQueryStringParameters;
      _IDSLogV();
    }

    if ([additionalQueryStringParameters count])
    {
      v133[0] = MEMORY[0x1E69E9820];
      v133[1] = 3221225472;
      v133[2] = sub_195940F38;
      v133[3] = &unk_1E7435060;
      v13 = v96;
      v134 = v13;
      [additionalQueryStringParameters enumerateKeysAndObjectsUsingBlock:v133];
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
        absoluteString = [lCopy absoluteString];
        v16 = [absoluteString stringByAppendingFormat:@"?%@", v13];

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
        v100 = lCopy;
      }
    }

    else
    {
      v100 = lCopy;
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
      [v110 setHTTPBody:_FTCopyGzippedData];
    }

    if (([v108 isIDSMessage] & 1) == 0)
    {
      [v110 setHTTPBody:dataCopy];
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
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v100;
      _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Building URL request with URL: %@", buf, 0xCu);
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
      userAgent = [(FTMessageDelivery *)self userAgent];
      *buf = 138412290;
      *&buf[4] = userAgent;
      _os_log_impl(&dword_195925000, v28, OS_LOG_TYPE_DEFAULT, "       User Agent: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        userAgent2 = [(FTMessageDelivery *)self userAgent];
        MarcoLog();
      }

      if (IMShouldLog())
      {
        userAgent2 = [(FTMessageDelivery *)self userAgent];
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
      userAgent3 = [(FTMessageDelivery *)self userAgent];
      *buf = 138412290;
      *&buf[4] = userAgent3;
      _os_log_impl(&dword_195925000, v31, OS_LOG_TYPE_DEFAULT, "       User Agent: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      userAgent2 = [(FTMessageDelivery *)self userAgent];
      _IDSLogV();
    }

    userAgent4 = [(FTMessageDelivery *)self userAgent];
    if (![(__CFString *)userAgent4 length])
    {

      userAgent4 = @"FTMessageDelivery";
    }

    v33 = MEMORY[0x1E696AEC0];
    v34 = +[FTDeviceSupport sharedInstance];
    userAgentString = [v34 userAgentString];
    v105 = [v33 stringWithFormat:@"%@ %@", userAgent4, userAgentString];

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

    isIDSMessage = [v108 isIDSMessage];
    v39 = sub_19592BC58();
    v40 = [v39 length];

    if (isIDSMessage)
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

        overrideContentType = [v108 overrideContentType];
        v43 = overrideContentType;
        if (!overrideContentType)
        {
          overrideContentType = @"application/x-apple-plist";
        }

        v44 = [(__CFString *)overrideContentType length]== 0;

        if (!v44)
        {
          overrideContentType2 = [v108 overrideContentType];
          v46 = overrideContentType2;
          if (overrideContentType2)
          {
            v47 = overrideContentType2;
          }

          else
          {
            v47 = @"application/x-apple-plist";
          }

          [v110 setValue:v47 forHTTPHeaderField:@"content-type"];
        }

        v48 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(_FTCopyGzippedData, "length")}];

        if (v48)
        {
          v49 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(_FTCopyGzippedData, "length")}];
          stringValue = [v49 stringValue];
          [v110 setValue:stringValue forHTTPHeaderField:@"content-length"];
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

    additionalMessageHeaders = [v108 additionalMessageHeaders];
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    allKeys = [additionalMessageHeaders allKeys];
    v54 = [allKeys countByEnumeratingWithState:&v129 objects:v139 count:16];
    if (v54)
    {
      v55 = *v130;
      do
      {
        for (i = 0; i != v54; ++i)
        {
          if (*v130 != v55)
          {
            objc_enumerationMutation(allKeys);
          }

          v57 = *(*(&v129 + 1) + 8 * i);
          v58 = [additionalMessageHeaders objectForKey:{v57, v94, v95}];

          if (v58)
          {
            v59 = [additionalMessageHeaders objectForKey:v57];
            [v110 setValue:v59 forHTTPHeaderField:v57];
          }

          v60 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            v61 = [additionalMessageHeaders objectForKey:v57];
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
              [additionalMessageHeaders objectForKey:v57];
              v95 = v94 = v57;
              MarcoLog();
            }

            if (IMShouldLog())
            {
              [additionalMessageHeaders objectForKey:v57];
              v95 = v94 = v57;
              IMLogString();
            }
          }
        }

        v54 = [allKeys countByEnumeratingWithState:&v129 objects:v139 count:16];
      }

      while (v54);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v136 = sub_19592BE94;
    v137 = sub_19592BFD8;
    v138 = 0;
    uniqueID = [v108 uniqueID];
    objc_initWeak(&location, v108);
    v123[0] = MEMORY[0x1E69E9820];
    v123[1] = 3221225472;
    v123[2] = sub_195940FE8;
    v123[3] = &unk_1E7435350;
    objc_copyWeak(v127, &location);
    v127[1] = uniqueID;
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
    v122 = uniqueID;
    v65 = v64;
    v117 = v65;
    v121 = buf;
    v66 = blockCopy;
    v120 = v66;
    v107 = _FTCopyGzippedData;
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
    v90 = messageCopy;
    MarcoNoteCheckpoint();
  }

  if ([(FTMessageDelivery *)self logToRegistration])
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = messageCopy;
      _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "Cannot send message: Empty URL requested for message: %@, forcing a bag load", buf, 0xCu);
    }
  }

  [(IDSServerBag *)self->_idsServerBag forceBagLoad];
  [(FTMessageDelivery_HTTP *)self _cleanupURLConnection];
LABEL_153:

  v89 = *MEMORY[0x1E69E9840];
}

- (id)_processResultData:(id)data forMessage:(id)message error:(id *)error
{
  v21[3] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  messageCopy = message;
  v9 = objc_autoreleasePoolPush();
  if (![dataCopy length])
  {
    v11 = 0;
    goto LABEL_5;
  }

  parsedIDSMessageResult = [messageCopy parsedIDSMessageResult];
  if (parsedIDSMessageResult)
  {
    v11 = parsedIDSMessageResult;
LABEL_5:
    objc_autoreleasePoolPop(v9);
    v12 = 0;
LABEL_6:
    v13 = v11;
    goto LABEL_7;
  }

  v21[0] = 0xAAAAAAAAAAAAAAAALL;
  _FTDecompressData = [dataCopy _FTDecompressData];
  if (_FTDecompressData)
  {
    v17 = _FTDecompressData;
  }

  else
  {
    v17 = dataCopy;
  }

  v20 = 0;
  v11 = [MEMORY[0x1E696AE40] propertyListWithData:v17 options:0 format:v21 error:&v20];
  v12 = v20;

  objc_autoreleasePoolPop(v9);
  if (!error || !v12)
  {
    v19 = objc_autoreleasePoolPush();
    if (messageCopy && v11)
    {
      [messageCopy handleResponseDictionary:v11];
    }

    v11 = v11;
    objc_autoreleasePoolPop(v19);
    goto LABEL_6;
  }

  v18 = v12;
  v13 = 0;
  *error = v12;
LABEL_7:

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)_notifyDelegateAboutError:(id)error forMessage:(id)message
{
  errorCopy = error;
  messageCopy = message;
  [(FTMessageDelivery_HTTP *)self _cleanupURLConnection];
  _queue = [(FTMessageDelivery *)self _queue];
  topMessage = [_queue topMessage];
  v9 = [messageCopy isEqual:topMessage];

  if (v9)
  {
    _queue2 = [(FTMessageDelivery *)self _queue];
    dequeueTopMessage = [_queue2 dequeueTopMessage];
  }

  [(FTMessageDelivery *)self _informDelegateAboutMessage:messageCopy error:errorCopy result:0 resultCode:20000 interface:0];
  [(FTMessageDelivery_HTTP *)self _dequeueIfNeeded];
}

- (void)_informDelegatesOfMessage:(id)message result:(id)result resultCode:(int64_t)code error:(id)error
{
  self->super._retries = 0;
  errorCopy = error;
  resultCopy = result;
  messageCopy = message;
  _queue = [(FTMessageDelivery *)self _queue];
  [_queue removeMessage:messageCopy];

  [(FTMessageDelivery *)self _informDelegateAboutMessage:messageCopy error:errorCopy result:resultCopy resultCode:code interface:0];
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
  _queue = [(FTMessageDelivery *)obj _queue];
  [_queue removeAllMessages];

  [(FTMessageDelivery_HTTP *)obj _cleanupURLConnection];
  objc_sync_exit(obj);
}

- (BOOL)_sendMessageAsynchronously:(id)asynchronously error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  asynchronouslyCopy = asynchronously;
  if (asynchronouslyCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if ([(FTMessageDelivery *)selfCopy logToRegistration])
    {
      registration = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = asynchronouslyCopy;
        _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Requesting async send: %@", buf, 0xCu);
      }
    }

    bagKey = [asynchronouslyCopy bagKey];
    messageBodyDataOverride = [asynchronouslyCopy messageBodyDataOverride];

    if (messageBodyDataOverride)
    {
      messageBodyDataOverride2 = [asynchronouslyCopy messageBodyDataOverride];
    }

    else
    {
      if ([asynchronouslyCopy isIDSMessage])
      {
        messageBodyUsingCache = [asynchronouslyCopy messageBodyUsingCache];
        v34 = 0;
        messageBodyDataOverride2 = [MEMORY[0x1E696AE40] dataWithPropertyList:messageBodyUsingCache format:100 options:0 error:&v34];
        v13 = v34;
        if (v13)
        {
          v14 = v13;
          v15 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            localizedDescription = [v14 localizedDescription];
            *buf = 138412290;
            v36 = localizedDescription;
            _os_log_impl(&dword_195925000, v15, OS_LOG_TYPE_ERROR, "error = %@", buf, 0xCu);
          }

          if (!os_log_shim_legacy_logging_enabled())
          {
            v11 = 0;
            goto LABEL_25;
          }

          localizedDescription2 = [v14 localizedDescription];
          _IDSWarnV();

          localizedDescription3 = [v14 localizedDescription];
          _IDSLogV();

          localizedDescription4 = [v14 localizedDescription];
          _IDSLogTransport();
          v11 = 0;
LABEL_24:

LABEL_25:
          objc_sync_exit(selfCopy);
LABEL_26:

          goto LABEL_27;
        }

LABEL_21:
        v18 = [(IDSServerBag *)selfCopy->_idsServerBag urlWithKey:bagKey];
        uRLOverride = [asynchronouslyCopy URLOverride];

        if (uRLOverride)
        {
          uRLOverride2 = [asynchronouslyCopy URLOverride];

          v18 = uRLOverride2;
        }

        [asynchronouslyCopy setSentByteCount:{objc_msgSend(messageBodyDataOverride2, "length")}];
        date = [MEMORY[0x1E695DF00] date];
        [asynchronouslyCopy setRequestStart:date];

        uniqueID = [asynchronouslyCopy uniqueID];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = sub_195942F04;
        v30[3] = &unk_1E74354B8;
        v30[4] = selfCopy;
        v33 = uniqueID;
        localizedDescription4 = v18;
        v31 = localizedDescription4;
        messageBodyUsingCache = messageBodyUsingCache;
        v32 = messageBodyUsingCache;
        v23 = MEMORY[0x19A8B8CC0](v30);
        remoteURLConnection = [(FTMessageDeliveryRemoteURLConnectionFactory *)selfCopy->_remoteConnectionFactory remoteURLConnection];
        remoteConnection = selfCopy->_remoteConnection;
        selfCopy->_remoteConnection = remoteURLConnection;

        [(FTMessageDelivery_HTTP *)selfCopy _urlRequestWithURL:localizedDescription4 andData:messageBodyDataOverride2 message:asynchronouslyCopy completionBlock:v23];
        v14 = 0;
        v11 = 1;
        goto LABEL_24;
      }

      messageBodyDataOverride2 = 0;
    }

    messageBodyUsingCache = 0;
    goto LABEL_21;
  }

  if ([(FTMessageDelivery *)self logToRegistration])
  {
    selfCopy = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(&selfCopy->super.super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, &selfCopy->super.super, OS_LOG_TYPE_DEFAULT, "Cannot send nil message", buf, 2u);
    }

    v11 = 0;
    goto LABEL_26;
  }

  v11 = 0;
LABEL_27:

  v26 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)_tryRetryMessageWithTimeInterval:(double)interval
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(FTMessageDelivery *)self logToRegistration])
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      retries = self->super._retries;
      v15 = 67109120;
      LODWORD(v16) = retries;
      _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Should retry, already tried: %d times", &v15, 8u);
    }
  }

  v7 = self->super._retries + 1;
  self->super._retries = v7;
  if (v7 > 0x59)
  {
    if ([(FTMessageDelivery *)self logToRegistration])
    {
      warning = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(warning, OS_LOG_TYPE_FAULT))
      {
        sub_195963B98(warning);
      }
    }
  }

  else if ([(FTMessageDeliveryHTTPMobileNetworkManager *)self->_mobileNetworkManager isAirplaneModeEnabled]&& ([(FTMessageDeliveryHTTPMobileNetworkManager *)self->_mobileNetworkManager isWiFiUsable]& 1) == 0)
  {
    if ([(FTMessageDelivery *)self logToRegistration])
    {
      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "Not retrying right now, we're in airplane mode with no wifi", &v15, 2u);
      }
    }

    self->_pendingRetryAfterAirplaneMode = 1;
    self->_retryTimeAfterAirplaneMode = interval;
  }

  else
  {
    self->_pendingRetryAfterAirplaneMode = 0;
    retryBackoffProvider = self->_retryBackoffProvider;
    if (retryBackoffProvider)
    {
      v9 = retryBackoffProvider[2](retryBackoffProvider, self->super._retries, interval);
    }

    else
    {
      v9 = 300.0;
    }

    if ([(FTMessageDelivery *)self logToRegistration])
    {
      registration3 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 134217984;
        v16 = v9;
        _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "Retrying - trying again in %f seconds", &v15, 0xCu);
      }
    }

    [(FTMessageDelivery *)self _setRetryTimer:v9];
  }

  result = v7 < 0x5A;
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)queue:(id)queue hitTimeoutForMessage:(id)message
{
  v22 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  messageCopy = message;
  if ([messageCopy wantsCFNetworkTimeout])
  {
    if ([(FTMessageDelivery *)self logToRegistration])
    {
      registration = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v19 = messageCopy;
        _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Message timed out, but we're going to wait for CFNetwork: %@", buf, 0xCu);
      }
    }

    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v19 = messageCopy;
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

  else if ([messageCopy wantsExtraTimeoutRetry] && (v10 = objc_msgSend(messageCopy, "timeoutRetries"), v10 < objc_msgSend(messageCopy, "maxTimeoutRetries")))
  {
    [messageCopy setTimeoutRetries:{objc_msgSend(messageCopy, "timeoutRetries") + 1}];
    if ([(FTMessageDelivery *)self logToRegistration])
    {
      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109634;
        *v19 = [messageCopy timeoutRetries];
        *&v19[4] = 1024;
        *&v19[6] = [messageCopy maxTimeoutRetries];
        v20 = 2112;
        v21 = messageCopy;
        _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "Message timed out, but we want extra timeout retries (%d/%d): %@", buf, 0x18u);
      }

      registration3 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v19 = 0x4000000000000000;
        _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "Retrying - trying again in %f seconds", buf, 0xCu);
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
      *v19 = messageCopy;
      _os_log_impl(&dword_195925000, v13, OS_LOG_TYPE_DEFAULT, "Queue timed out delivery for message: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        v17 = messageCopy;
        MarcoLog();
      }

      if (IMShouldLog())
      {
        v17 = messageCopy;
        IMLogString();
      }
    }

    if ([(FTMessageDelivery *)self logToRegistration])
    {
      registration4 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v19 = messageCopy;
        _os_log_impl(&dword_195925000, registration4, OS_LOG_TYPE_DEFAULT, "Queue timed out delivery for message: %@", buf, 0xCu);
      }
    }

    [(FTMessageDelivery_HTTP *)self _clearRetryTimer];
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A978] code:-1001 userInfo:0];
    self->super._retries = 0;
    [(FTMessageDelivery_HTTP *)self _notifyDelegateAboutError:v15 forMessage:messageCopy];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)cancelMessage:(id)message
{
  v20 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v17.receiver = self;
  v17.super_class = FTMessageDelivery_HTTP;
  [(FTMessageDelivery *)&v17 cancelMessage:messageCopy];
  if (messageCopy)
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = messageCopy;
      _os_log_impl(&dword_195925000, v5, OS_LOG_TYPE_DEFAULT, "Cancelling message in the queue: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        v16 = messageCopy;
        MarcoLog();
      }

      if (IMShouldLog())
      {
        v16 = messageCopy;
        IMLogString();
      }
    }

    if ([(FTMessageDelivery *)self logToRegistration])
    {
      registration = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = messageCopy;
        _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Cancelling message in the queue: %@", buf, 0xCu);
      }
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    _queue = [(FTMessageDelivery *)selfCopy _queue];
    messages = [_queue messages];
    if ([messages containsObject:messageCopy])
    {
    }

    else
    {
      currentMessage = [(FTMessageDelivery *)selfCopy currentMessage];
      v11 = currentMessage == messageCopy;

      if (!v11)
      {
LABEL_19:
        objc_sync_exit(selfCopy);

        goto LABEL_20;
      }
    }

    currentMessage2 = [(FTMessageDelivery *)selfCopy currentMessage];
    v13 = currentMessage2 == messageCopy;

    if (v13)
    {
      selfCopy->_pendingRetryAfterAirplaneMode = 0;
      [(FTMessageDelivery_HTTP *)selfCopy _cleanupURLConnection];
    }

    _queue2 = [(FTMessageDelivery *)selfCopy _queue];
    [_queue2 removeMessage:messageCopy];

    [(FTMessageDelivery_HTTP *)selfCopy _dequeueIfNeeded];
    goto LABEL_19;
  }

LABEL_20:

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)sendMessage:(id)message
{
  v18 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [messageCopy _setUsingOutgoingPush:0];
  [messageCopy setDeliveryMechanism:2];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [messageCopy setTimeSent:?];
  if ([(FTMessageDelivery *)selfCopy logToRegistration])
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = messageCopy;
      _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Adding message to the queue: %@", &v14, 0xCu);
    }
  }

  _queue = [(FTMessageDelivery *)selfCopy _queue];
  [_queue addMessage:messageCopy];

  if ([(FTMessageDelivery_HTTP *)selfCopy busy])
  {
    if ([(FTMessageDelivery *)selfCopy logToRegistration])
    {
      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        _queue2 = [(FTMessageDelivery *)selfCopy _queue];
        currentMessage = [_queue2 currentMessage];
        remoteConnection = selfCopy->_remoteConnection;
        v14 = 138412546;
        v15 = currentMessage;
        v16 = 2112;
        v17 = remoteConnection;
        _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "  Busy delivering: %@  (%@)", &v14, 0x16u);
      }
    }
  }

  else
  {
    [(FTMessageDelivery_HTTP *)selfCopy _dequeueIfNeeded];
  }

  objc_sync_exit(selfCopy);

  v12 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)sendMessageAtTopOfTheQueue:(id)queue
{
  v18 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [queueCopy setTimeSent:?];
  if ([(FTMessageDelivery *)selfCopy logToRegistration])
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = queueCopy;
      _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Adding message to the queue: %@", &v14, 0xCu);
    }
  }

  _queue = [(FTMessageDelivery *)selfCopy _queue];
  [_queue addMessageAtHeadOfQueue:queueCopy];

  if ([(FTMessageDelivery_HTTP *)selfCopy busy])
  {
    if ([(FTMessageDelivery *)selfCopy logToRegistration])
    {
      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        _queue2 = [(FTMessageDelivery *)selfCopy _queue];
        currentMessage = [_queue2 currentMessage];
        remoteConnection = selfCopy->_remoteConnection;
        v14 = 138412546;
        v15 = currentMessage;
        v16 = 2112;
        v17 = remoteConnection;
        _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "  Busy delivering: %@  (%@)", &v14, 0x16u);
      }
    }
  }

  else
  {
    [(FTMessageDelivery_HTTP *)selfCopy _dequeueIfNeeded];
  }

  objc_sync_exit(selfCopy);

  v12 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)_serverBagLoaded:(id)loaded
{
  v16 = *MEMORY[0x1E69E9840];
  loadedCopy = loaded;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(FTMessageDelivery *)selfCopy logToRegistration])
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Server bag loaded", &v12, 2u);
    }
  }

  if ([(FTMessageDelivery_HTTP *)selfCopy busy])
  {
    if ([(FTMessageDelivery *)selfCopy logToRegistration])
    {
      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        _queue = [(FTMessageDelivery *)selfCopy _queue];
        currentMessage = [_queue currentMessage];
        remoteConnection = selfCopy->_remoteConnection;
        v12 = 138412546;
        v13 = currentMessage;
        v14 = 2112;
        v15 = remoteConnection;
        _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "  Busy delivering: %@  (%@)", &v12, 0x16u);
      }
    }
  }

  else
  {
    [(FTMessageDelivery_HTTP *)selfCopy _dequeueIfNeeded];
  }

  objc_sync_exit(selfCopy);

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)authKitBAADisabled
{
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"authkit-baa-disabled"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)shouldFailFastForMessage:(id)message
{
  messageCopy = message;
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

  topic = [messageCopy topic];
  if ([topic isEqualToIgnoringCase:qword_1ED7687F8])
  {
    isConnectionSuitableForIMLOverStewie = [(_FT_IDSOffGridConnectionMonitor *)self->_offGridConnectionMonitor isConnectionSuitableForIMLOverStewie];
  }

  else
  {
    topic2 = [messageCopy topic];
    if (([topic2 isEqualToIgnoringCase:qword_1ED768808] & 1) == 0)
    {

      goto LABEL_14;
    }

    isConnectionSuitableForIMLOverStewie = [(_FT_IDSOffGridConnectionMonitor *)self->_offGridConnectionMonitor isConnectionSuitableForIMLOverStewie];
  }

  if ((isConnectionSuitableForIMLOverStewie & 1) == 0)
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
      registration = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "We're out of airplane mode, and we have a pending retry", buf, 2u);
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
      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v12 = v7;
        _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "Retrying - trying again in %f seconds", buf, 0xCu);
      }
    }

    [(FTMessageDelivery *)self _setRetryTimer:v7];
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end