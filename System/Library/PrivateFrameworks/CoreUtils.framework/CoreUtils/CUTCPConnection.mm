@interface CUTCPConnection
- ($4FF8D77539A8BD95DCE0A545902499A9)peerAddr;
- ($4FF8D77539A8BD95DCE0A545902499A9)selfAddr;
- (BOOL)_activateDirectAndReturnError:(id *)a3;
- (BOOL)_prepareWriteRequest:(id)a3 error:(id *)a4;
- (BOOL)_readStatus;
- (BOOL)_readableData;
- (BOOL)_setupIOAndReturnError:(id *)a3;
- (BOOL)_startConnectingToBonjourDevice:(id)a3 error:(id *)a4;
- (BOOL)_startConnectingToDestination:(id)a3 error:(id *)a4;
- (BOOL)activateDirectAndReturnError:(id *)a3;
- (CUTCPConnection)init;
- (id)description;
- (void)_abortReadsWithError:(id)a3;
- (void)_abortWritesWithError:(id)a3;
- (void)_completeReadRequest:(id)a3 error:(id)a4;
- (void)_completeWriteRequest:(id)a3 error:(id)a4;
- (void)_invalidate;
- (void)_invalidated;
- (void)_logMetrics;
- (void)_netLinkStateChanged;
- (void)_prepareReadRequest:(id)a3;
- (void)_processReads:(BOOL)a3;
- (void)_processSocketEvents;
- (void)_processWrites:(BOOL)a3;
- (void)_updateTrafficRegistration;
- (void)activateWithCompletion:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)readWithRequest:(id)a3;
- (void)setLabel:(id)a3;
- (void)setTrafficFlags:(unsigned int)a3;
- (void)writeEndOfDataWithCompletion:(id)a3;
- (void)writeWithRequest:(id)a3;
@end

@implementation CUTCPConnection

- (BOOL)_readStatus
{
  while (1)
  {
    v3 = recv(self->_socketFD, &v17, 1uLL, 2);
    if ((v3 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!*__error())
    {
      v10 = 4294960596;
      goto LABEL_11;
    }

    v10 = *__error();
    if (v10 != 4)
    {
      if (!v10)
      {
        return 1;
      }

      if (v10 == 35)
      {
        return 0;
      }

LABEL_11:
      errorHandler = self->_errorHandler;
      if (errorHandler)
      {
        v13 = "Read status error";
        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

  if (v3)
  {
    return 1;
  }

  errorHandler = self->_errorHandler;
  if (errorHandler)
  {
    v13 = "Read status EOF";
    v10 = 4294960543;
LABEL_13:
    v14 = NSErrorWithOSStatusF(v10, v13, v4, v5, v6, v7, v8, v9, v16);
    errorHandler[2](errorHandler, v14);

    v15 = self->_errorHandler;
    goto LABEL_15;
  }

LABEL_14:
  v15 = 0;
LABEL_15:
  self->_errorHandler = 0;

  return 1;
}

- ($4FF8D77539A8BD95DCE0A545902499A9)selfAddr
{
  *(&retstr->var2.sin6_addr + 4) = *(&self[16].var2.sin6_addr + 8);
  retstr->var0 = *&self[16].var2.sin6_flowinfo;
  return self;
}

- ($4FF8D77539A8BD95DCE0A545902499A9)peerAddr
{
  retstr->var0 = *&self[15].var2.sin6_flowinfo;
  *(&retstr->var2.sin6_addr + 4) = *(&self[15].var2.sin6_addr + 8);
  return self;
}

- (void)_completeWriteRequest:(id)a3 error:(id)a4
{
  v15 = a3;
  v10 = a4;
  rawIOLogLevel = self->_rawIOLogLevel;
  ucat = self->_ucat;
  if (ucat->var0 <= rawIOLogLevel)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[CUTCPConnection _completeWriteRequest:error:]", rawIOLogLevel, "Write completed: %{error}\n", v6, v7, v8, v9, v10);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(ucat, self->_rawIOLogLevel))
    {
      ucat = self->_ucat;
      rawIOLogLevel = self->_rawIOLogLevel;
      goto LABEL_3;
    }
  }

LABEL_5:
  v13 = v15[1];
  v15[1] = v10;

  v14 = [v15 completion];
  [v15 setCompletion:0];
  if (v14)
  {
    v14[2](v14);
  }
}

- (void)_abortWritesWithError:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v12 = a3;
  if (!self->_invalidateCalled && !self->_firstError)
  {
    objc_storeStrong(&self->_firstError, a3);
  }

  netLinkManager = self->_netLinkManager;
  if (netLinkManager)
  {
    netLinkEndpoint = self->_netLinkEndpoint;
    if (netLinkEndpoint)
    {
      [(CUNetLinkManager *)netLinkManager removeEndpoint:?];
      v14 = self->_netLinkManager;
      self->_netLinkManager = 0;
    }
  }

  if (self->_writeRequestCurrent || [(NSMutableArray *)self->_writeRequests count])
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 != -1)
      {
LABEL_11:
        v16 = NSPrintF("%##a", v5, netLinkEndpoint, v7, v8, v9, v10, v11, &self->_peerAddr);
        v24 = NSPrintF("%##a", v17, v18, v19, v20, v21, v22, v23, &self->_selfAddr);
        v47 = NSPrintF("%{error}", v25, v26, v27, v28, v29, v30, v31, v12);
        LogPrintF(ucat, "[CUTCPConnection _abortWritesWithError:]", 0x1Eu, "Abort writes: peer=%@, self=%@, error=%@", v32, v33, v34, v35, v16);

        goto LABEL_13;
      }

      if (_LogCategory_Initialize(self->_ucat, 0x1Eu))
      {
        ucat = self->_ucat;
        goto LABEL_11;
      }
    }
  }

LABEL_13:
  v36 = self->_writeRequestCurrent;
  if (v36)
  {
    writeRequestCurrent = self->_writeRequestCurrent;
    self->_writeRequestCurrent = 0;

    [(CUTCPConnection *)self _completeWriteRequest:v36 error:v12];
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v38 = self->_writeRequests;
  v39 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v49;
    do
    {
      v42 = 0;
      v43 = v36;
      do
      {
        if (*v49 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v36 = *(*(&v48 + 1) + 8 * v42);

        [(CUTCPConnection *)self _completeWriteRequest:v36 error:v12];
        ++v42;
        v43 = v36;
      }

      while (v40 != v42);
      v40 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v40);
  }

  [(NSMutableArray *)self->_writeRequests removeAllObjects];
  writeSource = self->_writeSource;
  if (writeSource && !self->_writeSuspended)
  {
    self->_writeSuspended = 1;
    dispatch_suspend(writeSource);
  }

  errorHandler = self->_errorHandler;
  if (errorHandler)
  {
    errorHandler[2](errorHandler, v12);
    v46 = self->_errorHandler;
  }

  else
  {
    v46 = 0;
  }

  self->_errorHandler = 0;

  [(CUTCPConnection *)self _invalidated];
}

