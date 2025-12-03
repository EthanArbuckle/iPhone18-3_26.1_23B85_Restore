@interface MFStream
+ (id)_networkDispatchQueue;
+ (id)networkThread;
+ (void)setNetworkThread:(id)thread;
- (BOOL)isOpen;
- (BOOL)setProperty:(id)property forKey:(id)key;
- (id)_copyPropertyForKey:(id)key;
- (id)initCallBack:(id)back onDispatchQueue:(id)queue;
- (id)propertyForKey:(id)key;
- (int64_t)read:(char *)read maxLength:(unint64_t)length;
- (int64_t)write:(const char *)write maxLength:(unint64_t)length;
- (void)_closeAndReleaseStream:(id)stream logMessage:(id)message;
- (void)_readBytesFromStream;
- (void)close;
- (void)dealloc;
- (void)openToHostName:(id)name port:(int64_t)port;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
@end

@implementation MFStream

+ (id)networkThread
{
  v9 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(&NetworkThreadLock);
  v2 = NetworkThread;
  if (!NetworkThread)
  {
    v7 = 0;
    memset(&v8, 0, sizeof(v8));
    v3 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
    pthread_attr_init(&v8);
    pthread_attr_setdetachstate(&v8, 2);
    pthread_create(&v7, &v8, _MFSocketNetworkThread, v3);
    [v3 lockWhenCondition:1];
    [v3 unlock];

    v2 = NetworkThread;
  }

  v4 = v2;
  pthread_mutex_unlock(&NetworkThreadLock);
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (void)setNetworkThread:(id)thread
{
  if (!NetworkThread)
  {
    pthread_mutex_lock(&NetworkThreadLock);
    if (!NetworkThread)
    {
      NetworkThread = thread;
    }

    pthread_mutex_unlock(&NetworkThreadLock);
  }
}

+ (id)_networkDispatchQueue
{
  result = _networkDispatchQueue_NetworkDispatchQueue;
  if (!_networkDispatchQueue_NetworkDispatchQueue)
  {
    networkThread = [objc_opt_class() networkThread];
    if ([networkThread isEqual:{objc_msgSend(MEMORY[0x277CCACC8], "currentThread")}])
    {
      result = dispatch_queue_create("MFStreamDispatchQueue", 0);
      _networkDispatchQueue_NetworkDispatchQueue = result;
    }

    else
    {
      v6 = [self methodSignatureForSelector:a2];
      v7 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v6];
      [v7 setTarget:self];
      [v7 setSelector:a2];
      [v7 performSelector:sel_invoke onThread:networkThread withObject:0 waitUntilDone:1];
      return _networkDispatchQueue_NetworkDispatchQueue;
    }
  }

  return result;
}

- (id)initCallBack:(id)back onDispatchQueue:(id)queue
{
  v14 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = MFStream;
  v6 = [(MFStream *)&v11 init];
  if (v6)
  {
    if (queue)
    {
      dispatch_retain(queue);
    }

    else
    {
      queue = dispatch_queue_create(0, 0);
    }

    v6->_location = queue;
    if (back)
    {
      backCopy = back;
    }

    else
    {
      backCopy = &__block_literal_global;
    }

    v6->_callback = _Block_copy(backCopy);
    v8 = MFLogGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v13 = v6;
      _os_log_impl(&dword_258BDA000, v8, OS_LOG_TYPE_INFO, "#Streams (%p) created", buf, 0xCu);
    }

    v6->_condition = objc_alloc_init(MEMORY[0x277CCA928]);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9(&dword_258BDA000, v0, v1, "#Streams (%p) deallocated", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)isOpen
{
  if (self->_length)
  {
    return 1;
  }

  if (self->_rStream)
  {
    return self->_wStream != 0;
  }

  return 0;
}

- (id)_copyPropertyForKey:(id)key
{
  v14 = 0;
  keyCopy = key;
  networkThread = [objc_opt_class() networkThread];
  if (([networkThread isEqual:{objc_msgSend(MEMORY[0x277CCACC8], "currentThread")}] & 1) == 0)
  {
    v10 = [(MFStream *)self methodSignatureForSelector:a2];
    v11 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v10];
    [v11 setTarget:self];
    [v11 setSelector:a2];
    [v11 setArgument:&keyCopy atIndex:2];
    [v11 performSelector:sel_invoke onThread:networkThread withObject:0 waitUntilDone:1];
    [v11 getReturnValue:&v14];
    return v14;
  }

  properties = self->_properties;
  if (!properties)
  {
    v12 = [(NSInputStream *)self->_rStream propertyForKey:key];
    if (!v12)
    {
      v12 = [(NSOutputStream *)self->_wStream propertyForKey:key];
    }

    v13 = v12;
    return v12;
  }

  v8 = [(NSMutableDictionary *)properties objectForKey:key];

  return v8;
}

