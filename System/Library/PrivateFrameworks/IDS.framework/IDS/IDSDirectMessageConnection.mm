@interface IDSDirectMessageConnection
+ (BOOL)isDirectMessagingRequested:(id)a3;
- (BOOL)isMessageEligible:(id)a3 options:(id)a4 destinationDevice:(id)a5;
- (IDSDirectMessageConnection)initWithServiceName:(id)a3 queue:(id)a4 delegate:(id)a5;
- (IDSDirectMessageConnectionDelegate)delegate;
- (id)createDispatchDataForMessageSend:(id)a3 isAck:(BOOL)a4 ackMessageId:(unsigned int)add;
- (id)description;
- (unsigned)getMessageTypeForFirstMessage;
- (void)cancel;
- (void)cancelPendingAckTimer;
- (void)clearPowerAssertion;
- (void)dealloc;
- (void)dequeueMessages;
- (void)failedToSendMessage:(id)a3 responseCode:(int64_t)a4;
- (void)getPowerAssertion;
- (void)invalidate;
- (void)logConnectionStatisticsInPowerDictionary;
- (void)parseDirectMessagingState;
- (void)receiveMessages;
- (void)receivedDirectMessagingSocketWithContext:(id)a3;
- (void)resetConnection;
- (void)resumePendingAckTimer;
- (void)sendAppAckWithGUID:(id)a3;
- (void)sendMessageWithParameters:(id)a3 options:(id)a4;
- (void)setDestinationDevice:(id)a3;
- (void)setupConnectionIfApplicable;
- (void)setupIDSDeviceConnection;
- (void)startPowerLogReportTimer;
- (void)suspendPendingAckTimer;
- (void)updateConnectedDevices:(id)a3;
- (void)updateConnection:(id)a3;
- (void)updateMetadata:(id)a3;
- (void)updateTrafficClass:(unsigned __int16)a3;
@end

@implementation IDSDirectMessageConnection

- (IDSDirectMessageConnection)initWithServiceName:(id)a3 queue:(id)a4 delegate:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v29.receiver = self;
  v29.super_class = IDSDirectMessageConnection;
  v12 = [(IDSDirectMessageConnection *)&v29 init];
  v13 = v12;
  if (v12)
  {
    v12->_identifier = atomic_fetch_add(&qword_1EAEDA918, 1uLL);
    objc_storeStrong(&v12->_serviceName, a3);
    v14 = [(NSString *)v13->_serviceName stringByReplacingOccurrencesOfString:@"com.apple.private.alloy." withString:&stru_1F09E7B80];
    if ([v14 length])
    {
      v15 = malloc_type_calloc(1uLL, [v14 length] + 1, 0xFECB6B7uLL);
      v13->_shortServiceNameCString = v15;
      strlcpy(v15, [v14 UTF8String], objc_msgSend(v14, "length") + 1);
    }

    objc_storeStrong(&v13->_connectionQueue, a4);
    objc_storeWeak(&v13->_delegate, v11);
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    queueOneToMessageIDDictionary = v13->_queueOneToMessageIDDictionary;
    v13->_queueOneToMessageIDDictionary = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    messageIDToMessageDictionary = v13->_messageIDToMessageDictionary;
    v13->_messageIDToMessageDictionary = v18;

    v13->_notifyToken = -1;
    v20 = [objc_alloc(MEMORY[0x1E69A5408]) initWithServiceIdentifier:v13->_serviceName];
    serviceProperties = v13->_serviceProperties;
    v13->_serviceProperties = v20;

    v22 = v13->_serviceProperties;
    if (!v22)
    {
      [(IDSDirectMessageConnection *)v13 cancel];

      v26 = 0;
      goto LABEL_10;
    }

    v13->_dataProtectionClass = [(IDSServiceProperties *)v22 dataProtectionClass];
    assertion = v13->_assertion;
    v13->_assertion = 0;

    powerAssertionOptions = v13->_powerAssertionOptions;
    v13->_powerAssertionOptions = 0;

    *&v13->_directMessagingTimeOutMSEC = 21474836500000;
    v13->_directMessagingReportStatsMSEC = 60;
    v25 = +[IDSLogging IDSDirectMessagingConnection];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v13;
      _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, "%@ Created", buf, 0xCu);
    }
  }

  v26 = v13;
LABEL_10:

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

- (void)parseDirectMessagingState
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = +[IDSLogging IDSDirectMessagingConnection];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    directMessagingState = self->_directMessagingState;
    v10 = 138412546;
    v11 = self;
    v12 = 2048;
    v13 = directMessagingState;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "%@ parsing direct messaging state: %llu", &v10, 0x16u);
  }

  self->_directMessagingSupported = 0;
  *&self->_peerSupportsDeviceConnection = 0;
  v5 = self->_directMessagingState;
  if ((v5 & 2) != 0)
  {
    [(IDSDirectMessageConnection *)self invalidate];
    [(IDSDirectMessageConnection *)self setDestinationDevice:0];
    if (!self->_directMessagingSupported)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    self->_directMessagingSupported = 1;
  }

  v6 = self->_directMessagingState;
  if ((v6 & 4) != 0)
  {
    self->_peerSupportsDeviceConnection = 1;
  }

  if ((v6 & 8) != 0)
  {
    self->_conciseACKSupported = 1;
  }

