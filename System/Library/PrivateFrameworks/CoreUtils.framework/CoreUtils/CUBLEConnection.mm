@interface CUBLEConnection
- (BOOL)_prepareWriteRequest:(id)request error:(id *)error;
- (BOOL)_processReadStatus;
- (BOOL)_runConnectStart;
- (BOOL)_runSetupChannel;
- (BOOL)_setupIOAndReturnError:(id *)error;
- (BOOL)_startConnectingAndReturnError:(id *)error;
- (BOOL)activateDirectAndReturnError:(id *)error;
- (CUBLEConnection)init;
- (NSString)description;
- (void)_abortReadsWithError:(id)error;
- (void)_abortWritesWithError:(id)error;
- (void)_completeReadRequest:(id)request error:(id)error;
- (void)_completeWriteRequest:(id)request error:(id)error;
- (void)_invalidate;
- (void)_invalidated;
- (void)_prepareReadRequest:(id)request;
- (void)_processReads:(BOOL)reads;
- (void)_processWrites;
- (void)_reportError:(id)error;
- (void)_run;
- (void)activateWithCompletion:(id)completion;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManagerDidUpdateState:(id)state;
- (void)dealloc;
- (void)invalidate;
- (void)peripheral:(id)peripheral didOpenL2CAPChannel:(id)channel error:(id)error;
- (void)readWithRequest:(id)request;
- (void)setLabel:(id)label;
- (void)writeEndOfDataWithCompletion:(id)completion;
- (void)writeWithRequest:(id)request;
@end

@implementation CUBLEConnection