- (BOOL)_prepareWriteRequest:(id)a3 error:(id *)a4
{
  v46 = *MEMORY[0x1E69E9840];
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
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v20 = v8;
    v21 = [v20 countByEnumeratingWithState:&v41 objects:v45 count:16];
    v22 = v6 + 16;
    if (v21)
    {
      v23 = v21;
      v24 = *v42;
      v22 = v6 + 16;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v42 != v24)
          {
            objc_enumerationMutation(v20);
          }

          v26 = *(*(&v41 + 1) + 8 * i);
          *v22 = [v26 bytes];
          *(v22 + 1) = [v26 length];
          v22 += 16;
        }

        v23 = [v20 countByEnumeratingWithState:&v41 objects:v45 count:16];
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

    rawIOLogLevel = self->_rawIOLogLevel;
    if (gLogCategory_CUTCPConnection > rawIOLogLevel || gLogCategory_CUTCPConnection == -1 && !_LogCategory_Initialize(&gLogCategory_CUTCPConnection, rawIOLogLevel))
    {
      goto LABEL_27;
    }

    v33 = *(v6 + 70);
    if (v33)
    {
      v34 = 0;
      v35 = 16 * v33;
      v36 = (*(v6 + 34) + 8);
      do
      {
        v37 = *v36;
        v36 += 2;
        v34 += v37;
        v35 -= 16;
      }

      while (v35);
    }

    v38 = self->_rawIOLogLevel;
    ucat = self->_ucat;
    if (ucat->var0 > v38)
    {
      goto LABEL_27;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, self->_rawIOLogLevel))
      {
        goto LABEL_27;
      }

      ucat = self->_ucat;
      v38 = self->_rawIOLogLevel;
      v33 = *(v6 + 70);
    }

    LogPrintF(ucat, "[CUTCPConnection _prepareWriteRequest:error:]", v38, "Write prepared (%d iov, %zu total)\n", v28, v29, v30, v31, v33);
LABEL_27:
    v17 = 1;
    goto LABEL_28;
  }

  if (a4)
  {
    v10 = [v6 bytesIOMaxCount];
    NSErrorWithOSStatusF(4294960532, "Too many write elements (%zu max)", v11, v12, v13, v14, v15, v16, v10);
    *a4 = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_28:

  return v17;
}

- (void)_processWrites:(BOOL)a3
{
  if (a3)
  {
    flowControlState = self->_flowControlState;
    if (flowControlState != 10)
    {
      rawIOLogLevel = self->_rawIOLogLevel;
      ucat = self->_ucat;
      if (ucat->var0 <= rawIOLogLevel)
      {
        if (ucat->var0 != -1)
        {
          if (flowControlState)
          {
            goto LABEL_6;
          }

          goto LABEL_11;
        }

        if (_LogCategory_Initialize(ucat, self->_rawIOLogLevel))
        {
          ucat = self->_ucat;
          rawIOLogLevel = self->_rawIOLogLevel;
          flowControlState = self->_flowControlState;
          if (flowControlState)
          {
LABEL_6:
            if (flowControlState == 20)
            {
              v11 = "Closed";
            }

            else if (flowControlState == 10)
            {
              v11 = "Open";
            }

            else
            {
              v11 = "?";
            }

            goto LABEL_14;
          }

LABEL_11:
          v11 = "Unknown";
LABEL_14:
          LogPrintF(ucat, "[CUTCPConnection _processWrites:]", rawIOLogLevel, "Flow control changed: %s -> %s\n", v3, v4, v5, v6, v11);
        }
      }

      self->_flowControlState = 10;
      v12 = _Block_copy(self->_flowControlChangedHandler);
      v13 = v12;
      if (v12)
      {
        (*(v12 + 2))(v12);
      }
    }
  }

  v14 = 4;
  do
  {
    v15 = self->_writeRequestCurrent;
    if (!v15)
    {
      v24 = [(NSMutableArray *)self->_writeRequests firstObject];
      if (!v24)
      {
        if ((!self->_flowControlChangedHandler || self->_flowControlState == 10) && !self->_writeSuspended)
        {
          self->_writeSuspended = 1;
          dispatch_suspend(self->_writeSource);
        }

        v15 = 0;
        goto LABEL_72;
      }

      v15 = v24;
      [(NSMutableArray *)self->_writeRequests removeObjectAtIndex:0];
      v49 = 0;
      [(CUTCPConnection *)self _prepareWriteRequest:v15 error:&v49];
      v25 = v49;
      if (v25)
      {
        v26 = v25;
        goto LABEL_41;
      }

      objc_storeStrong(&self->_writeRequestCurrent, v15);
    }

    v21 = SocketWriteData(self->_socketFD, &v15->_iop, &v15->_ion);
    v22 = self->_rawIOLogLevel;
    v23 = self->_ucat;
    if (v23->var0 <= v22)
    {
      if (v23->var0 != -1)
      {
        goto LABEL_22;
      }

      if (_LogCategory_Initialize(v23, self->_rawIOLogLevel))
      {
        v23 = self->_ucat;
        LODWORD(v22) = self->_rawIOLogLevel;
LABEL_22:
        LogPrintF(v23, "[CUTCPConnection _processWrites:]", v22, "Write socket %d, pre-ion %d, post-ion %d, %#m\n", v17, v18, v19, v20, self->_socketFD);
      }
    }

    if (v21)
    {
      if (v21 != 35)
      {
        v45 = NSErrorWithOSStatusF(v21, "Write failed", v22, v16, v17, v18, v19, v20, v48);
        [(CUTCPConnection *)self _abortWritesWithError:v45];

LABEL_72:
        return;
      }

      v41 = self->_flowControlState;
      if (v41 == 20)
      {
LABEL_70:
        if (self->_writeSuspended)
        {
          self->_writeSuspended = 0;
          dispatch_resume(self->_writeSource);
        }

        goto LABEL_72;
      }

      v42 = self->_rawIOLogLevel;
      v43 = self->_ucat;
      if (v43->var0 <= v42)
      {
        if (v43->var0 != -1)
        {
LABEL_49:
          if (v41)
          {
            if (v41 == 20)
            {
              v44 = "Closed";
            }

            else if (v41 == 10)
            {
              v44 = "Open";
            }

            else
            {
              v44 = "?";
            }
          }

          else
          {
            v44 = "Unknown";
          }

          LogPrintF(v43, "[CUTCPConnection _processWrites:]", v42, "Flow control changed: %s -> %s\n", v17, v18, v19, v20, v44);
          goto LABEL_67;
        }

        if (_LogCategory_Initialize(v43, self->_rawIOLogLevel))
        {
          v43 = self->_ucat;
          v42 = self->_rawIOLogLevel;
          v41 = self->_flowControlState;
          goto LABEL_49;
        }
      }

LABEL_67:
      self->_flowControlState = 20;
      v46 = _Block_copy(self->_flowControlChangedHandler);
      v47 = v46;
      if (v46)
      {
        (*(v46 + 2))(v46);
      }

      goto LABEL_70;
    }

    if (![(CUWriteRequest *)v15 endOfData])
    {
      goto LABEL_37;
    }

    v31 = self->_rawIOLogLevel;
    v32 = self->_ucat;
    if (v32->var0 <= v31)
    {
      if (v32->var0 != -1)
      {
        goto LABEL_31;
      }

      if (_LogCategory_Initialize(v32, self->_rawIOLogLevel))
      {
        v32 = self->_ucat;
        v31 = self->_rawIOLogLevel;
LABEL_31:
        LogPrintF(v32, "[CUTCPConnection _processWrites:]", v31, "Shutdown socket %d\n", v27, v28, v29, v30, self->_socketFD);
      }
    }

    if (shutdown(self->_socketFD, 1))
    {
      if (!*__error())
      {
        v39 = 4294960596;
LABEL_39:
        v26 = NSErrorWithOSStatusF(v39, "shutdown() failed", v33, v34, v35, v36, v37, v38, v48);
        goto LABEL_40;
      }

      v39 = *__error();
      if (v39)
      {
        goto LABEL_39;
      }
    }

LABEL_37:
    v26 = 0;
LABEL_40:
    writeRequestCurrent = self->_writeRequestCurrent;
    self->_writeRequestCurrent = 0;

LABEL_41:
    [(CUTCPConnection *)self _completeWriteRequest:v15 error:v26];

    --v14;
  }

  while (v14);
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
    v8 = __48__CUTCPConnection_writeEndOfDataWithCompletion___block_invoke;
    v9 = &unk_1E73A49A0;
    v11 = v4;
    v10 = v5;
    [(CUWriteRequest *)v10 setCompletion:&v6];
  }

  [(CUTCPConnection *)self writeWithRequest:v5, v6, v7, v8, v9];
}

