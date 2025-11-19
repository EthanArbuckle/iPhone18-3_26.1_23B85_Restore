@interface CUFileClient
- (CUFileClient)init;
- (void)_activateWithCompletion:(id)a3;
- (void)_completeQuery:(id)a3 response:(id)a4 error:(id)a5;
- (void)_invalidate;
- (void)_invalidated;
- (void)_reportError:(id)a3 where:(const char *)a4;
- (void)_run;
- (void)_runCLinkActivate;
- (void)_runPrepare;
- (void)_runQueries;
- (void)_runQueryResponse:(id)a3 query:(id)a4 error:(id)a5;
- (void)_runSendQuery:(id)a3;
- (void)_runSessionStartRequest;
- (void)_runSessionStartResponse:(id)a3 error:(id)a4;
- (void)_sendKeepAlive:(double)a3;
- (void)_sendSessionStop;
- (void)_sessionTimerFired;
- (void)activateWithCompletion:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)performQuery:(id)a3;
- (void)setLabel:(id)a3;
@end

@implementation CUFileClient

- (void)_runQueryResponse:(id)a3 query:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16 = v8;
  if (!v16 || v10)
  {
    if (v10)
    {
      [(CUFileClient *)self _completeQuery:v9 response:0 error:v10];
    }

    else
    {
      v19 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "No response, no error", v11, v12, v13, v14, v15, v20);
      [(CUFileClient *)self _completeQuery:v9 response:0 error:v19];
    }
  }

  else
  {
    v21 = 0;
    v17 = [[CUFileResponse alloc] initWithDictionary:v16 error:&v21];
    v18 = v21;
    [(CUFileClient *)self _completeQuery:v9 response:v17 error:v18];
  }
}

- (void)_runSendQuery:(id)a3
{
  v26[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_5;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUFileClient _runSendQuery:]", 0x1Eu, "Query start: %@", v4, v5, v6, v7, v8);
  }

LABEL_5:
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v8 encodeWithDictionary:v10];
  v18 = NSPrintF("FSQy:%@", v11, v12, v13, v14, v15, v16, v17, self->_serviceType);
  v25[0] = @"fQry";
  v25[1] = @"sid";
  sessionID = self->_sessionID;
  v26[0] = v10;
  v26[1] = sessionID;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
  clinkClient = self->_clinkClient;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __30__CUFileClient__runSendQuery___block_invoke;
  v23[3] = &unk_1E73A31C8;
  v23[4] = self;
  v24 = v8;
  v22 = v8;
  [(RPCompanionLinkClient *)clinkClient sendRequestID:v18 request:v20 options:0 responseHandler:v23];
  self->_lastRequestTicks = mach_absolute_time();
}

- (void)_runQueries
{
  p_currentQuery = &self->_currentQuery;
  if (!self->_currentQuery)
  {
    v4 = [(NSMutableArray *)self->_queryArray popFirstObject];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      objc_storeStrong(p_currentQuery, v4);
      v4 = [(CUFileClient *)self _runSendQuery:v6];
      v5 = v6;
    }

    MEMORY[0x1EEE66BB8](v4, v5);
  }
}

- (void)_runPrepare
{
  sessionTimer = self->_sessionTimer;
  if (sessionTimer)
  {
    v4 = sessionTimer;
    dispatch_source_cancel(v4);
    v5 = self->_sessionTimer;
    self->_sessionTimer = 0;
  }

  v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
  v7 = self->_sessionTimer;
  self->_sessionTimer = v6;

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __27__CUFileClient__runPrepare__block_invoke;
  v11[3] = &unk_1E73A49F0;
  v11[4] = v6;
  v11[5] = self;
  dispatch_source_set_event_handler(v6, v11);
  v8 = dispatch_time(0, 15000000000);
  dispatch_source_set_timer(v6, v8, 0xFFFFFFFFFFFFFFFFLL, 0x37E11D600uLL);
  dispatch_activate(v6);
  v9 = _Block_copy(self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v9)
  {
    v9[2](v9, 0);
  }
}

void *__27__CUFileClient__runPrepare__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  if (v2 == result[10])
  {
    return [result _sessionTimerFired];
  }

  return result;
}

