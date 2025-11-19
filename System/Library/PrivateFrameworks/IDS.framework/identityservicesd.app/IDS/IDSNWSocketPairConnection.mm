@interface IDSNWSocketPairConnection
- (BOOL)sendDataMessage:(id)a3 canFragment:(BOOL)a4;
- (IDSNWSocketPairConnection)initWithServiceConnection:(id)a3 queue:(id)a4 delegate:(id)a5 priority:(int64_t)a6 trafficClass:(int)a7 identifier:(id)a8;
- (IDSSocketPairConnectionDelegate)delegate;
- (NSSet)inFlightMessages;
- (void)_dequeueNextMessageFromOutgoingQueue;
- (void)_notifyDelegateAboutClosedConnection;
- (void)_processIncomingRawMessage:(id)a3;
- (void)_receiveFromNWConnection:(id)a3;
- (void)_sendDataViaNWConnection:(id)a3 isLargeTransfer:(BOOL)a4;
- (void)_setConnectionReady;
- (void)dealloc;
- (void)endSession;
- (void)setOTREncryptionBlock:(id)a3 decryptionBlock:(id)a4;
- (void)start;
@end

@implementation IDSNWSocketPairConnection

- (IDSSocketPairConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSSet)inFlightMessages
{
  v3 = +[NSMutableSet set];
  os_unfair_lock_lock(&self->_outgoingMessageArrayLock);
  outgoingMessageArray = self->_outgoingMessageArray;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1006D31CC;
  v7[3] = &unk_100BD8A48;
  v5 = v3;
  v8 = v5;
  [(NSMutableArray *)outgoingMessageArray enumerateObjectsUsingBlock:v7];
  os_unfair_lock_unlock(&self->_outgoingMessageArrayLock);

  return v5;
}

- (void)_dequeueNextMessageFromOutgoingQueue
{
  os_unfair_lock_lock(&self->_outgoingMessageArrayLock);
  if ([(NSMutableArray *)self->_outgoingMessageArray count])
  {
    v3 = [(NSMutableArray *)self->_outgoingMessageArray firstObject];
    [(NSMutableArray *)self->_outgoingMessageArray removeObjectAtIndex:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
      if (objc_opt_respondsToSelector())
      {
        v5 = [v4 messageUUID];
        if (v5)
        {
          v6 = v5;
          v7 = +[IDSFoundationLog socketPairConnection];
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            sub_100932DDC();
          }
        }
      }

      if ([v4 command]== 24)
      {
        [v4 data];
      }

      else
      {
        [v4 underlyingData];
      }
      v10 = ;
      v11 = [v4 command]== 24;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = v3;
        v8 = [v4 objectForKey:@"remainingFragments"];
        v9 = [v8 firstObject];
        [v8 removeObjectAtIndex:0];
        if ([v8 count])
        {
          [(NSMutableArray *)self->_outgoingMessageArray addObject:v4];
        }

        else
        {
          v12 = [v4 objectForKey:@"fragmentedMessageID"];
          v13 = [v12 unsignedIntValue];

          v14 = +[IDSFoundationLog socketPairConnection];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            sub_100932D64(v13, v14);
          }
        }

        v10 = [v9 underlyingData];

        v11 = 1;
      }

      else
      {
        v4 = +[IDSFoundationLog socketPairConnection];
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "IDSNWSocketPairConnection: unknown object in _outgoingMessageArray", buf, 2u);
        }

        v11 = 0;
        v10 = 0;
      }
    }

    os_unfair_lock_unlock(&self->_outgoingMessageArrayLock);
    if (v10)
    {
      [(IDSNWSocketPairConnection *)self _sendDataViaNWConnection:v10 isLargeTransfer:v11];
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_outgoingMessageArrayLock);
    v15 = [(IDSNWSocketPairConnection *)self delegate];
    [v15 connectionBecameEmpty];
  }
}

