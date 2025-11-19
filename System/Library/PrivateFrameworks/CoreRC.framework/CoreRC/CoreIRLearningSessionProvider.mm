@interface CoreIRLearningSessionProvider
- (BOOL)_addMapping:(id)a3;
- (BOOL)startLearningCommand:(unint64_t)a3;
- (int)initTimers;
- (uint64_t)processCapturedPattern;
- (unint64_t)_findDuplicateIRCommand:(id)a3 forCommand:(unint64_t)a4 device:(id *)a5;
- (void)_removeMappingForCommand:(unint64_t)a3;
- (void)captureIRCommand:(id)a3;
- (void)dealloc;
- (void)disableAllTimers;
- (void)endLearning;
- (void)enumerateMappingUsingBlock:(id)a3;
- (void)handleDone;
- (void)handleIdle;
- (void)handleNoSignal;
- (void)initTimer:(id *)a3 withTimeout:(unint64_t)a4 handler:(id)a5;
- (void)processCapturedPattern;
- (void)processIRCommand:(id)a3;
- (void)setCaptureState:(int)a3;
- (void)updateProgress;
- (void)waitForIdle;
@end

@implementation CoreIRLearningSessionProvider

- (void)disableAllTimers
{
  captureNoSignalTimer = self->_captureNoSignalTimer;
  if (captureNoSignalTimer)
  {
    dispatch_source_cancel(self->_captureNoSignalTimer);
    dispatch_release(captureNoSignalTimer);
    self->_captureNoSignalTimer = 0;
  }

  captureIdleTimer = self->_captureIdleTimer;
  if (captureIdleTimer)
  {
    dispatch_source_cancel(self->_captureIdleTimer);
    dispatch_release(captureIdleTimer);
    self->_captureIdleTimer = 0;
  }

  captureDoneTimer = self->_captureDoneTimer;
  if (captureDoneTimer)
  {
    dispatch_source_cancel(self->_captureDoneTimer);
    dispatch_release(captureDoneTimer);
    self->_captureDoneTimer = 0;
  }
}

- (void)dealloc
{
  [(CoreIRLearningSessionProvider *)self cleanup];

  v3.receiver = self;
  v3.super_class = CoreIRLearningSessionProvider;
  [(CoreIRLearningSessionProvider *)&v3 dealloc];
}

- (void)setCaptureState:(int)a3
{
  if (gLogCategory_CoreIRLearningSession <= 10 && (gLogCategory_CoreIRLearningSession != -1 || _LogCategory_Initialize()))
  {
    [CoreIRLearningSessionProvider setCaptureState:?];
  }

  self->_captureState = a3;
}

- (void)enumerateMappingUsingBlock:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(CoreIRLearningSessionProvider *)self mappings];
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v13 + 1) + 8 * v8);
      v10 = [v9 objectForKey:@"CoreIRLearningSessionCommand"];
      v12 = 0;
      (*(a3 + 2))(a3, [v10 unsignedIntegerValue], objc_msgSend(v9, "objectForKey:", @"CoreIRLearningSessionInfraredCommand"), objc_msgSend(v9, "objectForKey:", @"CoreIRLearningSessionInfraredRepeat"), &v12);
      if (v12)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)endLearning
{
  [(CoreIRLearningSessionProvider *)self setCaptureState:0];
  [(CoreIRLearningSessionProvider *)self cleanup];
  v3.receiver = self;
  v3.super_class = CoreIRLearningSessionProvider;
  [(CoreIRLearningSession *)&v3 endLearning];
}

- (void)processIRCommand:(id)a3
{
  if (gLogCategory_CoreIRLearningSession <= 10 && (gLogCategory_CoreIRLearningSession != -1 || _LogCategory_Initialize()))
  {
    [CoreIRLearningSessionProvider processIRCommand:?];
  }

  captureState = self->_captureState;
  if (captureState == 3)
  {

    [(CoreIRLearningSessionProvider *)self waitForIdle];
  }

  else
  {
    if (captureState != 2)
    {
      if (captureState != 1)
      {
        if (gLogCategory_CoreIRLearningSession > 90)
        {
          return;
        }

        if (gLogCategory_CoreIRLearningSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return;
          }

          v6 = self->_captureState;
        }

        LogPrintF();
        return;
      }

      if ([(CoreIRLearningSessionProvider *)self initTimers])
      {
        if (gLogCategory_CoreIRLearningSession <= 60 && (gLogCategory_CoreIRLearningSession != -1 || _LogCategory_Initialize()))
        {
          [CoreIRLearningSessionProvider processIRCommand:];
        }

        return;
      }

      [(CoreIRLearningSessionProvider *)self setCaptureState:2];
    }

    [(CoreIRLearningSessionProvider *)self captureIRCommand:a3];
  }
}

