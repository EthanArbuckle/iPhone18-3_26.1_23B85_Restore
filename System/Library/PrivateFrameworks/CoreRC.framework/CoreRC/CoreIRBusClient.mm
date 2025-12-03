@interface CoreIRBusClient
- (BOOL)deleteDevice:(id)device error:(id *)error;
- (BOOL)setPairState:(BOOL)state forAppleRemote:(id)remote error:(id *)error;
- (id)addDeviceWithType:(unint64_t)type matching:(id)matching error:(id *)error;
- (id)addDeviceWithType:(unint64_t)type matching:(id)matching learningSession:(id)session error:(id *)error;
@end

@implementation CoreIRBusClient

- (id)addDeviceWithType:(unint64_t)type matching:(id)matching error:(id *)error
{
  manager = [(CoreRCBus *)self manager];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  if (!manager)
  {
    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  }

  if (gLogCategory_CoreRCXPC <= 50 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__CoreIRBusClient_addDeviceWithType_matching_error___block_invoke;
  v15[3] = &unk_278EA2898;
  v15[4] = manager;
  v15[5] = self;
  v15[6] = matching;
  v15[7] = &v16;
  v15[8] = type;
  v11 = CoreRCWaitForAsyncOperation(error, v15);
  v12 = v17[5];
  if (v11)
  {
    v13 = v12;
    v12 = [(CoreRCBus *)self mergeDevice:v17[5]];
    v17[5] = v12;
  }

  _Block_object_dispose(&v16, 8);
  return v12;
}

uint64_t __52__CoreIRBusClient_addDeviceWithType_matching_error___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__CoreIRBusClient_addDeviceWithType_matching_error___block_invoke_2;
  v8[3] = &unk_278EA2870;
  v6 = a1[7];
  v5 = a1[8];
  v8[4] = a2;
  v8[5] = v6;
  return [v3 addDeviceOnBusAsync:v2 withType:v5 matching:v4 reply:v8];
}

uint64_t __52__CoreIRBusClient_addDeviceWithType_matching_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    if (a2)
    {
      *(*(*(a1 + 40) + 8) + 40) = [a2 copy];
    }

    else
    {
      __52__CoreIRBusClient_addDeviceWithType_matching_error___block_invoke_2_cold_1(&v6);
    }
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

- (id)addDeviceWithType:(unint64_t)type matching:(id)matching learningSession:(id)session error:(id *)error
{
  manager = [(CoreRCBus *)self manager];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  if (!manager)
  {
    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  }

  if (gLogCategory_CoreRCXPC <= 50 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [session owningDevice];
    LogPrintF();
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__CoreIRBusClient_addDeviceWithType_matching_learningSession_error___block_invoke;
  v17[3] = &unk_278EA28C0;
  v17[4] = manager;
  v17[5] = self;
  v17[6] = matching;
  v17[7] = session;
  v17[8] = &v18;
  v17[9] = type;
  v13 = CoreRCWaitForAsyncOperation(error, v17);
  v14 = v19[5];
  if (v13)
  {
    v15 = v14;
    v14 = [(CoreRCBus *)self mergeDevice:v19[5]];
    v19[5] = v14;
  }

  _Block_object_dispose(&v18, 8);
  return v14;
}

uint64_t __68__CoreIRBusClient_addDeviceWithType_matching_learningSession_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 72);
  v7 = *(a1 + 48);
  v8 = [*(a1 + 56) owningDevice];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__CoreIRBusClient_addDeviceWithType_matching_learningSession_error___block_invoke_2;
  v11[3] = &unk_278EA2870;
  v9 = *(a1 + 64);
  v11[4] = a2;
  v11[5] = v9;
  return [v4 addDeviceOnBusAsync:v5 withType:v6 matching:v7 withSessionOwningDevice:v8 reply:v11];
}

uint64_t __68__CoreIRBusClient_addDeviceWithType_matching_learningSession_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    if (a2)
    {
      *(*(*(a1 + 40) + 8) + 40) = [a2 copy];
    }

    else
    {
      __52__CoreIRBusClient_addDeviceWithType_matching_error___block_invoke_2_cold_1(&v6);
    }
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

- (BOOL)deleteDevice:(id)device error:(id *)error
{
  manager = [(CoreRCBus *)self manager];
  if (!manager)
  {
    [CoreIRBusClient deleteDevice:a2 error:self];
  }

  if (gLogCategory_CoreRCXPC <= 50 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreIRBusClient deleteDevice:error:];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __38__CoreIRBusClient_deleteDevice_error___block_invoke;
  v10[3] = &unk_278EA2910;
  v10[4] = manager;
  v10[5] = device;
  v10[6] = self;
  return CoreRCWaitForAsyncOperation(error, v10);
}

uint64_t __38__CoreIRBusClient_deleteDevice_error___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__CoreIRBusClient_deleteDevice_error___block_invoke_2;
  v6[3] = &unk_278EA28E8;
  v6[4] = a2;
  return [v3 deleteDeviceAsync:v2 fromBus:v4 reply:v6];
}

uint64_t __38__CoreIRBusClient_deleteDevice_error___block_invoke_2(uint64_t a1, char a2, uint64_t a3)
{
  if (!a3 && (a2 & 1) == 0)
  {
    __38__CoreIRBusClient_deleteDevice_error___block_invoke_2_cold_1(&v6);
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

- (BOOL)setPairState:(BOOL)state forAppleRemote:(id)remote error:(id *)error
{
  stateCopy = state;
  manager = [(CoreRCBus *)self manager];
  if (!manager)
  {
    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  }

  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v14 = objc_opt_class();
    selfCopy = self;
    LogPrintF();
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __53__CoreIRBusClient_setPairState_forAppleRemote_error___block_invoke;
  v16[3] = &unk_278EA2938;
  v17 = stateCopy;
  v16[4] = manager;
  v16[5] = remote;
  v11 = CoreRCWaitForAsyncOperation(error, v16);
  if (v11)
  {
    if (stateCopy)
    {
      remoteCopy = remote;
    }

    else
    {
      remoteCopy = 0;
    }

    LOBYTE(v11) = [(CoreIRBus *)self setPairedAppleRemote:remoteCopy error:error, v14, selfCopy];
  }

  return v11;
}

uint64_t __52__CoreIRBusClient_addDeviceWithType_matching_error___block_invoke_2_cold_1(uint64_t *a1)
{
  result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6712 userInfo:0];
  *a1 = result;
  return result;
}

uint64_t __38__CoreIRBusClient_deleteDevice_error___block_invoke_2_cold_1(uint64_t *a1)
{
  result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6700 userInfo:0];
  *a1 = result;
  return result;
}

@end