- (id)propertyForKey:(id)key
{
  v3 = [(MFStream *)self _copyPropertyForKey:key];

  return v3;
}

- (BOOL)setProperty:(id)property forKey:(id)key
{
  v28 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  propertyCopy = property;
  v19 = 1;
  networkThread = [objc_opt_class() networkThread];
  if ([networkThread isEqual:{objc_msgSend(MEMORY[0x277CCACC8], "currentThread")}])
  {
    rStream = self->_rStream;
    if (rStream || (rStream = self->_wStream) != 0)
    {
      v10 = [rStream setProperty:property forKey:key];
      v11 = MFLogGeneral();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = "out";
        *buf = 134218498;
        selfCopy = self;
        if (v10)
        {
          v12 = "";
        }

        v24 = 2112;
        keyCopy2 = key;
        v26 = 2080;
        v27 = v12;
        _os_log_debug_impl(&dword_258BDA000, v11, OS_LOG_TYPE_DEBUG, "#Streams (%p) set property %@ with%s success", buf, 0x20u);
      }
    }

    else
    {
      properties = self->_properties;
      if (!properties)
      {
        properties = objc_alloc_init(MEMORY[0x277CBEB38]);
        self->_properties = properties;
      }

      [(NSMutableDictionary *)properties setValue:property forKey:key];
      v18 = MFLogGeneral();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [MFStream setProperty:forKey:];
      }

      LOBYTE(v10) = 1;
    }
  }

  else
  {
    v13 = [(MFStream *)self methodSignatureForSelector:a2];
    v14 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v13];
    [v14 setTarget:self];
    [v14 setSelector:a2];
    [v14 setArgument:&propertyCopy atIndex:2];
    [v14 setArgument:&keyCopy atIndex:3];
    [v14 performSelector:sel_invoke onThread:networkThread withObject:0 waitUntilDone:1];
    [v14 getReturnValue:&v19];
    LOBYTE(v10) = v19;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