- (void)updateProgress
{
  v3 = mach_absolute_time();
  captureDoneTicks = self->_captureDoneTicks;
  v5 = 1.0;
  if (v3 < captureDoneTicks)
  {
    v5 = (v3 - self->_captureStartTicks) / (captureDoneTicks - self->_captureStartTicks);
  }

  if (gLogCategory_CoreIRLearningSession <= 10 && (gLogCategory_CoreIRLearningSession != -1 || _LogCategory_Initialize()))
  {
    [CoreIRLearningSessionProvider updateProgress];
  }

  v6 = [(CoreIRLearningSession *)self bridgeDelegate];
  v7 = [(CoreIRLearningSession *)self owningDevice];
  *&v8 = v5;
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];

  [(CoreIRLearningSessionBridgeDelegate *)v6 learningSessionForDevice:v7 commandProgress:v9];
}

- (void)captureIRCommand:(id)a3
{
  captureIdleTimer = self->_captureIdleTimer;
  v6 = dispatch_time(0, 400000000);
  dispatch_source_set_timer(captureIdleTimer, v6, 0x17D78400uLL, 0xF4240uLL);
  capturedCount = self->_capturedCount;
  if (!capturedCount)
  {
    self->_capturedProtocolID = [objc_msgSend(a3 "protocol")];
    self->_capturedProtocolOptions = [objc_msgSend(a3 "protocol")];
    capturedCount = self->_capturedCount;
  }

  if (capturedCount > 0x7F)
  {
    if (gLogCategory_CoreIRLearningSession <= 10 && (gLogCategory_CoreIRLearningSession != -1 || _LogCategory_Initialize()))
    {
      [CoreIRLearningSessionProvider captureIRCommand:];
    }
  }

  else
  {
    v8 = [a3 payload];
    v9 = self->_capturedCount;
    self->_capturedCommands[v9] = v8;
    self->_capturedCount = v9 + 1;
    if (gLogCategory_CoreIRLearningSession > 10)
    {
      goto LABEL_12;
    }

    if (gLogCategory_CoreIRLearningSession != -1)
    {
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v10 = self->_capturedCount;
LABEL_6:
      LogPrintF();
    }
  }

LABEL_12:

  [(CoreIRLearningSessionProvider *)self updateProgress];
}

- (void)waitForIdle
{
  if (gLogCategory_CoreIRLearningSession <= 10 && (gLogCategory_CoreIRLearningSession != -1 || _LogCategory_Initialize()))
  {
    [CoreIRLearningSessionProvider waitForIdle];
  }

  captureIdleTimer = self->_captureIdleTimer;
  v4 = dispatch_time(0, 400000000);

  dispatch_source_set_timer(captureIdleTimer, v4, 0x17D78400uLL, 0xF4240uLL);
}

