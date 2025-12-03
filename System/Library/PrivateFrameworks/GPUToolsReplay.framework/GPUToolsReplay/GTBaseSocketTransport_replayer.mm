@interface GTBaseSocketTransport_replayer
- (BOOL)connected;
- (GTBaseSocketTransport_replayer)init;
- (id)createNewSharedMemoryTransportWithURL:(id)l;
- (int64_t)_read:(void *)_read size:(unint64_t)size;
- (int64_t)_write:(const void *)_write size:(unint64_t)size;
- (unsigned)_nextMessageSerial;
- (void)_destroySharedMemoryTransport;
- (void)_invalidate;
- (void)_readAndAccumulateLoop;
- (void)_waitEAGAIN;
- (void)closeSocketDescriptor;
- (void)destroySharedMemoryTransport;
- (void)runWithSocket:(int)socket;
- (void)scheduleReadOnWritableSocket;
@end

@implementation GTBaseSocketTransport_replayer

- (unsigned)_nextMessageSerial
{
  smTransport = self->_smTransport;
  if (smTransport)
  {
    result = [(GTSharedMemoryTransport_replayer *)smTransport _nextMessageSerial];
    v5 = atomic_exchange(&self->super.super._messageCounter, result);
    if (v5 > result)
    {
      do
      {
        v6 = atomic_exchange(&self->super.super._messageCounter, v5);
        v7 = v6 > v5;
        v5 = v6;
      }

      while (v7);
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = GTBaseSocketTransport_replayer;
    return [(GTTransport_replayer *)&v8 _nextMessageSerial];
  }

  return result;
}

- (void)destroySharedMemoryTransport
{
  queue = self->super.super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__GTBaseSocketTransport_destroySharedMemoryTransport__block_invoke;
  block[3] = &unk_279657CF8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_destroySharedMemoryTransport
{
  [(GTTransport_replayer *)self->_smTransport invalidate];

  self->_smTransport = 0;
}

- (id)createNewSharedMemoryTransportWithURL:(id)l
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__1893;
  v11 = __Block_byref_object_dispose__1894;
  v12 = 0;
  queue = self->super.super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__GTBaseSocketTransport_createNewSharedMemoryTransportWithURL___block_invoke;
  block[3] = &unk_279658800;
  block[4] = self;
  block[5] = l;
  block[6] = &v7;
  dispatch_sync(queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)_invalidate
{
  writeSource = self->_writeSource;
  if (writeSource)
  {
    if (!self->_readSource)
    {
      __assert_rtn("[GTBaseSocketTransport _invalidate]", ", 0, "_readSource"");
    }

    dispatch_source_cancel(writeSource);
    if (self->_writeSourceIsSuspended)
    {
      dispatch_resume(self->_writeSource);
    }
  }

  [(GTBaseSocketTransport_replayer *)self _destroySharedMemoryTransport];
  v4.receiver = self;
  v4.super_class = GTBaseSocketTransport_replayer;
  [(GTBaseStreamTransport_replayer *)&v4 _invalidate];
}

- (BOOL)connected
{
  readSource = self->_readSource;
  if (readSource)
  {
    LOBYTE(readSource) = dispatch_source_testcancel(readSource) == 0;
  }

  return readSource;
}

- (void)scheduleReadOnWritableSocket
{
  if ((self->super.super._interposerVersion & 1) == 0 && !self->_scheduledReadOnWritableSocket)
  {
    self->_scheduledReadOnWritableSocket = 1;
    if (self->_writeSourceIsSuspended)
    {
      dispatch_resume(self->_writeSource);
      self->_writeSourceIsSuspended = 0;
    }
  }
}

- (void)runWithSocket:(int)socket
{
  if (self->_readSource)
  {
    v13 = "_readSource == nullptr";
    goto LABEL_15;
  }

  if (self->_writeSource)
  {
    v13 = "_writeSource == nullptr";
    goto LABEL_15;
  }

  if (LOBYTE(self->super.super._interposerVersion))
  {
    v13 = "_invalid == NO";
    goto LABEL_15;
  }

  v5 = fcntl(socket, 3);
  fcntl(socket, 4, v5 | 4u);
  self->_readSource = dispatch_source_create(MEMORY[0x277D85D28], socket, 0, self->super.super._queue);
  v6 = dispatch_source_create(MEMORY[0x277D85D50], socket, 0, self->super.super._queue);
  self->_writeSource = v6;
  readSource = self->_readSource;
  if (!readSource)
  {
    v13 = "_readSource";
    goto LABEL_15;
  }

  if (!v6)
  {
    v13 = "_writeSource";
LABEL_15:
    __assert_rtn("[GTBaseSocketTransport runWithSocket:]", "", 0, v13);
  }

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __39__GTBaseSocketTransport_runWithSocket___block_invoke;
  handler[3] = &unk_279657CF8;
  handler[4] = self;
  dispatch_source_set_cancel_handler(readSource, handler);
  writeSource = self->_writeSource;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __39__GTBaseSocketTransport_runWithSocket___block_invoke_2;
  v16[3] = &unk_279657CF8;
  v16[4] = self;
  dispatch_source_set_cancel_handler(writeSource, v16);
  v9 = self->_readSource;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __39__GTBaseSocketTransport_runWithSocket___block_invoke_3;
  v15[3] = &unk_279657CF8;
  v15[4] = self;
  dispatch_source_set_event_handler(v9, v15);
  v10 = self->_writeSource;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __39__GTBaseSocketTransport_runWithSocket___block_invoke_4;
  v14[3] = &unk_279657CF8;
  v14[4] = self;
  dispatch_source_set_event_handler(v10, v14);
  dispatch_resume(self->_readSource);
  self->_scheduledReadOnWritableSocket = 0;
  self->_writeSourceIsSuspended = 1;
  smTransport = self->_smTransport;
  if (smTransport)
  {
    connect = [(GTSharedMemoryTransport_replayer *)smTransport connect];
    if (([connect BOOLResult] & 1) == 0)
    {
      -[GTBaseStreamTransport_replayer _scheduleInvalidation:](self, "_scheduleInvalidation:", [connect error]);
    }
  }
}

- (void)_readAndAccumulateLoop
{
  self->_scheduledReadOnWritableSocket = 0;
  v3 = objc_autoreleasePoolPush();
    ;
  }

  objc_autoreleasePoolPop(v3);
}

- (void)closeSocketDescriptor
{
  handle = dispatch_source_get_handle(self->_readSource);

  close(handle);
}

- (int64_t)_write:(const void *)_write size:(unint64_t)size
{
  handle = dispatch_source_get_handle(self->_readSource);

  return send(handle, _write, size, 0);
}

- (void)_waitEAGAIN
{
  v2 = 0x400000000;
  v2.fd = dispatch_source_get_handle(self->_readSource);
  poll(&v2, 1u, 1);
}

- (int64_t)_read:(void *)_read size:(unint64_t)size
{
  handle = dispatch_source_get_handle(self->_readSource);

  return recv(handle, _read, size, 0);
}

- (GTBaseSocketTransport_replayer)init
{
  v3.receiver = self;
  v3.super_class = GTBaseSocketTransport_replayer;
  return [(GTBaseStreamTransport_replayer *)&v3 init];
}

@end