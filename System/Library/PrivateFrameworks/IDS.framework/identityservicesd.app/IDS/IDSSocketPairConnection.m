@interface IDSSocketPairConnection
- (BOOL)_processIncomingMessage:(id)a3;
- (BOOL)_queueNextOutgoingData;
- (BOOL)isConnected;
- (BOOL)isEmpty;
- (BOOL)sendDataMessage:(id)a3 canFragment:(BOOL)a4;
- (IDSSocketPairConnection)initWithSocket:(int)a3 queue:(id)a4 delegate:(id)a5 priority:(int64_t)a6 connectionID:(id)a7 linkType:(unint64_t)a8;
- (NSSet)inFlightMessages;
- (double)lastSocketActivityTime;
- (int64_t)_read:(char *)a3 maxLength:(unint64_t)a4;
- (unint64_t)inFlightMessageCount;
- (unint64_t)inFlightMessageCountLowWaterMark;
- (unsigned)fragmentationSize;
- (void)_callDelegateWithBlock:(id)a3;
- (void)_endSession;
- (void)_processBytesAvailable;
- (void)_sendToConnectedSocket;
- (void)dealloc;
- (void)endSession;
- (void)processStoredIncomingMessage:(id)a3;
- (void)removePendingMessagesForProtectionClass:(unsigned int)a3;
- (void)setFragmentationSize:(unsigned int)a3;
- (void)setInFlightMessageCountLowWaterMark:(unint64_t)a3;
- (void)setNotifyWhenConnectionReceivesBytes:(BOOL)a3;
- (void)setOTREncryptionBlock:(id)a3 decryptionBlock:(id)a4;
@end

@implementation IDSSocketPairConnection

- (IDSSocketPairConnection)initWithSocket:(int)a3 queue:(id)a4 delegate:(id)a5 priority:(int64_t)a6 connectionID:(id)a7 linkType:(unint64_t)a8
{
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v24.receiver = self;
  v24.super_class = IDSSocketPairConnection;
  v18 = [(IDSSocketPairConnection *)&v24 init];
  if (v18)
  {
    if (IDSTransportThreadInitWithPriority())
    {
      if ((a3 & 0x80000000) == 0)
      {
        objc_storeWeak(&v18->_delegate, v16);
        objc_storeStrong(&v18->_delegateQueue, a4);
        v18->_lock._os_unfair_lock_opaque = 0;
        v18->_lastDateCheck = 0.0;
        v18->_connectedSocket = a3;
        v18->_writeSocketIsResumed = 1;
        v18->_hasEndedSession = 0;
        v18->_priority = a6;
        v18->_maxAllowedMessageSize = -1;
        objc_storeStrong(&v18->_connectionID, a7);
        v18->_linkType = a8;
        v19 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          connectedSocket = v18->_connectedSocket;
          *buf = 67109120;
          LODWORD(v26) = connectedSocket;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Created with {socket:%d}", buf, 8u);
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

        goto LABEL_11;
      }

      v22 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v18;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%@ instance created with a dead file descriptor!", buf, 0xCu);
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

    v21 = 0;
    goto LABEL_20;
  }

LABEL_11:
  v21 = v18;
LABEL_20:

  return v21;
}

- (void)dealloc
{
  if (![(IDSSocketPairConnection *)self hasEndedSession])
  {
    v3 = +[IDSFoundationLog socketPairConnection];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_100917284(v3);
    }
  }

  v4.receiver = self;
  v4.super_class = IDSSocketPairConnection;
  [(IDSSocketPairConnection *)&v4 dealloc];
}