LABEL_11:
  v7 = +[IDSLogging IDSDirectMessagingConnection];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    directMessagingSupported = self->_directMessagingSupported;
    v10 = 138412546;
    v11 = self;
    v12 = 1024;
    LODWORD(v13) = directMessagingSupported;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "%@ direct messaging supported: %d", &v10, 0x12u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = +[IDSLogging IDSDirectMessagingConnection];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    shortServiceNameCString = self->_shortServiceNameCString;
    if (!shortServiceNameCString)
    {
      shortServiceNameCString = "<unknown>";
    }

    *buf = 134218242;
    v10 = identifier;
    v11 = 2080;
    v12 = shortServiceNameCString;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "[%llu %s] Dealloc", buf, 0x16u);
  }

  [(IDSDirectMessageConnection *)self cancel];
  v6 = self->_shortServiceNameCString;
  if (v6)
  {
    free(v6);
    self->_shortServiceNameCString = 0;
  }

  v8.receiver = self;
  v8.super_class = IDSDirectMessageConnection;
  [(IDSDirectMessageConnection *)&v8 dealloc];
  v7 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"[%llu ", self->_identifier];
  shortServiceNameCString = self->_shortServiceNameCString;
  if (!shortServiceNameCString)
  {
    shortServiceNameCString = "<unknown>";
  }

  [v3 appendFormat:@"%s ", shortServiceNameCString];
  connectionState = self->_connectionState;
  [v3 appendFormat:@"%s]", nw_connection_state_to_string()];

  return v3;
}

- (void)cancel
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = +[IDSLogging IDSDirectMessagingConnection];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = self;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "%@ Cancel", &v6, 0xCu);
  }

  notifyToken = self->_notifyToken;
  if (notifyToken != -1)
  {
    notify_cancel(notifyToken);
    self->_notifyToken = -1;
  }

  [(IDSDirectMessageConnection *)self invalidate];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = +[IDSLogging IDSDirectMessagingConnection];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "%@ Invalidate", &v5, 0xCu);
  }

  [(IDSDirectMessageConnection *)self resetConnection];
  [(IDSDirectMessageConnection *)self updateMetadata:0];
  [(IDSDirectMessageConnection *)self cancelPendingAckTimer];
  [(NSMutableDictionary *)self->_messageIDToMessageDictionary removeAllObjects];
  [(NSMutableDictionary *)self->_queueOneToMessageIDDictionary removeAllObjects];
  [(NSMutableArray *)self->_connectionMessageSendQueue removeAllObjects];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)setDestinationDevice:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[IDSInternalQueueController sharedInstance];
  v7 = [v6 assertQueueIsCurrent];

  if (v7)
  {
    v8 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_195B27B10();
    }
  }

  objc_storeStrong(&self->_device, a3);
  v9 = +[IDSLogging IDSDirectMessagingConnection];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    device = self->_device;
    v12 = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = device;
    _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "%@ Updated destination device: %@", &v12, 0x16u);
  }

  if (self->_connectionIsIncoming)
  {
    self->_connectionIsIncoming = 0;
    [(IDSDirectMessageConnection *)self setupIDSDeviceConnection];
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (BOOL)isDirectMessagingRequested:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"IDSSendMessageOptionDirectMessaging"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    goto LABEL_2;
  }

  v7 = [v3 objectForKey:@"IDSSendMessageOptionFireAndForget"];
  if (![v7 BOOLValue])
  {

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v8 = _os_feature_enabled_impl();

  if ((v8 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_2:
  v6 = 1;
LABEL_8:

  return v6;
}

- (BOOL)isMessageEligible:(id)a3 options:(id)a4 destinationDevice:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[IDSInternalQueueController sharedInstance];
  v12 = [v11 assertQueueIsCurrent];

  if (v12)
  {
    v13 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_195B27BA8();
    }
  }

  if (![(IDSDirectMessageConnection *)self canUseDirectMessaging])
  {
    goto LABEL_14;
  }

  if (!self->_trafficClassInitialized)
  {
    if (v10)
    {
      goto LABEL_11;
    }

LABEL_14:
    LOBYTE(v16) = 0;
    goto LABEL_22;
  }

  trafficClassApplied = self->_trafficClassApplied;
  v15 = [v8 priority];
  LOBYTE(v16) = 0;
  if (v10 && trafficClassApplied == v15)
  {
LABEL_11:
    v17 = IDSCopyIDForDevice(v10);
    if (v17)
    {
      v18 = [v8 destinations];
      v19 = [v18 destinationURIs];
      if ([v19 containsObject:*MEMORY[0x1E69A4B50]])
      {
      }

      else
      {
        v20 = [v8 destinations];
        v21 = [v20 destinationURIs];
        v22 = [v21 containsObject:v17];

        if (!v22)
        {
          goto LABEL_20;
        }
      }

      if (([v8 allowCloudDelivery] & 1) == 0)
      {
        v23 = [v9 objectForKey:@"IDSSendMessageOptionAllowCloudDeliveryKey"];
        v24 = [v23 BOOLValue];

        if ((v24 & 1) == 0 && ([v8 nonWaking] & 1) == 0)
        {
          v25 = [v9 objectForKey:@"IDSSendMessageOptionNonWaking"];
          v26 = [v25 BOOLValue];

          if ((v26 & 1) == 0)
          {
            v28 = [v8 data];
            if (v28 || ([v8 message], (v28 = objc_claimAutoreleasedReturnValue()) != 0))
            {
            }

            else
            {
              v16 = [v8 protobuf];

              if (!v16)
              {
                goto LABEL_21;
              }
            }

            LOBYTE(v16) = [objc_opt_class() isDirectMessagingRequested:v9];
LABEL_21:

            goto LABEL_22;
          }
        }
      }
    }

LABEL_20:
    LOBYTE(v16) = 0;
    goto LABEL_21;
  }

LABEL_22:

  return v16;
}

