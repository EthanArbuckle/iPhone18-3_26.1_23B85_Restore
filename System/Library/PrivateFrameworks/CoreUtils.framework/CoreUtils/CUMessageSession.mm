@interface CUMessageSession
- (CUMessageSession)init;
- (CUMessageSession)initWithCoder:(id)coder;
- (CUMessageSession)initWithTemplate:(id)template;
- (void)_cleanup;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidated;
- (void)_registerRequestID:(id)d options:(id)options handler:(id)handler;
- (void)_sendRequestID:(id)d options:(id)options request:(id)request responseHandler:(id)handler;
- (void)activate;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)registerRequestID:(id)d options:(id)options handler:(id)handler;
- (void)remoteRequestID:(id)d options:(id)options request:(id)request responseHandler:(id)handler;
- (void)sendRequestID:(id)d options:(id)options request:(id)request responseHandler:(id)handler;
- (void)setLabel:(id)label;
@end

@implementation CUMessageSession

- (void)remoteRequestID:(id)d options:(id)options request:(id)request responseHandler:(id)handler
{
  dCopy = d;
  optionsCopy = options;
  requestCopy = request;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v13 = [(NSMutableDictionary *)self->_requestMap objectForKeyedSubscript:dCopy];
  v18 = v13;
  if (!v13)
  {
    ucat = self->_ucat;
    if (ucat->var0 > 60)
    {
      goto LABEL_14;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x3Cu))
      {
        goto LABEL_14;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUMessageSession remoteRequestID:options:request:responseHandler:]", 0x3Cu, "### No entry for request ID '%@'\n", v14, v15, v16, v17, dCopy);
    goto LABEL_14;
  }

  handler = [v13 handler];
  v24 = handler;
  if (handler)
  {
    (*(handler + 16))(handler, optionsCopy, requestCopy, handlerCopy);
  }

  else
  {
    v26 = self->_ucat;
    if (v26->var0 <= 60)
    {
      if (v26->var0 == -1)
      {
        if (!_LogCategory_Initialize(v26, 0x3Cu))
        {
          goto LABEL_13;
        }

        v26 = self->_ucat;
      }

      LogPrintF(v26, "[CUMessageSession remoteRequestID:options:request:responseHandler:]", 0x3Cu, "### No handler for request ID '%@'\n", v20, v21, v22, v23, dCopy);
    }
  }

LABEL_13:

LABEL_14:
}

- (void)_sendRequestID:(id)d options:(id)options request:(id)request responseHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  optionsCopy = options;
  dCopy = d;
  [(CUMessageSession *)self _ensureXPCStarted];
  xpcCnx = self->_xpcCnx;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__CUMessageSession__sendRequestID_options_request_responseHandler___block_invoke;
  v17[3] = &unk_1E73A38E8;
  v18 = handlerCopy;
  v15 = handlerCopy;
  v16 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v17];
  [v16 remoteSendRequestID:dCopy options:optionsCopy request:requestCopy responseHandler:v15];
}

uint64_t __67__CUMessageSession__sendRequestID_options_request_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = NSErrorToOSStatusEx(a2, 0);
  }

  else
  {
    v3 = 4294960596;
  }

  v4 = *(v2 + 16);

  return v4(v2, v3, 0, 0);
}

- (void)sendRequestID:(id)d options:(id)options request:(id)request responseHandler:(id)handler
{
  dCopy = d;
  optionsCopy = options;
  requestCopy = request;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__CUMessageSession_sendRequestID_options_request_responseHandler___block_invoke;
  block[3] = &unk_1E73A3608;
  block[4] = self;
  v20 = dCopy;
  v21 = optionsCopy;
  v22 = requestCopy;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = requestCopy;
  v17 = optionsCopy;
  v18 = dCopy;
  dispatch_async(dispatchQueue, block);
}

