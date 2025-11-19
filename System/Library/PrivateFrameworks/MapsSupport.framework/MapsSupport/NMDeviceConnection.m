@interface NMDeviceConnection
- (BOOL)_shouldIncludeTemporaryLocationAuthorizationWithMessage:(id)a3;
- (NMDeviceConnection)init;
- (id)_idsOptionsForMessage:(id)a3 withOptions:(id)a4;
- (id)_nearbyConnectedDevice;
- (int64_t)_priorityForMessage:(id)a3;
- (unint64_t)_determineProtocolVersion:(id)a3;
- (unint64_t)protocolVersion;
- (void)_dequeueNextMessageIfNecessaryForType:(int)a3;
- (void)_sendMessage:(id)a3 options:(id)a4 force:(BOOL)a5 timeSpentEnqueued:(double)a6 withReply:(id)a7;
- (void)_sendReply:(id)a3 forMessage:(id)a4 options:(id)a5 force:(BOOL)a6 timeSpentEnqueued:(double)a7;
- (void)_unpauseAllQueues;
- (void)_updateReceiverProcessUUID:(id)a3;
- (void)sendMessage:(id)a3 options:(id)a4 withReply:(id)a5;
- (void)sendReply:(id)a3 forMessage:(id)a4 options:(id)a5;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
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
    v5 = [v4 getActivePairedDevice];

    if (v5)
    {
      self->_protocolVersion = [(NMDeviceConnection *)self _determineProtocolVersion:v5];

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

- (void)_updateReceiverProcessUUID:(id)a3
{
  v5 = a3;
  if (v5)
  {
    [(NSLock *)self->_receiverProcessUUIDLock lock];
    if ([(NSString *)self->_receiverProcessUUID isEqualToString:v5])
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
        v11 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Receiver process UUID changed (old: %{private}@, new: %{private}@). Requesting clients re-sync state if necessary.", &v8, 0x16u);
      }

      objc_storeStrong(&self->_receiverProcessUUID, a3);
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
  v2 = [(IDSService *)self->_idsService devices];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isDefaultPairedDevice] && (objc_msgSend(v6, "isConnected") & 1) != 0)
        {
          v3 = v6;
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (id)_idsOptionsForMessage:(id)a3 withOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = IDSSendMessageOptionBypassDuetKey;
  v22[0] = IDSSendMessageOptionEnforceRemoteTimeoutsKey;
  v22[1] = IDSSendMessageOptionBypassDuetKey;
  v23[0] = &__kCFBooleanTrue;
  v23[1] = &__kCFBooleanTrue;
  v9 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
  v10 = [v9 mutableCopy];

  v11 = [v7 objectForKey:@"NMSendMessageOptionTimeout"];

  if (v11)
  {
    v12 = [v7 objectForKeyedSubscript:@"NMSendMessageOptionTimeout"];
    [v10 setObject:v12 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];
  }

  v13 = [v7 objectForKey:@"NMSendMessageOptionMapTile"];
  v14 = [v13 BOOLValue];

  if (v14)
  {
    [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionMapTileKey];
  }

  v15 = [v7 objectForKey:@"NMSendMessageOptionFireAndForget"];
  if (!v15 || (v16 = v15, [v7 objectForKey:@"NMSendMessageOptionFireAndForget"], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "BOOLValue"), v17, v16, v18))
  {
    [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionFireAndForgetKey];
  }

  v19 = [v7 objectForKeyedSubscript:@"NMSendMessageOptionDisableIDSCompressionKey"];
  v20 = [v19 BOOLValue];

  if (v20)
  {
    [v10 setObject:&__kCFBooleanFalse forKeyedSubscript:IDSSendMessageOptionCompressPayloadKey];
  }

  if ([(NMDeviceConnection *)self _priorityForMessage:v6]== 100)
  {
    [v10 removeObjectForKey:v8];
  }

  return v10;
}

- (int64_t)_priorityForMessage:(id)a3
{
  v3 = a3;
  if ([v3 hasPriority])
  {
    v4 = [v3 IDSMessagePriority];

    return v4;
  }

  v6 = [v3 type];

  result = 300;
  if (v6 > 199)
  {
    if (v6 <= 499)
    {
      if ((v6 - 200) >= 6 && v6 != 308)
      {
        return result;
      }
    }

    else if ((v6 - 500) >= 3 && (v6 - 1500) >= 2 && v6 != 600)
    {
      return result;
    }

    return 200;
  }

  if ((v6 - 50) <= 0x35 && ((1 << (v6 - 50)) & 0x3C00000003AFFFLL) != 0 || (v6 - 1) < 4)
  {
    return 200;
  }

  return result;
}

- (void)_dequeueNextMessageIfNecessaryForType:(int)a3
{
  v5 = [(NMDeviceConnection *)self _messageQueueForType:?];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003D1A4;
  block[3] = &unk_1000865B0;
  v11 = a3;
  v9 = v5;
  v10 = self;
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

- (BOOL)_shouldIncludeTemporaryLocationAuthorizationWithMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 type];
  v5 = 1;
  if (v4 > 301)
  {
    if (v4 != 302 && v4 != 304)
    {
      goto LABEL_7;
    }
  }

  else if (v4 != 206)
  {
    if (v4 == 300)
    {
      v6 = [v3 argumentForTag:401];
      v5 = [v6 hasDataValue];

      goto LABEL_8;
    }

LABEL_7:
    v5 = 0;
  }

