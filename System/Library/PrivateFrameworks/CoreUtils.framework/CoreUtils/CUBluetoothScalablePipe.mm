@interface CUBluetoothScalablePipe
- (BOOL)_prepareWriteRequest:(id)request error:(id *)error;
- (CUBluetoothScalablePipe)init;
- (int)_readBytes:(char *)bytes minLen:(unint64_t)len maxLen:(unint64_t)maxLen offset:(unint64_t *)offset;
- (int)_writeIOArray:(iovec *)array ioCount:(int *)count;
- (unint64_t)_writeBytes:(const char *)bytes length:(unint64_t)length;
- (void)_abortReadsWithError:(id)error;
- (void)_abortWritesWithError:(id)error;
- (void)_completeReadRequest:(id)request error:(id)error;
- (void)_completeWriteRequest:(id)request error:(id)error;
- (void)_ensureStarted;
- (void)_ensureStopped:(id)stopped;
- (void)_handleBTPeerHostStateChanged;
- (void)_invalidate;
- (void)_prepareReadRequest:(id)request;
- (void)_processReads;
- (void)_processWrites;
- (void)_setupPipe;
- (void)_tearDownPipe;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)readWithRequest:(id)request;
- (void)scalablePipeManager:(id)manager didRegisterEndpoint:(id)endpoint error:(id)error;
- (void)scalablePipeManager:(id)manager didUnregisterEndpoint:(id)endpoint;
- (void)scalablePipeManager:(id)manager pipeDidConnect:(id)connect;
- (void)scalablePipeManager:(id)manager pipeDidDisconnect:(id)disconnect error:(id)error;
- (void)scalablePipeManagerDidUpdateState:(id)state;
- (void)setLabel:(id)label;
- (void)writeWithRequest:(id)request;
@end

@implementation CUBluetoothScalablePipe

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
        goto LABEL_25;
      }

      v4 = firstObject;
      [(NSMutableArray *)self->_writeRequests removeObjectAtIndex:0];
      v20 = 0;
      [(CUBluetoothScalablePipe *)self _prepareWriteRequest:v4 error:&v20];
      v15 = v20;
      if (v15)
      {
        v16 = v15;
        [(CUBluetoothScalablePipe *)self _completeWriteRequest:v4 error:v15];
        goto LABEL_12;
      }

      objc_storeStrong(&self->_writeRequestCurrent, v4);
    }

    ion = v4->_ion;
    v12 = [(CUBluetoothScalablePipe *)self _writeIOArray:&v4->_iop ioCount:&v4->_ion];
    ucat = self->_ucat;
    if (ucat->var0 <= 9)
    {
      if (ucat->var0 != -1)
      {
        goto LABEL_5;
      }

      if (_LogCategory_Initialize(ucat, 9u))
      {
        ucat = self->_ucat;
LABEL_5:
        LogPrintF(ucat, "[CUBluetoothScalablePipe _processWrites]", 9u, "Write channel, pre-ion %d, post-ion %d, %#m\n", v8, v9, v10, v11, ion);
      }
    }

    if (v12)
    {
      if (v12 == 35)
      {
        if (self->_writeSuspended)
        {
          self->_writeSuspended = 0;
          dispatch_resume(self->_writeSource);
        }
      }

      else
      {
        v18 = NSErrorWithOSStatusF(v12, "Write failed", v6, v7, v8, v9, v10, v11, v19);
        [(CUBluetoothScalablePipe *)self _abortWritesWithError:v18];
      }

LABEL_25:

      return;
    }

    writeRequestCurrent = self->_writeRequestCurrent;
    self->_writeRequestCurrent = 0;

    [(CUBluetoothScalablePipe *)self _completeWriteRequest:v4 error:0];
    v16 = 0;
LABEL_12:

    --v3;
  }

  while (v3);
  if (self->_writeSuspended)
  {
    self->_writeSuspended = 0;
    dispatch_resume(self->_writeSource);
  }
}

