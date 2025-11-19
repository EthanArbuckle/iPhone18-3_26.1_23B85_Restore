@interface CoreIRLearningSessionClient
- (BOOL)addMappingWithProtocolID:(unsigned __int8)a3 options:(unsigned __int8)a4 commandToMap:(unint64_t)a5 command:(unint64_t)a6 repeat:(unint64_t)a7;
- (BOOL)startLearningCommand:(unint64_t)a3;
- (void)endLearning;
@end

@implementation CoreIRLearningSessionClient

- (BOOL)startLearningCommand:(unint64_t)a3
{
  v6 = [(CoreIRLearningSessionClient *)self manager];
  v9 = 0;
  if (!v6)
  {
    [(CoreIRLearningSessionClient *)a2 startLearningCommand:?];
  }

  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreIRLearningSessionClient startLearningCommand:a3];
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__CoreIRLearningSessionClient_startLearningCommand___block_invoke;
  v8[3] = &unk_278EA4348;
  v8[5] = self;
  v8[6] = a3;
  v8[4] = v6;
  return CoreRCWaitForAsyncOperation(&v9, v8);
}

uint64_t __52__CoreIRLearningSessionClient_startLearningCommand___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = [*(a1 + 40) owningDevice];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__CoreIRLearningSessionClient_startLearningCommand___block_invoke_2;
  v7[3] = &unk_278EA28E8;
  v7[4] = a2;
  return [v3 startLearningCommandAsync:v4 withDevice:v5 reply:v7];
}

uint64_t __52__CoreIRLearningSessionClient_startLearningCommand___block_invoke_2(uint64_t a1, char a2, uint64_t a3)
{
  if (!a3 && (a2 & 1) == 0)
  {
    __38__CoreIRBusClient_deleteDevice_error___block_invoke_2_cold_1(&v6);
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

- (void)endLearning
{
  v4 = [(CoreIRLearningSessionClient *)self manager];
  v9 = 0;
  if (!v4)
  {
    [(CoreIRLearningSessionClient *)a2 endLearning];
  }

  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreIRLearningSessionClient endLearning];
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__CoreIRLearningSessionClient_endLearning__block_invoke;
  v8[3] = &unk_278EA32B8;
  v8[4] = v4;
  v8[5] = self;
  CoreRCWaitForAsyncOperation(&v9, v8);
  v5 = v9;
  if (v9 && gLogCategory_CoreRCXPC <= 90)
  {
    if (gLogCategory_CoreRCXPC == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v5 = v9;
    }

    v6 = v5;
    LogPrintF();
  }

LABEL_11:
  v7.receiver = self;
  v7.super_class = CoreIRLearningSessionClient;
  [(CoreIRLearningSession *)&v7 endLearning];
}

uint64_t __42__CoreIRLearningSessionClient_endLearning__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) owningDevice];

  return [v3 endLearningWithDeviceAsync:v4 reply:a2];
}

- (BOOL)addMappingWithProtocolID:(unsigned __int8)a3 options:(unsigned __int8)a4 commandToMap:(unint64_t)a5 command:(unint64_t)a6 repeat:(unint64_t)a7
{
  v14 = [(CoreIRLearningSessionClient *)self manager];
  v19 = 0;
  if (!v14)
  {
    [CoreIRLearningSessionClient addMappingWithProtocolID:a2 options:self commandToMap:? command:? repeat:?];
  }

  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreIRLearningSessionClient addMappingWithProtocolID:options:commandToMap:command:repeat:];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __92__CoreIRLearningSessionClient_addMappingWithProtocolID_options_commandToMap_command_repeat___block_invoke;
  v16[3] = &unk_278EA4370;
  v16[4] = v14;
  v16[5] = self;
  v17 = a3;
  v18 = a4;
  v16[6] = a5;
  v16[7] = a6;
  v16[8] = a7;
  return CoreRCWaitForAsyncOperation(&v19, v16);
}

@end