void __48__CUTCPConnection_writeEndOfDataWithCompletion___block_invoke(uint64_t a1)
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
  v7[2] = __36__CUTCPConnection_writeWithRequest___block_invoke;
  v7[3] = &unk_1E73A49F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __36__CUTCPConnection_writeWithRequest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  if (*(v9 + 112) == 1)
  {
    v10 = *(a1 + 40);
    v13 = NSErrorWithOSStatusF(4294960573, "Invalidated (W)", a3, a4, a5, a6, a7, a8, v12);
    [v9 _completeWriteRequest:v10 error:v13];
  }

  else
  {
    [*(v9 + 72) addObject:*(a1 + 40)];
    v11 = *(a1 + 32);
    if ((v11[76] & 0x80000000) == 0)
    {

      [v11 _processWrites:0];
    }
  }
}

- (void)_completeReadRequest:(id)a3 error:(id)a4
{
  v17 = a3;
  v6 = a4;
  rawIOLogLevel = self->_rawIOLogLevel;
  ucat = self->_ucat;
  if (ucat->var0 <= rawIOLogLevel)
  {
    v9 = v17;
    if (ucat->var0 != -1)
    {
LABEL_3:
      v10 = [v9 length];
      LogPrintF(ucat, "[CUTCPConnection _completeReadRequest:error:]", rawIOLogLevel, "Read completed: %zu byte(s), %{error}\n", v11, v12, v13, v14, v10);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(self->_ucat, self->_rawIOLogLevel))
    {
      ucat = self->_ucat;
      rawIOLogLevel = self->_rawIOLogLevel;
      v9 = v17;
      goto LABEL_3;
    }
  }

LABEL_5:
  v15 = v17[2];
  v17[2] = v6;

  v16 = [v17 completion];
  [v17 setCompletion:0];
  if (v16)
  {
    v16[2](v16);
  }
}

- (BOOL)_readableData
{
  do
  {
    v3 = recv(self->_socketFD, &v5, 1uLL, 2);
  }

  while (v3 < 0 && *__error() && *__error() == 4);
  return v3 > 0;
}

- (void)_abortReadsWithError:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v12 = a3;
  if (!self->_invalidateCalled && !self->_firstError)
  {
    objc_storeStrong(&self->_firstError, a3);
  }

  netLinkManager = self->_netLinkManager;
  if (netLinkManager)
  {
    netLinkEndpoint = self->_netLinkEndpoint;
    if (netLinkEndpoint)
    {
      [(CUNetLinkManager *)netLinkManager removeEndpoint:?];
      v14 = self->_netLinkManager;
      self->_netLinkManager = 0;
    }
  }

  if (self->_readRequestCurrent || [(NSMutableArray *)self->_readRequests count])
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 != -1)
      {
LABEL_11:
        v16 = NSPrintF("%##a", v5, netLinkEndpoint, v7, v8, v9, v10, v11, &self->_peerAddr);
        v24 = NSPrintF("%##a", v17, v18, v19, v20, v21, v22, v23, &self->_selfAddr);
        v47 = NSPrintF("%{error}", v25, v26, v27, v28, v29, v30, v31, v12);
        LogPrintF(ucat, "[CUTCPConnection _abortReadsWithError:]", 0x1Eu, "Abort reads: peer=%@, self=%@, error=%@", v32, v33, v34, v35, v16);

        goto LABEL_13;
      }

      if (_LogCategory_Initialize(self->_ucat, 0x1Eu))
      {
        ucat = self->_ucat;
        goto LABEL_11;
      }
    }
  }

LABEL_13:
  v36 = self->_readRequestCurrent;
  if (v36)
  {
    readRequestCurrent = self->_readRequestCurrent;
    self->_readRequestCurrent = 0;

    [(CUTCPConnection *)self _completeReadRequest:v36 error:v12];
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v38 = self->_readRequests;
  v39 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v49;
    do
    {
      v42 = 0;
      v43 = v36;
      do
      {
        if (*v49 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v36 = *(*(&v48 + 1) + 8 * v42);

        [(CUTCPConnection *)self _completeReadRequest:v36 error:v12];
        ++v42;
        v43 = v36;
      }

      while (v40 != v42);
      v40 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v40);
  }

  [(NSMutableArray *)self->_readRequests removeAllObjects];
  readSource = self->_readSource;
  if (readSource && !self->_readSuspended)
  {
    self->_readSuspended = 1;
    dispatch_suspend(readSource);
  }

  errorHandler = self->_errorHandler;
  if (errorHandler)
  {
    errorHandler[2](errorHandler, v12);
    v46 = self->_errorHandler;
  }

  else
  {
    v46 = 0;
  }

  self->_errorHandler = 0;

  [(CUTCPConnection *)self _invalidated];
}

- (void)_prepareReadRequest:(id)a3
{
  v22 = a3;
  if ([v22 bufferBytes])
  {
    v22[1] = [v22 bufferBytes];
    [v22 setData:0];
  }

  else
  {
    v4 = [v22 bufferData];

    if (v4)
    {
      v5 = [v22 bufferData];
      v6 = [v5 length];
      v7 = [v22 maxLength];

      if (v6 < v7)
      {
        v8 = [v22 maxLength];
        v9 = [v22 bufferData];
        [v9 setLength:v8];
      }
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:{objc_msgSend(v22, "maxLength")}];
      [v22 setBufferData:v10];
    }

    v11 = [v22 bufferData];
    v22[1] = [v11 mutableBytes];

    v12 = [v22 bufferData];
    [v22 setData:v12];
  }

  v13 = v22[2];
  v22[2] = 0;
  v22[3] = 0;

  [v22 setStatusFlags:0];
  rawIOLogLevel = self->_rawIOLogLevel;
  ucat = self->_ucat;
  if (ucat->var0 <= rawIOLogLevel)
  {
    v16 = v22;
    if (ucat->var0 != -1)
    {
LABEL_10:
      v17 = [v16 minLength];
      [v22 maxLength];
      LogPrintF(ucat, "[CUTCPConnection _prepareReadRequest:]", rawIOLogLevel, "Read prepared (%zu min, %zu max)\n", v18, v19, v20, v21, v17);
      goto LABEL_12;
    }

    if (_LogCategory_Initialize(self->_ucat, self->_rawIOLogLevel))
    {
      ucat = self->_ucat;
      rawIOLogLevel = self->_rawIOLogLevel;
      v16 = v22;
      goto LABEL_10;
    }
  }