- (void)_processReads
{
  v3 = 4;
  while (1)
  {
    v4 = self->_readRequestCurrent;
    if (v4)
    {
      goto LABEL_5;
    }

    firstObject = [(NSMutableArray *)self->_readRequests firstObject];
    if (!firstObject)
    {
      break;
    }

    obja = firstObject;
    [(NSMutableArray *)self->_readRequests removeObjectAtIndex:0];
    [(CUBluetoothScalablePipe *)self _prepareReadRequest:obja];
    objc_storeStrong(&self->_readRequestCurrent, obja);
    v4 = obja;
LABEL_5:
    obj = v4;
    v12 = [(CUBluetoothScalablePipe *)self _readBytes:v4->_bufferPtr minLen:[(CUReadRequest *)v4 minLength] maxLen:[(CUReadRequest *)v4 maxLength] offset:&v4->_length];
    ucat = self->_ucat;
    if (ucat->var0 > 9)
    {
      goto LABEL_9;
    }

    if (ucat->var0 != -1)
    {
      goto LABEL_7;
    }

    if (_LogCategory_Initialize(self->_ucat, 9u))
    {
      ucat = self->_ucat;
LABEL_7:
      minLength = [(CUReadRequest *)obj minLength];
      [(CUReadRequest *)obj maxLength];
      LogPrintF(ucat, "[CUBluetoothScalablePipe _processReads]", 9u, "Read channel, %zu min, %zu max, %zu offset, %zu nread, %#m\n", v15, v16, v17, v18, minLength);
    }

LABEL_9:
    if (v12)
    {
      if (v12 == 35)
      {
        if (self->_readSuspended)
        {
          self->_readSuspended = 0;
          dispatch_resume(self->_readSource);
        }
      }

      else
      {
        v20 = NSErrorWithOSStatusF(v12, "Read failed", v6, v7, v8, v9, v10, v11, v23);
        [(CUBluetoothScalablePipe *)self _abortReadsWithError:v20];
      }

      v21 = obj;
      goto LABEL_18;
    }

    readRequestCurrent = self->_readRequestCurrent;
    self->_readRequestCurrent = 0;

    [(CUBluetoothScalablePipe *)self _completeReadRequest:obj error:0];
    if (!--v3)
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

  if (!self->_readSuspended)
  {
    self->_readSuspended = 1;
    dispatch_suspend(self->_readSource);
  }

  v21 = 0;
LABEL_18:
}

- (void)scalablePipeManager:(id)manager pipeDidDisconnect:(id)disconnect error:(id)error
{
  disconnectCopy = disconnect;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    name = [disconnectCopy name];
    v9 = [name isEqual:self->_identifier];

    ucat = self->_ucat;
    var0 = ucat->var0;
    if (v9)
    {
      if (var0 <= 30)
      {
        v12 = disconnectCopy;
        if (var0 == -1)
        {
          if (!_LogCategory_Initialize(self->_ucat, 0x1Eu))
          {
            goto LABEL_10;
          }

          ucat = self->_ucat;
          v12 = disconnectCopy;
        }

        name2 = [v12 name];
        peer = [disconnectCopy peer];
        identifier = [peer identifier];
        LogPrintF(ucat, "[CUBluetoothScalablePipe scalablePipeManager:pipeDidDisconnect:error:]", 0x1Eu, "Pipe disconnected: ID '%@', Peer %@, %{error}\n", v15, v16, v17, v18, name2);
      }

LABEL_10:
      name3 = errorCopy;
      if (!name3)
      {
        name3 = NSErrorWithOSStatusF(4294960543, "Pipe disconnected", v24, v25, v26, v27, v28, v29, v32);
      }

      [(CUBluetoothScalablePipe *)self _abortReadsWithError:name3];
      [(CUBluetoothScalablePipe *)self _abortWritesWithError:name3];
      [(CUBluetoothScalablePipe *)self _tearDownPipe];
      btPipe = self->_btPipe;
      self->_btPipe = 0;

      peerIdentifier = self->_peerIdentifier;
      self->_peerIdentifier = 0;

      goto LABEL_13;
    }

    if (var0 > 30)
    {
      goto LABEL_14;
    }

    if (var0 != -1)
    {
LABEL_8:
      name3 = [disconnectCopy name];
      LogPrintF(ucat, "[CUBluetoothScalablePipe scalablePipeManager:pipeDidDisconnect:error:]", 0x1Eu, "Ignoring pipeDidDisconnect for unknown identifier ('%@' not '%@'): %{error}\n", v20, v21, v22, v23, name3);
LABEL_13:

      goto LABEL_14;
    }

    if (_LogCategory_Initialize(self->_ucat, 0x1Eu))
    {
      ucat = self->_ucat;
      goto LABEL_8;
    }
  }

LABEL_14:
}

- (void)scalablePipeManager:(id)manager pipeDidConnect:(id)connect
{
  connectCopy = connect;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v7 = connectCopy;
  if (!self->_invalidateCalled)
  {
    name = [connectCopy name];
    v9 = [name isEqual:self->_identifier];

    if ((v9 & 1) == 0)
    {
      ucat = self->_ucat;
      v7 = connectCopy;
      if (ucat->var0 > 30)
      {
        goto LABEL_21;
      }

      if (ucat->var0 == -1)
      {
        _ensureStarted = _LogCategory_Initialize(self->_ucat, 0x1Eu);
        v7 = connectCopy;
        if (!_ensureStarted)
        {
          goto LABEL_21;
        }

        ucat = self->_ucat;
      }

      name2 = [v7 name];
      LogPrintF(ucat, "[CUBluetoothScalablePipe scalablePipeManager:pipeDidConnect:]", 0x1Eu, "Ignoring pipeDidConnect for unknown identifier ('%@' not '%@')\n", v29, v30, v31, v32, name2);

      goto LABEL_20;
    }

    btPipe = self->_btPipe;
    if (!btPipe)
    {
LABEL_14:
      peer = [connectCopy peer];
      identifier = [peer identifier];
      peerIdentifier = self->_peerIdentifier;
      self->_peerIdentifier = identifier;

      v39 = self->_ucat;
      if (v39->var0 <= 30)
      {
        if (v39->var0 == -1)
        {
          if (!_LogCategory_Initialize(self->_ucat, 0x1Eu))
          {
            goto LABEL_19;
          }

          v39 = self->_ucat;
        }

        name3 = [connectCopy name];
        [connectCopy type];
        [connectCopy priority];
        LogPrintF(v39, "[CUBluetoothScalablePipe scalablePipeManager:pipeDidConnect:]", 0x1Eu, "Pipe connected: ID '%@', Peer %@, Type %s, Priority %s\n", v41, v42, v43, v44, name3);
      }

LABEL_19:
      objc_storeStrong(&self->_btPipe, connect);
      _ensureStarted = [(CUBluetoothScalablePipe *)self _ensureStarted];
LABEL_20:
      v7 = connectCopy;
      goto LABEL_21;
    }

    v17 = self->_ucat;
    if (v17->var0 <= 90)
    {
      if (v17->var0 == -1)
      {
        if (!_LogCategory_Initialize(self->_ucat, 0x5Au))
        {
          goto LABEL_13;
        }

        v17 = self->_ucat;
        btPipe = self->_btPipe;
      }

      name4 = [(CBScalablePipe *)btPipe name];
      peer2 = [(CBScalablePipe *)self->_btPipe peer];
      identifier2 = [peer2 identifier];
      name5 = [connectCopy name];
      peer3 = [connectCopy peer];
      identifier3 = [peer3 identifier];
      LogPrintF(v17, "[CUBluetoothScalablePipe scalablePipeManager:pipeDidConnect:]", 0x5Au, "Pipe connect when already connected: '%@', Peer %@ -> '%@', Peer %@\n", v23, v24, v25, v26, name4);
    }

LABEL_13:
    v33 = NSErrorWithOSStatusF(4294960543, "Pipe disconnect for re-connect", v10, v11, v12, v13, v14, v15, v45);
    [(CUBluetoothScalablePipe *)self _abortReadsWithError:v33];
    [(CUBluetoothScalablePipe *)self _abortWritesWithError:v33];
    [(CUBluetoothScalablePipe *)self _tearDownPipe];
    v34 = self->_btPipe;
    self->_btPipe = 0;

    v35 = self->_peerIdentifier;
    self->_peerIdentifier = 0;

    goto LABEL_14;
  }

LABEL_21:

  MEMORY[0x1EEE66BB8](_ensureStarted, v7);
}