LABEL_8:

  return v5;
}

- (void)sendMessage:(id)a3 options:(id)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003E3F4;
  v15[3] = &unk_100086600;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (void)_sendMessage:(id)a3 options:(id)a4 force:(BOOL)a5 timeSpentEnqueued:(double)a6 withReply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_connected)
  {
    v15 = [v13 objectForKeyedSubscript:@"NMSendMessageOptionFireAndForget"];
    if (!v15 || (v16 = v15, [v13 objectForKeyedSubscript:@"NMSendMessageOptionFireAndForget"], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "BOOLValue"), v17, v16, v18))
    {
      v19 = sub_100001B24();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = [v12 shortDebugDescription];
        *buf = 138477827;
        v94 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Not sending message because device is not connected: %{private}@", buf, 0xCu);
      }

      if (v14)
      {
        v21 = 3;
LABEL_15:
        v25 = [NSError errorWithDomain:@"NMDeviceConnectionErrorDomain" code:v21 userInfo:0];
        v14[2](v14, 0, v25);
LABEL_16:

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  if ([(NMDeviceConnection *)self shouldSendMessage:v12])
  {
    if (a5)
    {
      v22 = 1;
    }

    else
    {
      v26 = [v13 objectForKeyedSubscript:@"NMSendMessageOptionSendImmediately"];
      v22 = [v26 BOOLValue];
    }

    v25 = -[NMDeviceConnection _messageQueueForType:](self, "_messageQueueForType:", [v12 type]);
    if (!-[NMDeviceConnection canSendMessageWithType:](self, "canSendMessageWithType:", [v12 type]))
    {
      v29 = sub_100001B24();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = [v12 shortDebugDescription];
        *buf = 138477827;
        v94 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Not sending message because remote device does not support it: %{private}@", buf, 0xCu);
      }

      if (v14)
      {
        v31 = [NSError errorWithDomain:@"NMDeviceConnectionErrorDomain" code:6 userInfo:0];
        v14[2](v14, 0, v31);
      }

      goto LABEL_16;
    }

    if (([v25 isPaused] & 1) != 0 || (v22 & 1) == 0 && (objc_msgSend(v25, "shouldSendNewPayload") & 1) == 0)
    {
      v27 = sub_100001B24();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = [v12 shortDebugDescription];
        *buf = 138477827;
        v94 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Cannot send message now, adding to queue: %{private}@", buf, 0xCu);
      }

      [v25 enqueueMessage:v12 options:v13 reply:v14];
      goto LABEL_16;
    }

    v32 = sub_100001B7C();
    [v12 setSenderUUID:v32];

    [v12 setSentTimestamp:CFAbsoluteTimeGetCurrent()];
    if (a6 > 0.0)
    {
      [v12 setEnqueuedTimeInterval:a6];
    }

    if (![(NMDeviceConnection *)self _shouldIncludeTemporaryLocationAuthorizationWithMessage:v12])
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
      [v12 addArgument:v36];
LABEL_129:

LABEL_130:
      v84 = [v12 data];
      v39 = [(NMDeviceConnection *)self _idsOptionsForMessage:v12 withOptions:v13];
      v40 = v39;
      if (v14)
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

      v43 = [(NMDeviceConnection *)self _priorityForMessage:v12];
      v44 = [v13 objectForKeyedSubscript:@"NMSendMessageOptionUrgent"];

      if (v44)
      {
        v45 = [v13 objectForKeyedSubscript:@"NMSendMessageOptionUrgent"];
        if ([v45 BOOLValue])
        {
          v43 = 300;
        }

        else
        {
          v43 = 200;
        }
      }

      v46 = [v84 length];
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
      v51 = [(IDSService *)idsService accounts];
      v52 = [v51 anyObject];
      v53 = [NSSet setWithObject:IDSDefaultPairedDevice];
      v90 = 0;
      v91 = 0;
      v54 = v43;
      v55 = v82;
      LODWORD(idsService) = [(IDSService *)idsService sendData:v84 fromAccount:v52 toDestinations:v53 priority:v54 options:v82 identifier:&v91 error:&v90];
      v83 = v91;
      v81 = v90;

      v56 = sub_100001B24();
      v57 = v56;
      if (idsService)
      {
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          v58 = [v12 shortDebugDescription];
          v59 = [v84 length];
          if (v13)
          {
            v60 = [NSString stringWithFormat:@", options: %@", v13];
          }

          else
          {
            v60 = &stru_100087EB8;
          }

          if (a6 <= 0.0)
          {
            v65 = &stru_100087EB8;
          }

          else
          {
            v65 = [NSString stringWithFormat:@", enqueued time: %f", *&a6];
          }

          *buf = 138478851;
          v94 = v58;
          v95 = 2048;
          v96 = v59;
          v97 = 2113;
          v98 = v60;
          v99 = 2113;
          v100 = v65;
          v101 = 2113;
          v102 = v83;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "Sending message: %{private}@ (size = %lu%{private}@%{private}@, GUID = %{private}@)", buf, 0x34u);
          if (a6 > 0.0)
          {
          }

          v55 = v82;
          if (v13)
          {
          }
        }

        v66 = sub_100001B24();
        v64 = v83;
        v61 = v81;
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138477827;
          v94 = v12;
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEBUG, "Message contents to be sent: %{private}@", buf, 0xCu);
        }

        v67 = objc_alloc_init(_NMSentMessageMetadata);
        -[_NMSentMessageMetadata setType:](v67, "setType:", [v12 type]);
        [v12 sentTimestamp];
        [(_NMSentMessageMetadata *)v67 setTimestamp:?];
        -[_NMSentMessageMetadata setPayloadSize:](v67, "setPayloadSize:", [v84 length]);
        [(_NMSentMessageMetadata *)v67 setReply:0];
        [v25 willSendPayloadWithSize:{-[_NMSentMessageMetadata payloadSize](v67, "payloadSize")}];
        if (v83)
        {
          if (v14)
          {
            [(NSLock *)self->_replyCallbackBlocksLock lock];
            replyCallbackBlocks = self->_replyCallbackBlocks;
            v69 = [v14 copy];
            [(NSMutableDictionary *)replyCallbackBlocks setObject:v69 forKey:v83];

            v70 = [v13 objectForKey:@"NMSendMessageOptionReplyTimeout"];
            if (v70)
            {
              v71 = [v13 objectForKeyedSubscript:@"NMSendMessageOptionReplyTimeout"];
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
              v86 = v12;
              v87 = v83;
              v88 = self;
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
          v62 = [v12 shortDebugDescription];
          *buf = 138478083;
          v94 = v62;
          v95 = 2113;
          v96 = v81;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "Error sending message: messageType=%{private}@ -- %{private}@", buf, 0x16u);
        }

        v63 = sub_100001B24();
        v64 = v83;
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138477827;
          v94 = v12;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEBUG, "Message contents which failed: %{private}@", buf, 0xCu);
        }

        if (v14)
        {
          v14[2](v14, 0, v81);
        }

        -[NMDeviceConnection _dequeueNextMessageIfNecessaryForType:](self, "_dequeueNextMessageIfNecessaryForType:", [v12 type]);
      }

      goto LABEL_16;
    }

    v37 = [v12 type];
    if (v37 > 202)
    {
      if (v37 <= 400)
      {
        if (v37 <= 205)
        {
          if (v37 == 203)
          {
            v38 = @"FAILED_TO_UPDATE_LOCATION";
          }

          else if (v37 == 204)
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
          switch(v37)
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
              if (v37 != 206)
              {
                goto LABEL_87;
              }

              v38 = @"APPLY_LOCATION_AUTHORIZATION";
              break;
          }
        }

        goto LABEL_127;
      }

      if (v37 > 599)
      {
        if (v37 > 1499)
        {
          if (v37 == 1500)
          {
            v38 = @"DEBUG_FETCH_CONFIGURATION_INFO";
            goto LABEL_127;
          }

          if (v37 == 1501)
          {
            v38 = @"DEBUG_FETCH_DIAGNOSTICS_STRING";
            goto LABEL_127;
          }
        }

        else
        {
          if (v37 == 600)
          {
            v38 = @"FETCH_ROUTE_GENIUS";
            goto LABEL_127;
          }

          if (v37 == 1000)
          {
            v38 = @"PING";
            goto LABEL_127;
          }
        }

        goto LABEL_87;
      }

      if (v37 > 500)
      {
        if (v37 == 501)
        {
          v38 = @"PLACE_DATA_IDENTIFIER_LOOKUP";
          goto LABEL_127;
        }

        if (v37 == 502)
        {
          v38 = @"SERVICE_REQUEST";
          goto LABEL_127;
        }

        goto LABEL_87;
      }

      if (v37 == 401)
      {
        v38 = @"OPEN_URL";
        goto LABEL_127;
      }

      if (v37 != 500)
      {
        goto LABEL_87;
      }

      v38 = @"PLACE_DATA_MUID_LOOKUP";
    }

    else
    {
      if (v37 <= 99)
      {
        if (v37 > 3)
        {
          switch(v37)
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
              if (v37 != 4)
              {
                goto LABEL_87;
              }

              v38 = @"FETCHED_TILE";
              break;
          }

          goto LABEL_127;
        }

        switch(v37)
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
        v38 = [NSString stringWithFormat:@"(unknown: %i)", v37];
        goto LABEL_127;
      }

      if (v37 <= 102)
      {
        if (v37 == 100)
        {
          v38 = @"CHECKIN_WITH_TILE_GROUP";
        }

        else if (v37 == 101)
        {
          v38 = @"FORCE_UPDATE_MANIFEST";
        }

        else
        {
          v38 = @"DID_CHANGE_ACTIVE_TILE_GROUP";
        }

        goto LABEL_127;
      }

      if (v37 > 200)
      {
        if (v37 == 201)
        {
          v38 = @"STOP_LOCATION_UPDATE";
        }

        else
        {
          v38 = @"UPDATED_LOCATION";
        }

        goto LABEL_127;
      }

      if (v37 == 103)
      {
        v38 = @"FETCH_RESOURCE";
        goto LABEL_127;
      }

      if (v37 != 200)
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
    v24 = [v12 shortDebugDescription];
    *buf = 138477827;
    v94 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Not sending message because connection was short circuited: %{private}@", buf, 0xCu);
  }

  if (v14)
  {
    v21 = 4;
    goto LABEL_15;
  }

