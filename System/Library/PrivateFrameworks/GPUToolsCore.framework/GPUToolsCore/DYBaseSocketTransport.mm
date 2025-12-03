@interface DYBaseSocketTransport
- (BOOL)connected;
- (DYBaseSocketTransport)init;
- (DYBaseSocketTransportSharedMemoryURLs)createNewSharedMemoryTransportWithURLs:(DYBaseSocketTransportSharedMemoryURLs)ls uniqueIdentifier:(id)identifier loadCapture:(BOOL)capture loadDiagnostics:(BOOL)diagnostics;
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

@implementation DYBaseSocketTransport

- (DYBaseSocketTransport)init
{
  v3.receiver = self;
  v3.super_class = DYBaseSocketTransport;
  return [(DYBaseStreamTransport *)&v3 init];
}

- (int64_t)_read:(void *)_read size:(unint64_t)size
{
  handle = dispatch_source_get_handle(self->_readSource);

  return recv(handle, _read, size, 0);
}

- (void)_waitEAGAIN
{
  v2 = 0x400000000;
  v2.fd = dispatch_source_get_handle(self->_readSource);
  poll(&v2, 1u, 1);
}

- (int64_t)_write:(const void *)_write size:(unint64_t)size
{
  handle = dispatch_source_get_handle(self->_readSource);

  return send(handle, _write, size, 0);
}

- (void)closeSocketDescriptor
{
  handle = dispatch_source_get_handle(self->_readSource);

  close(handle);
}

- (void)_readAndAccumulateLoop
{
  self->_scheduledReadOnWritableSocket = 0;
  v3 = objc_autoreleasePoolPush();
    ;
  }

  objc_autoreleasePoolPop(v3);
}

- (void)runWithSocket:(int)socket
{
  if (self->_readSource)
  {
    [DYBaseSocketTransport runWithSocket:];
  }

  if (self->_writeSource)
  {
    [DYBaseSocketTransport runWithSocket:];
  }

  if (LOBYTE(self->super.super._interposerVersion))
  {
    [DYBaseSocketTransport runWithSocket:];
  }

  v5 = fcntl(socket, 3);
  fcntl(socket, 4, v5 | 4u);
  self->_readSource = dispatch_source_create(MEMORY[0x277D85D28], socket, 0, self->super.super._queue);
  v6 = dispatch_source_create(MEMORY[0x277D85D50], socket, 0, self->super.super._queue);
  self->_writeSource = v6;
  readSource = self->_readSource;
  if (!readSource)
  {
    [DYBaseSocketTransport runWithSocket:];
  }

  if (!v6)
  {
    [DYBaseSocketTransport runWithSocket:];
  }

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __39__DYBaseSocketTransport_runWithSocket___block_invoke;
  handler[3] = &unk_27930C1E8;
  handler[4] = self;
  dispatch_source_set_cancel_handler(readSource, handler);
  writeSource = self->_writeSource;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __39__DYBaseSocketTransport_runWithSocket___block_invoke_2;
  v16[3] = &unk_27930C1E8;
  v16[4] = self;
  dispatch_source_set_cancel_handler(writeSource, v16);
  v9 = self->_readSource;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __39__DYBaseSocketTransport_runWithSocket___block_invoke_3;
  v15[3] = &unk_27930C1E8;
  v15[4] = self;
  dispatch_source_set_event_handler(v9, v15);
  v10 = self->_writeSource;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __39__DYBaseSocketTransport_runWithSocket___block_invoke_4;
  v14[3] = &unk_27930C1E8;
  v14[4] = self;
  dispatch_source_set_event_handler(v10, v14);
  dispatch_resume(self->_readSource);
  self->_scheduledReadOnWritableSocket = 0;
  self->_writeSourceIsSuspended = 1;
  smTransportCapture = self->_smTransportCapture;
  if (smTransportCapture && (v12 = -[DYSharedMemoryTransport connect](smTransportCapture, "connect"), ![v12 BOOLResult]) || (smTransportDiagnostics = self->_smTransportDiagnostics) != 0 && (v12 = -[DYSharedMemoryTransport connect](smTransportDiagnostics, "connect"), (objc_msgSend(v12, "BOOLResult") & 1) == 0))
  {
    -[DYBaseStreamTransport _scheduleInvalidation:](self, "_scheduleInvalidation:", [v12 error]);
  }
}

void __39__DYBaseSocketTransport_runWithSocket___block_invoke(uint64_t a1)
{
  [*(a1 + 32) closeSocketDescriptor];
  dispatch_release(*(*(a1 + 32) + 232));
  *(*(a1 + 32) + 232) = 0;
}

void __39__DYBaseSocketTransport_runWithSocket___block_invoke_2(uint64_t a1)
{
  dispatch_source_cancel(*(*(a1 + 32) + 232));
  dispatch_release(*(*(a1 + 32) + 240));
  *(*(a1 + 32) + 240) = 0;
}

_BYTE *__39__DYBaseSocketTransport_runWithSocket___block_invoke_4(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 240));
  *(*(a1 + 32) + 264) = 1;
  result = *(a1 + 32);
  if (result[265] == 1)
  {

    return [result _readAndAccumulateLoop];
  }

  return result;
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

