@interface CUBluetoothClassicConnection
- (BOOL)_prepareWriteRequest:(id)a3 error:(id *)a4;
- (BOOL)_processReadStatus;
- (BOOL)_runBTSessionStart;
- (BOOL)_runConnectStart;
- (BOOL)_runSetupChannel;
- (BOOL)_setupIOAndReturnError:(id *)a3;
- (BOOL)_startConnectingAndReturnError:(id *)a3;
- (BOOL)activateDirectAndReturnError:(id *)a3;
- (BTDeviceImpl)_btDeviceWithID:(id)a3 error:(id *)a4;
- (CUBluetoothClassicConnection)init;
- (void)_abortReadsWithError:(id)a3;
- (void)_abortWritesWithError:(id)a3;
- (void)_btEnsureStopped;
- (void)_completeReadRequest:(id)a3 error:(id)a4;
- (void)_completeWriteRequest:(id)a3 error:(id)a4;
- (void)_invalidate;
- (void)_invalidated;
- (void)_prepareReadRequest:(id)a3;
- (void)_processReads:(BOOL)a3;
- (void)_processWrites;
- (void)_reportError:(id)a3;
- (void)_run;
- (void)activateWithCompletion:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)readWithRequest:(id)a3;
- (void)setLabel:(id)a3;
- (void)writeEndOfDataWithCompletion:(id)a3;
- (void)writeWithRequest:(id)a3;
@end

@implementation CUBluetoothClassicConnection

- (void)_completeWriteRequest:(id)a3 error:(id)a4
{
  v14 = a3;
  v10 = a4;
  ucat = self->_ucat;
  if (ucat->var0 <= 9)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[CUBluetoothClassicConnection _completeWriteRequest:error:]", 9u, "Write completed: %{error}\n", v6, v7, v8, v9, v10);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(ucat, 9u))
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  v12 = v14[1];
  v14[1] = v10;

  v13 = [v14 completion];
  [v14 setCompletion:0];
  if (v13)
  {
    v13[2](v13);
  }
}

- (void)_abortWritesWithError:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (self->_writeRequestCurrent || [(NSMutableArray *)self->_writeRequests count])
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 != -1)
      {
LABEL_5:
        LogPrintF(ucat, "[CUBluetoothClassicConnection _abortWritesWithError:]", 0x1Eu, "Abort writes: %{error}\n", v4, v5, v6, v7, v8);
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

    [(CUBluetoothClassicConnection *)self _completeWriteRequest:v10 error:v8];
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

        [(CUBluetoothClassicConnection *)self _completeWriteRequest:v10 error:v8];
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
    v19[2](v19, v8);
  }

  [(CUBluetoothClassicConnection *)self _invalidated];
}

