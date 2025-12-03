@interface NMDeviceConnection
- (BOOL)_shouldIncludeTemporaryLocationAuthorizationWithMessage:(id)message;
- (NMDeviceConnection)init;
- (id)_idsOptionsForMessage:(id)message withOptions:(id)options;
- (id)_nearbyConnectedDevice;
- (int64_t)_priorityForMessage:(id)message;
- (unint64_t)_determineProtocolVersion:(id)version;
- (unint64_t)protocolVersion;
- (void)_dequeueNextMessageIfNecessaryForType:(int)type;
- (void)_sendMessage:(id)message options:(id)options force:(BOOL)force timeSpentEnqueued:(double)enqueued withReply:(id)reply;
- (void)_sendReply:(id)reply forMessage:(id)message options:(id)options force:(BOOL)force timeSpentEnqueued:(double)enqueued;
- (void)_unpauseAllQueues;
- (void)_updateReceiverProcessUUID:(id)d;
- (void)sendMessage:(id)message options:(id)options withReply:(id)reply;
- (void)sendReply:(id)reply forMessage:(id)message options:(id)options;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)suspend;
- (void)test_disconnect;
- (void)test_reconnect;
- (void)updateConnectionStatus;
@end

@implementation NMDeviceConnection

- (unint64_t)protocolVersion
{
  result = self->_protocolVersion;
  if (!result)
  {
    v4 = +[NRPairedDeviceRegistry sharedInstance];
    getActivePairedDevice = [v4 getActivePairedDevice];

    if (getActivePairedDevice)
    {
      self->_protocolVersion = [(NMDeviceConnection *)self _determineProtocolVersion:getActivePairedDevice];

      return self->_protocolVersion;
    }

    else
    {
      return 6;
    }
  }

  return result;
}

- (NMDeviceConnection)init
{
  v31.receiver = self;
  v31.super_class = NMDeviceConnection;
  v2 = [(NMDeviceConnection *)&v31 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_initially_inactive(v3);
    v5 = dispatch_queue_create("com.apple.maps.deviceconnection", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.maps.proxy"];
    idsService = v2->_idsService;
    v2->_idsService = v7;

    [(IDSService *)v2->_idsService addDelegate:v2 queue:v2->_queue];
    v9 = objc_alloc_init(NSMutableDictionary);
    replyCallbackBlocks = v2->_replyCallbackBlocks;
    v2->_replyCallbackBlocks = v9;

    v11 = objc_alloc_init(NSMutableDictionary);
    replyExpectingMessageMetadata = v2->_replyExpectingMessageMetadata;
    v2->_replyExpectingMessageMetadata = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    messageObservers = v2->_messageObservers;
    v2->_messageObservers = v13;

    v15 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___NMDeviceConnectionObserver queue:0];
    observers = v2->_observers;
    v2->_observers = v15;

    v17 = objc_alloc_init(NSLock);
    replyCallbackBlocksLock = v2->_replyCallbackBlocksLock;
    v2->_replyCallbackBlocksLock = v17;

    v19 = objc_alloc_init(NSLock);
    observersLock = v2->_observersLock;
    v2->_observersLock = v19;

    v21 = objc_alloc_init(NSRecursiveLock);
    messageQueuesLock = v2->_messageQueuesLock;
    v2->_messageQueuesLock = v21;

    v23 = objc_alloc_init(NSMutableDictionary);
    messageQueues = v2->_messageQueues;
    v2->_messageQueues = v23;

    v25 = objc_alloc_init(NSMutableDictionary);
    inFlightMessageMetadata = v2->_inFlightMessageMetadata;
    v2->_inFlightMessageMetadata = v25;

    v27 = objc_alloc_init(NSLock);
    receiverProcessUUIDLock = v2->_receiverProcessUUIDLock;
    v2->_receiverProcessUUIDLock = v27;

    [(NMDeviceConnection *)v2 updateConnectionStatus];
    v29 = v2;
  }

  return v2;
}

- (void)suspend
{
  if (self->_queue)
  {
    v3 = sub_100053434();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "SIGTERM received. Suspending device connection.", v4, 2u);
    }

    dispatch_suspend(self->_queue);
  }
}

- (void)_updateReceiverProcessUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    [(NSLock *)self->_receiverProcessUUIDLock lock];
    if ([(NSString *)self->_receiverProcessUUID isEqualToString:dCopy])
    {
      [(NSLock *)self->_receiverProcessUUIDLock unlock];
    }

    else
    {
      v6 = sub_100001B24();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        receiverProcessUUID = self->_receiverProcessUUID;
        v8 = 138478083;
        v9 = receiverProcessUUID;
        v10 = 2113;
        v11 = dCopy;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Receiver process UUID changed (old: %{private}@, new: %{private}@). Requesting clients re-sync state if necessary.", &v8, 0x16u);
      }

      objc_storeStrong(&self->_receiverProcessUUID, d);
      [(NSLock *)self->_receiverProcessUUIDLock unlock];
      [(GEOObserverHashTable *)self->_observers connectionNeedsStateSynchronization:self];
    }
  }
}

- (id)_nearbyConnectedDevice
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
        if ([v6 isDefaultPairedDevice] && (objc_msgSend(v6, "isConnected") & 1) != 0)
        {
          v3 = v6;
          goto LABEL_12;
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

LABEL_12:

  return v3;
}

- (id)_idsOptionsForMessage:(id)message withOptions:(id)options
{
  messageCopy = message;
  optionsCopy = options;
  v8 = IDSSendMessageOptionBypassDuetKey;
  v22[0] = IDSSendMessageOptionEnforceRemoteTimeoutsKey;
  v22[1] = IDSSendMessageOptionBypassDuetKey;
  v23[0] = &__kCFBooleanTrue;
  v23[1] = &__kCFBooleanTrue;
  v9 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
  v10 = [v9 mutableCopy];

  v11 = [optionsCopy objectForKey:@"NMSendMessageOptionTimeout"];

  if (v11)
  {
    v12 = [optionsCopy objectForKeyedSubscript:@"NMSendMessageOptionTimeout"];
    [v10 setObject:v12 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];
  }

  v13 = [optionsCopy objectForKey:@"NMSendMessageOptionMapTile"];
  bOOLValue = [v13 BOOLValue];

  if (bOOLValue)
  {
    [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionMapTileKey];
  }

  v15 = [optionsCopy objectForKey:@"NMSendMessageOptionFireAndForget"];
  if (!v15 || (v16 = v15, [optionsCopy objectForKey:@"NMSendMessageOptionFireAndForget"], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "BOOLValue"), v17, v16, v18))
  {
    [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionFireAndForgetKey];
  }

  v19 = [optionsCopy objectForKeyedSubscript:@"NMSendMessageOptionDisableIDSCompressionKey"];
  bOOLValue2 = [v19 BOOLValue];

  if (bOOLValue2)
  {
    [v10 setObject:&__kCFBooleanFalse forKeyedSubscript:IDSSendMessageOptionCompressPayloadKey];
  }

  if ([(NMDeviceConnection *)self _priorityForMessage:messageCopy]== 100)
  {
    [v10 removeObjectForKey:v8];
  }

  return v10;
}

- (int64_t)_priorityForMessage:(id)message
{
  messageCopy = message;
  if ([messageCopy hasPriority])
  {
    iDSMessagePriority = [messageCopy IDSMessagePriority];

    return iDSMessagePriority;
  }

  type = [messageCopy type];

  result = 300;
  if (type > 199)
  {
    if (type <= 499)
    {
      if ((type - 200) >= 6 && type != 308)
      {
        return result;
      }
    }

    else if ((type - 500) >= 3 && (type - 1500) >= 2 && type != 600)
    {
      return result;
    }

    return 200;
  }

  if ((type - 50) <= 0x35 && ((1 << (type - 50)) & 0x3C00000003AFFFLL) != 0 || (type - 1) < 4)
  {
    return 200;
  }

  return result;
}

- (void)_dequeueNextMessageIfNecessaryForType:(int)type
{
  v5 = [(NMDeviceConnection *)self _messageQueueForType:?];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003D1A4;
  block[3] = &unk_1000865B0;
  typeCopy = type;
  v9 = v5;
  selfCopy = self;
  v7 = v5;
  dispatch_async(queue, block);
}

- (void)_unpauseAllQueues
{
  [(NSRecursiveLock *)self->_messageQueuesLock lock];
  messageQueues = self->_messageQueues;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003DD54;
  v4[3] = &unk_1000865D8;
  v4[4] = self;
  [(NSMutableDictionary *)messageQueues enumerateKeysAndObjectsUsingBlock:v4];
  [(NSRecursiveLock *)self->_messageQueuesLock unlock];
}

