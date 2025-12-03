@interface IDSBaseSocketPairConnection
- (BOOL)sendData:(id)data;
- (IDSBaseSocketPairConnection)initWithQueue:(id)queue delegate:(id)delegate;
- (IDSBaseSocketPairConnection)initWithSocket:(int)socket queue:(id)queue delegate:(id)delegate start:(BOOL)start;
- (void)_callDelegatesWithBlock:(id)block;
- (void)_processBytesAvailable;
- (void)_sendToConnectedSocket;
- (void)_setupWriteSource;
- (void)dealloc;
- (void)endSession;
- (void)setDestination:(id)destination;
- (void)start;
@end

@implementation IDSBaseSocketPairConnection

- (IDSBaseSocketPairConnection)initWithQueue:(id)queue delegate:(id)delegate
{
  queueCopy = queue;
  delegateCopy = delegate;
  v24.receiver = self;
  v24.super_class = IDSBaseSocketPairConnection;
  v9 = [(IDSBaseSocketPairConnection *)&v24 init];
  if (v9)
  {
    v10 = [MEMORY[0x1E69A61A0] weakRefWithObject:delegateCopy];
    delegate = v9->_delegate;
    v9->_delegate = v10;

    objc_storeStrong(&v9->_queue, queue);
    v12 = objc_alloc(MEMORY[0x1E696AEC0]);
    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    v14 = [v12 initWithFormat:@"com.apple.identityservices.socketConnection-%@", stringGUID];

    LOBYTE(stringGUID) = IMGetDomainBoolForKey();
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = v15;
    if (stringGUID)
    {
      v17 = dispatch_queue_attr_make_with_qos_class(v15, QOS_CLASS_USER_INTERACTIVE, 0);
    }

    else
    {
      v17 = v15;
    }

    v18 = v17;
    v19 = dispatch_queue_create([v14 UTF8String], v17);
    readQueue = v9->_readQueue;
    v9->_readQueue = v19;

    v9->_lastDateCheck = 0.0;
    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    outgoingDataArray = v9->_outgoingDataArray;
    v9->_outgoingDataArray = v21;
  }

  return v9;
}

- (IDSBaseSocketPairConnection)initWithSocket:(int)socket queue:(id)queue delegate:(id)delegate start:(BOOL)start
{
  startCopy = start;
  v8 = [(IDSBaseSocketPairConnection *)self initWithQueue:queue delegate:delegate];
  v9 = v8;
  if (v8)
  {
    v8->_connectedSocket = socket;
    if (startCopy)
    {
      [(IDSBaseSocketPairConnection *)v8 start];
    }
  }

  return v9;
}

- (void)dealloc
{
  [(IDSBaseSocketPairConnection *)self endSession];
  v3.receiver = self;
  v3.super_class = IDSBaseSocketPairConnection;
  [(IDSBaseSocketPairConnection *)&v3 dealloc];
}

- (void)endSession
{
  readQueue = self->_readQueue;
  if (readQueue)
  {
    self->_readQueue = 0;
  }

  readSource = self->_readSource;
  if (readSource)
  {
    dispatch_source_cancel(readSource);
    v5 = self->_readSource;
    self->_readSource = 0;
  }

  writeSource = self->_writeSource;
  if (writeSource)
  {
    dispatch_source_cancel(writeSource);
    if (!self->_writeSourceIsResumed)
    {
      dispatch_resume(self->_writeSource);
    }

    v7 = self->_writeSource;
    self->_writeSource = 0;
  }

  self->_writeSourceIsResumed = 0;
  connectedSocket = self->_connectedSocket;
  if ((connectedSocket & 0x80000000) == 0)
  {
    close(connectedSocket);
    self->_connectedSocket = -1;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1A7B677AC;
    v9[3] = &unk_1E77E0AA8;
    v9[4] = self;
    [(IDSBaseSocketPairConnection *)self _callDelegatesWithBlock:v9];
  }
}

- (void)setDestination:(id)destination
{
  destinationCopy = destination;
  if (destinationCopy)
  {
    connectedSocket = self->_connectedSocket;
    if ((connectedSocket & 0x80000000) == 0)
    {
      v6 = destinationCopy;
      connect(connectedSocket, [destinationCopy sa], *objc_msgSend(destinationCopy, "sa"));
      destinationCopy = v6;
    }
  }
}