LABEL_12:
}

- (void)_processReads:(BOOL)a3
{
  v29 = a3;
  v4 = 0;
  while (1)
  {
    v5 = self->_readRequestCurrent;
    if (v5)
    {
      goto LABEL_5;
    }

    v6 = [(NSMutableArray *)self->_readRequests firstObject];
    if (!v6)
    {
      if (v29)
      {
        if (v4)
        {
          readSuspended = self->_readSuspended;
        }

        else
        {
          v27 = [(CUTCPConnection *)self _readStatus];
          readSuspended = self->_readSuspended;
          if (v27)
          {
            if (!self->_readSuspended)
            {
              self->_readSuspended = 1;
              dispatch_suspend(self->_readSource);
            }

            goto LABEL_40;
          }
        }

        if (readSuspended)
        {
          self->_readSuspended = 0;
          dispatch_resume(self->_readSource);
        }
      }

LABEL_40:
      v24 = 0;
      goto LABEL_24;
    }

    obja = v6;
    [(NSMutableArray *)self->_readRequests removeObjectAtIndex:0];
    [(CUTCPConnection *)self _prepareReadRequest:obja];
    objc_storeStrong(&self->_readRequestCurrent, obja);
    v5 = obja;
LABEL_5:
    obj = v5;
    Data = SocketReadDataEx(self->_socketFD, v5->_bufferPtr, [(CUReadRequest *)v5 minLength], [(CUReadRequest *)v5 maxLength], &v5->_length);
    rawIOLogLevel = self->_rawIOLogLevel;
    ucat = self->_ucat;
    if (ucat->var0 > rawIOLogLevel)
    {
      goto LABEL_9;
    }

    if (ucat->var0 != -1)
    {
      goto LABEL_7;
    }

    if (_LogCategory_Initialize(self->_ucat, self->_rawIOLogLevel))
    {
      ucat = self->_ucat;
      rawIOLogLevel = self->_rawIOLogLevel;
LABEL_7:
      socketFD = self->_socketFD;
      [(CUReadRequest *)obj minLength];
      [(CUReadRequest *)obj maxLength];
      LogPrintF(ucat, "[CUTCPConnection _processReads:]", rawIOLogLevel, "Read socket %d, %zu min, %zu max, %zu offset, %zu nread, %#m\n", v17, v18, v19, v20, socketFD);
    }

LABEL_9:
    if (Data)
    {
      break;
    }

    if ((self->_flags & 0x80) != 0 && [(CUTCPConnection *)self _readableData])
    {
      [(CUReadRequest *)obj setStatusFlags:[(CUReadRequest *)obj statusFlags]| 1];
    }

    readRequestCurrent = self->_readRequestCurrent;
    self->_readRequestCurrent = 0;

    [(CUTCPConnection *)self _completeReadRequest:obj error:0];
    if (++v4 == 4)
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

    v23 = NSErrorWithOSStatusF(Data, v22, v7, v8, v9, v10, v11, v12, v28);
    [(CUTCPConnection *)self _abortReadsWithError:v23];
  }

  v24 = obj;
LABEL_24:
}

- (void)readWithRequest:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__CUTCPConnection_readWithRequest___block_invoke;
  v7[3] = &unk_1E73A49F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __35__CUTCPConnection_readWithRequest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  if (*(v9 + 112) == 1)
  {
    v10 = *(a1 + 40);
    v13 = NSErrorWithOSStatusF(4294960573, "Invalidated (R)", a3, a4, a5, a6, a7, a8, v12);
    [v9 _completeReadRequest:v10 error:v13];
  }

  else
  {
    [*(v9 + 40) addObject:*(a1 + 40)];
    v11 = *(a1 + 32);
    if ((v11[76] & 0x80000000) == 0)
    {

      [v11 _processReads:0];
    }
  }
}

- (void)_updateTrafficRegistration
{
  v14[1] = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_mutex);
  trafficFlags = self->_trafficFlags;
  self->_trafficFlagsPending = 0;
  pthread_mutex_unlock(&self->_mutex);
  if ((self->_flags & 0x200) == 0 || self->_netTransportType != 4 || trafficFlags == self->_trafficFlagsApplied)
  {
    return;
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_8;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUTCPConnection _updateTrafficRegistration]", 0x1Eu, "Update traffic: %##a, %#{flags}\n", v4, v5, v6, v7, &self->_peerAddr);
  }

LABEL_8:
  if (!self->_wifiTrafficManager)
  {
    v9 = objc_alloc_init(CUWiFiManager);
    wifiTrafficManager = self->_wifiTrafficManager;
    self->_wifiTrafficManager = v9;

    if (self->_label)
    {
      [(CUWiFiManager *)self->_wifiTrafficManager setLabel:?];
    }

    [(CUWiFiManager *)self->_wifiTrafficManager activateWithCompletion:0];
  }

  v11 = objc_alloc_init(CUWiFiTrafficPeer);
  v13[0] = self->_peerAddr.sa;
  *(v13 + 12) = *(&self->_peerAddr.v6.sin6_addr + 4);
  [(CUWiFiTrafficPeer *)v11 setPeerIP:v13];
  [(CUWiFiTrafficPeer *)v11 setTrafficFlags:trafficFlags];
  v14[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [(CUWiFiManager *)self->_wifiTrafficManager setTrafficPeers:v12];

  self->_trafficFlagsApplied = trafficFlags;
}

- (void)_logMetrics
{
  v31[6] = *MEMORY[0x1E69E9840];
  if (CoreAnalyticsLibrary_sOnce_8668 != -1)
  {
    dispatch_once(&CoreAnalyticsLibrary_sOnce_8668, &__block_literal_global_8669);
  }

  if (CoreAnalyticsLibrary_sLib_8670 && dlsym(CoreAnalyticsLibrary_sLib_8670, "AnalyticsSendEvent"))
  {
    v30[0] = @"connectTimeoutSecs";
    v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_connectTimeoutSecs];
    v31[0] = v4;
    v30[1] = @"dataTimeoutSecs";
    v5 = [MEMORY[0x1E696AD98] numberWithInt:self->_dataTimeoutSecs];
    v31[1] = v5;
    v30[2] = @"durationSecs";
    v6 = MEMORY[0x1E696AD98];
    v7 = mach_absolute_time();
    v8 = [v6 numberWithUnsignedLongLong:UpTicksToSeconds(v7 - self->_activateTicks)];
    v31[2] = v8;
    v30[3] = @"error";
    firstError = self->_firstError;
    if (firstError)
    {
      v10 = objc_alloc(MEMORY[0x1E696AEC0]);
      v2 = [(NSError *)self->_firstError domain];
      v11 = [v10 initWithFormat:@"%@:%d", v2, -[NSError code](self->_firstError, "code")];
    }

    else
    {
      v11 = @"nil";
    }

    v31[3] = v11;
    v30[4] = @"ifname";
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:self->_ifName];
    v13 = v12;
    label = @"?";
    if (v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = @"?";
    }

    v30[5] = @"label";
    if (self->_label)
    {
      label = self->_label;
    }

    v31[4] = v15;
    v31[5] = label;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:6];

    if (firstError)
    {
    }

    ucat = self->_ucat;
    if (ucat->var0 > 30)
    {
      goto LABEL_19;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(self->_ucat, 0x1Eu))
      {
        goto LABEL_19;
      }

      ucat = self->_ucat;
    }

    v25 = NSPrintF("%##@", v17, v18, v19, v20, v21, v22, v23, v16);
    LogPrintF(ucat, "[CUTCPConnection _logMetrics]", 0x1Eu, "Metrics: %@", v26, v27, v28, v29, v25);