- (void)updateConnectedDevices:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B27C40();
    }
  }

  v8 = +[IDSLogging IDSDirectMessagingConnection];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v32 = self;
    v33 = 2112;
    *v34 = v4;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%@ connected devices changed %@", buf, 0x16u);
  }

  if ([v4 count])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          v15 = [v14 _internal];
          v16 = [v15 isDefaultPairedDevice];

          if (v16)
          {
            if (!self->_device)
            {
              [(IDSDirectMessageConnection *)self setDestinationDevice:v14];
            }

            v18 = [v14 _internal];
            v19 = [v18 isConnected];

            peerIsConnected = self->_peerIsConnected;
            v17 = peerIsConnected != v19;
            if (peerIsConnected != v19)
            {
              self->_peerIsConnected = v19;
            }

            v21 = [v14 _internal];
            v22 = [v21 isNearby];

            if (self->_peerIsNearby != v22)
            {
              self->_peerIsNearby = v22;
              v17 = 1;
            }

            goto LABEL_25;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v27 objects:v37 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }

  v17 = 0;
  *&self->_peerIsConnected = 0;
LABEL_25:
  v23 = +[IDSLogging IDSDirectMessagingConnection];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    peerIsNearby = self->_peerIsNearby;
    v25 = self->_peerIsConnected;
    *buf = 138413058;
    v32 = self;
    v33 = 1024;
    *v34 = peerIsNearby;
    *&v34[4] = 1024;
    *&v34[6] = v25;
    v35 = 1024;
    v36 = v17;
    _os_log_impl(&dword_1959FF000, v23, OS_LOG_TYPE_DEFAULT, "%@ peerIsNearby %d peerIsConnected %d changed %d", buf, 0x1Eu);
  }

  if (v17)
  {
    [(IDSDirectMessageConnection *)self dequeueMessages];
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)updateMetadata:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B27CD8();
    }
  }

  v8 = +[IDSLogging IDSDirectMessagingConnection];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = self;
    v28 = 2112;
    v29 = v4;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%@ received direct-messaging metadata %@", buf, 0x16u);
  }

  if (v4)
  {
    v9 = [v4 objectForKeyedSubscript:@"directMsgAllowedForServices"];
    v10 = v9;
    if (v9)
    {
      self->_directMessagingAllowed = [v9 containsObject:self->_serviceName];
    }

    v11 = +[IDSLogging IDSDirectMessagingConnection];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      directMessagingAllowed = self->_directMessagingAllowed;
      *buf = 138412546;
      v27 = self;
      v28 = 1024;
      LODWORD(v29) = directMessagingAllowed;
      _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "%@ direct messaging allowed: %d", buf, 0x12u);
    }

    if (self->_directMessagingAllowed)
    {
      if (self->_notifyToken == -1)
      {
        objc_initWeak(buf, self);
        connectionQueue = self->_connectionQueue;
        objc_copyWeak(&v23, buf);
        im_notify_register_dispatch();
        [(IDSDirectMessageConnection *)self parseDirectMessagingState];
        objc_destroyWeak(&v23);
        objc_destroyWeak(buf);
      }

      v14 = [v4 objectForKeyedSubscript:@"peerIDForDirectMsg"];
      peerID = self->_peerID;
      self->_peerID = v14;

      v24[0] = *MEMORY[0x1E69A6020];
      v16 = [MEMORY[0x1E696AD98] numberWithInt:getpid()];
      v25[0] = v16;
      v24[1] = *MEMORY[0x1E69A6010];
      v17 = [v4 objectForKeyedSubscript:@"pidForIDSD"];
      v25[1] = v17;
      v18 = *MEMORY[0x1E69A6008];
      v24[2] = *MEMORY[0x1E69A6018];
      v24[3] = v18;
      v25[2] = @"IDSDirectMessaging";
      v25[3] = @"com.apple.ids";
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:4];
      powerAssertionOptions = self->_powerAssertionOptions;
      self->_powerAssertionOptions = v19;

      [(IDSDirectMessageConnection *)self startPowerLogReportTimer];
    }
  }

  else
  {
    self->_peerSupportsDeviceConnection = 0;
    self->_directMessagingAllowed = 0;
    v21 = self->_peerID;
    self->_peerID = 0;

    self->_conciseACKSupported = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)resetConnection
{
  self->_connectionSetupInProgress = 0;
  self->_connectionIsIncoming = 0;
  *&self->_trafficClassInitialized = 0;
  self->_trafficClassApplied = 0;
  currentStreamName = self->_currentStreamName;
  self->_currentStreamName = 0;

  deviceConnection = self->_deviceConnection;
  if (deviceConnection)
  {
    [(_IDSDeviceConnection *)deviceConnection close];
    v5 = self->_deviceConnection;
    self->_deviceConnection = 0;
  }

  connection = self->_connection;
  if (connection)
  {
    nw_connection_cancel(connection);
    v7 = self->_connection;
  }

  else
  {
    v7 = 0;
  }

  self->_connection = 0;

  self->_connectionState = 0;
  self->_upgradedTrafficClass = 0;
  [(IDSDirectMessageConnection *)self resumePendingAckTimer];
  pendingAckTimer = self->_pendingAckTimer;
  if (pendingAckTimer)
  {
    dispatch_source_cancel(pendingAckTimer);
    v9 = self->_pendingAckTimer;
    self->_pendingAckTimer = 0;

    [(IDSDirectMessageConnection *)self logConnectionStatisticsInPowerDictionary];
  }

  reporterTimer = self->_reporterTimer;
  if (reporterTimer)
  {
    dispatch_source_cancel(reporterTimer);
    v11 = self->_reporterTimer;
    self->_reporterTimer = 0;
  }

  [(IDSDirectMessageConnection *)self clearPowerAssertion];
}

