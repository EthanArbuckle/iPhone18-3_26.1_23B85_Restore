@interface GTSharedMemoryTransport_replayer
- (BOOL)_clientConnect:(id *)connect;
- (BOOL)_createAndRunSources:(id *)sources;
- (BOOL)_initializeSMRegion:(sm_region_header *)region size:(unint64_t)size name:(const char *)name error:(id *)error;
- (BOOL)_openSMRegion:(sm_region_header *)region size:(unint64_t)size name:(const char *)name error:(id *)error;
- (BOOL)_serverConnect:(id *)connect;
- (BOOL)send:(id)send inReplyTo:(id)to error:(id *)error replyQueue:(id)queue timeout:(unint64_t)timeout handler:(id)handler;
- (GTSharedMemoryTransport_replayer)init;
- (GTSharedMemoryTransport_replayer)initWithMode:(int)mode initialMessageSerial:(unsigned int)serial;
- (id)connect;
- (int64_t)_read:(void *)_read size:(unint64_t)size;
- (int64_t)_write:(const void *)_write size:(unint64_t)size;
- (unint64_t)_computeBytesAvailableToRead;
- (unint64_t)_computeBytesAvailableToWrite;
- (void)_accumulateMessageBytes;
- (void)_copyFromSM:(void *)m size:(unint64_t)size;
- (void)_copyToSM:(const void *)m size:(int64_t)size;
- (void)_dequeueIncomingMessages;
- (void)_dequeuePacket;
- (void)_invalidate;
- (void)_mapSharedMemoryFile:(int)file size:(unint64_t)size error:(id *)error;
- (void)_relayPacket;
- (void)_tearDownSharedMemory;
- (void)_updateReaderOffset:(unint64_t)offset;
- (void)_waitEAGAIN;
- (void)dealloc;
- (void)setRelayTransport:(id)transport;
- (void)setUrl:(id)url;
@end

@implementation GTSharedMemoryTransport_replayer

- (void)_dequeueIncomingMessages
{
  v3 = 0;
  v4 = 3;
  v5 = 3;
  while (1)
  {
    while (1)
    {
      v6 = atomic_load(self->_incomingShmem + 2);
      v7 = atomic_load(self->_incomingShmem + 1);
      if (v6 == v7)
      {
        break;
      }

      if (atomic_load(&self->super.super._invalid))
      {
        v9 = v3 > 9;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        goto LABEL_21;
      }

      [(GTSharedMemoryTransport_replayer *)self _dequeuePacket];
      if (!self->_currentPacketBytesLeft)
      {
        return;
      }

      if (self->_consumeBytesSEL)
      {
        consumeBytesSEL = self->_consumeBytesSEL;
      }

      else
      {
        consumeBytesSEL = 0;
      }

      (self->_consumeBytesIMP)(self, consumeBytesSEL);
      if (self->_currentPacketBytesLeft)
      {
        goto LABEL_24;
      }

      atomic_fetch_add(self->_incomingShmem + 2, 1u);
      ++v3;
    }

    v11 = atomic_load(self->_incomingShmem);
    v12 = v5-- != 0;
    v13 = v12;
    if (!v11 || !v13)
    {
      break;
    }

    usleep(0xAu);
  }

LABEL_21:
  v15 = atomic_load(self->_incomingShmem + 4);
  if (v15 != -1)
  {
    return;
  }

  v4 = 31;
LABEL_24:
  v16 = objc_autoreleasePoolPush();
  [(GTBaseStreamTransport_replayer *)self _scheduleInvalidation:[GTError_replayer errorWithDomain:@"DYErrorDomain" code:v4 userInfo:0]];

  objc_autoreleasePoolPop(v16);
}