- (void)scalablePipeManager:(id)manager didUnregisterEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v6 = endpointCopy;
  if (!self->_invalidateCalled)
  {
    v13 = [endpointCopy isEqual:self->_identifier];
    ucat = self->_ucat;
    v14 = *ucat;
    if (v13)
    {
      if (v14 <= 30)
      {
        if (v14 == -1)
        {
          if (!_LogCategory_Initialize(ucat, 0x1Eu))
          {
            goto LABEL_10;
          }

          ucat = self->_ucat;
        }

        LogPrintF(ucat, "[CUBluetoothScalablePipe scalablePipeManager:didUnregisterEndpoint:]", 0x1Eu, "Endpoint unregistered '%@'\n", v9, v10, v11, v12, endpointCopy);
      }

LABEL_10:
      *&self->_btEndpointRegistering = 0;
      v15 = NSErrorWithOSStatusF(4294960543, "Endpoint unregistered", v7, v8, v9, v10, v11, v12, v16);
      [(CUBluetoothScalablePipe *)self _ensureStopped:v15];

      goto LABEL_11;
    }

    v6 = endpointCopy;
    if (v14 > 30)
    {
      goto LABEL_12;
    }

    if (v14 != -1)
    {
LABEL_8:
      ucat = LogPrintF(ucat, "[CUBluetoothScalablePipe scalablePipeManager:didUnregisterEndpoint:]", 0x1Eu, "Ignoring didRegisterEndpoint for unknown identifier ('%@' not '%@')\n", v9, v10, v11, v12, v6);
LABEL_11:
      v6 = endpointCopy;
      goto LABEL_12;
    }

    ucat = _LogCategory_Initialize(ucat, 0x1Eu);
    v6 = endpointCopy;
    if (ucat)
    {
      ucat = self->_ucat;
      goto LABEL_8;
    }
  }

LABEL_12:

  MEMORY[0x1EEE66BB8](ucat, v6);
}

- (void)scalablePipeManager:(id)manager didRegisterEndpoint:(id)endpoint error:(id)error
{
  endpointCopy = endpoint;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled)
  {
    goto LABEL_20;
  }

  if ([endpointCopy isEqual:self->_identifier])
  {
    ucat = self->_ucat;
    var0 = ucat->var0;
    if (errorCopy)
    {
      if (var0 > 90)
      {
        goto LABEL_20;
      }

      if (var0 != -1)
      {
        goto LABEL_6;
      }

      if (_LogCategory_Initialize(ucat, 0x5Au))
      {
        ucat = self->_ucat;
LABEL_6:
        LogPrintF(ucat, "[CUBluetoothScalablePipe scalablePipeManager:didRegisterEndpoint:error:]", 0x5Au, "### didRegisterEndpoint error: %{error}\n", v8, v9, v10, v11, errorCopy);
        goto LABEL_20;
      }

      goto LABEL_20;
    }

    if (var0 <= 30)
    {
      v15 = endpointCopy;
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x1Eu))
        {
          goto LABEL_19;
        }

        ucat = self->_ucat;
        v15 = endpointCopy;
      }

      LogPrintF(ucat, "[CUBluetoothScalablePipe scalablePipeManager:didRegisterEndpoint:error:]", 0x1Eu, "Endpoint registered '%@'\n", v8, v9, v10, v11, v15);
    }

LABEL_19:
    self->_btEndpointRegistered = 1;
    [(CUBluetoothScalablePipe *)self _ensureStarted];
    goto LABEL_20;
  }

  v14 = self->_ucat;
  if (v14->var0 > 30)
  {
    goto LABEL_20;
  }

  if (v14->var0 == -1)
  {
    if (!_LogCategory_Initialize(v14, 0x1Eu))
    {
      goto LABEL_20;
    }

    v14 = self->_ucat;
  }

  LogPrintF(v14, "[CUBluetoothScalablePipe scalablePipeManager:didRegisterEndpoint:error:]", 0x1Eu, "Ignoring didRegisterEndpoint for unknown identifier ('%@' not '%@'): %{error}\n", v8, v9, v10, v11, endpointCopy);
LABEL_20:
}

- (void)scalablePipeManagerDidUpdateState:(id)state
{
  stateCopy = state;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = stateCopy;
  if (!self->_invalidateCalled)
  {
    state = [stateCopy state];
    ucat = self->_ucat;
    if (ucat->var0 > 30)
    {
      goto LABEL_10;
    }

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
      v13 = "?";
    }

    else
    {
      v13 = off_1E73A3018[state];
    }

    LogPrintF(ucat, "[CUBluetoothScalablePipe scalablePipeManagerDidUpdateState:]", 0x1Eu, "Bluetooth scalable pipe state changed: %s\n", v7, v8, v9, v10, v13);
LABEL_10:
    if (state <= 2)
    {
      v4 = stateCopy;
      if (state == 1)
      {
        v14 = "Resetting";
      }

      else
      {
        if (state != 2)
        {
          goto LABEL_27;
        }

        v14 = "Unsupported";
      }
    }

    else
    {
      v4 = stateCopy;
      switch(state)
      {
        case 3:
          v14 = "Unauthorized";
          break;
        case 4:
          v14 = "PoweredOff";
          break;
        case 5:
          [(CUBluetoothScalablePipe *)self _ensureStarted];
          goto LABEL_26;
        default:
          goto LABEL_27;
      }
    }

    v15 = self->_ucat;
    if (v15->var0 <= 50)
    {
      if (v15->var0 == -1)
      {
        if (!_LogCategory_Initialize(v15, 0x32u))
        {
          goto LABEL_25;
        }

        v15 = self->_ucat;
      }

      LogPrintF(v15, "[CUBluetoothScalablePipe scalablePipeManagerDidUpdateState:]", 0x32u, "Tear down due to %s state\n", v7, v8, v9, v10, v14);
    }

LABEL_25:
    v16 = NSErrorWithOSStatusF(4294960543, "Bluetooth down (%s)", v5, v6, v7, v8, v9, v10, v14);
    [(CUBluetoothScalablePipe *)self _ensureStopped:v16];

LABEL_26:
    v4 = stateCopy;
  }

