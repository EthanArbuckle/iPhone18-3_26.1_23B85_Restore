@interface DYSharedMemoryTransport
- (BOOL)_clientConnect:(id *)a3;
- (BOOL)_createAndRunSources:(id *)a3;
- (BOOL)_initializeSMRegion:(sm_region_header *)a3 size:(unint64_t)a4 name:(const char *)a5 error:(id *)a6;
- (BOOL)_openSMRegion:(sm_region_header *)a3 size:(unint64_t)a4 name:(const char *)a5 error:(id *)a6;
- (BOOL)_serverConnect:(id *)a3;
- (BOOL)send:(id)a3 inReplyTo:(id)a4 error:(id *)a5 replyQueue:(id)a6 timeout:(unint64_t)a7 handler:(id)a8;
- (DYSharedMemoryTransport)init;
- (DYSharedMemoryTransport)initWithMode:(int)a3 initialMessageSerial:(unsigned int)a4 uniqueIdentifier:(id)a5;
- (id)connect;
- (int64_t)_read:(void *)a3 size:(unint64_t)a4;
- (int64_t)_write:(const void *)a3 size:(unint64_t)a4;
- (unint64_t)_computeBytesAvailableToRead;
- (unint64_t)_computeBytesAvailableToWrite;
- (void)_accumulateMessageBytes;
- (void)_copyFromSM:(void *)a3 size:(unint64_t)a4;
- (void)_copyToSM:(const void *)a3 size:(int64_t)a4;
- (void)_dequeueIncomingMessages;
- (void)_dequeuePacket;
- (void)_invalidate;
- (void)_mapSharedMemoryFile:(int)a3 size:(unint64_t)a4 error:(id *)a5;
- (void)_relayPacket;
- (void)_tearDownSharedMemory;
- (void)_updateReaderOffset:(unint64_t)a3;
- (void)_waitEAGAIN;
- (void)dealloc;
- (void)setRelayTransport:(id)a3;
- (void)setUrl:(id)a3;
@end

@implementation DYSharedMemoryTransport

- (DYSharedMemoryTransport)init
{
  [(DYSharedMemoryTransport *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (DYSharedMemoryTransport)initWithMode:(int)a3 initialMessageSerial:(unsigned int)a4 uniqueIdentifier:(id)a5
{
  v18.receiver = self;
  v18.super_class = DYSharedMemoryTransport;
  v8 = [(DYBaseStreamTransport *)&v18 init];
  v9 = v8;
  if (v8)
  {
    v8->_mode = a3;
    if ((a3 - 3) <= 0xFFFFFFFD)
    {
      [DYSharedMemoryTransport initWithMode:initialMessageSerial:uniqueIdentifier:];
    }

    atomic_store(a4, &v8->super.super._messageCounter);
    if (a5)
    {
      v10 = objc_alloc(MEMORY[0x277CBEBC0]);
      v9->super.super._url = [v10 initWithString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"dysmt://localhost/%lx", objc_msgSend(a5, "unsignedLongValue"))}];
    }

    else
    {
      std::random_device::random_device[abi:ne200100](&v17);
      v11 = MEMORY[0x2530308D0](&v17);
      v12 = objc_alloc(MEMORY[0x277CBEBC0]);
      v9->super.super._url = [v12 initWithString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"dysmt://localhost/%lx%d", v11, getpid())}];
      std::random_device::~random_device(&v17);
    }

    p_consumeBytesSEL = &v9->_consumeBytesSEL;
    if (sel__accumulateMessageBytes)
    {
      *p_consumeBytesSEL = sel__accumulateMessageBytes;
      v14 = sel__accumulateMessageBytes;
    }

    else
    {
      v14 = 0;
      *p_consumeBytesSEL = 0;
    }

    v15 = [(DYSharedMemoryTransport *)v9 methodForSelector:v14];
    v9->_consumeBytesIMP = v15;
    if (!v15)
    {
      [DYSharedMemoryTransport initWithMode:initialMessageSerial:uniqueIdentifier:];
    }

    v9->_bufferedMessages = objc_opt_new();
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DYSharedMemoryTransport;
  [(DYBaseStreamTransport *)&v3 dealloc];
}

