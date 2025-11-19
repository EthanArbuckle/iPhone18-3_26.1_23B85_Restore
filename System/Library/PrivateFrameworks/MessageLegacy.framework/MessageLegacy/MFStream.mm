@interface MFStream
+ (id)_networkDispatchQueue;
+ (id)networkThread;
+ (void)setNetworkThread:(id)a3;
- (BOOL)isOpen;
- (BOOL)setProperty:(id)a3 forKey:(id)a4;
- (id)_copyPropertyForKey:(id)a3;
- (id)initCallBack:(id)a3 onDispatchQueue:(id)a4;
- (id)propertyForKey:(id)a3;
- (int64_t)read:(char *)a3 maxLength:(unint64_t)a4;
- (int64_t)write:(const char *)a3 maxLength:(unint64_t)a4;
- (void)_closeAndReleaseStream:(id)a3 logMessage:(id)a4;
- (void)_readBytesFromStream;
- (void)close;
- (void)dealloc;
- (void)openToHostName:(id)a3 port:(int64_t)a4;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
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

+ (void)setNetworkThread:(id)a3
{
  if (!NetworkThread)
  {
    pthread_mutex_lock(&NetworkThreadLock);
    if (!NetworkThread)
    {
      NetworkThread = a3;
    }

    pthread_mutex_unlock(&NetworkThreadLock);
  }
}

+ (id)_networkDispatchQueue
{
  result = _networkDispatchQueue_NetworkDispatchQueue;
  if (!_networkDispatchQueue_NetworkDispatchQueue)
  {
    v5 = [objc_opt_class() networkThread];
    if ([v5 isEqual:{objc_msgSend(MEMORY[0x277CCACC8], "currentThread")}])
    {
      result = dispatch_queue_create("MFStreamDispatchQueue", 0);
      _networkDispatchQueue_NetworkDispatchQueue = result;
    }

    else
    {
      v6 = [a1 methodSignatureForSelector:a2];
      v7 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v6];
      [v7 setTarget:a1];
      [v7 setSelector:a2];
      [v7 performSelector:sel_invoke onThread:v5 withObject:0 waitUntilDone:1];
      return _networkDispatchQueue_NetworkDispatchQueue;
    }
  }

  return result;
}

- (id)initCallBack:(id)a3 onDispatchQueue:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = MFStream;
  v6 = [(MFStream *)&v11 init];
  if (v6)
  {
    if (a4)
    {
      dispatch_retain(a4);
    }

    else
    {
      a4 = dispatch_queue_create(0, 0);
    }

    v6->_location = a4;
    if (a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = &__block_literal_global;
    }

    v6->_callback = _Block_copy(v7);
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

- (id)_copyPropertyForKey:(id)a3
{
  v14 = 0;
  v15 = a3;
  v6 = [objc_opt_class() networkThread];
  if (([v6 isEqual:{objc_msgSend(MEMORY[0x277CCACC8], "currentThread")}] & 1) == 0)
  {
    v10 = [(MFStream *)self methodSignatureForSelector:a2];
    v11 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v10];
    [v11 setTarget:self];
    [v11 setSelector:a2];
    [v11 setArgument:&v15 atIndex:2];
    [v11 performSelector:sel_invoke onThread:v6 withObject:0 waitUntilDone:1];
    [v11 getReturnValue:&v14];
    return v14;
  }

  properties = self->_properties;
  if (!properties)
  {
    v12 = [(NSInputStream *)self->_rStream propertyForKey:a3];
    if (!v12)
    {
      v12 = [(NSOutputStream *)self->_wStream propertyForKey:a3];
    }

    v13 = v12;
    return v12;
  }

  v8 = [(NSMutableDictionary *)properties objectForKey:a3];

  return v8;
}

- (id)propertyForKey:(id)a3
{
  v3 = [(MFStream *)self _copyPropertyForKey:a3];

  return v3;
}