- (void)_dequeuePacket
{
  _computeBytesAvailableToRead = [(GTSharedMemoryTransport_replayer *)self _computeBytesAvailableToRead];
  if (_computeBytesAvailableToRead <= 3)
  {
    v5 = objc_autoreleasePoolPush();
    [(GTBaseStreamTransport_replayer *)self _scheduleInvalidation:[GTError_replayer errorWithDomain:@"DYErrorDomain" code:259 userInfo:0]];

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v4 = _computeBytesAvailableToRead;
    v7 = 0;
    [(GTSharedMemoryTransport_replayer *)self _copyFromSM:&v7 size:4];
    if (v4 < v7)
    {
      v6 = objc_autoreleasePoolPush();
      [(GTBaseStreamTransport_replayer *)self _scheduleInvalidation:[GTError_replayer errorWithDomain:@"DYErrorDomain" code:259 userInfo:0]];
      objc_autoreleasePoolPop(v6);
    }

    else
    {
      self->_currentPacketBytesLeft = v7 - 4;
    }
  }
}

- (void)_relayPacket
{
  incomingBuffer = self->_incomingBuffer;
  v4 = atomic_load(self->_incomingShmem + 5);
  [(GTBaseStreamTransport_replayer *)self->_relayTransport _relayBuffer:&incomingBuffer[v4] size:self->_currentPacketBytesLeft];
  v5 = atomic_load(self->_incomingShmem + 5);
  [(GTSharedMemoryTransport_replayer *)self _updateReaderOffset:self->_currentPacketBytesLeft + v5];
  self->_currentPacketBytesLeft = 0;
}

- (void)_accumulateMessageBytes
{
    ;
  }
}

- (int64_t)_read:(void *)_read size:(unint64_t)size
{
  if (!size)
  {
    return 0;
  }

  currentPacketBytesLeft = self->_currentPacketBytesLeft;
  if (currentPacketBytesLeft)
  {
    if (currentPacketBytesLeft >= size)
    {
      sizeCopy = size;
    }

    else
    {
      sizeCopy = self->_currentPacketBytesLeft;
    }

    [(GTSharedMemoryTransport_replayer *)self _copyFromSM:_read size:sizeCopy];
    self->_currentPacketBytesLeft -= sizeCopy;
  }

  else
  {
    *__error() = 35;
    return -1;
  }

  return sizeCopy;
}

- (void)_copyFromSM:(void *)m size:(unint64_t)size
{
  v6 = atomic_load(self->_incomingShmem + 5);
  memcpy(m, self->_incomingBuffer + v6, size);

  [(GTSharedMemoryTransport_replayer *)self _updateReaderOffset:v6 + size];
}

- (void)_updateReaderOffset:(unint64_t)offset
{
  incomingShmem = self->_incomingShmem;
  v4 = incomingShmem[7];
  if (v4 > offset)
  {
    LODWORD(v4) = 0;
  }

  atomic_store(offset - v4, incomingShmem + 5);
}

- (int64_t)_write:(const void *)_write size:(unint64_t)size
{
  sizeCopy = size;
  if (size)
  {
    v7 = atomic_load(&self->super.super._invalid);
    atomic_store(v7, self->_outgoingShmem);
    _computeBytesAvailableToWrite = [(GTSharedMemoryTransport_replayer *)self _computeBytesAvailableToWrite];
    if (_computeBytesAvailableToWrite > 4)
    {
      if (_computeBytesAvailableToWrite - 4 < sizeCopy)
      {
        sizeCopy = _computeBytesAvailableToWrite - 4;
      }

      v10 = sizeCopy + 4;
      [(GTSharedMemoryTransport_replayer *)self _copyToSM:&v10 size:4];
      [(GTSharedMemoryTransport_replayer *)self _copyToSM:_write size:sizeCopy];
      atomic_fetch_add(self->_outgoingShmem + 1, 1u);
    }

    else
    {
      *__error() = 35;
      return -1;
    }
  }

  return sizeCopy;
}

- (void)_waitEAGAIN
{
  v3 = 0;
  do
  {
    usleep(0xC8u);
    if ([(GTSharedMemoryTransport_replayer *)self _computeBytesAvailableToRead]> 4)
    {
      break;
    }
  }

  while (v3++ < 4);
}

