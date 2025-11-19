@interface CUBLEServer
- (CUBLEServer)init;
- (void)_activateWithCompletion:(id)a3;
- (void)_handleConnectionInvalidated:(id)a3;
- (void)_invalidate;
- (void)_startIfNeeded;
- (void)activateWithCompletion:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)peripheralManager:(id)a3 didOpenL2CAPChannel:(id)a4 error:(id)a5;
- (void)peripheralManager:(id)a3 didPublishL2CAPChannel:(unsigned __int16)a4 error:(id)a5;
- (void)peripheralManager:(id)a3 didUnpublishL2CAPChannel:(unsigned __int16)a4 error:(id)a5;
- (void)peripheralManagerDidUpdateState:(id)a3;
- (void)setLabel:(id)a3;
@end

@implementation CUBLEServer

- (void)_handleConnectionInvalidated:(id)a3
{
  v14 = a3;
  v4 = [v14 l2capChannel];
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      v6 = [v4 PSM];
      v7 = [v4 peer];
      v13 = [v7 identifier];
      LogPrintF(ucat, "[CUBLEServer _handleConnectionInvalidated:]", 0x1Eu, "Connection ended PSM 0x%04X, peer %@\n", v8, v9, v10, v11, v6);

      goto LABEL_5;
    }

    if (_LogCategory_Initialize(self->_ucat, 0x1Eu))
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  [(NSMutableSet *)self->_connections removeObject:v14];
  connectionEndedHandler = self->_connectionEndedHandler;
  if (connectionEndedHandler)
  {
    connectionEndedHandler[2](connectionEndedHandler, v14, 0);
  }
}

- (void)peripheralManager:(id)a3 didOpenL2CAPChannel:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!v8)
  {
    v18 = v7;
    ucat = self->_ucat;
    var0 = ucat->var0;
    if (v18)
    {
      if (var0 > 30)
      {
        goto LABEL_15;
      }

      if (var0 == -1)
      {
        if (!_LogCategory_Initialize(self->_ucat, 0x1Eu))
        {
LABEL_15:
          v27 = objc_alloc_init(CUBLEConnection);
          [(CUBLEConnection *)v27 setDispatchQueue:self->_dispatchQueue];
          [(CUBLEConnection *)v27 setL2capChannel:v18];
          if (self->_label)
          {
            [(CUBLEConnection *)v27 setLabel:?];
          }

          v43[0] = MEMORY[0x1E69E9820];
          v43[1] = 3221225472;
          v43[2] = __59__CUBLEServer_peripheralManager_didOpenL2CAPChannel_error___block_invoke;
          v43[3] = &unk_1E73A49F0;
          v43[4] = self;
          v28 = v27;
          v44 = v28;
          [(CUBLEConnection *)v28 setServerInvalidationHandler:v43];
          v42 = 0;
          v29 = [(CUBLEConnection *)v28 activateDirectAndReturnError:&v42];
          v34 = v42;
          if (v29)
          {
            connections = self->_connections;
            if (!connections)
            {
              v36 = objc_alloc_init(MEMORY[0x1E695DFA8]);
              v37 = self->_connections;
              self->_connections = v36;

              connections = self->_connections;
            }

            [(NSMutableSet *)connections addObject:v28];
            connectionStartedHandler = self->_connectionStartedHandler;
            if (connectionStartedHandler)
            {
              connectionStartedHandler[2](connectionStartedHandler, v28);
            }

            goto LABEL_29;
          }

          v39 = self->_ucat;
          if (v39->var0 <= 90)
          {
            if (v39->var0 == -1)
            {
              if (!_LogCategory_Initialize(v39, 0x5Au))
              {
                goto LABEL_28;
              }

              v39 = self->_ucat;
            }

            LogPrintF(v39, "[CUBLEServer peripheralManager:didOpenL2CAPChannel:error:]", 0x5Au, "### Activate accepted connection failed: %{error}\n", v30, v31, v32, v33, v34);
          }

LABEL_28:
          [(CUBLEConnection *)v28 invalidate];
LABEL_29:

          goto LABEL_30;
        }

        ucat = self->_ucat;
      }

      v21 = [v18 PSM];
      v22 = [v18 peer];
      v41 = [v22 identifier];
      LogPrintF(ucat, "[CUBLEServer peripheralManager:didOpenL2CAPChannel:error:]", 0x1Eu, "L2CAP channel opened PSM 0x%04X, peer %@: %{error}\n", v23, v24, v25, v26, v21);

      goto LABEL_15;
    }

    if (var0 <= 90)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize(self->_ucat, 0x5Au))
        {
          goto LABEL_30;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUBLEServer peripheralManager:didOpenL2CAPChannel:error:]", 0x5Au, "### L2CAP open channel null\n", v14, v15, v16, v17, v40);
    }