LABEL_27:
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqualToString:{@"hostState", object, change, context}])
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__CUBluetoothScalablePipe_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E73A4F68;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }
}

_BYTE *__74__CUBluetoothScalablePipe_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[40] == 1)
  {
    return [result _handleBTPeerHostStateChanged];
  }

  return result;
}

- (void)_completeWriteRequest:(id)request error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  ucat = self->_ucat;
  if (ucat->var0 <= 9)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[CUBluetoothScalablePipe _completeWriteRequest:error:]", 9u, "Write completed: %{error}\n", v6, v7, v8, v9, errorCopy);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(ucat, 9u))
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
  v24 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (self->_writeRequestCurrent || [(NSMutableArray *)self->_writeRequests count])
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 != -1)
      {
LABEL_5:
        LogPrintF(ucat, "[CUBluetoothScalablePipe _abortWritesWithError:]", 0x1Eu, "Abort writes: %{error}\n", v4, v5, v6, v7, errorCopy);
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

    [(CUBluetoothScalablePipe *)self _completeWriteRequest:v10 error:errorCopy];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_writeRequests;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      v17 = v10;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v10 = *(*(&v19 + 1) + 8 * v16);

        [(CUBluetoothScalablePipe *)self _completeWriteRequest:v10 error:errorCopy];
        ++v16;
        v17 = v10;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
}

- (unint64_t)_writeBytes:(const char *)bytes length:(unint64_t)length
{
  bytesCopy2 = bytes;
  if (!length)
  {
    return bytesCopy2 - bytes;
  }

  v7 = 0;
  v8 = &bytes[length];
  bytesCopy2 = bytes;
  while (1)
  {
    next_slot = os_channel_get_next_slot();
    if (!next_slot)
    {
      break;
    }

    v7 = next_slot;
    ucat = self->_ucat;
    if (ucat->var0 <= 8)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 8u))
        {
          goto LABEL_8;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUBluetoothScalablePipe _writeBytes:length:]", 8u, "Write channel slot %p, remain %zu, slotLen %u\n", v10, v11, v12, v13, v7);
    }

LABEL_8:
    os_channel_set_slot_properties();
    if (bytesCopy2 == v8)
    {
      bytesCopy2 = v8;
      goto LABEL_12;
    }
  }

  if (!v7)
  {
    return bytesCopy2 - bytes;
  }

LABEL_12:
  v15 = os_channel_advance_slot();
  if (v15)
  {
    v20 = v15;
    v21 = self->_ucat;
    if (v21->var0 <= 60)
    {
      if (v21->var0 != -1)
      {
        goto LABEL_15;
      }

      if (_LogCategory_Initialize(v21, 0x3Cu))
      {
        v21 = self->_ucat;
LABEL_15:
        LogPrintF(v21, "[CUBluetoothScalablePipe _writeBytes:length:]", 0x3Cu, "### Advance tx slot failed: %#m\n", v16, v17, v18, v19, v20);
      }
    }
  }

  v22 = os_channel_sync();
  if (v22)
  {
    v27 = v22;
    v28 = self->_ucat;
    if (v28->var0 <= 60)
    {
      if (v28->var0 != -1)
      {
        goto LABEL_20;
      }

      if (_LogCategory_Initialize(v28, 0x3Cu))
      {
        v28 = self->_ucat;
LABEL_20:
        LogPrintF(v28, "[CUBluetoothScalablePipe _writeBytes:length:]", 0x3Cu, "### Sync tx failed: %#m\n", v23, v24, v25, v26, v27);
      }
    }
  }

  return bytesCopy2 - bytes;
}

- (int)_writeIOArray:(iovec *)array ioCount:(int *)count
{
  v4 = *count;
  if (!v4)
  {
    return 0;
  }

  v8 = *array;
  v9 = &(*array)[v4];
  v10 = 16 * v4;
  while (1)
  {
    v11 = [(CUBluetoothScalablePipe *)self _writeBytes:v8->iov_base length:v8->iov_len];
    iov_len = v8->iov_len;
    v13 = iov_len > v11;
    v14 = iov_len - v11;
    if (v13)
    {
      break;
    }

    ++v8;
    v10 -= 16;
    if (!v10)
    {
      return 0;
    }
  }

  v8->iov_base = v8->iov_base + v11;
  v8->iov_len = v14;
  *array = v8;
  *count = (v9 - v8) >> 4;
  return 35;
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

    if (gLogCategory_CUBluetoothScalablePipe > 9 || gLogCategory_CUBluetoothScalablePipe == -1 && !_LogCategory_Initialize(&gLogCategory_CUBluetoothScalablePipe, 9u))
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
    if (ucat->var0 > 9)
    {
      goto LABEL_27;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 9u))
      {
        goto LABEL_27;
      }

      ucat = self->_ucat;
      v32 = *(requestCopy + 70);
    }

    LogPrintF(ucat, "[CUBluetoothScalablePipe _prepareWriteRequest:error:]", 9u, "Write prepared (%d iov, %zu total)\n", v28, v29, v30, v31, v32);
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

- (void)writeWithRequest:(id)request
{
  requestCopy = request;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__CUBluetoothScalablePipe_writeWithRequest___block_invoke;
  v7[3] = &unk_1E73A49F0;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(dispatchQueue, v7);
}