- (IDSNWSocketPairConnection)initWithServiceConnection:(id)a3 queue:(id)a4 delegate:(id)a5 priority:(int64_t)a6 trafficClass:(int)a7 identifier:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  v30.receiver = self;
  v30.super_class = IDSNWSocketPairConnection;
  v19 = [(IDSNWSocketPairConnection *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_nwConnection, a3);
    objc_storeStrong(&v20->_priorityQueue, a4);
    objc_storeWeak(&v20->_delegate, v17);
    v20->_priority = a6;
    *&v20->_currentOutgoingFragmentedMessageID = 0x1F4000000000;
    *&v20->_loggingSequenceIncoming = 0;
    objc_storeStrong(&v20->_identifier, a8);
    v21 = objc_alloc_init(NSMutableArray);
    outgoingMessageArray = v20->_outgoingMessageArray;
    v20->_outgoingMessageArray = v21;

    v20->_sendMessageCounter = 0;
    *&v20->_hasEndedSession = 0;
    objc_storeStrong(&v20->_nwConnection, a3);
    v20->_connectionReady = 0;
    v20->_trafficClass = a7;
    connectReadyBlock = v20->_connectReadyBlock;
    v20->_connectReadyBlock = 0;

    v24 = sub_1006D15E0();
    options = nw_framer_create_options(v24);

    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v29 = 0;
    v27 = options;
    nw_connection_modify_connected_protocol_stack();
    nw_connection_get_uuid();

    _Block_object_dispose(v28, 8);
  }

  return v20;
}

- (void)start
{
  nwConnection = self->_nwConnection;
  if (nwConnection)
  {
    nw_connection_set_queue(nwConnection, self->_priorityQueue);
    block[5] = _NSConcreteStackBlock;
    block[6] = 3221225472;
    block[7] = sub_1006D1C0C;
    block[8] = &unk_100BE57A0;
    block[9] = self;
    block[10] = CFAbsoluteTimeGetCurrent();
    nw_connection_set_event_handler();
    if (!self->_connectReadyBlock)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1006D2060;
      block[3] = &unk_100BD6ED0;
      block[4] = self;
      v4 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      connectReadyBlock = self->_connectReadyBlock;
      self->_connectReadyBlock = v4;

      v6 = dispatch_time(0, 5000000000);
      v7 = +[IDSDaemonPriorityQueueController sharedInstance];
      v8 = [v7 queueForPriority:self->_priority];
      dispatch_after(v6, v8, self->_connectReadyBlock);
    }

    nw_connection_start(self->_nwConnection);
  }

  else
  {
    v9 = +[IDSFoundationLog socketPairConnection];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(IDSNWSocketPairConnection *)self identifier];
      *buf = 138412290;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "IDSNWSocketPairConnection: %@ _nwConnection is nil.", buf, 0xCu);
    }

    [(IDSNWSocketPairConnection *)self _notifyDelegateAboutClosedConnection];
  }
}

- (void)dealloc
{
  if (![(IDSNWSocketPairConnection *)self hasEndedSession])
  {
    v3 = +[IDSFoundationLog socketPairConnection];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_100932C24(v3);
    }
  }

  v4.receiver = self;
  v4.super_class = IDSNWSocketPairConnection;
  [(IDSNWSocketPairConnection *)&v4 dealloc];
}

- (void)endSession
{
  if (self->_nwConnection)
  {
    v3 = +[IDSFoundationLog socketPairConnection];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(IDSNWSocketPairConnection *)self identifier];
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "IDSNWSocketPairConnection: %@ Ending session", &v7, 0xCu);
    }

    nwConnection = self->_nwConnection;
    self->_nwConnection = 0;
    v6 = nwConnection;

    nw_connection_cancel(v6);
    [(IDSNWSocketPairConnection *)self setHasEndedSession:1];
    [(IDSNWSocketPairConnection *)self _notifyDelegateAboutClosedConnection];
  }
}

- (void)_notifyDelegateAboutClosedConnection
{
  v3 = [(IDSNWSocketPairConnection *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(IDSNWSocketPairConnection *)self delegate];
    [v5 connectionDidClose];
  }
}

- (void)setOTREncryptionBlock:(id)a3 decryptionBlock:(id)a4
{
  v6 = a4;
  v7 = [a3 copy];
  encryptionBlock = self->_encryptionBlock;
  self->_encryptionBlock = v7;

  v9 = [v6 copy];
  decryptionBlock = self->_decryptionBlock;
  self->_decryptionBlock = v9;
}

- (void)_receiveFromNWConnection:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1006D2454;
  v4[3] = &unk_100BE57C8;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  nw_connection_receive_message(v3, v4);
}

