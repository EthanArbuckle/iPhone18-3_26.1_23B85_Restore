@interface HDSDeviceActivationOperation
+ (OS_os_log)signpostLog;
- (unint64_t)signpostID;
- (void)_beginActivationWithCompletion:(id)completion;
- (void)_checkActivationStateWithCompletion:(id)completion;
- (void)_continueActivationWithSessionData:(id)data completion:(id)completion;
- (void)_finishActivation:(id)activation responseHeader:(id)header completion:(id)completion;
- (void)_finishWithResult:(int64_t)result error:(id)error;
- (void)_performActivationWithCompletion:(id)completion;
- (void)_sendActivationURLRequest:(id)request retries:(int)retries completion:(id)completion;
- (void)activate;
@end

@implementation HDSDeviceActivationOperation

+ (OS_os_log)signpostLog
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HDSDeviceActivationOperation_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (signpostLog_onceToken_1 != -1)
  {
    dispatch_once(&signpostLog_onceToken_1, block);
  }

  v2 = signpostLog_log_1;

  return v2;
}

void __43__HDSDeviceActivationOperation_signpostLog__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.HomeDeviceSetup.signposts", [v4 UTF8String]);
  v3 = signpostLog_log_1;
  signpostLog_log_1 = v2;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__HDSDeviceActivationOperation_activate__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __40__HDSDeviceActivationOperation_activate__block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSDeviceActivation <= 40 && (gLogCategory_HDSDeviceActivation != -1 || _LogCategory_Initialize()))
  {
    __40__HDSDeviceActivationOperation_activate__block_invoke_cold_1(a1);
  }

  *(*(a1 + 32) + 40) = mach_absolute_time();
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__HDSDeviceActivationOperation_activate__block_invoke_2;
  v4[3] = &unk_279714C70;
  v4[4] = v2;
  return [v2 _checkActivationStateWithCompletion:v4];
}

void __40__HDSDeviceActivationOperation_activate__block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 domain];
    v8 = v7;
    if (v7 == *MEMORY[0x277CCA590])
    {
      v12 = [v6 code];

      if (v12 == -6732)
      {
        v9 = *(a1 + 32);
        v10 = 3;
LABEL_9:
        v11 = v6;
        goto LABEL_10;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = 1;
    goto LABEL_9;
  }

  v9 = *(a1 + 32);
  if (!a3)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __40__HDSDeviceActivationOperation_activate__block_invoke_3;
    v13[3] = &unk_279714C70;
    v13[4] = v9;
    [v9 _performActivationWithCompletion:v13];
    goto LABEL_11;
  }

  v10 = 2;
  v11 = 0;
LABEL_10:
  [v9 _finishWithResult:v10 error:v11];
LABEL_11:
}

uint64_t __40__HDSDeviceActivationOperation_activate__block_invoke_3(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = 1;
    v5 = a2;
  }

  return [v3 _finishWithResult:v4 error:v5];
}

- (void)_finishWithResult:(int64_t)result error:(id)error
{
  errorCopy = error;
  if (gLogCategory_HDSDeviceActivation <= 30 && (gLogCategory_HDSDeviceActivation != -1 || _LogCategory_Initialize()))
  {
    [HDSDeviceActivationOperation _finishWithResult:error:];
  }

  mach_absolute_time();
  startTicks = self->_startTicks;
  UpTicksToSecondsF();
  self->_metricTotalSeconds = v7;
  if (gLogCategory_HDSDeviceActivation <= 40 && (gLogCategory_HDSDeviceActivation != -1 || _LogCategory_Initialize()))
  {
    [(HDSDeviceActivationOperation *)self _finishWithResult:result error:&self->_metricTotalSeconds];
  }

  (*(self->_completionHandler + 2))();
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;
}