- (BOOL)_shouldIncludeTemporaryLocationAuthorizationWithMessage:(id)message
{
  messageCopy = message;
  type = [messageCopy type];
  hasDataValue = 1;
  if (type > 301)
  {
    if (type != 302 && type != 304)
    {
      goto LABEL_7;
    }
  }

  else if (type != 206)
  {
    if (type == 300)
    {
      v6 = [messageCopy argumentForTag:401];
      hasDataValue = [v6 hasDataValue];

      goto LABEL_8;
    }

LABEL_7:
    hasDataValue = 0;
  }

LABEL_8:

  return hasDataValue;
}

- (void)sendMessage:(id)message options:(id)options withReply:(id)reply
{
  messageCopy = message;
  optionsCopy = options;
  replyCopy = reply;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003E3F4;
  v15[3] = &unk_100086600;
  v15[4] = self;
  v16 = messageCopy;
  v17 = optionsCopy;
  v18 = replyCopy;
  v12 = replyCopy;
  v13 = optionsCopy;
  v14 = messageCopy;
  dispatch_async(queue, v15);
}

- (void)_sendMessage:(id)message options:(id)options force:(BOOL)force timeSpentEnqueued:(double)enqueued withReply:(id)reply
{
  messageCopy = message;
  optionsCopy = options;
  replyCopy = reply;
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_connected)
  {
    v15 = [optionsCopy objectForKeyedSubscript:@"NMSendMessageOptionFireAndForget"];
    if (!v15 || (v16 = v15, [optionsCopy objectForKeyedSubscript:@"NMSendMessageOptionFireAndForget"], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "BOOLValue"), v17, v16, v18))
    {
      v19 = sub_100001B24();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        shortDebugDescription = [messageCopy shortDebugDescription];
        *buf = 138477827;
        v94 = shortDebugDescription;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Not sending message because device is not connected: %{private}@", buf, 0xCu);
      }

      if (replyCopy)
      {
        v21 = 3;
LABEL_15:
        v25 = [NSError errorWithDomain:@"NMDeviceConnectionErrorDomain" code:v21 userInfo:0];
        replyCopy[2](replyCopy, 0, v25);
LABEL_16:

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  if ([(NMDeviceConnection *)self shouldSendMessage:messageCopy])
  {
    if (force)
    {
      bOOLValue = 1;
    }

    else
    {
      v26 = [optionsCopy objectForKeyedSubscript:@"NMSendMessageOptionSendImmediately"];
      bOOLValue = [v26 BOOLValue];
    }

    v25 = -[NMDeviceConnection _messageQueueForType:](self, "_messageQueueForType:", [messageCopy type]);
    if (!-[NMDeviceConnection canSendMessageWithType:](self, "canSendMessageWithType:", [messageCopy type]))
    {
      v29 = sub_100001B24();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        shortDebugDescription2 = [messageCopy shortDebugDescription];
        *buf = 138477827;
        v94 = shortDebugDescription2;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Not sending message because remote device does not support it: %{private}@", buf, 0xCu);
      }

      if (replyCopy)
      {
        v31 = [NSError errorWithDomain:@"NMDeviceConnectionErrorDomain" code:6 userInfo:0];
        replyCopy[2](replyCopy, 0, v31);
      }

      goto LABEL_16;
    }

    if (([v25 isPaused] & 1) != 0 || (bOOLValue & 1) == 0 && (objc_msgSend(v25, "shouldSendNewPayload") & 1) == 0)
    {
      v27 = sub_100001B24();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        shortDebugDescription3 = [messageCopy shortDebugDescription];
        *buf = 138477827;
        v94 = shortDebugDescription3;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Cannot send message now, adding to queue: %{private}@", buf, 0xCu);
      }

      [v25 enqueueMessage:messageCopy options:optionsCopy reply:replyCopy];
      goto LABEL_16;
    }

    v32 = sub_100001B7C();
    [messageCopy setSenderUUID:v32];

    [messageCopy setSentTimestamp:CFAbsoluteTimeGetCurrent()];
    if (enqueued > 0.0)
    {
      [messageCopy setEnqueuedTimeInterval:enqueued];
    }

    if (![(NMDeviceConnection *)self _shouldIncludeTemporaryLocationAuthorizationWithMessage:messageCopy])
    {
      goto LABEL_130;
    }

    v92 = 0;
    v33 = [CLLocationManager _getClientTransientAuthorizationInfoForBundleId:@"com.apple.Maps" error:&v92];
    v34 = v92;
    v35 = sub_100001B24();
    v36 = v35;
    if (v34 || !v33)
    {
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v94 = v34;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Error getting transient location authorization: %@", buf, 0xCu);
      }

      goto LABEL_129;
    }

    if (!os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
LABEL_128:

      v36 = objc_alloc_init(NMArgument);
      [v36 setTag:600];
      [v36 setDataValue:v33];
      [messageCopy addArgument:v36];
LABEL_129:

LABEL_130:
      data = [messageCopy data];
      v39 = [(NMDeviceConnection *)self _idsOptionsForMessage:messageCopy withOptions:optionsCopy];
      v40 = v39;
      if (replyCopy)
      {
        if (v39)
        {
          v41 = [v39 mutableCopy];
        }

        else
        {
          v41 = +[NSMutableDictionary dictionary];
        }

        v42 = v41;
        [v41 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionExpectsPeerResponseKey];

        v82 = v42;
      }

      else
      {
        v82 = v39;
      }

      v43 = [(NMDeviceConnection *)self _priorityForMessage:messageCopy];
      v44 = [optionsCopy objectForKeyedSubscript:@"NMSendMessageOptionUrgent"];

      if (v44)
      {
        v45 = [optionsCopy objectForKeyedSubscript:@"NMSendMessageOptionUrgent"];
        if ([v45 BOOLValue])
        {
          v43 = 300;
        }

        else
        {
          v43 = 200;
        }
      }

      v46 = [data length];
      v47 = v46;
      if (v43 == 300 && v46 > 0x100000)
      {
        v48 = sub_100001B24();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          v94 = v47;
          v95 = 2048;
          v96 = 0x100000;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "Degrading message from Urgent to Default priority due to size (%luB / %luB)", buf, 0x16u);
        }

        v43 = 200;
      }

      if (v47 > 0x500000)
      {
        v49 = sub_100001B24();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v94 = v47;
          v95 = 2048;
          v96 = 5242880;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Message exceeds maximum permitted and will likely fail (%luB / %luB)", buf, 0x16u);
        }
      }

      idsService = self->_idsService;
      accounts = [(IDSService *)idsService accounts];
      anyObject = [accounts anyObject];
      v53 = [NSSet setWithObject:IDSDefaultPairedDevice];
      v90 = 0;
      v91 = 0;
      v54 = v43;
      v55 = v82;
      LODWORD(idsService) = [(IDSService *)idsService sendData:data fromAccount:anyObject toDestinations:v53 priority:v54 options:v82 identifier:&v91 error:&v90];
      v83 = v91;
      v81 = v90;

      v56 = sub_100001B24();
      v57 = v56;
      if (idsService)
      {
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          shortDebugDescription4 = [messageCopy shortDebugDescription];
          v59 = [data length];
          if (optionsCopy)
          {
            optionsCopy = [NSString stringWithFormat:@", options: %@", optionsCopy];
          }

          else
          {
            optionsCopy = &stru_100087EB8;
          }

          if (enqueued <= 0.0)
          {
            v65 = &stru_100087EB8;
          }

          else
          {
            v65 = [NSString stringWithFormat:@", enqueued time: %f", *&enqueued];
          }

          *buf = 138478851;
          v94 = shortDebugDescription4;
          v95 = 2048;
          v96 = v59;
          v97 = 2113;
          v98 = optionsCopy;
          v99 = 2113;
          v100 = v65;
          v101 = 2113;
          v102 = v83;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "Sending message: %{private}@ (size = %lu%{private}@%{private}@, GUID = %{private}@)", buf, 0x34u);
          if (enqueued > 0.0)
          {
          }

          v55 = v82;
          if (optionsCopy)
          {
          }
        }

        v66 = sub_100001B24();
        v64 = v83;
        v61 = v81;
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138477827;
          v94 = messageCopy;
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEBUG, "Message contents to be sent: %{private}@", buf, 0xCu);
        }

        v67 = objc_alloc_init(_NMSentMessageMetadata);
        -[_NMSentMessageMetadata setType:](v67, "setType:", [messageCopy type]);
        [messageCopy sentTimestamp];
        [(_NMSentMessageMetadata *)v67 setTimestamp:?];
        -[_NMSentMessageMetadata setPayloadSize:](v67, "setPayloadSize:", [data length]);
        [(_NMSentMessageMetadata *)v67 setReply:0];
        [v25 willSendPayloadWithSize:{-[_NMSentMessageMetadata payloadSize](v67, "payloadSize")}];
        if (v83)
        {
          if (replyCopy)
          {
            [(NSLock *)self->_replyCallbackBlocksLock lock];
            replyCallbackBlocks = self->_replyCallbackBlocks;
            v69 = [replyCopy copy];
            [(NSMutableDictionary *)replyCallbackBlocks setObject:v69 forKey:v83];

            v70 = [optionsCopy objectForKey:@"NMSendMessageOptionReplyTimeout"];
            if (v70)
            {
              v71 = [optionsCopy objectForKeyedSubscript:@"NMSendMessageOptionReplyTimeout"];
              [v71 doubleValue];
              delta = (v72 * 1000000000.0);

              v55 = v82;
            }

            else
            {
              delta = 120000000000;
            }

            v77 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
            v64 = v83;
            if (v77)
            {
              v78 = dispatch_time(0, delta);
              dispatch_source_set_timer(v77, v78, 0xFFFFFFFFFFFFFFFFLL, 0);
              handler[0] = _NSConcreteStackBlock;
              handler[1] = 3221225472;
              handler[2] = sub_10003F5A8;
              handler[3] = &unk_100086628;
              v86 = messageCopy;
              v87 = v83;
              selfCopy = self;
              v79 = v67;
              v89 = v79;
              dispatch_source_set_event_handler(v77, handler);
              [(_NMSentMessageMetadata *)v79 setTimeoutTimer:v77];
              dispatch_resume(v77);
            }

            [(NSMutableDictionary *)self->_replyExpectingMessageMetadata setObject:v67 forKey:v83];
            [(NSLock *)self->_replyCallbackBlocksLock unlock];

            v61 = v81;
          }

          [(NSMutableDictionary *)self->_inFlightMessageMetadata setObject:v67 forKey:v64];
        }

        else
        {
          v73 = sub_100001B24();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "ERROR: Did not receive an identifier for sent message", buf, 2u);
          }

          v74 = sub_100053104();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v94 = "[NMDeviceConnection _sendMessage:options:force:timeSpentEnqueued:withReply:]";
            v95 = 2080;
            v96 = "NMDeviceConnection.m";
            v97 = 1024;
            LODWORD(v98) = 496;
            _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
          }

          if (sub_10000645C())
          {
            v75 = sub_100053104();
            if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
            {
              v76 = +[NSThread callStackSymbols];
              *buf = 138412290;
              v94 = v76;
              _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
            }
          }
        }
      }

      else
      {
        v61 = v81;
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          shortDebugDescription5 = [messageCopy shortDebugDescription];
          *buf = 138478083;
          v94 = shortDebugDescription5;
          v95 = 2113;
          v96 = v81;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "Error sending message: messageType=%{private}@ -- %{private}@", buf, 0x16u);
        }

        v63 = sub_100001B24();
        v64 = v83;
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138477827;
          v94 = messageCopy;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEBUG, "Message contents which failed: %{private}@", buf, 0xCu);
        }

        if (replyCopy)
        {
          replyCopy[2](replyCopy, 0, v81);
        }

        -[NMDeviceConnection _dequeueNextMessageIfNecessaryForType:](self, "_dequeueNextMessageIfNecessaryForType:", [messageCopy type]);
      }

      goto LABEL_16;
    }

    type = [messageCopy type];
    if (type > 202)
    {
      if (type <= 400)
      {
        if (type <= 205)
        {
          if (type == 203)
          {
            v38 = @"FAILED_TO_UPDATE_LOCATION";
          }

          else if (type == 204)
          {
            v38 = @"DID_PAUSE_LOCATION_UPDATES";
          }

          else
          {
            v38 = @"DID_RESUME_LOCATION_UPDATES";
          }
        }

        else
        {
          switch(type)
          {
            case 300:
              v38 = @"UPDATE_NAV_ROUTE_DETAILS";
              break;
            case 301:
              v38 = @"UPDATE_NAV_ROUTE_STATUS";
              break;
            case 302:
              v38 = @"START_NAV";
              break;
            case 303:
              v38 = @"STOP_NAV";
              break;
            case 304:
              v38 = @"PREVIEW_NAV";
              break;
            case 305:
              v38 = @"CLEAR_NAV_PREVIEW";
              break;
            case 306:
              v38 = @"SET_WANTS_ALL_NAV_STATUS_UPDATES";
              break;
            case 307:
              v38 = @"DISMISS_NAV_SAFETY_ALERT";
              break;
            case 308:
              v38 = @"AVAILABLE_ROUTE";
              break;
            case 309:
              v38 = @"SELECTED_ROUTE";
              break;
            case 310:
              v38 = @"REQUEST_NAVIGATION_UPDATE";
              break;
            case 311:
              v38 = @"UPDATE_NAV_ROUTE_UPDATE";
              break;
            case 312:
              v38 = @"AVAILABLE_ROUTE_UPDATE";
              break;
            case 313:
              v38 = @"PAUSE_NAV";
              break;
            case 314:
              v38 = @"RESUME_NAV";
              break;
            case 315:
              v38 = @"SET_DISPLAYED_STEP";
              break;
            default:
              if (type != 206)
              {
                goto LABEL_87;
              }

              v38 = @"APPLY_LOCATION_AUTHORIZATION";
              break;
          }
        }

        goto LABEL_127;
      }

      if (type > 599)
      {
        if (type > 1499)
        {
          if (type == 1500)
          {
            v38 = @"DEBUG_FETCH_CONFIGURATION_INFO";
            goto LABEL_127;
          }

          if (type == 1501)
          {
            v38 = @"DEBUG_FETCH_DIAGNOSTICS_STRING";
            goto LABEL_127;
          }
        }

        else
        {
          if (type == 600)
          {
            v38 = @"FETCH_ROUTE_GENIUS";
            goto LABEL_127;
          }

          if (type == 1000)
          {
            v38 = @"PING";
            goto LABEL_127;
          }
        }

        goto LABEL_87;
      }

      if (type > 500)
      {
        if (type == 501)
        {
          v38 = @"PLACE_DATA_IDENTIFIER_LOOKUP";
          goto LABEL_127;
        }

        if (type == 502)
        {
          v38 = @"SERVICE_REQUEST";
          goto LABEL_127;
        }

        goto LABEL_87;
      }

      if (type == 401)
      {
        v38 = @"OPEN_URL";
        goto LABEL_127;
      }

      if (type != 500)
      {
        goto LABEL_87;
      }

      v38 = @"PLACE_DATA_MUID_LOOKUP";
    }

    else
    {
      if (type <= 99)
      {
        if (type > 3)
        {
          switch(type)
          {
            case '2':
              v38 = @"START_INITIAL_SYNC";
              break;
            case '3':
              v38 = @"FETCH_CURRENT_COUNTRY_CODE";
              break;
            case '4':
              v38 = @"FETCH_EXPERIMENTS_CONFIG";
              break;
            case '5':
              v38 = @"DID_CHANGE_EXPERIMENTS_CONFIG";
              break;
            case '6':
              v38 = @"SYNC_UP_NEXT_ITEMS";
              break;
            case '7':
              v38 = @"REQUEST_UP_NEXT_ITEMS";
              break;
            case '8':
              v38 = @"SYNC_CONFIG_STORE";
              break;
            case '9':
              v38 = @"CHECKIN_WITH_CONFIG_STORE";
              break;
            case ':':
              v38 = @"REQUEST_ANALYTIC_IDENTIFIERS";
              break;
            case ';':
              v38 = @"CHECKIN_WITH_SUBSCRIPTION_INFO";
              break;
            case '<':
              v38 = @"SYNC_SUBSCRIPTION_INFO";
              break;
            case '=':
              v38 = @"SET_OBSERVED_SUBSCRIPTION_IDENTIFIERS";
              break;
            case '>':
              goto LABEL_87;
            case '?':
              v38 = @"UPDATE_SUBSCRIPTION_STATE";
              break;
            case '@':
              v38 = @"START_STOP_SUBSCRIPTION_DOWNLOAD";
              break;
            case 'A':
              v38 = @"CHECKIN_WITH_SUBSCRIPTION_STATE_SUMMARY";
              break;
            case 'B':
              v38 = @"SET_SUBSCRIPTION_STATE_SUMMARY";
              break;
            case 'C':
              v38 = @"SET_SUBSCRIPTION_SHOULD_SYNC";
              break;
            default:
              if (type != 4)
              {
                goto LABEL_87;
              }

              v38 = @"FETCHED_TILE";
              break;
          }

          goto LABEL_127;
        }

        switch(type)
        {
          case 1:
            v38 = @"FETCH_TILES";
            goto LABEL_127;
          case 2:
            v38 = @"CANCEL_TILES";
            goto LABEL_127;
          case 3:
            v38 = @"REPORT_CORRUPT_TILE";
            goto LABEL_127;
        }

LABEL_87:
        v38 = [NSString stringWithFormat:@"(unknown: %i)", type];
        goto LABEL_127;
      }

      if (type <= 102)
      {
        if (type == 100)
        {
          v38 = @"CHECKIN_WITH_TILE_GROUP";
        }

        else if (type == 101)
        {
          v38 = @"FORCE_UPDATE_MANIFEST";
        }

        else
        {
          v38 = @"DID_CHANGE_ACTIVE_TILE_GROUP";
        }

        goto LABEL_127;
      }

      if (type > 200)
      {
        if (type == 201)
        {
          v38 = @"STOP_LOCATION_UPDATE";
        }

        else
        {
          v38 = @"UPDATED_LOCATION";
        }

        goto LABEL_127;
      }

      if (type == 103)
      {
        v38 = @"FETCH_RESOURCE";
        goto LABEL_127;
      }

      if (type != 200)
      {
        goto LABEL_87;
      }

      v38 = @"START_LOCATION_UPDATE";
    }