- (void)_runSessionStartResponse:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__2972;
  v33 = __Block_byref_object_dispose__2973;
  v34 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__CUFileClient__runSessionStartResponse_error___block_invoke;
  aBlock[3] = &unk_1E73A3290;
  aBlock[4] = self;
  aBlock[5] = &v29;
  v13 = _Block_copy(aBlock);
  if (v6 && !v7)
  {
    v19 = NSDictionaryGetNSNumber(v6, @"sid", 0);
    if (!v19)
    {
      v25 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "No session ID", v14, v15, v16, v17, v18, v27);
      v26 = v30[5];
      v30[5] = v25;

      v19 = 0;
      goto LABEL_9;
    }

    objc_storeStrong(&self->_sessionID, v19);
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

      LogPrintF(ucat, "[CUFileClient _runSessionStartResponse:error:]", 0x1Eu, "Session started: ID %@", v20, v21, v22, v23, v19);
    }

LABEL_8:
    [(CUFileClient *)self _run];
LABEL_9:

    goto LABEL_10;
  }

  v19 = v7;
  if (!v7)
  {
    v19 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "No response, no error", v8, v9, v10, v11, v12, v27);
  }

  objc_storeStrong(v30 + 5, v19);
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_10:
  v13[2](v13);

  _Block_object_dispose(&v29, 8);
}

uint64_t __47__CUFileClient__runSessionStartResponse_error___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 40);
  v9 = *(*(v8 + 8) + 40);
  if (!v9)
  {
    return result;
  }

  v10 = result;
  v11 = *(result + 32);
  v12 = v11[12];
  if (*v12 <= 90)
  {
    if (*v12 == -1)
    {
      v13 = _LogCategory_Initialize(v11[12], 0x5Au);
      v11 = *(v10 + 32);
      v8 = *(v10 + 40);
      if (!v13)
      {
        goto LABEL_7;
      }

      v12 = v11[12];
      v9 = *(*(v8 + 8) + 40);
    }

    LogPrintF(v12, "[CUFileClient _runSessionStartResponse:error:]_block_invoke", 0x5Au, "### Session start failed: %{error}", a5, a6, a7, a8, v9);
    v11 = *(v10 + 32);
    v8 = *(v10 + 40);
  }

LABEL_7:
  v14 = *(*(v8 + 8) + 40);

  return [v11 _reportError:v14 where:"Session start"];
}

- (void)_runSessionStartRequest
{
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_5;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUFileClient _runSessionStartRequest]", 0x1Eu, "Session start request", v2, v3, v4, v5, v18);
  }

LABEL_5:
  sessionID = self->_sessionID;
  self->_sessionID = 0;

  v16 = NSPrintF("FSSr:%@", v9, v10, v11, v12, v13, v14, v15, self->_serviceType);
  clinkClient = self->_clinkClient;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __39__CUFileClient__runSessionStartRequest__block_invoke;
  v19[3] = &unk_1E73A31A0;
  v19[4] = self;
  [(RPCompanionLinkClient *)clinkClient sendRequestID:v16 request:MEMORY[0x1E695E0F8] options:0 responseHandler:v19];
  self->_lastRequestTicks = mach_absolute_time();
}

- (void)_runCLinkActivate
{
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_5;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUFileClient _runCLinkActivate]", 0x1Eu, "CLink activate start", v2, v3, v4, v5, v12[0]);
  }

LABEL_5:
  self->_clinkActivated = 0;
  [(RPCompanionLinkClient *)self->_clinkClient invalidate];
  v8 = objc_alloc_init(getRPCompanionLinkClientClass[0]());
  clinkClient = self->_clinkClient;
  self->_clinkClient = v8;
  v10 = v8;

  [(RPCompanionLinkClient *)v10 setDispatchQueue:self->_dispatchQueue];
  v11 = objc_alloc_init(getRPCompanionLinkDeviceClass[0]());
  [v11 setIdentifier:self->_destinationID];
  [(RPCompanionLinkClient *)v10 setDestinationDevice:v11];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __33__CUFileClient__runCLinkActivate__block_invoke;
  v13[3] = &unk_1E73A49F0;
  v13[4] = v10;
  v13[5] = self;
  [(RPCompanionLinkClient *)v10 setInvalidationHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __33__CUFileClient__runCLinkActivate__block_invoke_2;
  v12[3] = &unk_1E73A35E0;
  v12[4] = v10;
  v12[5] = self;
  [(RPCompanionLinkClient *)v10 activateWithCompletion:v12];
}

