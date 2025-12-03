@interface HMServiceXPCConnection
- (BOOL)_entitledAndReturnError:(id *)error;
- (void)clientActivate:(id)activate completion:(id)completion;
- (void)clientModifyDeviceConfig:(id)config identifier:(id)identifier completion:(id)completion;
- (void)clientReportDiagnosticRecord:(id)record;
- (void)clientReportHMDeviceRecordChanged:(id)changed;
- (void)clientReportHMDeviceRecordLost:(id)lost;
- (void)clientReportValidAudiograms:(id)audiograms invalidAudiograms:(id)invalidAudiograms error:(id)error;
- (void)clientSyncFetchHearingModeDeviceRecordForIdentifier:(id)identifier recordHandler:(id)handler;
- (void)clientTriggerFetchAudiograms:(id)audiograms completion:(id)completion;
- (void)clientTriggerOnDemandDiagnosticCheckForDeviceIdentifier:(id)identifier completion:(id)completion;
- (void)xpcConnectionInvalidated;
@end

@implementation HMServiceXPCConnection

- (BOOL)_entitledAndReturnError:(id *)error
{
  if (self->_entitled)
  {
    LOBYTE(v3) = 1;
    return v3;
  }

  p_xpcCnx = &self->_xpcCnx;
  v6 = [(NSXPCConnection *)self->_xpcCnx cuValueForEntitlementNoCache:@"com.apple.HearingModeService"];
  v7 = [v6 isEqual:MEMORY[0x277CBEC38]];

  if (v7)
  {
    LOBYTE(v3) = 1;
    self->_entitled = 1;
    return v3;
  }

  if (gLogCategory_HMServiceDaemon > 90)
  {
LABEL_9:
    LOBYTE(v3) = 0;
    return v3;
  }

  if (gLogCategory_HMServiceDaemon != -1 || (v3 = _LogCategory_Initialize()) != 0)
  {
    [HMServiceXPCConnection _entitledAndReturnError:?];
    goto LABEL_9;
  }

  return v3;
}

- (void)xpcConnectionInvalidated
{
  v7 = self->_hearingModeClient;
  hearingModeClient = self->_hearingModeClient;
  self->_hearingModeClient = 0;

  v5 = v7;
  if (v7)
  {
    if (gLogCategory_HMServiceDaemon <= 10)
    {
      if (gLogCategory_HMServiceDaemon != -1 || (v6 = _LogCategory_Initialize(), v5 = v7, v6))
      {
        [HMServiceXPCConnection xpcConnectionInvalidated];
        v5 = v7;
      }
    }

    invalidate = [(HMServiceClient *)v5 invalidate];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](invalidate, v5);
}