- (void)updateConnection:(id)a3
{
  v5 = a3;
  p_connection = &self->_connection;
  if (self->_connection)
  {
    [(IDSDirectMessageConnection *)self resetConnection];
  }

  objc_storeStrong(&self->_connection, a3);
  if (*p_connection)
  {
    nw_connection_set_queue(*p_connection, self->_connectionQueue);
    objc_initWeak(&location, self);
    connection = self->_connection;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_195A19B38;
    handler[3] = &unk_1E743ECB0;
    objc_copyWeak(&v10, &location);
    v9 = v5;
    nw_connection_set_state_changed_handler(connection, handler);
    nw_connection_start(*p_connection);
    self->_connectionSetupInProgress = 1;

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)updateTrafficClass:(unsigned __int16)a3
{
  if (self->_connection)
  {
    MEMORY[0x1EEDD3098]();
  }
}

- (void)setupIDSDeviceConnection
{
  location[3] = *MEMORY[0x1E69E9840];
  if (self->_device)
  {
    if (!self->_currentStreamName)
    {
      v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"dmsg-%s", -[NSString UTF8String](self->_serviceName, "UTF8String")];
      currentStreamName = self->_currentStreamName;
      self->_currentStreamName = v3;
    }

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69A4F40]];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_dataProtectionClass];
    [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69A4F20]];

    [v5 setObject:self->_serviceName forKeyedSubscript:*MEMORY[0x1E69A4F50]];
    [v5 setObject:self->_currentStreamName forKeyedSubscript:*MEMORY[0x1E69A4F60]];
    [v5 setObject:&unk_1F0A29780 forKeyedSubscript:*MEMORY[0x1E69A4F38]];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_idsPriorityToUse];
    [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69A4F48]];

    [v5 setObject:&unk_1F0A29798 forKeyedSubscript:*MEMORY[0x1E69A4F10]];
    v8 = [(IDSDirectMessageConnection *)self getMessageTypeForFirstMessage];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v8];
    [v5 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69A4F30]];

    v10 = MEMORY[0x1E696AD98];
    ids_monotonic_time();
    v11 = [v10 numberWithDouble:?];
    [v5 setObject:v11 forKeyedSubscript:*MEMORY[0x1E69A4ED8]];

    self->_connectionSetupInProgress = 1;
    objc_initWeak(location, self);
    v12 = [_IDSDeviceConnection alloc];
    device = self->_device;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_195A19FC4;
    v17[3] = &unk_1E743ECD8;
    objc_copyWeak(&v18, location);
    v14 = [(_IDSDeviceConnection *)v12 initWithDevice:device options:v5 completionHandler:v17 queue:self->_connectionQueue];
    deviceConnection = self->_deviceConnection;
    self->_deviceConnection = v14;

    objc_destroyWeak(&v18);
    objc_destroyWeak(location);
  }

  else
  {
    v5 = +[IDSLogging IDSDirectMessagingConnection];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = self;
      _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "%@ Invalid device", location, 0xCu);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)receivedDirectMessagingSocketWithContext:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B27D74();
    }
  }

  v8 = +[IDSLogging IDSDirectMessagingConnection];
  v9 = v8;
  if (v4)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412546;
      v23 = self;
      v24 = 2112;
      v25 = v4;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "%@ Received context %@", &v22, 0x16u);
    }

    v10 = [v4 objectForKeyedSubscript:@"streamName"];
    v9 = v10;
    if (!v10)
    {
      v12 = +[IDSLogging IDSDirectMessagingConnection];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_195B27E0C();
      }

      goto LABEL_35;
    }

    v11 = [v10 substringFromIndex:[v10 rangeOfString:@"dmsg-"]];
    v12 = v11;
    if (self->_currentStreamName && [v11 isEqualToString:?]&& self->_connectionSetupInProgress)
    {
      v13 = +[IDSLogging IDSDirectMessagingConnection];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LOWORD(v22) = 0;
        v14 = "we are the originator";
        v15 = v13;
        v16 = OS_LOG_TYPE_INFO;
        v17 = 2;
LABEL_30:
        _os_log_impl(&dword_1959FF000, v15, v16, v14, &v22, v17);
        goto LABEL_34;
      }

      goto LABEL_34;
    }

    if (self->_connectionSetupInProgress && !self->_connection)
    {
      v13 = +[IDSLogging IDSDirectMessagingConnection];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412290;
        v23 = self;
        v14 = "%@ Ignoring incoming request as existing request is in progress";
        v15 = v13;
        v16 = OS_LOG_TYPE_DEFAULT;
        v17 = 12;
        goto LABEL_30;
      }

LABEL_34:

LABEL_35:
      goto LABEL_36;
    }

    if (self->_deviceConnection)
    {
      [(IDSDirectMessageConnection *)self resetConnection];
    }

    v18 = [v4 objectForKeyedSubscript:@"streamFlags"];
    v13 = v18;
    if (v18)
    {
      v19 = [v18 unsignedLongLongValue];
      if ((v19 & 4) != 0)
      {
        v20 = 200;
        goto LABEL_32;
      }

      if ((v19 & 8) != 0)
      {
        v20 = 300;
        goto LABEL_32;
      }

      if ((v19 & 0x10) != 0)
      {
        v20 = 100;
LABEL_32:
        self->_idsPriorityToUse = v20;
      }
    }

    objc_storeStrong(&self->_currentStreamName, v12);
    self->_connectionIsIncoming = 1;
    [(IDSDirectMessageConnection *)self setupIDSDeviceConnection];
    goto LABEL_34;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_195B27E4C();
  }

LABEL_36:

  v21 = *MEMORY[0x1E69E9840];
}

- (void)setupConnectionIfApplicable
{
  connectionMessageSendQueue = self->_connectionMessageSendQueue;
  if (connectionMessageSendQueue && [(NSMutableArray *)connectionMessageSendQueue count]&& self->_peerIsConnected && !self->_connectionSetupInProgress && self->_connectionState != 3)
  {

    [(IDSDirectMessageConnection *)self setupIDSDeviceConnection];
  }
}