uint64_t __33__CUFileClient__runCLinkActivate__block_invoke(uint64_t result)
{
  v2 = *(result + 40);
  v3 = *(v2 + 32);
  if (*(result + 32) == v3)
  {
    v4 = result;
    *(v2 + 32) = 0;

    v5 = *(v4 + 40);

    return [v5 _invalidated];
  }

  return result;
}

void __33__CUFileClient__runCLinkActivate__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) == *(*(a1 + 40) + 32))
  {
    v16 = v3;
    v8 = v3;
    v9 = *(a1 + 40);
    if (v8)
    {
      v10 = *(v9 + 96);
      if (*v10 <= 90)
      {
        if (*v10 == -1)
        {
          v13 = _LogCategory_Initialize(*(v9 + 96), 0x5Au);
          v9 = *(a1 + 40);
          if (!v13)
          {
            goto LABEL_10;
          }

          v10 = *(v9 + 96);
        }

        LogPrintF(v10, "[CUFileClient _runCLinkActivate]_block_invoke_2", 0x5Au, "### CLink activate failed: %{error}", v4, v5, v6, v7, v8);
        v9 = *(a1 + 40);
      }

LABEL_10:
      [v9 _reportError:v8 where:"CLink activate"];
LABEL_13:

      v3 = v16;
      goto LABEL_14;
    }

    *(v9 + 24) = 1;
    v11 = *(a1 + 40);
    v12 = v11[12];
    if (*v12 <= 30)
    {
      if (*v12 == -1)
      {
        v14 = _LogCategory_Initialize(v12, 0x1Eu);
        v11 = *(a1 + 40);
        if (!v14)
        {
          goto LABEL_12;
        }

        v12 = v11[12];
      }

      LogPrintF(v12, "[CUFileClient _runCLinkActivate]_block_invoke_2", 0x1Eu, "CLink activated", v4, v5, v6, v7, v15);
      v11 = *(a1 + 40);
    }

LABEL_12:
    [v11 _run];
    goto LABEL_13;
  }

LABEL_14:
}

- (void)_run
{
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    while (1)
    {
      state = self->_state;
      if (state <= 0xB)
      {
        if (!self->_state)
        {
          self->_state = 10;
          goto LABEL_23;
        }

        if (state == 10)
        {
          self->_state = 11;
          [(CUFileClient *)self _runCLinkActivate];
          goto LABEL_23;
        }

        if (state != 11 || !self->_clinkActivated)
        {
          goto LABEL_23;
        }

        v8 = 12;
      }

      else
      {
        if (self->_state > 0xDuLL)
        {
          if (state == 14)
          {
            self->_state = 15;
            [(CUFileClient *)self _runPrepare];
          }

          else if (state == 15)
          {
            [(CUFileClient *)self _runQueries];
          }

          goto LABEL_23;
        }

        if (state == 12)
        {
          self->_state = 13;
          [(CUFileClient *)self _runSessionStartRequest];
          goto LABEL_23;
        }

        if (state != 13 || !self->_sessionID)
        {
          goto LABEL_23;
        }

        v8 = 14;
      }

      self->_state = v8;
LABEL_23:
      if (self->_state == state)
      {
        return;
      }

      ucat = self->_ucat;
      if (ucat->var0 <= 30)
      {
        if (ucat->var0 != -1)
        {
          goto LABEL_26;
        }

        if (_LogCategory_Initialize(ucat, 0x1Eu))
        {
          ucat = self->_ucat;
LABEL_26:
          v10 = "?";
          if (state <= 0xF)
          {
            v10 = off_1E73A32D8[state];
          }

          LogPrintF(ucat, "[CUFileClient _run]", 0x1Eu, "State: %s -> %s", v2, v3, v4, v5, v10);
        }
      }
    }
  }
}

- (void)_sessionTimerFired
{
  v7 = mach_absolute_time() - self->_lastRequestTicks;
  if (sUpTicksToSecondsOnce != -1)
  {
    dispatch_once_f(&sUpTicksToSecondsOnce, &sUpTicksToSecondsMultiplier, _UpTicksToSecondsInit);
  }

  v8 = 15.0 - *&sUpTicksToSecondsMultiplier * v7;
  if (v8 <= 45.0)
  {
    [(CUFileClient *)self _sendKeepAlive:?];
    v8 = 15.0;
  }

  else
  {
    ucat = self->_ucat;
    if (ucat->var0 > 20)
    {
      goto LABEL_8;
    }

    if (ucat->var0 != -1)
    {
      goto LABEL_6;
    }

    if (_LogCategory_Initialize(ucat, 0x14u))
    {
      ucat = self->_ucat;
LABEL_6:
      LogPrintF(ucat, "[CUFileClient _sessionTimerFired]", 0x14u, "Keep alive deferred: %.3f seconds", v3, v4, v5, v6, *&v8);
    }
  }

LABEL_8:
  sessionTimer = self->_sessionTimer;
  v11 = dispatch_time(0, (v8 * 1000000000.0));

  dispatch_source_set_timer(sessionTimer, v11, 0xFFFFFFFFFFFFFFFFLL, 0x37E11D600uLL);
}