LABEL_127:
    *buf = 138412290;
    v94 = v38;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Attaching transient location authorization to message %@", buf, 0xCu);

    goto LABEL_128;
  }

  v23 = sub_100001B24();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    shortDebugDescription6 = [messageCopy shortDebugDescription];
    *buf = 138477827;
    v94 = shortDebugDescription6;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Not sending message because connection was short circuited: %{private}@", buf, 0xCu);
  }

  if (replyCopy)
  {
    v21 = 4;
    goto LABEL_15;
  }

LABEL_17:
}

- (void)sendReply:(id)reply forMessage:(id)message options:(id)options
{
  replyCopy = reply;
  messageCopy = message;
  optionsCopy = options;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003F870;
  v15[3] = &unk_100086628;
  v15[4] = self;
  v16 = replyCopy;
  v17 = messageCopy;
  v18 = optionsCopy;
  v12 = optionsCopy;
  v13 = messageCopy;
  v14 = replyCopy;
  dispatch_async(queue, v15);
}

- (void)_sendReply:(id)reply forMessage:(id)message options:(id)options force:(BOOL)force timeSpentEnqueued:(double)enqueued
{
  replyCopy = reply;
  messageCopy = message;
  optionsCopy = options;
  dispatch_assert_queue_V2(self->_queue);
  if (replyCopy && messageCopy)
  {
    if (self->_connected)
    {
      goto LABEL_8;
    }

    v15 = [optionsCopy objectForKeyedSubscript:@"NMSendMessageOptionFireAndForget"];
    if (!v15)
    {
      goto LABEL_6;
    }

    v16 = v15;
    v17 = [optionsCopy objectForKeyedSubscript:@"NMSendMessageOptionFireAndForget"];
    bOOLValue = [v17 BOOLValue];

    if (!bOOLValue)
    {
LABEL_8:
      if (force)
      {
        bOOLValue2 = 1;
      }

      else
      {
        v22 = [optionsCopy objectForKeyedSubscript:@"NMSendMessageOptionSendImmediately"];
        bOOLValue2 = [v22 BOOLValue];
      }

      v23 = -[NMDeviceConnection _messageQueueForType:](self, "_messageQueueForType:", [messageCopy type]);
      v19 = v23;
      if ((bOOLValue2 & 1) != 0 || ([v23 shouldSendNewPayload]& 1) != 0)
      {
        Current = CFAbsoluteTimeGetCurrent();
        v25 = objc_getAssociatedObject(messageCopy, &unk_10009E838);
        if (v25)
        {
          v26 = sub_100001B7C();
          [replyCopy setSenderUUID:v26];

          if (([replyCopy hasResponseTime] & 1) == 0)
          {
            [v25 requestReceivedTimestamp];
            [replyCopy setResponseTime:Current - v27];
          }

          v54 = v19;
          if (enqueued > 0.0)
          {
            [replyCopy setEnqueuedTimeInterval:enqueued];
          }

          [v25 requestReceivedTimestamp];
          [replyCopy setRequestReceivedTimestamp:?];
          [replyCopy setSentTimestamp:Current];
          data = [replyCopy data];
          idsMessageIdentifier = [v25 idsMessageIdentifier];
          v30 = [NSMutableDictionary dictionaryWithObject:idsMessageIdentifier forKey:IDSSendMessageOptionPeerResponseIdentifierKey];

          v31 = [(NMDeviceConnection *)self _idsOptionsForMessage:messageCopy withOptions:optionsCopy];
          if (v31)
          {
            [v30 addEntriesFromDictionary:v31];
          }

          v53 = v31;
          v32 = [(NMDeviceConnection *)self _priorityForReply:messageCopy];
          v33 = [optionsCopy objectForKeyedSubscript:@"NMSendMessageOptionUrgent"];

          v55 = v25;
          v57 = v30;
          if (v33)
          {
            v34 = [optionsCopy objectForKeyedSubscript:@"NMSendMessageOptionUrgent"];
            if ([v34 BOOLValue])
            {
              v32 = 300;
            }

            else
            {
              v32 = 200;
            }
          }

          idsService = self->_idsService;
          accounts = [(IDSService *)idsService accounts];
          anyObject = [accounts anyObject];
          v38 = [NSSet setWithObject:IDSDefaultPairedDevice];
          v58 = 0;
          v59 = 0;
          LODWORD(idsService) = [(IDSService *)idsService sendData:data fromAccount:anyObject toDestinations:v38 priority:v32 options:v57 identifier:&v59 error:&v58];
          v39 = v59;
          v56 = v58;

          v40 = sub_100001B24();
          v41 = v40;
          if (idsService)
          {
            v42 = data;
            v19 = v54;
            v43 = v39;
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              shortDebugDescription = [messageCopy shortDebugDescription];
              v51 = [v42 length];
              [replyCopy responseTime];
              v46 = v45;
              if (optionsCopy)
              {
                optionsCopy = [NSString stringWithFormat:@", options: %@", optionsCopy];
              }

              else
              {
                optionsCopy = &stru_100087EB8;
              }

              if (enqueued <= 0.0)
              {
                v48 = &stru_100087EB8;
              }

              else
              {
                v48 = [NSString stringWithFormat:@", enqueued time: %f", *&enqueued];
              }

              *buf = 138479107;
              v61 = shortDebugDescription;
              v62 = 2048;
              v63 = v51;
              v64 = 2048;
              v65 = v46;
              v66 = 2113;
              v67 = optionsCopy;
              v68 = 2113;
              v69 = v48;
              v70 = 2113;
              v71 = v43;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Sending reply for original message: %{private}@ (size = %lu, response time = %f%{private}@%{private}@, GUID = %{private}@)", buf, 0x3Eu);
              if (enqueued > 0.0)
              {
              }

              if (optionsCopy)
              {
              }
            }

            v49 = sub_100001B24();
            v25 = v55;
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138478083;
              v61 = replyCopy;
              v62 = 2113;
              v63 = messageCopy;
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "Reply contents to be sent: %{private}@\n Original message contents: %{private}@", buf, 0x16u);
            }

            v50 = objc_alloc_init(_NMSentMessageMetadata);
            -[_NMSentMessageMetadata setType:](v50, "setType:", [messageCopy type]);
            [messageCopy sentTimestamp];
            [(_NMSentMessageMetadata *)v50 setTimestamp:?];
            [(_NMSentMessageMetadata *)v50 setPayloadSize:[v42 length]];
            [(_NMSentMessageMetadata *)v50 setReply:1];
            [v54 willSendPayloadWithSize:[(_NMSentMessageMetadata *)v50 payloadSize]];
            [(NSMutableDictionary *)self->_inFlightMessageMetadata setObject:v50 forKey:v43];
          }

          else
          {
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              shortDebugDescription2 = [messageCopy shortDebugDescription];
              *buf = 138543618;
              v61 = shortDebugDescription2;
              v62 = 2114;
              v63 = v56;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Error sending reply to message: messageType=%{public}@ -- %{public}@", buf, 0x16u);
            }

            -[NMDeviceConnection _dequeueNextMessageIfNecessaryForType:](self, "_dequeueNextMessageIfNecessaryForType:", [messageCopy type]);
            v42 = data;
            v19 = v54;
            v25 = v55;
            v43 = v39;
          }
        }

        else
        {
          v42 = sub_100001B24();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v61 = messageCopy;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Sending reply to unknown message '%{public}@'. Ignoring...", buf, 0xCu);
          }
        }
      }

      else
      {
        [v19 enqueueReply:replyCopy forMessage:messageCopy options:optionsCopy];
      }
    }

    else
    {
LABEL_6:
      v19 = sub_100001B24();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        shortDebugDescription3 = [messageCopy shortDebugDescription];
        *buf = 138477827;
        v61 = shortDebugDescription3;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Not sending reply because device is not connected. Original message: %{private}@", buf, 0xCu);
      }
    }
  }
}

