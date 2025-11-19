@interface HMServiceClient
- (HMServiceClient)init;
- (HMServiceClient)initWithCoder:(id)a3;
- (NSArray)invalidAudiograms;
- (NSArray)validAudiograms;
- (id)_ensureXPCStarted;
- (id)description;
- (id)fetchHearingModeDeviceRecordForIdentifier:(id)a3;
- (id)getHearingModeDeviceRecordForIdentifier:(id)a3;
- (void)_activate;
- (void)_interrupted;
- (void)_invalidated;
- (void)_reportError:(id)a3;
- (void)activateWithCompletion:(id)a3;
- (void)clientHMAvailableAudiograms:(id)a3 invalidAudiograms:(id)a4 error:(id)a5;
- (void)clientHMDeviceDiagnosticRecordFound:(id)a3;
- (void)clientHMDeviceRecordChanged:(id)a3;
- (void)clientHMDeviceRecordLost:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)fetchOcclusionResultForDeviceIdentifier:(id)a3 featureID:(int)a4 completion:(id)a5;
- (void)invalidate;
- (void)modifyDeviceConfig:(id)a3 identifier:(id)a4 completion:(id)a5;
- (void)occlusionIndicationShownForDeviceAddress:(id)a3 featureID:(int)a4 type:(int)a5 action:(int)a6;
- (void)triggerFetchAudiogramsWithCompletion:(id)a3;
- (void)triggerOnDemandDiagnosticCheckForDeviceIdentifier:(id)a3 completion:(id)a4;
@end

@implementation HMServiceClient

- (HMServiceClient)init
{
  v5.receiver = self;
  v5.super_class = HMServiceClient;
  v2 = [(HMServiceClient *)&v5 init];
  if (v2)
  {
    v2->_clientID = HMXPCGetNextClientID();
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v3 = v2;
  }

  return v2;
}

- (void)_activate
{
  if (self->_deviceDiagnosticRecordFoundHandler)
  {
    self->_internalFlags |= 1u;
  }

  if (self->_invalidateCalled)
  {
    v3 = *MEMORY[0x277CCA590];
    v9 = NSErrorF();
    if (gLogCategory_HMServiceClient <= 90 && (gLogCategory_HMServiceClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v7 = MEMORY[0x2530950A0](self->_activateCompletion);
    activateCompletion = self->_activateCompletion;
    self->_activateCompletion = 0;

    if (v7)
    {
      (v7)[2](v7, v9);
    }
  }

  else
  {
    if (gLogCategory_HMServiceClient <= 30 && (gLogCategory_HMServiceClient != -1 || _LogCategory_Initialize()))
    {
      [(HMServiceClient *)self _activate];
    }

    v4 = [(HMServiceClient *)self _ensureXPCStarted];
    if (v4)
    {
      [(HMServiceClient *)self _reportError:v4];
    }

    else
    {
      xpcCnx = self->_xpcCnx;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __28__HMServiceClient__activate__block_invoke;
      v11[3] = &unk_2796EEA68;
      v11[4] = self;
      v6 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v11];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __28__HMServiceClient__activate__block_invoke_2;
      v10[3] = &unk_2796EEA68;
      v10[4] = self;
      [v6 clientActivate:self completion:v10];
    }
  }
}

- (id)_ensureXPCStarted
{
  v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28643CE90];
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  v5 = objc_opt_class();
  v6 = [v4 initWithObjects:{v5, objc_opt_class(), 0}];
  [v3 setClasses:v6 forSelector:sel_clientHMAvailableAudiograms_invalidAudiograms_error_ argumentIndex:0 ofReply:0];
  [v3 setClasses:v6 forSelector:sel_clientHMAvailableAudiograms_invalidAudiograms_error_ argumentIndex:1 ofReply:0];
  if (!self->_xpcCnx)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.HearingModeService" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v7;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v3];
    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __36__HMServiceClient__ensureXPCStarted__block_invoke;
    v12[3] = &unk_2796EE5C0;
    v12[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v12];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __36__HMServiceClient__ensureXPCStarted__block_invoke_2;
    v11[3] = &unk_2796EE5C0;
    v11[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v11];
    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28643CEF0];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v9];

    [(NSXPCConnection *)self->_xpcCnx resume];
  }

  return 0;
}

