@interface IDSDirectDataPathSocket
- (BOOL)_isSendErrorFatal:(id)a3;
- (id)initSocketWithNWConnection:(id)a3 priority:(int64_t)a4 trafficClass:(int)a5 serviceConnectorConnection:(BOOL)a6 streamSocket:(BOOL)a7;
- (int)setSocketOptionsForSocket:(int)a3 bufferSize:(int)a4;
- (void)readFromNWConnection;
- (void)readMessageFromNWConnection;
- (void)shutdownSocket;
- (void)startSocket:(id)a3;
- (void)writeMessageToNWConnection;
- (void)writeMessageToSocket;
- (void)writeToNWConnection;
- (void)writeToSocket;
@end

@implementation IDSDirectDataPathSocket

- (int)setSocketOptionsForSocket:(int)a3 bufferSize:(int)a4
{
  v15 = a4;
  if (setsockopt(a3, 0xFFFF, 4097, &v15, 4u) < 0)
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "IDSDirectDataPathSocket:setSocketOptionsForSocket:failed to set SO_SNDBUF", v14, 2u);
    }

    if (!os_log_shim_legacy_logging_enabled())
    {
      return -1;
    }

    if (!_IDSShouldLogTransport())
    {
      return -1;
    }

    _IDSLogTransport();
    if (!_IDSShouldLog())
    {
      return -1;
    }

    goto LABEL_21;
  }

  if (setsockopt(a3, 0xFFFF, 4098, &v15, 4u) < 0)
  {
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "IDSDirectDataPathSocket:setSocketOptionsForSocket:failed to set SO_RCVBUF", v14, 2u);
    }

    if (!os_log_shim_legacy_logging_enabled())
    {
      return -1;
    }

    if (!_IDSShouldLogTransport())
    {
      return -1;
    }

    _IDSLogTransport();
    if (!_IDSShouldLog())
    {
      return -1;
    }

    goto LABEL_21;
  }

  *v14 = 1;
  if (setsockopt(a3, 0xFFFF, 4130, v14, 4u))
  {
    v6 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "IDSDirectDataPathSocket:setSocketOptionsForSocket:failed to set SO_NOSIGPIPE", buf, 2u);
    }

    if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLogTransport())
    {
      return -1;
    }

LABEL_8:
    _IDSLogTransport();
    if ((_IDSShouldLog() & 1) == 0)
    {
      return -1;
    }

LABEL_21:
    _IDSLogV();
    return -1;
  }

  if (!self->_streamSocket)
  {
    return 0;
  }

  v10 = fcntl(a3, 3, 0);
  if (v10 < 0)
  {
    v12 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "IDSDirectDataPathSocket:setSocketOptionsForSocket:failed to get socket flags", buf, 2u);
    }

    if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLogTransport())
    {
      return -1;
    }

    goto LABEL_8;
  }

  result = fcntl(a3, 4, v10 | 4u);
  if (result)
  {
    v11 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "IDSDirectDataPathSocket:setSocketOptionsForSocket:failed to set O_NONBLOCK", buf, 2u);
    }

    if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLogTransport())
    {
      return -1;
    }

    goto LABEL_8;
  }

  return result;
}

- (id)initSocketWithNWConnection:(id)a3 priority:(int64_t)a4 trafficClass:(int)a5 serviceConnectorConnection:(BOOL)a6 streamSocket:(BOOL)a7
{
  v13 = a3;
  v30.receiver = self;
  v30.super_class = IDSDirectDataPathSocket;
  v14 = [(IDSDirectDataPathSocket *)&v30 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_nwConnection, a3);
    v15->_connectionReady = 0;
    *&v15->_socket = -1;
    *&v15->_readSourceSuspended = 257;
    v15->_serviceConnectorConnection = a6;
    v15->_canSendOverNWConnection = 0;
    v15->_streamSocket = a7;
    v15->_completionSent = 0;
    v15->_lock._os_unfair_lock_opaque = 0;
    v15->_shutdownCalled = 0;
    if (a4 == 300)
    {
      v16 = QOS_CLASS_USER_INITIATED;
    }

    else
    {
      v16 = QOS_CLASS_DEFAULT;
    }

    v15->_trafficClass = a5;
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_attr_make_with_qos_class(v17, v16, 0);
    v19 = dispatch_queue_create("IDSDaemon_directDataPathNWQueue", v18);
    priorityQueue = v15->_priorityQueue;
    v15->_priorityQueue = v19;

    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_attr_make_with_qos_class(v21, v16, 0);
    v23 = dispatch_queue_create("IDSDaemon_directDataPathSocketQueue", v22);
    socketQueue = v15->_socketQueue;
    v15->_socketQueue = v23;

    v25 = objc_alloc_init(NSMutableArray);
    incomingNWMessages = v15->_incomingNWMessages;
    v15->_incomingNWMessages = v25;

    v27 = objc_alloc_init(NSMutableArray);
    outgoingNWMessages = v15->_outgoingNWMessages;
    v15->_outgoingNWMessages = v27;
  }

  return v15;
}

