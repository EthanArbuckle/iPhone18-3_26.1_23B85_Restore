@interface CUTCPServer
- ($4FF8D77539A8BD95DCE0A545902499A9)interfaceAddress;
- (BOOL)activateDirectAndReturnError:(id *)a3;
- (CUTCPServer)init;
- (id)description;
- (id)detailedDescription;
- (void)_handleConnectionAccept:(int)a3;
- (void)_handleConnectionInvalidated:(id)a3 addr:(id *)a4;
- (void)_invalidated;
- (void)activateWithCompletion:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)setInterfaceAddress:(id *)a3;
- (void)setLabel:(id)a3;
@end

@implementation CUTCPServer

- (void)setInterfaceAddress:(id *)a3
{
  var0 = a3->var0;
  *(&self->_interfaceAddress.v6.sin6_addr + 4) = *(&a3->var2.sin6_addr + 4);
  self->_interfaceAddress.sa = var0;
}

- ($4FF8D77539A8BD95DCE0A545902499A9)interfaceAddress
{
  retstr->var0 = *&self[4].var2.sin6_scope_id;
  *(&retstr->var2.sin6_addr + 4) = self[5].var2.sin6_addr;
  return self;
}

- (void)_handleConnectionInvalidated:(id)a3 addr:(id *)a4
{
  v6 = a3;
  ucat = self->_ucat;
  v14 = v6;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[CUTCPServer _handleConnectionInvalidated:addr:]", 0x1Eu, "Connection ended from %##a\n", v7, v8, v9, v10, a4);
      v6 = v14;
      goto LABEL_5;
    }

    v12 = _LogCategory_Initialize(ucat, 0x1Eu);
    v6 = v14;
    if (v12)
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  [(NSMutableSet *)self->_connections removeObject:v6];
  connectionEndedHandler = self->_connectionEndedHandler;
  if (connectionEndedHandler)
  {
    connectionEndedHandler[2](connectionEndedHandler, v14, 0);
  }
}

- (void)_handleConnectionAccept:(int)a3
{
  memset(v37, 0, 28);
  v36 = 28;
  v8 = accept(a3, v37, &v36);
  if ((v8 & 0x80000000) != 0)
  {
    if (*__error())
    {
      v9 = *__error();
      if (!v9)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v9 = 4294960596;
    }

    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x1Eu))
        {
          goto LABEL_31;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUTCPServer _handleConnectionAccept:]", 0x1Eu, "### accept() failed: %#m\n", v4, v5, v6, v7, v9);
    }

LABEL_31:
    v20 = 0;
    goto LABEL_32;
  }

LABEL_4:
  v10 = self->_ucat;
  if (v10->var0 <= 30)
  {
    if (v10->var0 == -1)
    {
      if (!_LogCategory_Initialize(v10, 0x1Eu))
      {
        goto LABEL_8;
      }

      v10 = self->_ucat;
    }

    LogPrintF(v10, "[CUTCPServer _handleConnectionAccept:]", 0x1Eu, "Connection started from %##a\n", v4, v5, v6, v7, v37);
  }

LABEL_8:
  if (!self->_maxConnectionCount || [(NSMutableSet *)self->_connections count]< self->_maxConnectionCount)
  {
    v11 = _Block_copy(self->_connectionAcceptHandler);
    if (v11)
    {
      v12 = v11;
      (*(v11 + 2))(v11, v8);

      return;
    }

    v13 = objc_alloc_init(CUTCPConnection);
    [(CUTCPConnection *)v13 setDispatchQueue:self->_dispatchQueue];
    [(CUTCPConnection *)v13 setFlags:self->_flags];
    if (self->_label)
    {
      [(CUTCPConnection *)v13 setLabel:?];
    }

    [(CUTCPConnection *)v13 setNetLinkManager:self->_netLinkManager];
    [(CUTCPConnection *)v13 setSocketFD:v8];
    if ((self->_flags & 0x40) == 0)
    {
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __39__CUTCPServer__handleConnectionAccept___block_invoke;
      v33[3] = &unk_1E73A3F78;
      v33[4] = self;
      v34 = v13;
      *v35 = v37[0];
      *&v35[12] = *&v37[0].sa_data[10];
      [(CUTCPConnection *)v34 setServerInvalidationHandler:v33];
    }

    connectionPrepareHandler = self->_connectionPrepareHandler;
    if (connectionPrepareHandler)
    {
      connectionPrepareHandler[2](connectionPrepareHandler, v13);
    }

    v32 = 0;
    v15 = [(CUTCPConnection *)v13 activateDirectAndReturnError:&v32];
    v20 = v32;
    if (!v15)
    {
      v31 = self->_ucat;
      if (v31->var0 <= 30)
      {
        if (v31->var0 == -1)
        {
          if (!_LogCategory_Initialize(v31, 0x1Eu))
          {
            goto LABEL_33;
          }

          v31 = self->_ucat;
        }

        LogPrintF(v31, "[CUTCPServer _handleConnectionAccept:]", 0x1Eu, "### Activate accepted connection failed: %{error}\n", v16, v17, v18, v19, v20);
      }

LABEL_33:
      [(CUTCPConnection *)v13 invalidate];

      return;
    }

    if ((self->_flags & 0x40) == 0)
    {
      connections = self->_connections;
      if (!connections)
      {
        v22 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v23 = self->_connections;
        self->_connections = v22;

        connections = self->_connections;
      }

      [(NSMutableSet *)connections addObject:v13];
    }

    connectionStartedHandler = self->_connectionStartedHandler;
    if (connectionStartedHandler)
    {
      connectionStartedHandler[2](connectionStartedHandler, v13);
    }

LABEL_32:
    v13 = 0;
    goto LABEL_33;
  }

  v26 = self->_ucat;
  if (v26->var0 <= 60)
  {
    if (v26->var0 == -1)
    {
      if (!_LogCategory_Initialize(self->_ucat, 0x3Cu))
      {
        goto LABEL_43;
      }

      v26 = self->_ucat;
    }

    [(NSMutableSet *)self->_connections count];
    LogPrintF(v26, "[CUTCPServer _handleConnectionAccept:]", 0x3Cu, "### Rejecting connection from %##a when at limit of %d\n", v27, v28, v29, v30, v37);
  }