- (id)description
{
  clientID = self->_clientID;
  NSAppendPrintF();

  return 0;
}

void __28__HMServiceClient__activate__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (v3)
  {
    v4 = v3;
    if (gLogCategory_HMServiceClient <= 90)
    {
      if (gLogCategory_HMServiceClient != -1 || (v5 = _LogCategory_Initialize(), v4 = v9, v5))
      {
        __28__HMServiceClient__activate__block_invoke_2_cold_1();
        v4 = v9;
      }
    }

    [*(a1 + 32) _reportError:v4];
  }

  else
  {
    if (gLogCategory_HMServiceClient <= 30 && (gLogCategory_HMServiceClient != -1 || _LogCategory_Initialize()))
    {
      __28__HMServiceClient__activate__block_invoke_2_cold_2(a1);
    }

    v6 = MEMORY[0x2530950A0](*(*(a1 + 32) + 16));
    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    *(v7 + 16) = 0;

    if (v6)
    {
      v6[2](v6, 0);
    }
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  clientID = self->_clientID;
  v7 = v4;
  if (clientID)
  {
    [v4 encodeInt64:clientID forKey:@"cid"];
    v4 = v7;
  }

  internalFlags = self->_internalFlags;
  if (internalFlags)
  {
    [v7 encodeInt64:internalFlags forKey:@"inf"];
    v4 = v7;
  }
}

- (HMServiceClient)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMServiceClient *)self init];
  if (v5)
  {
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_clientID = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_internalFlags = 0;
    }

    v6 = v5;
  }

  return v5;
}

- (NSArray)validAudiograms
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_validAudiograms;
  objc_sync_exit(v2);

  return v3;
}

- (NSArray)invalidAudiograms
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_invalidAudiograms;
  objc_sync_exit(v2);

  return v3;
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__HMServiceClient_activateWithCompletion___block_invoke;
  v7[3] = &unk_2796EE5E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __42__HMServiceClient_activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    v3 = *MEMORY[0x277CCA590];
    v8 = NSErrorF();
    if (gLogCategory_HMServiceClient <= 90 && (gLogCategory_HMServiceClient != -1 || _LogCategory_Initialize()))
    {
      __42__HMServiceClient_activateWithCompletion___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    *(v2 + 8) = 1;
    v4 = MEMORY[0x2530950A0](*(a1 + 40));
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;

    v7 = *(a1 + 32);

    [v7 _activate];
  }
}

void __28__HMServiceClient__activate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (gLogCategory_HMServiceClient <= 90)
  {
    if (gLogCategory_HMServiceClient != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __28__HMServiceClient__activate__block_invoke_cold_1();
      v3 = v5;
    }
  }

  [*(a1 + 32) _reportError:v3];
}

uint64_t __36__HMServiceClient__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_HMServiceClient <= 50 && (gLogCategory_HMServiceClient != -1 || _LogCategory_Initialize()))
  {
    [HMServiceClient _interrupted];
  }

  v3 = *MEMORY[0x277CCA590];
  v4 = NSErrorF();
  [(HMServiceClient *)self _reportError:v4];

  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    v7 = *(interruptionHandler + 2);

    v7();
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__HMServiceClient_invalidate__block_invoke;
  block[3] = &unk_2796EE5C0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __29__HMServiceClient_invalidate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    if ((*(*(a1 + 32) + 25) & 1) == 0 && gLogCategory_HMServiceClient <= 30 && (gLogCategory_HMServiceClient != -1 || _LogCategory_Initialize()))
    {
      __29__HMServiceClient_invalidate__block_invoke_cold_1();
    }

    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    if (v5)
    {
      [v5 invalidate];
      v4 = *(a1 + 32);
    }

    v10 = MEMORY[0x2530950A0](*(v4 + 16));
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    *(v6 + 16) = 0;

    if (v10)
    {
      v8 = *MEMORY[0x277CCA590];
      v9 = NSErrorF();
      v10[2](v10, v9);
    }

    [*(a1 + 32) _invalidated];
  }
}