LABEL_17:
}

- (void)sendReply:(id)a3 forMessage:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003F870;
  v15[3] = &unk_100086628;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (void)_sendReply:(id)a3 forMessage:(id)a4 options:(id)a5 force:(BOOL)a6 timeSpentEnqueued:(double)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  dispatch_assert_queue_V2(self->_queue);
  if (v12 && v13)
  {
    if (self->_connected)
    {
      goto LABEL_8;
    }

    v15 = [v14 objectForKeyedSubscript:@"NMSendMessageOptionFireAndForget"];
    if (!v15)
    {
      goto LABEL_6;
    }

    v16 = v15;
    v17 = [v14 objectForKeyedSubscript:@"NMSendMessageOptionFireAndForget"];
    v18 = [v17 BOOLValue];

    if (!v18)
    {
LABEL_8:
      if (a6)
      {
        v21 = 1;
      }

      else
      {
        v22 = [v14 objectForKeyedSubscript:@"NMSendMessageOptionSendImmediately"];
        v21 = [v22 BOOLValue];
      }

      v23 = -[NMDeviceConnection _messageQueueForType:](self, "_messageQueueForType:", [v13 type]);
      v19 = v23;
      if ((v21 & 1) != 0 || ([v23 shouldSendNewPayload]& 1) != 0)
      {
        Current = CFAbsoluteTimeGetCurrent();
        v25 = objc_getAssociatedObject(v13, &unk_10009E838);
        if (v25)
        {
          v26 = sub_100001B7C();
          [v12 setSenderUUID:v26];

          if (([v12 hasResponseTime] & 1) == 0)
          {
            [v25 requestReceivedTimestamp];
            [v12 setResponseTime:Current - v27];
          }

          v54 = v19;
          if (a7 > 0.0)
          {
            [v12 setEnqueuedTimeInterval:a7];
          }

          [v25 requestReceivedTimestamp];
          [v12 setRequestReceivedTimestamp:?];
          [v12 setSentTimestamp:Current];
          v28 = [v12 data];
          v29 = [v25 idsMessageIdentifier];
          v30 = [NSMutableDictionary dictionaryWithObject:v29 forKey:IDSSendMessageOptionPeerResponseIdentifierKey];

          v31 = [(NMDeviceConnection *)self _idsOptionsForMessage:v13 withOptions:v14];
          if (v31)
          {
            [v30 addEntriesFromDictionary:v31];
          }

          v53 = v31;
          v32 = [(NMDeviceConnection *)self _priorityForReply:v13];
          v33 = [v14 objectForKeyedSubscript:@"NMSendMessageOptionUrgent"];

          v55 = v25;
          v57 = v30;
          if (v33)
          {
            v34 = [v14 objectForKeyedSubscript:@"NMSendMessageOptionUrgent"];
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
          v36 = [(IDSService *)idsService accounts];
          v37 = [v36 anyObject];
          v38 = [NSSet setWithObject:IDSDefaultPairedDevice];
          v58 = 0;
          v59 = 0;
          LODWORD(idsService) = [(IDSService *)idsService sendData:v28 fromAccount:v37 toDestinations:v38 priority:v32 options:v57 identifier:&v59 error:&v58];
          v39 = v59;
          v56 = v58;

          v40 = sub_100001B24();
          v41 = v40;
          if (idsService)
          {
            v42 = v28;
            v19 = v54;
            v43 = v39;
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              v44 = [v13 shortDebugDescription];
              v51 = [v42 length];
              [v12 responseTime];
              v46 = v45;
              if (v14)
              {
                v52 = [NSString stringWithFormat:@", options: %@", v14];
              }

              else
              {
                v52 = &stru_100087EB8;
              }

              if (a7 <= 0.0)
              {
                v48 = &stru_100087EB8;
              }

              else
              {
                v48 = [NSString stringWithFormat:@", enqueued time: %f", *&a7];
              }

              *buf = 138479107;
              v61 = v44;
              v62 = 2048;
              v63 = v51;
              v64 = 2048;
              v65 = v46;
              v66 = 2113;
              v67 = v52;
              v68 = 2113;
              v69 = v48;
              v70 = 2113;
              v71 = v43;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Sending reply for original message: %{private}@ (size = %lu, response time = %f%{private}@%{private}@, GUID = %{private}@)", buf, 0x3Eu);
              if (a7 > 0.0)
              {
              }

              if (v14)
              {
              }
            }

            v49 = sub_100001B24();
            v25 = v55;
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138478083;
              v61 = v12;
              v62 = 2113;
              v63 = v13;
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "Reply contents to be sent: %{private}@\n Original message contents: %{private}@", buf, 0x16u);
            }

            v50 = objc_alloc_init(_NMSentMessageMetadata);
            -[_NMSentMessageMetadata setType:](v50, "setType:", [v13 type]);
            [v13 sentTimestamp];
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
              v47 = [v13 shortDebugDescription];
              *buf = 138543618;
              v61 = v47;
              v62 = 2114;
              v63 = v56;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Error sending reply to message: messageType=%{public}@ -- %{public}@", buf, 0x16u);
            }

            -[NMDeviceConnection _dequeueNextMessageIfNecessaryForType:](self, "_dequeueNextMessageIfNecessaryForType:", [v13 type]);
            v42 = v28;
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
            v61 = v13;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Sending reply to unknown message '%{public}@'. Ignoring...", buf, 0xCu);
          }
        }
      }

      else
      {
        [v19 enqueueReply:v12 forMessage:v13 options:v14];
      }
    }

    else
    {
LABEL_6:
      v19 = sub_100001B24();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = [v13 shortDebugDescription];
        *buf = 138477827;
        v61 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Not sending reply because device is not connected. Original message: %{private}@", buf, 0xCu);
      }
    }
  }
}