- (unint64_t)_determineProtocolVersion:(id)version
{
  versionCopy = version;
  v4 = [[NSUUID alloc] initWithUUIDString:@"9FFD76FA-21FC-46AE-8AAB-14FB3F692B28"];
  v5 = [versionCopy supportsCapability:v4];

  if (v5)
  {
    v6 = 6;
  }

  else
  {
    v7 = [[NSUUID alloc] initWithUUIDString:@"AC953E03-CAB8-4508-9145-EA5D629BCDAC"];
    v8 = [versionCopy supportsCapability:v7];

    if (v8)
    {
      v6 = 5;
    }

    else
    {
      v9 = [[NSUUID alloc] initWithUUIDString:@"CBAC2DE5-C7A2-4DA2-932B-E57BABEA3B97"];
      v10 = [versionCopy supportsCapability:v9];

      if (v10)
      {
        v6 = 4;
      }

      else
      {
        v11 = [[NSUUID alloc] initWithUUIDString:@"5C068089-C478-48CE-892A-13DBA45BE33A"];
        v12 = [versionCopy supportsCapability:v11];

        if (v12)
        {
          v6 = 3;
        }

        else
        {
          v13 = [[NSUUID alloc] initWithUUIDString:@"AC310276-2B5D-4C25-A6AC-7D59ED5CB5D3"];
          v14 = [versionCopy supportsCapability:v13];

          if (v14)
          {
            v6 = 2;
          }

          else
          {
            v6 = 1;
          }
        }
      }
    }
  }

  return v6;
}