- (void)_invalidated
{
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_HMServiceClient <= 50 && (gLogCategory_HMServiceClient != -1 || _LogCategory_Initialize()))
    {
      [HMServiceClient _invalidated];
    }

    if (!self->_xpcCnx)
    {
      v15 = MEMORY[0x2530950A0](self->_activateCompletion, a2);
      activateCompletion = self->_activateCompletion;
      self->_activateCompletion = 0;

      if (v15)
      {
        v4 = *MEMORY[0x277CCA590];
        v5 = NSErrorF();
        v15[2](v15, v5);
      }

      audiogramsAvailableHandler = self->_audiogramsAvailableHandler;
      self->_audiogramsAvailableHandler = 0;

      deviceRecordChangedHandler = self->_deviceRecordChangedHandler;
      self->_deviceRecordChangedHandler = 0;

      interruptionHandler = self->_interruptionHandler;
      self->_interruptionHandler = 0;

      invalidAudiograms = self->_invalidAudiograms;
      self->_invalidAudiograms = 0;

      validAudiograms = self->_validAudiograms;
      self->_validAudiograms = 0;

      v11 = MEMORY[0x2530950A0](self->_invalidationHandler);
      invalidationHandler = self->_invalidationHandler;
      self->_invalidationHandler = 0;

      if (v11)
      {
        v11[2](v11);
      }

      [(NSMutableDictionary *)self->_recordMap removeAllObjects];
      recordMap = self->_recordMap;
      self->_recordMap = 0;

      xpcCnx = self->_xpcCnx;
      self->_xpcCnx = 0;

      self->_invalidateDone = 1;
      if (gLogCategory_HMServiceClient <= 10 && (gLogCategory_HMServiceClient != -1 || _LogCategory_Initialize()))
      {
        [HMServiceClient _invalidated];
      }
    }
  }
}

- (void)_reportError:(id)a3
{
  v6 = a3;
  if (gLogCategory_HMServiceClient <= 90 && (gLogCategory_HMServiceClient != -1 || _LogCategory_Initialize()))
  {
    [HMServiceClient _reportError:];
  }

  v4 = MEMORY[0x2530950A0](self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v4)
  {
    (v4)[2](v4, v6);
  }
}

- (id)getHearingModeDeviceRecordForIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_recordMap objectForKeyedSubscript:v4];
  objc_sync_exit(v5);

  if (gLogCategory_HMServiceClient <= 30 && (gLogCategory_HMServiceClient != -1 || _LogCategory_Initialize()))
  {
    clientID = v5->_clientID;
    LogPrintF();
  }

  return v6;
}