LABEL_30:

    goto LABEL_31;
  }

  v13 = self->_ucat;
  if (v13->var0 <= 90)
  {
    if (v13->var0 == -1)
    {
      if (!_LogCategory_Initialize(v13, 0x5Au))
      {
        goto LABEL_31;
      }

      v13 = self->_ucat;
    }

    LogPrintF(v13, "[CUBLEServer peripheralManager:didOpenL2CAPChannel:error:]", 0x5Au, "### L2CAP open channel failed: %{error}\n", v9, v10, v11, v12, v8);
  }

LABEL_31:
}

- (void)peripheralManager:(id)a3 didUnpublishL2CAPChannel:(unsigned __int16)a4 error:(id)a5
{
  v5 = a4;
  v12 = a5;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[CUBLEServer peripheralManager:didUnpublishL2CAPChannel:error:]", 0x1Eu, "Unpublished L2CAP channel with PSM 0x%04X: %{error}\n", v7, v8, v9, v10, v5);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(ucat, 0x1Eu))
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
}

- (void)peripheralManager:(id)a3 didPublishL2CAPChannel:(unsigned __int16)a4 error:(id)a5
{
  v5 = a4;
  v15 = a5;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  ucat = self->_ucat;
  var0 = ucat->var0;
  if (v15)
  {
    if (var0 > 90)
    {
      goto LABEL_12;
    }

    if (var0 != -1)
    {
      goto LABEL_4;
    }

    if (_LogCategory_Initialize(ucat, 0x5Au))
    {
      ucat = self->_ucat;
LABEL_4:
      LogPrintF(ucat, "[CUBLEServer peripheralManager:didPublishL2CAPChannel:error:]", 0x5Au, "### Publish L2CAP channel failed: %{error}\n", v7, v8, v9, v10, v15);
    }
  }

  else
  {
    if (var0 > 30)
    {
      goto LABEL_12;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_12;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUBLEServer peripheralManager:didPublishL2CAPChannel:error:]", 0x1Eu, "Published L2CAP channel with PSM 0x%04X\n", v7, v8, v9, v10, v5);
  }

LABEL_12:
  self->_listeningPSM = v5;
  v13 = _Block_copy(self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v13)
  {
    v13[2](v13, v15);
  }
}

- (void)peripheralManagerDidUpdateState:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v5 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  v6 = [v5 state];

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_9;
      }

      ucat = self->_ucat;
    }

    if (v6 > 0xA)
    {
      v12 = "?";
    }

    else
    {
      v12 = off_1E73A3018[v6];
    }

    LogPrintF(ucat, "[CUBLEServer peripheralManagerDidUpdateState:]", 0x1Eu, "Bluetooth state changed: %s\n", v7, v8, v9, v10, v12);
  }

LABEL_9:
  if (v6 == 1)
  {
    self->_listeningPSM = 0;
  }

  else if (v6 == 5)
  {

    [(CUBLEServer *)self _startIfNeeded];
  }
}

- (void)_startIfNeeded
{
  ucat = self->_ucat;
  if (ucat->var0 <= 9)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 9u))
      {
        goto LABEL_5;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUBLEServer _startIfNeeded]", 9u, "StartIfNeeded\n", v2, v3, v4, v5, v10);
  }

LABEL_5:
  if (!self->_listeningPSM && [(CBPeripheralManager *)self->_peripheralManager state]== 5)
  {
    peripheralManager = self->_peripheralManager;
    listenPSM = self->_listenPSM;

    [(CBPeripheralManager *)peripheralManager publishL2CAPChannel:listenPSM requiresEncryption:0];
  }
}