- (BOOL)_prepareWriteRequest:(id)a3 error:(id *)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 dataArray];
  v8 = v7;
  if (!v7)
  {
    *(v6 + 34) = v6 + 16;
    LODWORD(v18) = [v6 bytesIOCount];
    goto LABEL_14;
  }

  v9 = [v7 count];
  if (v9 <= [v6 bytesIOMaxCount])
  {
    v19 = v6 + 16;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v20 = v8;
    v21 = [v20 countByEnumeratingWithState:&v39 objects:v43 count:16];
    v22 = v6 + 16;
    if (v21)
    {
      v23 = v21;
      v24 = *v40;
      v22 = v6 + 16;
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

    *(v6 + 34) = v19;
    v18 = (v22 - v19) >> 4;
LABEL_14:
    *(v6 + 70) = v18;
    *(v6 + 36) = 0;
    v27 = *(v6 + 1);
    *(v6 + 1) = 0;

    if (gLogCategory_CUBluetoothClassicConnection > 9 || gLogCategory_CUBluetoothClassicConnection == -1 && !_LogCategory_Initialize(&gLogCategory_CUBluetoothClassicConnection, 9u))
    {
      goto LABEL_27;
    }

    v32 = *(v6 + 70);
    if (v32)
    {
      v33 = 0;
      v34 = 16 * v32;
      v35 = (*(v6 + 34) + 8);
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
      v32 = *(v6 + 70);
    }

    LogPrintF(ucat, "[CUBluetoothClassicConnection _prepareWriteRequest:error:]", 9u, "Write prepared (%d iov, %zu total)\n", v28, v29, v30, v31, v32);
LABEL_27:
    v17 = 1;
    goto LABEL_28;
  }

  if (a4)
  {
    v10 = *MEMORY[0x1E696A768];
    v11 = [v6 bytesIOMaxCount];
    NSErrorF_safe(v10, 4294960532, "Too many write elements (%zu max)", v12, v13, v14, v15, v16, v11);
    *a4 = v17 = 0;
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
  v4 = *MEMORY[0x1E696A768];
  do
  {
    v5 = self->_writeRequestCurrent;
    if (!v5)
    {
      v13 = [(NSMutableArray *)self->_writeRequests firstObject];
      if (!v13)
      {
        if (!self->_writeSuspended)
        {
          self->_writeSuspended = 1;
          dispatch_suspend(self->_writeSource);
        }

        v5 = 0;
        goto LABEL_37;
      }

      v5 = v13;
      [(NSMutableArray *)self->_writeRequests removeObjectAtIndex:0];
      v30 = 0;
      [(CUBluetoothClassicConnection *)self _prepareWriteRequest:v5 error:&v30];
      v14 = v30;
      if (v14)
      {
        v15 = v14;
        goto LABEL_24;
      }

      objc_storeStrong(&self->_writeRequestCurrent, v5);
    }

    v11 = SocketWriteData(self->_socketFD, &v5->_iop, &v5->_ion);
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
        LogPrintF(ucat, "[CUBluetoothClassicConnection _processWrites]", 9u, "Write socket %d, pre-ion %d, post-ion %d, %#m\n", v7, v8, v9, v10, self->_socketFD);
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
        v28 = NSErrorF_safe(v4, v11, "Write failed", v6, v7, v8, v9, v10, v29);
        [(CUBluetoothClassicConnection *)self _abortWritesWithError:v28];
      }

LABEL_37:

      return;
    }

    if (![(CUWriteRequest *)v5 endOfData])
    {
      goto LABEL_20;
    }

    v20 = self->_ucat;
    if (v20->var0 <= 9)
    {
      if (v20->var0 != -1)
      {
        goto LABEL_14;
      }

      if (_LogCategory_Initialize(v20, 9u))
      {
        v20 = self->_ucat;
LABEL_14:
        LogPrintF(v20, "[CUBluetoothClassicConnection _processWrites]", 9u, "Shutdown socket %d\n", v16, v17, v18, v19, self->_socketFD);
      }
    }

    if (shutdown(self->_socketFD, 1))
    {
      if (!*__error())
      {
        v26 = 4294960596;
LABEL_22:
        v15 = NSErrorF_safe(v4, v26, "shutdown() failed", v21, v22, v23, v24, v25, v29);
        goto LABEL_23;
      }

      v26 = *__error();
      if (v26)
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
    [(CUBluetoothClassicConnection *)self _completeWriteRequest:v5 error:v15];

    --v3;
  }

  while (v3);
  if (self->_writeSuspended)
  {
    self->_writeSuspended = 0;
    dispatch_resume(self->_writeSource);
  }
}

- (void)writeEndOfDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CUWriteRequest);
  [(CUWriteRequest *)v5 setEndOfData:1];
  if (v4)
  {
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __61__CUBluetoothClassicConnection_writeEndOfDataWithCompletion___block_invoke;
    v9 = &unk_1E73A49A0;
    v10 = v5;
    v11 = v4;
    [(CUWriteRequest *)v5 setCompletion:&v6];
  }

  [(CUBluetoothClassicConnection *)self writeWithRequest:v5, v6, v7, v8, v9];
}

void __61__CUBluetoothClassicConnection_writeEndOfDataWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

- (void)writeWithRequest:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__CUBluetoothClassicConnection_writeWithRequest___block_invoke;
  v7[3] = &unk_1E73A49F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __49__CUBluetoothClassicConnection_writeWithRequest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  if (*(v9 + 68) == 1)
  {
    v10 = *(a1 + 40);
    v13 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960573, "Invalidated (W)", a4, a5, a6, a7, a8, v12);
    [v9 _completeWriteRequest:v10 error:v13];
  }

  else
  {
    [*(v9 + 144) addObject:*(a1 + 40)];
    v11 = *(a1 + 32);
    if ((v11[26] & 0x80000000) == 0)
    {

      [v11 _processWrites];
    }
  }
}

- (void)_completeReadRequest:(id)a3 error:(id)a4
{
  v16 = a3;
  v6 = a4;
  ucat = self->_ucat;
  if (ucat->var0 <= 9)
  {
    v8 = v16;
    if (ucat->var0 != -1)
    {
LABEL_3:
      v9 = [v8 length];
      LogPrintF(ucat, "[CUBluetoothClassicConnection _completeReadRequest:error:]", 9u, "Read completed: %zu byte(s), %{error}\n", v10, v11, v12, v13, v9);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(self->_ucat, 9u))
    {
      ucat = self->_ucat;
      v8 = v16;
      goto LABEL_3;
    }
  }

LABEL_5:
  v14 = v16[2];
  v16[2] = v6;

  v15 = [v16 completion];
  [v16 setCompletion:0];
  if (v15)
  {
    v15[2](v15);
  }
}

