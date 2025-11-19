@interface CoreCECBusClient
- (BOOL)injectRXMessage:(id)a3 error:(id *)a4;
- (BOOL)injectTXMessage:(id)a3 error:(id *)a4;
- (BOOL)setOSDName:(id)a3 error:(id *)a4;
- (BOOL)setTvLanguageCode:(id)a3 error:(id *)a4;
- (id)addDeviceWithAttributes:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)removeDeviceWithType:(unint64_t)a3;
@end

@implementation CoreCECBusClient

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = CoreCECBusClient;
  return [(CoreRCBus *)&v4 copyWithZone:a3];
}

- (id)addDeviceWithAttributes:(id)a3 error:(id *)a4
{
  v8 = [(CoreRCBus *)self manager];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__4;
  v18 = __Block_byref_object_dispose__4;
  v19 = 0;
  if (!v8)
  {
    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  }

  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__CoreCECBusClient_addDeviceWithAttributes_error___block_invoke;
  v13[3] = &unk_278EA3478;
  v13[4] = v8;
  v13[5] = a3;
  v13[6] = self;
  v13[7] = &v14;
  v9 = CoreRCWaitForAsyncOperation(a4, v13);
  v10 = v15[5];
  if (v9)
  {
    v11 = v10;
    v10 = [(CoreRCBus *)self mergeDevice:v15[5]];
    v15[5] = v10;
  }

  _Block_object_dispose(&v14, 8);
  return v10;
}

uint64_t __50__CoreCECBusClient_addDeviceWithAttributes_error___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v2 = a1[5];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__CoreCECBusClient_addDeviceWithAttributes_error___block_invoke_2;
  v7[3] = &unk_278EA44D8;
  v4 = a1[6];
  v5 = a1[7];
  v7[4] = a2;
  v7[5] = v5;
  return [v3 queryLocalInstanceAsync:v2 bus:v4 reply:v7];
}

uint64_t __50__CoreCECBusClient_addDeviceWithAttributes_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
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

- (void)removeDeviceWithType:(unint64_t)a3
{
  v5 = [(CoreRCBus *)self manager];
  if (!v5)
  {
    [CoreCECBusClient removeDeviceWithType:];
  }

  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreCECBusClient removeDeviceWithType:];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__CoreCECBusClient_removeDeviceWithType___block_invoke;
  v6[3] = &unk_278EA4348;
  v6[5] = self;
  v6[6] = a3;
  v6[4] = v5;
  if ((CoreRCWaitForAsyncOperation(0, v6) & 1) == 0)
  {
    [CoreCECBusClient removeDeviceWithType:];
  }
}

- (BOOL)setTvLanguageCode:(id)a3 error:(id *)a4
{
  v7 = [(CoreRCBus *)self manager];
  if (!v7)
  {
    [CoreCECBusClient setTvLanguageCode:error:];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__CoreCECBusClient_setTvLanguageCode_error___block_invoke;
  v9[3] = &unk_278EA2910;
  v9[4] = v7;
  v9[5] = a3;
  v9[6] = self;
  return CoreRCWaitForAsyncOperation(a4, v9);
}

- (BOOL)injectRXMessage:(id)a3 error:(id *)a4
{
  v7 = [(CoreRCBus *)self manager];
  if (!v7)
  {
    [CoreCECBusClient injectRXMessage:error:];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__CoreCECBusClient_injectRXMessage_error___block_invoke;
  v9[3] = &unk_278EA2910;
  v9[4] = v7;
  v9[5] = a3;
  v9[6] = self;
  return CoreRCWaitForAsyncOperation(a4, v9);
}

- (BOOL)injectTXMessage:(id)a3 error:(id *)a4
{
  v7 = [(CoreRCBus *)self manager];
  if (!v7)
  {
    [CoreCECBusClient injectTXMessage:error:];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__CoreCECBusClient_injectTXMessage_error___block_invoke;
  v9[3] = &unk_278EA2910;
  v9[4] = v7;
  v9[5] = a3;
  v9[6] = self;
  return CoreRCWaitForAsyncOperation(a4, v9);
}

- (BOOL)setOSDName:(id)a3 error:(id *)a4
{
  v8 = [(CoreRCBus *)self manager];
  if (!v8)
  {
    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __37__CoreCECBusClient_setOSDName_error___block_invoke;
  v13[3] = &unk_278EA2910;
  v13[4] = v8;
  v13[5] = a3;
  v13[6] = self;
  v9 = CoreRCWaitForAsyncOperation(a4, v13);
  if (v9)
  {
    OUTLINED_FUNCTION_0_6();
    LOBYTE(v9) = objc_msgSendSuper2(v10, v11);
  }

  return v9;
}

- (uint64_t)removeDeviceWithType:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (uint64_t)removeDeviceWithType:.cold.3()
{
  if (gLogCategory_CoreRCXPC <= 40)
  {
    if (gLogCategory_CoreRCXPC != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

- (uint64_t)setTvLanguageCode:error:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (uint64_t)injectRXMessage:error:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (uint64_t)injectTXMessage:error:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

@end