uint64_t __66__CUMessageSession_sendRequestID_options_request_responseHandler___block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = a1[4];
  if (*(result + 73) == 1)
  {
    result = *(result + 64);
    if (*result <= 60)
    {
      if (*result != -1)
      {
        return LogPrintF(result, "[CUMessageSession sendRequestID:options:request:responseHandler:]_block_invoke", 0x3Cu, "### SendRequestID '%@' after invalidate\n", a5, a6, a7, a8, a1[5]);
      }

      result = _LogCategory_Initialize(result, 0x3Cu);
      if (result)
      {
        result = *(a1[4] + 64);
        return LogPrintF(result, "[CUMessageSession sendRequestID:options:request:responseHandler:]_block_invoke", 0x3Cu, "### SendRequestID '%@' after invalidate\n", a5, a6, a7, a8, a1[5]);
      }
    }

    return result;
  }

  v11 = *(result + 56);
  if (v11)
  {
    (*(v11 + 16))(*(result + 56), a1[5], a1[6], a1[7], a1[8]);
    result = a1[4];
    if (!*(result + 40))
    {
      return result;
    }

    goto LABEL_9;
  }

  if (*(result + 40))
  {
LABEL_9:
    v12 = a1[5];
    v13 = a1[6];
    v14 = a1[7];
    v15 = a1[8];

    return [result _sendRequestID:v12 options:v13 request:v14 responseHandler:v15];
  }

  result = *(result + 64);
  if (*result > 60)
  {
    return result;
  }

  if (*result == -1)
  {
    result = _LogCategory_Initialize(result, 0x3Cu);
    if (!result)
    {
      return result;
    }

    result = *(a1[4] + 64);
  }

  return LogPrintF(result, "[CUMessageSession sendRequestID:options:request:responseHandler:]_block_invoke", 0x3Cu, "### No handler or endpoint to send requests\n", a5, a6, a7, a8, a9);
}

- (void)_registerRequestID:(id)d options:(id)options handler:(id)handler
{
  dCopy = d;
  optionsCopy = options;
  handlerCopy = handler;
  v11 = objc_alloc_init(CUMessageRequestEntry);
  [(CUMessageRequestEntry *)v11 setHandler:handlerCopy];

  if (optionsCopy)
  {
    [(CUMessageRequestEntry *)v11 setOptions:optionsCopy];
  }

  requestMap = self->_requestMap;
  if (!requestMap)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v14 = self->_requestMap;
    self->_requestMap = v13;

    requestMap = self->_requestMap;
  }

  [(NSMutableDictionary *)requestMap setObject:v11 forKeyedSubscript:dCopy];
  [(CUMessageSession *)self _ensureXPCStarted];
  xpcCnx = self->_xpcCnx;
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __55__CUMessageSession__registerRequestID_options_handler___block_invoke;
  v21 = &unk_1E73A35E0;
  selfCopy = self;
  v23 = dCopy;
  v16 = dCopy;
  v17 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:&v18];
  [v17 remoteRegisterRequestID:v16 options:{optionsCopy, v18, v19, v20, v21, selfCopy}];
}

void __55__CUMessageSession__registerRequestID_options_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = *(a1 + 32);
  v9 = *(v8 + 64);
  v11 = v3;
  if (*v9 <= 60)
  {
    if (*v9 != -1)
    {
LABEL_3:
      LogPrintF(v9, "[CUMessageSession _registerRequestID:options:handler:]_block_invoke", 0x3Cu, "### RegisterRequestID '%@' failed: %{error}\n", v4, v5, v6, v7, *(a1 + 40));
      v8 = *(a1 + 32);
      goto LABEL_5;
    }

    v10 = _LogCategory_Initialize(v9, 0x3Cu);
    v8 = *(a1 + 32);
    if (v10)
    {
      v9 = *(v8 + 64);
      goto LABEL_3;
    }
  }

LABEL_5:
  [*(v8 + 80) setObject:0 forKeyedSubscript:*(a1 + 40)];
}