- (BOOL)_processReadStatus
{
  while (1)
  {
    v3 = recv(self->_socketFD, &v23, 1uLL, 2);
    if ((v3 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!*__error())
    {
      v4 = 4294960596;
LABEL_12:
      v14 = _Block_copy(self->_errorHandler);
      errorHandler = self->_errorHandler;
      self->_errorHandler = 0;

      if (v14)
      {
        v21 = NSErrorF_safe(*MEMORY[0x1E696A768], v4, "Read status error", v16, v17, v18, v19, v20, v22);
        v14[2](v14, v21);
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
      v13 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960543, "Read status EOF", v8, v9, v10, v11, v12, v22);
      v6[2](v6, v13);
    }
  }

  return 1;
}

- (void)_abortReadsWithError:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (self->_readRequestCurrent || [(NSMutableArray *)self->_readRequests count])
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 != -1)
      {
LABEL_5:
        LogPrintF(ucat, "[CUBluetoothClassicConnection _abortReadsWithError:]", 0x1Eu, "Abort reads: %{error}\n", v4, v5, v6, v7, v8);
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

    [(CUBluetoothClassicConnection *)self _completeReadRequest:v10 error:v8];
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

        [(CUBluetoothClassicConnection *)self _completeReadRequest:v10 error:v8];
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
    v19[2](v19, v8);
  }

  [(CUBluetoothClassicConnection *)self _invalidated];
}

- (void)_prepareReadRequest:(id)a3
{
  v21 = a3;
  if ([v21 bufferBytes])
  {
    v21[1] = [v21 bufferBytes];
    [v21 setData:0];
  }

  else
  {
    v4 = [v21 bufferData];

    if (v4)
    {
      v5 = [v21 bufferData];
      v6 = [v5 length];
      v7 = [v21 maxLength];

      if (v6 < v7)
      {
        v8 = [v21 maxLength];
        v9 = [v21 bufferData];
        [v9 setLength:v8];
      }
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:{objc_msgSend(v21, "maxLength")}];
      [v21 setBufferData:v10];
    }

    v11 = [v21 bufferData];
    v21[1] = [v11 mutableBytes];

    v12 = [v21 bufferData];
    [v21 setData:v12];
  }

  v13 = v21[2];
  v21[2] = 0;
  v21[3] = 0;

  ucat = self->_ucat;
  if (ucat->var0 <= 9)
  {
    v15 = v21;
    if (ucat->var0 != -1)
    {
LABEL_10:
      v16 = [v15 minLength];
      [v21 maxLength];
      LogPrintF(ucat, "[CUBluetoothClassicConnection _prepareReadRequest:]", 9u, "Read prepared (%zu min, %zu max)\n", v17, v18, v19, v20, v16);
      goto LABEL_12;
    }

    if (_LogCategory_Initialize(self->_ucat, 9u))
    {
      ucat = self->_ucat;
      v15 = v21;
      goto LABEL_10;
    }
  }

LABEL_12:
}

- (void)_processReads:(BOOL)a3
{
  v3 = a3;
  v5 = 0;
  while (1)
  {
    v6 = self->_readRequestCurrent;
    if (v6)
    {
      goto LABEL_5;
    }

    v7 = [(NSMutableArray *)self->_readRequests firstObject];
    if (!v7)
    {
      if (v3)
      {
        if (v5)
        {
          readSuspended = self->_readSuspended;
        }

        else
        {
          v26 = [(CUBluetoothClassicConnection *)self _processReadStatus];
          readSuspended = self->_readSuspended;
          if (v26)
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
      v23 = 0;
      goto LABEL_21;
    }

    obja = v7;
    [(NSMutableArray *)self->_readRequests removeObjectAtIndex:0];
    [(CUBluetoothClassicConnection *)self _prepareReadRequest:obja];
    objc_storeStrong(&self->_readRequestCurrent, obja);
    v6 = obja;
LABEL_5:
    obj = v6;
    Data = SocketReadDataEx(self->_socketFD, v6->_bufferPtr, [(CUReadRequest *)v6 minLength], [(CUReadRequest *)v6 maxLength], &v6->_length);
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
      socketFD = self->_socketFD;
      [(CUReadRequest *)obj minLength];
      [(CUReadRequest *)obj maxLength];
      LogPrintF(ucat, "[CUBluetoothClassicConnection _processReads:]", 9u, "Read socket %d, %zu min, %zu max, %zu offset, %zu nread, %#m\n", v16, v17, v18, v19, socketFD);
    }

LABEL_9:
    if (Data)
    {
      break;
    }

    readRequestCurrent = self->_readRequestCurrent;
    self->_readRequestCurrent = 0;

    [(CUBluetoothClassicConnection *)self _completeReadRequest:obj error:0];
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
      v21 = "Read EOF";
    }

    else
    {
      v21 = "Read error";
    }

    v22 = NSErrorF_safe(*MEMORY[0x1E696A768], Data, v21, v8, v9, v10, v11, v12, v27);
    [(CUBluetoothClassicConnection *)self _abortReadsWithError:v22];
  }

  v23 = obj;
LABEL_21:
}