- (void)openToHostName:(id)name port:(int64_t)port
{
  v37 = *MEMORY[0x277D85DE8];
  portCopy = port;
  nameCopy = name;
  networkThread = [objc_opt_class() networkThread];
  if ([networkThread isEqual:{objc_msgSend(MEMORY[0x277CCACC8], "currentThread")}])
  {
    if (self->_rStream || self->_wStream)
    {
      [MFStream openToHostName:port:];
    }

    v9 = MFLogGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134218498;
      selfCopy = self;
      v33 = 2112;
      nameCopy2 = name;
      v35 = 2048;
      portCopy2 = port;
      _os_log_impl(&dword_258BDA000, v9, OS_LOG_TYPE_INFO, "#Streams Opening stream (%p) to %@:%ld", buf, 0x20u);
    }

    v29[0] = @"stream";
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", self];
    nameCopy3 = &stru_2869ED3E0;
    if (name)
    {
      nameCopy3 = name;
    }

    v30[0] = v10;
    v30[1] = nameCopy3;
    v29[1] = @"host";
    v29[2] = @"port";
    v30[2] = [MEMORY[0x277CCABB0] numberWithInteger:port];
    +[MFPowerController powerlog:eventData:](MFPowerController, "powerlog:eventData:", @"StreamOpen", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3]);

    self->_error = 0;
    [(MFStream *)self _createPairWithSocketToHostName:name port:port];
    [(NSInputStream *)self->_rStream setDelegate:self];
    [(NSOutputStream *)self->_wStream setDelegate:self];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    properties = self->_properties;
    v13 = [(NSMutableDictionary *)properties countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(properties);
          }

          [(NSInputStream *)self->_rStream setProperty:[(NSMutableDictionary *)self->_properties objectForKey:*(*(&v22 + 1) + 8 * i)] forKey:*(*(&v22 + 1) + 8 * i)];
        }

        v14 = [(NSMutableDictionary *)properties countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v14);
    }

    self->_properties = 0;
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    v18 = *MEMORY[0x277CBE640];
    [(NSInputStream *)self->_rStream scheduleInRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE640]];
    [(NSOutputStream *)self->_wStream scheduleInRunLoop:currentRunLoop forMode:v18];
    [(NSInputStream *)self->_rStream open];
    [(NSOutputStream *)self->_wStream open];
  }

  else
  {
    v19 = [(MFStream *)self methodSignatureForSelector:a2];
    v20 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v19];
    [v20 setTarget:self];
    [v20 setSelector:a2];
    [v20 retainArguments];
    [v20 setArgument:&nameCopy atIndex:2];
    [v20 setArgument:&portCopy atIndex:3];
    [v20 performSelector:sel_invoke onThread:networkThread withObject:0 waitUntilDone:0];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_closeAndReleaseStream:(id)stream logMessage:(id)message
{
  v17 = *MEMORY[0x277D85DE8];
  if (stream)
  {
    [stream setDelegate:0];
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [stream removeFromRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE640]];
    [stream close];

    if (message)
    {
      v8 = MFLogGeneral();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 134218242;
        selfCopy2 = self;
        v15 = 2112;
        messageCopy = message;
        _os_log_impl(&dword_258BDA000, v8, OS_LOG_TYPE_INFO, "#Streams (%p) %@", buf, 0x16u);
      }
    }

    if (!self->_rStream && !self->_wStream)
    {
      v9 = MFLogGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        selfCopy2 = self;
        _os_log_impl(&dword_258BDA000, v9, OS_LOG_TYPE_INFO, "#Streams (%p) has closed", buf, 0xCu);
      }

      v11[0] = @"stream";
      v12[0] = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", self];
      v11[1] = @"rx";
      v12[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_bytesRead];
      v11[2] = @"tx";
      v12[2] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_bytesWritten];
      +[MFPowerController powerlog:eventData:](MFPowerController, "powerlog:eventData:", @"StreamClose", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3]);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (int64_t)read:(char *)read maxLength:(unint64_t)length
{
  v39 = *MEMORY[0x277D85DE8];
  lengthCopy = length;
  readCopy = read;
  networkThread = [objc_opt_class() networkThread];
  if ([networkThread isEqual:{objc_msgSend(MEMORY[0x277CCACC8], "currentThread")}])
  {
    length = self->_length;
    if (length)
    {
      if (length >= length)
      {
        lengthCopy2 = self->_length;
      }

      else
      {
        lengthCopy2 = length;
      }

      memmove(read, self->_buffer, lengthCopy2);
      buffer = self->_buffer;
      v12 = self->_length - lengthCopy2;
      self->_length = v12;
      memmove(buffer, &buffer[lengthCopy2], v12);
      v13 = MFLogGeneral();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [MFStream read:maxLength:];
      }

      self->_bytesRead += lengthCopy2;
      self->_dispatchedBytesAvailable = 0;
      if (!self->_streamCanRead)
      {
        if (self->_length)
        {
          v17 = MFLogGeneral();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            [MFStream read:&self->_length maxLength:?];
          }

          self->_dispatchedBytesAvailable = 1;
          location = self->_location;
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __27__MFStream_read_maxLength___block_invoke;
          v29[3] = &unk_2798B61C0;
          v29[4] = self;
          v19 = v29;
        }

        else
        {
          if ([(MFStream *)self isOpen])
          {
            goto LABEL_23;
          }

          if (self->_error)
          {
            v20 = @"MFStreamEventErrorOccurred";
          }

          else
          {
            v20 = @"MFStreamEventEndEncountered";
          }

          v21 = MFLogGeneral();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            error = self->_error;
            if (error)
            {
              v25 = @" error: ";
            }

            else
            {
              v25 = &stru_2869ED3E0;
            }

            ef_publicDescription = [(NSError *)error ef_publicDescription];
            *buf = 134218754;
            if (ef_publicDescription)
            {
              v27 = ef_publicDescription;
            }

            else
            {
              v27 = &stru_2869ED3E0;
            }

            *&buf[4] = self;
            v33 = 2112;
            v34 = v20;
            v35 = 2112;
            v36 = v25;
            v37 = 2114;
            v38 = v27;
            _os_log_error_impl(&dword_258BDA000, v21, OS_LOG_TYPE_ERROR, "#Streams (%p) dispatching %@%@%{public}@", buf, 0x2Au);
          }

          location = self->_location;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __27__MFStream_read_maxLength___block_invoke_60;
          block[3] = &unk_2798B61E8;
          block[4] = self;
          block[5] = v20;
          v19 = block;
        }

        dispatch_async(location, v19);
        goto LABEL_23;
      }

      [(MFStream *)self _readBytesFromStream];
    }

    else
    {
      lengthCopy2 = -1;
    }
  }

  else
  {
    *buf = 0;
    v14 = objc_autoreleasePoolPush();
    v15 = [(MFStream *)self methodSignatureForSelector:a2];
    v16 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v15];
    [v16 setTarget:self];
    [v16 setSelector:a2];
    [v16 setArgument:&readCopy atIndex:2];
    [v16 setArgument:&lengthCopy atIndex:3];
    [v16 performSelector:sel_invoke onThread:networkThread withObject:0 waitUntilDone:1];
    [v16 getReturnValue:buf];
    objc_autoreleasePoolPop(v14);
    lengthCopy2 = *buf;
  }