- (BOOL)connected
{
  readSource = self->_readSource;
  if (readSource)
  {
    LOBYTE(readSource) = dispatch_source_testcancel(readSource) == 0;
  }

  return readSource;
}

uint64_t __55__DYBaseSocketTransport_setPrioritizeOutgoingMessages___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 248) setPrioritizeOutgoingMessages:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 256);

  return [v3 setPrioritizeOutgoingMessages:v2];
}

- (void)_invalidate
{
  writeSource = self->_writeSource;
  if (writeSource)
  {
    if (!self->_readSource)
    {
      [DYBaseSocketTransport _invalidate];
    }

    dispatch_source_cancel(writeSource);
    if (self->_writeSourceIsSuspended)
    {
      dispatch_resume(self->_writeSource);
    }
  }

  [(DYBaseSocketTransport *)self _destroySharedMemoryTransport];
  v4.receiver = self;
  v4.super_class = DYBaseSocketTransport;
  [(DYBaseStreamTransport *)&v4 _invalidate];
}

- (DYBaseSocketTransportSharedMemoryURLs)createNewSharedMemoryTransportWithURLs:(DYBaseSocketTransportSharedMemoryURLs)ls uniqueIdentifier:(id)identifier loadCapture:(BOOL)capture loadDiagnostics:(BOOL)diagnostics
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  queue = self->super.super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __109__DYBaseSocketTransport_createNewSharedMemoryTransportWithURLs_uniqueIdentifier_loadCapture_loadDiagnostics___block_invoke;
  block[3] = &unk_27930C738;
  captureCopy = capture;
  block[4] = self;
  block[5] = identifier;
  diagnosticsCopy = diagnostics;
  lsCopy = ls;
  block[6] = &v21;
  block[7] = &v15;
  dispatch_sync(queue, block);
  v7 = v22[5];
  v8 = v16[5];
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);
  v9 = v7;
  v10 = v8;
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

_BYTE *__109__DYBaseSocketTransport_createNewSharedMemoryTransportWithURLs_uniqueIdentifier_loadCapture_loadDiagnostics___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[52] & 1) == 0)
  {
    [result _destroySharedMemoryTransport];
    if (*(a1 + 80) == 1)
    {
      v3 = [DYSharedMemoryTransport alloc];
      v4 = *(a1 + 40);
      v5 = atomic_load((*(a1 + 32) + 40));
      *(*(a1 + 32) + 248) = [(DYSharedMemoryTransport *)v3 initWithMode:2 initialMessageSerial:v5 uniqueIdentifier:v4];
      [*(*(a1 + 32) + 248) setRelayTransport:?];
      [*(*(a1 + 32) + 248) setPrioritizeOutgoingMessages:*(*(a1 + 32) + 53)];
    }

    if (*(a1 + 81) == 1)
    {
      v6 = [DYSharedMemoryTransport alloc];
      v7 = atomic_load((*(a1 + 32) + 40));
      *(*(a1 + 32) + 256) = [(DYSharedMemoryTransport *)v6 initWithMode:2 initialMessageSerial:v7 uniqueIdentifier:0];
      [*(*(a1 + 32) + 256) setRelayTransport:?];
      [*(*(a1 + 32) + 256) setPrioritizeOutgoingMessages:*(*(a1 + 32) + 53)];
    }

    if (*(a1 + 64))
    {
      [*(*(a1 + 32) + 248) setUrl:?];
    }

    if (*(a1 + 72))
    {
      [*(*(a1 + 32) + 256) setUrl:?];
    }

    if ([*(a1 + 32) connected])
    {
      if (*(a1 + 80) == 1)
      {
        [objc_msgSend(*(*(a1 + 32) + 248) "connect")];
      }

      if (*(a1 + 81) == 1)
      {
        [objc_msgSend(*(*(a1 + 32) + 256) "connect")];
      }
    }

    *(*(*(a1 + 48) + 8) + 40) = [*(*(a1 + 32) + 248) url];
    result = [*(*(a1 + 32) + 256) url];
    *(*(*(a1 + 56) + 8) + 40) = result;
  }

  return result;
}

- (void)_destroySharedMemoryTransport
{
  smTransportCapture = self->_smTransportCapture;
  if (smTransportCapture)
  {
    [(DYTransport *)smTransportCapture invalidate];

    self->_smTransportCapture = 0;
  }

  smTransportDiagnostics = self->_smTransportDiagnostics;
  if (smTransportDiagnostics)
  {
    [(DYTransport *)smTransportDiagnostics invalidate];

    self->_smTransportDiagnostics = 0;
  }
}

- (void)destroySharedMemoryTransport
{
  queue = self->super.super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__DYBaseSocketTransport_destroySharedMemoryTransport__block_invoke;
  block[3] = &unk_27930C1E8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (unsigned)_nextMessageSerial
{
  smTransportCapture = self->_smTransportCapture;
  if (smTransportCapture || (smTransportCapture = self->_smTransportDiagnostics) != 0)
  {
    result = [(DYSharedMemoryTransport *)smTransportCapture _nextMessageSerial];
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
    v8.super_class = DYBaseSocketTransport;
    return [(DYTransport *)&v8 _nextMessageSerial];
  }

  return result;
}

@end