- (void)endSession
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = +[NSThread callStackSymbols];
    *buf = 138412546;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ endSession at %@!", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      +[NSThread callStackSymbols];
      v8 = v7 = self;
      MarcoLog();
    }

    if (IMShouldLog())
    {
      +[NSThread callStackSymbols];
      v8 = v7 = self;
      IMLogString();
    }
  }

  IDSTransportThreadInitWithPriority();
  IDSTransportThreadAddSyncBlockWithPriority();
  if (self->_outgoingStallDetector)
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      outgoingStallDetector = self->_outgoingStallDetector;
      *buf = 134217984;
      v10 = outgoingStallDetector;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%p: reset the stall detector", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v7 = self->_outgoingStallDetector;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v7 = self->_outgoingStallDetector;
        _IDSLogV();
      }
    }

    [(IDSStallDetector *)self->_outgoingStallDetector reset:v7];
  }
}

- (BOOL)isConnected
{
  os_unfair_lock_lock(&self->_lock);
  isConnected = self->_isConnected;
  os_unfair_lock_unlock(&self->_lock);
  return isConnected;
}

- (unsigned)fragmentationSize
{
  os_unfair_lock_lock(&self->_lock);
  fragmentationSize = self->_fragmentationSize;
  os_unfair_lock_unlock(&self->_lock);
  return fragmentationSize;
}

- (unint64_t)inFlightMessageCount
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_outgoingMessageArray count];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (unint64_t)inFlightMessageCountLowWaterMark
{
  os_unfair_lock_lock(&self->_lock);
  inFlightMessageCountLowWaterMark = self->_inFlightMessageCountLowWaterMark;
  os_unfair_lock_unlock(&self->_lock);
  return inFlightMessageCountLowWaterMark;
}

- (BOOL)isEmpty
{
  os_unfair_lock_lock(&self->_lock);
  if ([(NSData *)self->_outgoingData length])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(NSMutableArray *)self->_outgoingMessageArray count]== 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (double)lastSocketActivityTime
{
  os_unfair_lock_lock(&self->_lock);
  lastSocketActivityTime = self->_lastSocketActivityTime;
  os_unfair_lock_unlock(&self->_lock);
  return lastSocketActivityTime;
}

- (NSSet)inFlightMessages
{
  v3 = +[NSMutableSet set];
  os_unfair_lock_lock(&self->_lock);
  outgoingMessageArray = self->_outgoingMessageArray;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10034E710;
  v7[3] = &unk_100BD8A48;
  v5 = v3;
  v8 = v5;
  [(NSMutableArray *)outgoingMessageArray enumerateObjectsUsingBlock:v7];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)setFragmentationSize:(unsigned int)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_fragmentationSize = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setInFlightMessageCountLowWaterMark:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_inFlightMessageCountLowWaterMark = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_callDelegateWithBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      delegateQueue = self->_delegateQueue;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10034E904;
      v7[3] = &unk_100BD7298;
      v9 = v4;
      v8 = WeakRetained;
      dispatch_async(delegateQueue, v7);
    }
  }
}

- (int64_t)_read:(char *)a3 maxLength:(unint64_t)a4
{
  v5 = recv(self->_connectedSocket, a3, a4, 0);
  v6 = v5;
  if (v5 < 0)
  {
    v9 = *__error();
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      connectedSocket = self->_connectedSocket;
      *buf = 67109376;
      v14 = v9;
      v15 = 1024;
      v16 = connectedSocket;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Error %d received on {socket:%d}", buf, 0xEu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        MarcoLog();
      }

      if (IMShouldLog())
      {
        goto LABEL_16;
      }
    }
  }

  else if (!v5)
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_connectedSocket;
      *buf = 67109120;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Remote side closed the connection, cleaning up {socket:%d}", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        MarcoLog();
      }

      if (IMShouldLog())
      {
LABEL_16:
        IMLogString();
      }
    }
  }

  return v6;
}