- (void)clientActivate:(id)activate completion:(id)completion
{
  activateCopy = activate;
  completionCopy = completion;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__1;
  v30 = __Block_byref_object_dispose__1;
  v31 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __52__HMServiceXPCConnection_clientActivate_completion___block_invoke;
  v23[3] = &unk_2796F0598;
  v25 = &v26;
  v9 = completionCopy;
  v24 = v9;
  v10 = MEMORY[0x253095540](v23);
  if (gLogCategory_HMServiceDaemon <= 10 && (gLogCategory_HMServiceDaemon != -1 || _LogCategory_Initialize()))
  {
    v17 = activateCopy;
    LogPrintF();
  }

  v11 = (v27 + 5);
  obj = v27[5];
  v12 = [(HMServiceXPCConnection *)self _entitledAndReturnError:&obj, v17];
  objc_storeStrong(v11, obj);
  if (v12)
  {
    objc_storeStrong(&self->_hearingModeClient, activate);
    if (v9)
    {
      (*(v9 + 2))(v9, 0);
    }

    [(HMServiceDaemon *)self->_daemon _update];
    v13 = +[HMDeviceManager sharedInstance];
    availableRecords = [v13 availableRecords];

    if (gLogCategory_HMServiceDaemon <= 30 && (gLogCategory_HMServiceDaemon != -1 || _LogCategory_Initialize()))
    {
      v18 = [availableRecords count];
      LogPrintF();
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __52__HMServiceXPCConnection_clientActivate_completion___block_invoke_2;
    v21[3] = &unk_2796F0420;
    v21[4] = self;
    [availableRecords enumerateKeysAndObjectsUsingBlock:{v21, v18}];
    if ([activateCopy internalFlags])
    {
      v15 = +[HMDeviceManager sharedInstance];
      availableDiagnosticRecords = [v15 availableDiagnosticRecords];

      if (gLogCategory_HMServiceDaemon <= 30 && (gLogCategory_HMServiceDaemon != -1 || _LogCategory_Initialize()))
      {
        v19 = [availableDiagnosticRecords count];
        LogPrintF();
      }

      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __52__HMServiceXPCConnection_clientActivate_completion___block_invoke_3;
      v20[3] = &unk_2796F05C0;
      v20[4] = self;
      [availableDiagnosticRecords enumerateKeysAndObjectsUsingBlock:{v20, v19}];
    }
  }

  v10[2](v10);

  _Block_object_dispose(&v26, 8);
}

uint64_t __52__HMServiceXPCConnection_clientActivate_completion___block_invoke(uint64_t result)
{
  if (!*(*(*(result + 40) + 8) + 40))
  {
    return result;
  }

  v1 = result;
  if (gLogCategory_HMServiceDaemon <= 90)
  {
    if (gLogCategory_HMServiceDaemon != -1)
    {
LABEL_4:
      LogPrintF();
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v4 = *(*(*(v1 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v1 + 32);
  if (result)
  {
    v2 = *(*(*(v1 + 40) + 8) + 40);
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)clientSyncFetchHearingModeDeviceRecordForIdentifier:(id)identifier recordHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__1;
  v32 = __Block_byref_object_dispose__1;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __92__HMServiceXPCConnection_clientSyncFetchHearingModeDeviceRecordForIdentifier_recordHandler___block_invoke;
  v18[3] = &unk_2796F05E8;
  v20 = &v22;
  v8 = handlerCopy;
  v19 = v8;
  v21 = &v28;
  v9 = MEMORY[0x253095540](v18);
  v10 = (v23 + 5);
  obj = v23[5];
  LOBYTE(self) = [(HMServiceXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v10, obj);
  if (self)
  {
    v11 = +[HMDeviceManager sharedInstance];
    availableRecords = [v11 availableRecords];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __92__HMServiceXPCConnection_clientSyncFetchHearingModeDeviceRecordForIdentifier_recordHandler___block_invoke_2;
    v14[3] = &unk_2796F04B8;
    v15 = identifierCopy;
    v16 = &v28;
    [availableRecords enumerateKeysAndObjectsUsingBlock:v14];
    if (gLogCategory_HMServiceDaemon <= 30 && (gLogCategory_HMServiceDaemon != -1 || _LogCategory_Initialize()))
    {
      v13 = v29[5];
      LogPrintF();
    }

    (*(v8 + 2))(v8, v29[5]);
  }

  v9[2](v9);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);
}

uint64_t __92__HMServiceXPCConnection_clientSyncFetchHearingModeDeviceRecordForIdentifier_recordHandler___block_invoke(uint64_t result)
{
  if (!*(*(*(result + 40) + 8) + 40))
  {
    return result;
  }

  v1 = result;
  if (gLogCategory_HMServiceDaemon <= 90)
  {
    if (gLogCategory_HMServiceDaemon != -1)
    {
LABEL_4:
      LogPrintF();
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v4 = *(*(v1[5] + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = v1[4];
  if (result)
  {
    v2 = *(*(v1[6] + 8) + 40);
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __92__HMServiceXPCConnection_clientSyncFetchHearingModeDeviceRecordForIdentifier_recordHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v12 = v7;
  v10 = v9;
  if (v10 == v12)
  {

    goto LABEL_6;
  }

  if ((v12 != 0) == (v10 == 0))
  {

    goto LABEL_8;
  }

  v11 = [v12 isEqual:v10];

  if (v11)
  {
LABEL_6:
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }

LABEL_8:
}

uint64_t __93__HMServiceXPCConnection_clientFetchOcclusionResultForDeviceIdentifier_featureID_completion___block_invoke(uint64_t result)
{
  if (!*(*(*(result + 40) + 8) + 40))
  {
    return result;
  }

  v1 = result;
  if (gLogCategory_HMServiceDaemon <= 90)
  {
    if (gLogCategory_HMServiceDaemon != -1)
    {
LABEL_4:
      LogPrintF();
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v4 = *(*(*(v1 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v1 + 32);
  if (result)
  {
    v2 = *(*(*(v1 + 40) + 8) + 40);
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)clientModifyDeviceConfig:(id)config identifier:(id)identifier completion:(id)completion
{
  configCopy = config;
  identifierCopy = identifier;
  completionCopy = completion;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__1;
  v27 = __Block_byref_object_dispose__1;
  v28 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __73__HMServiceXPCConnection_clientModifyDeviceConfig_identifier_completion___block_invoke;
  v20[3] = &unk_2796F0598;
  v22 = &v23;
  v11 = completionCopy;
  v21 = v11;
  v12 = MEMORY[0x253095540](v20);
  if (identifierCopy && configCopy)
  {
    v13 = (v24 + 5);
    obj = v24[5];
    v14 = [(HMServiceXPCConnection *)self _entitledAndReturnError:&obj];
    objc_storeStrong(v13, obj);
    if (v14)
    {
      if (gLogCategory_HMServiceDaemon <= 30 && (gLogCategory_HMServiceDaemon != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
        [(HMServiceDaemon *)self->_daemon _modifyDeviceConfig:configCopy identifier:identifierCopy completion:v11, configCopy];
      }

      else
      {
        [(HMServiceDaemon *)self->_daemon _modifyDeviceConfig:configCopy identifier:identifierCopy completion:v11, v18];
      }
    }
  }

  else
  {
    v15 = *MEMORY[0x277CCA590];
    v16 = NSErrorF();
    v17 = v24[5];
    v24[5] = v16;
  }

  v12[2](v12);

  _Block_object_dispose(&v23, 8);
}

uint64_t __73__HMServiceXPCConnection_clientModifyDeviceConfig_identifier_completion___block_invoke(uint64_t result)
{
  if (!*(*(*(result + 40) + 8) + 40))
  {
    return result;
  }

  v1 = result;
  if (gLogCategory_HMServiceDaemon <= 90)
  {
    if (gLogCategory_HMServiceDaemon != -1)
    {
LABEL_4:
      LogPrintF();
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v4 = *(*(*(v1 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v1 + 32);
  if (result)
  {
    v2 = *(*(*(v1 + 40) + 8) + 40);
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)clientReportValidAudiograms:(id)audiograms invalidAudiograms:(id)invalidAudiograms error:(id)error
{
  if (!self->_audiogramsReported)
  {
    xpcCnx = self->_xpcCnx;
    errorCopy = error;
    invalidAudiogramsCopy = invalidAudiograms;
    audiogramsCopy = audiograms;
    remoteObjectProxy = [(NSXPCConnection *)xpcCnx remoteObjectProxy];
    [remoteObjectProxy clientHMAvailableAudiograms:audiogramsCopy invalidAudiograms:invalidAudiogramsCopy error:errorCopy];

    self->_audiogramsReported = 1;
  }
}

uint64_t __98__HMServiceXPCConnection_clientSetOcclusionIndicationShownForDeviceAddress_featureID_type_action___block_invoke(uint64_t result)
{
  if (*(*(*(result + 32) + 8) + 40) && gLogCategory_HMServiceDaemon <= 90)
  {
    if (gLogCategory_HMServiceDaemon != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(*(*(v1 + 32) + 8) + 40);
      return LogPrintF();
    }
  }

  return result;
}

- (void)clientTriggerFetchAudiograms:(id)audiograms completion:(id)completion
{
  audiogramsCopy = audiograms;
  completionCopy = completion;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  v23 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__HMServiceXPCConnection_clientTriggerFetchAudiograms_completion___block_invoke;
  v15[3] = &unk_2796F0598;
  v17 = &v18;
  v9 = completionCopy;
  v16 = v9;
  v10 = MEMORY[0x253095540](v15);
  v11 = (v19 + 5);
  obj = v19[5];
  v12 = [(HMServiceXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v11, obj);
  if (v12)
  {
    objc_storeStrong(&self->_hearingModeClient, audiograms);
    if (v9)
    {
      (*(v9 + 2))(v9, 0);
    }

    self->_audiogramsReported = 0;
    v13 = +[HMHealthKitUtilities sharedInstance];
    [v13 startAudiogramQuery];
  }

  v10[2](v10);

  _Block_object_dispose(&v18, 8);
}

uint64_t __66__HMServiceXPCConnection_clientTriggerFetchAudiograms_completion___block_invoke(uint64_t result)
{
  if (!*(*(*(result + 40) + 8) + 40))
  {
    return result;
  }

  v1 = result;
  if (gLogCategory_HMServiceDaemon <= 90)
  {
    if (gLogCategory_HMServiceDaemon != -1)
    {
LABEL_4:
      LogPrintF();
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v4 = *(*(*(v1 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v1 + 32);
  if (result)
  {
    v2 = *(*(*(v1 + 40) + 8) + 40);
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)clientTriggerOnDemandDiagnosticCheckForDeviceIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1;
  v24 = __Block_byref_object_dispose__1;
  v25 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __93__HMServiceXPCConnection_clientTriggerOnDemandDiagnosticCheckForDeviceIdentifier_completion___block_invoke;
  v17[3] = &unk_2796F0598;
  v19 = &v20;
  v8 = completionCopy;
  v18 = v8;
  v9 = MEMORY[0x253095540](v17);
  if (identifierCopy)
  {
    v10 = (v21 + 5);
    obj = v21[5];
    v11 = [(HMServiceXPCConnection *)self _entitledAndReturnError:&obj];
    objc_storeStrong(v10, obj);
    if (v11)
    {
      if (gLogCategory_HMServiceDaemon <= 30 && (gLogCategory_HMServiceDaemon != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
        [(HMServiceDaemon *)self->_daemon _triggerDiagnosticCheckForIdentifier:identifierCopy completion:v8, identifierCopy];
      }

      else
      {
        [(HMServiceDaemon *)self->_daemon _triggerDiagnosticCheckForIdentifier:identifierCopy completion:v8, v15];
      }
    }
  }

  else
  {
    v12 = *MEMORY[0x277CCA590];
    v13 = NSErrorF();
    v14 = v21[5];
    v21[5] = v13;
  }

  v9[2](v9);

  _Block_object_dispose(&v20, 8);
}

uint64_t __93__HMServiceXPCConnection_clientTriggerOnDemandDiagnosticCheckForDeviceIdentifier_completion___block_invoke(uint64_t result)
{
  if (!*(*(*(result + 40) + 8) + 40))
  {
    return result;
  }

  v1 = result;
  if (gLogCategory_HMServiceDaemon <= 90)
  {
    if (gLogCategory_HMServiceDaemon != -1)
    {
LABEL_4:
      LogPrintF();
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v4 = *(*(*(v1 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v1 + 32);
  if (result)
  {
    v2 = *(*(*(v1 + 40) + 8) + 40);
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)clientReportHMDeviceRecordChanged:(id)changed
{
  changedCopy = changed;
  bluetoothUUID = [changedCopy bluetoothUUID];
  if (bluetoothUUID)
  {
    bluetoothAddress = [changedCopy bluetoothAddress];
    if (bluetoothAddress)
    {
      records = self->_records;
      if (!records)
      {
        v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v8 = self->_records;
        self->_records = v7;

        records = self->_records;
      }

      [(NSMutableDictionary *)records setObject:changedCopy forKeyedSubscript:bluetoothUUID];
      if (self->_hearingModeClient)
      {
        remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
        [remoteObjectProxy clientHMDeviceRecordChanged:changedCopy];
      }
    }
  }
}

- (void)clientReportHMDeviceRecordLost:(id)lost
{
  lostCopy = lost;
  bluetoothUUID = [lostCopy bluetoothUUID];
  if (bluetoothUUID)
  {
    v5 = [(NSMutableDictionary *)self->_records objectForKeyedSubscript:bluetoothUUID];

    if (v5)
    {
      hearingModeClient = self->_hearingModeClient;
      if (hearingModeClient)
      {
        records = self->_records;
        v8 = hearingModeClient;
        [(NSMutableDictionary *)records setObject:0 forKeyedSubscript:bluetoothUUID];
        remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];

        [remoteObjectProxy clientHMDeviceRecordLost:lostCopy];
      }
    }
  }
}

- (void)clientReportDiagnosticRecord:(id)record
{
  recordCopy = record;
  bluetoothUUID = [recordCopy bluetoothUUID];
  if (bluetoothUUID)
  {
    bluetoothAddress = [recordCopy bluetoothAddress];
    if (bluetoothAddress && self->_hearingModeClient)
    {
      remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
      [remoteObjectProxy clientHMDeviceDiagnosticRecordFound:recordCopy];
    }
  }
}

@end