LABEL_43:
  [0 invalidate];
  if ((v8 & 0x80000000) == 0 && close(v8) && *__error())
  {
    __error();
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateDone)
  {
    return;
  }

  if (!self->_invalidateCalled)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 60)
    {
      if (ucat->var0 != -1)
      {
LABEL_5:
        LogPrintF(ucat, "[CUTCPServer _invalidated]", 0x3Cu, "### Unexpectedly invalidated\n", v3, v4, v5, v6, v19);
        goto LABEL_7;
      }

      if (_LogCategory_Initialize(ucat, 0x3Cu))
      {
        ucat = self->_ucat;
        goto LABEL_5;
      }
    }
  }

LABEL_7:
  if (!self->_bonjourAdvertiser && !self->_listenerSourceV4 && !self->_listenerSourceV6 && ![(NSMutableSet *)self->_connections count])
  {
    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2]();
    }

    connectionAcceptHandler = self->_connectionAcceptHandler;
    self->_connectionAcceptHandler = 0;

    connectionStartedHandler = self->_connectionStartedHandler;
    self->_connectionStartedHandler = 0;

    connectionEndedHandler = self->_connectionEndedHandler;
    self->_connectionEndedHandler = 0;

    connectionPrepareHandler = self->_connectionPrepareHandler;
    self->_connectionPrepareHandler = 0;

    v13 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    self->_invalidateDone = 1;
    v18 = self->_ucat;
    if (v18->var0 <= 30)
    {
      if (v18->var0 == -1)
      {
        if (!_LogCategory_Initialize(v18, 0x1Eu))
        {
          return;
        }

        v18 = self->_ucat;
      }

      LogPrintF(v18, "[CUTCPServer _invalidated]", 0x1Eu, "Invalidated\n", v14, v15, v16, v17, v21);
    }
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__CUTCPServer_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __25__CUTCPServer_invalidate__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = *(result + 32);
  if (*(v8 + 16))
  {
    return result;
  }

  v9 = result;
  *(v8 + 16) = 1;
  v10 = *(result + 32);
  v11 = *(v10 + 40);
  if (*v11 <= 30)
  {
    if (*v11 == -1)
    {
      v12 = _LogCategory_Initialize(v11, 0x1Eu);
      v10 = *(v9 + 32);
      if (!v12)
      {
        goto LABEL_6;
      }

      v11 = *(v10 + 40);
    }

    LogPrintF(v11, "[CUTCPServer invalidate]_block_invoke", 0x1Eu, "Invalidating\n", a5, a6, a7, a8, v23);
    v10 = *(v9 + 32);
  }

LABEL_6:
  [*(v10 + 64) invalidate];
  v13 = *(v9 + 32);
  v14 = *(v13 + 64);
  *(v13 + 64) = 0;

  v15 = *(v9 + 32);
  v16 = *(v15 + 24);
  if (v16)
  {
    dispatch_source_cancel(v16);
    v15 = *(v9 + 32);
  }

  v17 = *(v15 + 32);
  if (v17)
  {
    dispatch_source_cancel(v17);
    v15 = *(v9 + 32);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v18 = *(v15 + 8);
  v19 = [v18 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v24;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v23 + 1) + 8 * i) invalidate];
      }

      v20 = [v18 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v20);
  }

  [*(*(v9 + 32) + 8) removeAllObjects];
  return [*(v9 + 32) _invalidated];
}