- (void)removePendingMessagesForProtectionClass:(unsigned int)a3
{
  v3 = *&a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v17) = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing pending OTR messages for protection class %u.", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v11 = v3;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v11 = v3;
        _IDSLogV();
      }
    }
  }

  v6 = objc_alloc_init(NSMutableIndexSet);
  outgoingMessageArray = self->_outgoingMessageArray;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10034EF14;
  v13[3] = &unk_100BD8A70;
  v15 = v3;
  v8 = v6;
  v14 = v8;
  [(NSMutableArray *)outgoingMessageArray enumerateObjectsWithOptions:2 usingBlock:v13];
  if ([v8 count])
  {
    [(NSMutableArray *)self->_outgoingMessageArray removeObjectsAtIndexes:v8];
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 count];
      *buf = 134217984;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Removed %lu pending OTR messages.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v11 = [v8 count];
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v11 = [v8 count];
          _IDSLogV();
        }
      }
    }
  }

  if ([(NSMutableArray *)self->_outgoingMessageArray count]<= self->_inFlightMessageCountLowWaterMark)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10034F040;
    v12[3] = &unk_100BD8A98;
    v12[4] = self;
    [(IDSSocketPairConnection *)self _callDelegateWithBlock:v12];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)processStoredIncomingMessage:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = v4;
  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    v13 = [v5 encrypted];
    v14 = 1024;
    v15 = [v5 sequenceNumber];
    v16 = 1024;
    v17 = [v5 streamID];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Process stored data message (Encrypted:%u, SN:%u, StreamID:%u).", buf, 0x14u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v7 = [v5 encrypted];
      v10 = [v5 sequenceNumber];
      v11 = [v5 streamID];
      v9 = v7;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v8 = [v5 encrypted];
        v10 = [v5 sequenceNumber];
        v11 = [v5 streamID];
        v9 = v8;
        _IDSLogV();
      }
    }
  }

  [(IDSSocketPairConnection *)self _processIncomingMessage:v5, v9, v10, v11];
  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)_processIncomingMessage:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = v4;
  v7 = [v6 command];
  v8 = v6;
  if (v7 == 24)
  {
    [v6 sequenceNumber];
    kdebug_trace();
    decryptionBlock = self->_decryptionBlock;
    if (decryptionBlock && (decryptionBlock[2](decryptionBlock, v6), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [IDSSocketPairMessage messageWithData:v10];
    }

    else
    {
      v8 = 0;
      v10 = v6;
    }
  }

  if (v8)
  {
    if ([v8 command] == 21)
    {
      if (!self->_incomingDataFragments)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        incomingDataFragments = self->_incomingDataFragments;
        self->_incomingDataFragments = Mutable;
      }

      v13 = v8;
      v14 = [v13 fragmentIndex];
      v15 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v13 fragmentedMessageID]);
      v16 = [(NSMutableDictionary *)self->_incomingDataFragments objectForKey:v15];
      if (!v16)
      {
        v16 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v13 totalFragmentCount]);
        [(NSMutableDictionary *)self->_incomingDataFragments setObject:v16 forKey:v15];
      }

      [v16 addObject:v13];
      v17 = [v16 count];
      if (v17 != [v13 totalFragmentCount])
      {

        goto LABEL_20;
      }

      v8 = [IDSSocketPairFragmentedMessage createOriginalMessageFromFragmentedMessages:v16];

      [(NSMutableDictionary *)self->_incomingDataFragments removeObjectForKey:v15];
      if (!v8)
      {
        v30 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v38) = [v13 totalFragmentCount];
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "FragmentedMessage: can't reassemble message from %u pieces", buf, 8u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v32 = [v13 totalFragmentCount];
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              [v13 totalFragmentCount];
              _IDSLogV();
            }
          }
        }

        currentMessageData = self->_currentMessageData;
        self->_currentMessageData = 0;

        [(IDSSocketPairConnection *)self endSession];
        v28 = 0;
        v25 = v13;
        v13 = 0;
        goto LABEL_29;
      }
    }

    else
    {
      v14 = 0;
    }

    v18 = [[NSData alloc] initWithData:self->_currentMessageData];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10034F884;
    v33[3] = &unk_100BD8AC0;
    v13 = v8;
    v34 = v13;
    v35 = self;
    v36 = v18;
    [(IDSSocketPairConnection *)self _callDelegateWithBlock:v33];
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

