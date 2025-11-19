@interface BTAudioSession
- (BTAudioSession)init;
- (BTAudioSession)initWithCoder:(id)a3;
- (id)_ensureXPCStarted;
- (id)description;
- (void)_activate;
- (void)_interrupted;
- (void)_invalidated;
- (void)_reportError:(id)a3;
- (void)activateWithCompletion:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)invalidate;
- (void)setLabel:(id)a3;
@end

@implementation BTAudioSession

- (BTAudioSession)init
{
  v5.receiver = self;
  v5.super_class = BTAudioSession;
  v2 = [(BTAudioSession *)&v5 init];
  if (v2)
  {
    v2->_clientID = BTXPCGetNextClientID();
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v2->_ucat = &gLogCategory_BTAudioSession;
    v3 = v2;
  }

  return v2;
}

- (BTAudioSession)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BTAudioSession *)self init];
  if (v5)
  {
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_category = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_clientID = 0;
    }

    v6 = v4;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v7 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  category = self->_category;
  v8 = v4;
  if (category)
  {
    [v4 encodeInteger:category forKey:@"cat"];
    v4 = v8;
  }

  clientID = self->_clientID;
  if (clientID)
  {
    [v8 encodeInt64:clientID forKey:@"cid"];
    v4 = v8;
  }

  label = self->_label;
  if (label)
  {
    [v8 encodeObject:label forKey:@"label"];
    v4 = v8;
  }
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove();
    self->_ucat = 0;
  }

  v4.receiver = self;
  v4.super_class = BTAudioSession;
  [(BTAudioSession *)&v4 dealloc];
}

- (id)description
{
  category = self->_category;
  if (category <= 5)
  {
    v3 = off_278D11A78[category];
  }

  timeoutSeconds = self->_timeoutSeconds;
  clientID = self->_clientID;
  NSAppendPrintF();

  return 0;
}

- (void)setLabel:(id)a3
{
  objc_storeStrong(&self->_label, a3);
  v5 = a3;
  v4 = v5;
  [v5 UTF8String];
  LogCategoryReplaceF();
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__BTAudioSession_activateWithCompletion___block_invoke;
  v7[3] = &unk_278D11920;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __41__BTAudioSession_activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    v3 = *MEMORY[0x277CCA590];
    v8 = NSErrorF();
    if (gLogCategory_BTAudioSession <= 90 && (gLogCategory_BTAudioSession != -1 || _LogCategory_Initialize()))
    {
      __41__BTAudioSession_activateWithCompletion___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    *(v2 + 8) = 1;
    v4 = MEMORY[0x245CFACE0](*(a1 + 40));
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;

    v7 = *(a1 + 32);

    [v7 _activate];
  }
}

- (void)_activate
{
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_3:
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v5 = timeoutTimer;
    dispatch_source_cancel(v5);
    v6 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_dispatchQueue);
  v8 = self->_timeoutTimer;
  self->_timeoutTimer = v7;

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __27__BTAudioSession__activate__block_invoke;
  handler[3] = &unk_278D11A58;
  handler[4] = v7;
  handler[5] = self;
  dispatch_source_set_event_handler(v7, handler);
  self->_timeoutSeconds;
  CUDispatchTimerSet();
  dispatch_activate(v7);
  v9 = [(BTAudioSession *)self _ensureXPCStarted];
  if (v9)
  {
    [(BTAudioSession *)self _reportError:v9];
  }

  else
  {
    xpcCnx = self->_xpcCnx;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __27__BTAudioSession__activate__block_invoke_2;
    v14[3] = &unk_278D11970;
    v14[4] = self;
    v11 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v14];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __27__BTAudioSession__activate__block_invoke_3;
    v13[3] = &unk_278D11970;
    v13[4] = self;
    [v11 audioSessionActivate:self completion:v13];
  }
}

void __27__BTAudioSession__activate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 32);
  if (v2 == v3)
  {
    if (v2)
    {
      v5 = v3;
      dispatch_source_cancel(v5);
      v6 = *(a1 + 40);
      v7 = *(v6 + 32);
      *(v6 + 32) = 0;
    }

    v8 = *(a1 + 40);
    v9 = BTErrorF();
    [v8 _reportError:v9];
  }
}

void __27__BTAudioSession__activate__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *v4[5];
  v9 = v3;
  if (v5 <= 90)
  {
    if (v5 != -1)
    {
LABEL_3:
      v8 = v3;
      LogPrintF();
      v3 = v9;
      v4 = *(a1 + 32);
      goto LABEL_6;
    }

    v6 = _LogCategory_Initialize();
    v4 = *(a1 + 32);
    if (v6)
    {
      v7 = v4[5];
      v3 = v9;
      goto LABEL_3;
    }

    v3 = v9;
  }

LABEL_6:
  [v4 _reportError:{v3, v8}];
}

void __27__BTAudioSession__activate__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v21 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = **(v4 + 40);
    if (v6 <= 90)
    {
      if (v6 == -1)
      {
        v13 = _LogCategory_Initialize();
        v4 = *(a1 + 32);
        if (!v13)
        {
          v5 = v21;
          goto LABEL_12;
        }

        v18 = *(v4 + 40);
        v5 = v21;
      }

      v20 = v5;
      LogPrintF();
      v5 = v21;
      v4 = *(a1 + 32);
    }