- (void)readWithRequest:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__CUBluetoothClassicConnection_readWithRequest___block_invoke;
  v7[3] = &unk_1E73A49F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __48__CUBluetoothClassicConnection_readWithRequest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  if (*(v9 + 68) == 1)
  {
    v10 = *(a1 + 40);
    v13 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960573, "Invalidated (R)", a4, a5, a6, a7, a8, v12);
    [v9 _completeReadRequest:v10 error:v13];
  }

  else
  {
    [*(v9 + 96) addObject:*(a1 + 40)];
    v11 = *(a1 + 32);
    if ((v11[26] & 0x80000000) == 0)
    {

      [v11 _processReads:0];
    }
  }
}

- (void)_btEnsureStopped
{
  if (self->_btServiceAddCallbacks)
  {
    self->_btServiceAddCallbacks = 0;
    btSession = self->_btSession;
    if (btSession)
    {
      (softLinkBTServiceRemoveCallbacks[0])(btSession, _btServiceEventHandler);
    }
  }

  if (self->_btSession)
  {
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

      LogPrintF(ucat, "[CUBluetoothClassicConnection _btEnsureStopped]", 0x1Eu, "BTSession detach\n", v2, v3, v4, v5, v9);
    }

LABEL_9:
    (softLinkBTSessionDetachWithQueue[0])(&self->_btSession);
    self->_btSession = 0;
  }

  self->_btSessionStarted = 0;
}