- (void)shutdownSocket
{
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    socket = self->_socket;
    nwConnection = self->_nwConnection;
    *buf = 67109376;
    v11 = socket;
    v12 = 2048;
    v13 = nwConnection;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "IDSDirectDataPathSocket:shutdownSocket (%d, %p)", buf, 0x12u);
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

  os_unfair_lock_lock(&self->_lock);
  shutdownCalled = self->_shutdownCalled;
  if (!shutdownCalled)
  {
    self->_shutdownCalled = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (self->_socketToReturn != -1 && self->_socket != -1 && !shutdownCalled)
  {
    priorityQueue = self->_priorityQueue;
    if (priorityQueue)
    {
      self->_priorityQueue = 0;
    }

    os_unfair_lock_lock(&self->_lock);
    socketQueue = self->_socketQueue;
    if (socketQueue)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100519420;
      block[3] = &unk_100BD6ED0;
      block[4] = self;
      dispatch_async(socketQueue, block);
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)startSocket:(id)a3
{
  v4 = a3;
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    nwConnection = self->_nwConnection;
    trafficClass = self->_trafficClass;
    if (self->_streamSocket)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    *buf = 134218498;
    *&buf[4] = nwConnection;
    *&buf[12] = 1024;
    *&buf[14] = trafficClass;
    *&buf[18] = 2112;
    *&buf[20] = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IDSDirectDataPathSocket:startSocket nw_connection: (%p), trafficClass: %d, streamSocket: %@", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v9 = self->_streamSocket ? @"YES" : @"NO";
    v23 = self->_trafficClass;
    v24 = v9;
    v22 = self->_nwConnection;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      if (self->_streamSocket)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v23 = self->_trafficClass;
      v24 = v10;
      v22 = self->_nwConnection;
      _IDSLogV();
    }
  }

  *v28 = 0xAAAAAAAAAAAAAAAALL;
  if (self->_streamSocket)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (socketpair(1, v11, 0, v28) < 0)
  {
    v17 = *__error();
    v18 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "IDSDirectDataPathSocket:startSocket: error %d in creating sockets", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v22 = v17;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v22 = v17;
          _IDSLogV();
        }
      }
    }

    [(IDSDirectDataPathSocket *)self shutdownSocket:v22];
    if (!self->_completionSent)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (([(IDSDirectDataPathSocket *)self setSocketOptionsForSocket:v28[0] bufferSize:0x40000]& 0x80000000) == 0 && ([(IDSDirectDataPathSocket *)self setSocketOptionsForSocket:v28[1] bufferSize:0x40000]& 0x80000000) == 0)
    {
      *&self->_socket = vrev64_s32(*v28);
      os_unfair_lock_lock(&self->_lock);
      socketQueue = self->_socketQueue;
      if (socketQueue)
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100519B90;
        block[3] = &unk_100BD6ED0;
        block[4] = self;
        dispatch_async(socketQueue, block);
      }

      os_unfair_lock_unlock(&self->_lock);
      if (self->_serviceConnectorConnection)
      {
        v13 = sub_100518A18();
        options = nw_framer_create_options(v13);

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        buf[24] = 0;
        v15 = options;
        nw_connection_modify_connected_protocol_stack();

        _Block_object_dispose(buf, 8);
      }

      else
      {
        v15 = nw_connection_copy_parameters(self->_nwConnection);
        v19 = nw_parameters_copy_default_protocol_stack(v15);
        v20 = sub_100518A18();
        v21 = nw_framer_create_options(v20);

        nw_protocol_stack_prepend_application_protocol(v19, v21);
      }

      CFAbsoluteTimeGetCurrent();
      nw_connection_set_queue(self->_nwConnection, self->_priorityQueue);
      v25 = v4;
      nw_connection_set_event_handler();
      nw_connection_start(self->_nwConnection);

      goto LABEL_44;
    }

    v16 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "IDSDirectDataPathSocket:startSocket: error in setBufferSize", buf, 2u);
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

    [(IDSDirectDataPathSocket *)self shutdownSocket:v22];
    if (!self->_completionSent)
    {
LABEL_33:
      self->_completionSent = 1;
      (*(v4 + 2))(v4, 0xFFFFFFFFLL);
    }
  }