- (id)fetchHearingModeDeviceRecordForIdentifier:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__0;
    v20 = __Block_byref_object_dispose__0;
    v21 = 0;
    v5 = [(HMServiceClient *)self _ensureXPCStarted];
    if (v5)
    {
      if (gLogCategory_HMServiceClient <= 90 && (gLogCategory_HMServiceClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v6 = v17[5];
    }

    else
    {
      xpcCnx = self->_xpcCnx;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __61__HMServiceClient_fetchHearingModeDeviceRecordForIdentifier___block_invoke;
      v14[3] = &unk_2796EEA68;
      v8 = v4;
      v15 = v8;
      v9 = [(NSXPCConnection *)xpcCnx synchronousRemoteObjectProxyWithErrorHandler:v14];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __61__HMServiceClient_fetchHearingModeDeviceRecordForIdentifier___block_invoke_2;
      v11[3] = &unk_2796EEA90;
      v13 = &v16;
      v12 = v8;
      [v9 clientSyncFetchHearingModeDeviceRecordForIdentifier:v12 recordHandler:v11];

      v6 = v17[5];
    }

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __61__HMServiceClient_fetchHearingModeDeviceRecordForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (gLogCategory_HMServiceClient <= 90)
  {
    v7 = v3;
    if (gLogCategory_HMServiceClient != -1 || (v3 = _LogCategory_Initialize(), v4 = v7, v3))
    {
      v6 = *(a1 + 32);
      v3 = LogPrintF();
      v4 = v7;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

void __61__HMServiceClient_fetchHearingModeDeviceRecordForIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (gLogCategory_HMServiceClient <= 30 && (gLogCategory_HMServiceClient != -1 || _LogCategory_Initialize()))
  {
    __61__HMServiceClient_fetchHearingModeDeviceRecordForIdentifier___block_invoke_2_cold_1(a1, a1 + 40);
  }
}

- (void)fetchOcclusionResultForDeviceIdentifier:(id)a3 featureID:(int)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__HMServiceClient_fetchOcclusionResultForDeviceIdentifier_featureID_completion___block_invoke;
  v13[3] = &unk_2796EEB08;
  v14 = v8;
  v15 = v9;
  v13[4] = self;
  v16 = a4;
  v11 = v8;
  v12 = v9;
  dispatch_async(dispatchQueue, v13);
}

void __80__HMServiceClient_fetchOcclusionResultForDeviceIdentifier_featureID_completion___block_invoke(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v2[24] == 1)
  {
    v4 = *MEMORY[0x277CCA590];
    v11 = NSErrorF();
    if (gLogCategory_HMServiceClient <= 90 && (gLogCategory_HMServiceClient != -1 || _LogCategory_Initialize()))
    {
      v10 = *v3;
      LogPrintF();
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), 0);
  }

  else
  {
    v5 = [v2 _ensureXPCStarted];
    if (v5)
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      if (gLogCategory_HMServiceClient <= 30 && (gLogCategory_HMServiceClient != -1 || _LogCategory_Initialize()))
      {
        __80__HMServiceClient_fetchOcclusionResultForDeviceIdentifier_featureID_completion___block_invoke_cold_1(v3, a1);
      }

      v6 = *(*(a1 + 32) + 40);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __80__HMServiceClient_fetchOcclusionResultForDeviceIdentifier_featureID_completion___block_invoke_2;
      v14[3] = &unk_2796EEAB8;
      v15 = *(a1 + 48);
      v7 = [v6 remoteObjectProxyWithErrorHandler:v14];
      v8 = *(a1 + 56);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __80__HMServiceClient_fetchOcclusionResultForDeviceIdentifier_featureID_completion___block_invoke_3;
      v12[3] = &unk_2796EEAE0;
      v9 = *(a1 + 40);
      v13 = *(a1 + 48);
      [v7 clientFetchOcclusionResultForDeviceIdentifier:v9 featureID:v8 completion:v12];
    }
  }
}

void __80__HMServiceClient_fetchOcclusionResultForDeviceIdentifier_featureID_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4 && gLogCategory_HMServiceClient <= 90 && (gLogCategory_HMServiceClient != -1 || _LogCategory_Initialize()))
  {
    __80__HMServiceClient_fetchOcclusionResultForDeviceIdentifier_featureID_completion___block_invoke_3_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)modifyDeviceConfig:(id)a3 identifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__HMServiceClient_modifyDeviceConfig_identifier_completion___block_invoke;
  v15[3] = &unk_2796EEB30;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  dispatch_async(dispatchQueue, v15);
}