void __44__CUBluetoothScalablePipe_writeWithRequest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  if (*(v9 + 8) == 1)
  {
    v10 = *(a1 + 40);
    v13 = NSErrorWithOSStatusF(4294960573, "Invalidated (W)", a3, a4, a5, a6, a7, a8, v12);
    [v9 _completeWriteRequest:v10 error:v13];
  }

  else
  {
    [*(v9 + 160) addObject:*(a1 + 40)];
    v11 = *(a1 + 32);
    if ((v11[28] & 0x80000000) == 0)
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
  if (ucat->var0 <= 9)
  {
    v8 = requestCopy;
    if (ucat->var0 != -1)
    {
LABEL_3:
      v9 = [v8 length];
      LogPrintF(ucat, "[CUBluetoothScalablePipe _completeReadRequest:error:]", 9u, "Read completed: %zu byte(s), %{error}\n", v10, v11, v12, v13, v9);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(self->_ucat, 9u))
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

- (void)_abortReadsWithError:(id)error
{
  v24 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (self->_readRequestCurrent || [(NSMutableArray *)self->_readRequests count])
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 != -1)
      {
LABEL_5:
        LogPrintF(ucat, "[CUBluetoothScalablePipe _abortReadsWithError:]", 0x1Eu, "Abort reads: %{error}\n", v4, v5, v6, v7, errorCopy);
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

    [(CUBluetoothScalablePipe *)self _completeReadRequest:v10 error:errorCopy];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_readRequests;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      v17 = v10;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v10 = *(*(&v19 + 1) + 8 * v16);

        [(CUBluetoothScalablePipe *)self _completeReadRequest:v10 error:errorCopy];
        ++v16;
        v17 = v10;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
}

- (int)_readBytes:(char *)bytes minLen:(unint64_t)len maxLen:(unint64_t)maxLen offset:(unint64_t *)offset
{
  lenCopy2 = len;
  bytesCopy2 = bytes;
  v9 = &bytes[*offset];
  v10 = maxLen - *offset;
  if (maxLen == *offset)
  {
    goto LABEL_26;
  }

  btReadLeftoverPtr = self->_btReadLeftoverPtr;
  v13 = (self->_btReadLeftoverEnd - btReadLeftoverPtr);
  if (v13)
  {
    v14 = v13 >= v10 ? maxLen - *offset : self->_btReadLeftoverEnd - btReadLeftoverPtr;
    memcpy(v9, btReadLeftoverPtr, v14);
    self->_btReadLeftoverPtr += v14;
    v9 += v14;
    if (v10 == v14)
    {
      goto LABEL_26;
    }
  }

  for (i = 0; ; i = v21)
  {
    next_slot = os_channel_get_next_slot();
    if (!next_slot)
    {
      break;
    }

    v21 = next_slot;
    ucat = self->_ucat;
    if (ucat->var0 > 8)
    {
      continue;
    }

    if (ucat->var0 != -1)
    {
      goto LABEL_11;
    }

    if (_LogCategory_Initialize(ucat, 8u))
    {
      ucat = self->_ucat;
LABEL_11:
      LogPrintF(ucat, "[CUBluetoothScalablePipe _readBytes:minLen:maxLen:offset:]", 8u, "Read channel slot %p, remain %zu, slotLen %u\n", v17, v18, v19, v20, v21);
      continue;
    }
  }

  bytesCopy2 = bytes;
  lenCopy2 = len;
  if (i)
  {
    v23 = os_channel_advance_slot();
    if (v23)
    {
      v28 = v23;
      v29 = self->_ucat;
      if (v29->var0 <= 90)
      {
        if (v29->var0 != -1)
        {
          goto LABEL_19;
        }

        if (_LogCategory_Initialize(v29, 0x5Au))
        {
          v29 = self->_ucat;
LABEL_19:
          LogPrintF(v29, "[CUBluetoothScalablePipe _readBytes:minLen:maxLen:offset:]", 0x5Au, "### Advance rx slot failed: %#m\n", v24, v25, v26, v27, v28);
        }
      }
    }

    v30 = os_channel_sync();
    if (v30)
    {
      v35 = v30;
      v36 = self->_ucat;
      if (v36->var0 <= 90)
      {
        if (v36->var0 != -1)
        {
          goto LABEL_24;
        }

        if (_LogCategory_Initialize(v36, 0x5Au))
        {
          v36 = self->_ucat;
LABEL_24:
          LogPrintF(v36, "[CUBluetoothScalablePipe _readBytes:minLen:maxLen:offset:]", 0x5Au, "### Sync rx failed: %#m\n", v31, v32, v33, v34, v35);
        }
      }
    }
  }

LABEL_26:
  *offset = v9 - bytesCopy2;
  if (v9 - bytesCopy2 >= lenCopy2)
  {
    return 0;
  }

  else
  {
    return 35;
  }
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
  if (ucat->var0 <= 9)
  {
    v15 = requestCopy;
    if (ucat->var0 != -1)
    {
LABEL_10:
      minLength = [v15 minLength];
      [requestCopy maxLength];
      LogPrintF(ucat, "[CUBluetoothScalablePipe _prepareReadRequest:]", 9u, "Read prepared (%zu min, %zu max)\n", v17, v18, v19, v20, minLength);
      goto LABEL_12;
    }

    if (_LogCategory_Initialize(self->_ucat, 9u))
    {
      ucat = self->_ucat;
      v15 = requestCopy;
      goto LABEL_10;
    }
  }

LABEL_12:
}

- (void)readWithRequest:(id)request
{
  requestCopy = request;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__CUBluetoothScalablePipe_readWithRequest___block_invoke;
  v7[3] = &unk_1E73A49F0;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(dispatchQueue, v7);
}

void __43__CUBluetoothScalablePipe_readWithRequest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  if (*(v9 + 8) == 1)
  {
    v10 = *(a1 + 40);
    v13 = NSErrorWithOSStatusF(4294960573, "Invalidated (R)", a3, a4, a5, a6, a7, a8, v12);
    [v9 _completeReadRequest:v10 error:v13];
  }

  else
  {
    [*(v9 + 128) addObject:*(a1 + 40)];
    v11 = *(a1 + 32);
    if ((v11[28] & 0x80000000) == 0)
    {

      [v11 _processReads];
    }
  }
}

- (void)_handleBTPeerHostStateChanged
{
  if (self->_btPeerKVORegistered)
  {
    peer = [(CBScalablePipe *)self->_btPipe peer];
    hostState = [peer hostState];

    if (hostState == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2 * (hostState == 2);
    }
  }

  else
  {
    v9 = 0;
  }

  peerHostState = self->_peerHostState;
  if (v9 == peerHostState)
  {
    return;
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_9:
      if (peerHostState > 2)
      {
        v12 = "?";
      }

      else
      {
        v12 = off_1E73A3000[peerHostState];
      }

      LogPrintF(ucat, "[CUBluetoothScalablePipe _handleBTPeerHostStateChanged]", 0x1Eu, "Peer host state changed: %s -> %s\n", v2, v3, v4, v5, v12);
      goto LABEL_15;
    }

    if (_LogCategory_Initialize(ucat, 0x1Eu))
    {
      ucat = self->_ucat;
      peerHostState = self->_peerHostState;
      goto LABEL_9;
    }
  }

LABEL_15:
  self->_peerHostState = v9;
  v13 = _Block_copy(self->_peerHostStateChangedHandler);
  if (v13)
  {
    v14 = v13;
    v13[2]();
    v13 = v14;
  }
}

