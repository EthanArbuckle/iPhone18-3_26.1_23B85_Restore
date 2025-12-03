@interface EasyConfigDevice
+ (BOOL)supportedScanRecord:(id)record;
+ (id)deviceWithInfo:(id)info;
+ (id)deviceWithScanRecord:(id)record;
- (BOOL)removed:(id)removed;
- (BOOL)updated:(id)updated;
- (EasyConfigDevice)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)_applyConfigStart;
- (int)_configureStart:(id)start;
- (int)_findDevicePostConfigStart;
- (int)_findDevicePreConfigStart;
- (int)_mfiSAPNext:(HTTPMessagePrivate *)next;
- (int)_mfiSAPStart;
- (int)_pairSetupNext:(HTTPMessagePrivate *)next;
- (int)_pairSetupStart;
- (int)_pairVerifyNext:(HTTPMessagePrivate *)next;
- (int)_pairVerifyStart;
- (int)_setupClient:(id)client;
- (int)_timeoutTimerStart:(int)start block:(id)block;
- (void)_applyConfigCompletion:(HTTPMessagePrivate *)completion;
- (void)_findDevicePostConfigEvent:(unsigned int)event info:(id)info;
- (void)_findDevicePreConfigEvent:(unsigned int)event info:(id)info;
- (void)_logEnded;
- (void)_postConfigCheckCompletion:(HTTPMessagePrivate *)completion;
- (void)_postConfigCheckStart:(id)start;
- (void)_postNote:(id)note info:(id)info;
- (void)_postProgress:(int)progress info:(id)info;
- (void)_postProgress:(int)progress withResponse:(id)response;
- (void)_start;
- (void)_trySetupCode:(id)code;
- (void)dealloc;
- (void)resumePostConfig;
- (void)setPairingDelegate:(const void *)delegate;
- (void)setPostConfigMetrics:(id *)metrics;
- (void)setPreConfigMetrics:(id *)metrics;
- (void)setPromptForSetupCodeHandler:(id)handler;
- (void)start;
- (void)stop;
- (void)trySetupCode:(id)code;
@end

@implementation EasyConfigDevice

- (int)_timeoutTimerStart:(int)start block:(id)block
{
  blockCopy = block;
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v8 = timeoutTimer;
    dispatch_source_cancel(v8);
    v9 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  v10 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_internalQueue);
  v11 = self->_timeoutTimer;
  self->_timeoutTimer = v10;

  if (v10)
  {
    dispatch_source_set_event_handler(v10, blockCopy);
    v12 = dispatch_time(0, 1000000000 * start);
    dispatch_source_set_timer(v10, v12, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    dispatch_resume(v10);
    v13 = 0;
  }

  else
  {
    v13 = -6700;
  }

  return v13;
}

- (int)_setupClient:(id)client
{
  v15 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  p_httpClient = &self->_httpClient;
  if (self->_httpClient)
  {
    HTTPClientInvalidate();
    CFRelease(*p_httpClient);
    *p_httpClient = 0;
  }

  DNSName = HTTPClientCreate();
  if (DNSName)
  {
    goto LABEL_5;
  }

  httpClient = self->_httpClient;
  internalQueue = self->_internalQueue;
  HTTPClientSetDispatchQueue();
  v9 = self->_httpClient;
  HTTPClientSetFlags();
  v10 = self->_httpClient;
  HTTPClientSetLogging();
  DNSName = BonjourDevice_GetDNSName();
  if (DNSName)
  {
LABEL_5:
    v11 = DNSName;
  }

  else
  {
    v14 = *p_httpClient;
    v11 = HTTPClientSetDestination();
    if (!v11)
    {
      goto LABEL_8;
    }
  }

  if (*p_httpClient)
  {
    HTTPClientInvalidate();
    CFRelease(*p_httpClient);
    *p_httpClient = 0;
  }

LABEL_8:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)_postProgress:(int)progress withResponse:(id)response
{
  responseCopy = response;
  userQueue = self->_userQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__EasyConfigDevice__postProgress_withResponse___block_invoke;
  block[3] = &unk_278FBEC80;
  progressCopy = progress;
  block[4] = self;
  v10 = responseCopy;
  v8 = responseCopy;
  dispatch_async(userQueue, block);
}

void __47__EasyConfigDevice__postProgress_withResponse___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 496);
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    v15 = @"EasyConfigKey_Response";
    v16[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    (*(v2 + 16))(v2, v3, v5);
  }

  if (*(a1 + 48) == 2)
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 496);
    *(v6 + 496) = 0;
  }

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = *(a1 + 32);
  v13[0] = @"EasyConfigKey_Progress";
  v10 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v13[1] = @"EasyConfigKey_Response";
  v14[0] = v10;
  v14[1] = *(a1 + 40);
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [v8 postNotificationName:@"EasyConfigDeviceProgressNotification" object:v9 userInfo:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_postProgress:(int)progress info:(id)info
{
  infoCopy = info;
  userQueue = self->_userQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__EasyConfigDevice__postProgress_info___block_invoke;
  block[3] = &unk_278FBEC80;
  progressCopy = progress;
  block[4] = self;
  v10 = infoCopy;
  v8 = infoCopy;
  dispatch_async(userQueue, block);
}

void __39__EasyConfigDevice__postProgress_info___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 496);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 48), *(a1 + 40));
  }

  if (*(a1 + 48) == 2)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 496);
    *(v3 + 496) = 0;
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = *(a1 + 32);
  v10 = @"EasyConfigKey_Progress";
  v7 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v11[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v5 postNotificationName:@"EasyConfigDeviceProgressNotification" object:v6 userInfo:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_postNote:(id)note info:(id)info
{
  noteCopy = note;
  infoCopy = info;
  userQueue = self->_userQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__EasyConfigDevice__postNote_info___block_invoke;
  block[3] = &unk_278FBEC58;
  v12 = noteCopy;
  selfCopy = self;
  v14 = infoCopy;
  v9 = infoCopy;
  v10 = noteCopy;
  dispatch_async(userQueue, block);
}

void __35__EasyConfigDevice__postNote_info___block_invoke(void *a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:a1[4] object:a1[5] userInfo:a1[6]];
}