- (void)_copyToSM:(const void *)m size:(int64_t)size
{
  v6 = atomic_load(self->_outgoingShmem + 4);
  memcpy(self->_outgoingBuffer + v6, m, size);
  outgoingShmem = self->_outgoingShmem;
  v8 = outgoingShmem[7];
  if (v6 + size < v8)
  {
    LODWORD(v8) = 0;
  }

  atomic_store(v6 + size - v8, outgoingShmem + 4);
}

- (unint64_t)_computeBytesAvailableToRead
{
  v2 = atomic_load(self->_incomingShmem + 4);
  v3 = atomic_load(self->_incomingShmem + 5);
  v4 = atomic_load(self->_incomingShmem + 5);
  if (v3 >= v2)
  {
    incomingShmem = self->_incomingShmem;
    if (v2 == v4)
    {
      v7 = atomic_load(incomingShmem + 2);
      v8 = atomic_load(self->_incomingShmem + 1);
      if (v7 == v8)
      {
        return 0;
      }

      else
      {
        return *(self->_incomingShmem + 7);
      }
    }

    else
    {
      v9 = incomingShmem[7];
      v10 = atomic_load(incomingShmem + 5);
      return v9 + v2 - v10;
    }
  }

  else
  {
    return v2 - v4;
  }
}