- (void)peripheral:(id)peripheral didOpenL2CAPChannel:(id)channel error:(id)error
{
  peripheralCopy = peripheral;
  channelCopy = channel;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled)
  {
    goto LABEL_38;
  }

  if (!self->_l2capChannel)
  {
    identifier = [peripheralCopy identifier];
    destinationUUID = self->_destinationUUID;
    v17 = identifier;
    v18 = destinationUUID;
    v19 = v18;
    if (v17 == v18)
    {
    }

    else
    {
      if ((v17 != 0) == (v18 == 0))
      {

LABEL_17:
        ucat = self->_ucat;
        if (ucat->var0 > 60)
        {
          goto LABEL_38;
        }

        if (ucat->var0 == -1)
        {
          if (!_LogCategory_Initialize(self->_ucat, 0x3Cu))
          {
            goto LABEL_38;
          }

          ucat = self->_ucat;
        }

        identifier2 = [peripheralCopy identifier];
        LogPrintF(ucat, "[CUBLEConnection peripheral:didOpenL2CAPChannel:error:]", 0x3Cu, "### DidOpenL2CAPChannel wrong peer: peer %@ (not %@), channel %@, error %{error}\n", v28, v29, v30, v31, identifier2);
        goto LABEL_37;
      }

      v20 = [(NSUUID *)v17 isEqual:v18];

      if ((v20 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v25 = self->_ucat;
    if (v25->var0 <= 30)
    {
      if (v25->var0 != -1)
      {
LABEL_13:
        LogPrintF(v25, "[CUBLEConnection peripheral:didOpenL2CAPChannel:error:]", 0x1Eu, "DidOpenL2CAPChannel %@, error %{error}\n", v21, v22, v23, v24, channelCopy);
        goto LABEL_22;
      }

      if (_LogCategory_Initialize(v25, 0x1Eu))
      {
        v25 = self->_ucat;
        goto LABEL_13;
      }
    }

LABEL_22:
    if (errorCopy)
    {
      v32 = NSErrorNestedF(*MEMORY[0x1E696A768], 4294960541, errorCopy, "L2CAP open channel failed", v21, v22, v23, v24, v53);
      [(CUBLEConnection *)self _reportError:v32];

      goto LABEL_38;
    }

    v33 = channelCopy;
    identifier2 = v33;
    if (v33)
    {
      if ([v33 PSM] == self->_destinationPSM)
      {
        objc_storeStrong(&self->_l2capChannel, channel);
        v40 = self->_ucat;
        if (v40->var0 <= 30)
        {
          if (v40->var0 == -1)
          {
            if (!_LogCategory_Initialize(self->_ucat, 0x1Eu))
            {
              goto LABEL_36;
            }

            v40 = self->_ucat;
          }

          v41 = [identifier2 PSM];
          peer = [identifier2 peer];
          identifier3 = [peer identifier];
          LogPrintF(v40, "[CUBLEConnection peripheral:didOpenL2CAPChannel:error:]", 0x1Eu, "Connection started PSM 0x%04X, peer %@\n", v43, v44, v45, v46, v41);
        }

LABEL_36:
        [(CUBLEConnection *)self _run];
        goto LABEL_37;
      }

      v48 = self->_ucat;
      if (v48->var0 <= 60)
      {
        if (v48->var0 == -1)
        {
          if (!_LogCategory_Initialize(self->_ucat, 0x3Cu))
          {
            goto LABEL_37;
          }

          v48 = self->_ucat;
        }

        v54 = [identifier2 PSM];
        LogPrintF(v48, "[CUBLEConnection peripheral:didOpenL2CAPChannel:error:]", 0x3Cu, "### DidOpenL2CAPChannel wrong PSM: 0x%04X (not 0x%04X)\n", v49, v50, v51, v52, v54);
      }
    }

    else
    {
      v47 = NSErrorWithOSStatusF(4294960596, "L2CAP open channel null", v34, v35, v36, v37, v38, v39, v53);
      [(CUBLEConnection *)self _reportError:v47];
    }

LABEL_37:

    goto LABEL_38;
  }

  v14 = self->_ucat;
  if (v14->var0 > 60)
  {
    goto LABEL_38;
  }

  if (v14->var0 != -1)
  {
    goto LABEL_5;
  }

  if (_LogCategory_Initialize(v14, 0x3Cu))
  {
    v14 = self->_ucat;
LABEL_5:
    LogPrintF(v14, "[CUBLEConnection peripheral:didOpenL2CAPChannel:error:]", 0x3Cu, "### DidOpenL2CAPChannel already open: channel %@, error %{error}\n", v10, v11, v12, v13, channelCopy);
  }

LABEL_38:
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  peripheralCopy = peripheral;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled)
  {
    goto LABEL_19;
  }

  identifier = [peripheralCopy identifier];
  destinationUUID = self->_destinationUUID;
  v10 = identifier;
  v11 = destinationUUID;
  v12 = v11;
  if (v10 == v11)
  {

    goto LABEL_7;
  }

  if ((v10 != 0) != (v11 == 0))
  {
    v13 = [(NSUUID *)v10 isEqual:v11];

    if ((v13 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_7:
    ucat = self->_ucat;
    if (ucat->var0 > 90)
    {
      goto LABEL_15;
    }

    v21 = peripheralCopy;
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(self->_ucat, 0x5Au))
      {
LABEL_15:
        if (errorCopy)
        {
          [(CUBLEConnection *)self _reportError:errorCopy];
        }

        else
        {
          v33 = NSErrorWithOSStatusF(4294960543, "Connect failed without error", v14, v15, v16, v17, v18, v19, v34);
          [(CUBLEConnection *)self _reportError:v33];
        }

        goto LABEL_19;
      }

      ucat = self->_ucat;
      v21 = peripheralCopy;
    }

    identifier2 = [v21 identifier];
    LogPrintF(ucat, "[CUBLEConnection centralManager:didFailToConnectPeripheral:error:]", 0x5Au, "### DidFailToConnectPeripheral %@, error %{error}\n", v23, v24, v25, v26, identifier2);

    goto LABEL_15;
  }

LABEL_11:
  v27 = self->_ucat;
  if (v27->var0 > 60)
  {
    goto LABEL_19;
  }

  if (v27->var0 != -1)
  {
    goto LABEL_13;
  }

  if (_LogCategory_Initialize(self->_ucat, 0x3Cu))
  {
    v27 = self->_ucat;
LABEL_13:
    identifier3 = [peripheralCopy identifier];
    LogPrintF(v27, "[CUBLEConnection centralManager:didFailToConnectPeripheral:error:]", 0x3Cu, "### DidFailToConnectPeripheral wrong peripheral: %@ (not %@), error %{error}\n", v29, v30, v31, v32, identifier3);
  }

LABEL_19:
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled)
  {
    goto LABEL_28;
  }

  identifier = [peripheralCopy identifier];
  destinationUUID = self->_destinationUUID;
  v9 = identifier;
  v10 = destinationUUID;
  v11 = v10;
  if (v9 == v10)
  {

    goto LABEL_7;
  }

  if ((v9 != 0) != (v10 == 0))
  {
    v12 = [(NSUUID *)v9 isEqual:v10];

    if ((v12 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_7:
    ucat = self->_ucat;
    if (ucat->var0 > 30)
    {
      goto LABEL_15;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(self->_ucat, 0x1Eu))
      {
LABEL_15:
        connectionLatency = self->_connectionLatency;
        if (!connectionLatency)
        {
LABEL_27:
          self->_guardConnected = 1;
          [(CUBLEConnection *)self _run];
          goto LABEL_28;
        }

        if (connectionLatency == 3)
        {
          v26 = 2;
        }

        else
        {
          v26 = connectionLatency == 2;
        }

        v27 = self->_ucat;
        if (v27->var0 <= 30)
        {
          if (v27->var0 == -1)
          {
            if (!_LogCategory_Initialize(self->_ucat, 0x1Eu))
            {
              goto LABEL_26;
            }

            v27 = self->_ucat;
          }

          identifier2 = [peripheralCopy identifier];
          LogPrintF(v27, "[CUBLEConnection centralManager:didConnectPeripheral:]", 0x1Eu, "Setting connection latency %@, %s (BT %d)\n", v29, v30, v31, v32, identifier2);
        }

LABEL_26:
        [managerCopy setDesiredConnectionLatency:v26 forPeripheral:peripheralCopy];
        goto LABEL_27;
      }

      ucat = self->_ucat;
    }

    identifier3 = [peripheralCopy identifier];
    LogPrintF(ucat, "[CUBLEConnection centralManager:didConnectPeripheral:]", 0x1Eu, "DidConnectPeripheral %@\n", v15, v16, v17, v18, identifier3);

    goto LABEL_15;
  }

LABEL_11:
  v19 = self->_ucat;
  if (v19->var0 > 60)
  {
    goto LABEL_28;
  }

  if (v19->var0 != -1)
  {
    goto LABEL_13;
  }

  if (_LogCategory_Initialize(self->_ucat, 0x3Cu))
  {
    v19 = self->_ucat;
LABEL_13:
    identifier4 = [peripheralCopy identifier];
    LogPrintF(v19, "[CUBLEConnection centralManager:didConnectPeripheral:]", 0x3Cu, "### DidConnectPeripheral wrong peripheral: %@ (not %@)\n", v21, v22, v23, v24, identifier4);
  }

LABEL_28:
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled)
  {
    goto LABEL_19;
  }

  state = [stateCopy state];
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_10;
      }

      ucat = self->_ucat;
    }

    if (state > 0xA)
    {
      v12 = "?";
    }

    else
    {
      v12 = off_1E73A3018[state];
    }

    LogPrintF(ucat, "[CUBLEConnection centralManagerDidUpdateState:]", 0x1Eu, "Bluetooth state changed: %s\n", v6, v7, v8, v9, v12);
  }

LABEL_10:
  if (state > 4)
  {
    if (state == 10 || state == 5)
    {
      [(CUBLEConnection *)self _run];
    }
  }

  else
  {
    if (state == 1)
    {
      v13 = "Bluetooth reset";
      v14 = 4294896145;
    }

    else
    {
      if (state != 4)
      {
        goto LABEL_19;
      }

      v13 = "Bluetooth powered off";
      v14 = 4294896144;
    }

    v15 = NSErrorWithOSStatusF(v14, v13, v4, v5, v6, v7, v8, v9, v16);
    [(CUBLEConnection *)self _reportError:v15];
  }

LABEL_19:
}

- (void)_completeWriteRequest:(id)request error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  ucat = self->_ucat;
  if (ucat->var0 <= 10)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[CUBLEConnection _completeWriteRequest:error:]", 0xAu, "Write completed: %{error}\n", v6, v7, v8, v9, errorCopy);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(ucat, 0xAu))
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  v12 = requestCopy[1];
  requestCopy[1] = errorCopy;

  completion = [requestCopy completion];
  [requestCopy setCompletion:0];
  if (completion)
  {
    completion[2](completion);
  }
}