LABEL_23:
  v22 = *MEMORY[0x277D85DE8];
  return lengthCopy2;
}

- (int64_t)write:(const char *)write maxLength:(unint64_t)length
{
  v36 = *MEMORY[0x277D85DE8];
  lengthCopy = length;
  writeCopy = write;
  networkThread = [objc_opt_class() networkThread];
  if ([networkThread isEqual:{objc_msgSend(MEMORY[0x277CCACC8], "currentThread")}])
  {
    wStream = self->_wStream;
    if (wStream)
    {
      if (!self->_streamCanWrite)
      {
        [MFStream write:maxLength:];
      }

      self->_streamCanWrite = 0;
      v10 = [(NSOutputStream *)wStream write:write maxLength:length];
      v11 = MFLogGeneral();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [MFStream write:maxLength:];
      }

      self->_bytesWritten += v10;
      if (v10 < 0)
      {
        v12 = self->_wStream;
        self->_wStream = 0;
        if (!self->_error)
        {
          self->_error = [(NSOutputStream *)v12 streamError];
        }

        [(MFStream *)self _closeAndReleaseStream:v12 logMessage:@"closed the write half"];
        if (![(MFStream *)self isOpen])
        {
          if (self->_error)
          {
            v13 = @"MFStreamEventErrorOccurred";
          }

          else
          {
            v13 = @"MFStreamEventEndEncountered";
          }

          v14 = MFLogGeneral();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            error = self->_error;
            if (error)
            {
              v23 = @" error: ";
            }

            else
            {
              v23 = &stru_2869ED3E0;
            }

            ef_publicDescription = [(NSError *)error ef_publicDescription];
            *buf = 134218754;
            if (ef_publicDescription)
            {
              v25 = ef_publicDescription;
            }

            else
            {
              v25 = &stru_2869ED3E0;
            }

            *&buf[4] = self;
            v30 = 2112;
            lengthCopy2 = v13;
            v32 = 2112;
            v33 = v23;
            v34 = 2114;
            v35 = v25;
            _os_log_error_impl(&dword_258BDA000, v14, OS_LOG_TYPE_ERROR, "#Streams (%p) dispatching %@%@%{public}@", buf, 0x2Au);
          }

          location = self->_location;
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __28__MFStream_write_maxLength___block_invoke;
          v26[3] = &unk_2798B61E8;
          v26[4] = self;
          v26[5] = v13;
          dispatch_async(location, v26);
        }
      }
    }

    else
    {
      v19 = MFLogGeneral();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        *&buf[4] = self;
        v30 = 2048;
        lengthCopy2 = length;
        _os_log_impl(&dword_258BDA000, v19, OS_LOG_TYPE_INFO, "#Streams (%p) no longer has an open write stream, aborting write of %lu bytes", buf, 0x16u);
      }

      v10 = -1;
    }
  }

  else
  {
    *buf = 0;
    v16 = objc_autoreleasePoolPush();
    v17 = [(MFStream *)self methodSignatureForSelector:a2];
    v18 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v17];
    [v18 setTarget:self];
    [v18 setSelector:a2];
    [v18 setArgument:&writeCopy atIndex:2];
    [v18 setArgument:&lengthCopy atIndex:3];
    [v18 performSelector:sel_invoke onThread:networkThread withObject:0 waitUntilDone:1];
    [v18 getReturnValue:buf];
    objc_autoreleasePoolPop(v16);
    v10 = *buf;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)close
{
  networkThread = [objc_opt_class() networkThread];
  if ([networkThread isEqual:{objc_msgSend(MEMORY[0x277CCACC8], "currentThread")}])
  {
    *&self->_streamCanRead = 0;
    rStream = self->_rStream;
    self->_rStream = 0;
    if (!self->_error)
    {
      self->_error = [(NSInputStream *)rStream streamError];
    }

    [(MFStream *)self _closeAndReleaseStream:rStream logMessage:0];
    wStream = self->_wStream;
    self->_wStream = 0;
    if (!self->_error)
    {
      self->_error = [(NSOutputStream *)wStream streamError];
    }

    [(MFStream *)self _closeAndReleaseStream:wStream logMessage:0];
    free(self->_buffer);
    self->_capacity = 0;
    self->_length = 0;
    self->_buffer = 0;
  }

  else
  {
    v7 = [(MFStream *)self methodSignatureForSelector:a2];
    v8 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v7];
    [v8 setTarget:self];
    [v8 setSelector:a2];

    [v8 performSelector:sel_invoke onThread:networkThread withObject:0 waitUntilDone:1];
  }
}