- (void)processCapturedPattern
{
  capturedCount = self->_capturedCount;
  if (capturedCount <= 4)
  {
    v16 = 3758096385;
    if (gLogCategory_CoreIRLearningSession <= 50)
    {
      if (gLogCategory_CoreIRLearningSession != -1)
      {
LABEL_78:
        LogPrintF();
        goto LABEL_79;
      }

      if (_LogCategory_Initialize())
      {
        v26 = self->_capturedCount;
        goto LABEL_78;
      }
    }

LABEL_79:
    [(CoreIRLearningSessionProvider *)self processCapturedPattern];
    v21 = 0;
    goto LABEL_73;
  }

  v4 = 0;
  v5 = 0;
  capturedCommands = self->_capturedCommands;
  v7 = 6;
  if (capturedCount < 6)
  {
    v7 = self->_capturedCount;
  }

  v8 = self->_capturedCommands;
  while (1)
  {
    v9 = capturedCount - v5;
    if (capturedCount - v5 >= 2)
    {
      break;
    }

LABEL_21:
    ++v5;
    ++v8;
    v4 -= 2;
    if (v5 == v7)
    {
      if (gLogCategory_CoreIRLearningSession <= 50 && (gLogCategory_CoreIRLearningSession != -1 || _LogCategory_Initialize()))
      {
        [CoreIRLearningSessionProvider processCapturedPattern];
      }

      v16 = 3758096386;
      goto LABEL_79;
    }
  }

  v10 = 1;
  while (v9 <= v10)
  {
LABEL_20:
    if (++v10 > v9 >> 1)
    {
      goto LABEL_21;
    }
  }

  v11 = -2 * v10;
  v12 = v10;
  v13 = &capturedCommands[v10];
  while (capturedCommands[v5] != v8[v12])
  {
    ++v12;
    v11 -= 2;
    ++v13;
    if (v12 >= v9)
    {
      goto LABEL_20;
    }
  }

  if (v12 - v4 > capturedCount || v5 - v11 > capturedCount)
  {
LABEL_19:
    v10 = v12;
    goto LABEL_20;
  }

  if (v5 + v12)
  {
    v14 = 0;
    do
    {
      v15 = *v13++;
      if (v8[v14] != v15)
      {
        goto LABEL_19;
      }
    }

    while (v5 + v12 != ++v14);
  }

  if (v5)
  {
    v17 = v5;
  }

  else
  {
    v17 = v12;
  }

  if (gLogCategory_CoreIRLearningSession <= 40 && (gLogCategory_CoreIRLearningSession != -1 || _LogCategory_Initialize()))
  {
    [CoreIRLearningSessionProvider processCapturedPattern];
  }

  v31 = v17;
  if (v17)
  {
    v18 = self->_capturedCommands;
    do
    {
      if (gLogCategory_CoreIRLearningSession <= 40 && (gLogCategory_CoreIRLearningSession != -1 || _LogCategory_Initialize()))
      {
        v27 = *v18;
        LogPrintF();
      }

      ++v18;
      --v17;
    }

    while (v17);
  }

  if (gLogCategory_CoreIRLearningSession < 41)
  {
    if (gLogCategory_CoreIRLearningSession != -1 || _LogCategory_Initialize())
    {
      [CoreIRLearningSessionProvider processCapturedPattern];
    }

    if (gLogCategory_CoreIRLearningSession <= 40 && (gLogCategory_CoreIRLearningSession != -1 || _LogCategory_Initialize()))
    {
      v29 = v12;
      LogPrintF();
    }
  }

  if (v12)
  {
    v19 = v12;
    do
    {
      if (gLogCategory_CoreIRLearningSession <= 40 && (gLogCategory_CoreIRLearningSession != -1 || _LogCategory_Initialize()))
      {
        v28 = *v8;
        LogPrintF();
      }

      ++v8;
      --v19;
    }

    while (v19);
  }

  if (gLogCategory_CoreIRLearningSession < 41 && (gLogCategory_CoreIRLearningSession != -1 || _LogCategory_Initialize()))
  {
    [CoreIRLearningSessionProvider processCapturedPattern];
  }

  v20 = [(CoreIRLearningSessionProvider *)self _newMappingWithProtocolID:self->_capturedProtocolID options:self->_capturedProtocolOptions commandToMap:self->_currentCommand commands:capturedCommands commandCount:v31 repeats:&capturedCommands[v5] repeatCount:v12, v29];
  if (!v20)
  {
    v16 = 3758096388;
    goto LABEL_79;
  }

  v21 = v20;
  if (-[CoreIRLearningSession reason](self, "reason") != 1 || (v32 = 0, (v22 = -[CoreIRLearningSessionProvider _findDuplicateIRCommand:forCommand:device:](self, "_findDuplicateIRCommand:forCommand:device:", [v21 objectForKey:@"CoreIRLearningSessionInfraredCommand"], self->_currentCommand, &v32)) == 0))
  {
LABEL_72:
    [(CoreIRLearningSessionProvider *)self _addMapping:v21];
    [(CoreIRLearningSessionBridgeDelegate *)[(CoreIRLearningSession *)self bridgeDelegate] learningSessionForDevice:[(CoreIRLearningSession *)self owningDevice] status:0];
    goto LABEL_73;
  }

  v23 = v22;
  if (v22 == 47)
  {
    if (self->_currentCommand != 67)
    {
      goto LABEL_63;
    }

    goto LABEL_68;
  }

  if (v22 == 67 && self->_currentCommand == 47)
  {
LABEL_68:
    if (gLogCategory_CoreIRLearningSession <= 40 && (gLogCategory_CoreIRLearningSession != -1 || _LogCategory_Initialize()))
    {
      [CoreIRLearningSessionProvider processCapturedPattern];
    }

    [v21 setObject:&unk_28593C390 forKeyedSubscript:@"CoreIRLearningSessionCommand"];
    goto LABEL_72;
  }

LABEL_63:
  if (gLogCategory_CoreIRLearningSession <= 90 && (gLogCategory_CoreIRLearningSession != -1 || _LogCategory_Initialize()))
  {
    [CoreIRLearningSessionProvider processCapturedPattern];
  }

  v24 = [(CoreIRLearningSession *)self bridgeDelegate];
  v25 = [(CoreIRLearningSession *)self owningDevice];
  [(CoreIRLearningSessionBridgeDelegate *)v24 learningSessionForDevice:v25 duplicateCommand:v23 target:v32];
LABEL_73:
}