- (void)receiveMessages
{
  objc_initWeak(&location, self);
  v3 = self->_connection;
  connection = self->_connection;
  completion[0] = MEMORY[0x1E69E9820];
  completion[1] = 3221225472;
  completion[2] = sub_195A1A544;
  completion[3] = &unk_1E743ED28;
  objc_copyWeak(&v8, &location);
  v5 = v3;
  v7 = v5;
  nw_connection_receive(connection, 0xCu, 0xCu, completion);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)sendAppAckWithGUID:(id)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B27F6C();
    }
  }

  v8 = objc_alloc_init(MEMORY[0x1E69A53E0]);
  v9 = [MEMORY[0x1E695DF20] dictionary];
  [v8 setMessage:v9];

  [v8 setPeerResponseIdentifier:v4];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:244];
  [v8 setCommand:v10];

  v21 = @"ids-dm-snd-params";
  v22[0] = v8;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v12 = [(IDSDirectMessageConnection *)self createDispatchDataForMessageSend:v11 isAck:0 ackMessageId:0];
  objc_initWeak(&location, self);
  connection = self->_connection;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_195A1BA94;
  v17[3] = &unk_1E743ED78;
  objc_copyWeak(&v19, &location);
  v14 = *MEMORY[0x1E6977E88];
  v15 = v4;
  v18 = v15;
  nw_connection_send(connection, v12, v14, 0, v17);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  v16 = *MEMORY[0x1E69E9840];
}

- (unsigned)getMessageTypeForFirstMessage
{
  if (![(NSMutableArray *)self->_connectionMessageSendQueue count])
  {
    return 0;
  }

  v3 = [(NSMutableArray *)self->_connectionMessageSendQueue firstObject];
  v4 = [v3 objectForKeyedSubscript:@"ids-dm-snd-params"];
  v5 = [v4 message];

  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v7 = [v4 data];

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v8 = [v4 protobuf];

      if (v8)
      {
        v6 = 5;
      }

      else
      {
        v9 = [v4 command];

        if (v9)
        {
          v10 = [v4 command];
          if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            if ([v10 integerValue] == 244)
            {
              v6 = 9;
            }

            else
            {
              v6 = 0;
            }
          }

          else
          {
            v6 = 0;
          }
        }

        else
        {
          v6 = 0;
        }
      }
    }
  }

  return v6;
}

- (id)createDispatchDataForMessageSend:(id)a3 isAck:(BOOL)a4 ackMessageId:(unsigned int)add
{
  v62 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = v8;
  if (!a4)
  {
    v10 = [v8 objectForKeyedSubscript:@"ids-dm-msg-id"];
    add = [v10 unsignedIntValue];
  }

  if (!add)
  {
    add = atomic_fetch_add(dword_1EAEDA920, 1u);
  }

  HIDWORD(v52) = add;
  v55 = v9;
  v11 = [v9 objectForKeyedSubscript:@"ids-dm-snd-params"];
  v12 = [v11 data];
  v13 = [v11 message];
  v57 = [v11 protobuf];
  v14 = [v11 messageUUID];
  v15 = [v11 peerResponseIdentifier];
  if (a4)
  {
    LODWORD(v52) = 7;
    goto LABEL_19;
  }

  v16 = [v11 command];
  if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v16 integerValue] == 244)
  {
    v17 = 9;
  }

  else if (v13)
  {
    v17 = 3;
  }

  else if (v12)
  {
    v17 = 1;
  }

  else
  {
    if (!v57)
    {
      LODWORD(v52) = 0;
      goto LABEL_18;
    }

    v17 = 5;
  }

  LODWORD(v52) = v17;
LABEL_18:

LABEL_19:
  v18 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v59 = 0;
  if ([v11 expectsPeerResponse])
  {
    v59 = 1;
    if (([v11 wantsAppAck] & 1) == 0)
    {
LABEL_25:
      LOBYTE(v58) = 3;
      v61[0] = 0x1000000;
      v20 = v18;
      [v20 appendBytes:&v58 length:1];
      [v20 appendBytes:v61 length:4];
      [v20 appendBytes:&v59 length:1];

      goto LABEL_26;
    }

    v19 = 5;
LABEL_24:
    v59 = v19;
    goto LABEL_25;
  }

  if ([v11 wantsAppAck])
  {
    v19 = 4;
    goto LABEL_24;
  }