- (void)_checkActivationStateWithCompletion:(id)completion
{
  completionCopy = completion;
  if (gLogCategory_HDSDeviceActivation <= 30 && (gLogCategory_HDSDeviceActivation != -1 || _LogCategory_Initialize()))
  {
    [HDSDeviceActivationOperation _checkActivationStateWithCompletion:];
  }

  signpostLog = [objc_opt_class() signpostLog];
  signpostID = [(HDSDeviceActivationOperation *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = signpostID;
    if (os_signpost_enabled(signpostLog))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v7, "DeviceActivationStepCheckState", "", buf, 2u);
    }
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v8 setObject:&unk_2864E80F0 forKeyedSubscript:@"s"];
  sfSession = self->_sfSession;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__HDSDeviceActivationOperation__checkActivationStateWithCompletion___block_invoke;
  v11[3] = &unk_279714C98;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [(SFSession *)sfSession sendRequestID:@"_dA" options:&unk_2864E7DE8 request:v8 responseHandler:v11];
}

void __68__HDSDeviceActivationOperation__checkActivationStateWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a2;
  v9 = [objc_opt_class() signpostLog];
  v10 = [*(a1 + 32) signpostID];
  if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, v9, OS_SIGNPOST_INTERVAL_END, v11, "DeviceActivationStepCheckState", "", v12, 2u);
    }
  }

  CFDictionaryGetInt64();
  (*(*(a1 + 40) + 16))();
}

- (void)_performActivationWithCompletion:(id)completion
{
  completionCopy = completion;
  if (gLogCategory_HDSDeviceActivation <= 30 && (gLogCategory_HDSDeviceActivation != -1 || _LogCategory_Initialize()))
  {
    [HDSDeviceActivationOperation _performActivationWithCompletion:];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__HDSDeviceActivationOperation__performActivationWithCompletion___block_invoke;
  v6[3] = &unk_279714D10;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(HDSDeviceActivationOperation *)self _beginActivationWithCompletion:v6];
}

void __65__HDSDeviceActivationOperation__performActivationWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v5 error:0];
    v7 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"request"];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __65__HDSDeviceActivationOperation__performActivationWithCompletion___block_invoke_2;
    v10[3] = &unk_279714CE8;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = v9;
    [v8 _sendActivationURLRequest:v7 retries:2 completion:v10];
  }
}

void __65__HDSDeviceActivationOperation__performActivationWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 40) + 16);

    v5();
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __65__HDSDeviceActivationOperation__performActivationWithCompletion___block_invoke_3;
    v9[3] = &unk_279714D10;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v8;
    [v7 _continueActivationWithSessionData:a3 completion:v9];
  }
}

void __65__HDSDeviceActivationOperation__performActivationWithCompletion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v5 error:0];
    v7 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"request"];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __65__HDSDeviceActivationOperation__performActivationWithCompletion___block_invoke_4;
    v10[3] = &unk_279714CE8;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = v9;
    [v8 _sendActivationURLRequest:v7 retries:2 completion:v10];
  }
}

void __65__HDSDeviceActivationOperation__performActivationWithCompletion___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = *(*(a1 + 40) + 16);

    v6();
  }

  else
  {
    v12 = v4;
    v13 = v5;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __65__HDSDeviceActivationOperation__performActivationWithCompletion___block_invoke_5;
    v10[3] = &unk_279714CC0;
    v9 = *(a1 + 32);
    v11 = *(a1 + 40);
    [v9 _finishActivation:a3 responseHeader:a4 completion:v10];
  }
}

- (void)_beginActivationWithCompletion:(id)completion
{
  completionCopy = completion;
  if (gLogCategory_HDSDeviceActivation <= 30 && (gLogCategory_HDSDeviceActivation != -1 || _LogCategory_Initialize()))
  {
    [HDSDeviceActivationOperation _beginActivationWithCompletion:];
  }

  signpostLog = [objc_opt_class() signpostLog];
  signpostID = [(HDSDeviceActivationOperation *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = signpostID;
    if (os_signpost_enabled(signpostLog))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v7, "DeviceActivationStepCreateSession", "", buf, 2u);
    }
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v8 setObject:&unk_2864E8108 forKeyedSubscript:@"s"];
  sfSession = self->_sfSession;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__HDSDeviceActivationOperation__beginActivationWithCompletion___block_invoke;
  v11[3] = &unk_279714C98;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [(SFSession *)sfSession sendRequestID:@"_dA" options:&unk_2864E7E10 request:v8 responseHandler:v11];
}

