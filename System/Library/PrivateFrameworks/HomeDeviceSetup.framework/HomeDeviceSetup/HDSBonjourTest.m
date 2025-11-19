@interface HDSBonjourTest
- (HDSBonjourTest)init;
- (void)_complete;
- (void)_handleFoundDevice:(id)a3;
- (void)_handleTimeout;
- (void)activate;
- (void)invalidate;
@end

@implementation HDSBonjourTest

- (HDSBonjourTest)init
{
  v6.receiver = self;
  v6.super_class = HDSBonjourTest;
  v2 = [(HDSBonjourTest *)&v6 init];
  if (v2)
  {
    v3 = CUMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__HDSBonjourTest_activate__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __26__HDSBonjourTest_activate__block_invoke(uint64_t a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  if (gLogCategory_HDSBonjourTest <= 30 && (gLogCategory_HDSBonjourTest != -1 || _LogCategory_Initialize()))
  {
    __26__HDSBonjourTest_activate__block_invoke_cold_1();
  }

  v3 = *(a1 + 32);
  v2 = (a1 + 32);
  *(v3 + 44) = 1;
  *(*v2 + 3) = mach_absolute_time();
  RandomBytes();
  v4 = NSStringWithMACAddress();
  v5 = *(*v2 + 2);
  *(*v2 + 2) = v4;

  if (gLogCategory_HDSBonjourTest <= 30 && (gLogCategory_HDSBonjourTest != -1 || _LogCategory_Initialize()))
  {
    __26__HDSBonjourTest_activate__block_invoke_cold_2(v2);
  }

  [*(*v2 + 1) invalidate];
  v6 = objc_opt_new();
  v7 = *(*v2 + 1);
  *(*v2 + 1) = v6;

  [*(*v2 + 1) setDispatchQueue:*(*v2 + 7)];
  [*(*v2 + 1) setServiceType:@"_bonjourtest._tcp"];
  [*(*v2 + 1) setChangeFlags:0xFFFFFFFFLL];
  [*(*v2 + 1) setDomain:@"local."];
  [*(*v2 + 1) setLabel:@"HDSBonjour"];
  objc_initWeak(&location, *v2);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __26__HDSBonjourTest_activate__block_invoke_2;
  v21[3] = &unk_279714748;
  objc_copyWeak(&v22, &location);
  [*(*v2 + 1) setDeviceFoundHandler:v21];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __26__HDSBonjourTest_activate__block_invoke_3;
  v19[3] = &unk_279714770;
  objc_copyWeak(&v20, &location);
  [*(*v2 + 1) setDeviceChangedHandler:v19];
  [*(*v2 + 1) activate];
  v8 = *(*v2 + 2);
  v24 = @"bjtID";
  v25[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v10 = *v2;
  v11 = *(*v2 + 6);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __26__HDSBonjourTest_activate__block_invoke_4;
  v18[3] = &unk_2797145F0;
  v18[4] = v10;
  [v11 sendRequestID:@"_bjtS" options:0 request:v9 responseHandler:v18];
  if (*(*v2 + 10) > 0.0)
  {
    v12 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(*v2 + 7));
    v13 = *(*v2 + 4);
    *(*v2 + 4) = v12;

    v14 = *v2;
    v15 = *(*v2 + 4);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __26__HDSBonjourTest_activate__block_invoke_5;
    handler[3] = &unk_279713FF0;
    handler[4] = v14;
    dispatch_source_set_event_handler(v15, handler);
    HDSDispatchTimerSet(*(*v2 + 4), *(*v2 + 10), -1.0, 1.0);
    dispatch_resume(*(*v2 + 4));
  }

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
  v16 = *MEMORY[0x277D85DE8];
}

void __26__HDSBonjourTest_activate__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleFoundDevice:v3];
}

void __26__HDSBonjourTest_activate__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleFoundDevice:v3];
}

void __26__HDSBonjourTest_activate__block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if ((*(*(a1 + 32) + 40) & 1) == 0 && gLogCategory_HDSBonjourTest <= 30 && (gLogCategory_HDSBonjourTest != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__HDSBonjourTest_invalidate__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __28__HDSBonjourTest_invalidate__block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSBonjourTest <= 30 && (gLogCategory_HDSBonjourTest != -1 || _LogCategory_Initialize()))
  {
    __28__HDSBonjourTest_invalidate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 40) = 1;
  [*(*(a1 + 32) + 8) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;
}

- (void)_handleFoundDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 txtDictionary];
  v6 = [v5 objectForKeyedSubscript:@"rpBA"];

  if ([v6 isEqualToString:self->_testID])
  {
    if (gLogCategory_HDSBonjourTest <= 30 && (gLogCategory_HDSBonjourTest != -1 || _LogCategory_Initialize()))
    {
      [HDSBonjourTest _handleFoundDevice:];
    }

    self->_bonjourTestState = 4;
    timer = self->_timer;
    if (timer)
    {
      v8 = timer;
      dispatch_source_cancel(v8);
      v9 = self->_timer;
      self->_timer = 0;
    }

    [(CUBonjourBrowser *)self->_browser invalidate];
    browser = self->_browser;
    self->_browser = 0;

    sfSession = self->_sfSession;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __37__HDSBonjourTest__handleFoundDevice___block_invoke;
    v12[3] = &unk_2797145F0;
    v12[4] = self;
    [(SFSession *)sfSession sendRequestID:@"_bjtD" options:0 request:MEMORY[0x277CBEC10] responseHandler:v12];
  }

  else if (gLogCategory_HDSBonjourTest <= 30 && (gLogCategory_HDSBonjourTest != -1 || _LogCategory_Initialize()))
  {
    [HDSBonjourTest _handleFoundDevice:];
  }
}

void __37__HDSBonjourTest__handleFoundDevice___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v13 = a2;
  v6 = a4;
  if ((*(*(a1 + 32) + 40) & 1) == 0)
  {
    mach_absolute_time();
    v7 = *(*(a1 + 32) + 24);
    UpTicksToSecondsF();
    *(*(a1 + 32) + 72) = v8;
    if (gLogCategory_HDSBonjourTest <= 30 && (gLogCategory_HDSBonjourTest != -1 || _LogCategory_Initialize()))
    {
      v10 = *(*(a1 + 32) + 72);
      LogPrintF();
      [*(a1 + 32) _complete];
    }

    else
    {
      [*(a1 + 32) _complete];
    }
  }
}

- (void)_handleTimeout
{
  if (self->_invalidateCalled)
  {
    return;
  }

  mach_absolute_time();
  startTicks = self->_startTicks;
  UpTicksToSecondsF();
  self->_metricTotalSeconds = v5;
  if (gLogCategory_HDSBonjourTest <= 90)
  {
    if (gLogCategory_HDSBonjourTest == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      metricTotalSeconds = self->_metricTotalSeconds;
    }

    LogPrintF();
  }

LABEL_6:
  self->_bonjourTestState = 3;

  [(HDSBonjourTest *)self _complete];
}

- (void)_complete
{
  if (!self->_invalidateCalled)
  {
    mach_absolute_time();
    startTicks = self->_startTicks;
    UpTicksToSecondsF();
    self->_metricTotalSeconds = v4;
    completionHandler = self->_completionHandler;
    if (completionHandler)
    {
      completionHandler[2]();
      v6 = self->_completionHandler;
      self->_completionHandler = 0;
    }
  }
}

@end