- (unint64_t)_determineProtocolVersion:(id)a3
{
  v3 = a3;
  v4 = [[NSUUID alloc] initWithUUIDString:@"9FFD76FA-21FC-46AE-8AAB-14FB3F692B28"];
  v5 = [v3 supportsCapability:v4];

  if (v5)
  {
    v6 = 6;
  }

  else
  {
    v7 = [[NSUUID alloc] initWithUUIDString:@"AC953E03-CAB8-4508-9145-EA5D629BCDAC"];
    v8 = [v3 supportsCapability:v7];

    if (v8)
    {
      v6 = 5;
    }

    else
    {
      v9 = [[NSUUID alloc] initWithUUIDString:@"CBAC2DE5-C7A2-4DA2-932B-E57BABEA3B97"];
      v10 = [v3 supportsCapability:v9];

      if (v10)
      {
        v6 = 4;
      }

      else
      {
        v11 = [[NSUUID alloc] initWithUUIDString:@"5C068089-C478-48CE-892A-13DBA45BE33A"];
        v12 = [v3 supportsCapability:v11];

        if (v12)
        {
          v6 = 3;
        }

        else
        {
          v13 = [[NSUUID alloc] initWithUUIDString:@"AC310276-2B5D-4C25-A6AC-7D59ED5CB5D3"];
          v14 = [v3 supportsCapability:v13];

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
    v4 = [(IDSService *)self->_idsService devices];
    *buf = 138477827;
    *v65 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Updating connection status with devices: %{private}@", buf, 0xCu);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v5 = [(IDSService *)self->_idsService devices];
  v6 = [v5 countByEnumeratingWithState:&v57 objects:v66 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v57 + 1) + 8 * i);
        if ([v10 isDefaultPairedDevice] && objc_msgSend(v10, "isConnected"))
        {
          v11 = [v10 isNearby];
          v12 = 1;
          goto LABEL_14;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v57 objects:v66 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
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

    v11 = 0;
    v12 = 0;
  }

  else if (v15)
  {
    *buf = 67109376;
    *v65 = v12;
    *&v65[4] = 1024;
    *&v65[6] = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "New connection status: connected: %i, nearby: %i", buf, 0xEu);
  }

  nearby = self->_nearby;
  if (nearby != v11)
  {
    self->_nearby = v11;
  }

  self->_protocolVersion = 0;
  if (self->_connected != v12)
  {
    v43 = nearby;
    v44 = v11;
    self->_connected = v12;
    if (!v12)
    {
      v17 = [[NSError alloc] initWithDomain:@"NMDeviceConnectionErrorDomain" code:0 userInfo:0];
      [(NSLock *)self->_replyCallbackBlocksLock lock];
      v18 = [(NSMutableDictionary *)self->_replyCallbackBlocks allValues];
      v19 = [v18 copy];

      v20 = [(NSMutableDictionary *)self->_replyExpectingMessageMetadata allValues];
      v21 = [v20 copy];

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
            v30 = [v29 timeoutTimer];

            if (v30)
            {
              v31 = [v29 timeoutTimer];
              dispatch_source_cancel(v31);

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

    v37 = [(GEOObserverHashTable *)self->_observers allObservers];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v38 = [v37 countByEnumeratingWithState:&v45 objects:v61 count:16];
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
            objc_enumerationMutation(v37);
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

        v39 = [v37 countByEnumeratingWithState:&v45 objects:v61 count:16];
      }

      while (v39);
    }

    nearby = v43;
    v11 = v44;
  }

  if (nearby != v11)
  {
    [(GEOObserverHashTable *)self->_observers connection:self didChangeDeviceNearby:v11];
  }
}

- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7
{
  v9 = a5;
  v10 = a7;
  Current = CFAbsoluteTimeGetCurrent();
  v12 = [v10 incomingResponseIdentifier];
  v13 = [v10 incomingResponseIdentifier];

  if (v13)
  {
    [(NSLock *)self->_replyCallbackBlocksLock lock];
    replyCallbackBlocks = self->_replyCallbackBlocks;
    v15 = [v10 incomingResponseIdentifier];
    v16 = [(NSMutableDictionary *)replyCallbackBlocks objectForKey:v15];
    v17 = v16 != 0;

    [(NSLock *)self->_replyCallbackBlocksLock unlock];
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_100001B24();
  v19 = v18;
  if (v9)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138477827;
      v101 = v12;
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

      v21 = [[NMReply alloc] initWithData:v9];
      v19 = v21;
      if (v21)
      {
        v22 = [(NMReply *)v21 senderUUID];
        [(NMDeviceConnection *)self _updateReceiverProcessUUID:v22];

        [(NSLock *)self->_replyCallbackBlocksLock lock];
        v23 = [(NSMutableDictionary *)self->_replyExpectingMessageMetadata objectForKey:v12];
        [(NSMutableDictionary *)self->_replyExpectingMessageMetadata removeObjectForKey:v12];
        [(NSLock *)self->_replyCallbackBlocksLock unlock];
        v24 = [v23 timeoutTimer];

        if (v24)
        {
          v25 = [v23 timeoutTimer];
          dispatch_source_cancel(v25);

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
        v30 = [v23 type];
        if (v30 > 202)
        {
          if (v30 <= 400)
          {
            if (v30 <= 205)
            {
              if (v30 == 203)
              {
                v31 = @"FAILED_TO_UPDATE_LOCATION";
              }

              else if (v30 == 204)
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
              switch(v30)
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
                  if (v30 != 206)
                  {
                    goto LABEL_107;
                  }

                  v31 = @"APPLY_LOCATION_AUTHORIZATION";
                  break;
              }
            }

            goto LABEL_147;
          }

          if (v30 > 599)
          {
            if (v30 > 1499)
            {
              if (v30 == 1500)
              {
                v31 = @"DEBUG_FETCH_CONFIGURATION_INFO";
                goto LABEL_147;
              }

              if (v30 == 1501)
              {
                v31 = @"DEBUG_FETCH_DIAGNOSTICS_STRING";
                goto LABEL_147;
              }
            }

            else
            {
              if (v30 == 600)
              {
                v31 = @"FETCH_ROUTE_GENIUS";
                goto LABEL_147;
              }

              if (v30 == 1000)
              {
                v31 = @"PING";
                goto LABEL_147;
              }
            }

            goto LABEL_107;
          }

          if (v30 > 500)
          {
            if (v30 == 501)
            {
              v31 = @"PLACE_DATA_IDENTIFIER_LOOKUP";
              goto LABEL_147;
            }

            if (v30 == 502)
            {
              v31 = @"SERVICE_REQUEST";
              goto LABEL_147;
            }

            goto LABEL_107;
          }

          if (v30 == 401)
          {
            v31 = @"OPEN_URL";
            goto LABEL_147;
          }

          if (v30 != 500)
          {
            goto LABEL_107;
          }

          v31 = @"PLACE_DATA_MUID_LOOKUP";
        }

        else
        {
          if (v30 <= 99)
          {
            if (v30 > 3)
            {
              switch(v30)
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
                  if (v30 != 4)
                  {
                    goto LABEL_107;
                  }

                  v31 = @"FETCHED_TILE";
                  break;
              }

              goto LABEL_147;
            }

            switch(v30)
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
            v94 = [NSString stringWithFormat:@"(unknown: %i)", v30];
LABEL_148:
            v75 = [v9 length];
            [v19 responseTime];
            v77 = v76;
            [v19 enqueuedTimeInterval];
            v79 = v78;
            [v19 responseTime];
            v81 = v29 - v80;
            [v19 enqueuedTimeInterval];
            v83 = v81 - v82;
            v84 = [v10 incomingResponseIdentifier];
            v85 = [v10 outgoingResponseIdentifier];
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
            v113 = v84;
            v114 = 2113;
            v115 = v85;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Received reply for original message type: %{private}@ (size = %lu, elapsed time = %f, remote processing time = %f, enqueued time = %f, inferred transport time = %f, incoming guid = %{private}@, outgoing guid = %{private}@)", buf, 0x52u);

LABEL_149:
            v86 = [v19 decompressArguments];
            v87 = sub_100001B24();
            v88 = v87;
            if (v86)
            {
              if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138477827;
                v101 = v19;
                _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEBUG, "Received reply contents: %{private}@", buf, 0xCu);
              }

              [(NSLock *)self->_replyCallbackBlocksLock lock];
              v89 = [(NSMutableDictionary *)self->_replyCallbackBlocks objectForKey:v12];
              v70 = [v89 copy];

              if (v70)
              {
                [(NSMutableDictionary *)self->_replyCallbackBlocks removeObjectForKey:v12];
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
            v91 = [(NSMutableDictionary *)self->_replyCallbackBlocks objectForKey:v12];
            v70 = [v91 copy];

            if (!v70)
            {
LABEL_161:
              [(NSLock *)self->_replyCallbackBlocksLock unlock];
              goto LABEL_162;
            }

            [(NSMutableDictionary *)self->_replyCallbackBlocks removeObjectForKey:v12];
            [(NSLock *)self->_replyCallbackBlocksLock unlock];
            v67 = [NSError errorWithDomain:@"NMDeviceConnectionErrorDomain" code:1 userInfo:0];
            (v70)[2](v70, 0, v67);
LABEL_160:

LABEL_162:
            goto LABEL_163;
          }

          if (v30 <= 102)
          {
            if (v30 == 100)
            {
              v31 = @"CHECKIN_WITH_TILE_GROUP";
            }

            else if (v30 == 101)
            {
              v31 = @"FORCE_UPDATE_MANIFEST";
            }

            else
            {
              v31 = @"DID_CHANGE_ACTIVE_TILE_GROUP";
            }

            goto LABEL_147;
          }

          if (v30 > 200)
          {
            if (v30 == 201)
            {
              v31 = @"STOP_LOCATION_UPDATE";
            }

            else
            {
              v31 = @"UPDATED_LOCATION";
            }

            goto LABEL_147;
          }

          if (v30 == 103)
          {
            v31 = @"FETCH_RESOURCE";
            goto LABEL_147;
          }

          if (v30 != 200)
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

    v19 = [[NMMessage alloc] initWithData:v9];
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
      v34 = [v19 shortDebugDescription];
      v35 = [v9 length];
      [v19 sentTimestamp];
      v37 = Current - v36;
      [v19 enqueuedTimeInterval];
      *buf = 138478595;
      v101 = v34;
      v102 = 2048;
      v103 = v35;
      v104 = 2048;
      v105 = v37;
      v106 = 2048;
      v107 = v38;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Received message type: %{private}@ (size = %lu, sent %f seconds ago, enqueued time = %f)", buf, 0x2Au);
    }

    v39 = [v19 senderUUID];
    [(NMDeviceConnection *)self _updateReceiverProcessUUID:v39];

    v40 = [v19 decompressArguments];
    v41 = sub_100001B24();
    v42 = v41;
    if (v40)
    {
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138477827;
        v101 = v19;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "Received message contents: %{private}@", buf, 0xCu);
      }

      if ([v10 expectsPeerResponse])
      {
        v43 = [v10 outgoingResponseIdentifier];

        if (v43)
        {
          v44 = objc_alloc_init(_NMReplyInfo);
          v45 = [v10 outgoingResponseIdentifier];
          [(_NMReplyInfo *)v44 setIdsMessageIdentifier:v45];

          [(_NMReplyInfo *)v44 setRequestReceivedTimestamp:Current];
          objc_setAssociatedObject(v19, &unk_10009E838, v44, 0x301);
        }

        else
        {
          v44 = sub_100001B24();
          if (os_log_type_enabled(&v44->super, OS_LOG_TYPE_ERROR))
          {
            v59 = [v19 shortDebugDescription];
            *buf = 138543362;
            v101 = v59;
            _os_log_impl(&_mh_execute_header, &v44->super, OS_LOG_TYPE_ERROR, "Message wants reply, but didn't receive a message identifier! Message: %{public}@", buf, 0xCu);
          }
        }
      }

      [(NSLock *)self->_observersLock lock];
      messageObservers = self->_messageObservers;
      v61 = [NSNumber numberWithInt:[v19 type]];
      v23 = [(NSMutableDictionary *)messageObservers objectForKeyedSubscript:v61];

      v62 = [v23 allValues];
      v63 = [v62 copy];

      [(NSLock *)self->_observersLock unlock];
      if (![v63 count])
      {
        v64 = sub_100001B24();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          v65 = [v19 shortDebugDescription];
          *buf = 138543362;
          v101 = v65;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "No handler registered for incoming message type %{public}@", buf, 0xCu);
        }
      }

      v66 = [v19 argumentForTag:600];
      v67 = [v66 dataValue];

      if (v67)
      {
        v68 = sub_100001B24();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "Applying transient location authorization", buf, 2u);
        }

        v69 = [CLLocationManager _setClientTransientAuthorizationInfoForBundleId:@"com.apple.Maps" data:v67];
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

    if ([v10 expectsPeerResponse])
    {
      v47 = [v10 outgoingResponseIdentifier];

      if (v47)
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

        v54 = [v10 outgoingResponseIdentifier];
        [v53 setObject:v54 forKeyedSubscript:IDSSendMessageOptionPeerResponseIdentifierKey];

        idsService = self->_idsService;
        v55 = [v23 data];
        v56 = [(IDSService *)self->_idsService accounts];
        v57 = [v56 anyObject];
        v58 = [NSSet setWithObject:IDSDefaultPairedDevice];
        [(IDSService *)idsService sendData:v55 fromAccount:v57 toDestinations:v58 priority:200 options:v53 identifier:0 error:0];

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
    v101 = v12;
    v102 = 2080;
    v103 = v32;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Missing data with incomingResponseIdentifier: %{private}@ (Reply: %s) ", buf, 0x16u);
  }