- (BTDeviceImpl)_btDeviceWithID:(id)a3 error:(id *)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v36 = 0;
  v7 = [v6 UTF8String];
  if (!v7)
  {
    if (!a4)
    {
      goto LABEL_21;
    }

    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "Bad device ID UTF-8: '%@'", v8, v9, v10, v11, v12, v6);
    goto LABEL_24;
  }

  v13 = v7;
  v37 = 0uLL;
  if (!StringToUUIDEx(v7, 0xFFFFFFFFFFFFFFFFLL, 0, 0, &v37, v10, v11, v12))
  {
    v24 = (softLinkBTDeviceFromIdentifier[0])(self->_btSession, &v37, &v36);
    if (v24 == -310000)
    {
      v30 = 4294960596;
    }

    else
    {
      v30 = (v24 + 310000);
    }

    if (!v24)
    {
      goto LABEL_14;
    }

    if (!a4)
    {
      goto LABEL_21;
    }

    NSErrorF_safe(*MEMORY[0x1E696A768], v30, "BTDeviceFromIdentifier failed", v25, v26, v27, v28, v29, v33);
LABEL_24:
    *a4 = v31 = 0;
    goto LABEL_15;
  }

  v35 = 0;
  v34 = 0;
  v14 = TextToHardwareAddress(v13, 0xFFFFFFFFFFFFFFFFLL, 6, &v34);
  if (v14)
  {
    if (a4)
    {
      v21 = v14;
      v22 = *MEMORY[0x1E696A768];
      v33 = v13;
      v23 = "Bad device ID format: '%s'";
      goto LABEL_20;
    }

LABEL_21:
    v31 = 0;
    goto LABEL_15;
  }

  v20 = (softLinkBTDeviceFromAddress[0])(self->_btSession, &v34, &v36);
  if (v20 == -310000)
  {
    v21 = 4294960596;
  }

  else
  {
    v21 = (v20 + 310000);
  }

  if (v20)
  {
    if (a4)
    {
      v22 = *MEMORY[0x1E696A768];
      v23 = "BTDeviceFromAddress failed";
LABEL_20:
      *a4 = NSErrorF_safe(v22, v21, v23, v15, v16, v17, v18, v19, v33);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

LABEL_14:
  v31 = v36;
LABEL_15:

  return v31;
}

- (BOOL)_runSetupChannel
{
  v6 = 0;
  v3 = [(CUBluetoothClassicConnection *)self _setupIOAndReturnError:&v6];
  v4 = v6;
  if (!v3)
  {
    [(CUBluetoothClassicConnection *)self _reportError:v4];
  }

  return v3;
}

- (BOOL)_runConnectStart
{
  v40[2] = *MEMORY[0x1E69E9840];
  v8 = self->_destinationPeer;
  if (!v8)
  {
    v33 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "No destination peer", v3, v4, v5, v6, v7, v37);
    [(CUBluetoothClassicConnection *)self _reportError:v33];

    v31 = 0;
    goto LABEL_28;
  }

  v39 = 0;
  v9 = [(CUBluetoothClassicConnection *)self _btDeviceWithID:v8 error:&v39];
  v10 = v39;
  v16 = v10;
  if (v9)
  {
    v17 = (softLinkBTDeviceGetAddressString[0])(v9, self->_btDeviceAddrStr, 32);
    v18 = (v17 + 310000);
    if (v17)
    {
      v19 = v18 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      v34 = *MEMORY[0x1E696A768];
      v35 = "BTDeviceGetAddressString failed";
LABEL_37:
      v36 = NSErrorF_safe(v34, v18, v35, v11, v12, v13, v14, v15, v37);
      [(CUBluetoothClassicConnection *)self _reportError:v36];

      goto LABEL_38;
    }

    if (!self->_btServiceAddCallbacks)
    {
      v20 = (softLinkBTServiceAddCallbacks[0])(self->_btSession, _btServiceEventHandler, self);
      if (v20)
      {
        v18 = (v20 + 310000);
        if (v20 != -310000)
        {
          v34 = *MEMORY[0x1E696A768];
          v35 = "BTServiceAddCallbacks failed";
          goto LABEL_37;
        }
      }

      self->_btServiceAddCallbacks = 1;
    }

    ucat = self->_ucat;
    if (ucat->var0 > 30)
    {
      goto LABEL_16;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_16;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUBluetoothClassicConnection _runConnectStart]", 0x1Eu, "Connect: %@\n", v12, v13, v14, v15, v8);
LABEL_16:
    if ((self->_connectionFlags & 4) != 0)
    {
      v40[0] = 0;
      v40[1] = 0;
      v22 = (softLinkBTDeviceConnectServicesWithParameters[0])(v9, 4294956991, 32, v40);
      if (v22 != 2)
      {
LABEL_22:
        if (!v22 || (v18 = (v22 + 310000), v22 == -310000))
        {
          timeoutTimer = self->_timeoutTimer;
          if (timeoutTimer)
          {
            v25 = timeoutTimer;
            dispatch_source_cancel(v25);
            v26 = self->_timeoutTimer;
            self->_timeoutTimer = 0;
          }

          v27 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
          v28 = self->_timeoutTimer;
          self->_timeoutTimer = v27;
          v29 = v27;

          handler[0] = MEMORY[0x1E69E9820];
          handler[1] = 3221225472;
          handler[2] = __48__CUBluetoothClassicConnection__runConnectStart__block_invoke;
          handler[3] = &unk_1E73A49F0;
          handler[4] = v29;
          handler[5] = self;
          dispatch_source_set_event_handler(v29, handler);
          v30 = dispatch_time(0, 15000000000);
          dispatch_source_set_timer(v29, v30, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
          dispatch_activate(v29);

          v31 = 1;
          goto LABEL_27;
        }

        v34 = *MEMORY[0x1E696A768];
        v35 = "BTDeviceConnectServices failed";
        goto LABEL_37;
      }

      v23 = self->_ucat;
      if (v23->var0 <= 30)
      {
        if (v23->var0 == -1)
        {
          if (!_LogCategory_Initialize(v23, 0x1Eu))
          {
            goto LABEL_17;
          }

          v23 = self->_ucat;
        }

        LogPrintF(v23, "[CUBluetoothClassicConnection _runConnectStart]", 0x1Eu, "Connect Tipi failed, retrying in normal mode", v12, v13, v14, v15, v37);
      }
    }

LABEL_17:
    v22 = (softLinkBTDeviceConnectServices[0])(v9, 4294956991);
    goto LABEL_22;
  }

  if (!v10)
  {
    v34 = *MEMORY[0x1E696A768];
    v35 = "No device, no error";
    v18 = 4294960596;
    goto LABEL_37;
  }

  [(CUBluetoothClassicConnection *)self _reportError:v10];
LABEL_38:
  v31 = 0;
LABEL_27:

LABEL_28:
  return v31;
}

void __48__CUBluetoothClassicConnection__runConnectStart__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v9[14];
  if (v8 == v10)
  {
    if (v8)
    {
      v12 = v10;
      dispatch_source_cancel(v12);
      v13 = *(a1 + 40);
      v14 = *(v13 + 112);
      *(v13 + 112) = 0;

      v9 = *(a1 + 40);
    }

    v16 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960574, "Connection timeout", a4, a5, a6, a7, a8, v15);
    [v9 _reportError:v16];
  }
}