- (unint64_t)_computeBytesAvailableToWrite
{
  v2 = atomic_load(self->_outgoingShmem + 5);
  v3 = atomic_load(self->_outgoingShmem + 4);
  outgoingShmem = self->_outgoingShmem;
  if (v2 >= v3)
  {
    v8 = atomic_load(outgoingShmem + 4);
    v9 = self->_outgoingShmem;
    if (v2 == v8)
    {
      v10 = atomic_load(v9 + 2);
      v11 = atomic_load(self->_outgoingShmem + 1);
      if (v10 == v11)
      {
        return *(self->_outgoingShmem + 7);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v12 = atomic_load(v9 + 4);
      return v2 - v12;
    }
  }

  else
  {
    v5 = outgoingShmem[7];
    v6 = atomic_load(outgoingShmem + 4);
    return v5 + v2 - v6;
  }
}

- (void)_invalidate
{
  atomic_store(0xFFFFFFFF, self->_outgoingShmem + 4);
  [(GTSharedMemoryTransport_replayer *)self _tearDownSharedMemory];
  v3.receiver = self;
  v3.super_class = GTSharedMemoryTransport_replayer;
  [(GTBaseStreamTransport_replayer *)&v3 _invalidate];
}

- (id)connect
{
  v3 = +[GTFuture_replayer future];
  queue = self->super.super._queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__GTSharedMemoryTransport_connect__block_invoke;
  v6[3] = &unk_279657D20;
  v6[4] = self;
  v6[5] = v3;
  dispatch_async(queue, v6);
  return v3;
}

- (BOOL)_clientConnect:(id *)connect
{
  [-[GTSharedMemoryTransport_replayer _getSharedMemoryNameWithSuffix:](self _getSharedMemoryNameWithSuffix:{@"c", "getCString:maxLength:encoding:", self->_sendName, 64, 1}];
  [-[GTSharedMemoryTransport_replayer _getSharedMemoryNameWithSuffix:](self _getSharedMemoryNameWithSuffix:{@"s", "getCString:maxLength:encoding:", self->_receiveName, 64, 1}];
  if (![(GTSharedMemoryTransport_replayer *)self _openSMRegion:&self->_incomingShmem size:self->_sm_region_size_small name:self->_receiveName error:connect]|| ![(GTSharedMemoryTransport_replayer *)self _openSMRegion:&self->_outgoingShmem size:self->_sm_region_size_large name:self->_sendName error:connect])
  {
    return 0;
  }

  [(GTSharedMemoryTransport_replayer *)self _setupIOBuffers];
  result = [(GTSharedMemoryTransport_replayer *)self _createAndRunSources:connect];
  self->_masterSMRegion = self->_outgoingShmem;
  return result;
}

- (BOOL)_serverConnect:(id *)connect
{
  [-[GTSharedMemoryTransport_replayer _getSharedMemoryNameWithSuffix:](self _getSharedMemoryNameWithSuffix:{@"s", "getCString:maxLength:encoding:", self->_sendName, 64, 1}];
  [-[GTSharedMemoryTransport_replayer _getSharedMemoryNameWithSuffix:](self _getSharedMemoryNameWithSuffix:{@"c", "getCString:maxLength:encoding:", self->_receiveName, 64, 1}];
  if (![(GTSharedMemoryTransport_replayer *)self _initializeSMRegion:&self->_outgoingShmem size:self->_sm_region_size_small name:self->_sendName error:connect]|| ![(GTSharedMemoryTransport_replayer *)self _initializeSMRegion:&self->_incomingShmem size:self->_sm_region_size_large name:self->_receiveName error:connect])
  {
    return 0;
  }

  [(GTSharedMemoryTransport_replayer *)self _setupIOBuffers];
  result = [(GTSharedMemoryTransport_replayer *)self _createAndRunSources:connect];
  self->_masterSMRegion = self->_incomingShmem;
  return result;
}

- (BOOL)_createAndRunSources:(id *)sources
{
  v18 = *MEMORY[0x277D85DE8];
  pthread_attr_init(&v17);
  pthread_attr_setdetachstate(&v17, 2);
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__1893;
  v15 = __Block_byref_object_dispose__1894;
  v16 = 0;
  v4 = [GTContinuation_replayer alloc];
  queue = self->super.super._queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__GTSharedMemoryTransport__createAndRunSources___block_invoke;
  v10[3] = &unk_279657ED8;
  v10[4] = self;
  v10[5] = &v11;
  v6 = [(GTContinuation_replayer *)v4 initWithQueue:queue block:v10];
  v12[5] = v6;
  v9 = 0;
  pthread_create(&v9, &v17, smt_poll_thread_entry, v6);
  pthread_attr_destroy(&v17);
  _Block_object_dispose(&v11, 8);
  v7 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)_openSMRegion:(sm_region_header *)region size:(unint64_t)size name:(const char *)name error:(id *)error
{
  for (i = 0; ; ++i)
  {
    v12 = shm_open(name, 2, 6);
    if (v12 != -1)
    {
      break;
    }

    if (*__error() == 4)
    {
      if (i >= 3)
      {
        goto LABEL_17;
      }
    }

    else if (*__error() != 2 || i >= 3)
    {
      goto LABEL_17;
    }

    sleep(1u);
  }

  v14 = v12;
  if (((size + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0]) <= 0x8000)
  {
    v15 = 0x8000;
  }

  else
  {
    v15 = (size + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
  }

  v16 = [(GTSharedMemoryTransport_replayer *)self _mapSharedMemoryFile:v12 size:v15 error:error];
  if (v16)
  {
    v17 = v16;
    close(v14);
    if (shm_unlink(name) != -1)
    {
      *region = v17;
      LOBYTE(v16) = 1;
      return v16;
    }

LABEL_17:
    if (error)
    {
      v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
      LOBYTE(v16) = 0;
      *error = v18;
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  return v16;
}

- (BOOL)_initializeSMRegion:(sm_region_header *)region size:(unint64_t)size name:(const char *)name error:(id *)error
{
  if (((size + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0]) <= 0x8000)
  {
    v9 = 0x8000;
  }

  else
  {
    v9 = (size + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
  }

  v10 = shm_open(name, 2562, 390);
  if (v10 == -1 || (v11 = v10, ftruncate(v10, v9) == -1))
  {
    if (error)
    {
      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
      LOBYTE(v12) = 0;
      *error = v15;
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    v12 = [(GTSharedMemoryTransport_replayer *)self _mapSharedMemoryFile:v11 size:v9 error:error];
    if (v12)
    {
      v13 = v12;
      close(v11);
      memset_pattern16(v13, &[GTSharedMemoryTransport _initializeSMRegion:size:name:error:]::pattern, v9);
      atomic_store(0, v13);
      atomic_store(0, v13 + 1);
      atomic_store(0, v13 + 2);
      v14 = atomic_load(&self->super.super._messageCounter.__a_.__a_value);
      atomic_store(v14, v13 + 3);
      atomic_store(0, v13 + 4);
      atomic_store(0, v13 + 5);
      *(v13 + 6) = v9;
      *(v13 + 7) = v9 - 0x4000;
      *region = v13;
      LOBYTE(v12) = 1;
    }
  }

  return v12;
}

- (void)_tearDownSharedMemory
{
  incomingShmem = self->_incomingShmem;
  if (incomingShmem)
  {
    munmap(incomingShmem, [(GTSharedMemoryTransport_replayer *)self _calculateVMRegionMapSize:incomingShmem[6]]);
    self->_incomingShmem = 0;
    self->_incomingBuffer = 0;
  }

  outgoingShmem = self->_outgoingShmem;
  if (outgoingShmem)
  {
    munmap(outgoingShmem, [(GTSharedMemoryTransport_replayer *)self _calculateVMRegionMapSize:outgoingShmem[6]]);
    self->_outgoingShmem = 0;
    self->_outgoingBuffer = 0;
  }

  self->_masterSMRegion = 0;
  if (self->_sendName[0])
  {
    shm_unlink(self->_sendName);
  }

  if (self->_receiveName[0])
  {

    shm_unlink(self->_receiveName);
  }
}

- (void)_mapSharedMemoryFile:(int)file size:(unint64_t)size error:(id *)error
{
  v8 = [(GTSharedMemoryTransport_replayer *)self _calculateVMRegionMapSize:size];
  v9 = mmap(0, v8, 0, 4098, -1, 0);
  if (v9 == -1)
  {
    if (!error)
    {
      return 0;
    }

    v10 = 0;
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
  }

  else
  {
    v10 = v9;
    if (mmap(v9, size, 3, 17, file, 0) != v9 || mmap(&v10[size], size - 0x4000, 3, 17, file, 0x4000) != &v10[size])
    {
      if (error)
      {
        *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
      }

      munmap(v10, v8);
      return 0;
    }
  }

  return v10;
}

- (BOOL)send:(id)send inReplyTo:(id)to error:(id *)error replyQueue:(id)queue timeout:(unint64_t)timeout handler:(id)handler
{
  if (self->_deferred)
  {
    v13 = objc_alloc_init(GTBufferedSendOperation_replayer);
    [(GTBufferedSendOperation_replayer *)v13 setMessage:send];
    [(GTBufferedSendOperation_replayer *)v13 setReplyTo:to];
    [(GTBufferedSendOperation_replayer *)v13 setQueue:queue];
    [(GTBufferedSendOperation_replayer *)v13 setReplyBlock:handler];
    [(NSMutableArray *)self->_bufferedMessages addObject:v13];
    return 1;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = GTSharedMemoryTransport_replayer;
    return [(GTTransport_replayer *)&v15 send:send inReplyTo:to error:error replyQueue:queue timeout:timeout handler:handler];
  }
}

- (void)setRelayTransport:(id)transport
{
  queue = self->super.super._queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__GTSharedMemoryTransport_setRelayTransport___block_invoke;
  v4[3] = &unk_279657D20;
  v4[4] = self;
  v4[5] = transport;
  dispatch_sync(queue, v4);
}

- (void)setUrl:(id)url
{
  v18 = *MEMORY[0x277D85DE8];
  if (!url)
  {
    __assert_rtn("[GTSharedMemoryTransport setUrl:]", ", 0, "newUrl != nil"");
  }

  if ([(GTSharedMemoryTransport_replayer *)self connected])
  {
    if (s_logUsingOsLog == 1)
    {
      v7 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v8 = "fail: tried to set URL on connected transport";
        v9 = v7;
        v10 = 2;
        goto LABEL_18;
      }
    }

    else
    {
      v12 = *MEMORY[0x277D85DF8];
      [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"fail: tried to set URL on connected transport", "UTF8String"];
      fprintf(v12, "%s\n");
    }

    goto LABEL_23;
  }

  if (([objc_msgSend(url "scheme")] & 1) == 0 && (objc_msgSend(objc_msgSend(url, "scheme"), "isEqualToString:", @"dysmtdeferred") & 1) == 0)
  {
    if (s_logUsingOsLog == 1)
    {
      v11 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v17 = [objc_msgSend(url "absoluteString")];
        v8 = "fail: url scheme has to be dysmt: %s";
        goto LABEL_17;
      }

LABEL_23:
      abort();
    }

    v13 = *MEMORY[0x277D85DF8];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"fail: url scheme has to be dysmt: %s", objc_msgSend(objc_msgSend(url, "absoluteString"), "UTF8String")];
LABEL_22:
    [v14 UTF8String];
    fprintf(v13, "%s\n");
    goto LABEL_23;
  }

  if (![objc_msgSend(url "path")])
  {
    if (s_logUsingOsLog == 1)
    {
      v11 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v17 = [objc_msgSend(url "absoluteString")];
        v8 = "fail: url path cannot be nil or empty: %s";
LABEL_17:
        v9 = v11;
        v10 = 12;
LABEL_18:
        _os_log_fault_impl(&dword_24D764000, v9, OS_LOG_TYPE_FAULT, v8, buf, v10);
        abort();
      }

      goto LABEL_23;
    }

    v13 = *MEMORY[0x277D85DF8];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"fail: url path cannot be nil or empty: %s", objc_msgSend(objc_msgSend(url, "absoluteString"), "UTF8String")];
    goto LABEL_22;
  }

  queue = self->super.super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__GTSharedMemoryTransport_setUrl___block_invoke;
  block[3] = &unk_279657D20;
  block[4] = url;
  block[5] = self;
  dispatch_sync(queue, block);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GTSharedMemoryTransport_replayer;
  [(GTBaseStreamTransport_replayer *)&v3 dealloc];
}

- (GTSharedMemoryTransport_replayer)initWithMode:(int)mode initialMessageSerial:(unsigned int)serial
{
  v17.receiver = self;
  v17.super_class = GTSharedMemoryTransport_replayer;
  v6 = [(GTBaseStreamTransport_replayer *)&v17 init];
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  v6->_mode = mode;
  if ((mode - 3) <= 0xFFFFFFFD)
  {
    v16 = "_mode == kDYSharedMemoryTransportModeClient || _mode == kDYSharedMemoryTransportModeServer";
    goto LABEL_12;
  }

  atomic_store(serial, &v6->super.super._messageCounter.__a_.__a_value);
  v8 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
  v9 = objc_alloc(MEMORY[0x277CBEBC0]);
  v10 = MEMORY[0x277CCACA8];
  v11 = CFHash(v8);
  v7->super.super._url = [v9 initWithString:{objc_msgSend(v10, "stringWithFormat:", @"dysmt://localhost/%lx%d", v11, getpid())}];
  CFRelease(v8);
  p_consumeBytesSEL = &v7->_consumeBytesSEL;
  if (sel__accumulateMessageBytes)
  {
    *p_consumeBytesSEL = sel__accumulateMessageBytes;
    v13 = sel__accumulateMessageBytes;
  }

  else
  {
    v13 = 0;
    *p_consumeBytesSEL = 0;
  }

  v14 = [(GTSharedMemoryTransport_replayer *)v7 methodForSelector:v13];
  v7->_consumeBytesIMP = v14;
  if (!v14)
  {
    v16 = "_consumeBytesIMP";
LABEL_12:
    __assert_rtn("[GTSharedMemoryTransport initWithMode:initialMessageSerial:]", "", 0, v16);
  }

  v7->_bufferedMessages = objc_opt_new();
  v7->_sm_region_size_large = 104857600;
  v7->_sm_region_size_small = 0x1000000;
  if (([objc_msgSend(MEMORY[0x277CCAC38] "processInfo")] & 1) == 0)
  {
    v7->_sm_region_size_large = 0x40000;
    v7->_sm_region_size_small = 0x4000;
  }

  return v7;
}

- (GTSharedMemoryTransport_replayer)init
{
  [(GTSharedMemoryTransport_replayer *)self doesNotRecognizeSelector:a2];

  return 0;
}

@end