- (void)_abortWritesWithError:(id)error
{
  v26 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (self->_writeRequestCurrent || [(NSMutableArray *)self->_writeRequests count])
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 != -1)
      {
LABEL_5:
        LogPrintF(ucat, "[CUBLEConnection _abortWritesWithError:]", 0x1Eu, "Abort writes: %{error}\n", v4, v5, v6, v7, errorCopy);
        goto LABEL_7;
      }

      if (_LogCategory_Initialize(ucat, 0x1Eu))
      {
        ucat = self->_ucat;
        goto LABEL_5;
      }
    }
  }

LABEL_7:
  v10 = self->_writeRequestCurrent;
  if (v10)
  {
    writeRequestCurrent = self->_writeRequestCurrent;
    self->_writeRequestCurrent = 0;

    [(CUBLEConnection *)self _completeWriteRequest:v10 error:errorCopy];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = self->_writeRequests;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      v16 = 0;
      v17 = v10;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v10 = *(*(&v21 + 1) + 8 * v16);

        [(CUBLEConnection *)self _completeWriteRequest:v10 error:errorCopy];
        ++v16;
        v17 = v10;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  [(NSMutableArray *)self->_writeRequests removeAllObjects];
  writeSource = self->_writeSource;
  if (writeSource && !self->_writeSuspended)
  {
    self->_writeSuspended = 1;
    dispatch_suspend(writeSource);
  }

  v19 = _Block_copy(self->_errorHandler);
  errorHandler = self->_errorHandler;
  self->_errorHandler = 0;

  if (v19)
  {
    v19[2](v19, errorCopy);
  }

  [(CUBLEConnection *)self _invalidated];
}

- (BOOL)_prepareWriteRequest:(id)request error:(id *)error
{
  v44 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  dataArray = [requestCopy dataArray];
  v8 = dataArray;
  if (!dataArray)
  {
    *(requestCopy + 34) = requestCopy + 16;
    LODWORD(v18) = [requestCopy bytesIOCount];
    goto LABEL_14;
  }

  v9 = [dataArray count];
  if (v9 <= [requestCopy bytesIOMaxCount])
  {
    v19 = requestCopy + 16;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v20 = v8;
    v21 = [v20 countByEnumeratingWithState:&v39 objects:v43 count:16];
    v22 = requestCopy + 16;
    if (v21)
    {
      v23 = v21;
      v24 = *v40;
      v22 = requestCopy + 16;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v40 != v24)
          {
            objc_enumerationMutation(v20);
          }

          v26 = *(*(&v39 + 1) + 8 * i);
          *v22 = [v26 bytes];
          *(v22 + 1) = [v26 length];
          v22 += 16;
        }

        v23 = [v20 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v23);
    }

    *(requestCopy + 34) = v19;
    v18 = (v22 - v19) >> 4;
LABEL_14:
    *(requestCopy + 70) = v18;
    *(requestCopy + 36) = 0;
    v27 = *(requestCopy + 1);
    *(requestCopy + 1) = 0;

    if (gLogCategory_CUBLEConnection > 10 || gLogCategory_CUBLEConnection == -1 && !_LogCategory_Initialize(&gLogCategory_CUBLEConnection, 0xAu))
    {
      goto LABEL_27;
    }

    v32 = *(requestCopy + 70);
    if (v32)
    {
      v33 = 0;
      v34 = 16 * v32;
      v35 = (*(requestCopy + 34) + 8);
      do
      {
        v36 = *v35;
        v35 += 2;
        v33 += v36;
        v34 -= 16;
      }

      while (v34);
    }

    ucat = self->_ucat;
    if (ucat->var0 > 10)
    {
      goto LABEL_27;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0xAu))
      {
        goto LABEL_27;
      }

      ucat = self->_ucat;
      v32 = *(requestCopy + 70);
    }

    LogPrintF(ucat, "[CUBLEConnection _prepareWriteRequest:error:]", 0xAu, "Write prepared (%d iov, %zu total)\n", v28, v29, v30, v31, v32);
LABEL_27:
    v17 = 1;
    goto LABEL_28;
  }

  if (error)
  {
    bytesIOMaxCount = [requestCopy bytesIOMaxCount];
    NSErrorWithOSStatusF(4294960532, "Too many write elements (%zu max)", v11, v12, v13, v14, v15, v16, bytesIOMaxCount);
    *error = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_28:

  return v17;
}