LABEL_19:
    (softLinkAnalyticsSendEvent_8682[0])(@"com.apple.cutcp", v16);
  }
}

- (void)_processSocketEvents
{
  socketEventsSource = self->_socketEventsSource;
  if (!socketEventsSource)
  {
    return;
  }

  data = dispatch_source_get_data(socketEventsSource);
  v12 = (data >> 4) & 0x800 | (((data >> 8) & 1) << 10);
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_4:
      v19 = NSPrintF("%#{flags}", v4, v5, v6, v7, v8, v9, v10, v12);
      LogPrintF_safe(ucat, "[CUTCPConnection _processSocketEvents]", 0x1Eu, "Socket events: raw 0x%llX, flags %@", v14, v15, v16, v17, data);

      goto LABEL_6;
    }

    if (_LogCategory_Initialize(self->_ucat, 0x1Eu))
    {
      ucat = self->_ucat;
      goto LABEL_4;
    }
  }

LABEL_6:
  if (v12)
  {
    v18 = _Block_copy(self->_socketEventHandler);
    if (v18)
    {
      v20 = v18;
      (*(v18 + 2))(v18, v12);
      v18 = v20;
    }
  }
}

- (void)_netLinkStateChanged
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__CUTCPConnection__netLinkStateChanged__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __39__CUTCPConnection__netLinkStateChanged__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 200);
  if (!v2)
  {
    return;
  }

  v9 = [v2 state];
  v10 = *(a1 + 32);
  v11 = *(v10 + 216);
  if (*v11 <= 20)
  {
    if (*v11 != -1)
    {
LABEL_4:
      LogPrintF(v11, "[CUTCPConnection _netLinkStateChanged]_block_invoke", 0x14u, "NetLink state changed: %##a, %s\n", v5, v6, v7, v8, v10 + 424);
      goto LABEL_7;
    }

    if (_LogCategory_Initialize(v11, 0x14u))
    {
      v10 = *(a1 + 32);
      v11 = *(v10 + 216);
      goto LABEL_4;
    }
  }

LABEL_7:
  if (v9 == 3)
  {
    v15 = *(*(a1 + 32) + 352);
    if (v15)
    {
      v17 = NSErrorWithOSStatusF(4294960538, "Unreachable", v3, v4, v5, v6, v7, v8, v16);
      (*(v15 + 16))(v15, v17);
    }
  }

  else if (v9 == 1)
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 200);
    *(v12 + 200) = 0;

    v14 = *(a1 + 32);

    [v14 _invalidated];
  }
}

- (BOOL)_setupIOAndReturnError:(id *)a3
{
  socketFD = self->_socketFD;
  v58 = 1;
  if (setsockopt(socketFD, 0xFFFF, 4130, &v58, 4u))
  {
    if (*__error())
    {
      InterfaceInfo = *__error();
      if (!InterfaceInfo)
      {
        goto LABEL_4;
      }
    }

    else
    {
      InterfaceInfo = 4294960596;
    }

    v19 = "Set SO_NOSIGPIPE failed";
    goto LABEL_58;
  }

LABEL_4:
  InterfaceInfo = SocketSetNonBlocking(self->_socketFD, 1);
  if (InterfaceInfo)
  {
    v19 = "Make non-blocking failed";
    goto LABEL_58;
  }

  v13 = self->_socketFD;
  v57 = 1;
  if (setsockopt(v13, 6, 1, &v57, 4u))
  {
    if (*__error())
    {
      InterfaceInfo = *__error();
      if (!InterfaceInfo)
      {
        goto LABEL_8;
      }
    }

    else
    {
      InterfaceInfo = 4294960596;
    }

    v19 = "Set TCP_NODELAY failed";
    goto LABEL_58;
  }

LABEL_8:
  InterfaceInfo = SocketSetNotSentLowWatermark(self->_socketFD, 0x4000uLL);
  if (InterfaceInfo)
  {
    v19 = "Set TCP_NOTSENT_LOWAT failed";
    goto LABEL_58;
  }

  if ((self->_flags & 8) != 0)
  {
    v14 = self->_socketFD;
    v56 = 1;
    if (setsockopt(v14, 0xFFFF, 4131, &v56, 4u))
    {
      if (*__error())
      {
        InterfaceInfo = *__error();
        if (!InterfaceInfo)
        {
          goto LABEL_13;
        }
      }

      else
      {
        InterfaceInfo = 4294960596;
      }

      v19 = "Set SO_NOADDRERR failed";
      goto LABEL_58;
    }
  }

LABEL_13:
  dataTimeoutSecs = self->_dataTimeoutSecs;
  if (dataTimeoutSecs > 0.0)
  {
    InterfaceInfo = SocketSetTCPTimeout(self->_socketFD, dataTimeoutSecs);
    if (InterfaceInfo)
    {
      v19 = "Set TCP timeout failed";
      goto LABEL_58;
    }
  }

  keepAliveIdleSeconds = self->_keepAliveIdleSeconds;
  if (keepAliveIdleSeconds >= 1)
  {
    InterfaceInfo = SocketSetKeepAliveEx(self->_socketFD, keepAliveIdleSeconds, self->_keepAliveIntervalSeconds, self->_keepAliveMaxCount);
    if (!InterfaceInfo)
    {
      if ((self->_flags & 2) == 0)
      {
        goto LABEL_40;
      }

      v17 = self->_socketFD;
      v55 = 1;
      v18 = &v55;
      goto LABEL_27;
    }

LABEL_77:
    v19 = "Set TCP keepalive failed";
    goto LABEL_58;
  }

  keepAliveSeconds = self->_keepAliveSeconds;
  if (keepAliveSeconds < 1)
  {
    goto LABEL_40;
  }

  if (keepAliveSeconds <= 3)
  {
    keepAliveSeconds = 3;
  }

  InterfaceInfo = SocketSetKeepAliveEx(self->_socketFD, keepAliveSeconds / 3, keepAliveSeconds / 3, 3);
  if (InterfaceInfo)
  {
    goto LABEL_77;
  }

  if ((self->_flags & 2) == 0)
  {
    goto LABEL_40;
  }

  v17 = self->_socketFD;
  v54 = 1;
  v18 = &v54;
LABEL_27:
  if (!setsockopt(v17, 6, 529, v18, 4u))
  {
    goto LABEL_40;
  }

  if (!*__error())
  {
    v25 = 4294960596;
LABEL_36:
    ucat = self->_ucat;
    if (ucat->var0 > 60)
    {
      goto LABEL_40;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x3Cu))
      {
        goto LABEL_40;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUTCPConnection _setupIOAndReturnError:]", 0x3Cu, "### Set TCP_KEEPALIVE_OFFLOAD failed: %#m\n", v21, v22, v23, v24, v25);
    goto LABEL_40;
  }

  v25 = *__error();
  if (v25)
  {
    goto LABEL_36;
  }