LABEL_20:
  if (v7 != 24)
  {
    v28 = 1;
    goto LABEL_31;
  }

  v19 = [v6 priority];
  v20 = [v6 protectionClass];
  v21 = [v6 encrypted];
  v22 = [v6 sequenceNumber];
  v23 = [v6 streamID];
  v24 = +[IDSUTunDeliveryController sharedInstance];
  v25 = [v24 topicForStreamID:v23];

  if (v25)
  {
    v26 = v19;
    v27 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138414082;
      v38 = @"idsotr";
      v39 = 2048;
      v40 = v26;
      v41 = 1024;
      v42 = v20;
      v43 = 1024;
      v44 = v21;
      v45 = 1024;
      v46 = v22;
      v47 = 1024;
      v48 = v14;
      v49 = 1024;
      v50 = v13 != 0;
      v51 = 2112;
      v52 = v25;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Recv OTR message for %@-%ld-%u E:%u SN:%u FI:%u D:%u T:%@", buf, 0x3Eu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }

  v28 = 1;
LABEL_29:

LABEL_31:
  objc_autoreleasePoolPop(v5);

  return v28;
}

- (void)_processBytesAvailable
{
  v2 = __chkstk_darwin(self);
  memset(__b, 170, sizeof(__b));
  v3 = [v2 _read:__b maxLength:0x2000];
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v41 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_processBytesAvailable: read %d bytes", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      v37 = v3;
      MarcoLog();
    }

    if (IMShouldLog())
    {
      v37 = v3;
      IMLogString();
    }
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    v31 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Error when receiving bytes, closing connection", buf, 2u);
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

    goto LABEL_55;
  }

  if (!v3)
  {
    v32 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Remote side closed the connection, cleaning up", buf, 2u);
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

LABEL_55:
    [v2 _endSession];
    return;
  }

  if (qword_100CBD090 != -1)
  {
    sub_1009172C8();
  }

  *(v2 + 192) = *&qword_100CBD098 * mach_continuous_time();
  if (*(v2 + 152) == 1)
  {
    *(v2 + 152) = 0;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100350260;
    v39[3] = &unk_100BD8A98;
    v39[4] = v2;
    [v2 _callDelegateWithBlock:v39];
  }

  *(v2 + 120) += v3;
  if (!*(v2 + 8))
  {
    v5 = [[NSMutableData alloc] initWithCapacity:{+[IDSSocketPairMessage headerDataSize](IDSSocketPairMessage, "headerDataSize")}];
    v6 = *(v2 + 8);
    *(v2 + 8) = v5;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    v9 = [IDSSocketPairMessage headerDataSize:v37];
    v10 = [*(v2 + 8) length];
    v11 = v9 - v10;
    if (v9 == v10)
    {
      goto LABEL_20;
    }

    v12 = *(v2 + 8);
    if (v3 - v8 < v11)
    {
      [v12 appendBytes:&__b[v7] length:?];
      v8 = v3;
LABEL_20:
      v13 = *(v2 + 112);
      goto LABEL_23;
    }

    [v12 appendBytes:&__b[v7] length:v11];
    v13 = [IDSSocketPairMessage dataLengthFromHeaderData:*(v2 + 8)];
    *(v2 + 112) = v13;
    if (v13 > *(v2 + 184))
    {
      break;
    }

    v8 += v11;
LABEL_23:
    v14 = *(v2 + 16);
    if (!v14)
    {
      if (v13)
      {
        v15 = [[NSMutableData alloc] initWithCapacity:*(v2 + 112)];
        v16 = *(v2 + 16);
        *(v2 + 16) = v15;

        v13 = *(v2 + 112);
        v14 = *(v2 + 16);
      }

      else
      {
        v14 = 0;
      }
    }

    v17 = v13 - [v14 length];
    if (v17)
    {
      v18 = *(v2 + 16);
      v19 = &__b[v8];
      if (v3 - v8 >= v17)
      {
        [v18 appendBytes:v19 length:v17];
        v8 += v17;
      }

      else
      {
        [v18 appendBytes:v19 length:?];
        v8 = v3;
      }
    }

    v20 = *(v2 + 112);
    if (v20 == [*(v2 + 16) length])
    {
      v21 = [*(v2 + 8) length];
      if (v21 == +[IDSSocketPairMessage headerDataSize])
      {
        v22 = [IDSSocketPairMessage messageWithHeaderData:*(v2 + 8) data:*(v2 + 16)];
        if (([v2 _processIncomingMessage:v22] & 1) == 0)
        {
          v36 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "_processIncomingMessage failed.", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                _IDSLogV();
              }
            }
          }

          return;
        }

        v23 = *(v2 + 16);
        *(v2 + 16) = 0;

        [*(v2 + 8) setLength:0];
        *(v2 + 112) = 0;
      }
    }

    if (*(v2 + 144) == 0.0)
    {
      IMTimeOfDay();
      *(v2 + 144) = v24;
    }

    IMTimeOfDay();
    v26 = v25;
    v27 = v25 - *(v2 + 144);
    if (v27 >= 1.0)
    {
      v28 = (8 * *(v2 + 120)) / v27;
      *(v2 + 128) = v28 * 0.1 + *(v2 + 128) * 0.9;
      v29 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(v2 + 128);
        *buf = 134218240;
        *v41 = v30;
        *&v41[8] = 2048;
        v42 = v28;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "BPS: avg %f instant %f", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          v37 = *(v2 + 128);
          v38 = v28;
          MarcoLog();
        }

        if (IMShouldLog())
        {
          v37 = *(v2 + 128);
          v38 = v28;
          IMLogString();
        }
      }

      *(v2 + 120) = 0;
      *(v2 + 144) = v26;
    }

    v7 = v8;
    if (v3 <= v8)
    {
      return;
    }
  }

  v33 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    v34 = *(v2 + 112);
    v35 = *(v2 + 184);
    *buf = 67109376;
    *v41 = v34;
    *&v41[4] = 1024;
    *&v41[6] = v35;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Received message size: %u, maximum allowed size: %u", buf, 0xEu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    _IDSWarnV();
    _IDSLogV();
    v37 = *(v2 + 112);
    *&v38 = *(v2 + 184);
    _IDSLogTransport();
  }

  [v2 _endSession];
}