void __63__HDSDeviceActivationOperation__beginActivationWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a2;
  v9 = [objc_opt_class() signpostLog];
  v10 = [*(a1 + 32) signpostID];
  if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      *v13 = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, v9, OS_SIGNPOST_INTERVAL_END, v11, "DeviceActivationStepCreateSession", "", v13, 2u);
    }
  }

  v12 = [v7 objectForKeyedSubscript:@"r"];

  (*(*(a1 + 40) + 16))();
}

- (void)_continueActivationWithSessionData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  if (gLogCategory_HDSDeviceActivation <= 30 && (gLogCategory_HDSDeviceActivation != -1 || _LogCategory_Initialize()))
  {
    [HDSDeviceActivationOperation _continueActivationWithSessionData:completion:];
  }

  signpostLog = [objc_opt_class() signpostLog];
  signpostID = [(HDSDeviceActivationOperation *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = signpostID;
    if (os_signpost_enabled(signpostLog))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v10, "DeviceActivationStepCreateActivation", "", buf, 2u);
    }
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v11 setObject:&unk_2864E8120 forKeyedSubscript:@"s"];
  [v11 setObject:dataCopy forKeyedSubscript:@"d"];
  sfSession = self->_sfSession;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__HDSDeviceActivationOperation__continueActivationWithSessionData_completion___block_invoke;
  v14[3] = &unk_279714C98;
  v14[4] = self;
  v15 = completionCopy;
  v13 = completionCopy;
  [(SFSession *)sfSession sendRequestID:@"_dA" options:&unk_2864E7E38 request:v11 responseHandler:v14];
}

void __78__HDSDeviceActivationOperation__continueActivationWithSessionData_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a2;
  v9 = [objc_opt_class() signpostLog];
  v10 = [*(a1 + 32) signpostID];
  if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      *v13 = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, v9, OS_SIGNPOST_INTERVAL_END, v11, "DeviceActivationStepCreateActivation", "", v13, 2u);
    }
  }

  v12 = [v7 objectForKeyedSubscript:@"r"];

  (*(*(a1 + 40) + 16))();
}

- (void)_finishActivation:(id)activation responseHeader:(id)header completion:(id)completion
{
  activationCopy = activation;
  headerCopy = header;
  completionCopy = completion;
  if (gLogCategory_HDSDeviceActivation <= 30 && (gLogCategory_HDSDeviceActivation != -1 || _LogCategory_Initialize()))
  {
    [HDSDeviceActivationOperation _finishActivation:responseHeader:completion:];
  }

  signpostLog = [objc_opt_class() signpostLog];
  signpostID = [(HDSDeviceActivationOperation *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = signpostID;
    if (os_signpost_enabled(signpostLog))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v13, "DeviceActivationStepActivate", "", buf, 2u);
    }
  }

  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v14 setObject:&unk_2864E8138 forKeyedSubscript:@"s"];
  [v14 setObject:activationCopy forKeyedSubscript:@"d"];
  [v14 setObject:headerCopy forKeyedSubscript:@"h"];
  sfSession = self->_sfSession;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __76__HDSDeviceActivationOperation__finishActivation_responseHeader_completion___block_invoke;
  v17[3] = &unk_279714C98;
  v17[4] = self;
  v18 = completionCopy;
  v16 = completionCopy;
  [(SFSession *)sfSession sendRequestID:@"_dA" options:&unk_2864E7E60 request:v14 responseHandler:v17];
}

void __76__HDSDeviceActivationOperation__finishActivation_responseHeader_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a2;
  v9 = [objc_opt_class() signpostLog];
  v10 = [*(a1 + 32) signpostID];
  if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, v9, OS_SIGNPOST_INTERVAL_END, v11, "DeviceActivationStepActivate", "", v12, 2u);
    }
  }

  CFDictionaryGetInt64();
  (*(*(a1 + 40) + 16))();
}