LABEL_40:
  HIDWORD(v58) = 28;
  if (!getsockname(self->_socketFD, &self->_selfAddr.sa, &v58 + 1))
  {
    goto LABEL_43;
  }

  if (!*__error())
  {
    InterfaceInfo = 4294960596;
    goto LABEL_55;
  }

  InterfaceInfo = *__error();
  if (InterfaceInfo)
  {
LABEL_55:
    v19 = "Get self address failed";
    goto LABEL_58;
  }

LABEL_43:
  HIDWORD(v58) = 28;
  if (!getpeername(self->_socketFD, &self->_peerAddr.sa, &v58 + 1))
  {
    goto LABEL_46;
  }

  if (!*__error())
  {
    InterfaceInfo = 4294960596;
    goto LABEL_57;
  }

  InterfaceInfo = *__error();
  if (InterfaceInfo)
  {
LABEL_57:
    v19 = "Get peer address failed";
    goto LABEL_58;
  }

LABEL_46:
  p_netTransportType = &self->_netTransportType;
  InterfaceInfo = SocketGetInterfaceInfo(self->_socketFD, 0, self->_ifName, &self->_ifIndex, 0, &self->_ifMedia, &self->_ifFlags, &self->_ifExtendedFlags, 0, &self->_netTransportType);
  if (InterfaceInfo)
  {
    v19 = "Get interface info failed";
    goto LABEL_58;
  }

  v28 = *p_netTransportType;
  if (*p_netTransportType != 4 && v28 != 64 && v28 != 128)
  {
    SocketSetP2P(self->_socketFD, 0);
  }

  v29 = self->_ucat;
  if (v29->var0 > 30)
  {
    goto LABEL_63;
  }

  if (v29->var0 != -1)
  {
    goto LABEL_53;
  }

  if (_LogCategory_Initialize(v29, 0x1Eu))
  {
    v29 = self->_ucat;
LABEL_53:
    LogPrintF(v29, "[CUTCPConnection _setupIOAndReturnError:]", 0x1Eu, "Connected to %##a from %##a, %s\n", v8, v9, v10, v11, &self->_peerAddr);
  }

LABEL_63:
  [(CUTCPConnection *)self _updateTrafficRegistration];
  if ((self->_flags & 4) != 0 && self->_netLinkManager && (self->_ifExtendedFlags & 0x40000) == 0)
  {
    v32 = objc_alloc_init(CUNetLinkEndpoint);
    netLinkEndpoint = self->_netLinkEndpoint;
    self->_netLinkEndpoint = v32;

    v53[0] = self->_peerAddr.sa;
    *(v53 + 12) = *(&self->_peerAddr.v6.sin6_addr + 4);
    [(CUNetLinkEndpoint *)self->_netLinkEndpoint setIpAddr:v53];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __42__CUTCPConnection__setupIOAndReturnError___block_invoke;
    v52[3] = &unk_1E73A4F68;
    v52[4] = self;
    [(CUNetLinkEndpoint *)self->_netLinkEndpoint setStateChangedHandler:v52];
    [(CUNetLinkManager *)self->_netLinkManager addEndpoint:self->_netLinkEndpoint];
  }

  v34 = dispatch_source_create(MEMORY[0x1E69E96F8], self->_socketFD, 0, self->_dispatchQueue);
  readSource = self->_readSource;
  self->_readSource = v34;

  v36 = self->_readSource;
  if (v36)
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __42__CUTCPConnection__setupIOAndReturnError___block_invoke_2;
    handler[3] = &unk_1E73A4F68;
    handler[4] = self;
    dispatch_source_set_event_handler(v36, handler);
    v37 = self->_readSource;
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __42__CUTCPConnection__setupIOAndReturnError___block_invoke_3;
    v50[3] = &unk_1E73A4F68;
    v50[4] = self;
    dispatch_source_set_cancel_handler(v37, v50);
    dispatch_resume(self->_readSource);
    v38 = dispatch_source_create(MEMORY[0x1E69E9730], self->_socketFD, 0, self->_dispatchQueue);
    writeSource = self->_writeSource;
    self->_writeSource = v38;

    v40 = self->_writeSource;
    if (v40)
    {
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __42__CUTCPConnection__setupIOAndReturnError___block_invoke_4;
      v49[3] = &unk_1E73A4F68;
      v49[4] = self;
      dispatch_source_set_event_handler(v40, v49);
      v41 = self->_writeSource;
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __42__CUTCPConnection__setupIOAndReturnError___block_invoke_5;
      v48[3] = &unk_1E73A4F68;
      v48[4] = self;
      dispatch_source_set_cancel_handler(v41, v48);
      self->_writeSuspended = 1;
      self->_flowControlState = 10;
      v42 = (self->_flags >> 2) & 0x100 | (((self->_flags >> 11) & 1) << 15);
      if (v42)
      {
        v43 = dispatch_source_create(MEMORY[0x1E69E9708], self->_socketFD, v42, self->_dispatchQueue);
        objc_storeStrong(&self->_socketEventsSource, v43);
        if (v43)
        {
          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = __42__CUTCPConnection__setupIOAndReturnError___block_invoke_6;
          v47[3] = &unk_1E73A4F68;
          v47[4] = self;
          dispatch_source_set_event_handler(v43, v47);
          v46[0] = MEMORY[0x1E69E9820];
          v46[1] = 3221225472;
          v46[2] = __42__CUTCPConnection__setupIOAndReturnError___block_invoke_7;
          v46[3] = &unk_1E73A4F68;
          v46[4] = self;
          dispatch_source_set_cancel_handler(v43, v46);
          dispatch_activate(v43);
        }
      }

      v31 = 0;
      v30 = 0;
      goto LABEL_74;
    }

    v19 = "Create write source failed";
  }

  else
  {
    v19 = "Create read source failed";
  }

  InterfaceInfo = 4294960596;
LABEL_58:
  v30 = NSErrorWithOSStatusF(InterfaceInfo, v19, v6, v7, v8, v9, v10, v11, v45);
  v31 = v30 != 0;
  if (a3 && v30)
  {
    v30 = v30;
    *a3 = v30;
    v31 = 1;
  }

LABEL_74:

  return !v31;
}

uint64_t __42__CUTCPConnection__setupIOAndReturnError___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

uint64_t __42__CUTCPConnection__setupIOAndReturnError___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

