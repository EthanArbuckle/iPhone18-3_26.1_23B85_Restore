@interface CoreIRDeviceClient
- (BOOL)changeButtonCombination:(id)a3 delay:(double)a4 enabled:(BOOL)a5 error:(id *)a6;
- (BOOL)clearAllStoredCommands:(id *)a3;
- (BOOL)disableButtonCombination:(id)a3 delay:(double)a4 error:(id *)a5;
- (BOOL)enableButtonCombination:(id)a3 delay:(double)a4 error:(id *)a5;
- (BOOL)sendCommand:(id)a3 error:(id *)a4;
- (BOOL)setCommand:(unint64_t)a3 target:(id)a4 forButtonCombination:(id)a5 delay:(double)a6 error:(id *)a7;
- (BOOL)setOSDName:(id)a3 error:(id *)a4;
- (BOOL)updateMappingWithSession:(id)a3 error:(id *)a4;
- (id)startLearningSessionWithReason:(unint64_t)a3 error:(id *)a4;
@end

@implementation CoreIRDeviceClient

- (BOOL)sendCommand:(id)a3 error:(id *)a4
{
  v7 = [(CoreRCDevice *)self manager];
  if (!v7)
  {
    [CoreIRDeviceClient sendCommand:error:];
  }

  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreIRDeviceClient sendCommand:error:];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__CoreIRDeviceClient_sendCommand_error___block_invoke;
  v9[3] = &unk_278EA2910;
  v9[4] = v7;
  v9[5] = a3;
  v9[6] = self;
  return CoreRCWaitForAsyncOperation(a4, v9);
}

- (BOOL)clearAllStoredCommands:(id *)a3
{
  v5 = [(CoreRCDevice *)self manager];
  if (!v5)
  {
    [CoreIRDeviceClient clearAllStoredCommands:];
  }

  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreIRDeviceClient clearAllStoredCommands:];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__CoreIRDeviceClient_clearAllStoredCommands___block_invoke;
  v7[3] = &unk_278EA32B8;
  v7[4] = v5;
  v7[5] = self;
  return CoreRCWaitForAsyncOperation(a3, v7);
}

uint64_t __45__CoreIRDeviceClient_clearAllStoredCommands___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__CoreIRDeviceClient_clearAllStoredCommands___block_invoke_2;
  v5[3] = &unk_278EA28E8;
  v5[4] = a2;
  return [v3 clearAllStoredCommandsFromDeviceAsync:v2 reply:v5];
}