void __60__HMServiceClient_modifyDeviceConfig_identifier_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 24) == 1)
  {
    v3 = *MEMORY[0x277CCA590];
    v4 = NSErrorF();
    v16 = v4;
    if (gLogCategory_HMServiceClient <= 90)
    {
      if (gLogCategory_HMServiceClient != -1 || (v5 = _LogCategory_Initialize(), v4 = v16, v5))
      {
        v13 = *(a1 + 32);
        LogPrintF();
        v4 = v16;
      }
    }

    (*(*(a1 + 56) + 16))(*(a1 + 56), v4);
  }

  else
  {
    if (gLogCategory_HMServiceClient <= 30)
    {
      if (gLogCategory_HMServiceClient != -1 || (v6 = _LogCategory_Initialize(), v2 = *(a1 + 32), v6))
      {
        v14 = *(a1 + 40);
        v15 = *(a1 + 48);
        v12 = *(v2 + 64);
        LogPrintF();
        v2 = *(a1 + 32);
      }
    }

    v7 = [v2 _ensureXPCStarted];
    if (v7)
    {
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v8 = *(*(a1 + 32) + 40);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __60__HMServiceClient_modifyDeviceConfig_identifier_completion___block_invoke_2;
      v19[3] = &unk_2796EEAB8;
      v20 = *(a1 + 56);
      v9 = [v8 remoteObjectProxyWithErrorHandler:v19];
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __60__HMServiceClient_modifyDeviceConfig_identifier_completion___block_invoke_3;
      v17[3] = &unk_2796EEAB8;
      v18 = *(a1 + 56);
      [v9 clientModifyDeviceConfig:v10 identifier:v11 completion:v17];
    }
  }
}

uint64_t __60__HMServiceClient_modifyDeviceConfig_identifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (gLogCategory_HMServiceClient <= 90)
  {
    if (gLogCategory_HMServiceClient != -1 || (v4 = _LogCategory_Initialize(), v3 = v7, v4))
    {
      __60__HMServiceClient_modifyDeviceConfig_identifier_completion___block_invoke_2_cold_1();
      v3 = v7;
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = (*(v5 + 16))(v5, v7);
    v3 = v7;
  }

  return MEMORY[0x2821F96F8](v5, v3);
}

uint64_t __60__HMServiceClient_modifyDeviceConfig_identifier_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (v3)
  {
    if (gLogCategory_HMServiceClient <= 90)
    {
      if (gLogCategory_HMServiceClient != -1 || (v4 = _LogCategory_Initialize(), v3 = v7, v4))
      {
        __60__HMServiceClient_modifyDeviceConfig_identifier_completion___block_invoke_3_cold_1();
        v3 = v7;
      }
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = (*(v5 + 16))(v5, v7);
    v3 = v7;
  }

  return MEMORY[0x2821F96F8](v5, v3);
}

- (void)occlusionIndicationShownForDeviceAddress:(id)a3 featureID:(int)a4 type:(int)a5 action:(int)a6
{
  v10 = a3;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__HMServiceClient_occlusionIndicationShownForDeviceAddress_featureID_type_action___block_invoke;
  v13[3] = &unk_2796EEB58;
  v13[4] = self;
  v14 = v10;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v12 = v10;
  dispatch_async(dispatchQueue, v13);
}

uint64_t __82__HMServiceClient_occlusionIndicationShownForDeviceAddress_featureID_type_action___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[24] == 1)
  {
    v3 = *MEMORY[0x277CCA590];
    v4 = NSErrorF();
    v5 = v4;
  }

  else
  {
    v4 = [v2 _ensureXPCStarted];
    v5 = v4;
    if (!v4)
    {
      v9 = 0;
      v6 = [*(*(a1 + 32) + 40) remoteObjectProxy];
      [v6 clientSetOcclusionIndicationShownForDeviceAddress:*(a1 + 40) featureID:*(a1 + 48) type:*(a1 + 52) action:*(a1 + 56)];

      goto LABEL_8;
    }
  }

  if (gLogCategory_HMServiceClient <= 90)
  {
    v9 = v5;
    if (gLogCategory_HMServiceClient != -1 || (v4 = _LogCategory_Initialize(), v5 = v9, v4))
    {
      v8 = *(a1 + 32);
      v4 = LogPrintF();
LABEL_8:
      v5 = v9;
    }
  }

  return MEMORY[0x2821F96F8](v4, v5);
}

- (void)triggerFetchAudiogramsWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HMServiceClient_triggerFetchAudiogramsWithCompletion___block_invoke;
  v7[3] = &unk_2796EE5E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __56__HMServiceClient_triggerFetchAudiogramsWithCompletion___block_invoke(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v2[24] == 1)
  {
    v4 = *MEMORY[0x277CCA590];
    v5 = NSErrorF();
    v12 = v5;
    if (gLogCategory_HMServiceClient <= 90)
    {
      if (gLogCategory_HMServiceClient != -1 || (v10 = _LogCategory_Initialize(), v5 = v12, v10))
      {
        v11 = *v3;
        LogPrintF();
        v5 = v12;
      }
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), v5);
  }

  else
  {
    v6 = [v2 _ensureXPCStarted];
    if (v6)
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      if (gLogCategory_HMServiceClient <= 30 && (gLogCategory_HMServiceClient != -1 || _LogCategory_Initialize()))
      {
        __56__HMServiceClient_triggerFetchAudiogramsWithCompletion___block_invoke_cold_1(v3);
      }

      v7 = *(*(a1 + 32) + 40);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __56__HMServiceClient_triggerFetchAudiogramsWithCompletion___block_invoke_2;
      v15[3] = &unk_2796EEAB8;
      v16 = *(a1 + 40);
      v8 = [v7 remoteObjectProxyWithErrorHandler:v15];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __56__HMServiceClient_triggerFetchAudiogramsWithCompletion___block_invoke_3;
      v13[3] = &unk_2796EEAB8;
      v9 = *(a1 + 32);
      v14 = *(a1 + 40);
      [v8 clientTriggerFetchAudiograms:v9 completion:v13];
    }
  }
}

void __56__HMServiceClient_triggerFetchAudiogramsWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && gLogCategory_HMServiceClient <= 90 && (gLogCategory_HMServiceClient != -1 || _LogCategory_Initialize()))
  {
    __56__HMServiceClient_triggerFetchAudiogramsWithCompletion___block_invoke_3_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)triggerOnDemandDiagnosticCheckForDeviceIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__HMServiceClient_triggerOnDemandDiagnosticCheckForDeviceIdentifier_completion___block_invoke;
  block[3] = &unk_2796EEB80;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(dispatchQueue, block);
}

void __80__HMServiceClient_triggerOnDemandDiagnosticCheckForDeviceIdentifier_completion___block_invoke(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v2[24] == 1)
  {
    v4 = *MEMORY[0x277CCA590];
    v5 = NSErrorF();
    v12 = v5;
    if (gLogCategory_HMServiceClient <= 90)
    {
      if (gLogCategory_HMServiceClient != -1 || (v10 = _LogCategory_Initialize(), v5 = v12, v10))
      {
        v11 = *v3;
        LogPrintF();
        v5 = v12;
      }
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v5);
  }

  else
  {
    v6 = [v2 _ensureXPCStarted];
    if (v6)
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      if (gLogCategory_HMServiceClient <= 30 && (gLogCategory_HMServiceClient != -1 || _LogCategory_Initialize()))
      {
        __80__HMServiceClient_triggerOnDemandDiagnosticCheckForDeviceIdentifier_completion___block_invoke_cold_1(v3, a1);
      }

      v7 = *(*(a1 + 32) + 40);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __80__HMServiceClient_triggerOnDemandDiagnosticCheckForDeviceIdentifier_completion___block_invoke_2;
      v15[3] = &unk_2796EEAB8;
      v16 = *(a1 + 48);
      v8 = [v7 remoteObjectProxyWithErrorHandler:v15];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __80__HMServiceClient_triggerOnDemandDiagnosticCheckForDeviceIdentifier_completion___block_invoke_3;
      v13[3] = &unk_2796EEAB8;
      v9 = *(a1 + 40);
      v14 = *(a1 + 48);
      [v8 clientTriggerOnDemandDiagnosticCheckForDeviceIdentifier:v9 completion:v13];
    }
  }
}