- (BOOL)setProperty:(id)a3 forKey:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v20 = a4;
  v21 = a3;
  v19 = 1;
  v8 = [objc_opt_class() networkThread];
  if ([v8 isEqual:{objc_msgSend(MEMORY[0x277CCACC8], "currentThread")}])
  {
    rStream = self->_rStream;
    if (rStream || (rStream = self->_wStream) != 0)
    {
      v10 = [rStream setProperty:a3 forKey:a4];
      v11 = MFLogGeneral();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = "out";
        *buf = 134218498;
        v23 = self;
        if (v10)
        {
          v12 = "";
        }

        v24 = 2112;
        v25 = a4;
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

      [(NSMutableDictionary *)properties setValue:a3 forKey:a4];
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
    [v14 setArgument:&v21 atIndex:2];
    [v14 setArgument:&v20 atIndex:3];
    [v14 performSelector:sel_invoke onThread:v8 withObject:0 waitUntilDone:1];
    [v14 getReturnValue:&v19];
    LOBYTE(v10) = v19;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

- (void)openToHostName:(id)a3 port:(int64_t)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v26 = a4;
  v27 = a3;
  v8 = [objc_opt_class() networkThread];
  if ([v8 isEqual:{objc_msgSend(MEMORY[0x277CCACC8], "currentThread")}])
  {
    if (self->_rStream || self->_wStream)
    {
      [MFStream openToHostName:port:];
    }

    v9 = MFLogGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134218498;
      v32 = self;
      v33 = 2112;
      v34 = a3;
      v35 = 2048;
      v36 = a4;
      _os_log_impl(&dword_258BDA000, v9, OS_LOG_TYPE_INFO, "#Streams Opening stream (%p) to %@:%ld", buf, 0x20u);
    }

    v29[0] = @"stream";
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", self];
    v11 = &stru_2869ED3E0;
    if (a3)
    {
      v11 = a3;
    }

    v30[0] = v10;
    v30[1] = v11;
    v29[1] = @"host";
    v29[2] = @"port";
    v30[2] = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    +[MFPowerController powerlog:eventData:](MFPowerController, "powerlog:eventData:", @"StreamOpen", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3]);

    self->_error = 0;
    [(MFStream *)self _createPairWithSocketToHostName:a3 port:a4];
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
    v17 = [MEMORY[0x277CBEB88] currentRunLoop];
    v18 = *MEMORY[0x277CBE640];
    [(NSInputStream *)self->_rStream scheduleInRunLoop:v17 forMode:*MEMORY[0x277CBE640]];
    [(NSOutputStream *)self->_wStream scheduleInRunLoop:v17 forMode:v18];
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
    [v20 setArgument:&v27 atIndex:2];
    [v20 setArgument:&v26 atIndex:3];
    [v20 performSelector:sel_invoke onThread:v8 withObject:0 waitUntilDone:0];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_closeAndReleaseStream:(id)a3 logMessage:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    [a3 setDelegate:0];
    v7 = [MEMORY[0x277CBEB88] currentRunLoop];
    [a3 removeFromRunLoop:v7 forMode:*MEMORY[0x277CBE640]];
    [a3 close];

    if (a4)
    {
      v8 = MFLogGeneral();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 134218242;
        v14 = self;
        v15 = 2112;
        v16 = a4;
        _os_log_impl(&dword_258BDA000, v8, OS_LOG_TYPE_INFO, "#Streams (%p) %@", buf, 0x16u);
      }
    }

    if (!self->_rStream && !self->_wStream)
    {
      v9 = MFLogGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v14 = self;
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

- (int64_t)read:(char *)a3 maxLength:(unint64_t)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v30 = a4;
  v31 = a3;
  v8 = [objc_opt_class() networkThread];
  if ([v8 isEqual:{objc_msgSend(MEMORY[0x277CCACC8], "currentThread")}])
  {
    length = self->_length;
    if (length)
    {
      if (a4 >= length)
      {
        v10 = self->_length;
      }

      else
      {
        v10 = a4;
      }

      memmove(a3, self->_buffer, v10);
      buffer = self->_buffer;
      v12 = self->_length - v10;
      self->_length = v12;
      memmove(buffer, &buffer[v10], v12);
      v13 = MFLogGeneral();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [MFStream read:maxLength:];
      }

      self->_bytesRead += v10;
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

            v26 = [(NSError *)error ef_publicDescription];
            *buf = 134218754;
            if (v26)
            {
              v27 = v26;
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
      v10 = -1;
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
    [v16 setArgument:&v31 atIndex:2];
    [v16 setArgument:&v30 atIndex:3];
    [v16 performSelector:sel_invoke onThread:v8 withObject:0 waitUntilDone:1];
    [v16 getReturnValue:buf];
    objc_autoreleasePoolPop(v14);
    v10 = *buf;
  }

LABEL_23:
  v22 = *MEMORY[0x277D85DE8];
  return v10;
}

- (int64_t)write:(const char *)a3 maxLength:(unint64_t)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v27 = a4;
  v28 = a3;
  v8 = [objc_opt_class() networkThread];
  if ([v8 isEqual:{objc_msgSend(MEMORY[0x277CCACC8], "currentThread")}])
  {
    wStream = self->_wStream;
    if (wStream)
    {
      if (!self->_streamCanWrite)
      {
        [MFStream write:maxLength:];
      }

      self->_streamCanWrite = 0;
      v10 = [(NSOutputStream *)wStream write:a3 maxLength:a4];
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

            v24 = [(NSError *)error ef_publicDescription];
            *buf = 134218754;
            if (v24)
            {
              v25 = v24;
            }

            else
            {
              v25 = &stru_2869ED3E0;
            }

            *&buf[4] = self;
            v30 = 2112;
            v31 = v13;
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
        v31 = a4;
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
    [v18 setArgument:&v28 atIndex:2];
    [v18 setArgument:&v27 atIndex:3];
    [v18 performSelector:sel_invoke onThread:v8 withObject:0 waitUntilDone:1];
    [v18 getReturnValue:buf];
    objc_autoreleasePoolPop(v16);
    v10 = *buf;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)close
{
  v4 = [objc_opt_class() networkThread];
  if ([v4 isEqual:{objc_msgSend(MEMORY[0x277CCACC8], "currentThread")}])
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

    [v8 performSelector:sel_invoke onThread:v4 withObject:0 waitUntilDone:1];
  }
}

- (void)_readBytesFromStream
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_258BDA000, v0, v1, "#Streams (%p) buffered %ld bytes", v3, v4);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)stream:(id)a3 handleEvent:(unint64_t)a4
{
  v33 = *MEMORY[0x277D85DE8];
  p_rStream = &self->_rStream;
  rStream = self->_rStream;
  if (rStream != a3 && self->_wStream != a3)
  {
    goto LABEL_31;
  }

  v8 = __ROR8__(a4 - 2, 1);
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      if (!self->_error)
      {
        self->_error = [a3 streamError];
      }
    }

    else if (v8 != 7)
    {
      goto LABEL_31;
    }

    if (rStream == a3)
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

    -[MFStream _closeAndReleaseStream:logMessage:](self, "_closeAndReleaseStream:logMessage:", a3, [MEMORY[0x277CCACA8] stringWithFormat:@"%@ stream %@%@", v13, v14, error]);
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

      v21 = [(NSError *)v19 ef_publicDescription];
      *buf = 134218754;
      if (v21)
      {
        v22 = v21;
      }

      else
      {
        v22 = &stru_2869ED3E0;
      }

      v26 = self;
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

  if (rStream != a3)
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