LABEL_44:
}

- (void)writeToSocket
{
  socket = self->_socket;
  if (socket < 0)
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "IDSDirectDataPathSocket: writeToSocket invalid sd", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          goto LABEL_34;
        }
      }
    }
  }

  else
  {
    writeSourceSuspended = self->_writeSourceSuspended;
    incomingNWData = self->_incomingNWData;
    if (!writeSourceSuspended && !incomingNWData)
    {
      self->_writeSourceSuspended = 1;
      writeToSocketSource = self->_writeToSocketSource;

      dispatch_suspend(writeToSocketSource);
      return;
    }

    v8 = send(socket, [(NSMutableData *)incomingNWData bytes], [(NSMutableData *)self->_incomingNWData length], 0);
    v9 = v8;
    if (v8 >= 1)
    {
      v10 = [(NSMutableData *)self->_incomingNWData length];
      v11 = self->_incomingNWData;
      if (v9 == v10)
      {
        self->_incomingNWData = 0;
      }

      else
      {

        [(NSMutableData *)v11 replaceBytesInRange:0 withBytes:v9 length:0, 0];
      }

      return;
    }

    if (v8)
    {
      v12 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = self->_socket;
        nwConnection = self->_nwConnection;
        *buf = 67109376;
        v21 = v13;
        v22 = 2048;
        v23 = nwConnection;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "IDSDirectDataPathSocket: (%d, %p) writeToSocket failed, cleaning up", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v18 = self->_socket;
          v19 = self->_nwConnection;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v18 = self->_socket;
            v19 = self->_nwConnection;
            _IDSLogV();
          }
        }
      }

      [(IDSDirectDataPathSocket *)self shutdownSocket:v18];
      return;
    }

    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_socket;
      v17 = self->_nwConnection;
      *buf = 67109376;
      v21 = v16;
      v22 = 2048;
      v23 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "IDSDirectDataPathSocket: (%d, %p) writeToSocket sentSize is 0!", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
LABEL_34:
          _IDSLogV();
        }
      }
    }
  }
}