- (void)setUrl:(id)a3
{
  if (!a3)
  {
    [DYSharedMemoryTransport setUrl:];
  }

  if ([(DYSharedMemoryTransport *)self connected])
  {
    dy_abort("tried to set URL on connected transport");
  }

  if (([objc_msgSend(a3 "scheme")] & 1) == 0 && (objc_msgSend(objc_msgSend(a3, "scheme"), "isEqualToString:", @"dysmtdeferred") & 1) == 0)
  {
    dy_abort("url scheme has to be dysmt: %s", [objc_msgSend(a3 "absoluteString")]);
  }

  if (![objc_msgSend(a3 "path")])
  {
    dy_abort("url path cannot be nil or empty: %s", [objc_msgSend(a3 "absoluteString")]);
  }

  queue = self->super.super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__DYSharedMemoryTransport_setUrl___block_invoke;
  block[3] = &unk_27930C170;
  block[4] = a3;
  block[5] = self;
  dispatch_sync(queue, block);
}

uint64_t __34__DYSharedMemoryTransport_setUrl___block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if (*(result + 32) != v1)
  {
    v2 = result;

    *(*(v2 + 40) + 8) = *(v2 + 32);
    result = [objc_msgSend(*(*(v2 + 40) + 8) "scheme")];
    v3 = *(v2 + 40);
    if (result)
    {
      v4 = *(v3 + 300) != 2;
    }

    else
    {
      v4 = 0;
    }

    *(v3 + 304) = v4;
  }

  return result;
}

- (void)setRelayTransport:(id)a3
{
  queue = self->super.super._queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__DYSharedMemoryTransport_setRelayTransport___block_invoke;
  v4[3] = &unk_27930C170;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(queue, v4);
}

uint64_t __45__DYSharedMemoryTransport_setRelayTransport___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 272);
  if (v1 != *(result + 40))
  {
    v2 = result;

    *(*(v2 + 32) + 272) = *(v2 + 40);
    v3 = *(v2 + 32);
    v4 = *(v3 + 272);
    v5 = (v3 + 288);
    if (v4)
    {
      v6 = sel__relayPacket;
    }

    else
    {
      v6 = sel__accumulateMessageBytes;
    }

    *v5 = v6;
    v7 = *(v2 + 32);
    if (v7[36])
    {
      v8 = v7[36];
    }

    else
    {
      v8 = 0;
    }

    result = [v7 methodForSelector:v8];
    *(*(v2 + 32) + 280) = result;
    if (!*(*(v2 + 32) + 280))
    {
      __45__DYSharedMemoryTransport_setRelayTransport___block_invoke_cold_1();
    }
  }

  return result;
}

- (BOOL)send:(id)a3 inReplyTo:(id)a4 error:(id *)a5 replyQueue:(id)a6 timeout:(unint64_t)a7 handler:(id)a8
{
  if (self->_deferred)
  {
    v13 = objc_alloc_init(BufferedSendOperation);
    [(BufferedSendOperation *)v13 setMessage:a3];
    [(BufferedSendOperation *)v13 setReplyTo:a4];
    [(BufferedSendOperation *)v13 setQueue:a6];
    [(BufferedSendOperation *)v13 setReplyBlock:a8];
    [(NSMutableArray *)self->_bufferedMessages addObject:v13];
    return 1;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = DYSharedMemoryTransport;
    return [(DYTransport *)&v15 send:a3 inReplyTo:a4 error:a5 replyQueue:a6 timeout:a7 handler:a8];
  }
}