- (BOOL)_queueNextOutgoingData
{
  v3 = [(NSMutableArray *)self->_outgoingMessageArray firstObject];
  if (!v3)
  {
    goto LABEL_18;
  }

  [(NSMutableArray *)self->_outgoingMessageArray removeObjectAtIndex:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      theDict = v3;
      v8 = [(__CFDictionary *)theDict objectForKey:@"remainingFragments"];
      v9 = [v8 firstObject];
      [v8 removeObjectAtIndex:0];
      v37 = v9 != 0;
      if (v9)
      {
        v33 = [v9 fragmentIndex];
        v10 = CFDictionaryGetValue(theDict, @"originalMessage");
        if ([v10 command] == 24)
        {
          v5 = v10;
          v32 = [v5 protectionClass];
          v31 = [v5 priority];
          v30 = [v5 streamID];
          v36 = [v5 sequenceNumber];
          v6 = [v5 topic];
          connectionID = self->_connectionID;
          if (connectionID)
          {
            sub_10057214C(v31, v32, connectionID);
          }

          else
          {
            sub_100572108(v31, v32);
          }
          v12 = ;
          if ([v5 shouldEncrypt])
          {
            encryptionBlock = self->_encryptionBlock;
            if (encryptionBlock)
            {
              v21 = [v9 underlyingData];
              encryptionBlock = (encryptionBlock)[2](encryptionBlock, v21, v12);
            }

            v35 = 1;
          }

          else
          {
            encryptionBlock = [v9 underlyingData];
            v35 = 0;
          }
        }

        else
        {
          v19 = [v9 underlyingData];
          outgoingData = self->_outgoingData;
          self->_outgoingData = v19;

          v35 = 0;
          v36 = 0;
          v6 = 0;
          v12 = 0;
          v30 = 0;
          v31 = 0;
          v5 = 0;
          encryptionBlock = 0;
          v32 = 3;
        }
      }

      else
      {
        v35 = 0;
        v36 = 0;
        v6 = 0;
        v12 = 0;
        v30 = 0;
        v31 = 0;
        v5 = 0;
        encryptionBlock = 0;
        v33 = 0;
        v32 = 3;
      }

      if ([v8 count])
      {
        [(NSMutableArray *)self->_outgoingMessageArray addObject:theDict];
        v4 = 0;
      }

      else
      {
        v4 = [(__CFDictionary *)theDict objectForKey:@"originalMessage"];
      }

      goto LABEL_39;
    }

    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "unknown object in _outgoingMessageArray", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

LABEL_18:
    v6 = 0;
    v12 = 0;
    v5 = 0;
    encryptionBlock = 0;
    v4 = 0;
    v37 = 0;
    goto LABEL_52;
  }

  v4 = v3;
  if ([v4 command] != 24)
  {
    v6 = 0;
    v12 = 0;
    v36 = 0;
    v5 = 0;
LABEL_23:
    v16 = [v4 underlyingData];
    v17 = self->_outgoingData;
    self->_outgoingData = v16;

    LODWORD(v35) = 0;
    goto LABEL_24;
  }

  v5 = v4;
  v32 = [v5 protectionClass];
  v31 = [v5 priority];
  v30 = [v5 streamID];
  v36 = [v5 sequenceNumber];
  v6 = [v5 topic];
  v7 = self->_connectionID;
  if (v7)
  {
    sub_10057214C(v31, v32, v7);
  }

  else
  {
    sub_100572108(v31, v32);
  }
  v12 = ;
  if (![v5 shouldEncrypt])
  {
    goto LABEL_23;
  }

  v15 = self->_encryptionBlock;
  if (v15)
  {
    theDict = [v5 data];
    encryptionBlock = v15[2](v15, theDict, v12);
    v33 = 0;
    v35 = 1;
    v4 = v5;
    v37 = 1;
LABEL_39:

    v18 = v36;
    kdebug_trace();
    if (encryptionBlock)
    {
      LODWORD(v29) = v36;
      v22 = [[IDSSocketPairOTRMessage alloc] initWithVersion:1 encrypted:v35 shouldEncrypt:v35 protectionClass:v32 streamID:v30 priority:v31 sequenceNumber:v29 data:encryptionBlock];
      v23 = [v5 topic];
      [v22 setTopic:v23];

      v24 = [v5 context];
      [v22 setContext:v24];

      v25 = [v22 underlyingData];
      v26 = self->_outgoingData;
      self->_outgoingData = v25;

      v18 = v36;
    }

    goto LABEL_41;
  }

  LODWORD(v35) = 1;