uint64_t __45__CoreIRDeviceClient_clearAllStoredCommands___block_invoke_2(uint64_t a1, const char *a2, uint64_t a3)
{
  if (!a3 && (a2 & 1) == 0)
  {
    __45__CoreIRDeviceClient_clearAllStoredCommands___block_invoke_2_cold_1(&v6, a2);
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

- (BOOL)setCommand:(unint64_t)a3 target:(id)a4 forButtonCombination:(id)a5 delay:(double)a6 error:(id *)a7
{
  v13 = [(CoreRCDevice *)self manager];
  if (!v13)
  {
    [CoreIRDeviceClient setCommand:target:forButtonCombination:delay:error:];
  }

  if (gLogCategory_CoreRCDevice <= 50 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreIRDeviceClient setCommand:target:forButtonCombination:delay:error:];
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__CoreIRDeviceClient_setCommand_target_forButtonCombination_delay_error___block_invoke;
  v15[3] = &unk_278EA32E0;
  v15[7] = a5;
  v15[8] = a3;
  v15[4] = v13;
  v15[5] = a4;
  v15[6] = self;
  *&v15[9] = a6;
  return CoreRCWaitForAsyncOperation(a7, v15);
}

uint64_t __73__CoreIRDeviceClient_setCommand_target_forButtonCombination_delay_error___block_invoke(double *a1, uint64_t a2)
{
  v3 = *(a1 + 7);
  v2 = *(a1 + 8);
  v5 = *(a1 + 4);
  v4 = *(a1 + 5);
  v6 = *(a1 + 6);
  v7 = a1[9];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__CoreIRDeviceClient_setCommand_target_forButtonCombination_delay_error___block_invoke_2;
  v9[3] = &unk_278EA28E8;
  v9[4] = a2;
  return [v5 setCommandAsync:v2 target:v4 source:v6 forButtonCombination:v3 delay:v9 reply:v7];
}

uint64_t __73__CoreIRDeviceClient_setCommand_target_forButtonCombination_delay_error___block_invoke_2(uint64_t a1, const char *a2, uint64_t a3)
{
  if (!a3 && (a2 & 1) == 0)
  {
    __45__CoreIRDeviceClient_clearAllStoredCommands___block_invoke_2_cold_1(&v6, a2);
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

- (BOOL)enableButtonCombination:(id)a3 delay:(double)a4 error:(id *)a5
{
  if (gLogCategory_CoreRCDevice <= 50 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreIRDeviceClient enableButtonCombination:delay:error:];
  }

  return [(CoreIRDeviceClient *)self changeButtonCombination:a3 delay:1 enabled:a5 error:a4];
}

- (BOOL)disableButtonCombination:(id)a3 delay:(double)a4 error:(id *)a5
{
  if (gLogCategory_CoreRCDevice <= 50 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreIRDeviceClient disableButtonCombination:delay:error:];
  }

  return [(CoreIRDeviceClient *)self changeButtonCombination:a3 delay:0 enabled:a5 error:a4];
}

- (BOOL)changeButtonCombination:(id)a3 delay:(double)a4 enabled:(BOOL)a5 error:(id *)a6
{
  v11 = [(CoreRCDevice *)self manager];
  if (!v11)
  {
    [CoreIRDeviceClient changeButtonCombination:delay:enabled:error:];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__CoreIRDeviceClient_changeButtonCombination_delay_enabled_error___block_invoke;
  v13[3] = &unk_278EA3308;
  v13[4] = v11;
  v13[5] = a3;
  *&v13[7] = a4;
  v14 = a5;
  v13[6] = self;
  return CoreRCWaitForAsyncOperation(a6, v13);
}

uint64_t __66__CoreIRDeviceClient_changeButtonCombination_delay_enabled_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 48);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__CoreIRDeviceClient_changeButtonCombination_delay_enabled_error___block_invoke_2;
  v8[3] = &unk_278EA28E8;
  v8[4] = a2;
  return [v3 changeButtonCombinationAsync:v2 delay:v5 enabled:v6 forDevice:v8 reply:v4];
}

uint64_t __66__CoreIRDeviceClient_changeButtonCombination_delay_enabled_error___block_invoke_2(uint64_t a1, const char *a2, uint64_t a3)
{
  if (!a3 && (a2 & 1) == 0)
  {
    __45__CoreIRDeviceClient_clearAllStoredCommands___block_invoke_2_cold_1(&v6, a2);
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

- (id)startLearningSessionWithReason:(unint64_t)a3 error:(id *)a4
{
  v8 = [(CoreRCDevice *)self manager];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  if (!v8)
  {
    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  }

  if (gLogCategory_CoreRCXPC <= 50 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__CoreIRDeviceClient_startLearningSessionWithReason_error___block_invoke;
  v12[3] = &unk_278EA3358;
  v12[4] = v8;
  v12[5] = self;
  v12[6] = &v13;
  v12[7] = a3;
  if (CoreRCWaitForAsyncOperation(a4, v12))
  {
    v9 = [(CoreRCDevice *)self manager];
    [v14[5] setManager:v9];
    [(CoreIRDevice *)self setLearningSession:v14[5]];
  }

  v10 = v14[5];
  _Block_object_dispose(&v13, 8);
  return v10;
}

uint64_t __59__CoreIRDeviceClient_startLearningSessionWithReason_error___block_invoke(void *a1, uint64_t a2)
{
  v4 = a1[4];
  v5 = a1[5];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[7]];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__CoreIRDeviceClient_startLearningSessionWithReason_error___block_invoke_2;
  v9[3] = &unk_278EA3330;
  v7 = a1[6];
  v9[4] = a2;
  v9[5] = v7;
  return [v4 startLearningSessionWithDeviceAsync:v5 forReason:v6 reply:v9];
}

uint64_t __59__CoreIRDeviceClient_startLearningSessionWithReason_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
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

- (BOOL)updateMappingWithSession:(id)a3 error:(id *)a4
{
  v7 = [(CoreRCDevice *)self manager];
  if (!v7)
  {
    [CoreIRDeviceClient updateMappingWithSession:error:];
  }

  if (gLogCategory_CoreRCXPC <= 50 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreIRDeviceClient updateMappingWithSession:error:];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__CoreIRDeviceClient_updateMappingWithSession_error___block_invoke;
  v9[3] = &unk_278EA2910;
  v9[4] = v7;
  v9[5] = a3;
  v9[6] = self;
  return CoreRCWaitForAsyncOperation(a4, v9);
}

uint64_t __53__CoreIRDeviceClient_updateMappingWithSession_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) owningDevice];
  v6 = *(a1 + 48);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__CoreIRDeviceClient_updateMappingWithSession_error___block_invoke_2;
  v8[3] = &unk_278EA28E8;
  v8[4] = a2;
  return [v4 updateMappingWithSessionOwningDeviceAsync:v5 forTargetDevice:v6 reply:v8];
}

uint64_t __53__CoreIRDeviceClient_updateMappingWithSession_error___block_invoke_2(uint64_t a1, const char *a2, uint64_t a3)
{
  if (!a3 && (a2 & 1) == 0)
  {
    __45__CoreIRDeviceClient_clearAllStoredCommands___block_invoke_2_cold_1(&v6, a2);
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

- (BOOL)setOSDName:(id)a3 error:(id *)a4
{
  v8 = [(CoreRCDevice *)self manager];
  if (!v8)
  {
    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  }

  if (gLogCategory_CoreRCDevice <= 50 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    objc_opt_class();
    LogPrintF();
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __39__CoreIRDeviceClient_setOSDName_error___block_invoke;
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

- (uint64_t)sendCommand:error:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (uint64_t)clearAllStoredCommands:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

uint64_t __45__CoreIRDeviceClient_clearAllStoredCommands___block_invoke_2_cold_1(uint64_t *a1, const char *a2)
{
  result = OUTLINED_FUNCTION_2_5(MEMORY[0x277CCA9B8], a2, *MEMORY[0x277CCA590]);
  *a1 = result;
  return result;
}

- (uint64_t)setCommand:target:forButtonCombination:delay:error:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (uint64_t)changeButtonCombination:delay:enabled:error:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (uint64_t)updateMappingWithSession:error:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

@end