- (unint64_t)_findDuplicateIRCommand:(id)a3 forCommand:(unint64_t)a4 device:(id *)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  mappings = self->_mappings;
  v8 = [(NSMutableArray *)mappings countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(mappings);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [objc_msgSend(v12 objectForKeyedSubscript:{@"CoreIRLearningSessionCommand", "unsignedIntegerValue"}];
        v14 = [v12 objectForKeyedSubscript:@"CoreIRLearningSessionInfraredCommand"];
        if (v13 != a4 && ([a3 isEqual:v14] & 1) != 0)
        {
          *a5 = 0;
          goto LABEL_12;
        }
      }

      v9 = [(NSMutableArray *)mappings countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = [(CoreIRDevice *)[(CoreIRLearningSession *)self owningDevice] findDuplicateIRCommand:a3 forCommand:a4 device:a5];
LABEL_12:
  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)handleNoSignal
{
  if (gLogCategory_CoreIRLearningSession <= 10 && (gLogCategory_CoreIRLearningSession != -1 || _LogCategory_Initialize()))
  {
    [CoreIRLearningSessionProvider handleNoSignal];
  }

  if (self->_captureState == 1)
  {
    if (gLogCategory_CoreIRLearningSession <= 90 && (gLogCategory_CoreIRLearningSession != -1 || _LogCategory_Initialize()))
    {
      [CoreIRLearningSessionProvider handleNoSignal];
    }

    captureNoSignalTimer = self->_captureNoSignalTimer;
    if (captureNoSignalTimer)
    {
      dispatch_source_cancel(self->_captureNoSignalTimer);
      dispatch_release(captureNoSignalTimer);
      self->_captureNoSignalTimer = 0;
    }

    v4 = [(CoreIRLearningSession *)self bridgeDelegate];
    v5 = [(CoreIRLearningSession *)self owningDevice];

    [(CoreIRLearningSessionBridgeDelegate *)v4 learningSessionForDevice:v5 status:3758096387];
  }

  else if (gLogCategory_CoreIRLearningSession <= 10 && (gLogCategory_CoreIRLearningSession != -1 || _LogCategory_Initialize()))
  {
    [CoreIRLearningSessionProvider handleNoSignal];
  }
}

- (void)handleIdle
{
  captureState = self->_captureState;
  if (captureState == 3)
  {
    if (gLogCategory_CoreIRLearningSession <= 10 && (gLogCategory_CoreIRLearningSession != -1 || _LogCategory_Initialize()))
    {
      [CoreIRLearningSessionProvider handleIdle];
    }

    captureIdleTimer = self->_captureIdleTimer;
    if (captureIdleTimer)
    {
      dispatch_source_cancel(self->_captureIdleTimer);
      dispatch_release(captureIdleTimer);
      self->_captureIdleTimer = 0;
    }

    [(CoreIRLearningSessionBridgeDelegate *)[(CoreIRLearningSession *)self bridgeDelegate] learningSessionForDeviceCommandDone:[(CoreIRLearningSession *)self owningDevice]];

    [(CoreIRLearningSessionProvider *)self setCaptureState:0];
  }

  else
  {
    if (captureState != 2)
    {
      if (gLogCategory_CoreIRLearningSession > 90)
      {
        return;
      }

      if (gLogCategory_CoreIRLearningSession == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return;
        }

        v9 = self->_captureState;
      }

      LogPrintF();
      return;
    }

    if (gLogCategory_CoreIRLearningSession <= 40 && (gLogCategory_CoreIRLearningSession != -1 || _LogCategory_Initialize()))
    {
      [CoreIRLearningSessionProvider handleIdle];
    }

    v4 = self->_captureIdleTimer;
    if (v4)
    {
      dispatch_source_cancel(self->_captureIdleTimer);
      dispatch_release(v4);
      self->_captureIdleTimer = 0;
    }

    captureDoneTimer = self->_captureDoneTimer;
    if (captureDoneTimer)
    {
      dispatch_source_cancel(self->_captureDoneTimer);
      dispatch_release(captureDoneTimer);
      self->_captureDoneTimer = 0;
    }

    self->_capturedCount = 0;
    [(CoreIRLearningSessionProvider *)self setCaptureState:1];
    v6 = [(CoreIRLearningSession *)self bridgeDelegate];
    v7 = [(CoreIRLearningSession *)self owningDevice];

    [(CoreIRLearningSessionBridgeDelegate *)v6 learningSessionForDevice:v7 commandProgress:&unk_28593C3A8];
  }
}