- (BOOL)activateDirectAndReturnError:(id *)a3
{
  v55 = -1;
  v56 = -1;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[CUTCPServer activateDirectAndReturnError:]", 0x1Eu, "Activate\n", v5, v6, v7, v8, v46);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(ucat, 0x1Eu))
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  sa_family = self->_interfaceAddress.sa.sa_family;
  if (sa_family == 30)
  {
    p_sin6_addr = &self->_interfaceAddress.v6.sin6_addr;
    sin6_scope_id = self->_interfaceAddress.v6.sin6_scope_id;
    v13 = &v55;
LABEL_9:
    v14 = ServerSocketOpenEx2(sa_family, 1, 6, p_sin6_addr, sin6_scope_id, self->_tcpListenPort, &self->_tcpListeningPort, -1, 0, v13);
    if (v14)
    {
      NSErrorWithOSStatusF(v14, "Open server socket failed (%##a)", v15, v16, v17, v18, v19, v20, &self->_interfaceAddress);
      v35 = LABEL_57:;
      goto LABEL_33;
    }

    goto LABEL_12;
  }

  if (sa_family == 2)
  {
    sin6_scope_id = 0;
    p_sin6_addr = &self->_interfaceAddress.v6.sin6_flowinfo;
    v13 = &v56;
    goto LABEL_9;
  }

  v21 = ServerSocketPairOpen(1, 6, self->_tcpListenPort, &self->_tcpListeningPort, -1, &v56, &v55);
  if (v21)
  {
    v45 = "Open server sockets failed";
    goto LABEL_56;
  }

LABEL_12:
  v24 = v56;
  if ((v56 & 0x80000000) == 0)
  {
    if (self->_flags)
    {
      SocketSetP2P(v56, 1);
    }

    v25 = dispatch_source_create(MEMORY[0x1E69E96F8], v24, 0, self->_dispatchQueue);
    if (!v25)
    {
      v45 = "Create V4 dispatch source failed";
LABEL_54:
      v21 = 4294960596;
LABEL_56:
      NSErrorWithOSStatusF(v21, v45, v22, v23, v17, v18, v19, v20, v46);
      goto LABEL_57;
    }

    listenerSourceV4 = self->_listenerSourceV4;
    self->_listenerSourceV4 = v25;
    v27 = v25;

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __44__CUTCPServer_activateDirectAndReturnError___block_invoke;
    handler[3] = &unk_1E73A42A0;
    handler[4] = self;
    v54 = v24;
    dispatch_source_set_event_handler(v27, handler);
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __44__CUTCPServer_activateDirectAndReturnError___block_invoke_2;
    v51[3] = &unk_1E73A42A0;
    v52 = v24;
    v51[4] = self;
    dispatch_source_set_cancel_handler(v27, v51);
    dispatch_activate(v27);
    v56 = -1;
  }

  v28 = v55;
  if ((v55 & 0x80000000) != 0)
  {
    goto LABEL_22;
  }

  if (self->_flags)
  {
    SocketSetP2P(v55, 1);
  }

  v29 = dispatch_source_create(MEMORY[0x1E69E96F8], v28, 0, self->_dispatchQueue);
  if (!v29)
  {
    v45 = "Create V6 dispatch source failed";
    goto LABEL_54;
  }

  listenerSourceV6 = self->_listenerSourceV6;
  self->_listenerSourceV6 = v29;
  v31 = v29;

  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __44__CUTCPServer_activateDirectAndReturnError___block_invoke_3;
  v49[3] = &unk_1E73A42A0;
  v49[4] = self;
  v50 = v28;
  dispatch_source_set_event_handler(v31, v49);
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __44__CUTCPServer_activateDirectAndReturnError___block_invoke_4;
  v47[3] = &unk_1E73A42A0;
  v48 = v28;
  v47[4] = self;
  dispatch_source_set_cancel_handler(v31, v47);
  dispatch_activate(v31);
  v55 = -1;

LABEL_22:
  v32 = self->_ucat;
  if (v32->var0 <= 30)
  {
    if (v32->var0 == -1)
    {
      if (!_LogCategory_Initialize(v32, 0x1Eu))
      {
        goto LABEL_26;
      }

      v32 = self->_ucat;
    }

    LogPrintF(v32, "[CUTCPServer activateDirectAndReturnError:]", 0x1Eu, "Activated on port %d\n", v17, v18, v19, v20, self->_tcpListeningPort);
  }

LABEL_26:
  bonjourAdvertiser = self->_bonjourAdvertiser;
  if (bonjourAdvertiser)
  {
    v34 = [(CUBonjourAdvertiser *)bonjourAdvertiser label];
    if (v34)
    {
    }

    else if (self->_label)
    {
      [(CUBonjourAdvertiser *)self->_bonjourAdvertiser setLabel:?];
    }

    [(CUBonjourAdvertiser *)self->_bonjourAdvertiser setPort:self->_tcpListeningPort];
    [(CUBonjourAdvertiser *)self->_bonjourAdvertiser activate];
  }

  v35 = 0;
LABEL_33:
  if ((v56 & 0x80000000) == 0 && close(v56) && *__error())
  {
    __error();
  }

  if ((v55 & 0x80000000) == 0 && close(v55) && *__error())
  {
    __error();
  }

  if (v35)
  {
    v36 = self->_ucat;
    if (v36->var0 > 60)
    {
      goto LABEL_46;
    }

    if (v36->var0 == -1)
    {
      if (!_LogCategory_Initialize(v36, 0x3Cu))
      {
LABEL_46:
        v37 = self->_listenerSourceV4;
        if (v37)
        {
          v38 = v37;
          dispatch_source_cancel(v38);
          v39 = self->_listenerSourceV4;
          self->_listenerSourceV4 = 0;

          v40 = self->_listenerSourceV4;
          if (v40)
          {
            v41 = v40;
            dispatch_source_cancel(v41);
            v42 = self->_listenerSourceV4;
            self->_listenerSourceV4 = 0;
          }
        }

        if (a3)
        {
          v43 = v35;
          *a3 = v35;
        }

        goto LABEL_51;
      }

      v36 = self->_ucat;
    }

    LogPrintF(v36, "[CUTCPServer activateDirectAndReturnError:]", 0x3Cu, "### Activate failed: %{error}\n", v17, v18, v19, v20, v35);
    goto LABEL_46;
  }

LABEL_51:

  return v35 == 0;
}