- (void)updateConnectionStatus
{
  v3 = sub_100001B24();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    devices = [(IDSService *)self->_idsService devices];
    *buf = 138477827;
    *v65 = devices;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Updating connection status with devices: %{private}@", buf, 0xCu);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  devices2 = [(IDSService *)self->_idsService devices];
  v6 = [devices2 countByEnumeratingWithState:&v57 objects:v66 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v58;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v58 != v8)
        {
          objc_enumerationMutation(devices2);
        }

        v10 = *(*(&v57 + 1) + 8 * i);
        if ([v10 isDefaultPairedDevice] && objc_msgSend(v10, "isConnected"))
        {
          isNearby = [v10 isNearby];
          v12 = 1;
          goto LABEL_14;
        }
      }

      v7 = [devices2 countByEnumeratingWithState:&v57 objects:v66 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  isNearby = 0;
  v12 = 0;
LABEL_14:

  testSimulateNoDevices = self->_testSimulateNoDevices;
  v14 = sub_100001B24();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
  if (testSimulateNoDevices)
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "New connection status: simulating no devices connected", buf, 2u);
    }

    isNearby = 0;
    v12 = 0;
  }

  else if (v15)
  {
    *buf = 67109376;
    *v65 = v12;
    *&v65[4] = 1024;
    *&v65[6] = isNearby;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "New connection status: connected: %i, nearby: %i", buf, 0xEu);
  }

  nearby = self->_nearby;
  if (nearby != isNearby)
  {
    self->_nearby = isNearby;
  }

  self->_protocolVersion = 0;
  if (self->_connected != v12)
  {
    v43 = nearby;
    v44 = isNearby;
    self->_connected = v12;
    if (!v12)
    {
      v17 = [[NSError alloc] initWithDomain:@"NMDeviceConnectionErrorDomain" code:0 userInfo:0];
      [(NSLock *)self->_replyCallbackBlocksLock lock];
      allValues = [(NSMutableDictionary *)self->_replyCallbackBlocks allValues];
      v19 = [allValues copy];

      allValues2 = [(NSMutableDictionary *)self->_replyExpectingMessageMetadata allValues];
      v21 = [allValues2 copy];

      [(NSMutableDictionary *)self->_replyCallbackBlocks removeAllObjects];
      [(NSMutableDictionary *)self->_replyExpectingMessageMetadata removeAllObjects];
      [(NSLock *)self->_replyCallbackBlocksLock unlock];
      if ([v19 count])
      {
        v22 = sub_100001B24();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = [v19 count];
          *buf = 134217984;
          *v65 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Canceling %lu requests due to lost connection to paired device", buf, 0xCu);
        }
      }

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v24 = v21;
      v25 = [v24 countByEnumeratingWithState:&v53 objects:v63 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v54;
        do
        {
          for (j = 0; j != v26; j = j + 1)
          {
            if (*v54 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v53 + 1) + 8 * j);
            timeoutTimer = [v29 timeoutTimer];

            if (timeoutTimer)
            {
              timeoutTimer2 = [v29 timeoutTimer];
              dispatch_source_cancel(timeoutTimer2);

              [v29 setTimeoutTimer:0];
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v53 objects:v63 count:16];
        }

        while (v26);
      }

      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v32 = v19;
      v33 = [v32 countByEnumeratingWithState:&v49 objects:v62 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v50;
        do
        {
          for (k = 0; k != v34; k = k + 1)
          {
            if (*v50 != v35)
            {
              objc_enumerationMutation(v32);
            }

            (*(*(*(&v49 + 1) + 8 * k) + 16))();
          }

          v34 = [v32 countByEnumeratingWithState:&v49 objects:v62 count:16];
        }

        while (v34);
      }

      [(NSRecursiveLock *)self->_messageQueuesLock lock];
      [(NSMutableDictionary *)self->_messageQueues enumerateKeysAndObjectsUsingBlock:&stru_100086668];
      [(NSRecursiveLock *)self->_messageQueuesLock unlock];
    }

    allObservers = [(GEOObserverHashTable *)self->_observers allObservers];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v38 = [allObservers countByEnumeratingWithState:&v45 objects:v61 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v46;
      do
      {
        for (m = 0; m != v39; m = m + 1)
        {
          if (*v46 != v40)
          {
            objc_enumerationMutation(allObservers);
          }

          v42 = *(*(&v45 + 1) + 8 * m);
          if (objc_opt_respondsToSelector())
          {
            [v42 connection:self didChangeDeviceConnectivity:v12];
          }

          if (v12 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v42 connectionNeedsStateSynchronization:self];
          }
        }

        v39 = [allObservers countByEnumeratingWithState:&v45 objects:v61 count:16];
      }

      while (v39);
    }

    nearby = v43;
    isNearby = v44;
  }

  if (nearby != isNearby)
  {
    [(GEOObserverHashTable *)self->_observers connection:self didChangeDeviceNearby:isNearby];
  }
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  dataCopy = data;
  contextCopy = context;
  Current = CFAbsoluteTimeGetCurrent();
  incomingResponseIdentifier = [contextCopy incomingResponseIdentifier];
  incomingResponseIdentifier2 = [contextCopy incomingResponseIdentifier];

  if (incomingResponseIdentifier2)
  {
    [(NSLock *)self->_replyCallbackBlocksLock lock];
    replyCallbackBlocks = self->_replyCallbackBlocks;
    incomingResponseIdentifier3 = [contextCopy incomingResponseIdentifier];
    v16 = [(NSMutableDictionary *)replyCallbackBlocks objectForKey:incomingResponseIdentifier3];
    v17 = v16 != 0;

    [(NSLock *)self->_replyCallbackBlocksLock unlock];
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_100001B24();
  v19 = v18;
  if (dataCopy)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138477827;
      v101 = incomingResponseIdentifier;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Received data with incomingResponseIdentifier: %{private}@", buf, 0xCu);
    }

    if (v17)
    {
      v20 = sub_100001B24();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "incomingResponseIdentifier matches message awaiting reply", buf, 2u);
      }

      v21 = [[NMReply alloc] initWithData:dataCopy];
      v19 = v21;
      if (v21)
      {
        senderUUID = [(NMReply *)v21 senderUUID];
        [(NMDeviceConnection *)self _updateReceiverProcessUUID:senderUUID];

        [(NSLock *)self->_replyCallbackBlocksLock lock];
        v23 = [(NSMutableDictionary *)self->_replyExpectingMessageMetadata objectForKey:incomingResponseIdentifier];
        [(NSMutableDictionary *)self->_replyExpectingMessageMetadata removeObjectForKey:incomingResponseIdentifier];
        [(NSLock *)self->_replyCallbackBlocksLock unlock];
        timeoutTimer = [v23 timeoutTimer];

        if (timeoutTimer)
        {
          timeoutTimer2 = [v23 timeoutTimer];
          dispatch_source_cancel(timeoutTimer2);

          [v23 setTimeoutTimer:0];
        }

        [v23 timestamp];
        v27 = v26;
        v28 = sub_100001B24();
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          goto LABEL_149;
        }

        v29 = Current - v27;
        type = [v23 type];
        if (type > 202)
        {
          if (type <= 400)
          {
            if (type <= 205)
            {
              if (type == 203)
              {
                v31 = @"FAILED_TO_UPDATE_LOCATION";
              }

              else if (type == 204)
              {
                v31 = @"DID_PAUSE_LOCATION_UPDATES";
              }

              else
              {
                v31 = @"DID_RESUME_LOCATION_UPDATES";
              }
            }

            else
            {
              switch(type)
              {
                case 300:
                  v31 = @"UPDATE_NAV_ROUTE_DETAILS";
                  goto LABEL_147;
                case 301:
                  v31 = @"UPDATE_NAV_ROUTE_STATUS";
                  goto LABEL_147;
                case 302:
                  v31 = @"START_NAV";
                  goto LABEL_147;
                case 303:
                  v31 = @"STOP_NAV";
                  goto LABEL_147;
                case 304:
                  v31 = @"PREVIEW_NAV";
                  goto LABEL_147;
                case 305:
                  v31 = @"CLEAR_NAV_PREVIEW";
                  goto LABEL_147;
                case 306:
                  v31 = @"SET_WANTS_ALL_NAV_STATUS_UPDATES";
                  goto LABEL_147;
                case 307:
                  v31 = @"DISMISS_NAV_SAFETY_ALERT";
                  goto LABEL_147;
                case 308:
                  v31 = @"AVAILABLE_ROUTE";
                  goto LABEL_147;
                case 309:
                  v31 = @"SELECTED_ROUTE";
                  goto LABEL_147;
                case 310:
                  v31 = @"REQUEST_NAVIGATION_UPDATE";
                  goto LABEL_147;
                case 311:
                  v31 = @"UPDATE_NAV_ROUTE_UPDATE";
                  goto LABEL_147;
                case 312:
                  v31 = @"AVAILABLE_ROUTE_UPDATE";
                  goto LABEL_147;
                case 313:
                  v31 = @"PAUSE_NAV";
                  goto LABEL_147;
                case 314:
                  v31 = @"RESUME_NAV";
                  goto LABEL_147;
                case 315:
                  v31 = @"SET_DISPLAYED_STEP";
                  goto LABEL_147;
                default:
                  if (type != 206)
                  {
                    goto LABEL_107;
                  }

                  v31 = @"APPLY_LOCATION_AUTHORIZATION";
                  break;
              }
            }

            goto LABEL_147;
          }

          if (type > 599)
          {
            if (type > 1499)
            {
              if (type == 1500)
              {
                v31 = @"DEBUG_FETCH_CONFIGURATION_INFO";
                goto LABEL_147;
              }

              if (type == 1501)
              {
                v31 = @"DEBUG_FETCH_DIAGNOSTICS_STRING";
                goto LABEL_147;
              }
            }

            else
            {
              if (type == 600)
              {
                v31 = @"FETCH_ROUTE_GENIUS";
                goto LABEL_147;
              }

              if (type == 1000)
              {
                v31 = @"PING";
                goto LABEL_147;
              }
            }

            goto LABEL_107;
          }

          if (type > 500)
          {
            if (type == 501)
            {
              v31 = @"PLACE_DATA_IDENTIFIER_LOOKUP";
              goto LABEL_147;
            }

            if (type == 502)
            {
              v31 = @"SERVICE_REQUEST";
              goto LABEL_147;
            }

            goto LABEL_107;
          }

          if (type == 401)
          {
            v31 = @"OPEN_URL";
            goto LABEL_147;
          }

          if (type != 500)
          {
            goto LABEL_107;
          }

          v31 = @"PLACE_DATA_MUID_LOOKUP";
        }

        else
        {
          if (type <= 99)
          {
            if (type > 3)
            {
              switch(type)
              {
                case '2':
                  v31 = @"START_INITIAL_SYNC";
                  goto LABEL_147;
                case '3':
                  v31 = @"FETCH_CURRENT_COUNTRY_CODE";
                  goto LABEL_147;
                case '4':
                  v31 = @"FETCH_EXPERIMENTS_CONFIG";
                  goto LABEL_147;
                case '5':
                  v31 = @"DID_CHANGE_EXPERIMENTS_CONFIG";
                  goto LABEL_147;
                case '6':
                  v31 = @"SYNC_UP_NEXT_ITEMS";
                  goto LABEL_147;
                case '7':
                  v31 = @"REQUEST_UP_NEXT_ITEMS";
                  goto LABEL_147;
                case '8':
                  v31 = @"SYNC_CONFIG_STORE";
                  goto LABEL_147;
                case '9':
                  v31 = @"CHECKIN_WITH_CONFIG_STORE";
                  goto LABEL_147;
                case ':':
                  v31 = @"REQUEST_ANALYTIC_IDENTIFIERS";
                  goto LABEL_147;
                case ';':
                  v31 = @"CHECKIN_WITH_SUBSCRIPTION_INFO";
                  goto LABEL_147;
                case '<':
                  v31 = @"SYNC_SUBSCRIPTION_INFO";
                  goto LABEL_147;
                case '=':
                  v31 = @"SET_OBSERVED_SUBSCRIPTION_IDENTIFIERS";
                  goto LABEL_147;
                case '>':
                  goto LABEL_107;
                case '?':
                  v31 = @"UPDATE_SUBSCRIPTION_STATE";
                  goto LABEL_147;
                case '@':
                  v31 = @"START_STOP_SUBSCRIPTION_DOWNLOAD";
                  goto LABEL_147;
                case 'A':
                  v31 = @"CHECKIN_WITH_SUBSCRIPTION_STATE_SUMMARY";
                  goto LABEL_147;
                case 'B':
                  v31 = @"SET_SUBSCRIPTION_STATE_SUMMARY";
                  goto LABEL_147;
                case 'C':
                  v31 = @"SET_SUBSCRIPTION_SHOULD_SYNC";
                  goto LABEL_147;
                default:
                  if (type != 4)
                  {
                    goto LABEL_107;
                  }

                  v31 = @"FETCHED_TILE";
                  break;
              }

              goto LABEL_147;
            }

            switch(type)
            {
              case 1:
                v31 = @"FETCH_TILES";
                goto LABEL_147;
              case 2:
                v31 = @"CANCEL_TILES";
                goto LABEL_147;
              case 3:
                v31 = @"REPORT_CORRUPT_TILE";
                goto LABEL_147;
            }

LABEL_107:
            v94 = [NSString stringWithFormat:@"(unknown: %i)", type];
LABEL_148:
            v75 = [dataCopy length];
            [v19 responseTime];
            v77 = v76;
            [v19 enqueuedTimeInterval];
            v79 = v78;
            [v19 responseTime];
            v81 = v29 - v80;
            [v19 enqueuedTimeInterval];
            v83 = v81 - v82;
            incomingResponseIdentifier4 = [contextCopy incomingResponseIdentifier];
            outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
            *buf = 138479619;
            v101 = v94;
            v102 = 2048;
            v103 = v75;
            v104 = 2048;
            v105 = v29;
            v106 = 2048;
            v107 = v77;
            v108 = 2048;
            v109 = v79;
            v110 = 2048;
            v111 = v83;
            v112 = 2113;
            v113 = incomingResponseIdentifier4;
            v114 = 2113;
            v115 = outgoingResponseIdentifier;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Received reply for original message type: %{private}@ (size = %lu, elapsed time = %f, remote processing time = %f, enqueued time = %f, inferred transport time = %f, incoming guid = %{private}@, outgoing guid = %{private}@)", buf, 0x52u);

LABEL_149:
            decompressArguments = [v19 decompressArguments];
            v87 = sub_100001B24();
            v88 = v87;
            if (decompressArguments)
            {
              if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138477827;
                v101 = v19;
                _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEBUG, "Received reply contents: %{private}@", buf, 0xCu);
              }

              [(NSLock *)self->_replyCallbackBlocksLock lock];
              v89 = [(NSMutableDictionary *)self->_replyCallbackBlocks objectForKey:incomingResponseIdentifier];
              v70 = [v89 copy];

              if (v70)
              {
                [(NSMutableDictionary *)self->_replyCallbackBlocks removeObjectForKey:incomingResponseIdentifier];
                [(NSLock *)self->_replyCallbackBlocksLock unlock];
                v90 = sub_100001B24();
                if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEBUG, "Sending reply to callback block", buf, 2u);
                }

                v70[2](v70, v19, 0);
                goto LABEL_162;
              }

              goto LABEL_161;
            }

            if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_ERROR, "Failed to decompress reply arguments", buf, 2u);
            }

            [(NSLock *)self->_replyCallbackBlocksLock lock];
            v91 = [(NSMutableDictionary *)self->_replyCallbackBlocks objectForKey:incomingResponseIdentifier];
            v70 = [v91 copy];

            if (!v70)
            {
LABEL_161:
              [(NSLock *)self->_replyCallbackBlocksLock unlock];
              goto LABEL_162;
            }

            [(NSMutableDictionary *)self->_replyCallbackBlocks removeObjectForKey:incomingResponseIdentifier];
            [(NSLock *)self->_replyCallbackBlocksLock unlock];
            dataValue = [NSError errorWithDomain:@"NMDeviceConnectionErrorDomain" code:1 userInfo:0];
            (v70)[2](v70, 0, dataValue);