LABEL_24:
  v18 = v36;
  kdebug_trace();
  v33 = 0;
  encryptionBlock = 0;
  v37 = 1;
LABEL_41:
  if (v5 && v6)
  {
    v27 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413314;
      v40 = v12;
      v41 = 1024;
      v42 = v35;
      v43 = 1024;
      v44 = v18;
      v45 = 1024;
      v46 = v33;
      v47 = 2114;
      v48 = v6;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Send OTR message for %@ E:%u SN:%u FI:%u T:%{public}@.", buf, 0x28u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }

  if (v4 && [(NSMutableArray *)self->_outgoingMessageArray count]<= self->_inFlightMessageCountLowWaterMark)
  {
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100350A38;
    v38[3] = &unk_100BD8A98;
    v38[4] = self;
    [(IDSSocketPairConnection *)self _callDelegateWithBlock:v38];
  }

LABEL_52:

  return v37;
}

- (void)_sendToConnectedSocket
{
  self->_isConnected = 1;
  if (self->_connectedSocket < 0)
  {
    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Connected socket closed, cannot send data, cleaning up...", v34, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    goto LABEL_21;
  }

  if ([(NSData *)self->_outgoingData length])
  {
    goto LABEL_3;
  }

  if ([(NSMutableArray *)self->_outgoingMessageArray count])
  {
    if ([(IDSSocketPairConnection *)self _queueNextOutgoingData])
    {
LABEL_3:
      v3 = [(NSData *)self->_outgoingData bytes];
      v4 = [(NSData *)self->_outgoingData length];
      v5 = send(self->_connectedSocket, &v3[self->_currentOutgoingDataIndex], v4 - self->_currentOutgoingDataIndex, 0);
      if (v5 < 0)
      {
        if (*__error() == 35)
        {
          v17 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            connectedSocket = self->_connectedSocket;
            *v34 = 67109120;
            *&v34[4] = connectedSocket;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{socket:%d} timeout, ignoring ...", v34, 8u);
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

        else
        {
          v21 = *__error();
          v22 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = self->_connectedSocket;
            *v34 = 67109376;
            *&v34[4] = v21;
            *&v34[8] = 1024;
            *&v34[10] = v23;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "got send error %d, cleaning up {socket:%d} ...", v34, 0xEu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v24 = v21;
              v25 = self->_connectedSocket;
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                v24 = v21;
                v25 = self->_connectedSocket;
                _IDSLogV();
              }
            }
          }

          [(IDSSocketPairConnection *)self _endSession:v24];
        }
      }

      else
      {
        v6 = v5;
        v60 = 0xAAAAAAAAAAAAAAAALL;
        *&v7 = 0xAAAAAAAAAAAAAAAALL;
        *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v58 = v7;
        v59 = v7;
        v56 = v7;
        v57 = v7;
        v54 = v7;
        v55 = v7;
        v52 = v7;
        v53 = v7;
        v50 = v7;
        v51 = v7;
        v48 = v7;
        v49 = v7;
        v46 = v7;
        v47 = v7;
        v44 = v7;
        v45 = v7;
        v42 = v7;
        v43 = v7;
        v40 = v7;
        v41 = v7;
        v38 = v7;
        v39 = v7;
        v36 = v7;
        v37 = v7;
        *v34 = v7;
        v35 = v7;
        v26 = 424;
        if (!getsockopt(self->_connectedSocket, 6, 512, v34, &v26))
        {
          v8 = +[IDSAWDLogging sharedInstance];
          [v8 IDSSocketPairConnectionTCPInfoLinkType:self->_linkType currentRTT:DWORD1(v35) bandwidth:*(&v42 + 4)];
        }

        v9 = +[IDSFoundationLog socketPairConnection];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [(NSData *)self->_outgoingData length];
          v11 = self->_connectedSocket;
          *buf = 134218496;
          v29 = v6;
          v30 = 2048;
          v31 = v10;
          v32 = 1024;
          v33 = v11;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sent %ld bytes. Remaining outgoingData %lu {socket:%d}", buf, 0x1Cu);
        }

        if (qword_100CBD090 != -1)
        {
          sub_1009172C8();
        }

        self->_lastSocketActivityTime = *&qword_100CBD098 * mach_continuous_time();
        v12 = self->_currentOutgoingDataIndex + v6;
        self->_currentOutgoingDataIndex = v12;
        if (v12 == v4)
        {
          outgoingData = self->_outgoingData;
          self->_outgoingData = 0;

          self->_currentOutgoingDataIndex = 0;
        }

        if (v6)
        {
          outgoingStallDetector = self->_outgoingStallDetector;
          if (outgoingStallDetector)
          {
            [(IDSStallDetector *)outgoingStallDetector produceBytes:v6];
          }
        }
      }

      return;
    }

    v16 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Failed to queue outgoing data - possible message fragmentation issue", v34, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