- (void)_processWrites
{
  v3 = 4;
  do
  {
    v4 = self->_writeRequestCurrent;
    if (!v4)
    {
      firstObject = [(NSMutableArray *)self->_writeRequests firstObject];
      if (!firstObject)
      {
        if (!self->_writeSuspended)
        {
          self->_writeSuspended = 1;
          dispatch_suspend(self->_writeSource);
        }

        v4 = 0;
        goto LABEL_37;
      }

      v4 = firstObject;
      [(NSMutableArray *)self->_writeRequests removeObjectAtIndex:0];
      v31 = 0;
      [(CUBLEConnection *)self _prepareWriteRequest:v4 error:&v31];
      v14 = v31;
      if (v14)
      {
        v15 = v14;
        goto LABEL_24;
      }

      objc_storeStrong(&self->_writeRequestCurrent, v4);
    }

    v11 = SocketWriteData(self->_socketFD, &v4->_iop, &v4->_ion);
    ucat = self->_ucat;
    if (ucat->var0 <= 20)
    {
      if (ucat->var0 != -1)
      {
        goto LABEL_5;
      }

      if (_LogCategory_Initialize(ucat, 0x14u))
      {
        ucat = self->_ucat;
LABEL_5:
        LogPrintF(ucat, "[CUBLEConnection _processWrites]", 0x14u, "Write socket %d, pre-ion %d, post-ion %d, %#m\n", v7, v8, v9, v10, self->_socketFD);
      }
    }

    if (v11)
    {
      if (v11 == 35)
      {
        if (self->_writeSuspended)
        {
          self->_writeSuspended = 0;
          dispatch_resume(self->_writeSource);
        }
      }

      else
      {
        v29 = NSErrorWithOSStatusF(v11, "Write failed", v5, v6, v7, v8, v9, v10, v30);
        [(CUBLEConnection *)self _abortWritesWithError:v29];
      }

LABEL_37:

      return;
    }

    if (![(CUWriteRequest *)v4 endOfData])
    {
      goto LABEL_20;
    }

    v20 = self->_ucat;
    if (v20->var0 <= 20)
    {
      if (v20->var0 != -1)
      {
        goto LABEL_14;
      }

      if (_LogCategory_Initialize(v20, 0x14u))
      {
        v20 = self->_ucat;
LABEL_14:
        LogPrintF(v20, "[CUBLEConnection _processWrites]", 0x14u, "Shutdown socket %d\n", v16, v17, v18, v19, self->_socketFD);
      }
    }

    if (shutdown(self->_socketFD, 1))
    {
      if (!*__error())
      {
        v27 = 4294960596;
LABEL_22:
        v15 = NSErrorWithOSStatusF(v27, "shutdown() failed", v21, v22, v23, v24, v25, v26, v30);
        goto LABEL_23;
      }

      v27 = *__error();
      if (v27)
      {
        goto LABEL_22;
      }
    }

LABEL_20:
    v15 = 0;
LABEL_23:
    writeRequestCurrent = self->_writeRequestCurrent;
    self->_writeRequestCurrent = 0;

LABEL_24:
    [(CUBLEConnection *)self _completeWriteRequest:v4 error:v15];

    --v3;
  }

  while (v3);
  if (self->_writeSuspended)
  {
    self->_writeSuspended = 0;
    dispatch_resume(self->_writeSource);
  }
}

- (void)writeEndOfDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(CUWriteRequest);
  [(CUWriteRequest *)v5 setEndOfData:1];
  if (completionCopy)
  {
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __48__CUBLEConnection_writeEndOfDataWithCompletion___block_invoke;
    v9 = &unk_1E73A49A0;
    v11 = completionCopy;
    v10 = v5;
    [(CUWriteRequest *)v10 setCompletion:&v6];
  }

  [(CUBLEConnection *)self writeWithRequest:v5, v6, v7, v8, v9];
}

void __48__CUBLEConnection_writeEndOfDataWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

- (void)writeWithRequest:(id)request
{
  requestCopy = request;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__CUBLEConnection_writeWithRequest___block_invoke;
  v7[3] = &unk_1E73A49F0;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(dispatchQueue, v7);
}

void __36__CUBLEConnection_writeWithRequest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  if (*(v9 + 25) == 1)
  {
    v10 = *(a1 + 40);
    v13 = NSErrorWithOSStatusF(4294960573, "Invalidated (W)", a3, a4, a5, a6, a7, a8, v12);
    [v9 _completeWriteRequest:v10 error:v13];
  }

  else
  {
    [*(v9 + 104) addObject:*(a1 + 40)];
    v11 = *(a1 + 32);
    if ((v11[18] & 0x80000000) == 0)
    {

      [v11 _processWrites];
    }
  }
}

- (void)_completeReadRequest:(id)request error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  ucat = self->_ucat;
  if (ucat->var0 <= 10)
  {
    v8 = requestCopy;
    if (ucat->var0 != -1)
    {
LABEL_3:
      v9 = [v8 length];
      LogPrintF(ucat, "[CUBLEConnection _completeReadRequest:error:]", 0xAu, "Read completed: %zu byte(s), %{error}\n", v10, v11, v12, v13, v9);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(self->_ucat, 0xAu))
    {
      ucat = self->_ucat;
      v8 = requestCopy;
      goto LABEL_3;
    }
  }

LABEL_5:
  v14 = requestCopy[2];
  requestCopy[2] = errorCopy;

  completion = [requestCopy completion];
  [requestCopy setCompletion:0];
  if (completion)
  {
    completion[2](completion);
  }
}

- (BOOL)_processReadStatus
{
  while (1)
  {
    v3 = recv(self->_socketFD, &v25, 1uLL, 2);
    if ((v3 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!*__error())
    {
      v4 = 4294960596;
LABEL_12:
      v15 = _Block_copy(self->_errorHandler);
      errorHandler = self->_errorHandler;
      self->_errorHandler = 0;

      if (v15)
      {
        v23 = NSErrorWithOSStatusF(v4, "Read status error", v17, v18, v19, v20, v21, v22, v24);
        v15[2](v15, v23);
      }

      return 1;
    }

    v4 = *__error();
    if (v4 != 4)
    {
      if (!v4)
      {
        return 1;
      }

      if (v4 == 35)
      {
        return 0;
      }

      goto LABEL_12;
    }
  }

  if (!v3)
  {
    v6 = _Block_copy(self->_errorHandler);
    v7 = self->_errorHandler;
    self->_errorHandler = 0;

    if (v6)
    {
      v14 = NSErrorWithOSStatusF(4294960543, "Read status EOF", v8, v9, v10, v11, v12, v13, v24);
      v6[2](v6, v14);
    }
  }

  return 1;
}

- (void)_abortReadsWithError:(id)error
{
  v26 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (self->_readRequestCurrent || [(NSMutableArray *)self->_readRequests count])
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 != -1)
      {
LABEL_5:
        LogPrintF(ucat, "[CUBLEConnection _abortReadsWithError:]", 0x1Eu, "Abort reads: %{error}\n", v4, v5, v6, v7, errorCopy);
        goto LABEL_7;
      }

      if (_LogCategory_Initialize(ucat, 0x1Eu))
      {
        ucat = self->_ucat;
        goto LABEL_5;
      }
    }
  }

LABEL_7:
  v10 = self->_readRequestCurrent;
  if (v10)
  {
    readRequestCurrent = self->_readRequestCurrent;
    self->_readRequestCurrent = 0;

    [(CUBLEConnection *)self _completeReadRequest:v10 error:errorCopy];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = self->_readRequests;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      v16 = 0;
      v17 = v10;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v10 = *(*(&v21 + 1) + 8 * v16);

        [(CUBLEConnection *)self _completeReadRequest:v10 error:errorCopy];
        ++v16;
        v17 = v10;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  [(NSMutableArray *)self->_readRequests removeAllObjects];
  readSource = self->_readSource;
  if (readSource && !self->_readSuspended)
  {
    self->_readSuspended = 1;
    dispatch_suspend(readSource);
  }

  v19 = _Block_copy(self->_errorHandler);
  errorHandler = self->_errorHandler;
  self->_errorHandler = 0;

  if (v19)
  {
    v19[2](v19, errorCopy);
  }

  [(CUBLEConnection *)self _invalidated];
}