- (void)_sendActivationURLRequest:(id)request retries:(int)retries completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (gLogCategory_HDSDeviceActivation <= 40 && (gLogCategory_HDSDeviceActivation != -1 || _LogCategory_Initialize()))
  {
    [HDSDeviceActivationOperation _sendActivationURLRequest:retries:completion:];
  }

  signpostLog = [objc_opt_class() signpostLog];
  signpostID = [(HDSDeviceActivationOperation *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = signpostID;
    if (os_signpost_enabled(signpostLog))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v12, "DeviceActivationServerRequest", "", buf, 2u);
    }
  }

  ephemeralSessionConfiguration = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
  [ephemeralSessionConfiguration setTimeoutIntervalForResource:30.0];
  [ephemeralSessionConfiguration setWaitsForConnectivity:1];
  v14 = [MEMORY[0x277CCAD30] sessionWithConfiguration:ephemeralSessionConfiguration];
  Current = CFAbsoluteTimeGetCurrent();
  objc_initWeak(buf, self);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __77__HDSDeviceActivationOperation__sendActivationURLRequest_retries_completion___block_invoke;
  v22 = &unk_279714D38;
  selfCopy = self;
  retriesCopy = retries;
  objc_copyWeak(v26, buf);
  v16 = requestCopy;
  v24 = v16;
  v17 = completionCopy;
  v25 = v17;
  v26[1] = *&Current;
  v18 = [v14 dataTaskWithRequest:v16 completionHandler:&v19];
  [v18 resume];

  objc_destroyWeak(v26);
  objc_destroyWeak(buf);
}

void __77__HDSDeviceActivationOperation__sendActivationURLRequest_retries_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = [v11 statusCode];
  v13 = *(a1 + 32);
  v14 = [objc_opt_class() signpostLog];
  v15 = [*(a1 + 32) signpostID];
  if ((v15 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = v15;
    if (os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, v14, OS_SIGNPOST_INTERVAL_END, v16, "DeviceActivationServerRequest", "", buf, 2u);
    }
  }

  if (!v9 && v12 == 200)
  {
    if (gLogCategory_HDSDeviceActivation <= 40 && (gLogCategory_HDSDeviceActivation != -1 || _LogCategory_Initialize()))
    {
      __77__HDSDeviceActivationOperation__sendActivationURLRequest_retries_completion___block_invoke_cold_1(a1);
    }

    v17 = *(a1 + 48);
    v18 = [v11 allHeaderFields];
    (*(v17 + 16))(v17, 0, v7, v18);
    goto LABEL_31;
  }

  v18 = v9;
  v19 = [v18 domain];
  v20 = [v19 isEqualToString:*MEMORY[0x277CCA738]];

  if (v20 && (v21 = [v18 code], (v21 + 1005) <= 4) && ((1 << (v21 - 19)) & 0x13) != 0)
  {

    if (*(a1 + 72) >= 1)
    {
      if (gLogCategory_HDSDeviceActivation <= 40 && (gLogCategory_HDSDeviceActivation != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      WeakRetained = objc_loadWeakRetained((a1 + 56));
      [WeakRetained _sendActivationURLRequest:*(a1 + 40) retries:(*(a1 + 72) - 1) completion:*(a1 + 48)];

      goto LABEL_31;
    }
  }

  else
  {
  }

  if (v9)
  {
    if (gLogCategory_HDSDeviceActivation <= 90 && (gLogCategory_HDSDeviceActivation != -1 || _LogCategory_Initialize()))
    {
      __77__HDSDeviceActivationOperation__sendActivationURLRequest_retries_completion___block_invoke_cold_3();
    }
  }

  else
  {
    if (gLogCategory_HDSDeviceActivation <= 90 && (gLogCategory_HDSDeviceActivation != -1 || _LogCategory_Initialize()))
    {
      __77__HDSDeviceActivationOperation__sendActivationURLRequest_retries_completion___block_invoke_cold_2();
    }

    v22 = MEMORY[0x277CCA9B8];
    v28 = @"sc";
    v23 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
    v29[0] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v18 = [v22 errorWithDomain:@"com.apple.soundboard.activation" code:0 userInfo:v24];
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v18, 0, 0);
LABEL_31:

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __40__HDSDeviceActivationOperation_activate__block_invoke_cold_1(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  v4 = *(a1 + 32);
  return LogPrintF();
}

- (uint64_t)_finishWithResult:(uint64_t *)a3 error:.cold.2(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  objc_opt_class();
  if (a2 <= 3)
  {
    v5 = off_279714DD0[a2];
  }

  v7 = *a3;
  return LogPrintF();
}

uint64_t __77__HDSDeviceActivationOperation__sendActivationURLRequest_retries_completion___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = CFAbsoluteTimeGetCurrent() - *(a1 + 64);
  return LogPrintF();
}

@end