- (void)_sendSessionStop
{
  v20[1] = *MEMORY[0x1E69E9840];
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_5;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUFileClient _sendSessionStop]", 0x1Eu, "Session stop", v4, v5, v6, v7, v15);
  }

LABEL_5:
  v10 = NSPrintF("FSSp:%@", a2, v2, v3, v4, v5, v6, v7, self->_serviceType);
  v19 = @"sid";
  v20[0] = self->_sessionID;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v12 = getRPOptionTimeoutSeconds();
  v17 = v12;
  v18 = &unk_1F06A2F68;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];

  clinkClient = self->_clinkClient;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __32__CUFileClient__sendSessionStop__block_invoke;
  v16[3] = &unk_1E73A31A0;
  v16[4] = self;
  [(RPCompanionLinkClient *)clinkClient sendRequestID:v10 request:v11 options:v13 responseHandler:v16];
  self->_lastRequestTicks = mach_absolute_time();
}

void __32__CUFileClient__sendSessionStop__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = a2;
  v7 = a3;
  v12 = a4;
  v13 = *(a1 + 32);
  v14 = *(v13 + 96);
  if (*v14 <= 30)
  {
    if (*v14 != -1)
    {
LABEL_3:
      LogPrintF(v14, "[CUFileClient _sendSessionStop]_block_invoke", 0x1Eu, "Session stop response: %{error}", v8, v9, v10, v11, v12);
      v13 = *(a1 + 32);
      goto LABEL_5;
    }

    v15 = _LogCategory_Initialize(v14, 0x1Eu);
    v13 = *(a1 + 32);
    if (v15)
    {
      v14 = *(v13 + 96);
      goto LABEL_3;
    }
  }

LABEL_5:
  v16 = *(v13 + 72);
  *(v13 + 72) = 0;

  [*(*(a1 + 32) + 32) invalidate];
  [*(a1 + 32) _invalidated];
}

- (void)_sendKeepAlive:(double)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  ucat = self->_ucat;
  if (ucat->var0 <= 20)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x14u))
      {
        goto LABEL_5;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUFileClient _sendKeepAlive:]", 0x14u, "Keep alive request: %.3f delta seconds", v5, v6, v7, v8, *&a3);
  }

LABEL_5:
  v12 = NSPrintF("FSKA:%@", a2, v3, v4, v5, v6, v7, v8, self->_serviceType);
  sessionID = self->_sessionID;
  v17 = @"sid";
  v18[0] = sessionID;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  clinkClient = self->_clinkClient;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __31__CUFileClient__sendKeepAlive___block_invoke;
  v16[3] = &unk_1E73A31A0;
  v16[4] = self;
  [(RPCompanionLinkClient *)clinkClient sendRequestID:v12 request:v14 options:0 responseHandler:v16];
  self->_lastRequestTicks = mach_absolute_time();
}

void __31__CUFileClient__sendKeepAlive___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v14 = a2;
  v7 = a3;
  v12 = a4;
  v13 = *(*(a1 + 32) + 96);
  if (*v13 <= 20)
  {
    if (*v13 != -1)
    {
LABEL_3:
      LogPrintF(v13, "[CUFileClient _sendKeepAlive:]_block_invoke", 0x14u, "Keep alive response: %##@, %{error}", v8, v9, v10, v11, v14);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(v13, 0x14u))
    {
      v13 = *(*(a1 + 32) + 96);
      goto LABEL_3;
    }
  }

LABEL_5:
  if (v12)
  {
    [*(a1 + 32) _reportError:v12 where:"Keep alive response"];
  }
}