- (void)_prepareReadRequest:(id)request
{
  requestCopy = request;
  if ([requestCopy bufferBytes])
  {
    requestCopy[1] = [requestCopy bufferBytes];
    [requestCopy setData:0];
  }

  else
  {
    bufferData = [requestCopy bufferData];

    if (bufferData)
    {
      bufferData2 = [requestCopy bufferData];
      v6 = [bufferData2 length];
      maxLength = [requestCopy maxLength];

      if (v6 < maxLength)
      {
        maxLength2 = [requestCopy maxLength];
        bufferData3 = [requestCopy bufferData];
        [bufferData3 setLength:maxLength2];
      }
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:{objc_msgSend(requestCopy, "maxLength")}];
      [requestCopy setBufferData:v10];
    }

    bufferData4 = [requestCopy bufferData];
    requestCopy[1] = [bufferData4 mutableBytes];

    bufferData5 = [requestCopy bufferData];
    [requestCopy setData:bufferData5];
  }

  v13 = requestCopy[2];
  requestCopy[2] = 0;
  requestCopy[3] = 0;

  ucat = self->_ucat;
  if (ucat->var0 <= 10)
  {
    v15 = requestCopy;
    if (ucat->var0 != -1)
    {
LABEL_10:
      minLength = [v15 minLength];
      [requestCopy maxLength];
      LogPrintF(ucat, "[CUBLEConnection _prepareReadRequest:]", 0xAu, "Read prepared (%zu min, %zu max)\n", v17, v18, v19, v20, minLength);
      goto LABEL_12;
    }

    if (_LogCategory_Initialize(self->_ucat, 0xAu))
    {
      ucat = self->_ucat;
      v15 = requestCopy;
      goto LABEL_10;
    }
  }

LABEL_12:
}

- (void)_processReads:(BOOL)reads
{
  readsCopy = reads;
  v5 = 0;
  while (1)
  {
    v6 = self->_readRequestCurrent;
    if (v6)
    {
      goto LABEL_5;
    }

    firstObject = [(NSMutableArray *)self->_readRequests firstObject];
    if (!firstObject)
    {
      if (readsCopy)
      {
        if (v5)
        {
          readSuspended = self->_readSuspended;
        }

        else
        {
          _processReadStatus = [(CUBLEConnection *)self _processReadStatus];
          readSuspended = self->_readSuspended;
          if (_processReadStatus)
          {
            if (!self->_readSuspended)
            {
              self->_readSuspended = 1;
              dispatch_suspend(self->_readSource);
            }

            goto LABEL_37;
          }
        }

        if (readSuspended)
        {
          self->_readSuspended = 0;
          dispatch_resume(self->_readSource);
        }
      }

LABEL_37:
      v24 = 0;
      goto LABEL_21;
    }

    obja = firstObject;
    [(NSMutableArray *)self->_readRequests removeObjectAtIndex:0];
    [(CUBLEConnection *)self _prepareReadRequest:obja];
    objc_storeStrong(&self->_readRequestCurrent, obja);
    v6 = obja;
LABEL_5:
    obj = v6;
    Data = SocketReadDataEx(self->_socketFD, v6->_bufferPtr, [(CUReadRequest *)v6 minLength], [(CUReadRequest *)v6 maxLength], &v6->_length);
    ucat = self->_ucat;
    if (ucat->var0 > 20)
    {
      goto LABEL_9;
    }

    if (ucat->var0 != -1)
    {
      goto LABEL_7;
    }

    if (_LogCategory_Initialize(self->_ucat, 0x14u))
    {
      ucat = self->_ucat;
LABEL_7:
      socketFD = self->_socketFD;
      [(CUReadRequest *)obj minLength];
      [(CUReadRequest *)obj maxLength];
      LogPrintF(ucat, "[CUBLEConnection _processReads:]", 0x14u, "Read socket %d, %zu min, %zu max, %zu offset, %zu nread, %#m\n", v17, v18, v19, v20, socketFD);
    }

LABEL_9:
    if (Data)
    {
      break;
    }

    readRequestCurrent = self->_readRequestCurrent;
    self->_readRequestCurrent = 0;

    [(CUBLEConnection *)self _completeReadRequest:obj error:0];
    if (++v5 == 4)
    {
      if (self->_readSuspended)
      {
        self->_readSuspended = 0;
        readSource = self->_readSource;

        dispatch_resume(readSource);
      }

      return;
    }
  }

  if (Data == 35)
  {
    if (self->_readSuspended)
    {
      self->_readSuspended = 0;
      dispatch_resume(self->_readSource);
    }
  }

  else
  {
    if (Data == -6753)
    {
      v22 = "Read EOF";
    }

    else
    {
      v22 = "Read error";
    }

    v23 = NSErrorWithOSStatusF(Data, v22, v8, v9, v10, v11, v12, v13, v28);
    [(CUBLEConnection *)self _abortReadsWithError:v23];
  }

  v24 = obj;
LABEL_21:
}

- (void)readWithRequest:(id)request
{
  requestCopy = request;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__CUBLEConnection_readWithRequest___block_invoke;
  v7[3] = &unk_1E73A49F0;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(dispatchQueue, v7);
}

void __35__CUBLEConnection_readWithRequest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  if (*(v9 + 25) == 1)
  {
    v10 = *(a1 + 40);
    v13 = NSErrorWithOSStatusF(4294960573, "Invalidated (R)", a3, a4, a5, a6, a7, a8, v12);
    [v9 _completeReadRequest:v10 error:v13];
  }

  else
  {
    [*(v9 + 64) addObject:*(a1 + 40)];
    v11 = *(a1 + 32);
    if ((v11[18] & 0x80000000) == 0)
    {

      [v11 _processReads:0];
    }
  }
}