- (void)_processIncomingRawMessage:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  ids_monotonic_time();
  self->_lastSocketActivityTime = v6;
  if (self->_decryptionBlock && [v4 command] == 24)
  {
    v7 = (*(self->_decryptionBlock + 2))();
    v8 = [IDSSocketPairMessage messageWithData:v7];

    v4 = v8;
  }

  if (v4)
  {
    if ([v4 command] == 21)
    {
      if (!self->_incomingDataFragments)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        incomingDataFragments = self->_incomingDataFragments;
        self->_incomingDataFragments = Mutable;
      }

      v4 = v4;
      v11 = [v4 fragmentIndex];
      v12 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v4 fragmentedMessageID]);
      v13 = [(NSMutableDictionary *)self->_incomingDataFragments objectForKey:v12];
      if (!v13)
      {
        v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 totalFragmentCount]);
        [(NSMutableDictionary *)self->_incomingDataFragments setObject:v13 forKey:v12];
      }

      [v13 addObject:v4];
      v14 = [v13 count];
      if (v14 != [v4 totalFragmentCount])
      {

        goto LABEL_29;
      }

      v15 = [IDSSocketPairFragmentedMessage createOriginalMessageFromFragmentedMessages:v13];

      [(NSMutableDictionary *)self->_incomingDataFragments removeObjectForKey:v12];
      v4 = v15;
    }

    else
    {
      v11 = 0;
    }

    if ([v4 command] == 24)
    {
      v16 = [v4 priority];
      v17 = [v4 protectionClass];
      v18 = [v4 encrypted];
      v19 = [v4 sequenceNumber];
      v20 = [v4 streamID];
      v21 = +[IDSUTunDeliveryController sharedInstance];
      v22 = [v21 topicForStreamID:v20];

      if (v22)
      {
        v23 = +[IDSFoundationLog socketPairConnection];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138414082;
          *v34 = @"idsotr";
          *&v34[8] = 2048;
          v35 = v16;
          LOWORD(v36) = 1024;
          *(&v36 + 2) = v17;
          HIWORD(v36) = 1024;
          *v37 = v18;
          *&v37[4] = 1024;
          *v38 = v19;
          *&v38[4] = 1024;
          *&v38[6] = v11;
          v39 = 1024;
          v40 = v4 != 0;
          v41 = 2112;
          v42 = v22;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "IDSNWSocketPairConnection: Recv OTR message for %@-%ld-%u E:%u SN:%u FI:%u D:%u T:%@", buf, 0x3Eu);
        }
      }
    }

    v24 = [(IDSNWSocketPairConnection *)self delegate];
    v25 = objc_opt_respondsToSelector();

    if (v25)
    {
      if (objc_opt_respondsToSelector())
      {
        v26 = [v4 messageUUID];
        if (v26 && [(IDSNWSocketPairConnection *)self shouldUseCrossLayerLogging])
        {
          v27 = [[NSUUID alloc] initWithUUIDString:{v26, 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL}];
          [v27 getUUIDBytes:&v32];

          v28 = +[IDSFoundationLog CrossLayerLogging];
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = [v4 underlyingDataLength];
            v30 = [(IDSNWSocketPairConnection *)self loggingSequenceIncoming];
            [(IDSNWSocketPairConnection *)self setLoggingSequenceIncoming:(v30 + 1)];
            *buf = 67110914;
            *v34 = 120;
            *&v34[4] = 1024;
            *&v34[6] = 140;
            v35 = 0x832000000100412;
            v36 = &v32;
            *v37 = 1042;
            *&v37[2] = 16;
            *v38 = 2098;
            *&v38[2] = self->_connectionID;
            v39 = 1024;
            v40 = v29;
            v41 = 1024;
            LODWORD(v42) = v30;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "31 {curProtocol: %hhu, prevProtocol: %hhu, curUUID: %{public}.16P, conUUID: %{public}.16P, curPktLen: %u, logSeqn: %hhu}", buf, 0x3Au);
          }
        }
      }

      else
      {
        v26 = 0;
      }

      v31 = [(IDSNWSocketPairConnection *)self delegate];
      [v31 didReceiveDataMessage:v4];
    }
  }

LABEL_29:
  objc_autoreleasePoolPop(v5);
}