- (BOOL)_runBTSessionStart
{
  v12 = _btSessionEventCallback;
  v2 = self;
  v3 = (softLinkBTSessionAttachWithQueue[0])(v2->_ucat->var4, &v12, v2, v2->_dispatchQueue);
  if (v3)
  {
    CFRelease(v2);
    v9 = NSErrorF_safe(*MEMORY[0x1E696A768], (v3 + 310000), "BTSessionAttachWithQueue failed", v4, v5, v6, v7, v8, v11);
    [(CUBluetoothClassicConnection *)v2 _reportError:v9];
  }

  else
  {
    v2->_btSessionAttaching = 1;
    v2->_btSessionStarted = 1;
  }

  return v3 == 0;
}

- (void)_run
{
  if (!self->_invalidateCalled)
  {
    while (1)
    {
      state = self->_state;
      if (state > 13)
      {
        break;
      }

      if (state <= 10)
      {
        if (!state)
        {
          v8 = 10;
          goto LABEL_42;
        }

        if (state != 10)
        {
          return;
        }

        v14 = [(CUBluetoothClassicConnection *)self _runBTSessionStart];
LABEL_34:
        v8 = self->_state;
        if (v14)
        {
          ++v8;
          goto LABEL_42;
        }

        goto LABEL_43;
      }

      if (state == 11)
      {
        if (!self->_btSession)
        {
          v8 = 11;
          goto LABEL_43;
        }

        v8 = 12;
        goto LABEL_42;
      }

      if (state == 12)
      {
        v14 = [(CUBluetoothClassicConnection *)self _runConnectStart];
        goto LABEL_34;
      }

      if (self->_btConnected)
      {
        v8 = 14;
LABEL_42:
        self->_state = v8;
        goto LABEL_43;
      }

      v8 = 13;
LABEL_43:
      if (v8 == state)
      {
        return;
      }

      ucat = self->_ucat;
      if (ucat->var0 <= 30)
      {
        if (ucat->var0 != -1)
        {
          goto LABEL_46;
        }

        if (_LogCategory_Initialize(ucat, 0x1Eu))
        {
          ucat = self->_ucat;
LABEL_46:
          LogPrintF(ucat, "[CUBluetoothClassicConnection _run]", 0x1Eu, "State: %s -> %s\n", v2, v3, v4, v5, off_1E73A2D88[state]);
        }
      }
    }

    if (state > 16)
    {
      if (state == 17)
      {
        v8 = 18;
        goto LABEL_42;
      }

      if (state != 18)
      {
        if (state != 19)
        {
          return;
        }

        timeoutTimer = self->_timeoutTimer;
        if (timeoutTimer)
        {
          v10 = timeoutTimer;
          dispatch_source_cancel(v10);
          v11 = self->_timeoutTimer;
          self->_timeoutTimer = 0;
        }

        v12 = _Block_copy(self->_activateCompletion);
        activateCompletion = self->_activateCompletion;
        self->_activateCompletion = 0;

        if (v12)
        {
          v12[2](v12, 0);
        }

        if ((self->_connectionFlags & 2) == 0)
        {
          [(CUBluetoothClassicConnection *)self _processReads:0];
          [(CUBluetoothClassicConnection *)self _processWrites];
        }

        v8 = self->_state;
        goto LABEL_43;
      }

      v14 = [(CUBluetoothClassicConnection *)self _runSetupChannel];
    }

    else
    {
      if (state == 14)
      {
        if ((self->_connectionFlags & 2) != 0)
        {
          v8 = 19;
        }

        else
        {
          v8 = 15;
        }

        goto LABEL_42;
      }

      if (state != 15)
      {
        if (!self->_l2capChannel)
        {
          v8 = 16;
          goto LABEL_43;
        }

        v8 = 17;
        goto LABEL_42;
      }

      v14 = [(CUBluetoothClassicConnection *)self _runOpenChannelStart];
    }

    goto LABEL_34;
  }

  [(CUBluetoothClassicConnection *)self _invalidated];
}