- (void)handleDone
{
  if (self->_captureState != 2)
  {
    if (gLogCategory_CoreIRLearningSession > 90)
    {
      return;
    }

    if (gLogCategory_CoreIRLearningSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      captureState = self->_captureState;
    }

    LogPrintF();
    return;
  }

  if (gLogCategory_CoreIRLearningSession <= 10 && (gLogCategory_CoreIRLearningSession != -1 || _LogCategory_Initialize()))
  {
    [CoreIRLearningSessionProvider handleDone];
  }

  captureDoneTimer = self->_captureDoneTimer;
  if (captureDoneTimer)
  {
    dispatch_source_cancel(self->_captureDoneTimer);
    dispatch_release(captureDoneTimer);
    self->_captureDoneTimer = 0;
  }

  [(CoreIRLearningSessionBridgeDelegate *)[(CoreIRLearningSession *)self bridgeDelegate] learningSessionForDevice:[(CoreIRLearningSession *)self owningDevice] commandProgress:&unk_28593C3B8];
  [(CoreIRLearningSessionProvider *)self processCapturedPattern];

  [(CoreIRLearningSessionProvider *)self setCaptureState:3];
}

- (BOOL)startLearningCommand:(unint64_t)a3
{
  if (gLogCategory_CoreIRLearningSession <= 10 && (gLogCategory_CoreIRLearningSession != -1 || _LogCategory_Initialize()))
  {
    captureState = self->_captureState;
    v10 = a3;
    v7 = "[CoreIRLearningSessionProvider startLearningCommand:]";
    LogPrintF();
  }

  [(CoreIRLearningSessionProvider *)self disableAllTimers:v7];
  self->_currentCommand = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__CoreIRLearningSessionProvider_startLearningCommand___block_invoke;
  v11[3] = &unk_278EA3400;
  v11[4] = self;
  [(CoreIRLearningSessionProvider *)self initTimer:&self->_captureNoSignalTimer withTimeout:20000000000 handler:v11];
  captureNoSignalTimer = self->_captureNoSignalTimer;
  if (captureNoSignalTimer)
  {
    [(CoreIRLearningSessionProvider *)self setCaptureState:1];
    if (!self->_mappings)
    {
      self->_mappings = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    if (gLogCategory_CoreIRLearningSession <= 10 && (gLogCategory_CoreIRLearningSession != -1 || _LogCategory_Initialize()))
    {
      v8 = self->_captureState;
      LogPrintF();
    }
  }

  return captureNoSignalTimer != 0;
}

- (void)initTimer:(id *)a3 withTimeout:(unint64_t)a4 handler:(id)a5
{
  if (a4 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  }

  v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
  *a3 = v9;
  if (v9)
  {
    dispatch_set_context(v9, self);
    dispatch_source_set_event_handler(*a3, a5);
    v10 = *a3;
    v11 = dispatch_time(0, a4);
    dispatch_source_set_timer(v10, v11, a4, 0xF4240uLL);
    v12 = *a3;

    dispatch_resume(v12);
  }
}

- (int)initTimers
{
  captureNoSignalTimer = self->_captureNoSignalTimer;
  if (captureNoSignalTimer)
  {
    dispatch_source_cancel(self->_captureNoSignalTimer);
    dispatch_release(captureNoSignalTimer);
    self->_captureNoSignalTimer = 0;
  }

  self->_capturedCount = 0;
  v4 = mach_absolute_time();
  self->_captureStartTicks = v4;
  self->_captureDoneTicks = NanosecondsToUpTicks() + v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__CoreIRLearningSessionProvider_initTimers__block_invoke;
  v7[3] = &unk_278EA3400;
  v7[4] = self;
  [(CoreIRLearningSessionProvider *)self initTimer:&self->_captureIdleTimer withTimeout:400000000 handler:v7];
  if (!self->_captureIdleTimer)
  {
    return -6700;
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__CoreIRLearningSessionProvider_initTimers__block_invoke_2;
  v6[3] = &unk_278EA3400;
  v6[4] = self;
  [(CoreIRLearningSessionProvider *)self initTimer:&self->_captureDoneTimer withTimeout:1200000000 handler:v6];
  if (!self->_captureDoneTimer)
  {
    return -6700;
  }

  [(CoreIRLearningSessionBridgeDelegate *)[(CoreIRLearningSession *)self bridgeDelegate] learningSessionForDevice:[(CoreIRLearningSession *)self owningDevice] commandProgress:&unk_28593C3A8];
  return 0;
}

- (BOOL)_addMapping:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:?];
    if (v4)
    {
      v5 = v4;
      if (self->_mappings || (v4 = objc_alloc_init(MEMORY[0x277CBEB18]), (self->_mappings = v4) != 0))
      {
        -[CoreIRLearningSessionProvider _removeMappingForCommand:](self, "_removeMappingForCommand:", [-[NSMutableArray objectForKeyedSubscript:](v5 objectForKeyedSubscript:{@"CoreIRLearningSessionCommand", "unsignedIntegerValue"}]);
        [(NSMutableArray *)self->_mappings addObject:v5];
        if (gLogCategory_CoreIRLearningSession <= 10 && (gLogCategory_CoreIRLearningSession != -1 || _LogCategory_Initialize()))
        {
          mappings = self->_mappings;
          LogPrintF();
        }

        LOBYTE(v4) = 1;
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_removeMappingForCommand:(unint64_t)a3
{
  v37 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    mappings = self->_mappings;
    v11 = OUTLINED_FUNCTION_2_7(self, a2, a3, v3, v4, v5, v6, v7, 0, 0, 0, 0, 0, 0, 0, 0, v33, v35);
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(mappings);
          }

          v15 = *(v26 + 8 * i);
          v16 = [objc_msgSend(v15 objectForKeyedSubscript:{@"CoreIRLearningSessionCommand", "unsignedIntegerValue"}];
          if (v16 == a3)
          {
            [(NSMutableArray *)self->_mappings removeObject:v15];
            goto LABEL_12;
          }
        }

        v12 = OUTLINED_FUNCTION_2_7(v16, v17, v18, v19, v20, v21, v22, v23, v25, v26, v27, v28, v29, v30, v31, v32, v34, v36);
        if (v12)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_12:
  v24 = *MEMORY[0x277D85DE8];
}

- (uint64_t)processIRCommand:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = *(a1 + 1128);
  v3 = *(a1 + 1136);
  return LogPrintF();
}

- (uint64_t)processCapturedPattern
{
  v4 = [a1 bridgeDelegate];
  v5 = [a1 owningDevice];

  return [v4 learningSessionForDevice:v5 status:a2];
}

@end