- (void)_tearDownPipe
{
  if ((self->_channelFD & 0x80000000) == 0)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 != -1)
      {
LABEL_4:
        LogPrintF(ucat, "[CUBluetoothScalablePipe _tearDownPipe]", 0x1Eu, "Tear down pipe\n", v2, v3, v4, v5, v15);
        goto LABEL_6;
      }

      if (_LogCategory_Initialize(ucat, 0x1Eu))
      {
        ucat = self->_ucat;
        goto LABEL_4;
      }
    }
  }

LABEL_6:
  readSource = self->_readSource;
  if (readSource)
  {
    dispatch_source_cancel(readSource);
    if (self->_readSuspended)
    {
      dispatch_resume(self->_readSource);
      self->_readSuspended = 0;
    }

    v9 = self->_readSource;
    self->_readSource = 0;
  }

  writeSource = self->_writeSource;
  if (writeSource)
  {
    dispatch_source_cancel(writeSource);
    if (self->_writeSuspended)
    {
      dispatch_resume(self->_writeSource);
      self->_writeSuspended = 0;
    }

    v11 = self->_writeSource;
    self->_writeSource = 0;
  }

  self->_btChannel = 0;
  self->_channelFD = -1;
  self->_btReadRing = 0;
  btReadLeftoverBuf = self->_btReadLeftoverBuf;
  if (btReadLeftoverBuf)
  {
    free(btReadLeftoverBuf);
    self->_btReadLeftoverBuf = 0;
  }

  self->_btReadLeftoverMaxLen = 0;
  self->_btWriteRing = 0;
  if (self->_btPeerKVORegistered)
  {
    self->_btPeerKVORegistered = 0;
    peer = [(CBScalablePipe *)self->_btPipe peer];
    [peer removeObserver:self forKeyPath:@"hostState" context:0];

    [(CUBluetoothScalablePipe *)self _handleBTPeerHostStateChanged];
  }

  if (self->_state != 2)
  {
    self->_state = 2;
    v14 = _Block_copy(self->_stateChangedHandler);
    if (v14)
    {
      v16 = v14;
      v14[2]();
      v14 = v16;
    }
  }
}

- (void)_setupPipe
{
  v3 = self->_btPipe;
  channel = [(CBScalablePipe *)v3 channel];
  self->_btChannel = channel;
  if (!channel)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 90)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x5Au))
        {
          goto LABEL_21;
        }

        ucat = self->_ucat;
      }

      v22 = "### No channel\n";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  os_channel_ring_id();
  v9 = os_channel_rx_ring();
  self->_btReadRing = v9;
  if (!v9)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 90)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x5Au))
        {
          goto LABEL_21;
        }

        ucat = self->_ucat;
      }

      v22 = "### No rx ring\n";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  os_channel_ring_id();
  v10 = os_channel_tx_ring();
  self->_btWriteRing = v10;
  if (!v10)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 90)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x5Au))
        {
          goto LABEL_21;
        }

        ucat = self->_ucat;
      }

      v22 = "### No tx ring\n";
      goto LABEL_20;
    }

LABEL_21:
    v23 = 4294960596;
    goto LABEL_47;
  }

  if (!os_channel_attr_create())
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 90)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x5Au))
        {
          goto LABEL_21;
        }

        ucat = self->_ucat;
      }

      v22 = "### Create channel attr failed\n";
LABEL_20:
      LogPrintF(ucat, "[CUBluetoothScalablePipe _setupPipe]", 0x5Au, v22, v5, v6, v7, v8, v29);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  attr = os_channel_read_attr();
  if (attr)
  {
    v23 = attr;
    v24 = self->_ucat;
    if (v24->var0 <= 90)
    {
      if (v24->var0 == -1)
      {
        if (!_LogCategory_Initialize(v24, 0x5Au))
        {
          goto LABEL_46;
        }

        v24 = self->_ucat;
      }

      LogPrintF(v24, "[CUBluetoothScalablePipe _setupPipe]", 0x5Au, "### Read channel attr failed: %#m\n", v12, v13, v14, v15, v23);
    }
  }

  else
  {
    v30 = 0;
    v16 = os_channel_attr_get();
    if (!v16)
    {
      v26 = self->_ucat;
      if (v26->var0 <= 90)
      {
        if (v26->var0 == -1)
        {
          if (!_LogCategory_Initialize(v26, 0x5Au))
          {
            goto LABEL_45;
          }

          v26 = self->_ucat;
          v27 = v30;
        }

        else
        {
          v27 = 0;
        }

        LogPrintF(v26, "[CUBluetoothScalablePipe _setupPipe]", 0x5Au, "### Bad channel slot size: %llu\n", v17, v18, v19, v20, v27);
      }

LABEL_45:
      v23 = 4294960553;
      goto LABEL_46;
    }

    v23 = v16;
    v25 = self->_ucat;
    if (v25->var0 <= 90)
    {
      if (v25->var0 == -1)
      {
        if (!_LogCategory_Initialize(v25, 0x5Au))
        {
          goto LABEL_46;
        }

        v25 = self->_ucat;
      }

      LogPrintF(v25, "[CUBluetoothScalablePipe _setupPipe]", 0x5Au, "### Get channel slot size failed: %#m\n", v17, v18, v19, v20, v23);
    }
  }