LABEL_26:
  v56 = v13;
  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v15 dataUsingEncoding:4];
      v22 = [v21 length];
      v23 = [v21 bytes];
      LOBYTE(v58) = 4;
      v61[0] = bswap32(v22);
      v24 = v18;
      [v24 appendBytes:&v58 length:1];
      [v24 appendBytes:v61 length:4];
      [v24 appendBytes:v23 length:v22];

      v13 = v56;
    }
  }

  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [v14 length];
      v26 = [v14 bytes];
      LOBYTE(v58) = 5;
      v61[0] = bswap32(v25);
      v27 = v18;
      [v27 appendBytes:&v58 length:1];
      [v27 appendBytes:v61 length:4];
      [v27 appendBytes:v26 length:v25];
    }
  }

  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [v12 length];
      v29 = [v12 bytes];
      LOBYTE(v58) = 6;
      v61[0] = bswap32(v28);
      v30 = v18;
      [v30 appendBytes:&v58 length:1];
      [v30 appendBytes:v61 length:4];
      [v30 appendBytes:v29 length:v28];
    }
  }

  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [v13 plistData];
      v32 = [v31 length];
      v33 = [v31 bytes];
      LOBYTE(v58) = 7;
      v61[0] = bswap32(v32);
      v34 = v18;
      [v34 appendBytes:&v58 length:1];
      [v34 appendBytes:v61 length:4];
      [v34 appendBytes:v33 length:v32];
    }
  }

  if (v57)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [v57 plistData];
      v36 = [v35 length];
      v37 = [v35 bytes];
      LOBYTE(v58) = 8;
      v61[0] = bswap32(v36);
      v38 = v18;
      [v38 appendBytes:&v58 length:1];
      [v38 appendBytes:v61 length:4];
      [v38 appendBytes:v37 length:v36];
    }
  }

  if (!self->_trafficClassTLVProcessed && !self->_peerSupportsDeviceConnection)
  {
    v58 = bswap32(LOWORD(self->_trafficClassToUse)) >> 16;
    v60 = 10;
    v61[0] = 0x2000000;
    v39 = v18;
    [v39 appendBytes:&v60 length:1];
    [v39 appendBytes:v61 length:4];
    [v39 appendBytes:&v58 length:2];

    self->_trafficClassTLVProcessed = 1;
  }

  v40 = [v18 length];
  v41 = [v11 queueOneIdentifier];

  if (v41)
  {
    queueOneToMessageIDDictionary = self->_queueOneToMessageIDDictionary;
    v43 = [v11 queueOneIdentifier];
    [(NSMutableDictionary *)queueOneToMessageIDDictionary setObject:0 forKeyedSubscript:v43];
  }

  v44 = bswap32(v40);
  v45 = bswap32(v54);
  bzero(v61, 0x800uLL);
  v46 = [v18 length];
  v47 = (v46 + 12);
  v48 = v61;
  if (v47 >= 0x801)
  {
    v48 = malloc_type_malloc((v46 + 12), 0x8F9F2DECuLL);
  }

  *v48 = 1;
  *(v48 + 1) = v53;
  *(v48 + 1) = 0;
  v48[1] = v45;
  v48[2] = v44;
  memcpy(v48 + 3, [v18 bytes], objc_msgSend(v18, "length"));
  v49 = dispatch_data_create(v48, v47, self->_connectionQueue, 0);
  if (v48 != v61)
  {
    free(v48);
  }

  v50 = *MEMORY[0x1E69E9840];

  return v49;
}

- (void)cancelPendingAckTimer
{
  [(IDSDirectMessageConnection *)self resumePendingAckTimer];
  pendingAckTimer = self->_pendingAckTimer;
  if (pendingAckTimer)
  {
    dispatch_source_cancel(pendingAckTimer);
    v4 = self->_pendingAckTimer;
    self->_pendingAckTimer = 0;
  }

  self->_pendingAckTimerSuspended = 0;
}

- (void)resumePendingAckTimer
{
  if (self->_pendingAckTimerSuspended)
  {
    pendingAckTimer = self->_pendingAckTimer;
    if (pendingAckTimer)
    {
      dispatch_resume(pendingAckTimer);
      self->_pendingAckTimerSuspended = 0;
    }
  }
}

- (void)suspendPendingAckTimer
{
  if (!self->_pendingAckTimerSuspended)
  {
    pendingAckTimer = self->_pendingAckTimer;
    if (pendingAckTimer)
    {
      dispatch_suspend(pendingAckTimer);
      self->_pendingAckTimerSuspended = 1;
    }
  }
}