LABEL_160:

LABEL_162:
            goto LABEL_163;
          }

          if (type <= 102)
          {
            if (type == 100)
            {
              v31 = @"CHECKIN_WITH_TILE_GROUP";
            }

            else if (type == 101)
            {
              v31 = @"FORCE_UPDATE_MANIFEST";
            }

            else
            {
              v31 = @"DID_CHANGE_ACTIVE_TILE_GROUP";
            }

            goto LABEL_147;
          }

          if (type > 200)
          {
            if (type == 201)
            {
              v31 = @"STOP_LOCATION_UPDATE";
            }

            else
            {
              v31 = @"UPDATED_LOCATION";
            }

            goto LABEL_147;
          }

          if (type == 103)
          {
            v31 = @"FETCH_RESOURCE";
            goto LABEL_147;
          }

          if (type != 200)
          {
            goto LABEL_107;
          }

          v31 = @"START_LOCATION_UPDATE";
        }

LABEL_147:
        v94 = v31;
        goto LABEL_148;
      }

      v23 = sub_100001B24();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v46 = "Invalid reply data";
LABEL_36:
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, v46, buf, 2u);
        goto LABEL_163;
      }

      goto LABEL_163;
    }

    v19 = [[NMMessage alloc] initWithData:dataCopy];
    v33 = sub_100001B24();
    v23 = v33;
    if (!v19)
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v46 = "Invalid message data";
        goto LABEL_36;
      }