- (void)_logEnded
{
  v3 = 328;
  if (self->_preConfigMetricsSet)
  {
    v3 = 240;
  }

  findPreConfigFoundTime = self->_findPreConfigFoundTime;
  v16 = *(&self->super.isa + v3);
  securityStartTime = self->_securityStartTime;
  securityFinishTime = self->_securityFinishTime;
  findPreConfigStartTime = self->_findPreConfigStartTime;
  applyConfigStartTime = self->_applyConfigStartTime;
  applyConfigFinishTime = self->_applyConfigFinishTime;
  findPostConfigStartTime = self->_findPostConfigStartTime;
  findPostConfigFoundTime = self->_findPostConfigFoundTime;
  postConfigCheckStartTime = self->_postConfigCheckStartTime;
  postConfigCheckFinishTime = self->_postConfigCheckFinishTime;
  CFAbsoluteTimeGetCurrent();
  if (gLogCategory_EasyConfigDevice <= 50 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
  {
    firstErr = self->_firstErr;
    deviceIdentifier = self->_deviceIdentifier;
    LogPrintF();
  }
}

- (void)_postConfigCheckCompletion:(HTTPMessagePrivate *)completion
{
  self->_postConfigCheckFinishTime = CFAbsoluteTimeGetCurrent();
  var21 = completion->var21;
  if (!var21)
  {
    var12 = completion->var2.var12;
    if ((var12 - 300) >= 0xFFFFFF9C)
    {
      if (gLogCategory_EasyConfigDevice <= 30 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
      {
        deviceIdentifier = self->_deviceIdentifier;
        LogPrintF();
      }

      [(EasyConfigDevice *)self _postProgress:70 info:0, deviceIdentifier];
      [(EasyConfigDevice *)self _postProgress:100 info:0];

      [(EasyConfigDevice *)self _stop:0];
      return;
    }

    var21 = (var12 + 200000);
    if (var12 == -200000)
    {
      return;
    }
  }

  if (gLogCategory_EasyConfigDevice <= 60 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
  {
    v8 = self->_deviceIdentifier;
    LogPrintF();
  }

  [(EasyConfigDevice *)self _handleError:var21];
}

- (void)_postConfigCheckStart:(id)start
{
  v14 = 0;
  startCopy = start;
  Current = CFAbsoluteTimeGetCurrent();
  self->_postConfigCheckStartTime = Current;
  self->_postConfigCheckFinishTime = Current;
  if (gLogCategory_EasyConfigDevice <= 30 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
  {
    deviceIdentifier = self->_deviceIdentifier;
    LogPrintF();
  }

  [(EasyConfigDevice *)self _postProgress:60 info:0, deviceIdentifier];
  v6 = [(EasyConfigDevice *)self _setupClient:startCopy];

  if (!v6)
  {
    v7 = HTTPMessageCreate();
    if (!v7)
    {
      HTTPHeader_InitRequest();
      HTTPHeader_SetField();
      v13[5] = MEMORY[0x277D85DD0];
      v13[6] = 3221225472;
      v13[7] = __42__EasyConfigDevice__postConfigCheckStart___block_invoke;
      v13[8] = &unk_278FBEC30;
      v13[9] = self;
      HTTPMessageSetCompletionBlock();
      v14[8512] = 1;
      httpClient = self->_httpClient;
      v7 = HTTPClientSendMessage();
      if (!v7)
      {
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __42__EasyConfigDevice__postConfigCheckStart___block_invoke_2;
        v13[3] = &unk_278FBEBB8;
        v13[4] = self;
        v7 = [(EasyConfigDevice *)self _timeoutTimerStart:20 block:v13];
      }
    }

    v6 = v7;
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v6)
  {
    if (gLogCategory_EasyConfigDevice <= 60 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
    {
      v11 = self->_deviceIdentifier;
      LogPrintF();
      [(EasyConfigDevice *)self _handleError:v6, v11, v6];
    }

    else
    {
      [(EasyConfigDevice *)self _handleError:v6, v10, v12];
    }
  }
}

- (void)_findDevicePostConfigEvent:(unsigned int)event info:(id)info
{
  infoCopy = info;
  if (event != 1 || !self->_started || !self->_airplayBrowser && !self->_raopBrowser && !self->_mfiConfigBrowser && !self->_hapBrowser || BonjourDevice_GetDeviceID() != self->_deviceIdentifier)
  {
    goto LABEL_34;
  }

  Int64 = BonjourDevice_GetInt64();
  if (self->_configSeed != Int64)
  {
    goto LABEL_21;
  }

  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  if (![v8 caseInsensitiveCompare:@"_hap._tcp."])
  {
    v9 = BonjourDevice_GetInt64();
    if ((v9 & 2) == 0)
    {
      if (gLogCategory_EasyConfigDevice <= 40 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
      {
        v13 = Int64;
        v15 = v9;
        deviceIdentifier = self->_deviceIdentifier;
        LogPrintF();
      }

LABEL_21:
      self->_findPostConfigFoundTime = CFAbsoluteTimeGetCurrent();
      if (self->_airplayBrowser)
      {
        BonjourBrowser_Stop();
        CFRelease(self->_airplayBrowser);
        self->_airplayBrowser = 0;
      }

      if (self->_raopBrowser)
      {
        BonjourBrowser_Stop();
        CFRelease(self->_raopBrowser);
        self->_raopBrowser = 0;
      }

      if (self->_mfiConfigBrowser)
      {
        BonjourBrowser_Stop();
        CFRelease(self->_mfiConfigBrowser);
        self->_mfiConfigBrowser = 0;
      }

      if (self->_hapBrowser)
      {
        BonjourBrowser_Stop();
        CFRelease(self->_hapBrowser);
        self->_hapBrowser = 0;
      }

      if (gLogCategory_EasyConfigDevice <= 30 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
      {
        configSeed = self->_configSeed;
        v12 = self->_deviceIdentifier;
        LogPrintF();
        [(EasyConfigDevice *)self _postConfigCheckStart:infoCopy, v12, configSeed, Int64];
      }

      else
      {
        [(EasyConfigDevice *)self _postConfigCheckStart:infoCopy, deviceIdentifier, v13, v15];
      }

      goto LABEL_34;
    }
  }

  if (gLogCategory_EasyConfigDevice <= 40 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
  {
    v11 = self->_deviceIdentifier;
    LogPrintF();
  }

LABEL_34:
}

- (int)_findDevicePostConfigStart
{
  self->_state = 3;
  Current = CFAbsoluteTimeGetCurrent();
  self->_findPostConfigStartTime = Current;
  self->_findPostConfigFoundTime = Current;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__EasyConfigDevice__findDevicePostConfigStart__block_invoke;
  v9[3] = &unk_278FBEC08;
  v9[4] = self;
  v4 = [(EasyConfigDevice *)self _startBonjourWithTimeout:60 handler:v9];
  if (v4)
  {
    if (gLogCategory_EasyConfigDevice <= 60 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
    {
      deviceIdentifier = self->_deviceIdentifier;
      v8 = v4;
      LogPrintF();
    }

    [(EasyConfigDevice *)self _handleError:v4, deviceIdentifier, v8];
  }

  else if (gLogCategory_EasyConfigDevice <= 30 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
  {
    v7 = self->_deviceIdentifier;
    LogPrintF();
    [(EasyConfigDevice *)self _postProgress:50 info:0, v7];
  }

  else
  {
    [(EasyConfigDevice *)self _postProgress:50 info:0, deviceIdentifier];
  }

  return v4;
}

- (void)_applyConfigCompletion:(HTTPMessagePrivate *)completion
{
  v22 = 0;
  var21 = completion->var21;
  if (var21)
  {
    v22 = var21;
  }

  else
  {
    var12 = completion->var2.var12;
    if ((var12 - 300) <= 0xFFFFFF9B)
    {
      v17 = var12 + 196608;
      var21 = (v17 + 3392);
      v22 = v17 + 3392;
      if (v17 == -3392)
      {
        return;
      }
    }

    else if (!self->_mfiSAP || (v7 = completion->var6, v8 = completion->var7, var21 = MFiSAP_Decrypt(), (v22 = var21) == 0))
    {
      var6 = completion->var6;
      var7 = completion->var7;
      CFDictionaryGetTypeID();
      DictionaryFromTLV = CFCreateWithPlistBytes();
      if (!DictionaryFromTLV)
      {
        DictionaryFromTLV = EasyConfigCreateDictionaryFromTLV(completion->var6, completion->var7, &v22);
        if (!DictionaryFromTLV)
        {
          goto LABEL_20;
        }
      }

      configResponse = self->_configResponse;
      self->_configResponse = DictionaryFromTLV;

      self->_applyConfigFinishTime = CFAbsoluteTimeGetCurrent();
      if (gLogCategory_EasyConfigDevice <= 30 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
      {
        deviceIdentifier = self->_deviceIdentifier;
        LogPrintF();
      }

      [(EasyConfigDevice *)self _postProgress:40 withResponse:self->_configResponse, deviceIdentifier];
      if (self->_pausesAfterApply)
      {
        timeoutTimer = self->_timeoutTimer;
        if (timeoutTimer)
        {
          v14 = timeoutTimer;
          dispatch_source_cancel(v14);
          v15 = self->_timeoutTimer;
          self->_timeoutTimer = 0;
        }

        if (gLogCategory_EasyConfigDevice <= 30 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

LABEL_20:
        var21 = v22;
        if (!v22)
        {
          return;
        }

        goto LABEL_21;
      }

      var21 = [(EasyConfigDevice *)self _findDevicePostConfigStart];
      v22 = var21;
      if (!var21)
      {
        return;
      }
    }
  }

LABEL_21:
  if (gLogCategory_EasyConfigDevice <= 60 && (gLogCategory_EasyConfigDevice != -1 || (v16 = _LogCategory_Initialize(), var21 = v22, v16)))
  {
    v19 = self->_deviceIdentifier;
    v21 = var21;
    LogPrintF();
    [(EasyConfigDevice *)self _handleError:v22, v19, v21];
  }

  else
  {
    [(EasyConfigDevice *)self _handleError:var21, deviceIdentifier, v20];
  }
}

- (int)_applyConfigStart
{
  v21 = 0;
  v19 = 0;
  v20 = 0;
  self->_applyConfigStartTime = CFAbsoluteTimeGetCurrent();
  if (self->_supportsTLV)
  {
    v3 = EasyConfigCreateTLVfromDictionary(self->_configuration, &v19, &v21);
    v4 = 0;
    if (v21)
    {
      v5 = v3;
      goto LABEL_8;
    }

    v7 = "application/x-tlv8";
    v5 = v3;
  }

  else
  {
    v6 = [MEMORY[0x277CCAC58] dataWithPropertyList:self->_configuration format:200 options:0 error:0];
    v4 = v6;
    if (!v6)
    {
      v21 = -6732;
      goto LABEL_10;
    }

    [v6 bytes];
    v5 = 0;
    v19 = [v4 length];
    v7 = "application/octet-stream";
  }

  v21 = HTTPMessageCreate();
  if (!v21)
  {
    HTTPHeader_InitRequest();
    HTTPHeader_SetField();
    deviceIdentifier = v7;
    HTTPHeader_SetField();
    if (self->_mfiSAP)
    {
      v21 = HTTPMessageSetBodyLength();
      if (v21)
      {
        goto LABEL_8;
      }

      mfiSAP = self->_mfiSAP;
      v11 = v20[1065];
      v12 = MFiSAP_Encrypt();
    }

    else
    {
      v12 = HTTPMessageSetBody();
    }

    v21 = v12;
    if (!v12)
    {
      v18[5] = MEMORY[0x277D85DD0];
      v18[6] = 3221225472;
      v18[7] = __37__EasyConfigDevice__applyConfigStart__block_invoke;
      v18[8] = &unk_278FBEC30;
      v18[9] = self;
      HTTPMessageSetCompletionBlock();
      *(v20 + 8512) = 1;
      httpClient = self->_httpClient;
      v21 = HTTPClientSendMessage();
      if (!v21)
      {
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __37__EasyConfigDevice__applyConfigStart__block_invoke_2;
        v18[3] = &unk_278FBEBB8;
        v18[4] = self;
        v21 = [(EasyConfigDevice *)self _timeoutTimerStart:20 block:v18, v7];
        if (!v21)
        {
          if (gLogCategory_EasyConfigDevice <= 30 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
          {
            deviceIdentifier = self->_deviceIdentifier;
            LogPrintF();
          }

          [(EasyConfigDevice *)self _postProgress:30 info:0, deviceIdentifier];
        }
      }
    }
  }

LABEL_8:
  if (v5)
  {
    free(v5);
  }

LABEL_10:
  if (v20)
  {
    CFRelease(v20);
  }

  v8 = v21;
  if (v21)
  {
    if (gLogCategory_EasyConfigDevice <= 60)
    {
      if (gLogCategory_EasyConfigDevice != -1 || (v13 = _LogCategory_Initialize(), v8 = v21, v13))
      {
        deviceIdentifier = self->_deviceIdentifier;
        v17 = v8;
        LogPrintF();
        v8 = v21;
      }
    }

    [(EasyConfigDevice *)self _handleError:v8, deviceIdentifier, v17];
    v9 = v21;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int)_pairVerifyNext:(HTTPMessagePrivate *)next
{
  v16 = *MEMORY[0x277D85DE8];
  if (next)
  {
    var21 = next->var21;
    if (var21)
    {
      goto LABEL_7;
    }

    var12 = next->var2.var12;
    if ((var12 - 300) <= 0xFFFFFF9B)
    {
      var21 = (var12 + 200000);
      goto LABEL_7;
    }

    var6 = next->var6;
    var7 = next->var7;
  }

  pairingSession = self->_pairingSession;
  v9 = PairingSessionExchange();
  if (v9)
  {
    var21 = v9;
  }

  else
  {
    var21 = HTTPMessageCreate();
    if (!var21)
    {
      v13 = "pair-verify";
      HTTPHeader_InitRequestF();
      var21 = HTTPMessageSetBody();
      if (!var21)
      {
        HTTPMessageSetCompletionBlock();
        httpClient = self->_httpClient;
        var21 = HTTPClientSendMessage();
      }
    }
  }

LABEL_7:
  if (var21)
  {
    if (gLogCategory_EasyConfigDevice <= 60 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
    {
      deviceIdentifier = self->_deviceIdentifier;
      LogPrintF();
      [(EasyConfigDevice *)self _handleError:var21, deviceIdentifier, var21];
    }

    else
    {
      [(EasyConfigDevice *)self _handleError:var21, v13, v15];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return var21;
}

- (int)_pairVerifyStart
{
  if (gLogCategory_EasyConfigDevice <= 30 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
  {
    deviceIdentifier = self->_deviceIdentifier;
    LogPrintF();
  }

  p_pairingSession = &self->_pairingSession;
  pairingSession = self->_pairingSession;
  if (pairingSession)
  {
    CFRelease(pairingSession);
    *p_pairingSession = 0;
  }

  v15 = 0u;
  memset(v16, 0, sizeof(v16));
  v14[5] = self;
  if (self->_hasPairingDelegate)
  {
    *(v16 + 8) = *&self->_pairingDelegate.copyIdentity_f;
    *(&v16[1] + 1) = self->_pairingDelegate.savePeer_f;
  }

  v5 = PairingSessionCreate();
  if (v5)
  {
    goto LABEL_17;
  }

  if (self->_supportsHAP || self->_supportsHAP2 || self->_supportsPairSetup)
  {
    v6 = *p_pairingSession;
    LODWORD(deviceIdentifier) = 1;
    PairingSessionSetKeychainInfo();
  }

  if (self->_pairVerifyFlags)
  {
    v7 = *p_pairingSession;
    PairingSessionSetFlags();
  }

  v8 = self->_pairingSession;
  PairingSessionSetLogging();
  v5 = [(EasyConfigDevice *)self _pairVerifyNext:0];
  if (v5)
  {
LABEL_17:
    v9 = v5;
  }

  else
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __36__EasyConfigDevice__pairVerifyStart__block_invoke;
    v14[3] = &unk_278FBEBB8;
    v14[4] = self;
    v9 = [(EasyConfigDevice *)self _timeoutTimerStart:20 block:v14];
    if (!v9)
    {
      return v9;
    }
  }

  if (gLogCategory_EasyConfigDevice <= 60 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
  {
    v12 = self->_deviceIdentifier;
    LogPrintF();
    [(EasyConfigDevice *)self _handleError:v9, v12, v9];
  }

  else
  {
    [(EasyConfigDevice *)self _handleError:v9, deviceIdentifier, v13];
  }

  return v9;
}

- (int)_pairSetupNext:(HTTPMessagePrivate *)next
{
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v17 = 0;
  if (next)
  {
    var21 = next->var21;
    if (var21)
    {
      goto LABEL_12;
    }

    var12 = next->var2.var12;
    if ((var12 - 300) <= 0xFFFFFF9B)
    {
      var21 = (var12 + 200000);
      goto LABEL_12;
    }

    var6 = next->var6;
    var7 = next->var7;
  }

  pairingSession = self->_pairingSession;
  v9 = PairingSessionExchange();
  if (v9)
  {
    if (v9 == -6771)
    {
      var21 = 0;
    }

    else
    {
      var21 = v9;
    }
  }

  else
  {
    v10 = HTTPMessageCreate();
    if (!v10)
    {
      v13 = "pair-setup";
      HTTPHeader_InitRequestF();
      v10 = HTTPMessageSetBody();
      if (!v10)
      {
        v16[5] = MEMORY[0x277D85DD0];
        v16[6] = 3221225472;
        v16[7] = __35__EasyConfigDevice__pairSetupNext___block_invoke;
        v16[8] = &unk_278FBEC30;
        v16[9] = self;
        HTTPMessageSetCompletionBlock();
        httpClient = self->_httpClient;
        v10 = HTTPClientSendMessage();
        if (!v10)
        {
          if (self->_timeoutTimer)
          {
            var21 = 0;
            goto LABEL_12;
          }

          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __35__EasyConfigDevice__pairSetupNext___block_invoke_2;
          v16[3] = &unk_278FBEBB8;
          v16[4] = self;
          v10 = [(EasyConfigDevice *)self _timeoutTimerStart:20 block:v16, "pair-setup"];
        }
      }
    }

    var21 = v10;
  }

LABEL_12:
  if (v17)
  {
    CFRelease(v17);
  }

  if (v20)
  {
    free(v20);
  }

  if (var21)
  {
    if (gLogCategory_EasyConfigDevice <= 60 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
    {
      deviceIdentifier = self->_deviceIdentifier;
      LogPrintF();
      [(EasyConfigDevice *)self _handleError:var21, deviceIdentifier, var21];
    }

    else
    {
      [(EasyConfigDevice *)self _handleError:var21, v13, v15];
    }
  }

  return var21;
}

- (int)_pairSetupStart
{
  self->_securityStartTime = CFAbsoluteTimeGetCurrent();
  if (gLogCategory_EasyConfigDevice <= 30 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
  {
    deviceIdentifier = self->_deviceIdentifier;
    LogPrintF();
  }

  [(EasyConfigDevice *)self _postProgress:20 info:0, deviceIdentifier];
  p_pairingSession = &self->_pairingSession;
  pairingSession = self->_pairingSession;
  if (pairingSession)
  {
    CFRelease(pairingSession);
    *p_pairingSession = 0;
  }

  if (self->_hasPairingDelegate)
  {
    v15 = *&self->_pairingDelegate.copyIdentity_f;
    savePeer_f = self->_pairingDelegate.savePeer_f;
  }

  v5 = PairingSessionCreate();
  if (v5)
  {
    v6 = v5;
LABEL_18:
    if (gLogCategory_EasyConfigDevice <= 60 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
    {
      v13 = self->_deviceIdentifier;
      LogPrintF();
      [(EasyConfigDevice *)self _handleError:v6, v13, v6];
    }

    else
    {
      [(EasyConfigDevice *)self _handleError:v6, v12, v14];
    }

    return v6;
  }

  if (self->_supportsHAP || self->_supportsHAP2 || self->_supportsPairSetup)
  {
    v7 = *p_pairingSession;
    LODWORD(v12) = 1;
    PairingSessionSetKeychainInfo();
  }

  if (self->_pairSetupFlags)
  {
    v8 = *p_pairingSession;
    PairingSessionSetFlags();
  }

  v9 = self->_pairingSession;
  PairingSessionSetLogging();
  v6 = [(EasyConfigDevice *)self _pairSetupNext:0];
  if (v6)
  {
    goto LABEL_18;
  }

  return v6;
}

- (int)_mfiSAPNext:(HTTPMessagePrivate *)next
{
  if (next)
  {
    var21 = next->var21;
    if (var21)
    {
      goto LABEL_9;
    }

    var12 = next->var2.var12;
    if ((var12 - 300) <= 0xFFFFFF9B)
    {
      var21 = (var12 + 200000);
      goto LABEL_9;
    }

    var6 = next->var6;
    var7 = next->var7;
  }

  mfiSAP = self->_mfiSAP;
  var21 = MFiSAP_Exchange();
  if (!var21)
  {
    var21 = HTTPMessageCreate();
    if (!var21)
    {
      HTTPHeader_InitRequest();
      HTTPHeader_SetField();
      var21 = HTTPMessageSetBody();
      if (!var21)
      {
        HTTPMessageSetCompletionBlock();
        httpClient = self->_httpClient;
        var21 = HTTPClientSendMessage();
      }
    }
  }

LABEL_9:
  if (var21)
  {
    if (gLogCategory_EasyConfigDevice <= 60 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
    {
      deviceIdentifier = self->_deviceIdentifier;
      LogPrintF();
      [(EasyConfigDevice *)self _handleError:var21, deviceIdentifier, var21];
    }

    else
    {
      [(EasyConfigDevice *)self _handleError:var21, v11, v13];
    }
  }

  return var21;
}

- (int)_mfiSAPStart
{
  self->_securityStartTime = CFAbsoluteTimeGetCurrent();
  if (gLogCategory_EasyConfigDevice <= 30 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
  {
    deviceIdentifier = self->_deviceIdentifier;
    LogPrintF();
  }

  [(EasyConfigDevice *)self _postProgress:20 info:0, deviceIdentifier];
  if (self->_mfiSAP)
  {
    MFiSAP_Delete();
    self->_mfiSAP = 0;
  }

  v3 = MFiSAP_Create();
  if (v3 || (v3 = [(EasyConfigDevice *)self _mfiSAPNext:0], v3))
  {
    v4 = v3;
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __32__EasyConfigDevice__mfiSAPStart__block_invoke;
    v10[3] = &unk_278FBEBB8;
    v10[4] = self;
    v4 = [(EasyConfigDevice *)self _timeoutTimerStart:20 block:v10];
    if (!v4)
    {
      return v4;
    }
  }

  if (gLogCategory_EasyConfigDevice <= 60 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
  {
    v8 = self->_deviceIdentifier;
    LogPrintF();
    [(EasyConfigDevice *)self _handleError:v4, v8, v4];
  }

  else
  {
    [(EasyConfigDevice *)self _handleError:v4, v7, v9];
  }

  return v4;
}

- (int)_configureStart:(id)start
{
  startCopy = start;
  self->_state = 2;
  v5 = gLogCategory_EasyConfigDevice;
  if (gLogCategory_EasyConfigDevice <= 30)
  {
    if (gLogCategory_EasyConfigDevice == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_16;
      }

      v5 = gLogCategory_EasyConfigDevice;
    }

    deviceIdentifier = self->_deviceIdentifier;
    if (v5 > 20)
    {
      v8 = 0;
      v7 = &unk_249F5796A;
    }

    else
    {
      v7 = ":\n";
      if (v5 != -1)
      {
        goto LABEL_8;
      }

      if (!_LogCategory_Initialize())
      {
        v7 = &unk_249F5796A;
      }

      v5 = gLogCategory_EasyConfigDevice;
      if (gLogCategory_EasyConfigDevice > 20)
      {
        v8 = 0;
      }

      else
      {
LABEL_8:
        v8 = v5 != -1 || _LogCategory_Initialize() != 0;
      }
    }

    v24 = v8;
    v25 = startCopy;
    v22 = deviceIdentifier;
    v23 = v7;
    LogPrintF();
  }

LABEL_16:
  v27 = 0;
  valueLen = 0;
  self->_configSeed = BonjourDevice_GetInt64();
  if (v27)
  {
    self->_configSeed = BonjourDevice_GetInt64();
    if (v27)
    {
      self->_configSeed = BonjourDevice_GetInt64();
      if (v27)
      {
        if (gLogCategory_EasyConfigDevice <= 50 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
        {
          v22 = self->_deviceIdentifier;
          LogPrintF();
        }

        self->_configSeed = 1;
      }
    }
  }

  self->_supportsTLV = 0;
  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (!TypedValue)
  {
    goto LABEL_53;
  }

  v10 = TypedValue;
  if (CFStringCompare(TypedValue, @"_airplay._tcp.", 1uLL) == kCFCompareEqualTo || CFStringCompare(v10, @"_raop._tcp.", 1uLL) == kCFCompareEqualTo)
  {
    Value = CFDictionaryGetValue(startCopy, @"txt");
    if (Value)
    {
      v13 = Value;
      BytePtr = CFDataGetBytePtr(Value);
      Length = CFDataGetLength(v13);
      if (TXTRecordGetValuePtr(Length, BytePtr, "srcvers", &valueLen) || TXTRecordGetValuePtr(Length, BytePtr, "vs", &valueLen))
      {
        LOBYTE(v11) = TextToSourceVersion() > 0x1B903F;
LABEL_34:
        self->_supportsTLV = v11;
        goto LABEL_35;
      }

      v16 = 4294960581;
LABEL_55:
      v27 = v16;
      goto LABEL_46;
    }

LABEL_53:
    v16 = 4294960534;
    goto LABEL_55;
  }

  if (CFStringCompare(v10, @"_mfi-config._tcp.", 1uLL) == kCFCompareEqualTo)
  {
    v11 = (BonjourDevice_GetInt64() >> 2) & 1;
    goto LABEL_34;
  }

  LOBYTE(v11) = 1;
  if (CFStringCompare(v10, @"_hap._tcp.", 1uLL) == kCFCompareEqualTo)
  {
    goto LABEL_34;
  }

LABEL_35:
  v16 = [(EasyConfigDevice *)self _setupClient:startCopy, v22, v23, v24, v25];
  v27 = v16;
  if (!v16)
  {
    deviceInfo = self->_deviceInfo;
    if (CFDictionaryGetInt64() && (self->_supportsHAP2 || self->_supportsPairSetup || !self->_supportsMFi))
    {
      _mfiSAPStart = self->_skipPairSetup ? [(EasyConfigDevice *)self _pairVerifyStart]: [(EasyConfigDevice *)self _pairSetupStart];
    }

    else
    {
      _mfiSAPStart = [(EasyConfigDevice *)self _mfiSAPStart];
    }

    v16 = _mfiSAPStart;
    v27 = _mfiSAPStart;
    if (!_mfiSAPStart)
    {
      v20 = 0;
      goto LABEL_51;
    }
  }

LABEL_46:
  if (gLogCategory_EasyConfigDevice <= 60)
  {
    if (gLogCategory_EasyConfigDevice != -1 || (v19 = _LogCategory_Initialize(), v16 = v27, v19))
    {
      v22 = self->_deviceIdentifier;
      v23 = v16;
      LogPrintF();
      v16 = v27;
    }
  }

  [(EasyConfigDevice *)self _handleError:v16, v22, v23];
  v20 = v27;
LABEL_51:

  return v20;
}

- (void)_findDevicePreConfigEvent:(unsigned int)event info:(id)info
{
  infoCopy = info;
  if (event == 1 && self->_started && (self->_airplayBrowser || self->_raopBrowser || self->_mfiConfigBrowser || self->_hapBrowser))
  {
    v11 = infoCopy;
    v7 = BonjourDevice_GetDeviceID() == self->_deviceIdentifier;
    infoCopy = v11;
    if (v7)
    {
      self->_findPreConfigFoundTime = CFAbsoluteTimeGetCurrent();
      BonjourDevice_Reconfirm();
      if (self->_airplayBrowser)
      {
        BonjourBrowser_Stop();
        CFRelease(self->_airplayBrowser);
        self->_airplayBrowser = 0;
      }

      if (self->_raopBrowser)
      {
        BonjourBrowser_Stop();
        CFRelease(self->_raopBrowser);
        self->_raopBrowser = 0;
      }

      if (self->_mfiConfigBrowser)
      {
        BonjourBrowser_Stop();
        CFRelease(self->_mfiConfigBrowser);
        self->_mfiConfigBrowser = 0;
      }

      if (self->_hapBrowser)
      {
        BonjourBrowser_Stop();
        CFRelease(self->_hapBrowser);
        self->_hapBrowser = 0;
      }

      timeoutTimer = self->_timeoutTimer;
      if (timeoutTimer)
      {
        v9 = timeoutTimer;
        dispatch_source_cancel(v9);
        v10 = self->_timeoutTimer;
        self->_timeoutTimer = 0;
      }

      [(EasyConfigDevice *)self _configureStart:v11];
      infoCopy = v11;
    }
  }
}

- (int)_findDevicePreConfigStart
{
  self->_state = 1;
  Current = CFAbsoluteTimeGetCurrent();
  self->_findPreConfigStartTime = Current;
  self->_findPreConfigFoundTime = Current;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__EasyConfigDevice__findDevicePreConfigStart__block_invoke;
  v9[3] = &unk_278FBEC08;
  v9[4] = self;
  v4 = [(EasyConfigDevice *)self _startBonjourWithTimeout:20 handler:v9];
  if (v4)
  {
    if (gLogCategory_EasyConfigDevice <= 60 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
    {
      deviceIdentifier = self->_deviceIdentifier;
      v8 = v4;
      LogPrintF();
    }

    [(EasyConfigDevice *)self _handleError:v4, deviceIdentifier, v8];
  }

  else if (gLogCategory_EasyConfigDevice <= 30 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
  {
    v7 = self->_deviceIdentifier;
    LogPrintF();
    [(EasyConfigDevice *)self _postProgress:10 info:0, v7];
  }

  else
  {
    [(EasyConfigDevice *)self _postProgress:10 info:0, deviceIdentifier];
  }

  return v4;
}

- (void)_trySetupCode:(id)code
{
  codeCopy = code;
  self->_enterSetupCodeMs = ((CFAbsoluteTimeGetCurrent() - self->_promptForSetupCodeTime) * 1000.0);
  if (!self->_pairingSession)
  {
    v5 = 4294960593;
    goto LABEL_5;
  }

  [codeCopy UTF8String];
  v4 = PairingSessionSetSetupCode();
  if (v4 || (v4 = [(EasyConfigDevice *)self _pairSetupNext:0], v4))
  {
    v5 = v4;
LABEL_5:
    [(EasyConfigDevice *)self _handleError:v5];
  }
}

- (void)trySetupCode:(id)code
{
  codeCopy = code;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__EasyConfigDevice_trySetupCode___block_invoke;
  v7[3] = &unk_278FBEBE0;
  v7[4] = self;
  v8 = codeCopy;
  v6 = codeCopy;
  dispatch_async(internalQueue, v7);
}

- (void)setPromptForSetupCodeHandler:(id)handler
{
  v4 = MEMORY[0x24C209090](handler, a2);
  if (v4)
  {
    v5 = v4;
    v8 = [v4 copy];
  }

  else
  {
    v8 = 0;
  }

  v6 = MEMORY[0x24C209090](v8);
  promptForSetupCodeBlock = self->_promptForSetupCodeBlock;
  self->_promptForSetupCodeBlock = v6;
}

- (void)setPostConfigMetrics:(id *)metrics
{
  v3 = *&metrics->var4;
  *&self->_postConfigMetrics.secondsToGetLinkUpOnDestination = *&metrics->var0;
  *&self->_postConfigMetrics.rssiOfDestinationAP = v3;
  self->_postConfigMetricsSet = 1;
}

- (void)setPreConfigMetrics:(id *)metrics
{
  v3 = *&metrics->var0;
  v4 = *&metrics->var8;
  *&self->_preConfigMetrics.secondsToGetLinkUpOnSWAP = *&metrics->var5;
  *&self->_preConfigMetrics.rssiOfSWAP = v4;
  *&self->_preConfigMetrics.startTime = v3;
  self->_preConfigMetricsSet = 1;
}

- (void)setPairingDelegate:(const void *)delegate
{
  if (delegate)
  {
    *&self->_pairingDelegate.context = *delegate;
    v3 = *(delegate + 1);
    v4 = *(delegate + 2);
    v5 = *(delegate + 3);
    self->_pairingDelegate.resumeResponse_f = *(delegate + 8);
    *&self->_pairingDelegate.copyIdentity_f = v4;
    *&self->_pairingDelegate.savePeer_f = v5;
    *&self->_pairingDelegate.hideSetupCode_f = v3;
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  self->_hasPairingDelegate = v6;
}

- (void)resumePostConfig
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__EasyConfigDevice_resumePostConfig__block_invoke;
  block[3] = &unk_278FBEBB8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

uint64_t __36__EasyConfigDevice_resumePostConfig__block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 232) == 1)
  {
    v1 = result;
    if (gLogCategory_EasyConfigDevice <= 30 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = *(v1 + 32);

    return [v2 _findDevicePostConfigStart];
  }

  else if (gLogCategory_EasyConfigDevice <= 60)
  {
    if (gLogCategory_EasyConfigDevice != -1 || (result = _LogCategory_Initialize(), result))
    {

      return LogPrintF();
    }
  }

  return result;
}

- (void)stop
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__EasyConfigDevice_stop__block_invoke;
  block[3] = &unk_278FBEBB8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)_start
{
  if (!self->_started)
  {
    if (gLogCategory_EasyConfigDevice <= 30 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    self->_started = 1;
    self->_firstErr = 0;
    self->_configStartTime = CFAbsoluteTimeGetCurrent();
    configResponse = self->_configResponse;
    self->_configResponse = 0;

    scanRecord = self->_scanRecord;
    if (scanRecord)
    {
      v5 = [(NSDictionary *)scanRecord objectForKey:@"IE"];
      v6 = v5;
      if (v5)
      {
        if ([v5 length])
        {
          [v6 bytes];
          v7 = IEGetVendorSpecific();
          v14 = v7;
          if (v7 || (v7 = TLV8Get(), (v14 = v7) != 0))
          {
            v8 = v7;
LABEL_21:
            if (gLogCategory_EasyConfigDevice <= 60 && (gLogCategory_EasyConfigDevice != -1 || (v11 = _LogCategory_Initialize(), v8 = v14, v11)))
            {
              v13 = v8;
              LogPrintF();
              [(EasyConfigDevice *)self _stop:v14, v13];
            }

            else
            {
              [(EasyConfigDevice *)self _stop:v8, v12];
            }

            goto LABEL_26;
          }

          v8 = 4294960553;
        }

        else
        {
          v8 = 4294960546;
        }
      }

      else
      {
        v8 = 4294960569;
      }
    }

    else
    {
      if (self->_deviceInfo)
      {
        self->_deviceIdentifier = CFDictionaryGetHardwareAddress();
        deviceInfo = self->_deviceInfo;
        Int64 = CFDictionaryGetInt64();
        v6 = 0;
        self->_supportsHAP = (Int64 & 0x20000) != 0;
        self->_supportsHAP2 = (Int64 & 0x40000) != 0;
        self->_supportsMFi = (Int64 & 4) != 0;
        self->_supportsPairSetup = (Int64 & 0x100000) != 0;
        if (((Int64 >> 17) & 1) == 0 && ((Int64 >> 18) & 1) == 0 && (Int64 & 4) == 0 && ((Int64 >> 20) & 1) == 0)
        {
          v8 = 4294960562;
          goto LABEL_34;
        }

        if (self->_configuration)
        {
          [(EasyConfigDevice *)self _findDevicePreConfigStart];
          goto LABEL_26;
        }
      }

      else
      {
        v6 = 0;
      }

      v8 = 4294960551;
    }

LABEL_34:
    v14 = v8;
    goto LABEL_21;
  }

  if (gLogCategory_EasyConfigDevice <= 60 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6 = 0;
LABEL_26:
}

- (void)start
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__EasyConfigDevice_start__block_invoke;
  block[3] = &unk_278FBEBB8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (BOOL)removed:(id)removed
{
  v4 = [removed objectForKey:@"serviceType"];
  if ([v4 isEqual:@"_airplay._tcp."])
  {
    v5 = 48;
LABEL_9:
    v6 = *(&self->super.isa + v5);
    *(&self->super.isa + v5) = 0;

    goto LABEL_10;
  }

  if ([v4 isEqual:@"_raop._tcp."])
  {
    v5 = 64;
    goto LABEL_9;
  }

  if ([v4 isEqual:@"_mfi-config._tcp."])
  {
    v5 = 80;
    goto LABEL_9;
  }

  if ([v4 isEqual:@"_hap._tcp."])
  {
    v5 = 96;
    goto LABEL_9;
  }

LABEL_10:
  v7 = !self->_airplayBonjourInfo && !self->_raopBonjourInfo && !self->_mfiConfigBonjourInfo && self->_hapBonjourInfo == 0;

  return v7;
}

- (BOOL)updated:(id)updated
{
  updatedCopy = updated;
  v6 = [updatedCopy objectForKey:@"name"];
  v7 = [(NSString *)self->_name isEqual:v6];
  if ((v7 & 1) == 0)
  {
    [(EasyConfigDevice *)self setName:v6];
  }

  DeviceID = BonjourDevice_GetDeviceID();
  if (DeviceID == self->_deviceIdentifier)
  {
    v9 = v7 ^ 1;
  }

  else
  {
    self->_deviceIdentifier = DeviceID;
    v9 = 1;
  }

  v10 = [updatedCopy objectForKey:@"serviceType"];
  if ([v10 isEqual:@"_airplay._tcp."])
  {
    airplayBonjourInfo = self->_airplayBonjourInfo;
    p_airplayBonjourInfo = &self->_airplayBonjourInfo;
    v11 = airplayBonjourInfo;
  }

  else if ([v10 isEqual:@"_raop._tcp."])
  {
    raopBonjourInfo = self->_raopBonjourInfo;
    p_airplayBonjourInfo = &self->_raopBonjourInfo;
    v11 = raopBonjourInfo;
  }

  else if ([v10 isEqual:@"_mfi-config._tcp."])
  {
    mfiConfigBonjourInfo = self->_mfiConfigBonjourInfo;
    p_airplayBonjourInfo = &self->_mfiConfigBonjourInfo;
    v11 = mfiConfigBonjourInfo;
  }

  else
  {
    if (![v10 isEqual:@"_hap._tcp."])
    {
      goto LABEL_16;
    }

    hapBonjourInfo = self->_hapBonjourInfo;
    p_airplayBonjourInfo = &self->_hapBonjourInfo;
    v11 = hapBonjourInfo;
  }

  if (([(NSDictionary *)v11 isEqual:updatedCopy]& 1) == 0)
  {

    objc_storeStrong(p_airplayBonjourInfo, updated);
    v9 = 1;
  }

LABEL_16:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSDictionary *)self->_scanRecord copy];
  v6 = *(v4 + 24);
  *(v4 + 24) = v5;

  v7 = [(NSDictionary *)self->_airplayBonjourInfo copy];
  v8 = *(v4 + 48);
  *(v4 + 48) = v7;

  v9 = [(NSDictionary *)self->_raopBonjourInfo copy];
  v10 = *(v4 + 64);
  *(v4 + 64) = v9;

  v11 = [(NSDictionary *)self->_mfiConfigBonjourInfo copy];
  v12 = *(v4 + 80);
  *(v4 + 80) = v11;

  v13 = [(NSDictionary *)self->_hapBonjourInfo copy];
  v14 = *(v4 + 96);
  *(v4 + 96) = v13;

  *(v4 + 104) = self->_configSeed;
  [v4 setDeviceIdentifier:self->_deviceIdentifier];
  *(v4 + 184) = self->_features;
  [v4 setModel:self->_model];
  [v4 setName:self->_name];
  [v4 setConfiguration:self->_configuration];
  return v4;
}

- (void)dealloc
{
  internalQueue = self->_internalQueue;
  if (internalQueue)
  {
    self->_internalQueue = 0;
  }

  userQueue = self->_userQueue;
  if (userQueue)
  {
    self->_userQueue = 0;
  }

  scanRecord = self->_scanRecord;
  self->_scanRecord = 0;

  airplayBonjourInfo = self->_airplayBonjourInfo;
  self->_airplayBonjourInfo = 0;

  raopBonjourInfo = self->_raopBonjourInfo;
  self->_raopBonjourInfo = 0;

  mfiConfigBonjourInfo = self->_mfiConfigBonjourInfo;
  self->_mfiConfigBonjourInfo = 0;

  hapBonjourInfo = self->_hapBonjourInfo;
  self->_hapBonjourInfo = 0;

  model = self->_model;
  self->_model = 0;

  name = self->_name;
  self->_name = 0;

  configuration = self->_configuration;
  self->_configuration = 0;

  configResponse = self->_configResponse;
  self->_configResponse = 0;

  promptForSetupCodeBlock = self->_promptForSetupCodeBlock;
  self->_promptForSetupCodeBlock = 0;

  progressHandler = self->_progressHandler;
  self->_progressHandler = 0;

  deviceInfo = self->_deviceInfo;
  self->_deviceInfo = 0;

  v17.receiver = self;
  v17.super_class = EasyConfigDevice;
  [(EasyConfigDevice *)&v17 dealloc];
}

- (EasyConfigDevice)init
{
  v7.receiver = self;
  v7.super_class = EasyConfigDevice;
  v2 = [(EasyConfigDevice *)&v7 init];
  if (v2 && (v3 = dispatch_queue_create("EasyConfigDevice", 0), internalQueue = v2->_internalQueue, v2->_internalQueue = v3, internalQueue, v2->_internalQueue))
  {
    objc_storeStrong(&v2->_userQueue, MEMORY[0x277D85CD0]);
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)deviceWithScanRecord:(id)record
{
  recordCopy = record;
  v4 = objc_alloc_init(EasyConfigDevice);
  scanRecord = v4->_scanRecord;
  v4->_scanRecord = recordCopy;

  return v4;
}

+ (id)deviceWithInfo:(id)info
{
  infoCopy = info;
  v4 = objc_alloc_init(EasyConfigDevice);
  deviceInfo = v4->_deviceInfo;
  v4->_deviceInfo = infoCopy;

  return v4;
}

+ (BOOL)supportedScanRecord:(id)record
{
  v3 = [record objectForKey:@"IE"];
  v4 = v3;
  if (!v3)
  {
LABEL_6:
    LOBYTE(v5) = 0;
    goto LABEL_5;
  }

  v5 = [v3 length];
  if (v5)
  {
    [v4 bytes];
    if (!IEGetVendorSpecific())
    {
      TLV8Get();
    }

    goto LABEL_6;
  }

LABEL_5:

  return v5;
}

@end