uint64_t __42__CUTCPConnection__setupIOAndReturnError___block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 192);
  *(v2 + 192) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (BOOL)_startConnectingToDestination:(id)a3 error:(id *)a4
{
  v10 = a3;
  ucat = self->_ucat;
  if (ucat->var0 > 30)
  {
    goto LABEL_5;
  }

  if (ucat->var0 != -1)
  {
    goto LABEL_3;
  }

  if (_LogCategory_Initialize(ucat, 0x1Eu))
  {
    ucat = self->_ucat;
LABEL_3:
    LogPrintF(ucat, "[CUTCPConnection _startConnectingToDestination:error:]", 0x1Eu, "Connecting to '%@'\n", v6, v7, v8, v9, v10);
  }

LABEL_5:
  if ((self->_flags & 0x10) != 0)
  {
    v12 = 1536;
  }

  else
  {
    v12 = 1024;
  }

  v13 = self->_flags & 1 | (4 * ((self->_flags >> 5) & 1)) | v12;
  connectTimeoutSecs = self->_connectTimeoutSecs;
  if (connectTimeoutSecs <= 0.0)
  {
    v15 = -1;
  }

  else
  {
    v15 = (connectTimeoutSecs * 1000000000.0);
  }

  v16 = self;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v36 = 0u;
  v37 = 0;
  v34 = 0u;
  v35 = 0u;
  v38 = 160;
  v29 = [v10 UTF8String];
  defaultPort = v16->_defaultPort;
  v31 = v13;
  v32 = v15;
  v33 = -1;
  *&v35 = _connectHandler;
  *(&v35 + 1) = v16;
  *&v36 = v16->_dispatchQueue;
  *&v39 = [(NSString *)v16->_label UTF8String];
  v17 = AsyncConnection_ConnectEx(&v16->_connector, &v29);
  if (v17)
  {
    v25 = NSErrorWithOSStatusF(v17, "Start connect failed", v18, v19, v20, v21, v22, v23, v28);
    CFRelease(v16);
    v24 = v25 != 0;
    if (a4 && v25)
    {
      v27 = v25;
      *a4 = v25;
      v24 = 1;
    }
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  return !v24;
}

- (BOOL)_startConnectingToBonjourDevice:(id)a3 error:(id *)a4
{
  v10 = a3;
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[CUTCPConnection _startConnectingToBonjourDevice:error:]", 0x1Eu, "Connecting to '%@'\n", v6, v7, v8, v9, v10);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(ucat, 0x1Eu))
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  interfaceName = self->_interfaceName;
  v35 = 0;
  v13 = [v10 copyConnectionInfoWithFlags:0 interfaceName:interfaceName error:&v35];
  v14 = v35;
  v15 = v14;
  if (v13)
  {
    if ((self->_flags & 0x10) != 0)
    {
      v16 = 1536;
    }

    else
    {
      v16 = 1024;
    }

    v17 = self->_flags & 1 | (4 * ((self->_flags >> 5) & 1)) | v16;
    connectTimeoutSecs = self->_connectTimeoutSecs;
    if (connectTimeoutSecs <= 0.0)
    {
      v19 = -1;
    }

    else
    {
      v19 = (connectTimeoutSecs * 1000000000.0);
    }

    v20 = self;
    v24 = 0u;
    v25 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v28 = 0u;
    v29 = 0;
    v26 = 0u;
    v27 = 0u;
    v30 = 160;
    DWORD2(v24) = v20->_defaultPort;
    HIDWORD(v24) = v17;
    *&v25 = v19;
    *(&v25 + 1) = -1;
    *(&v31 + 1) = _connectCompletion;
    *&v32 = v13;
    dispatchQueue = v20->_dispatchQueue;
    *(&v27 + 1) = v20;
    *&v28 = dispatchQueue;
    *&v31 = [(NSString *)v20->_label UTF8String];
    if (AsyncConnection_ConnectEx(&v20->_connector, &v24))
    {
      CFRelease(v20);
    }
  }

  else if (a4)
  {
    v23 = v14;
    *a4 = v15;
  }

  return v13 != 0;
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone && !self->_connector && !self->_readSource && !self->_writeSource && !self->_socketEventsSource && !self->_readRequestCurrent && ![(NSMutableArray *)self->_readRequests count]&& !self->_writeRequestCurrent && ![(NSMutableArray *)self->_writeRequests count]&& !self->_netLinkEndpoint)
  {
    socketFD = self->_socketFD;
    if ((socketFD & 0x80000000) == 0)
    {
      if (close(socketFD) && *__error())
      {
        __error();
      }

      self->_socketFD = -1;
    }

    [(CUWiFiManager *)self->_wifiTrafficManager invalidate];
    wifiTrafficManager = self->_wifiTrafficManager;
    self->_wifiTrafficManager = 0;

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

    flowControlChangedHandler = self->_flowControlChangedHandler;
    self->_flowControlChangedHandler = 0;

    v9 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    v10 = self->_serverInvalidationHandler;
    self->_serverInvalidationHandler = 0;

    socketEventHandler = self->_socketEventHandler;
    self->_socketEventHandler = 0;

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

      LogPrintF(ucat, "[CUTCPConnection _invalidated]", 0x1Eu, "Invalidated\n", v12, v13, v14, v15, v18);
    }
  }
}

- (void)_invalidate
{
  if (self->_invalidateCalled)
  {
    return;
  }

  self->_invalidateCalled = 1;
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_4:
      v11 = NSPrintF("%##a", a2, v2, v3, v4, v5, v6, v7, &self->_peerAddr);
      v38 = NSPrintF("%##a", v12, v13, v14, v15, v16, v17, v18, &self->_selfAddr);
      LogPrintF(ucat, "[CUTCPConnection _invalidate]", 0x1Eu, "Invalidating: peer=%@, self=%@", v19, v20, v21, v22, v11);

      goto LABEL_6;
    }

    if (_LogCategory_Initialize(self->_ucat, 0x1Eu))
    {
      ucat = self->_ucat;
      goto LABEL_4;
    }
  }