- (void)registerRequestID:(id)d options:(id)options handler:(id)handler
{
  dCopy = d;
  optionsCopy = options;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__CUMessageSession_registerRequestID_options_handler___block_invoke;
  v15[3] = &unk_1E73A4108;
  v15[4] = self;
  v16 = dCopy;
  v17 = optionsCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = optionsCopy;
  v14 = dCopy;
  dispatch_async(dispatchQueue, v15);
}

uint64_t __54__CUMessageSession_registerRequestID_options_handler___block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = a1[4];
  if (*(result + 73) == 1)
  {
    result = *(result + 64);
    if (*result <= 60)
    {
      if (*result != -1)
      {
        return LogPrintF(result, "[CUMessageSession registerRequestID:options:handler:]_block_invoke", 0x3Cu, "### RegisterRequestID '%@' after invalidate\n", a5, a6, a7, a8, a1[5]);
      }

      result = _LogCategory_Initialize(result, 0x3Cu);
      if (result)
      {
        result = *(a1[4] + 64);
        return LogPrintF(result, "[CUMessageSession registerRequestID:options:handler:]_block_invoke", 0x3Cu, "### RegisterRequestID '%@' after invalidate\n", a5, a6, a7, a8, a1[5]);
      }
    }
  }

  else
  {
    v11 = *(result + 48);
    if (v11)
    {
      (*(v11 + 16))(*(result + 48), a1[5], a1[6], a1[7]);
      result = a1[4];
    }

    if (*(result + 40))
    {
      [result _registerRequestID:a1[5] options:a1[6] handler:a1[7]];
      result = a1[4];
    }

    if (!*(result + 48) && !*(result + 40))
    {
      result = *(result + 64);
      if (*result <= 60)
      {
        if (*result == -1)
        {
          result = _LogCategory_Initialize(result, 0x3Cu);
          if (!result)
          {
            return result;
          }

          result = *(a1[4] + 64);
        }

        return LogPrintF(result, "[CUMessageSession registerRequestID:options:handler:]_block_invoke", 0x3Cu, "### No handler or endpoint to register requests\n", a5, a6, a7, a8, a9);
      }
    }
  }

  return result;
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
        LogPrintF(ucat, "[CUMessageSession _invalidated]", 0x3Cu, "### Unexpectedly invalidated\n", v3, v4, v5, v6, v14);
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
  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2]();
  }

  [(CUMessageSession *)self _cleanup];
  self->_invalidateDone = 1;
  v13 = self->_ucat;
  if (v13->var0 <= 30)
  {
    if (v13->var0 == -1)
    {
      if (!_LogCategory_Initialize(v13, 0x1Eu))
      {
        return;
      }

      v13 = self->_ucat;
    }

    LogPrintF(v13, "[CUMessageSession _invalidated]", 0x1Eu, "Invalidated\n", v9, v10, v11, v12, v16);
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__CUMessageSession_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __30__CUMessageSession_invalidate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  if (*(v8 + 73))
  {
    return;
  }

  *(v8 + 73) = 1;
  v10 = *(a1 + 32);
  v11 = *(v10 + 64);
  if (*v11 <= 30)
  {
    if (*v11 == -1)
    {
      v12 = _LogCategory_Initialize(v11, 0x1Eu);
      v10 = *(a1 + 32);
      if (!v12)
      {
        goto LABEL_6;
      }

      v11 = *(v10 + 64);
    }

    LogPrintF(v11, "[CUMessageSession invalidate]_block_invoke", 0x1Eu, "Invalidating\n", a5, a6, a7, a8, v20);
    v10 = *(a1 + 32);
  }

LABEL_6:
  v13 = *(v10 + 24);
  if (v13)
  {
    (*(v13 + 16))();
    v10 = *(a1 + 32);
  }

  [*(v10 + 80) removeAllObjects];
  v14 = *(a1 + 32);
  v15 = *(v14 + 80);
  *(v14 + 80) = 0;

  v16 = *(*(a1 + 32) + 88);
  if (v16)
  {
    [v16 invalidate];
    v17 = *(a1 + 32);
    v18 = *(v17 + 88);
    *(v17 + 88) = 0;
  }

  else
  {
    v19 = *(a1 + 32);

    [v19 _invalidated];
  }
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  ucat = self->_ucat;
  if (ucat->var0 <= 60)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x3Cu))
      {
        return;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUMessageSession _interrupted]", 0x3Cu, "### Interrupted\n", v3, v4, v5, v6, v9);
  }
}