LABEL_164:
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v10 = a5;
  v11 = a7;
  dispatch_assert_queue_V2(self->_queue);
  if (!v10)
  {
    v14 = 0;
    if (a6)
    {
      goto LABEL_121;
    }

    goto LABEL_103;
  }

  v12 = [(NSMutableDictionary *)self->_inFlightMessageMetadata objectForKey:v10];
  [(NSMutableDictionary *)self->_inFlightMessageMetadata removeObjectForKey:v10];
  if (v12)
  {
    v13 = [v12 type];
    if (v13 > 202)
    {
      if (v13 <= 400)
      {
        if (v13 <= 205)
        {
          if (v13 == 203)
          {
            v14 = @"FAILED_TO_UPDATE_LOCATION";
          }

          else if (v13 == 204)
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
          switch(v13)
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
              if (v13 != 206)
              {
                goto LABEL_57;
              }

              v14 = @"APPLY_LOCATION_AUTHORIZATION";
              break;
          }
        }

        goto LABEL_97;
      }

      if (v13 > 599)
      {
        if (v13 > 1499)
        {
          if (v13 == 1500)
          {
            v14 = @"DEBUG_FETCH_CONFIGURATION_INFO";
            goto LABEL_97;
          }

          if (v13 == 1501)
          {
            v14 = @"DEBUG_FETCH_DIAGNOSTICS_STRING";
            goto LABEL_97;
          }
        }

        else
        {
          if (v13 == 600)
          {
            v14 = @"FETCH_ROUTE_GENIUS";
            goto LABEL_97;
          }

          if (v13 == 1000)
          {
            v14 = @"PING";
            goto LABEL_97;
          }
        }

        goto LABEL_57;
      }

      if (v13 > 500)
      {
        if (v13 == 501)
        {
          v14 = @"PLACE_DATA_IDENTIFIER_LOOKUP";
          goto LABEL_97;
        }

        if (v13 == 502)
        {
          v14 = @"SERVICE_REQUEST";
          goto LABEL_97;
        }

        goto LABEL_57;
      }

      if (v13 == 401)
      {
        v14 = @"OPEN_URL";
        goto LABEL_97;
      }

      if (v13 != 500)
      {
        goto LABEL_57;
      }

      v14 = @"PLACE_DATA_MUID_LOOKUP";
    }

    else
    {
      if (v13 <= 99)
      {
        if (v13 > 3)
        {
          switch(v13)
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
              if (v13 != 4)
              {
                goto LABEL_57;
              }

              v14 = @"FETCHED_TILE";
              break;
          }

          goto LABEL_97;
        }

        switch(v13)
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
        v14 = [NSString stringWithFormat:@"(unknown: %i)", v13];
        goto LABEL_97;
      }

      if (v13 <= 102)
      {
        if (v13 == 100)
        {
          v14 = @"CHECKIN_WITH_TILE_GROUP";
        }

        else if (v13 == 101)
        {
          v14 = @"FORCE_UPDATE_MANIFEST";
        }

        else
        {
          v14 = @"DID_CHANGE_ACTIVE_TILE_GROUP";
        }

        goto LABEL_97;
      }

      if (v13 > 200)
      {
        if (v13 == 201)
        {
          v14 = @"STOP_LOCATION_UPDATE";
        }

        else
        {
          v14 = @"UPDATED_LOCATION";
        }

        goto LABEL_97;
      }

      if (v13 == 103)
      {
        v14 = @"FETCH_RESOURCE";
        goto LABEL_97;
      }

      if (v13 != 200)
      {
        goto LABEL_57;
      }

      v14 = @"START_LOCATION_UPDATE";
    }