LABEL_12:
    [v4 _reportError:{v5, v20}];
    goto LABEL_17;
  }

  v7 = *(v4 + 32);
  if (v7)
  {
    v8 = v7;
    dispatch_source_cancel(v8);
    v9 = *(a1 + 32);
    v10 = *(v9 + 32);
    *(v9 + 32) = 0;
  }

  v11 = *(a1 + 32);
  v12 = **(v11 + 40);
  if (v12 <= 30)
  {
    if (v12 == -1)
    {
      v14 = _LogCategory_Initialize();
      v11 = *(a1 + 32);
      if (!v14)
      {
        goto LABEL_14;
      }

      v19 = *(v11 + 40);
    }

    LogPrintF();
    v11 = *(a1 + 32);
  }

LABEL_14:
  v15 = MEMORY[0x245CFACE0](*(v11 + 16));
  v16 = *(a1 + 32);
  v17 = *(v16 + 16);
  *(v16 + 16) = 0;

  if (v15)
  {
    v15[2](v15, 0);
  }

LABEL_17:
}

- (id)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v3 = self->_testListenerEndpoint;
    v4 = objc_alloc(MEMORY[0x277CCAE80]);
    if (v3)
    {
      v5 = [v4 initWithListenerEndpoint:v3];
    }

    else
    {
      v5 = [v4 initWithMachServiceName:@"com.apple.BluetoothServices" options:0];
    }

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v5;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2853D8F88];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v7];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __35__BTAudioSession__ensureXPCStarted__block_invoke;
    v11[3] = &unk_278D11830;
    v11[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v11];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __35__BTAudioSession__ensureXPCStarted__block_invoke_2;
    v10[3] = &unk_278D11830;
    v10[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v10];
    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2853D9090];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v8];

    [(NSXPCConnection *)self->_xpcCnx resume];
  }

  return 0;
}

uint64_t __35__BTAudioSession__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_interrupted
{
  if (gLogCategory_BTAudioSession <= 50 && (gLogCategory_BTAudioSession != -1 || _LogCategory_Initialize()))
  {
    [BTAudioSession _interrupted];
  }

  v3 = BTErrorF();
  [(BTAudioSession *)self _reportError:v3];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__BTAudioSession_invalidate__block_invoke;
  block[3] = &unk_278D11830;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __28__BTAudioSession_invalidate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    if ((*(*(a1 + 32) + 25) & 1) == 0 && gLogCategory_BTAudioSession <= 30 && (gLogCategory_BTAudioSession != -1 || _LogCategory_Initialize()))
    {
      __28__BTAudioSession_invalidate__block_invoke_cold_1();
    }

    v4 = *(*(a1 + 32) + 32);
    if (v4)
    {
      v5 = v4;
      dispatch_source_cancel(v5);
      v6 = *(a1 + 32);
      v7 = *(v6 + 32);
      *(v6 + 32) = 0;
    }

    v8 = *(a1 + 32);
    v9 = *(v8 + 48);
    if (v9)
    {
      [v9 invalidate];
      v8 = *(a1 + 32);
    }

    v13 = MEMORY[0x245CFACE0](*(v8 + 16));
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    *(v10 + 16) = 0;

    if (v13)
    {
      v12 = BTErrorF();
      v13[2](v13, v12);
    }

    [*(a1 + 32) _invalidated];
  }
}

- (void)_invalidated
{
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_BTAudioSession <= 50 && (gLogCategory_BTAudioSession != -1 || _LogCategory_Initialize()))
    {
      [BTAudioSession _invalidated];
    }

    if (!self->_xpcCnx)
    {
      v11 = MEMORY[0x245CFACE0](self->_activateCompletion, a2);
      activateCompletion = self->_activateCompletion;
      self->_activateCompletion = 0;

      if (v11)
      {
        v4 = BTErrorF();
        v11[2](v11, v4);
      }

      v5 = MEMORY[0x245CFACE0](self->_invalidationHandler);
      invalidationHandler = self->_invalidationHandler;
      self->_invalidationHandler = 0;

      if (v5)
      {
        v5[2](v5);
      }

      timeoutTimer = self->_timeoutTimer;
      if (timeoutTimer)
      {
        v8 = timeoutTimer;
        dispatch_source_cancel(v8);
        v9 = self->_timeoutTimer;
        self->_timeoutTimer = 0;
      }

      xpcCnx = self->_xpcCnx;
      self->_xpcCnx = 0;

      self->_invalidateDone = 1;
      if (gLogCategory_BTAudioSession <= 10 && (gLogCategory_BTAudioSession != -1 || _LogCategory_Initialize()))
      {
        [BTAudioSession _invalidated];
      }
    }
  }
}

- (void)_reportError:(id)a3
{
  v9 = a3;
  if (gLogCategory_BTAudioSession <= 90 && (gLogCategory_BTAudioSession != -1 || _LogCategory_Initialize()))
  {
    [BTAudioSession _reportError:];
  }

  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v5 = timeoutTimer;
    dispatch_source_cancel(v5);
    v6 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  v7 = MEMORY[0x245CFACE0](self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v7)
  {
    (v7)[2](v7, v9);
  }
}

@end