- (void)_callDelegatesWithBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    object = [(IMWeakReference *)self->_delegate object];
    v6 = object;
    queue = self->_queue;
    if (queue)
    {
      v8 = object == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1A7B67950;
      v9[3] = &unk_1E77DD0F0;
      v11 = blockCopy;
      v10 = v6;
      dispatch_async(queue, v9);
    }
  }
}

- (void)_processBytesAvailable
{
  v32 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  v3 = recv(self->_connectedSocket, __b, 0x2710uLL, 0);
  if (v3 < 0)
  {
    if (*__error() == 35)
    {
      v15 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "resource temporarily unavailable, trying again later...", buf, 2u);
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
      v17 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *__error();
        v19 = __error();
        v20 = strerror(*v19);
        *buf = 67109378;
        *v30 = v18;
        *&v30[4] = 2080;
        *&v30[6] = v20;
        _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "Error %d (%s) when receiving bytes, closing connection", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          v21 = *__error();
          v22 = __error();
          v25 = v21;
          v26 = strerror(*v22);
          MarcoLog();
        }

        if (IMShouldLog())
        {
          v23 = *__error();
          v24 = __error();
          v25 = v23;
          v26 = strerror(*v24);
          IMLogString();
        }
      }

      [(IDSBaseSocketPairConnection *)self endSession:v25];
    }
  }

  else if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:__b length:v3];
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v30 = [v4 hash];
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "Processing incoming bytes %lu", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        [v4 hash];
        MarcoLog();
      }

      if (IMShouldLog())
      {
        [v4 hash];
        IMLogString();
      }
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_1A7B68014;
    v27[3] = &unk_1E77E0AD0;
    v27[4] = self;
    v28 = v4;
    v6 = v4;
    [(IDSBaseSocketPairConnection *)self _callDelegatesWithBlock:v27];
    v7 = [v6 length];

    self->_bytesReceived += v7;
    if (self->_lastDateCheck == 0.0)
    {
      IMTimeOfDay();
      self->_lastDateCheck = v8;
    }

    IMTimeOfDay();
    v10 = v9;
    v11 = v9 - self->_lastDateCheck;
    if (v11 >= 1.0)
    {
      v12 = (8 * self->_bytesReceived) / v11;
      self->_prevBPS = v12 * 0.1 + self->_prevBPS * 0.9;
      v13 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        prevBPS = self->_prevBPS;
        *buf = 134218240;
        *v30 = prevBPS;
        *&v30[8] = 2048;
        *&v30[10] = v12;
        _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "Socekt Pair BPS: avg %f instant %f", buf, 0x16u);
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

      self->_bytesReceived = 0;
      self->_lastDateCheck = v10;
    }
  }

  else
  {
    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "Remote side closed the connection, cleaning up", buf, 2u);
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

    [(IDSBaseSocketPairConnection *)self endSession];
  }
}

- (void)start
{
  readQueue = self->_readQueue;
  if (readQueue)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A7B680F0;
    block[3] = &unk_1E77E0818;
    block[4] = self;
    dispatch_async(readQueue, block);
  }
}

