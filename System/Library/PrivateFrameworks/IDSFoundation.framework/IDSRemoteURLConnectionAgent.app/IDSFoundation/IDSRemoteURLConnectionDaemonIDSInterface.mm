@interface IDSRemoteURLConnectionDaemonIDSInterface
+ (id)sharedInstance;
- (BOOL)isNearby;
- (BOOL)sendIDSMessage:(id)message forLoaderWithUniqueID:(id)d;
- (IDSRemoteURLConnectionDaemonIDSInterface)init;
- (void)_handleCancelMessage:(id)message;
- (void)_handleLoadRequestMessage:(id)message;
- (void)_handleLoadRequestResponseMessage:(id)message;
- (void)dealloc;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service didSwitchActivePairedDevice:(id)device acknowledgementBlock:(id)block;
@end

@implementation IDSRemoteURLConnectionDaemonIDSInterface

+ (id)sharedInstance
{
  if (qword_100015690 != -1)
  {
    sub_1000079BC();
  }

  v3 = qword_100015698;

  return v3;
}

- (IDSRemoteURLConnectionDaemonIDSInterface)init
{
  v6.receiver = self;
  v6.super_class = IDSRemoteURLConnectionDaemonIDSInterface;
  v2 = [(IDSRemoteURLConnectionDaemonIDSInterface *)&v6 init];
  if (v2)
  {
    v3 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.idsremoteurlconnection"];
    idsService = v2->_idsService;
    v2->_idsService = v3;

    [(IDSService *)v2->_idsService addDelegate:v2 queue:&_dispatch_main_q];
  }

  return v2;
}

- (void)dealloc
{
  [(IDSService *)self->_idsService removeDelegate:self];
  v3.receiver = self;
  v3.super_class = IDSRemoteURLConnectionDaemonIDSInterface;
  [(IDSRemoteURLConnectionDaemonIDSInterface *)&v3 dealloc];
}

- (BOOL)isNearby
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  devices = [(IDSService *)self->_idsService devices];
  v3 = [devices countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(devices);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isDefaultPairedDevice])
        {
          LOBYTE(v3) = [v6 isNearby];
          goto LABEL_11;
        }
      }

      v3 = [devices countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)sendIDSMessage:(id)message forLoaderWithUniqueID:(id)d
{
  messageCopy = message;
  dCopy = d;
  v8 = JWEncodeDictionary();
  _CUTCopyGzippedData = [v8 _CUTCopyGzippedData];
  v10 = objc_alloc_init(NSMutableDictionary);
  CFDictionarySetValue(v10, IDSSendMessageOptionLocalDeliveryKey, &__kCFBooleanTrue);
  CFDictionarySetValue(v10, IDSSendMessageOptionEnforceRemoteTimeoutsKey, &__kCFBooleanFalse);
  idsService = self->_idsService;
  v12 = [NSSet setWithObject:IDSDefaultPairedDevice];
  v22 = 0;
  v23 = 0;
  v13 = [(IDSService *)idsService sendData:_CUTCopyGzippedData toDestinations:v12 priority:300 options:v10 identifier:&v23 error:&v22];
  v14 = v23;
  v15 = v22;

  v16 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = @"NO";
    if (v13)
    {
      v17 = @"YES";
    }

    *buf = 138412546;
    v25 = messageCopy;
    v26 = 2112;
    v27 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Sending message to local account (messageDict %@) success: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v18 = v13 ^ 1;
  if (!dCopy)
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0)
  {
    if (!self->_messageIDToLoaderUniqueIDMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      messageIDToLoaderUniqueIDMap = self->_messageIDToLoaderUniqueIDMap;
      self->_messageIDToLoaderUniqueIDMap = Mutable;
    }

    CFDictionarySetValue(self->_messageIDToLoaderUniqueIDMap, v14, dCopy);
  }

  return v13;
}