- (void)_reportError:(id)a3
{
  v14 = a3;
  ucat = self->_ucat;
  if (ucat->var0 <= 90)
  {
    v9 = v14;
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[CUBluetoothClassicConnection _reportError:]", 0x5Au, "Error: %{error}\n", v4, v5, v6, v7, v9);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(ucat, 0x5Au))
    {
      ucat = self->_ucat;
      v9 = v14;
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
    v10[2](v10, v14);
  }

  else
  {
    v12 = _Block_copy(self->_errorHandler);
    errorHandler = self->_errorHandler;
    self->_errorHandler = 0;

    if (v12)
    {
      v12[2](v12, v14);
    }
  }

  [(CUBluetoothClassicConnection *)self _abortReadsWithError:v14];
  [(CUBluetoothClassicConnection *)self _abortWritesWithError:v14];
}

- (BOOL)_setupIOAndReturnError:(id *)a3
{
  v5 = [(CBL2CAPChannel *)self->_l2capChannel socketFD];
  if (v5 < 0)
  {
    if (a3)
    {
      NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "No socket for L2CAP channel: %@", v6, v7, v8, v9, v10, self->_l2capChannel);
      goto LABEL_14;
    }

    return 0;
  }

  v11 = v5;
  self->_socketFD = v5;
  v42 = 1;
  if (setsockopt(v5, 0xFFFF, 4130, &v42, 4u))
  {
    if (*__error())
    {
      v17 = *__error();
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v17 = 4294960596;
    }

    if (!a3)
    {
      return 0;
    }

    v34 = *MEMORY[0x1E696A768];
    v35 = "Set SO_NOSIGPIPE failed";
LABEL_13:
    NSErrorF_safe(v34, v17, v35, v12, v13, v14, v15, v16, v37);
    v36 = LABEL_14:;
    v31 = 0;
LABEL_15:
    *a3 = v36;
    return v31;
  }

LABEL_5:
  v18 = SocketSetNonBlocking(v11, 1);
  if (v18)
  {
    if (!a3)
    {
      return 0;
    }

    v17 = v18;
    v34 = *MEMORY[0x1E696A768];
    v35 = "Make non-blocking failed";
    goto LABEL_13;
  }

  v19 = dispatch_source_create(MEMORY[0x1E69E96F8], v11, 0, self->_dispatchQueue);
  readSource = self->_readSource;
  self->_readSource = v19;

  v21 = self->_readSource;
  if (!v21)
  {
    if (a3)
    {
      v34 = *MEMORY[0x1E696A768];
      v35 = "Create read source failed";
      v17 = 4294960550;
      goto LABEL_13;
    }

    return 0;
  }

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __55__CUBluetoothClassicConnection__setupIOAndReturnError___block_invoke;
  handler[3] = &unk_1E73A4F68;
  handler[4] = self;
  dispatch_source_set_event_handler(v21, handler);
  v22 = self->_readSource;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __55__CUBluetoothClassicConnection__setupIOAndReturnError___block_invoke_2;
  v40[3] = &unk_1E73A4F68;
  v40[4] = self;
  dispatch_source_set_cancel_handler(v22, v40);
  dispatch_resume(self->_readSource);
  v23 = dispatch_source_create(MEMORY[0x1E69E9730], v11, 0, self->_dispatchQueue);
  writeSource = self->_writeSource;
  self->_writeSource = v23;

  v30 = self->_writeSource;
  v31 = v30 != 0;
  if (!v30)
  {
    if (!a3)
    {
      return v31;
    }

    v36 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960549, "Create write source failed", v25, v26, v27, v28, v29, v37);
    goto LABEL_15;
  }

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __55__CUBluetoothClassicConnection__setupIOAndReturnError___block_invoke_3;
  v39[3] = &unk_1E73A4F68;
  v39[4] = self;
  dispatch_source_set_event_handler(v30, v39);
  v32 = self->_writeSource;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __55__CUBluetoothClassicConnection__setupIOAndReturnError___block_invoke_4;
  v38[3] = &unk_1E73A4F68;
  v38[4] = self;
  dispatch_source_set_cancel_handler(v32, v38);
  self->_writeSuspended = 1;
  return v31;
}

uint64_t __55__CUBluetoothClassicConnection__setupIOAndReturnError___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  *(v2 + 72) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

uint64_t __55__CUBluetoothClassicConnection__setupIOAndReturnError___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 120);
  *(v2 + 120) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (BOOL)_startConnectingAndReturnError:(id *)a3
{
  destinationPeer = self->_destinationPeer;
  if (destinationPeer)
  {
    [(CUBluetoothClassicConnection *)self _run];
  }

  else if (a3)
  {
    *a3 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "No destination peer", v3, v4, v5, v6, v7, v11);
  }

  return destinationPeer != 0;
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_btSession && !self->_btSessionAttaching && !self->_readSource && !self->_writeSource && !self->_readRequestCurrent && ![(NSMutableArray *)self->_readRequests count]&& !self->_writeRequestCurrent && ![(NSMutableArray *)self->_writeRequests count])
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

      LogPrintF(ucat, "[CUBluetoothClassicConnection _invalidated]", 0x1Eu, "Invalidated\n", v8, v9, v10, v11, v14);
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

    LogPrintF(ucat, "[CUBluetoothClassicConnection _invalidate]", 0x1Eu, "Invalidating\n", v2, v3, v4, v5, v6);
  }