- (BOOL)_runSetupChannel
{
  v8 = 0;
  v3 = [(CUBLEConnection *)self _setupIOAndReturnError:&v8];
  v4 = v8;
  if (v3)
  {
    v5 = _Block_copy(self->_activateCompletion);
    activateCompletion = self->_activateCompletion;
    self->_activateCompletion = 0;

    if (v5)
    {
      v5[2](v5, 0);
    }
  }

  else
  {
    [(CUBLEConnection *)self _reportError:v4];
  }

  return v3;
}

- (BOOL)_runConnectStart
{
  v29[1] = *MEMORY[0x1E69E9840];
  v3 = self->_destinationUUID;
  centralManager = self->_centralManager;
  v29[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  v6 = [(CBCentralManager *)centralManager retrievePeripheralsWithIdentifiers:v5];

  firstObject = [v6 firstObject];
  if (firstObject)
  {
    objc_storeStrong(&self->_peripheral, firstObject);
    [(CBPeripheral *)self->_peripheral setDelegate:self];
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v15 = getCBConnectPeripheralOptionClientBundleID();

    if (v15)
    {
      clientBundleID = self->_clientBundleID;
      if (clientBundleID)
      {
        v17 = getCBConnectPeripheralOptionClientBundleID;
        v18 = clientBundleID;
        v19 = v17();
        [v14 setObject:v18 forKeyedSubscript:v19];
      }
    }

    v20 = getCBConnectPeripheralOptionConnectionUseCase();

    if (v20 && self->_clientUseCase)
    {
      v25 = [MEMORY[0x1E696AD98] numberWithInteger:?];
      v26 = getCBConnectPeripheralOptionConnectionUseCase();
      [v14 setObject:v25 forKeyedSubscript:v26];
    }

    ucat = self->_ucat;
    if (ucat->var0 > 30)
    {
      goto LABEL_13;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_13;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUBLEConnection _runConnectStart]", 0x1Eu, "Connecting to %@, %##@\n", v21, v22, v23, v24, v3);
LABEL_13:
    [(CBCentralManager *)self->_centralManager connectPeripheral:firstObject options:v14];
    goto LABEL_14;
  }

  v14 = NSErrorWithOSStatusF(4294960569, "No peripheral %@", v7, v8, v9, v10, v11, v12, v3);
  [(CUBLEConnection *)self _reportError:v14];
LABEL_14:

  return firstObject != 0;
}

- (void)_run
{
  while (1)
  {
    state = self->_state;
    if (state > 13)
    {
      if (state <= 15)
      {
        if (state == 14)
        {
          [(CBPeripheral *)self->_peripheral openL2CAPChannel:self->_destinationPSM];
          goto LABEL_27;
        }

        if (self->_l2capChannel)
        {
          self->_state = 16;
        }
      }

      else
      {
        switch(state)
        {
          case 0x10:
            self->_state = 17;
            break;
          case 0x11:
            if (![(CUBLEConnection *)self _runSetupChannel])
            {
              break;
            }

LABEL_27:
            v9 = self->_state + 1;
LABEL_28:
            self->_state = v9;
            break;
          case 0x12:
            [(CUBLEConnection *)self _processReads:0];
            [(CUBLEConnection *)self _processWrites];
            break;
        }
      }
    }

    else if (state <= 10)
    {
      if (!state)
      {
        self->_state = 10;
        goto LABEL_29;
      }

      if (state == 10)
      {
        state = [(CBCentralManager *)self->_centralManager state];
        if (state == 10 || state == 5)
        {
          goto LABEL_27;
        }
      }
    }

    else if (state == 11)
    {
      if ([(CUBLEConnection *)self _runConnectStart])
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (state != 12)
      {
        self->_state = 14;
        goto LABEL_29;
      }

      if (self->_guardConnected)
      {
        v9 = 13;
        goto LABEL_28;
      }
    }

LABEL_29:
    if (self->_state == state)
    {
      break;
    }

    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 != -1)
      {
        goto LABEL_32;
      }

      if (_LogCategory_Initialize(ucat, 0x1Eu))
      {
        ucat = self->_ucat;
LABEL_32:
        v11 = "?";
        if (state <= 0x12)
        {
          v11 = off_1E73A2B60[state];
        }

        LogPrintF(ucat, "[CUBLEConnection _run]", 0x1Eu, "State: %s -> %s\n", v2, v3, v4, v5, v11);
      }
    }
  }
}

- (void)_reportError:(id)error
{
  errorCopy = error;
  ucat = self->_ucat;
  if (ucat->var0 <= 90)
  {
    v9 = errorCopy;
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[CUBLEConnection _reportError:]", 0x5Au, "Error: %{error}\n", v4, v5, v6, v7, v9);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(ucat, 0x5Au))
    {
      ucat = self->_ucat;
      v9 = errorCopy;
      goto LABEL_3;
    }
  }

LABEL_5:
  self->_state = 3;
  v10 = _Block_copy(self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v10)
  {
    v10[2](v10, errorCopy);
  }

  else
  {
    v12 = _Block_copy(self->_errorHandler);
    errorHandler = self->_errorHandler;
    self->_errorHandler = 0;

    if (v12)
    {
      v12[2](v12, errorCopy);
    }
  }

  [(CUBLEConnection *)self _abortReadsWithError:errorCopy];
  [(CUBLEConnection *)self _abortWritesWithError:errorCopy];
}