- (void)writeToNWConnection
{
  v2 = __chkstk_darwin(self);
  v3 = (v2 + 24);
  v4 = *(v2 + 24);
  if (v4 < 0)
  {
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *__b = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "IDSDirectDataPathSocket:writeToNWConnection invalid sd", __b, 2u);
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

  else
  {
    v5 = v2;
    memset(__b, 170, 0x40000uLL);
    v6 = recv(v4, __b, 0x40000uLL, 0);
    if ((v6 & 0x8000000000000000) == 0)
    {
      if (v6)
      {
        v7 = *(v5 + 96) == 0;
        v8 = [[NSMutableData alloc] initWithBytes:__b length:v6];
        v9 = *(v5 + 96);
        if (v7)
        {
          *(v5 + 96) = v8;
        }

        else
        {
          [v9 appendData:v8];
          v9 = v8;
        }

        if (*(v5 + 67))
        {
          v17 = _nw_content_context_default_message;
          v18 = [*(v5 + 96) _createDispatchData];
          v19 = [*(v5 + 96) length];
          v20 = *(v5 + 96);
          *(v5 + 96) = 0;

          v21 = +[IDSFoundationLog socketPairConnection];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v27 = *(v5 + 24);
            v28 = *(v5 + 8);
            *buf = 67109632;
            v34 = v27;
            v35 = 2048;
            v36 = v28;
            v37 = 1024;
            v38 = v19;
            _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "IDSDirectDataPathSocket: (%d, %p) sending: %u bytes", buf, 0x18u);
          }

          v22 = *(v5 + 8);
          completion[0] = _NSConcreteStackBlock;
          completion[1] = 3221225472;
          completion[2] = sub_10051B190;
          completion[3] = &unk_100BDF5E8;
          completion[4] = v5;
          v32 = v19;
          nw_connection_send(v22, v18, v17, 1, completion);
        }

        else
        {
          v23 = +[IDSFoundationLog socketPairConnection];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            sub_100928708(v3, v5, v23);
          }
        }

        return;
      }

      v14 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(v5 + 24);
        v16 = *(v5 + 8);
        *buf = 67109376;
        v34 = v15;
        v35 = 2048;
        v36 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "IDSDirectDataPathSocket: (%d, %p) writeToNWConnection recv failed, socket closed", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v29 = *(v5 + 24);
          v30 = *(v5 + 8);
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v29 = *(v5 + 24);
            v30 = *(v5 + 8);
            _IDSLogV();
          }
        }
      }

LABEL_41:
      [v5 shutdownSocket];
      return;
    }

    if (*__error() != 35 && *__error() != 4)
    {
      v24 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(v5 + 24);
        v26 = *(v5 + 8);
        *buf = 67109376;
        v34 = v25;
        v35 = 2048;
        v36 = v26;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "IDSDirectDataPathSocket: (%d, %p) writeToNWConnection recv failed, cleaning up", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v29 = *(v5 + 24);
          v30 = *(v5 + 8);
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v29 = *(v5 + 24);
            v30 = *(v5 + 8);
            _IDSLogV();
          }
        }
      }

      goto LABEL_41;
    }

    v11 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(v5 + 24);
      v13 = *(v5 + 8);
      *buf = 67109376;
      v34 = v12;
      v35 = 2048;
      v36 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "IDSDirectDataPathSocket: (%d, %p) writeToNWConnection recv failed, retrying...", buf, 0x12u);
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
}

- (void)readFromNWConnection
{
  nwConnection = self->_nwConnection;
  completion[0] = _NSConcreteStackBlock;
  completion[1] = 3221225472;
  completion[2] = sub_10051B3B4;
  completion[3] = &unk_100BDC700;
  completion[4] = self;
  nw_connection_receive(nwConnection, 1u, 0xFFFFFFFF, completion);
}

- (void)readMessageFromNWConnection
{
  nwConnection = self->_nwConnection;
  completion[0] = _NSConcreteStackBlock;
  completion[1] = 3221225472;
  completion[2] = sub_10051B614;
  completion[3] = &unk_100BDC700;
  completion[4] = self;
  nw_connection_receive_message(nwConnection, completion);
}

- (void)writeMessageToSocket
{
  if (self->_socket < 0)
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IDSDirectDataPathSocket:writeMessageToSocket invalid sd", buf, 2u);
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

  else if (self->_writeSourceSuspended || [(NSMutableArray *)self->_incomingNWMessages count])
  {
    v3 = [(NSMutableArray *)self->_incomingNWMessages firstObject];
    v4 = send(self->_socket, [v3 bytes], objc_msgSend(v3, "length"), 0);
    if (v4 < 1)
    {
      if (v4)
      {
        v6 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          socket = self->_socket;
          nwConnection = self->_nwConnection;
          *buf = 67109376;
          v16 = socket;
          v17 = 2048;
          v18 = nwConnection;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "IDSDirectDataPathSocket:  (%d, %p) writeMessageToSocket failed, cleaning up", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
        {
          v13 = self->_socket;
          v14 = self->_nwConnection;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v13 = self->_socket;
            v14 = self->_nwConnection;
            _IDSLogV();
          }
        }

        [(IDSDirectDataPathSocket *)self shutdownSocket:v13];
      }

      else
      {
        v10 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = self->_socket;
          v12 = self->_nwConnection;
          *buf = 67109376;
          v16 = v11;
          v17 = 2048;
          v18 = v12;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "IDSDirectDataPathSocket: (%d, %p) writeMessageToSocket sentSize is 0!", buf, 0x12u);
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
    }

    else
    {
      [(NSMutableArray *)self->_incomingNWMessages removeObjectAtIndex:0];
    }
  }

  else
  {
    self->_writeSourceSuspended = 1;
    writeToSocketSource = self->_writeToSocketSource;

    dispatch_suspend(writeToSocketSource);
  }
}