- (BOOL)sendDataMessage:(id)a3 canFragment:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(IDSNWSocketPairConnection *)self nwConnection];

  if (v7)
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [v6 messageUUID];
      if (v8 && [(IDSNWSocketPairConnection *)self shouldUseCrossLayerLogging])
      {
        v42[0] = 0xAAAAAAAAAAAAAAAALL;
        v42[1] = 0xAAAAAAAAAAAAAAAALL;
        v9 = [[NSUUID alloc] initWithUUIDString:v8];
        [v9 getUUIDBytes:v42];

        v10 = +[IDSFoundationLog CrossLayerLogging];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [v6 underlyingDataLength];
          v12 = [(IDSNWSocketPairConnection *)self loggingSequenceOutgoing];
          [(IDSNWSocketPairConnection *)self setLoggingSequenceOutgoing:(v12 + 1)];
          *buf = 67110914;
          v27 = 120;
          v28 = 1024;
          v29 = 140;
          v30 = 1042;
          v31 = 16;
          v32 = 2098;
          v33 = v42;
          v34 = 1042;
          v35 = 16;
          v36 = 2098;
          connectionID = self->_connectionID;
          v38 = 1024;
          v39 = v11;
          v40 = 1024;
          v41 = v12;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "30 {curProtocol: %hhu, nextProtocol: %hhu, curUUID: %{public}.16P, conUUID: %{public}.16P, curPktLen: %u, logSeqn: %hhu}", buf, 0x3Au);
        }
      }
    }

    else
    {
      v8 = 0;
    }

    if ([v6 command] == 24)
    {
      [v6 data];
    }

    else
    {
      [v6 underlyingData];
    }
    v13 = ;
    v14 = v13;
    if (v4 && self->_fragmentationSize && [v13 length] > self->_fragmentationSize)
    {
      v15 = [IDSSocketPairFragmentedMessage createMessageFragmentsFromOriginalMessage:v14 withFragmentedMessageID:self->_currentOutgoingFragmentedMessageID fragmentSize:?];
      v24[0] = @"originalMessage";
      v24[1] = @"remainingFragments";
      v25[0] = v6;
      v25[1] = v15;
      v24[2] = @"totalFragmentCount";
      v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v15 count]);
      v25[2] = v16;
      v24[3] = @"fragmentedMessageID";
      v17 = [NSNumber numberWithUnsignedInt:self->_currentOutgoingFragmentedMessageID];
      v25[3] = v17;
      v18 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:4];

      os_unfair_lock_lock(&self->_outgoingMessageArrayLock);
      [(NSMutableArray *)self->_outgoingMessageArray addObject:v18];
      if (v8)
      {
        v19 = +[IDSFoundationLog socketPairConnection];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          sub_100932C68();
        }
      }

      os_unfair_lock_unlock(&self->_outgoingMessageArrayLock);
      ++self->_currentOutgoingFragmentedMessageID;
    }

    else
    {
      os_unfair_lock_lock(&self->_outgoingMessageArrayLock);
      [(NSMutableArray *)self->_outgoingMessageArray addObject:v6];
      if (v8)
      {
        v20 = +[IDSFoundationLog socketPairConnection];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          sub_100932CF0();
        }
      }

      os_unfair_lock_unlock(&self->_outgoingMessageArrayLock);
    }

    v21 = +[IDSDaemonPriorityQueueController sharedInstance];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1006D30BC;
    v23[3] = &unk_100BD6ED0;
    v23[4] = self;
    [v21 performBlockWithPriority:v23 priority:self->_priority];
  }

  return v7 != 0;
}

- (void)_sendDataViaNWConnection:(id)a3 isLargeTransfer:(BOOL)a4
{
  v5 = a3;
  v6 = [v5 length];
  ids_monotonic_time();
  self->_lastSocketActivityTime = v7;
  ++self->_sendMessageCounter;
  nwConnection = self->_nwConnection;
  v9 = [v5 _createDispatchData];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1006D3354;
  v10[3] = &unk_100BDF5E8;
  v10[4] = self;
  v11 = v6;
  nw_connection_send(nwConnection, v9, _nw_content_context_default_message, 1, v10);
}

- (void)_setConnectionReady
{
  v3 = +[IDSFoundationLog socketPairConnection];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100932F04(self, v3);
  }

  self->_connectionReady = 1;
}

@end