- (BOOL)_setupIOAndReturnError:(id *)error
{
  socketFD = [(CBL2CAPChannel *)self->_l2capChannel socketFD];
  if (socketFD < 0)
  {
    if (error)
    {
      NSErrorWithOSStatusF(4294960596, "No socket for L2CAP channel: %@", v6, v7, v8, v9, v10, v11, self->_l2capChannel);
      v21 = LABEL_15:;
      v22 = 0;
      goto LABEL_16;
    }

    return 0;
  }

  v12 = socketFD;
  self->_socketFD = socketFD;
  v43 = 1;
  if (setsockopt(socketFD, 0xFFFF, 4130, &v43, 4u))
  {
    if (!*__error())
    {
      v19 = 4294960596;
      if (error)
      {
LABEL_13:
        v20 = "Set SO_NOSIGPIPE failed";
        goto LABEL_14;
      }

      return 0;
    }

    v19 = *__error();
    if (v19)
    {
      if (!error)
      {
        return 0;
      }

      goto LABEL_13;
    }
  }

  v19 = SocketSetNonBlocking(v12, 1);
  if (v19)
  {
    if (error)
    {
      v20 = "Make non-blocking failed";
LABEL_14:
      NSErrorWithOSStatusF(v19, v20, v13, v14, v15, v16, v17, v18, v38);
      goto LABEL_15;
    }

    return 0;
  }

  v23 = dispatch_source_create(MEMORY[0x1E69E96F8], v12, 0, self->_dispatchQueue);
  readSource = self->_readSource;
  self->_readSource = v23;

  v25 = self->_readSource;
  if (!v25)
  {
    if (error)
    {
      v20 = "Create read source failed";
      v19 = 4294960550;
      goto LABEL_14;
    }

    return 0;
  }

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __42__CUBLEConnection__setupIOAndReturnError___block_invoke;
  handler[3] = &unk_1E73A4F68;
  handler[4] = self;
  dispatch_source_set_event_handler(v25, handler);
  v26 = self->_readSource;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __42__CUBLEConnection__setupIOAndReturnError___block_invoke_2;
  v41[3] = &unk_1E73A4F68;
  v41[4] = self;
  dispatch_source_set_cancel_handler(v26, v41);
  dispatch_resume(self->_readSource);
  v27 = dispatch_source_create(MEMORY[0x1E69E9730], v12, 0, self->_dispatchQueue);
  writeSource = self->_writeSource;
  self->_writeSource = v27;

  v35 = self->_writeSource;
  v22 = v35 != 0;
  if (v35)
  {
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __42__CUBLEConnection__setupIOAndReturnError___block_invoke_3;
    v40[3] = &unk_1E73A4F68;
    v40[4] = self;
    dispatch_source_set_event_handler(v35, v40);
    v36 = self->_writeSource;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __42__CUBLEConnection__setupIOAndReturnError___block_invoke_4;
    v39[3] = &unk_1E73A4F68;
    v39[4] = self;
    dispatch_source_set_cancel_handler(v36, v39);
    self->_writeSuspended = 1;
    return v22;
  }

  if (!error)
  {
    return v22;
  }

  v21 = NSErrorWithOSStatusF(4294960549, "Create write source failed", v29, v30, v31, v32, v33, v34, v38);
LABEL_16:
  *error = v21;
  return v22;
}

uint64_t __42__CUBLEConnection__setupIOAndReturnError___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

uint64_t __42__CUBLEConnection__setupIOAndReturnError___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  *(v2 + 80) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (BOOL)_startConnectingAndReturnError:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (!self->_destinationUUID)
  {
    if (!error)
    {
      return 0;
    }

    v17 = "No destination UUID";
LABEL_9:
    v18 = 4294960591;
LABEL_10:
    v19 = NSErrorWithOSStatusF(v18, v17, error, v3, v4, v5, v6, v7, v21);
    v20 = v19;
    result = 0;
    *error = v19;
    return result;
  }

  if (!self->_destinationPSM)
  {
    if (!error)
    {
      return 0;
    }

    v17 = "No destination PSM";
    goto LABEL_9;
  }

  v10 = objc_alloc(getCBCentralManagerClass[0]());
  dispatchQueue = self->_dispatchQueue;
  v12 = getCBManagerNeedsRestrictedStateOperation();
  v22 = v12;
  v23[0] = MEMORY[0x1E695E118];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v14 = [v10 initWithDelegate:self queue:dispatchQueue options:v13];
  centralManager = self->_centralManager;
  self->_centralManager = v14;

  if (self->_centralManager)
  {
    [(CUBLEConnection *)self _run];
    return 1;
  }

  if (error)
  {
    v17 = "Create CBCentralManager failed";
    v18 = 4294960596;
    goto LABEL_10;
  }

  return 0;
}

- (void)_invalidated
{
  if (!self->_invalidateDone && !self->_readSource && !self->_writeSource && !self->_readRequestCurrent && ![(NSMutableArray *)self->_readRequests count]&& !self->_writeRequestCurrent && ![(NSMutableArray *)self->_writeRequests count])
  {
    serverInvalidationHandler = self->_serverInvalidationHandler;
    if (serverInvalidationHandler)
    {
      serverInvalidationHandler[2]();
    }

    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2]();
    }

    errorHandler = self->_errorHandler;
    self->_errorHandler = 0;

    v6 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    v7 = self->_serverInvalidationHandler;
    self->_serverInvalidationHandler = 0;

    self->_invalidateDone = 1;
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x1Eu))
        {
          return;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUBLEConnection _invalidated]", 0x1Eu, "Invalidated\n", v8, v9, v10, v11, v14);
    }
  }
}

- (void)_invalidate
{
  if (self->_invalidateCalled)
  {
    return;
  }

  v22 = v6;
  self->_invalidateCalled = 1;
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_6;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUBLEConnection _invalidate]", 0x1Eu, "Invalidating\n", v2, v3, v4, v5, v6);
  }