- (void)_reportError:(id)a3 where:(const char *)a4
{
  v13 = a3;
  ucat = self->_ucat;
  if (ucat->var0 <= 90)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[CUFileClient _reportError:where:]", 0x5Au, "### Error: %s, %{error}", v6, v7, v8, v9, a4);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(ucat, 0x5Au))
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  self->_state = 3;
  v11 = _Block_copy(self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v11)
  {
    v11[2](v11, v13);
  }
}

- (void)_completeQuery:(id)a3 response:(id)a4 error:(id)a5
{
  v20 = a3;
  v8 = a4;
  v13 = a5;
  ucat = self->_ucat;
  var0 = ucat->var0;
  if (v13)
  {
    if (var0 > 90)
    {
      goto LABEL_12;
    }

    v16 = v20;
    if (var0 != -1)
    {
      goto LABEL_4;
    }

    if (_LogCategory_Initialize(ucat, 0x5Au))
    {
      ucat = self->_ucat;
      v16 = v20;
LABEL_4:
      LogPrintF(ucat, "[CUFileClient _completeQuery:response:error:]", 0x5Au, "### Query failed: %@, %{error}", v9, v10, v11, v12, v16);
    }
  }

  else
  {
    if (var0 > 30)
    {
      goto LABEL_12;
    }

    v17 = v20;
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_12;
      }

      ucat = self->_ucat;
      v17 = v20;
    }

    LogPrintF(ucat, "[CUFileClient _completeQuery:response:error:]", 0x1Eu, "Query completed: %@, %@", v9, v10, v11, v12, v17);
  }

LABEL_12:
  v18 = [(CUFileQuery *)v20 completionHandler];
  if (v18)
  {
    [(CUFileQuery *)v20 setCompletionHandler:0];
    (v18)[2](v18, v8, v13);
  }

  currentQuery = self->_currentQuery;
  if (currentQuery == v20)
  {
    self->_currentQuery = 0;

    [(CUFileClient *)self _run];
  }
}

- (void)performQuery:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__CUFileClient_performQuery___block_invoke;
  v7[3] = &unk_1E73A49F0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __29__CUFileClient_performQuery___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = [*(a1 + 32) completionHandler];

  v16 = *(a1 + 40);
  if (v10)
  {
    if (*(v16 + 40) == 1)
    {
      v17 = *(a1 + 32);
      v25 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294896148, "Query after invalidate", v11, v12, v13, v14, v15, v24);
      [v16 _completeQuery:v17 response:0 error:v25];
    }

    else
    {
      v19 = *(v16 + 56);
      if (!v19)
      {
        v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v21 = *(a1 + 40);
        v22 = *(v21 + 56);
        *(v21 + 56) = v20;

        v19 = *(*(a1 + 40) + 56);
      }

      [v19 addObject:*(a1 + 32)];
      v23 = *(a1 + 40);

      [v23 _run];
    }
  }

  else
  {
    v18 = *(v16 + 96);
    if (*v18 > 90)
    {
      return;
    }

    if (*v18 == -1)
    {
      if (!_LogCategory_Initialize(v18, 0x5Au))
      {
        return;
      }

      v18 = *(*(a1 + 40) + 96);
    }

    LogPrintF(v18, "[CUFileClient performQuery:]_block_invoke", 0x5Au, "### Query without completion", v12, v13, v14, v15, a9);
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled || self->_invalidateDone || self->_clinkClient || self->_queryArray || self->_currentQuery || self->_sessionID)
  {
    return;
  }

  v11 = _Block_copy(self->_invalidationHandler);
  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  v8 = v11;
  if (v11)
  {
    v11[2](v11);
    v8 = v11;
  }

  self->_invalidateDone = 1;
  ucat = self->_ucat;
  if (*ucat <= 30)
  {
    if (*ucat == -1)
    {
      ucat = _LogCategory_Initialize(ucat, 0x1Eu);
      v8 = v11;
      if (!ucat)
      {
        goto LABEL_14;
      }

      ucat = self->_ucat;
    }

    ucat = LogPrintF(ucat, "[CUFileClient _invalidated]", 0x1Eu, "Invalidated", v4, v5, v6, v7, v10);
    v8 = v11;
  }

LABEL_14:

  MEMORY[0x1EEE66BB8](ucat, v8);
}

- (void)_invalidate
{
  v30 = *MEMORY[0x1E69E9840];
  if (self->_invalidateCalled)
  {
    return;
  }

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

    LogPrintF(ucat, "[CUFileClient _invalidate]", 0x1Eu, "Invalidate", v2, v3, v4, v5, v25);
  }