- (void)failedToSendMessage:(id)a3 responseCode:(int64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:@"ids-dm-msg-guid"];
    v9 = [v7 objectForKeyedSubscript:@"ids-dm-msg-id"];
    v10 = +[IDSLogging IDSDirectMessagingConnection];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = v8;
      v19 = 2048;
      v20 = a4;
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "Message %@ failed to send due to %ld", &v17, 0x16u);
    }

    v11 = [(NSMutableDictionary *)self->_messageIDToMessageDictionary objectForKeyedSubscript:v9];

    if (v11)
    {
      v12 = [(IDSDirectMessageConnection *)self delegate];

      if (v12)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained connection:self messageSendFailed:v8 responseCode:a4];
      }

      [(NSMutableDictionary *)self->_messageIDToMessageDictionary setObject:0 forKeyedSubscript:v9];
    }

    [(NSMutableArray *)self->_connectionMessageSendQueue removeObject:v7];
    v14 = [v7 objectForKeyedSubscript:@"ids-dm-snd-params"];
    v15 = [v14 queueOneIdentifier];
    if (v15)
    {
      [(NSMutableDictionary *)self->_queueOneToMessageIDDictionary setObject:0 forKeyedSubscript:v15];
    }

    [(IDSDirectMessageConnection *)self clearPowerAssertion];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)sendMessageWithParameters:(id)a3 options:(id)a4
{
  v60 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[IDSInternalQueueController sharedInstance];
  v9 = [v8 assertQueueIsCurrent];

  if (v9)
  {
    v10 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_195B28274();
    }
  }

  if ([v6 priority] == 300 && (-[IDSServiceProperties allowUrgentMessages](self->_serviceProperties, "allowUrgentMessages") & 1) == 0)
  {
    [v6 setPriority:200];
    v11 = +[IDSLogging IDSDirectMessagingConnection];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      identifier = self->_identifier;
      if (self->_shortServiceNameCString)
      {
        shortServiceNameCString = self->_shortServiceNameCString;
      }

      else
      {
        shortServiceNameCString = "<unknown>";
      }

      v14 = [v6 identifier];
      serviceName = self->_serviceName;
      *buf = 134218754;
      v53 = identifier;
      v54 = 2080;
      v55 = shortServiceNameCString;
      v56 = 2112;
      v57 = v14;
      v58 = 2112;
      v59 = serviceName;
      _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "[%llu %s] Downgrading priority of message with guid %@ to Default from Urgent, client %@ is not configured to send urgent messages", buf, 0x2Au);
    }
  }

  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v16 setObject:v6 forKeyedSubscript:@"ids-dm-snd-params"];
  [v16 setObject:v7 forKeyedSubscript:@"ids-dm-options"];
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:mach_continuous_time()];
  [v16 setObject:v17 forKeyedSubscript:@"ids-dm-snd-time"];

  v18 = MEMORY[0x1E696AD98];
  atomic_fetch_add(dword_1EAEDA920, 1u);
  v19 = [v18 numberWithUnsignedInt:?];
  [v16 setObject:v19 forKeyedSubscript:@"ids-dm-msg-id"];
  v20 = [v6 identifier];
  [v16 setObject:v20 forKeyedSubscript:@"ids-dm-msg-guid"];

  [(NSMutableDictionary *)self->_messageIDToMessageDictionary setObject:v16 forKeyedSubscript:v19];
  v21 = +[IDSLogging IDSDirectMessagingConnection];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = self->_identifier;
    if (self->_shortServiceNameCString)
    {
      v23 = self->_shortServiceNameCString;
    }

    else
    {
      v23 = "<unknown>";
    }

    v24 = [v6 identifier];
    *buf = 134218754;
    v53 = v22;
    v54 = 2080;
    v55 = v23;
    v56 = 2112;
    v57 = v24;
    v58 = 2112;
    v59 = v7;
    _os_log_impl(&dword_1959FF000, v21, OS_LOG_TYPE_DEFAULT, "[%llu %s] Client requesting to send message with guid %@ options %@", buf, 0x2Au);
  }

  if (!self->_connectionMessageSendQueue)
  {
    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    connectionMessageSendQueue = self->_connectionMessageSendQueue;
    self->_connectionMessageSendQueue = v25;
  }

  v27 = [(IDSDevice *)self->_device _internal];
  if (([v27 relationship] & 2) == 0)
  {

    goto LABEL_23;
  }

  v28 = [(IDSServiceProperties *)self->_serviceProperties wantsTinkerDevices];

  if (v28)
  {
LABEL_23:
    if (!self->_trafficClassInitialized)
    {
      *&self->_idsPriorityToUse = vdupq_n_s64(0xC8uLL);
      if ([v6 priority] == 300)
      {
        self->_trafficClassToUse = 700;
        self->_idsPriorityToUse = 300;
        self->_trafficClassApplied = [v6 priority];
      }

      if ([v6 priority] == 100)
      {
        self->_trafficClassToUse = 200;
        self->_idsPriorityToUse = 100;
        self->_trafficClassApplied = [v6 priority];
      }

      self->_trafficClassInitialized = 1;
    }

    if (!self->_pendingAckTimer)
    {
      v29 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_connectionQueue);
      v30 = dispatch_time(0, 2000000000);
      dispatch_source_set_timer(v29, v30, 0x77359400uLL, 0x5F5E100uLL);
      objc_initWeak(buf, self);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = sub_195A1D138;
      handler[3] = &unk_1E743EDC8;
      objc_copyWeak(&v51, buf);
      v31 = v29;
      v50 = v31;
      dispatch_source_set_event_handler(v31, handler);
      dispatch_resume(v31);
      pendingAckTimer = self->_pendingAckTimer;
      self->_pendingAckTimer = v31;
      v33 = v31;

      self->_pendingAckTimerSuspended = 0;
      objc_destroyWeak(&v51);
      objc_destroyWeak(buf);
    }

    [(IDSDirectMessageConnection *)self resumePendingAckTimer];
    v34 = [v6 queueOneIdentifier];
    if (v34)
    {
      v35 = [(NSMutableDictionary *)self->_queueOneToMessageIDDictionary objectForKeyedSubscript:v34];
      if (v35)
      {
        v36 = v35;
        v37 = [(NSMutableDictionary *)self->_messageIDToMessageDictionary objectForKeyedSubscript:v35];
        if (v37)
        {
          v38 = [(NSMutableArray *)self->_connectionMessageSendQueue indexOfObject:v37];
          if (v38 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v41 = v38;
            v42 = +[IDSLogging IDSDirectMessagingConnection];
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              v43 = self->_shortServiceNameCString;
              v47 = self->_identifier;
              if (!v43)
              {
                v43 = "<unknown>";
              }

              v46 = v43;
              v48 = [v37 objectForKeyedSubscript:@"ids-dm-msg-guid"];
              v45 = [v6 identifier];
              *buf = 134218754;
              v53 = v47;
              v54 = 2080;
              v55 = v46;
              v56 = 2112;
              v57 = v48;
              v58 = 2112;
              v59 = v45;
              _os_log_impl(&dword_1959FF000, v42, OS_LOG_TYPE_DEFAULT, "[%llu %s] Replacing guid: %@ with guid: %@", buf, 0x2Au);
            }

            [(NSMutableArray *)self->_connectionMessageSendQueue replaceObjectAtIndex:v41 withObject:v16];
            [(NSMutableDictionary *)self->_messageIDToMessageDictionary setObject:0 forKeyedSubscript:v36];

            v44 = [v16 objectForKeyedSubscript:@"ids-dm-msg-id"];
            [(NSMutableDictionary *)self->_queueOneToMessageIDDictionary setObject:v44 forKeyedSubscript:v34];

            goto LABEL_40;
          }
        }

        v39 = [v16 objectForKeyedSubscript:@"ids-dm-msg-id"];
        [(NSMutableDictionary *)self->_queueOneToMessageIDDictionary setObject:v39 forKeyedSubscript:v34];
      }

      else
      {
        v36 = [v16 objectForKeyedSubscript:@"ids-dm-msg-id"];
        [(NSMutableDictionary *)self->_queueOneToMessageIDDictionary setObject:v36 forKeyedSubscript:v34];
      }
    }

    [(NSMutableArray *)self->_connectionMessageSendQueue addObject:v16];
LABEL_40:
    [(IDSDirectMessageConnection *)self dequeueMessages];

    goto LABEL_41;
  }

  [(IDSDirectMessageConnection *)self failedToSendMessage:v16 responseCode:32];