- (void)_mapSharedMemoryFile:(int)a3 size:(unint64_t)a4 error:(id *)a5
{
  v8 = [(DYSharedMemoryTransport *)self _calculateVMRegionMapSize:a4];
  v9 = mmap(0, v8, 0, 4098, -1, 0);
  if (v9 == -1)
  {
    if (!a5)
    {
      return 0;
    }

    v10 = 0;
    *a5 = [DYError errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
  }

  else
  {
    v10 = v9;
    if (mmap(v9, a4, 3, 17, a3, 0) != v9 || mmap(&v10[a4], a4 - 0x4000, 3, 17, a3, 0x4000) != &v10[a4])
    {
      if (a5)
      {
        *a5 = [DYError errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
      }

      munmap(v10, v8);
      return 0;
    }
  }

  return v10;
}

- (void)_tearDownSharedMemory
{
  incomingShmem = self->_incomingShmem;
  if (incomingShmem)
  {
    munmap(incomingShmem, [(DYSharedMemoryTransport *)self _calculateVMRegionMapSize:incomingShmem->var6]);
    self->_incomingShmem = 0;
    self->_incomingBuffer = 0;
  }

  outgoingShmem = self->_outgoingShmem;
  if (outgoingShmem)
  {
    munmap(outgoingShmem, [(DYSharedMemoryTransport *)self _calculateVMRegionMapSize:outgoingShmem->var6]);
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

- (BOOL)_initializeSMRegion:(sm_region_header *)a3 size:(unint64_t)a4 name:(const char *)a5 error:(id *)a6
{
  if (((a4 + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0]) <= 0x8000)
  {
    v9 = 0x8000;
  }

  else
  {
    v9 = (a4 + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
  }

  v10 = shm_open(a5, 2562, 390);
  if (v10 == -1 || (v11 = v10, ftruncate(v10, v9) == -1))
  {
    if (a6)
    {
      v15 = [DYError errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
      LOBYTE(v12) = 0;
      *a6 = v15;
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    v12 = [(DYSharedMemoryTransport *)self _mapSharedMemoryFile:v11 size:v9 error:a6];
    if (v12)
    {
      v13 = v12;
      close(v11);
      memset_pattern16(v13, &[DYSharedMemoryTransport _initializeSMRegion:size:name:error:]::pattern, v9);
      atomic_store(0, &v13->var0);
      atomic_store(0, &v13->var1);
      atomic_store(0, &v13->var2);
      v14 = atomic_load(&self->super.super._messageCounter);
      atomic_store(v14, &v13->var3);
      atomic_store(0, &v13->var4);
      atomic_store(0, &v13->var5);
      v13->var6 = v9;
      v13->var7 = v9 - 0x4000;
      *a3 = v13;
      LOBYTE(v12) = 1;
    }
  }

  return v12;
}

- (BOOL)_openSMRegion:(sm_region_header *)a3 size:(unint64_t)a4 name:(const char *)a5 error:(id *)a6
{
  v11 = shm_open(a5, 2, 6);
  if (v11 == -1)
  {
    v12 = 0;
    do
    {
      if (*__error() == 4)
      {
        if (v12 >= 3)
        {
          goto LABEL_17;
        }
      }

      else if (*__error() != 2 || v12 >= 3)
      {
        goto LABEL_17;
      }

      ++v12;
      sleep(1u);
      v11 = shm_open(a5, 2, 6);
    }

    while (v11 == -1);
  }

  v14 = v11;
  if (((a4 + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0]) <= 0x8000)
  {
    v15 = 0x8000;
  }

  else
  {
    v15 = (a4 + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
  }

  v16 = [(DYSharedMemoryTransport *)self _mapSharedMemoryFile:v11 size:v15 error:a6];
  if (v16)
  {
    v17 = v16;
    close(v14);
    if (shm_unlink(a5) == -1)
    {
LABEL_17:
      if (a6)
      {
        v18 = [DYError errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
        LOBYTE(v16) = 0;
        *a6 = v18;
      }

      else
      {
        LOBYTE(v16) = 0;
      }
    }

    else
    {
      *a3 = v17;
      LOBYTE(v16) = 1;
    }
  }

  return v16;
}

- (BOOL)_createAndRunSources:(id *)a3
{
  v18 = *MEMORY[0x277D85DE8];
  pthread_attr_init(&v17);
  pthread_attr_setdetachstate(&v17, 2);
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v4 = [DYContinuation alloc];
  queue = self->super.super._queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__DYSharedMemoryTransport__createAndRunSources___block_invoke;
  v10[3] = &unk_27930C1C0;
  v10[4] = self;
  v10[5] = &v11;
  v6 = [(DYContinuation *)v4 initWithQueue:queue block:v10];
  v12[5] = v6;
  v9 = 0;
  pthread_create(&v9, &v17, smt_poll_thread_entry, v6);
  pthread_attr_destroy(&v17);
  _Block_object_dispose(&v11, 8);
  v7 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __48__DYSharedMemoryTransport__createAndRunSources___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 52) == 1)
  {
    return __48__DYSharedMemoryTransport__createAndRunSources___block_invoke_cold_1(a1);
  }

  v3 = atomic_load((v2 + 48));
  atomic_store(v3, *(*(a1 + 32) + 232));
  v4 = *(a1 + 32);

  return [v4 _dequeueIncomingMessages];
}

- (BOOL)_serverConnect:(id *)a3
{
  [-[DYSharedMemoryTransport _getSharedMemoryNameWithSuffix:](self _getSharedMemoryNameWithSuffix:{@"s", "getCString:maxLength:encoding:", self->_sendName, 64, 1}];
  [-[DYSharedMemoryTransport _getSharedMemoryNameWithSuffix:](self _getSharedMemoryNameWithSuffix:{@"c", "getCString:maxLength:encoding:", self->_receiveName, 64, 1}];
  if (![(DYSharedMemoryTransport *)self _initializeSMRegion:&self->_outgoingShmem size:0x4000 name:self->_sendName error:a3]|| ![(DYSharedMemoryTransport *)self _initializeSMRegion:&self->_incomingShmem size:0x40000 name:self->_receiveName error:a3])
  {
    return 0;
  }

  [(DYSharedMemoryTransport *)self _setupIOBuffers];
  result = [(DYSharedMemoryTransport *)self _createAndRunSources:a3];
  self->_masterSMRegion = self->_incomingShmem;
  return result;
}

- (BOOL)_clientConnect:(id *)a3
{
  [-[DYSharedMemoryTransport _getSharedMemoryNameWithSuffix:](self _getSharedMemoryNameWithSuffix:{@"c", "getCString:maxLength:encoding:", self->_sendName, 64, 1}];
  [-[DYSharedMemoryTransport _getSharedMemoryNameWithSuffix:](self _getSharedMemoryNameWithSuffix:{@"s", "getCString:maxLength:encoding:", self->_receiveName, 64, 1}];
  if (![(DYSharedMemoryTransport *)self _openSMRegion:&self->_incomingShmem size:0x4000 name:self->_receiveName error:a3]|| ![(DYSharedMemoryTransport *)self _openSMRegion:&self->_outgoingShmem size:0x40000 name:self->_sendName error:a3])
  {
    return 0;
  }

  [(DYSharedMemoryTransport *)self _setupIOBuffers];
  result = [(DYSharedMemoryTransport *)self _createAndRunSources:a3];
  self->_masterSMRegion = self->_outgoingShmem;
  return result;
}

- (id)connect
{
  v3 = +[DYFuture future];
  queue = self->super.super._queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__DYSharedMemoryTransport_connect__block_invoke;
  v6[3] = &unk_27930C170;
  v6[4] = self;
  v6[5] = v3;
  dispatch_async(queue, v6);
  return v3;
}

uint64_t __34__DYSharedMemoryTransport_connect__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[52] != 1)
  {
    v8 = [v2 connected];
    v9 = *(a1 + 32);
    if (v8 && (*(v9 + 304) & 1) == 0)
    {
      v3 = MEMORY[0x277CCABB0];
      v4 = 1;
      goto LABEL_3;
    }

    v14 = 0;
    if (*(v9 + 300) == 2)
    {
      if (([v9 _serverConnect:&v14] & 1) == 0)
      {
        v10 = *(a1 + 32);
LABEL_16:
        [v10 _tearDownSharedMemory];
        v11 = 0;
        goto LABEL_17;
      }
    }

    else if (([v9 _clientConnect:&v14] & 1) == 0)
    {
      v10 = *(a1 + 32);
      if (v10[304] != 1)
      {
        goto LABEL_16;
      }

      v14 = 0;
      global_queue = dispatch_get_global_queue(0, 0);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __34__DYSharedMemoryTransport_connect__block_invoke_2;
      v13[3] = &unk_27930C1E8;
      v13[4] = v10;
      dispatch_async(global_queue, v13);
      v10 = *(a1 + 32);
      if ((v10[304] & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v11 = 1;
LABEL_17:
    [*(a1 + 40) setError:v14];
    return [*(a1 + 40) setResult:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", v11)}];
  }

  [*(a1 + 40) setError:{+[DYError errorWithDomain:code:userInfo:](DYError, "errorWithDomain:code:userInfo:", @"DYErrorDomain", 32, 0)}];
  v3 = MEMORY[0x277CCABB0];
  v4 = 0;
LABEL_3:
  v5 = [v3 numberWithBool:v4];
  v6 = *(a1 + 40);

  return [v6 setResult:v5];
}

unint64_t __34__DYSharedMemoryTransport_connect__block_invoke_2(uint64_t a1)
{
  if (([*(a1 + 32) _clientConnect:0] & 1) == 0)
  {
    do
    {
      usleep(0x3D090u);
    }

    while (![*(a1 + 32) _clientConnect:0]);
  }

  *(*(a1 + 32) + 304) = 0;
  result = [*(*(a1 + 32) + 312) count];
  if (result)
  {
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = [*(*(a1 + 32) + 312) objectAtIndex:v3];
      v6 = *(a1 + 32);
      v7 = [v5 message];
      v8 = [v5 replyTo];
      v9 = [v5 queue];
      v10 = [v5 timeout];
      v11 = [v5 replyBlock];
      v13.receiver = v6;
      v13.super_class = DYSharedMemoryTransport;
      objc_msgSendSuper2(&v13, sel_send_inReplyTo_error_replyQueue_timeout_handler_, v7, v8, 0, v9, v10, v11);
      v3 = v4;
      result = [*(*(a1 + 32) + 312) count];
    }

    while (result > v4++);
  }

  return result;
}

- (void)_invalidate
{
  atomic_store(0xFFFFFFFF, &self->_outgoingShmem->var4);
  [(DYSharedMemoryTransport *)self _tearDownSharedMemory];
  v3.receiver = self;
  v3.super_class = DYSharedMemoryTransport;
  [(DYBaseStreamTransport *)&v3 _invalidate];
}

- (unint64_t)_computeBytesAvailableToWrite
{
  v2 = atomic_load(&self->_outgoingShmem->var5);
  v3 = atomic_load(&self->_outgoingShmem->var4);
  outgoingShmem = self->_outgoingShmem;
  if (v2 >= v3)
  {
    v8 = atomic_load(&outgoingShmem->var4);
    v9 = self->_outgoingShmem;
    if (v2 == v8)
    {
      v10 = atomic_load(&v9->var2);
      v11 = atomic_load(&self->_outgoingShmem->var1);
      if (v10 == v11)
      {
        return self->_outgoingShmem->var7;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v12 = atomic_load(&v9->var4);
      return v2 - v12;
    }
  }

  else
  {
    var7 = outgoingShmem->var7;
    v6 = atomic_load(&outgoingShmem->var4);
    return var7 + v2 - v6;
  }
}

- (unint64_t)_computeBytesAvailableToRead
{
  v2 = atomic_load(&self->_incomingShmem->var4);
  v3 = atomic_load(&self->_incomingShmem->var5);
  v4 = atomic_load(&self->_incomingShmem->var5);
  if (v3 >= v2)
  {
    incomingShmem = self->_incomingShmem;
    if (v2 == v4)
    {
      v7 = atomic_load(&incomingShmem->var2);
      v8 = atomic_load(&self->_incomingShmem->var1);
      if (v7 == v8)
      {
        return 0;
      }

      else
      {
        return self->_incomingShmem->var7;
      }
    }

    else
    {
      var7 = incomingShmem->var7;
      v10 = atomic_load(&incomingShmem->var5);
      return var7 + v2 - v10;
    }
  }

  else
  {
    return v2 - v4;
  }
}

- (void)_copyToSM:(const void *)a3 size:(int64_t)a4
{
  v6 = atomic_load(&self->_outgoingShmem->var4);
  memcpy(self->_outgoingBuffer + v6, a3, a4);
  outgoingShmem = self->_outgoingShmem;
  var7 = outgoingShmem->var7;
  if (v6 + a4 < var7)
  {
    LODWORD(var7) = 0;
  }

  atomic_store(v6 + a4 - var7, &outgoingShmem->var4);
}

- (void)_updateReaderOffset:(unint64_t)a3
{
  incomingShmem = self->_incomingShmem;
  var7 = incomingShmem->var7;
  if (var7 > a3)
  {
    LODWORD(var7) = 0;
  }

  atomic_store(a3 - var7, &incomingShmem->var5);
}

- (void)_copyFromSM:(void *)a3 size:(unint64_t)a4
{
  v6 = atomic_load(&self->_incomingShmem->var5);
  memcpy(a3, self->_incomingBuffer + v6, a4);

  [(DYSharedMemoryTransport *)self _updateReaderOffset:v6 + a4];
}

- (void)_accumulateMessageBytes
{
    ;
  }
}

- (void)_relayPacket
{
  if ([DYSharedMemoryTransport _relayPacket]::once_token != -1)
  {
    [DYSharedMemoryTransport _relayPacket];
  }

  pthread_mutex_lock(&[DYSharedMemoryTransport _relayPacket]::relayPacketMutex);
  incomingBuffer = self->_incomingBuffer;
  v4 = atomic_load(&self->_incomingShmem->var5);
  [(DYBaseStreamTransport *)self->_relayTransport _relayBuffer:&incomingBuffer[v4] size:self->_currentPacketBytesLeft];
  v5 = atomic_load(&self->_incomingShmem->var5);
  [(DYSharedMemoryTransport *)self _updateReaderOffset:self->_currentPacketBytesLeft + v5];
  self->_currentPacketBytesLeft = 0;

  pthread_mutex_unlock(&[DYSharedMemoryTransport _relayPacket]::relayPacketMutex);
}

- (void)_dequeuePacket
{
  v2 = objc_autoreleasePoolPush();
  _DYOLog(a1, 3, @"not enough bytes available for packet header", v3, v4, v5, v6, v7, v8);
  [a1 _scheduleInvalidation:{+[DYError errorWithDomain:code:userInfo:](DYError, "errorWithDomain:code:userInfo:", @"DYErrorDomain", 259, 0)}];

  objc_autoreleasePoolPop(v2);
}

- (void)_dequeueIncomingMessages
{
  v3 = 0;
  v4 = 3;
  while (1)
  {
    v5 = atomic_load(&self->_incomingShmem->var2);
    v6 = atomic_load(&self->_incomingShmem->var1);
    if (v5 != v6)
    {
      break;
    }

LABEL_13:
    v12 = atomic_load(&self->_incomingShmem->var0);
    v14 = v4-- != 0;
    if (v12)
    {
      v15 = !v14;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      goto LABEL_21;
    }

    usleep(0xAu);
  }

  while (1)
  {
    v7 = atomic_load(&self->super.super._invalid);
    if (v7 && v3 > 9)
    {
      break;
    }

    [(DYSharedMemoryTransport *)self _dequeuePacket];
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
      v18 = objc_autoreleasePoolPush();
      _DYOLog(self, 3, @"did not consume all available bytes", v19, v20, v21, v22, v23, v24);
      v17 = 3;
      goto LABEL_24;
    }

    atomic_fetch_add(&self->_incomingShmem->var2, 1u);
    ++v3;
    v10 = atomic_load(&self->_incomingShmem->var2);
    v11 = atomic_load(&self->_incomingShmem->var1);
    if (v10 == v11)
    {
      goto LABEL_13;
    }
  }

LABEL_21:
  v16 = atomic_load(&self->_incomingShmem->var4);
  if (v16 == -1)
  {
    v17 = 31;
    v18 = objc_autoreleasePoolPush();
LABEL_24:
    [(DYBaseStreamTransport *)self _scheduleInvalidation:[DYError errorWithDomain:@"DYErrorDomain" code:v17 userInfo:0]];

    objc_autoreleasePoolPop(v18);
  }
}

- (void)_waitEAGAIN
{
  v3 = 0;
  do
  {
    usleep(0xC8u);
  }

  while ([(DYSharedMemoryTransport *)self _computeBytesAvailableToRead]<= 4 && v3++ < 4);
}

- (int64_t)_write:(const void *)a3 size:(unint64_t)a4
{
  v4 = a4;
  if (a4)
  {
    v7 = atomic_load(&self->super.super._invalid);
    atomic_store(v7, &self->_outgoingShmem->var0);
    v8 = [(DYSharedMemoryTransport *)self _computeBytesAvailableToWrite];
    if (v8 > 4)
    {
      if (v8 - 4 < v4)
      {
        v4 = v8 - 4;
      }

      v10 = v4 + 4;
      [(DYSharedMemoryTransport *)self _copyToSM:&v10 size:4];
      [(DYSharedMemoryTransport *)self _copyToSM:a3 size:v4];
      atomic_fetch_add(&self->_outgoingShmem->var1, 1u);
    }

    else
    {
      *__error() = 35;
      return -1;
    }
  }

  return v4;
}

- (int64_t)_read:(void *)a3 size:(unint64_t)a4
{
  if (!a4)
  {
    return 0;
  }

  currentPacketBytesLeft = self->_currentPacketBytesLeft;
  if (currentPacketBytesLeft)
  {
    if (currentPacketBytesLeft >= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = self->_currentPacketBytesLeft;
    }

    [(DYSharedMemoryTransport *)self _copyFromSM:a3 size:v6];
    self->_currentPacketBytesLeft -= v6;
  }

  else
  {
    *__error() = 35;
    return -1;
  }

  return v6;
}

@end