- (void)_invalidate
{
  v37 = *MEMORY[0x1E69E9840];
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    ucat = self->_ucat;
    if (ucat->var0 > 30)
    {
      goto LABEL_6;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
LABEL_6:
        v8 = _Block_copy(self->_activateCompletion);
        activateCompletion = self->_activateCompletion;
        self->_activateCompletion = 0;

        if (v8)
        {
          v16 = NSErrorWithOSStatusF(4294960573, "Invalidated", v10, v11, v12, v13, v14, v15, v32);
          v8[2](v8, v16);
        }

        if (self->_listeningPSM)
        {
          [(CBPeripheralManager *)self->_peripheralManager unpublishL2CAPChannel:?];
          self->_listeningPSM = 0;
        }

        [(CBPeripheralManager *)self->_peripheralManager setDelegate:0];
        peripheralManager = self->_peripheralManager;
        self->_peripheralManager = 0;

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v18 = self->_connections;
        v19 = [(NSMutableSet *)v18 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v33;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v33 != v21)
              {
                objc_enumerationMutation(v18);
              }

              [*(*(&v32 + 1) + 8 * i) invalidate];
            }

            v20 = [(NSMutableSet *)v18 countByEnumeratingWithState:&v32 objects:v36 count:16];
          }

          while (v20);
        }

        [(NSMutableSet *)self->_connections removeAllObjects];
        invalidationHandler = self->_invalidationHandler;
        if (invalidationHandler)
        {
          invalidationHandler[2]();
        }

        connectionStartedHandler = self->_connectionStartedHandler;
        self->_connectionStartedHandler = 0;

        connectionEndedHandler = self->_connectionEndedHandler;
        self->_connectionEndedHandler = 0;

        v26 = self->_invalidationHandler;
        self->_invalidationHandler = 0;

        v31 = self->_ucat;
        if (v31->var0 > 30)
        {
          goto LABEL_23;
        }

        if (v31->var0 == -1)
        {
          if (!_LogCategory_Initialize(v31, 0x1Eu))
          {
            goto LABEL_23;
          }

          v31 = self->_ucat;
        }

        LogPrintF(v31, "[CUBLEServer _invalidate]", 0x1Eu, "Invalidated\n", v27, v28, v29, v30, v32);
LABEL_23:

        return;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUBLEServer _invalidate]", 0x1Eu, "Invalidate\n", v2, v3, v4, v5, v32);
    goto LABEL_6;
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__CUBLEServer_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activateWithCompletion:(id)a3
{
  aBlock = a3;
  if (self->_peripheralManager)
  {
    v10 = "Activate already called";
    v11 = 4294960575;
    goto LABEL_3;
  }

  v18 = [objc_alloc(getCBPeripheralManagerClass_1525[0]()) initWithDelegate:self queue:self->_dispatchQueue];
  peripheralManager = self->_peripheralManager;
  self->_peripheralManager = v18;

  if (self->_peripheralManager)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x1Eu))
        {
          goto LABEL_16;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUBLEServer _activateWithCompletion:]", 0x1Eu, "Activate PSM 0x%04X\n", v6, v7, v8, v9, self->_listenPSM);
    }

LABEL_16:
    v21 = _Block_copy(aBlock);
    activateCompletion = self->_activateCompletion;
    self->_activateCompletion = v21;

    [(CUBLEServer *)self _startIfNeeded];
    goto LABEL_17;
  }

  v10 = "Create CBPeripheralManager failed";
  v11 = 4294960596;
LABEL_3:
  v16 = NSErrorWithOSStatusF(v11, v10, v4, v5, v6, v7, v8, v9, v23);
  v17 = self->_ucat;
  if (v17->var0 <= 90)
  {
    if (v17->var0 == -1)
    {
      if (!_LogCategory_Initialize(v17, 0x5Au))
      {
        goto LABEL_11;
      }

      v17 = self->_ucat;
    }

    LogPrintF(v17, "[CUBLEServer _activateWithCompletion:]", 0x5Au, "### Activate failed: %{error}\n", v12, v13, v14, v15, v16);
  }

LABEL_11:
  if (aBlock)
  {
    aBlock[2]();
  }

LABEL_17:
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__CUBLEServer_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E73A49A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)setLabel:(id)a3
{
  objc_storeStrong(&self->_label, a3);
  v13 = a3;
  v5 = qword_1EADE92F8;
  v6 = v13;
  [v13 UTF8String];
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v7, v8, v9, v10, v11, v12, v5);
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove(ucat);
    self->_ucat = 0;
  }

  v4.receiver = self;
  v4.super_class = CUBLEServer;
  [(CUBLEServer *)&v4 dealloc];
}

- (CUBLEServer)init
{
  v5.receiver = self;
  v5.super_class = CUBLEServer;
  v2 = [(CUBLEServer *)&v5 init];
  if (v2)
  {
    if (CUMainQueue_sOnce != -1)
    {
      dispatch_once(&CUMainQueue_sOnce, &__block_literal_global_23);
    }

    objc_storeStrong(&v2->_dispatchQueue, CUMainQueue_sQueue);
    v2->_ucat = &gLogCategory_CUBLEServer;
    v3 = v2;
  }

  return v2;
}

@end