LABEL_41:

  v40 = *MEMORY[0x1E69E9840];
}

- (void)dequeueMessages
{
  if ([(IDSDirectMessageConnection *)self canUseDirectMessaging])
  {
    [(IDSDirectMessageConnection *)self setupConnectionIfApplicable];
    connectionMessageSendQueue = self->_connectionMessageSendQueue;
    if (connectionMessageSendQueue)
    {
      if ([(NSMutableArray *)connectionMessageSendQueue count]&& self->_connectionState == 3 && self->_peerIsConnected)
      {
        [(IDSDirectMessageConnection *)self getPowerAssertion];
        v4 = [(NSMutableArray *)self->_connectionMessageSendQueue firstObject];
        v5 = [v4 objectForKeyedSubscript:@"ids-dm-msg-id"];
        v6 = [v5 unsignedIntValue];
        v7 = [v4 objectForKeyedSubscript:@"ids-dm-snd-params"];
        v8 = [v7 identifier];
        objc_initWeak(&location, self);
        if ([v7 requireBluetooth] && !self->_peerIsNearby)
        {
          [(NSMutableArray *)self->_connectionMessageSendQueue removeFirstObject];
          connectionQueue = self->_connectionQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_195A1D694;
          block[3] = &unk_1E743EDC8;
          objc_copyWeak(&v20, &location);
          v19 = v4;
          dispatch_async(connectionQueue, block);

          objc_destroyWeak(&v20);
        }

        else
        {
          v9 = [(IDSDirectMessageConnection *)self createDispatchDataForMessageSend:v4 isAck:0 ackMessageId:0];
          size = dispatch_data_get_size(v9);
          [(NSMutableArray *)self->_connectionMessageSendQueue removeFirstObject];
          connection = self->_connection;
          v12 = *MEMORY[0x1E6977E88];
          completion[0] = MEMORY[0x1E69E9820];
          completion[1] = 3221225472;
          completion[2] = sub_195A1D6F4;
          completion[3] = &unk_1E743EDF0;
          objc_copyWeak(v16, &location);
          v17 = v6;
          v15 = v8;
          v16[1] = size;
          nw_connection_send(connection, v9, v12, 0, completion);

          objc_destroyWeak(v16);
        }

        objc_destroyWeak(&location);
      }
    }
  }
}

- (void)getPowerAssertion
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_assertion)
  {
LABEL_2:
    v2 = *MEMORY[0x1E69E9840];
    return;
  }

  if (!self->_powerAssertionOptions)
  {
    v10 = +[IDSLogging IDSDirectMessagingConnection];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      identifier = self->_identifier;
      shortServiceNameCString = self->_shortServiceNameCString;
      if (!shortServiceNameCString)
      {
        shortServiceNameCString = "<unknown>";
      }

      *buf = 134218242;
      v15 = identifier;
      v16 = 2080;
      v17 = shortServiceNameCString;
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "[%llu %s] Error! powerAssertionOptions is nil. Cannot get power assertion.", buf, 0x16u);
    }

    goto LABEL_2;
  }

  v4 = objc_alloc(MEMORY[0x1E69A6130]);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ids-dm-%@", self->_serviceName];
  powerAssertionOptions = self->_powerAssertionOptions;
  v13 = v5;
  v7 = [v4 initWithIdentifier:40.0 timeoutSec:? properties:?];
  assertion = self->_assertion;
  self->_assertion = v7;

  v9 = *MEMORY[0x1E69E9840];
}

- (void)clearPowerAssertion
{
  if (self->_assertion)
  {
    messageIDToMessageDictionary = self->_messageIDToMessageDictionary;
    if (messageIDToMessageDictionary)
    {
      if ([(NSMutableDictionary *)messageIDToMessageDictionary count])
      {
        return;
      }

      assertion = self->_assertion;
    }

    self->_assertion = 0;

    MEMORY[0x1EEE66BB8]();
  }
}

- (void)startPowerLogReportTimer
{
  reporterTimer = self->_reporterTimer;
  if (reporterTimer)
  {
    dispatch_source_cancel(reporterTimer);
  }

  v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_connectionQueue);
  v5 = self->_reporterTimer;
  self->_reporterTimer = v4;

  v6 = self->_reporterTimer;
  v7 = dispatch_time(0, 100000000);
  dispatch_source_set_timer(v6, v7, 1000000000 * self->_directMessagingReportStatsMSEC, 0x5F5E100uLL);
  objc_initWeak(&location, self);
  v8 = self->_reporterTimer;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_195A1DB08;
  v9[3] = &unk_1E743EE18;
  objc_copyWeak(&v10, &location);
  dispatch_source_set_event_handler(v8, v9);
  dispatch_resume(self->_reporterTimer);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)logConnectionStatisticsInPowerDictionary
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF20]);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ids-dm-%@", self->_serviceName];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_outgoingMessageBytes];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_outgoingMessageCount];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_incomingMessageBytes];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_incomingMessageCount];
  v9 = [v3 initWithObjectsAndKeys:{v4, @"IDSLocalStatisticsCategory", v5, @"IDSLocalOutgoingMessageBytes", v6, @"IDSLocalOutgoingMessages", v7, @"IDSLocalIncomingMessageBytes", v8, @"IDSLocalIncomingMessages", 0}];

  IDSPowerLogDictionary();
  v10 = +[IDSLogging IDSDirectMessagingConnection];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    shortServiceNameCString = self->_shortServiceNameCString;
    if (!shortServiceNameCString)
    {
      shortServiceNameCString = "<unknown>";
    }

    *buf = 134218498;
    v15 = identifier;
    v16 = 2080;
    v17 = shortServiceNameCString;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "[%llu %s] logConnectionStatisticsInPowerDictionary: %@", buf, 0x20u);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (IDSDirectMessageConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end