LABEL_21:
    [(IDSSocketPairConnection *)self _endSession];
    return;
  }

  v19 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = self->_connectedSocket;
    *v34 = 67109120;
    *&v34[4] = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "No data to send on socket, suspending {socket:%d}", v34, 8u);
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

  self->_writeSocketIsResumed = 0;
  IDSTransportThreadInitWithPriority();
  IDSTransportThreadSuspendSocketWithPriority();
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1003511EC;
  v27[3] = &unk_100BD8A98;
  v27[4] = self;
  [(IDSSocketPairConnection *)self _callDelegateWithBlock:v27];
}

- (BOOL)sendDataMessage:(id)a3 canFragment:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 command] == 24)
  {
    [v6 data];
  }

  else
  {
    [v6 underlyingData];
  }
  v7 = ;
  os_unfair_lock_lock(&self->_lock);
  if (self->_outgoingMessageArray)
  {
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = objc_alloc_init(NSMutableArray);
    outgoingMessageArray = self->_outgoingMessageArray;
    self->_outgoingMessageArray = v8;

    if (!v4)
    {
      goto LABEL_11;
    }
  }

  if (self->_fragmentationSize && [v7 length] > self->_fragmentationSize)
  {
    v10 = [IDSSocketPairFragmentedMessage createMessageFragmentsFromOriginalMessage:v7 withFragmentedMessageID:self->_currentOutgoingFragmentedMessageID fragmentSize:?];
    v15[0] = @"originalMessage";
    v15[1] = @"remainingFragments";
    v16[0] = v6;
    v16[1] = v10;
    v15[2] = @"totalFragmentCount";
    v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 count]);
    v16[2] = v11;
    v15[3] = @"fragmentedMessageID";
    v12 = [NSNumber numberWithUnsignedInt:self->_currentOutgoingFragmentedMessageID];
    v16[3] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:4];

    [(NSMutableArray *)self->_outgoingMessageArray addObject:v13];
    ++self->_currentOutgoingFragmentedMessageID;

    goto LABEL_12;
  }