LABEL_46:
  os_channel_attr_destroy();
LABEL_47:
  v28 = self->_ucat;
  if (v28->var0 <= 90)
  {
    if (v28->var0 == -1)
    {
      if (!_LogCategory_Initialize(v28, 0x5Au))
      {
        goto LABEL_51;
      }

      v28 = self->_ucat;
    }

    LogPrintF(v28, "[CUBluetoothScalablePipe _setupPipe]", 0x5Au, "### Setup pipe failed: %#m\n", v5, v6, v7, v8, v23);
  }

LABEL_51:
  [(CUBluetoothScalablePipe *)self _tearDownPipe];
}

- (void)_ensureStopped:(id)stopped
{
  stoppedCopy = stopped;
  [(CUBluetoothScalablePipe *)self _abortReadsWithError:stoppedCopy];
  [(CUBluetoothScalablePipe *)self _abortWritesWithError:stoppedCopy];

  [(CUBluetoothScalablePipe *)self _tearDownPipe];
  btPipe = self->_btPipe;
  self->_btPipe = 0;

  v6 = self->_identifier;
  v7 = v6;
  if (v6 && (self->_btEndpointRegistered || self->_btEndpointRegistering))
  {
    v8 = v6;
    v6 = [(CBScalablePipeManager *)self->_btPipeManager unregisterEndpoint:v6];
    v7 = v8;
  }

  *&self->_btEndpointRegistering = 0;

  MEMORY[0x1EEE66BB8](v6, v7);
}

- (void)_ensureStarted
{
  v30[1] = *MEMORY[0x1E69E9840];
  if (self->_invalidateCalled)
  {
    return;
  }

  btPipeManager = self->_btPipeManager;
  if (!btPipeManager)
  {
    v12 = [objc_alloc(getCBScalablePipeManagerClass[0]()) initWithDelegate:self queue:self->_dispatchQueue];
    v13 = self->_btPipeManager;
    self->_btPipeManager = v12;

    v14 = self->_btPipeManager;
    if (!v14)
    {
      ucat = self->_ucat;
      if (ucat->var0 > 90)
      {
        return;
      }

      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x5Au))
        {
          return;
        }

        ucat = self->_ucat;
      }

      v16 = "### Create CBScalablePipeManager failed\n";
      goto LABEL_44;
    }

    if ([(CBScalablePipeManager *)v14 state]!= 5)
    {
      return;
    }

LABEL_11:
    if (self->_btEndpointRegistering)
    {
      if (!self->_btEndpointRegistered)
      {
        if (!btPipeManager)
        {
          return;
        }

        ucat = self->_ucat;
        if (ucat->var0 > 20)
        {
          return;
        }

        if (ucat->var0 == -1)
        {
          if (!_LogCategory_Initialize(ucat, 0x14u))
          {
            return;
          }

          ucat = self->_ucat;
        }

        v16 = "Waiting until endpoint registered\n";
LABEL_36:
        v22 = 20;
LABEL_45:

        LogPrintF(ucat, "[CUBluetoothScalablePipe _ensureStarted]", v22, v16, v5, v6, v7, v8, v32);
        return;
      }

      goto LABEL_18;
    }

    if (self->_btEndpointRegistered)
    {
LABEL_18:
      p_btPipe = &self->_btPipe;
      if (!self->_btPipe)
      {
        if (!btPipeManager)
        {
          return;
        }

        ucat = self->_ucat;
        if (ucat->var0 > 20)
        {
          return;
        }

        if (ucat->var0 == -1)
        {
          if (!_LogCategory_Initialize(ucat, 0x14u))
          {
            return;
          }

          ucat = self->_ucat;
        }

        v16 = "Waiting until pipe connected\n";
        goto LABEL_36;
      }

LABEL_19:
      if (self->_channelFD < 0)
      {
        [(CUBluetoothScalablePipe *)self _setupPipe];
      }

      if (!self->_btPeerKVORegistered)
      {
        peer = [(CBScalablePipe *)*p_btPipe peer];
        v19 = peer;
        if (peer)
        {
          [peer addObserver:self forKeyPath:@"hostState" options:0 context:0];
          self->_btPeerKVORegistered = 1;
          [(CUBluetoothScalablePipe *)self _handleBTPeerHostStateChanged];
        }
      }

      return;
    }

    v20 = self->_identifier;
    ucat = self->_ucat;
    var0 = ucat->var0;
    if (v20)
    {
      if (var0 > 30)
      {
        goto LABEL_53;
      }

      if (var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x1Eu))
        {
LABEL_53:
          v23 = 1;
          self->_btEndpointRegistering = 1;
          priority = self->_priority;
          if (priority == 3)
          {
            v23 = 2;
          }

          if (priority == 1)
          {
            v25 = 0;
          }

          else
          {
            v25 = v23;
          }

          v26 = self->_btPipeManager;
          v27 = getCBScalablePipeOptionTransport();
          v29 = v27;
          v30[0] = &unk_1F06A2F50;
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
          [(CBScalablePipeManager *)v26 registerEndpoint:v20 type:0 priority:v25 options:v28];

          if (!self->_btEndpointRegistered)
          {
            return;
          }

          p_btPipe = &self->_btPipe;
          if (!self->_btPipe)
          {
            return;
          }

          goto LABEL_19;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUBluetoothScalablePipe _ensureStarted]", 0x1Eu, "Register endpoint '%@'\n", v5, v6, v7, v8, v20);
      goto LABEL_53;
    }

    if (var0 > 90)
    {
      return;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x5Au))
      {
        return;
      }

      ucat = self->_ucat;
    }

    v16 = "### No identifier to register endpoint\n";