- (void)_sendToConnectedSocket
{
  v44 = *MEMORY[0x1E69E9840];
  if (self->_connectedSocket < 0)
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "Connected socket closed, cannot send data, cleaning up...", buf, 2u);
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

    [(IDSBaseSocketPairConnection *)self endSession];
  }

  else if ([(NSMutableArray *)self->_outgoingDataArray count])
  {
    firstObject = [(NSMutableArray *)self->_outgoingDataArray firstObject];
    if (send(self->_connectedSocket, [firstObject bytes], objc_msgSend(firstObject, "length"), 0) < 0)
    {
      if (*__error() == 35)
      {
        v7 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "socket timeout, ignoring...", buf, 2u);
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

      else if (*__error() == 55)
      {
        v36 = 4;
        v37 = -1431655766;
        if (getsockopt(self->_connectedSocket, 0xFFFF, 4098, &v37, &v36) < 0)
        {
          v8 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = *__error();
            v10 = __error();
            v11 = strerror(*v10);
            *buf = 67109378;
            v39 = v9;
            v40 = 2080;
            v41 = v11;
            _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "error %d (%s) trying to get SO_RCVBUF size, cleaning up...", buf, 0x12u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (MarcoShouldLog())
            {
              v12 = *__error();
              v13 = __error();
              v33 = v12;
              v34 = strerror(*v13);
              MarcoLog();
            }

            if (IMShouldLog())
            {
              v14 = *__error();
              v15 = __error();
              v33 = v14;
              v34 = strerror(*v15);
              IMLogString();
            }
          }

          [(IDSBaseSocketPairConnection *)self endSession:v33];
        }

        v16 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v39 = v37;
          _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "no buffer space available socket is full with %d bytes, waiting...", buf, 8u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (MarcoShouldLog())
          {
            v33 = v37;
            MarcoLog();
          }

          if (IMShouldLog())
          {
            v33 = v37;
            IMLogString();
          }
        }

        [(NSMutableArray *)self->_outgoingDataArray removeObjectAtIndex:0, v33];
      }

      else if (*__error() == 40)
      {
        v17 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *__error();
          v19 = __error();
          v20 = strerror(*v19);
          *buf = 67109634;
          v39 = v18;
          v40 = 2080;
          v41 = v20;
          v42 = 2048;
          v43 = [firstObject length];
          _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "send error %d (%s) trying to send data of size %lu, dropping packets to send...", buf, 0x1Cu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (MarcoShouldLog())
          {
            v21 = *__error();
            v22 = __error();
            v34 = strerror(*v22);
            v35 = [firstObject length];
            v33 = v21;
            MarcoLog();
          }

          if (IMShouldLog())
          {
            v23 = *__error();
            v24 = __error();
            v34 = strerror(*v24);
            v35 = [firstObject length];
            v33 = v23;
            IMLogString();
          }
        }

        [(NSMutableArray *)self->_outgoingDataArray removeObjectAtIndex:0, v33, v34, v35];
      }

      else
      {
        v25 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = *__error();
          v27 = __error();
          v28 = strerror(*v27);
          *buf = 67109634;
          v39 = v26;
          v40 = 2080;
          v41 = v28;
          v42 = 2048;
          v43 = [firstObject length];
          _os_log_impl(&dword_1A7AD9000, v25, OS_LOG_TYPE_DEFAULT, "send error %d (%s) trying to send data of size %lu, cleaning up...", buf, 0x1Cu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (MarcoShouldLog())
          {
            v29 = *__error();
            v30 = __error();
            v34 = strerror(*v30);
            v35 = [firstObject length];
            v33 = v29;
            MarcoLog();
          }

          if (IMShouldLog())
          {
            v31 = *__error();
            v32 = __error();
            v34 = strerror(*v32);
            v35 = [firstObject length];
            v33 = v31;
            IMLogString();
          }
        }

        [(IDSBaseSocketPairConnection *)self endSession:v33];
      }
    }

    else
    {
      [(NSMutableArray *)self->_outgoingDataArray removeObjectAtIndex:0];
    }
  }

  else
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "No data to send on socket, suspending write source", buf, 2u);
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

    writeSource = self->_writeSource;
    if (writeSource)
    {
      self->_writeSourceIsResumed = 0;
      dispatch_suspend(writeSource);
    }
  }
}

- (void)_setupWriteSource
{
  readQueue = self->_readQueue;
  if (readQueue)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A7B68B34;
    block[3] = &unk_1E77E0818;
    block[4] = self;
    dispatch_async(readQueue, block);
  }
}

- (BOOL)sendData:(id)data
{
  dataCopy = data;
  v5 = dataCopy;
  v6 = 1;
  if (dataCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 1;
    readQueue = self->_readQueue;
    if (readQueue)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1A7B68DD4;
      block[3] = &unk_1E77E0AF8;
      block[4] = self;
      v10 = dataCopy;
      v11 = &v12;
      dispatch_sync(readQueue, block);

      v6 = *(v13 + 24);
    }

    _Block_object_dispose(&v12, 8);
  }

  return v6 & 1;
}

@end