LABEL_163:

      goto LABEL_164;
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      shortDebugDescription = [v19 shortDebugDescription];
      v35 = [dataCopy length];
      [v19 sentTimestamp];
      v37 = Current - v36;
      [v19 enqueuedTimeInterval];
      *buf = 138478595;
      v101 = shortDebugDescription;
      v102 = 2048;
      v103 = v35;
      v104 = 2048;
      v105 = v37;
      v106 = 2048;
      v107 = v38;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Received message type: %{private}@ (size = %lu, sent %f seconds ago, enqueued time = %f)", buf, 0x2Au);
    }

    senderUUID2 = [v19 senderUUID];
    [(NMDeviceConnection *)self _updateReceiverProcessUUID:senderUUID2];

    decompressArguments2 = [v19 decompressArguments];
    v41 = sub_100001B24();
    v42 = v41;
    if (decompressArguments2)
    {
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138477827;
        v101 = v19;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "Received message contents: %{private}@", buf, 0xCu);
      }

      if ([contextCopy expectsPeerResponse])
      {
        outgoingResponseIdentifier2 = [contextCopy outgoingResponseIdentifier];

        if (outgoingResponseIdentifier2)
        {
          v44 = objc_alloc_init(_NMReplyInfo);
          outgoingResponseIdentifier3 = [contextCopy outgoingResponseIdentifier];
          [(_NMReplyInfo *)v44 setIdsMessageIdentifier:outgoingResponseIdentifier3];

          [(_NMReplyInfo *)v44 setRequestReceivedTimestamp:Current];
          objc_setAssociatedObject(v19, &unk_10009E838, v44, 0x301);
        }

        else
        {
          v44 = sub_100001B24();
          if (os_log_type_enabled(&v44->super, OS_LOG_TYPE_ERROR))
          {
            shortDebugDescription2 = [v19 shortDebugDescription];
            *buf = 138543362;
            v101 = shortDebugDescription2;
            _os_log_impl(&_mh_execute_header, &v44->super, OS_LOG_TYPE_ERROR, "Message wants reply, but didn't receive a message identifier! Message: %{public}@", buf, 0xCu);
          }
        }
      }

      [(NSLock *)self->_observersLock lock];
      messageObservers = self->_messageObservers;
      v61 = [NSNumber numberWithInt:[v19 type]];
      v23 = [(NSMutableDictionary *)messageObservers objectForKeyedSubscript:v61];

      allValues = [v23 allValues];
      v63 = [allValues copy];

      [(NSLock *)self->_observersLock unlock];
      if (![v63 count])
      {
        v64 = sub_100001B24();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          shortDebugDescription3 = [v19 shortDebugDescription];
          *buf = 138543362;
          v101 = shortDebugDescription3;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "No handler registered for incoming message type %{public}@", buf, 0xCu);
        }
      }

      v66 = [v19 argumentForTag:600];
      dataValue = [v66 dataValue];

      if (dataValue)
      {
        v68 = sub_100001B24();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "Applying transient location authorization", buf, 2u);
        }

        v69 = [CLLocationManager _setClientTransientAuthorizationInfoForBundleId:@"com.apple.Maps" data:dataValue];
      }

      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v70 = v63;
      v71 = [v70 countByEnumeratingWithState:&v95 objects:v99 count:16];
      if (v71)
      {
        v72 = v71;
        v73 = *v96;
        do
        {
          for (i = 0; i != v72; i = i + 1)
          {
            if (*v96 != v73)
            {
              objc_enumerationMutation(v70);
            }

            (*(*(*(&v95 + 1) + 8 * i) + 16))();
          }

          v72 = [v70 countByEnumeratingWithState:&v95 objects:v99 count:16];
        }

        while (v72);
      }

      goto LABEL_160;
    }

    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Failed to decompress message arguments", buf, 2u);
    }

    if ([contextCopy expectsPeerResponse])
    {
      outgoingResponseIdentifier4 = [contextCopy outgoingResponseIdentifier];

      if (outgoingResponseIdentifier4)
      {
        v23 = objc_alloc_init(NMReply);
        v48 = sub_100001B7C();
        [v23 setSenderUUID:v48];

        v49 = [NMArgument alloc];
        v50 = [NSError errorWithDomain:@"NMDeviceConnectionErrorDomain" code:1 userInfo:0];
        v51 = [(NMArgument *)v49 _nm_initWithErrorValue:v50 tag:3];

        v93 = v51;
        [v23 addArgument:v51];
        v52 = [(NMDeviceConnection *)self _idsOptionsForMessage:v19 withOptions:0];
        v53 = [v52 mutableCopy];

        if (!v53)
        {
          v53 = +[NSMutableDictionary dictionary];
        }

        outgoingResponseIdentifier5 = [contextCopy outgoingResponseIdentifier];
        [v53 setObject:outgoingResponseIdentifier5 forKeyedSubscript:IDSSendMessageOptionPeerResponseIdentifierKey];

        idsService = self->_idsService;
        data = [v23 data];
        accounts = [(IDSService *)self->_idsService accounts];
        anyObject = [accounts anyObject];
        v58 = [NSSet setWithObject:IDSDefaultPairedDevice];
        [(IDSService *)idsService sendData:data fromAccount:anyObject toDestinations:v58 priority:200 options:v53 identifier:0 error:0];

        goto LABEL_163;
      }
    }
  }

  else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v32 = "NO";
    if (v17)
    {
      v32 = "YES";
    }

    *buf = 138478083;
    v101 = incomingResponseIdentifier;
    v102 = 2080;
    v103 = v32;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Missing data with incomingResponseIdentifier: %{private}@ (Reply: %s) ", buf, 0x16u);
  }