LABEL_44:
    v22 = 90;
    goto LABEL_45;
  }

  state = [(CBScalablePipeManager *)self->_btPipeManager state];
  if (state == 5)
  {
    goto LABEL_11;
  }

  v9 = state;
  v10 = self->_ucat;
  if (v10->var0 > 20)
  {
    return;
  }

  if (v10->var0 == -1)
  {
    if (!_LogCategory_Initialize(v10, 0x14u))
    {
      return;
    }

    v10 = self->_ucat;
  }

  if (v9 > 0xA)
  {
    v11 = "?";
  }

  else
  {
    v11 = off_1E73A2FA8[v9];
  }

  LogPrintF(v10, "[CUBluetoothScalablePipe _ensureStarted]", 0x14u, "Waiting until Bluetooth ready (%s)\n", v5, v6, v7, v8, v11);
}

- (void)_invalidate
{
  if (self->_invalidateCalled || self->_invalidateDone)
  {
    return;
  }

  self->_invalidateCalled = 1;
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_5:
      LogPrintF(ucat, "[CUBluetoothScalablePipe _invalidate]", 0x1Eu, "Invalidating\n", v2, v3, v4, v5, v26);
      goto LABEL_7;
    }

    if (_LogCategory_Initialize(ucat, 0x1Eu))
    {
      ucat = self->_ucat;
      goto LABEL_5;
    }
  }

LABEL_7:
  peerHostStateChangedHandler = self->_peerHostStateChangedHandler;
  self->_peerHostStateChangedHandler = 0;

  stateChangedHandler = self->_stateChangedHandler;
  self->_stateChangedHandler = 0;

  v16 = NSErrorWithOSStatusF(4294960573, "Invalidated (I)", v10, v11, v12, v13, v14, v15, v26);
  [(CUBluetoothScalablePipe *)self _ensureStopped:v16];

  [(CBScalablePipeManager *)self->_btPipeManager setDelegate:0];
  btPipeManager = self->_btPipeManager;
  self->_btPipeManager = 0;

  v22 = self->_ucat;
  if (v22->var0 <= 30)
  {
    if (v22->var0 == -1)
    {
      if (!_LogCategory_Initialize(v22, 0x1Eu))
      {
        goto LABEL_11;
      }

      v22 = self->_ucat;
    }

    LogPrintF(v22, "[CUBluetoothScalablePipe _invalidate]", 0x1Eu, "Invalidated\n", v18, v19, v20, v21, v27);
  }

LABEL_11:
  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2]();
    v24 = self->_invalidationHandler;
  }

  else
  {
    v24 = 0;
  }

  self->_invalidationHandler = 0;

  v25 = self->_stateChangedHandler;
  self->_stateChangedHandler = 0;

  self->_invalidateDone = 1;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__CUBluetoothScalablePipe_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__CUBluetoothScalablePipe_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E73A49A0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __50__CUBluetoothScalablePipe_activateWithCompletion___block_invoke(uint64_t a1)
{
  v24 = *(*(a1 + 32) + 200);
  if (v24)
  {
    v8 = *(*(a1 + 32) + 16);
    if (*v8 > 30)
    {
      goto LABEL_9;
    }

    if (*v8 == -1)
    {
      if (!_LogCategory_Initialize(v8, 0x1Eu))
      {
LABEL_9:
        v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v16 = *(a1 + 32);
        v17 = *(v16 + 128);
        *(v16 + 128) = v15;

        v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v19 = *(a1 + 32);
        v20 = *(v19 + 160);
        *(v19 + 160) = v18;

        [*(a1 + 32) _ensureStarted];
        v21 = *(a1 + 40);
        if (v21)
        {
          (*(v21 + 16))(v21, 0);
        }

        goto LABEL_15;
      }

      v8 = *(*(a1 + 32) + 16);
    }

    LogPrintF(v8, "[CUBluetoothScalablePipe activateWithCompletion:]_block_invoke", 0x1Eu, "Activate\n", v4, v5, v6, v7, v23);
    goto LABEL_9;
  }

  v13 = NSErrorWithOSStatusF(4294960591, "No endpoint identifier", v2, v3, v4, v5, v6, v7, v23);
  v14 = *(*(a1 + 32) + 16);
  if (*v14 <= 90)
  {
    if (*v14 == -1)
    {
      if (!_LogCategory_Initialize(v14, 0x5Au))
      {
        goto LABEL_12;
      }

      v14 = *(*(a1 + 32) + 16);
    }

    LogPrintF(v14, "[CUBluetoothScalablePipe activateWithCompletion:]_block_invoke", 0x5Au, "### Activate failed: %{error}\n", v9, v10, v11, v12, v13);
  }

LABEL_12:
  v22 = *(a1 + 40);
  if (v22)
  {
    (*(v22 + 16))(v22, v13);
  }

LABEL_15:
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v5 = qword_1EADE9498;
  v6 = labelCopy;
  [labelCopy UTF8String];
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
  v4.super_class = CUBluetoothScalablePipe;
  [(CUBluetoothScalablePipe *)&v4 dealloc];
}

- (CUBluetoothScalablePipe)init
{
  v6.receiver = self;
  v6.super_class = CUBluetoothScalablePipe;
  v2 = [(CUBluetoothScalablePipe *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_channelFD = -1;
    if (CUMainQueue_sOnce != -1)
    {
      dispatch_once(&CUMainQueue_sOnce, &__block_literal_global_23);
    }

    objc_storeStrong(&v3->_dispatchQueue, CUMainQueue_sQueue);
    v3->_priority = 2;
    v3->_ucat = &gLogCategory_CUBluetoothScalablePipe;
    v4 = v3;
  }

  return v3;
}

@end