- (void)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v18[5] = v5;
    v18[6] = v4;
    v18[11] = v2;
    v18[12] = v3;
    v11 = self->_listenerEndpoint;
    if (v11)
    {
      v12 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v11];
      xpcCnx = self->_xpcCnx;
      self->_xpcCnx = v12;

      [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
      v14 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06ACBB8];
      [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v14];

      [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __37__CUMessageSession__ensureXPCStarted__block_invoke;
      v18[3] = &unk_1E73A4F68;
      v18[4] = self;
      [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v18];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __37__CUMessageSession__ensureXPCStarted__block_invoke_2;
      v17[3] = &unk_1E73A4F68;
      v17[4] = self;
      [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v17];
      v15 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06AD200];
      [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v15];

      [(NSXPCConnection *)self->_xpcCnx resume];
    }

    else
    {
      ucat = self->_ucat;
      if (ucat->var0 <= 60)
      {
        if (ucat->var0 == -1)
        {
          if (!_LogCategory_Initialize(ucat, 0x3Cu))
          {
            goto LABEL_8;
          }

          ucat = self->_ucat;
        }

        LogPrintF(ucat, "[CUMessageSession _ensureXPCStarted]", 0x3Cu, "### No XPC listener endpoint\n", v7, v8, v9, v10, v17[0]);
      }
    }

LABEL_8:
  }
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__CUMessageSession_activate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__28__CUMessageSession_activate__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[1];
  if (v3)
  {
    (*(v3 + 16))(result[1]);
    result = *(a1 + 32);
  }

  if (result[5])
  {

    return [result _ensureXPCStarted];
  }

  return result;
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v5 = qword_1EADE8960;
  v6 = labelCopy;
  [labelCopy UTF8String];
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v7, v8, v9, v10, v11, v12, v5);
}

- (void)_cleanup
{
  activateHandler = self->_activateHandler;
  self->_activateHandler = 0;

  invalidateHandler = self->_invalidateHandler;
  self->_invalidateHandler = 0;

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  registerRequestHandler = self->_registerRequestHandler;
  self->_registerRequestHandler = 0;

  sendRequestHandler = self->_sendRequestHandler;
  self->_sendRequestHandler = 0;
}

- (void)encodeWithCoder:(id)coder
{
  listenerEndpoint = self->_listenerEndpoint;
  if (listenerEndpoint)
  {
    [coder encodeObject:listenerEndpoint forKey:@"lep"];
  }
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
  v4.super_class = CUMessageSession;
  [(CUMessageSession *)&v4 dealloc];
}

- (CUMessageSession)initWithTemplate:(id)template
{
  templateCopy = template;
  v5 = [(CUMessageSession *)self init];
  if (v5)
  {
    listenerEndpoint = [templateCopy listenerEndpoint];
    listenerEndpoint = v5->_listenerEndpoint;
    v5->_listenerEndpoint = listenerEndpoint;
  }

  return v5;
}

- (CUMessageSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CUMessageSession *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    NSDecodeObjectIfPresent(coderCopy, @"lep", v6, &v5->_listenerEndpoint);
  }

  return v5;
}

- (CUMessageSession)init
{
  v4.receiver = self;
  v4.super_class = CUMessageSession;
  v2 = [(CUMessageSession *)&v4 init];
  if (v2)
  {
    if (CUMainQueue_sOnce != -1)
    {
      dispatch_once(&CUMainQueue_sOnce, &__block_literal_global_23);
    }

    objc_storeStrong(&v2->_dispatchQueue, CUMainQueue_sQueue);
    v2->_ucat = &gLogCategory_CUMessageSession;
  }

  return v2;
}

@end