- (void)writeMessageToNWConnection
{
  socket = self->_socket;
  if (socket < 0)
  {
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *__b = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "IDSDirectDataPathSocket:writeMessageToNWConnection invalid sd", __b, 2u);
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

  else
  {
    memset(__b, 170, 0x40000uLL);
    v4 = recv(socket, __b, 0x40000uLL, 0);
    if ((v4 & 0x8000000000000000) == 0)
    {
      if (v4)
      {
        v5 = [[NSData alloc] initWithBytes:__b length:v4];
        [(NSMutableArray *)self->_outgoingNWMessages addObject:v5];
        if (self->_canSendOverNWConnection)
        {
          if ([(NSMutableArray *)self->_outgoingNWMessages count])
          {
            v6 = [(NSMutableArray *)self->_outgoingNWMessages firstObject];
            [(NSMutableArray *)self->_outgoingNWMessages removeFirstObject];
            nwConnection = self->_nwConnection;
            v8 = [v6 _createDispatchData];
            completion[0] = _NSConcreteStackBlock;
            completion[1] = 3221225472;
            completion[2] = sub_10051C1EC;
            completion[3] = &unk_100BDF610;
            completion[4] = self;
            nw_connection_send(nwConnection, v8, _nw_content_context_default_message, 1, completion);
          }
        }

        else
        {
          v16 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = self->_socket;
            v18 = self->_nwConnection;
            *buf = 67109376;
            v26 = v17;
            v27 = 2048;
            v28 = v18;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "IDSDirectDataPathSocket: (%d, %p) writeMessageToNWConnection nw_connection busy, retrying..", buf, 0x12u);
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

        return;
      }

      v13 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = self->_socket;
        v15 = self->_nwConnection;
        *buf = 67109376;
        v26 = v14;
        v27 = 2048;
        v28 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "IDSDirectDataPathSocket: (%d, %p) writeMessageToNWConnection recv failed, socket closed", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v22 = self->_socket;
          v23 = self->_nwConnection;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v22 = self->_socket;
            v23 = self->_nwConnection;
            _IDSLogV();
          }
        }
      }

LABEL_42:
      [(IDSDirectDataPathSocket *)self shutdownSocket:v22];
      return;
    }

    if (*__error() != 35 && *__error() != 4)
    {
      v19 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = self->_socket;
        v21 = self->_nwConnection;
        *buf = 67109376;
        v26 = v20;
        v27 = 2048;
        v28 = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "IDSDirectDataPathSocket: (%d, %p) writeMessageToNWConnection recv failed, cleaning up", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v22 = self->_socket;
          v23 = self->_nwConnection;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v22 = self->_socket;
            v23 = self->_nwConnection;
            _IDSLogV();
          }
        }
      }

      goto LABEL_42;
    }

    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_socket;
      v12 = self->_nwConnection;
      *buf = 67109376;
      v26 = v11;
      v27 = 2048;
      v28 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "IDSDirectDataPathSocket: (%d, %p) writeMessageToNWConnection recv failed, retrying...", buf, 0x12u);
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
}

- (BOOL)_isSendErrorFatal:(id)a3
{
  v3 = a3;
  if (nw_error_get_error_domain(v3) == nw_error_domain_posix)
  {
    error_code = nw_error_get_error_code(v3);
    LOBYTE(v5) = 1;
    if (error_code <= 0x3D)
    {
      v6 = error_code;
      if (((1 << error_code) & 0x2080010800000010) != 0)
      {
        v7 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v10 = v6;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "IDSDirectDataPathSocket:_isSendErrorFatal non-fatal write error %d", buf, 8u);
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

        v5 = 0x1F7FFEF7FFFFFFEFuLL >> v6;
      }
    }
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5 & 1;
}

@end