LABEL_97:
    v16 = sub_100001B24();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = [v12 isReply];
      v18 = @"message";
      *buf = 138543875;
      if (v17)
      {
        v18 = @"reply";
      }

      v34 = v18;
      v35 = 2113;
      v36 = v14;
      v37 = 2113;
      v38 = v10;
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
    v34 = v10;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "Unable to find metadata for message GUID = %{public}@. This could throw off the in-flight message counters.", buf, 0xCu);
  }

  v14 = 0;
LABEL_102:

  if (a6)
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
    v36 = v11;
    v37 = 2114;
    v38 = v10;
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
    v34 = v11;
    v35 = 2114;
    v36 = v10;
    v22 = "Error sending message: %{public}@ (GUID = %{public}@)";
    v23 = v20;
    v24 = 22;
  }

  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, v22, buf, v24);
LABEL_109:

  if (v10)
  {
    [(NSLock *)self->_replyCallbackBlocksLock lock];
    v25 = [(NSMutableDictionary *)self->_replyCallbackBlocks objectForKey:v10];
    v26 = [v25 copy];

    if (v26)
    {
      [(NSMutableDictionary *)self->_replyCallbackBlocks removeObjectForKey:v10];
      v27 = [(NSMutableDictionary *)self->_replyExpectingMessageMetadata objectForKey:v10];
      [(NSMutableDictionary *)self->_replyExpectingMessageMetadata removeObjectForKey:v10];
      [(NSLock *)self->_replyCallbackBlocksLock unlock];
      v28 = [v27 timeoutTimer];

      if (v28)
      {
        v29 = [v27 timeoutTimer];
        dispatch_source_cancel(v29);

        [v27 setTimeoutTimer:0];
      }

      v30 = sub_100001B24();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "Sending reply to callback block", buf, 2u);
      }

      if (v11)
      {
        v31 = [NSDictionary dictionaryWithObject:v11 forKey:NSUnderlyingErrorKey];
      }

      else
      {
        v31 = 0;
      }

      v32 = [NSError errorWithDomain:@"NMDeviceConnectionErrorDomain" code:5 userInfo:v31];

      v26[2](v26, 0, v32);
      v11 = v32;
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