LABEL_6:
  if (self->_peripheral)
  {
    self->_guardConnected = 0;
    [(CBCentralManager *)self->_centralManager cancelPeripheralConnection:?];
  }

  [(CBCentralManager *)self->_centralManager setDelegate:0, v22];
  centralManager = self->_centralManager;
  self->_centralManager = 0;

  errorHandler = self->_errorHandler;
  self->_errorHandler = 0;

  [(CBPeripheral *)self->_peripheral setDelegate:0];
  peripheral = self->_peripheral;
  self->_peripheral = 0;

  v19 = NSErrorWithOSStatusF(4294960573, "Invalidated (I)", v13, v14, v15, v16, v17, v18, v23);
  [(CUBLEConnection *)self _reportError:v19];

  readSource = self->_readSource;
  if (readSource)
  {
    dispatch_source_cancel(readSource);
    if (self->_readSuspended)
    {
      self->_readSuspended = 0;
      dispatch_resume(self->_readSource);
    }
  }

  writeSource = self->_writeSource;
  if (writeSource)
  {
    dispatch_source_cancel(writeSource);
    if (self->_writeSuspended)
    {
      self->_writeSuspended = 0;
      dispatch_resume(self->_writeSource);
    }
  }

  [(CUBLEConnection *)self _invalidated];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__CUBLEConnection_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (BOOL)activateDirectAndReturnError:(id *)error
{
  l2capChannel = self->_l2capChannel;
  ucat = self->_ucat;
  var0 = ucat->var0;
  if (l2capChannel)
  {
    if (var0 > 30)
    {
      goto LABEL_9;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize(self->_ucat, 0x1Eu))
      {
LABEL_9:
        v41 = 0;
        v18 = [(CUBLEConnection *)self _setupIOAndReturnError:&v41];
        writeRequests = v41;
        if (v18)
        {
          v24 = _Block_copy(self->_activateCompletion);
          activateCompletion = self->_activateCompletion;
          self->_activateCompletion = 0;

          if (v24)
          {
            v24[2](v24, 0);
          }

          goto LABEL_18;
        }

        v26 = self->_ucat;
        if (v26->var0 <= 90)
        {
          if (v26->var0 != -1)
          {
LABEL_15:
            LogPrintF(v26, "[CUBLEConnection activateDirectAndReturnError:]", 0x5Au, "### Activate failed: %{error}\n", v19, v20, v21, v22, writeRequests);
            goto LABEL_23;
          }

          if (_LogCategory_Initialize(v26, 0x5Au))
          {
            v26 = self->_ucat;
            goto LABEL_15;
          }
        }

LABEL_23:
        if (error)
        {
LABEL_24:
          v37 = writeRequests;
          v35 = 0;
          *error = writeRequests;
          goto LABEL_28;
        }

LABEL_27:
        v35 = 0;
        goto LABEL_28;
      }

      ucat = self->_ucat;
      l2capChannel = self->_l2capChannel;
    }

    v12 = [(CBL2CAPChannel *)l2capChannel PSM];
    peer = [(CBL2CAPChannel *)self->_l2capChannel peer];
    identifier = [peer identifier];
    LogPrintF(ucat, "[CUBLEConnection activateDirectAndReturnError:]", 0x1Eu, "Activate incoming PSM 0x%04X, peer %@\n", v14, v15, v16, v17, v12);

    goto LABEL_9;
  }

  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_7:
      LogPrintF(ucat, "[CUBLEConnection activateDirectAndReturnError:]", 0x1Eu, "Activate outgoing PSM 0x%04X, peer %@\n", v3, v4, v5, v6, self->_destinationPSM);
      goto LABEL_17;
    }

    if (_LogCategory_Initialize(self->_ucat, 0x1Eu))
    {
      ucat = self->_ucat;
      goto LABEL_7;
    }
  }

LABEL_17:
  v40 = 0;
  v27 = [(CUBLEConnection *)self _startConnectingAndReturnError:&v40];
  writeRequests = v40;
  if (!v27)
  {
    v36 = self->_ucat;
    if (v36->var0 > 90)
    {
      goto LABEL_26;
    }

    if (v36->var0 == -1)
    {
      if (!_LogCategory_Initialize(v36, 0x5Au))
      {
LABEL_26:
        if (error)
        {
          goto LABEL_24;
        }

        goto LABEL_27;
      }

      v36 = self->_ucat;
    }

    LogPrintF(v36, "[CUBLEConnection activateDirectAndReturnError:]", 0x5Au, "### Activate failed: %{error}\n", v28, v29, v30, v31, writeRequests);
    goto LABEL_26;
  }

LABEL_18:

  v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
  readRequests = self->_readRequests;
  self->_readRequests = v32;

  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  writeRequests = self->_writeRequests;
  self->_writeRequests = v34;
  v35 = 1;
LABEL_28:

  return v35;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__CUBLEConnection_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E73A49A0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __42__CUBLEConnection_activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = *(a1 + 32);
  v9 = 0;
  [v5 activateDirectAndReturnError:&v9];
  v6 = v9;
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
    *(v7 + 8) = 0;

    (*(*(a1 + 40) + 16))();
  }
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v5 = qword_1EADE91B8;
  v6 = labelCopy;
  [labelCopy UTF8String];
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v7, v8, v9, v10, v11, v12, v5);
}

- (NSString)description
{
  v27 = 12;
  v8 = self->_label;
  v9 = "-";
  v26 = 0;
  if (!v8)
  {
    v9 = "";
  }

  CUAppendF(&v26, &v27, "CUBLEConnection%s%@", v3, v4, v5, v6, v7, v9);
  v10 = v26;
  destinationUUID = self->_destinationUUID;
  if (destinationUUID)
  {
    identifier = destinationUUID;
LABEL_6:
    v25 = v10;
    CUAppendF(&v25, &v27, "Peer %@", v12, v13, v14, v15, v16, identifier);
    v19 = v25;

    v10 = v19;
    goto LABEL_7;
  }

  peer = [(CBL2CAPChannel *)self->_l2capChannel peer];
  identifier = [peer identifier];

  if (identifier)
  {
    goto LABEL_6;
  }

LABEL_7:
  destinationPSM = self->_destinationPSM;
  if (self->_destinationPSM || (destinationPSM = [(CBL2CAPChannel *)self->_l2capChannel PSM], destinationPSM))
  {
    v24 = v10;
    CUAppendF(&v24, &v27, "PSM 0x%X", v12, v13, v14, v15, v16, destinationPSM);
    v21 = v24;

    v10 = v21;
  }

  v22 = v10;

  return v22;
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
  v4.super_class = CUBLEConnection;
  [(CUBLEConnection *)&v4 dealloc];
}

- (CUBLEConnection)init
{
  v5.receiver = self;
  v5.super_class = CUBLEConnection;
  v2 = [(CUBLEConnection *)&v5 init];
  if (v2)
  {
    if (CUMainQueue_sOnce != -1)
    {
      dispatch_once(&CUMainQueue_sOnce, &__block_literal_global_23);
    }

    objc_storeStrong(&v2->_dispatchQueue, CUMainQueue_sQueue);
    v2->_socketFD = -1;
    v2->_ucat = &gLogCategory_CUBLEConnection;
    v3 = v2;
  }

  return v2;
}

@end