uint64_t __80__HMServiceClient_triggerOnDemandDiagnosticCheckForDeviceIdentifier_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (v3)
  {
    if (gLogCategory_HMServiceClient <= 90)
    {
      if (gLogCategory_HMServiceClient != -1 || (v4 = _LogCategory_Initialize(), v3 = v7, v4))
      {
        __80__HMServiceClient_triggerOnDemandDiagnosticCheckForDeviceIdentifier_completion___block_invoke_3_cold_1();
        v3 = v7;
      }
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = (*(v5 + 16))(v5, v7);
    v3 = v7;
  }

  return MEMORY[0x2821F96F8](v5, v3);
}

- (void)clientHMDeviceRecordChanged:(id)a3
{
  v10 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v10 bluetoothUUID];
  if (v5)
  {
    recordMap = v4->_recordMap;
    if (!recordMap)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v8 = v4->_recordMap;
      v4->_recordMap = v7;

      recordMap = v4->_recordMap;
    }

    [(NSMutableDictionary *)recordMap setObject:v10 forKeyedSubscript:v5];

    objc_sync_exit(v4);
    if (v4->_deviceRecordChangedHandler)
    {
      if (gLogCategory_HMServiceClient <= 30 && (gLogCategory_HMServiceClient != -1 || _LogCategory_Initialize()))
      {
        clientID = v4->_clientID;
        LogPrintF();
      }

      (*(v4->_deviceRecordChangedHandler + 2))(v4->_deviceRecordChangedHandler, v10);
    }

    else if (gLogCategory_HMServiceClient <= 10 && (gLogCategory_HMServiceClient != -1 || _LogCategory_Initialize()))
    {
      [HMServiceClient clientHMDeviceRecordChanged:v4];
    }
  }

  else
  {
    objc_sync_exit(v4);
  }
}

- (void)clientHMDeviceRecordLost:(id)a3
{
  v7 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 bluetoothUUID];
  if (v5)
  {
    [(NSMutableDictionary *)v4->_recordMap setObject:0 forKeyedSubscript:v5];

    objc_sync_exit(v4);
    if (gLogCategory_HMServiceClient <= 30 && (gLogCategory_HMServiceClient != -1 || _LogCategory_Initialize()))
    {
      clientID = v4->_clientID;
      LogPrintF();
    }
  }

  else
  {
    objc_sync_exit(v4);
  }
}

- (void)clientHMDeviceDiagnosticRecordFound:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_deviceDiagnosticRecordFoundHandler)
  {
    if (gLogCategory_HMServiceClient <= 30 && (gLogCategory_HMServiceClient != -1 || _LogCategory_Initialize()))
    {
      clientID = self->_clientID;
      LogPrintF();
    }

    (*(self->_deviceDiagnosticRecordFoundHandler + 2))(self->_deviceDiagnosticRecordFoundHandler, v5);
  }

  else if (gLogCategory_HMServiceClient <= 10 && (gLogCategory_HMServiceClient != -1 || _LogCategory_Initialize()))
  {
    [HMServiceClient clientHMDeviceDiagnosticRecordFound:?];
  }
}

- (void)clientHMAvailableAudiograms:(id)a3 invalidAudiograms:(id)a4 error:(id)a5
{
  v14 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v11 = self;
  objc_sync_enter(v11);
  objc_storeStrong(&v11->_validAudiograms, a3);
  objc_storeStrong(&v11->_invalidAudiograms, a4);
  objc_sync_exit(v11);

  if (gLogCategory_HMServiceClient <= 90 && (gLogCategory_HMServiceClient != -1 || _LogCategory_Initialize()))
  {
    clientID = v11->_clientID;
    LogPrintF();
  }

  audiogramsAvailableHandler = v11->_audiogramsAvailableHandler;
  if (audiogramsAvailableHandler)
  {
    audiogramsAvailableHandler[2](audiogramsAvailableHandler, v11->_validAudiograms, v11->_invalidAudiograms, v10);
  }
}

uint64_t __61__HMServiceClient_fetchHearingModeDeviceRecordForIdentifier___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(*a2 + 8) + 40);
  return LogPrintF();
}

@end