LABEL_6:
  if (self->_sessionID)
  {
    [(CUFileClient *)self _sendSessionStop];
  }

  else
  {
    [(RPCompanionLinkClient *)self->_clinkClient invalidate];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = self->_queryArray;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v15 = v9;
    v16 = *v26;
    v17 = *MEMORY[0x1E696A768];
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v8);
        }

        v19 = *(*(&v25 + 1) + 8 * i);
        v20 = NSErrorF_safe(v17, 4294896148, "Invalidated", v10, v11, v12, v13, v14, v25);
        [(CUFileClient *)self _completeQuery:v19 response:0 error:v20];
      }

      v15 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v15);
  }

  [(NSMutableArray *)self->_queryArray removeAllObjects];
  queryArray = self->_queryArray;
  self->_queryArray = 0;

  sessionTimer = self->_sessionTimer;
  if (sessionTimer)
  {
    v23 = sessionTimer;
    dispatch_source_cancel(v23);
    v24 = self->_sessionTimer;
    self->_sessionTimer = 0;
  }

  [(CUFileClient *)self _invalidated];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__CUFileClient_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activateWithCompletion:(id)a3
{
  v4 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__2972;
  v26 = __Block_byref_object_dispose__2973;
  v27 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__CUFileClient__activateWithCompletion___block_invoke;
  aBlock[3] = &unk_1E73A3FA0;
  v21 = &v22;
  aBlock[4] = self;
  v5 = v4;
  v20 = v5;
  v11 = _Block_copy(aBlock);
  if (!self->_destinationID)
  {
    v14 = "No destination ID";
LABEL_8:
    v15 = 4294960591;
LABEL_10:
    v16 = NSErrorF_safe(*MEMORY[0x1E696A768], v15, v14, v6, v7, v8, v9, v10, v18);
    v17 = v23[5];
    v23[5] = v16;

    goto LABEL_5;
  }

  if (!self->_serviceType)
  {
    v14 = "No service type";
    goto LABEL_8;
  }

  if (self->_activateCalled)
  {
    v14 = "Activate already called";
    v15 = 4294960575;
    goto LABEL_10;
  }

  self->_activateCalled = 1;
  v12 = _Block_copy(v5);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = v12;

  [(CUFileClient *)self _run];
LABEL_5:
  v11[2](v11);

  _Block_object_dispose(&v22, 8);
}

uint64_t __40__CUFileClient__activateWithCompletion___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(*(*(result + 48) + 8) + 40);
  if (!v8)
  {
    return result;
  }

  v9 = result;
  v10 = *(*(result + 32) + 96);
  if (*v10 <= 90)
  {
    if (*v10 == -1)
    {
      if (!_LogCategory_Initialize(v10, 0x5Au))
      {
        goto LABEL_7;
      }

      v10 = *(v9[4] + 96);
      v8 = *(*(v9[6] + 8) + 40);
    }

    LogPrintF(v10, "[CUFileClient _activateWithCompletion:]_block_invoke", 0x5Au, "### Activate failed: %{error}", a5, a6, a7, a8, v8);
  }

LABEL_7:
  v11 = *(v9[5] + 16);

  return v11();
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__CUFileClient_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E73A49A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __39__CUFileClient_activateWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = v9[12];
  if (*v10 <= 30)
  {
    if (*v10 != -1)
    {
LABEL_3:
      LogPrintF(v10, "[CUFileClient activateWithCompletion:]_block_invoke", 0x1Eu, "Activate", a5, a6, a7, a8, v14);
      v9 = *(a1 + 32);
      goto LABEL_5;
    }

    v11 = _LogCategory_Initialize(v10, 0x1Eu);
    v9 = *(a1 + 32);
    if (v11)
    {
      v10 = v9[12];
      goto LABEL_3;
    }
  }

LABEL_5:
  v12 = *(a1 + 40);

  return [v9 _activateWithCompletion:v12];
}

- (void)setLabel:(id)a3
{
  objc_storeStrong(&self->_label, a3);
  v13 = a3;
  v5 = qword_1EADE96B8;
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
  v4.super_class = CUFileClient;
  [(CUFileClient *)&v4 dealloc];
}

- (CUFileClient)init
{
  v6.receiver = self;
  v6.super_class = CUFileClient;
  v2 = [(CUFileClient *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v3->_ucat = &gLogCategory_CUFileClient;
    v4 = v3;
  }

  return v3;
}

@end