LABEL_6:
  errorHandler = self->_errorHandler;
  self->_errorHandler = 0;

  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v17 = timeoutTimer;
    dispatch_source_cancel(v17);
    v18 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  v19 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960573, "Invalidated (I)", v11, v12, v13, v14, v15, v22);
  [(CUBluetoothClassicConnection *)self _reportError:v19];

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

  [(CUBluetoothClassicConnection *)self _btEnsureStopped];

  [(CUBluetoothClassicConnection *)self _invalidated];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__CUBluetoothClassicConnection_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (BOOL)activateDirectAndReturnError:(id *)a3
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
        v19 = [(CUBluetoothClassicConnection *)self _setupIOAndReturnError:&v41];
        writeRequests = v41;
        if (v19)
        {
          v25 = _Block_copy(self->_activateCompletion);
          activateCompletion = self->_activateCompletion;
          self->_activateCompletion = 0;

          if (v25)
          {
            v25[2](v25, 0);
          }

          goto LABEL_18;
        }

        v27 = self->_ucat;
        if (v27->var0 <= 90)
        {
          if (v27->var0 != -1)
          {
LABEL_15:
            LogPrintF(v27, "[CUBluetoothClassicConnection activateDirectAndReturnError:]", 0x5Au, "### Activate failed: %{error}\n", v20, v21, v22, v23, writeRequests);
            goto LABEL_23;
          }

          if (_LogCategory_Initialize(v27, 0x5Au))
          {
            v27 = self->_ucat;
            goto LABEL_15;
          }
        }

LABEL_23:
        if (a3)
        {
LABEL_24:
          v38 = writeRequests;
          v36 = 0;
          *a3 = writeRequests;
          goto LABEL_28;
        }

LABEL_27:
        v36 = 0;
        goto LABEL_28;
      }

      ucat = self->_ucat;
      l2capChannel = self->_l2capChannel;
    }

    v12 = [(CBL2CAPChannel *)l2capChannel PSM];
    v13 = [(CBL2CAPChannel *)self->_l2capChannel peer];
    v14 = [v13 identifier];
    LogPrintF(ucat, "[CUBluetoothClassicConnection activateDirectAndReturnError:]", 0x1Eu, "Activate incoming PSM 0x%04X, peer %@, CF %#{flags}\n", v15, v16, v17, v18, v12);

    goto LABEL_9;
  }

  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_7:
      LogPrintF(ucat, "[CUBluetoothClassicConnection activateDirectAndReturnError:]", 0x1Eu, "Activate outgoing peer %@, service %@, CF %#{flags}, RS %#{flags}\n", v3, v4, v5, v6, self->_destinationPeer);
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
  v28 = [(CUBluetoothClassicConnection *)self _startConnectingAndReturnError:&v40];
  writeRequests = v40;
  if (!v28)
  {
    v37 = self->_ucat;
    if (v37->var0 > 90)
    {
      goto LABEL_26;
    }

    if (v37->var0 == -1)
    {
      if (!_LogCategory_Initialize(v37, 0x5Au))
      {
LABEL_26:
        if (a3)
        {
          goto LABEL_24;
        }

        goto LABEL_27;
      }

      v37 = self->_ucat;
    }

    LogPrintF(v37, "[CUBluetoothClassicConnection activateDirectAndReturnError:]", 0x5Au, "### Activate failed: %{error}\n", v29, v30, v31, v32, writeRequests);
    goto LABEL_26;
  }

LABEL_18:

  v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
  readRequests = self->_readRequests;
  self->_readRequests = v33;

  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
  writeRequests = self->_writeRequests;
  self->_writeRequests = v35;
  v36 = 1;
LABEL_28:

  return v36;
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__CUBluetoothClassicConnection_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E73A49A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __55__CUBluetoothClassicConnection_activateWithCompletion___block_invoke(uint64_t a1)
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

- (void)setLabel:(id)a3
{
  objc_storeStrong(&self->_label, a3);
  v13 = a3;
  v5 = qword_1EADE9368;
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
  v4.super_class = CUBluetoothClassicConnection;
  [(CUBluetoothClassicConnection *)&v4 dealloc];
}

- (CUBluetoothClassicConnection)init
{
  v5.receiver = self;
  v5.super_class = CUBluetoothClassicConnection;
  v2 = [(CUBluetoothClassicConnection *)&v5 init];
  if (v2)
  {
    if (CUMainQueue_sOnce != -1)
    {
      dispatch_once(&CUMainQueue_sOnce, &__block_literal_global_23);
    }

    objc_storeStrong(&v2->_dispatchQueue, CUMainQueue_sQueue);
    v2->_socketFD = -1;
    v2->_ucat = &gLogCategory_CUBluetoothClassicConnection;
    v3 = v2;
  }

  return v2;
}

@end