- (void)_readBytesFromStream
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_258BDA000, v0, v1, "#Streams (%p) buffered %ld bytes", v3, v4);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  v33 = *MEMORY[0x277D85DE8];
  p_rStream = &self->_rStream;
  rStream = self->_rStream;
  if (rStream != stream && self->_wStream != stream)
  {
    goto LABEL_31;
  }

  v8 = __ROR8__(event - 2, 1);
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      if (!self->_error)
      {
        self->_error = [stream streamError];
      }
    }

    else if (v8 != 7)
    {
      goto LABEL_31;
    }

    if (rStream == stream)
    {
      self->_streamCanRead = 0;
      v13 = @"read";
    }

    else
    {
      self->_streamCanWrite = 0;
      p_rStream = &self->_wStream;
      v13 = @"write";
    }

    *p_rStream = 0;
    v14 = @"error: ";
    if (self->_error)
    {
      error = self->_error;
    }

    else
    {
      v14 = @"ended";
      error = &stru_2869ED3E0;
    }

    -[MFStream _closeAndReleaseStream:logMessage:](self, "_closeAndReleaseStream:logMessage:", stream, [MEMORY[0x277CCACA8] stringWithFormat:@"%@ stream %@%@", v13, v14, error]);
    if ([(MFStream *)self isOpen])
    {
      goto LABEL_31;
    }

    if (self->_error)
    {
      v16 = @"MFStreamEventErrorOccurred";
    }

    else
    {
      v16 = @"MFStreamEventEndEncountered";
    }

    v17 = MFLogGeneral();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = self->_error;
      if (v19)
      {
        v20 = @" error: ";
      }

      else
      {
        v20 = &stru_2869ED3E0;
      }

      ef_publicDescription = [(NSError *)v19 ef_publicDescription];
      *buf = 134218754;
      if (ef_publicDescription)
      {
        v22 = ef_publicDescription;
      }

      else
      {
        v22 = &stru_2869ED3E0;
      }

      selfCopy = self;
      v27 = 2112;
      v28 = v16;
      v29 = 2112;
      v30 = v20;
      v31 = 2114;
      v32 = v22;
      _os_log_error_impl(&dword_258BDA000, v17, OS_LOG_TYPE_ERROR, "#Streams (%p) dispatching %@%@%{public}@", buf, 0x2Au);
    }

    location = self->_location;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__MFStream_stream_handleEvent___block_invoke_85;
    block[3] = &unk_2798B61E8;
    block[4] = self;
    block[5] = v16;
    v11 = block;
    goto LABEL_30;
  }

  if (v8)
  {
    if (v8 != 1)
    {
LABEL_31:
      v18 = *MEMORY[0x277D85DE8];
      return;
    }

    self->_streamCanWrite = 1;
    v9 = MFLogGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [MFStream stream:handleEvent:];
    }

    location = self->_location;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __31__MFStream_stream_handleEvent___block_invoke;
    v24[3] = &unk_2798B61C0;
    v24[4] = self;
    v11 = v24;
LABEL_30:
    dispatch_async(location, v11);
    goto LABEL_31;
  }

  if (rStream != stream)
  {
    [MFStream stream:handleEvent:];
  }

  self->_streamCanRead = 1;
  v12 = *MEMORY[0x277D85DE8];

  [(MFStream *)self _readBytesFromStream];
}

- (void)setProperty:forKey:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3(&dword_258BDA000, v0, v1, "#Streams (%p) set property %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)read:maxLength:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_258BDA000, v0, v1, "#Streams (%p) read %lu bytes", v3, v4);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)read:(uint64_t)a1 maxLength:(uint64_t *)a2 .cold.2(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_258BDA000, v3, v4, "#Streams (%p) dispatching MFStreamEventHasBytesAvailable (%ld)", v6, v7);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)write:maxLength:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_258BDA000, v0, v1, "#Streams (%p) wrote %ld bytes", v3, v4);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)stream:handleEvent:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9(&dword_258BDA000, v0, v1, "#Streams (%p) dispatching MFStreamEventCanAcceptBytes", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end