- (void)_handleLoadRequestMessage:(id)message
{
  messageCopy = message;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = messageCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received load request message: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v31 = messageCopy;
    _IDSLogV();
  }

  v33 = [messageCopy objectForKey:{IDSRemoteURLConnectionKeyRequest, v31}];
  v6 = [messageCopy objectForKey:IDSRemoteURLConnectionKeyTryForceCellular];
  [v6 BOOLValue];

  v7 = [messageCopy objectForKey:IDSRemoteURLConnectionKeyRequireIDSHost];
  [v7 BOOLValue];

  v8 = [messageCopy objectForKey:IDSRemoteURLConnectionKeyVersion];
  intValue = [v8 intValue];

  v10 = [messageCopy objectForKey:IDSRemoteURLConnectionShouldUsePipelining];
  [v10 BOOLValue];

  v11 = [messageCopy objectForKey:IDSRemoteURLConnectionConcurrentConnections];
  [v11 intValue];

  v12 = [messageCopy objectForKey:IDSRemoteURLConnectionDisableKeepAlive];
  [v12 BOOLValue];

  v13 = [messageCopy objectForKey:IDSRemoteURLConnectionKeepAliveWifi];
  [v13 intValue];

  v14 = [messageCopy objectForKey:IDSRemoteURLConnectionKeepAliveCell];
  [v14 intValue];

  if (intValue <= 0)
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "We received a request from a local device which did not have a request version specified, we will not allow this to require IDS host", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

  objc_opt_class();
  v16 = JWDecodeKeyedCodableObjectWithSecureCoding();
  if (v16)
  {
    v17 = [messageCopy objectForKey:IDSRemoteURLConnectionKeyDataUsageBundleIdentifier];
    v18 = [messageCopy objectForKey:IDSRemoteURLConnectionKeyUniqueID];
    pendingResponseUniqueIDs = self->_pendingResponseUniqueIDs;
    if (!pendingResponseUniqueIDs)
    {
      v20 = objc_alloc_init(NSMutableSet);
      v21 = self->_pendingResponseUniqueIDs;
      self->_pendingResponseUniqueIDs = v20;

      pendingResponseUniqueIDs = self->_pendingResponseUniqueIDs;
    }

    [(NSMutableSet *)pendingResponseUniqueIDs addObject:v18];
    v22 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = self->_pendingResponseUniqueIDs;
      *buf = 138412546;
      v41 = v18;
      v42 = 2112;
      v43 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Added uniqueID %@ to _pendingResponseUniqueIDs. New map: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v32 = self->_pendingResponseUniqueIDs;
      _IDSLogV();
    }

    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100005440;
    v36[3] = &unk_100010790;
    v36[4] = self;
    v37 = v18;
    v24 = v16;
    v38 = v24;
    v25 = v17;
    v39 = v25;
    v26 = v18;
    v27 = [v36 copy];
    v35 = v25;
    v34 = v24;
    v28 = v25;
    v29 = v27;
    im_dispatch_after_primary_queue();
  }

  else
  {
    v30 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = messageCopy;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Unable to decode request -- ignoring! {message: %@}", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (void)_handleLoadRequestResponseMessage:(id)message
{
  messageCopy = message;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = messageCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received load request response message: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v18 = messageCopy;
    _IDSLogV();
  }

  v23 = [messageCopy objectForKey:{IDSRemoteURLConnectionKeyHeaders, v18}];
  v22 = [messageCopy objectForKey:IDSRemoteURLConnectionKeyURL];
  v21 = [messageCopy objectForKey:IDSRemoteURLConnectionKeyHTTPVersion];
  v5 = [messageCopy objectForKey:IDSRemoteURLConnectionKeyResponseStatusCode];
  integerValue = [v5 integerValue];

  v20 = [messageCopy objectForKey:IDSRemoteURLConnectionKeyResultData];
  v7 = [messageCopy objectForKey:IDSRemoteURLConnectionKeyResponseError];
  objc_opt_class();
  v19 = JWDecodeKeyedCodableObjectWithSecureCoding();
  objc_opt_class();
  v8 = JWDecodeKeyedCodableObjectWithSecureCoding();
  objc_opt_class();
  v9 = JWDecodeKeyedCodableObjectWithSecureCoding();
  v10 = [messageCopy objectForKey:IDSRemoteURLConnectionKeyUniqueID];
  v11 = +[IDSRemoteURLConnectionDaemon sharedInstance];
  v12 = [v11 urlLoaderForUniqueID:v10];

  if (v12)
  {
    block = [v12 block];
    v14 = [block copy];

    if (v14)
    {
      v15 = [[NSHTTPURLResponse alloc] initWithURL:v8 statusCode:integerValue HTTPVersion:v21 headerFields:v19];
      v14[2](v14, v15, integerValue, v20, v9, 0);
    }

    v16 = +[IDSRemoteURLConnectionDaemon sharedInstance];
    [v16 removeURLLoaderForUniqueID:v10];
  }

  else
  {
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v10;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No URLLoader for uniqueID %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (void)_handleCancelMessage:(id)message
{
  messageCopy = message;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = messageCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received cancel message: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v11 = messageCopy;
    _IDSLogV();
  }

  v6 = [messageCopy objectForKey:{IDSRemoteURLConnectionKeyUniqueID, v11}];
  v7 = +[IDSRemoteURLConnectionDaemon sharedInstance];
  v8 = [v7 urlLoaderForUniqueID:v6];

  if (v8)
  {
    [v8 cancel];
  }

  else
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No URLLoader for uniqueID %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v12 = v6;
      _IDSLogV();
    }
  }

  v10 = +[IDSRemoteURLConnectionDaemon sharedInstance];
  [v10 removeURLLoaderForUniqueID:v6];

  [(NSMutableSet *)self->_pendingResponseUniqueIDs removeObject:v6];
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  dataCopy = data;
  dCopy = d;
  contextCopy = context;
  v17 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v29 = serviceCopy;
    v30 = 2112;
    v31 = accountCopy;
    v32 = 2112;
    v33 = dataCopy;
    v34 = 2112;
    v35 = dCopy;
    v36 = 2112;
    v37 = contextCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "incomingData on service %@, account %@ data %@ fromID %@ context %@", buf, 0x34u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v26 = dCopy;
    v27 = contextCopy;
    v24 = accountCopy;
    v25 = dataCopy;
    v23 = serviceCopy;
    _IDSLogV();
  }

  _CUTOptionallyDecompressData = [dataCopy _CUTOptionallyDecompressData];
  v19 = JWDecodeDictionary();
  v20 = [v19 objectForKey:IDSRemoteURLConnectionKeyCommand];
  unsignedIntValue = [v20 unsignedIntValue];

  switch(unsignedIntValue)
  {
    case 3u:
      [(IDSRemoteURLConnectionDaemonIDSInterface *)self _handleCancelMessage:v19];
      break;
    case 2u:
      [(IDSRemoteURLConnectionDaemonIDSInterface *)self _handleLoadRequestResponseMessage:v19];
      break;
    case 1u:
      [(IDSRemoteURLConnectionDaemonIDSInterface *)self _handleLoadRequestMessage:v19];
      break;
    default:
      v22 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v29) = unsignedIntValue;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Unknown command %d, ignoring...", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      break;
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  v16 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = @"NO";
    if (successCopy)
    {
      v17 = @"YES";
    }

    *buf = 138412546;
    v33 = identifierCopy;
    v34 = 2112;
    v35 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "didSendWithSuccess %@ success %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v18 = @"NO";
    if (successCopy)
    {
      v18 = @"YES";
    }

    v28 = identifierCopy;
    v29 = v18;
    _IDSLogV();
  }

  v19 = [(NSMutableDictionary *)self->_messageIDToLoaderUniqueIDMap objectForKey:identifierCopy, v28, v29];
  [(NSMutableDictionary *)self->_messageIDToLoaderUniqueIDMap removeObjectForKey:identifierCopy];
  if ([(__CFString *)v19 length])
  {
    if (successCopy)
    {
      v30 = v19;
      v31 = identifierCopy;
      im_dispatch_after_primary_queue();
    }

    else
    {
      v21 = +[IDSRemoteURLConnectionDaemon sharedInstance];
      v22 = [v21 urlLoaderForUniqueID:v19];

      if (v22)
      {
        block = [v22 block];
        v24 = [block copy];

        if (v24)
        {
          v25 = [NSError errorWithDomain:IDSRemoteURLConnectionErrorDomain code:1 userInfo:0];
          (*(v24 + 2))(v24, 0, 0, 0, v25, 0);
        }

        v26 = +[IDSRemoteURLConnectionDaemon sharedInstance];
        [v26 removeURLLoaderForUniqueID:v19];
      }

      else
      {
        v27 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v33 = v19;
          v34 = 2112;
          v35 = identifierCopy;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "No URLLoader for uniqueID %@ message ID %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }

  else
  {
    v20 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Did not find loader ID for identifier %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (void)service:(id)service didSwitchActivePairedDevice:(id)device acknowledgementBlock:(id)block
{
  serviceCopy = service;
  deviceCopy = device;
  blockCopy = block;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "didSwitchActivePairedDevice %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v15 = deviceCopy;
    _IDSLogV();
  }

  if ([(NSMutableSet *)self->_pendingResponseUniqueIDs count])
  {
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      pendingResponseUniqueIDs = self->_pendingResponseUniqueIDs;
      *buf = 138412290;
      v18 = pendingResponseUniqueIDs;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Dropping all pending responses for previously active watch. _pendingResponseUniqueIDs: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v16 = self->_pendingResponseUniqueIDs;
      _IDSLogV();
    }

    v14 = +[IDSRemoteURLConnectionDaemon sharedInstance];
    [v14 removeURLLoadersForUniqueIDs:self->_pendingResponseUniqueIDs];

    [(NSMutableSet *)self->_pendingResponseUniqueIDs removeAllObjects];
  }

  blockCopy[2](blockCopy);
}

@end