LABEL_164:
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  if (!identifierCopy)
  {
    v14 = 0;
    if (success)
    {
      goto LABEL_121;
    }

    goto LABEL_103;
  }

  v12 = [(NSMutableDictionary *)self->_inFlightMessageMetadata objectForKey:identifierCopy];
  [(NSMutableDictionary *)self->_inFlightMessageMetadata removeObjectForKey:identifierCopy];
  if (v12)
  {
    type = [v12 type];
    if (type > 202)
    {
      if (type <= 400)
      {
        if (type <= 205)
        {
          if (type == 203)
          {
            v14 = @"FAILED_TO_UPDATE_LOCATION";
          }

          else if (type == 204)
          {
            v14 = @"DID_PAUSE_LOCATION_UPDATES";
          }

          else
          {
            v14 = @"DID_RESUME_LOCATION_UPDATES";
          }
        }

        else
        {
          switch(type)
          {
            case 300:
              v14 = @"UPDATE_NAV_ROUTE_DETAILS";
              break;
            case 301:
              v14 = @"UPDATE_NAV_ROUTE_STATUS";
              break;
            case 302:
              v14 = @"START_NAV";
              break;
            case 303:
              v14 = @"STOP_NAV";
              break;
            case 304:
              v14 = @"PREVIEW_NAV";
              break;
            case 305:
              v14 = @"CLEAR_NAV_PREVIEW";
              break;
            case 306:
              v14 = @"SET_WANTS_ALL_NAV_STATUS_UPDATES";
              break;
            case 307:
              v14 = @"DISMISS_NAV_SAFETY_ALERT";
              break;
            case 308:
              v14 = @"AVAILABLE_ROUTE";
              break;
            case 309:
              v14 = @"SELECTED_ROUTE";
              break;
            case 310:
              v14 = @"REQUEST_NAVIGATION_UPDATE";
              break;
            case 311:
              v14 = @"UPDATE_NAV_ROUTE_UPDATE";
              break;
            case 312:
              v14 = @"AVAILABLE_ROUTE_UPDATE";
              break;
            case 313:
              v14 = @"PAUSE_NAV";
              break;
            case 314:
              v14 = @"RESUME_NAV";
              break;
            case 315:
              v14 = @"SET_DISPLAYED_STEP";
              break;
            default:
              if (type != 206)
              {
                goto LABEL_57;
              }

              v14 = @"APPLY_LOCATION_AUTHORIZATION";
              break;
          }
        }

        goto LABEL_97;
      }

      if (type > 599)
      {
        if (type > 1499)
        {
          if (type == 1500)
          {
            v14 = @"DEBUG_FETCH_CONFIGURATION_INFO";
            goto LABEL_97;
          }

          if (type == 1501)
          {
            v14 = @"DEBUG_FETCH_DIAGNOSTICS_STRING";
            goto LABEL_97;
          }
        }

        else
        {
          if (type == 600)
          {
            v14 = @"FETCH_ROUTE_GENIUS";
            goto LABEL_97;
          }

          if (type == 1000)
          {
            v14 = @"PING";
            goto LABEL_97;
          }
        }

        goto LABEL_57;
      }

      if (type > 500)
      {
        if (type == 501)
        {
          v14 = @"PLACE_DATA_IDENTIFIER_LOOKUP";
          goto LABEL_97;
        }

        if (type == 502)
        {
          v14 = @"SERVICE_REQUEST";
          goto LABEL_97;
        }

        goto LABEL_57;
      }

      if (type == 401)
      {
        v14 = @"OPEN_URL";
        goto LABEL_97;
      }

      if (type != 500)
      {
        goto LABEL_57;
      }

      v14 = @"PLACE_DATA_MUID_LOOKUP";
    }

    else
    {
      if (type <= 99)
      {
        if (type > 3)
        {
          switch(type)
          {
            case '2':
              v14 = @"START_INITIAL_SYNC";
              break;
            case '3':
              v14 = @"FETCH_CURRENT_COUNTRY_CODE";
              break;
            case '4':
              v14 = @"FETCH_EXPERIMENTS_CONFIG";
              break;
            case '5':
              v14 = @"DID_CHANGE_EXPERIMENTS_CONFIG";
              break;
            case '6':
              v14 = @"SYNC_UP_NEXT_ITEMS";
              break;
            case '7':
              v14 = @"REQUEST_UP_NEXT_ITEMS";
              break;
            case '8':
              v14 = @"SYNC_CONFIG_STORE";
              break;
            case '9':
              v14 = @"CHECKIN_WITH_CONFIG_STORE";
              break;
            case ':':
              v14 = @"REQUEST_ANALYTIC_IDENTIFIERS";
              break;
            case ';':
              v14 = @"CHECKIN_WITH_SUBSCRIPTION_INFO";
              break;
            case '<':
              v14 = @"SYNC_SUBSCRIPTION_INFO";
              break;
            case '=':
              v14 = @"SET_OBSERVED_SUBSCRIPTION_IDENTIFIERS";
              break;
            case '>':
              goto LABEL_57;
            case '?':
              v14 = @"UPDATE_SUBSCRIPTION_STATE";
              break;
            case '@':
              v14 = @"START_STOP_SUBSCRIPTION_DOWNLOAD";
              break;
            case 'A':
              v14 = @"CHECKIN_WITH_SUBSCRIPTION_STATE_SUMMARY";
              break;
            case 'B':
              v14 = @"SET_SUBSCRIPTION_STATE_SUMMARY";
              break;
            case 'C':
              v14 = @"SET_SUBSCRIPTION_SHOULD_SYNC";
              break;
            default:
              if (type != 4)
              {
                goto LABEL_57;
              }

              v14 = @"FETCHED_TILE";
              break;
          }

          goto LABEL_97;
        }

        switch(type)
        {
          case 1:
            v14 = @"FETCH_TILES";
            goto LABEL_97;
          case 2:
            v14 = @"CANCEL_TILES";
            goto LABEL_97;
          case 3:
            v14 = @"REPORT_CORRUPT_TILE";
            goto LABEL_97;
        }

LABEL_57:
        v14 = [NSString stringWithFormat:@"(unknown: %i)", type];
        goto LABEL_97;
      }

      if (type <= 102)
      {
        if (type == 100)
        {
          v14 = @"CHECKIN_WITH_TILE_GROUP";
        }

        else if (type == 101)
        {
          v14 = @"FORCE_UPDATE_MANIFEST";
        }

        else
        {
          v14 = @"DID_CHANGE_ACTIVE_TILE_GROUP";
        }

        goto LABEL_97;
      }

      if (type > 200)
      {
        if (type == 201)
        {
          v14 = @"STOP_LOCATION_UPDATE";
        }

        else
        {
          v14 = @"UPDATED_LOCATION";
        }

        goto LABEL_97;
      }

      if (type == 103)
      {
        v14 = @"FETCH_RESOURCE";
        goto LABEL_97;
      }

      if (type != 200)
      {
        goto LABEL_57;
      }

      v14 = @"START_LOCATION_UPDATE";
    }

LABEL_97:
    v16 = sub_100001B24();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      isReply = [v12 isReply];
      v18 = @"message";
      *buf = 138543875;
      if (isReply)
      {
        v18 = @"reply";
      }

      v34 = v18;
      v35 = 2113;
      v36 = v14;
      v37 = 2113;
      v38 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Finished sending %{public}@ for type: %{private}@ (GUID = %{private}@)", buf, 0x20u);
    }

    v15 = -[NMDeviceConnection _messageQueueForType:](self, "_messageQueueForType:", [v12 type]);
    -[NSObject didSendPayloadWithSize:](v15, "didSendPayloadWithSize:", [v12 payloadSize]);
    -[NMDeviceConnection _dequeueNextMessageIfNecessaryForType:](self, "_dequeueNextMessageIfNecessaryForType:", [v12 type]);
    goto LABEL_102;
  }

  v15 = sub_100001B24();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    *buf = 138543362;
    v34 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "Unable to find metadata for message GUID = %{public}@. This could throw off the in-flight message counters.", buf, 0xCu);
  }

  v14 = 0;
LABEL_102:

  if (success)
  {
    goto LABEL_121;
  }

LABEL_103:
  v19 = [(__CFString *)v14 length];
  v20 = sub_100001B24();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
  if (v19)
  {
    if (!v21)
    {
      goto LABEL_109;
    }

    *buf = 138478339;
    v34 = v14;
    v35 = 2114;
    v36 = errorCopy;
    v37 = 2114;
    v38 = identifierCopy;
    v22 = "Error sending message: messageType=%{private}@ -- %{public}@ (GUID = %{public}@)";
    v23 = v20;
    v24 = 32;
  }

  else
  {
    if (!v21)
    {
      goto LABEL_109;
    }

    *buf = 138543618;
    v34 = errorCopy;
    v35 = 2114;
    v36 = identifierCopy;
    v22 = "Error sending message: %{public}@ (GUID = %{public}@)";
    v23 = v20;
    v24 = 22;
  }

  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, v22, buf, v24);
LABEL_109:

  if (identifierCopy)
  {
    [(NSLock *)self->_replyCallbackBlocksLock lock];
    v25 = [(NSMutableDictionary *)self->_replyCallbackBlocks objectForKey:identifierCopy];
    v26 = [v25 copy];

    if (v26)
    {
      [(NSMutableDictionary *)self->_replyCallbackBlocks removeObjectForKey:identifierCopy];
      v27 = [(NSMutableDictionary *)self->_replyExpectingMessageMetadata objectForKey:identifierCopy];
      [(NSMutableDictionary *)self->_replyExpectingMessageMetadata removeObjectForKey:identifierCopy];
      [(NSLock *)self->_replyCallbackBlocksLock unlock];
      timeoutTimer = [v27 timeoutTimer];

      if (timeoutTimer)
      {
        timeoutTimer2 = [v27 timeoutTimer];
        dispatch_source_cancel(timeoutTimer2);

        [v27 setTimeoutTimer:0];
      }

      v30 = sub_100001B24();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "Sending reply to callback block", buf, 2u);
      }

      if (errorCopy)
      {
        v31 = [NSDictionary dictionaryWithObject:errorCopy forKey:NSUnderlyingErrorKey];
      }

      else
      {
        v31 = 0;
      }

      v32 = [NSError errorWithDomain:@"NMDeviceConnectionErrorDomain" code:5 userInfo:v31];

      v26[2](v26, 0, v32);
      errorCopy = v32;
    }

    else
    {
      [(NSLock *)self->_replyCallbackBlocksLock unlock];
    }
  }

LABEL_121:
}

- (void)test_disconnect
{
  if (!self->_testSimulateNoDevices)
  {
    v3 = sub_100001B24();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Will simulate no devices connected and update connection status", v4, 2u);
    }

    self->_testSimulateNoDevices = 1;
    [(IDSService *)self->_idsService removeDelegate:self];
    [(NMDeviceConnection *)self updateConnectionStatus];
  }
}

- (void)test_reconnect
{
  if (self->_testSimulateNoDevices)
  {
    v7 = v2;
    v8 = v3;
    v5 = sub_100001B24();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Will remove simulation of no devices connected and update connection status", v6, 2u);
    }

    self->_testSimulateNoDevices = 0;
    [(IDSService *)self->_idsService addDelegate:self queue:self->_queue];
    [(NMDeviceConnection *)self updateConnectionStatus];
  }
}

@end