LABEL_11:
  [(NSMutableArray *)self->_outgoingMessageArray addObject:v6];
LABEL_12:
  if (![(NSData *)self->_outgoingData length])
  {
    [(IDSSocketPairConnection *)self _queueNextOutgoingData];
  }

  os_unfair_lock_unlock(&self->_lock);
  IDSTransportThreadInitWithPriority();
  IDSTransportThreadAddBlockWithPriority();

  return 1;
}

- (void)_endSession
{
  if ((self->_connectedSocket & 0x80000000) == 0)
  {
    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      connectedSocket = self->_connectedSocket;
      *buf = 138412546;
      v9 = self;
      v10 = 1024;
      v11 = connectedSocket;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ removing {socket:%d} from transport thread!", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v5 = self;
        v6 = self->_connectedSocket;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v5 = self;
          v6 = self->_connectedSocket;
          _IDSLogV();
        }
      }
    }

    IDSTransportThreadInitWithPriority();
    IDSTransportThreadRemoveSocketWithPriority();
    self->_writeSocketIsResumed = 0;
    shutdown(self->_connectedSocket, 2);
    close(self->_connectedSocket);
    self->_connectedSocket = -1;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10035170C;
    v7[3] = &unk_100BD8A98;
    v7[4] = self;
    [(IDSSocketPairConnection *)self _callDelegateWithBlock:v7];
  }

  [(IDSSocketPairConnection *)self setHasEndedSession:1, v5, v6];
}

- (void)setNotifyWhenConnectionReceivesBytes:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_notifyWhenConnectionReceivesBytes = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setOTREncryptionBlock:(id)a3 decryptionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v8 = [v6 copy];
  encryptionBlock = self->_encryptionBlock;
  self->_encryptionBlock = v8;

  v10 = [v7 copy];
  decryptionBlock = self->_decryptionBlock;
  self->_decryptionBlock = v10;

  v12 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_retainBlock(v6);
    v14 = objc_retainBlock(v7);
    *buf = 134218496;
    v20 = self;
    v21 = 2048;
    v22 = v13;
    v23 = 2048;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SocketPairConnection (%p) add OTR blocks (enc:%p dec:%p).", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v15 = objc_retainBlock(v6);
      v17 = objc_retainBlock(v7);
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v16 = objc_retainBlock(v6);
        v18 = objc_retainBlock(v7);
        _IDSLogV();
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end