uint64_t __44__CUTCPServer_activateDirectAndReturnError___block_invoke_2(uint64_t a1)
{
  close(*(a1 + 40));
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

uint64_t __44__CUTCPServer_activateDirectAndReturnError___block_invoke_4(uint64_t a1)
{
  close(*(a1 + 40));
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__CUTCPServer_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E73A49A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __38__CUTCPServer_activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = 0;
  [v2 activateDirectAndReturnError:&v5];
  v3 = v5;
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

- (void)setLabel:(id)a3
{
  objc_storeStrong(&self->_label, a3);
  v13 = a3;
  v5 = qword_1EADEA5F8;
  v6 = v13;
  [v13 UTF8String];
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v7, v8, v9, v10, v11, v12, v5);
}

- (id)detailedDescription
{
  v31 = *MEMORY[0x1E69E9840];
  v29 = 0;
  NSAppendPrintF(&v29, "%@\n", v2, v3, v4, v5, v6, v7, self);
  v9 = v29;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = self->_connections;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v11)
  {
    v18 = v11;
    v19 = *v26;
    do
    {
      v20 = 0;
      v21 = v9;
      do
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v10);
        }

        v23 = *(*(&v25 + 1) + 8 * v20);
        v24 = v21;
        NSAppendPrintF(&v24, "    %@\n", v12, v13, v14, v15, v16, v17, v23);
        v9 = v24;

        ++v20;
        v21 = v9;
      }

      while (v18 != v20);
      v18 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v18);
  }

  return v9;
}

- (id)description
{
  v22 = 0;
  tcpListeningPort = self->_tcpListeningPort;
  [(NSMutableSet *)self->_connections count];
  NSAppendPrintF(&v22, "CUTCPServer port %d, %d connection(s)", v4, v5, v6, v7, v8, v9, tcpListeningPort);
  v10 = v22;
  v17 = v10;
  flags = self->_flags;
  if (flags)
  {
    v21 = v10;
    NSAppendPrintF(&v21, ", Flags 0x%X", v11, v12, v13, v14, v15, v16, flags);
    v19 = v21;

    v17 = v19;
  }

  return v17;
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
  v4.super_class = CUTCPServer;
  [(CUTCPServer *)&v4 dealloc];
}

- (CUTCPServer)init
{
  v5.receiver = self;
  v5.super_class = CUTCPServer;
  v2 = [(CUTCPServer *)&v5 init];
  if (v2)
  {
    if (CUMainQueue_sOnce != -1)
    {
      dispatch_once(&CUMainQueue_sOnce, &__block_literal_global_23);
    }

    objc_storeStrong(&v2->_dispatchQueue, CUMainQueue_sQueue);
    v2->_ucat = &gLogCategory_CUTCPServer;
    v3 = v2;
  }

  return v2;
}

@end