LABEL_6:
  [(CUTCPConnection *)self _logMetrics];
  [(CUNANDataSession *)self->_nanDataSession invalidate];
  nanDataSession = self->_nanDataSession;
  self->_nanDataSession = 0;

  netLinkManager = self->_netLinkManager;
  if (netLinkManager && self->_netLinkEndpoint)
  {
    [(CUNetLinkManager *)netLinkManager removeEndpoint:?];
    v25 = self->_netLinkManager;
    self->_netLinkManager = 0;
  }

  errorHandler = self->_errorHandler;
  self->_errorHandler = 0;

  v39 = NSErrorWithOSStatusF(4294960573, "Invalidated (I)", v27, v28, v29, v30, v31, v32, v37);
  [(CUTCPConnection *)self _abortReadsWithError:v39];
  [(CUTCPConnection *)self _abortWritesWithError:v39];
  connector = self->_connector;
  if (connector)
  {
    dispatch_async_f(*(connector + 14), connector, _AsyncConnection_UserRelease);
  }

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

  socketEventsSource = self->_socketEventsSource;
  if (socketEventsSource)
  {
    dispatch_source_cancel(socketEventsSource);
  }

  [(CUTCPConnection *)self _invalidated];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__CUTCPConnection_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (BOOL)_activateDirectAndReturnError:(id *)a3
{
  self->_activateTicks = mach_absolute_time();
  socketFD = self->_socketFD;
  if ((socketFD & 0x80000000) == 0)
  {
    ucat = self->_ucat;
    if (ucat->var0 > 30)
    {
      goto LABEL_15;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
LABEL_15:
        v38 = 0;
        [(CUTCPConnection *)self _setupIOAndReturnError:&v38];
        v24 = v38;
        if (!v24)
        {
          activateCompletion = self->_activateCompletion;
          if (!activateCompletion)
          {
LABEL_19:
            v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
            readRequests = self->_readRequests;
            self->_readRequests = v26;

            v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
            writeRequests = self->_writeRequests;
            self->_writeRequests = v28;

            v16 = 0;
LABEL_20:
            v30 = 1;
            goto LABEL_21;
          }

          activateCompletion[2](activateCompletion, 0);
          v14 = self->_activateCompletion;
          self->_activateCompletion = 0;
LABEL_18:

          goto LABEL_19;
        }

        goto LABEL_23;
      }

      ucat = self->_ucat;
      socketFD = self->_socketFD;
    }

    LogPrintF(ucat, "[CUTCPConnection _activateDirectAndReturnError:]", 0x1Eu, "Activate with socket %d\n", v6, v7, v8, v9, socketFD);
    goto LABEL_15;
  }

  destinationBonjour = self->_destinationBonjour;
  if (destinationBonjour)
  {
    flags = self->_flags;
    self->_flags = flags | 0x200;
    if ((flags & 0x100) != 0)
    {
      v37[1] = 0;
      [CUTCPConnection _startConnectingToBonjourDevice:"_startConnectingToBonjourDevice:error:" error:?];
      v24 = 0;
      if (!v24)
      {
        goto LABEL_19;
      }

LABEL_23:
      v16 = v24;
      goto LABEL_26;
    }

    v37[0] = 0;
    v14 = [(CUBonjourDevice *)destinationBonjour copyConnectionStringWithFlags:0 error:v37];
    v15 = v37[0];
    v16 = v15;
    if (v14)
    {
      v36 = v15;
      [(CUTCPConnection *)self _startConnectingToDestination:v14 error:&v36];
      v17 = v36;

      if (!v17)
      {
        goto LABEL_18;
      }

      v16 = v17;
    }

    goto LABEL_25;
  }

  destinationString = self->_destinationString;
  if (!destinationString)
  {
    v16 = NSErrorWithOSStatusF(4294960591, "No destination or socket", 0, v5, v6, v7, v8, v9, v34);
LABEL_25:
    if (!v16)
    {
      goto LABEL_20;
    }

    goto LABEL_26;
  }

  self->_flags |= 0x200u;
  v35 = 0;
  v23 = destinationString;
  [(CUTCPConnection *)self _startConnectingToDestination:v23 error:&v35];
  v16 = v35;

  if (!v16)
  {
    goto LABEL_19;
  }

LABEL_26:
  v32 = self->_ucat;
  if (v32->var0 > 60)
  {
    goto LABEL_30;
  }

  if (v32->var0 != -1)
  {
    goto LABEL_28;
  }

  if (_LogCategory_Initialize(v32, 0x3Cu))
  {
    v32 = self->_ucat;
LABEL_28:
    LogPrintF(v32, "[CUTCPConnection _activateDirectAndReturnError:]", 0x3Cu, "### Activate direct failed: %{error}\n", v18, v19, v20, v21, v16);
  }

LABEL_30:
  if (a3)
  {
    v33 = v16;
    v30 = 0;
    *a3 = v16;
  }

  else
  {
    v30 = 0;
  }

LABEL_21:

  return v30;
}

- (BOOL)activateDirectAndReturnError:(id *)a3
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  pthread_mutex_lock(&self->_mutex);
  self->_activateCalled = 1;
  pthread_mutex_unlock(&self->_mutex);

  return [(CUTCPConnection *)self _activateDirectAndReturnError:a3];
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_mutex);
  self->_activateCalled = 1;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__CUTCPConnection_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E73A49A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
  pthread_mutex_unlock(&self->_mutex);
}

void __42__CUTCPConnection_activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 88);
  *(v3 + 88) = v2;

  v5 = *(a1 + 32);
  v9 = 0;
  [v5 _activateDirectAndReturnError:&v9];
  v6 = v9;
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 88);
    *(v7 + 88) = 0;

    (*(*(a1 + 40) + 16))();
  }
}

- (void)setTrafficFlags:(unsigned int)a3
{
  pthread_mutex_lock(&self->_mutex);
  if (self->_trafficFlags != a3)
  {
    self->_trafficFlags = a3;
    if (self->_activateCalled && !self->_trafficFlagsPending)
    {
      self->_trafficFlagsPending = 1;
      dispatchQueue = self->_dispatchQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __35__CUTCPConnection_setTrafficFlags___block_invoke;
      block[3] = &unk_1E73A4F68;
      block[4] = self;
      dispatch_async(dispatchQueue, block);
    }
  }

  pthread_mutex_unlock(&self->_mutex);
}

- (void)setLabel:(id)a3
{
  objc_storeStrong(&self->_label, a3);
  v13 = a3;
  v5 = qword_1EADEA528;
  v6 = v13;
  [v13 UTF8String];
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v7, v8, v9, v10, v11, v12, v5);
}

- (id)description
{
  v40 = 0;
  NSAppendPrintF(&v40, "CUTCPConnection ", v2, v3, v4, v5, v6, v7, v36);
  v9 = v40;
  v16 = v9;
  label = self->_label;
  if (label)
  {
    v39 = v9;
    v18 = label;
    NSAppendPrintF(&v39, "'%@' ", v19, v20, v21, v22, v23, v24, v18);
    v25 = v39;

    v16 = v25;
  }

  v38 = v16;
  NSAppendPrintF(&v38, "%##a -> %##a", v10, v11, v12, v13, v14, v15, &self->_selfAddr);
  v26 = v38;

  trafficFlags = self->_trafficFlags;
  if (trafficFlags)
  {
    v37 = v26;
    NSAppendPrintF(&v37, ", TF %#{flags}", v27, v28, v29, v30, v31, v32, trafficFlags);
    v34 = v37;

    v26 = v34;
  }

  return v26;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_mutex);
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove(ucat);
    self->_ucat = 0;
  }

  v4.receiver = self;
  v4.super_class = CUTCPConnection;
  [(CUTCPConnection *)&v4 dealloc];
}

- (CUTCPConnection)init
{
  v6.receiver = self;
  v6.super_class = CUTCPConnection;
  v2 = [(CUTCPConnection *)&v6 init];
  if (v2)
  {
    if (CUMainQueue_sOnce != -1)
    {
      dispatch_once(&CUMainQueue_sOnce, &__block_literal_global_23);
    }

    objc_storeStrong(&v2->_dispatchQueue, CUMainQueue_sQueue);
    if (_os_feature_enabled_impl())
    {
      v3 = 50;
    }

    else
    {
      v3 = 9;
    }

    v2->_rawIOLogLevel = v3;
    v2->_socketFD = -1;
    v2->_ucat = &gLogCategory_CUTCPConnection;
    pthread_mutex_init(&v2->_mutex, 0);
    v4 = v2;
  }

  return v2;
}

@end