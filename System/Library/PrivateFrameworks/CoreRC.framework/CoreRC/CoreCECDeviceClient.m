@interface CoreCECDeviceClient
- (BOOL)deckControlCommandWithMode:(unint64_t)a3 target:(id)a4 error:(id *)a5;
- (BOOL)deckControlPlayWithMode:(unint64_t)a3 target:(id)a4 error:(id *)a5;
- (BOOL)deckControlRefreshStatus:(id)a3 requestType:(unint64_t)a4 error:(id *)a5;
- (BOOL)deckControlSetDeckStatus:(unint64_t)a3 error:(id *)a4;
- (BOOL)makeActiveSourceWithTVMenus:(BOOL)a3 error:(id *)a4;
- (BOOL)performStandbyWithTargetDevice:(id)a3 error:(id *)a4;
- (BOOL)refreshDevices:(id *)a3;
- (BOOL)refreshProperties:(id)a3 ofDevice:(id)a4 error:(id *)a5;
- (BOOL)requestActiveSource:(id *)a3;
- (BOOL)requestAudioReturnChannelStatusChangeTo:(unint64_t)a3 error:(id *)a4;
- (BOOL)requestAudioStatus:(id *)a3;
- (BOOL)requestSystemAudioModeStatusChangeTo:(unint64_t)a3 error:(id *)a4;
- (BOOL)resignActiveSource:(id *)a3;
- (BOOL)setAudioMuteStatus:(BOOL)a3 error:(id *)a4;
- (BOOL)setAudioReturnChannelControlEnabled:(BOOL)a3 error:(id *)a4;
- (BOOL)setAudioVolumeStatus:(unint64_t)a3 error:(id *)a4;
- (BOOL)setPowerStatus:(unint64_t)a3 error:(id *)a4;
- (BOOL)setSupportedAudioFormats:(const CoreCECAudioFormat *)a3 count:(unint64_t)a4 error:(id *)a5;
- (BOOL)setSystemAudioControlEnabled:(BOOL)a3 error:(id *)a4;
- (BOOL)setTrackAudioStatusEnabled:(BOOL)a3 pressTimeout:(int64_t)a4 pollInterval:(int64_t)a5 error:(id *)a6;
- (BOOL)systemAudioModeRequest:(unint64_t)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (uint64_t)removeFromBus;
- (void)removeFromBus;
@end

@implementation CoreCECDeviceClient

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = CoreCECDeviceClient;
  return [(CoreRCDevice *)&v4 copyWithZone:a3];
}

- (BOOL)deckControlSetDeckStatus:(unint64_t)a3 error:(id *)a4
{
  v7 = [(CoreRCDevice *)self manager];
  if (!v7)
  {
    [CoreCECDeviceClient deckControlSetDeckStatus:error:];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__CoreCECDeviceClient_deckControlSetDeckStatus_error___block_invoke;
  v9[3] = &unk_278EA4348;
  v9[5] = self;
  v9[6] = a3;
  v9[4] = v7;
  return CoreRCWaitForAsyncOperation(a4, v9);
}

- (BOOL)deckControlCommandWithMode:(unint64_t)a3 target:(id)a4 error:(id *)a5
{
  v9 = [(CoreRCDevice *)self manager];
  if (!v9)
  {
    [CoreCECDeviceClient deckControlCommandWithMode:target:error:];
  }

  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    CoreCECDeckControlModeString(a3);
    LogPrintF();
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__CoreCECDeviceClient_deckControlCommandWithMode_target_error___block_invoke;
  v11[3] = &unk_278EA4500;
  v11[4] = v9;
  v11[5] = self;
  v11[6] = a4;
  v11[7] = a3;
  return CoreRCWaitForAsyncOperation(a5, v11);
}

- (BOOL)deckControlPlayWithMode:(unint64_t)a3 target:(id)a4 error:(id *)a5
{
  v9 = [(CoreRCDevice *)self manager];
  if (!v9)
  {
    [CoreCECDeviceClient deckControlPlayWithMode:target:error:];
  }

  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    CoreCECPlayModeString(a3);
    LogPrintF();
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__CoreCECDeviceClient_deckControlPlayWithMode_target_error___block_invoke;
  v11[3] = &unk_278EA4500;
  v11[4] = v9;
  v11[5] = self;
  v11[6] = a4;
  v11[7] = a3;
  return CoreRCWaitForAsyncOperation(a5, v11);
}

- (BOOL)deckControlRefreshStatus:(id)a3 requestType:(unint64_t)a4 error:(id *)a5
{
  v9 = [(CoreRCDevice *)self manager];
  if (!v9)
  {
    [CoreCECDeviceClient deckControlRefreshStatus:requestType:error:];
  }

  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__CoreCECDeviceClient_deckControlRefreshStatus_requestType_error___block_invoke;
  v11[3] = &unk_278EA4500;
  v11[4] = v9;
  v11[5] = self;
  v11[6] = a3;
  v11[7] = a4;
  return CoreRCWaitForAsyncOperation(a5, v11);
}

- (BOOL)makeActiveSourceWithTVMenus:(BOOL)a3 error:(id *)a4
{
  v7 = [(CoreRCDevice *)self manager];
  if (!v7)
  {
    [CoreCECDeviceClient makeActiveSourceWithTVMenus:error:];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__CoreCECDeviceClient_makeActiveSourceWithTVMenus_error___block_invoke;
  v9[3] = &unk_278EA2938;
  v9[4] = v7;
  v9[5] = self;
  v10 = a3;
  return CoreRCWaitForAsyncOperation(a4, v9);
}

- (BOOL)performStandbyWithTargetDevice:(id)a3 error:(id *)a4
{
  v7 = [(CoreRCDevice *)self manager];
  if (!v7)
  {
    [CoreCECDeviceClient performStandbyWithTargetDevice:error:];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__CoreCECDeviceClient_performStandbyWithTargetDevice_error___block_invoke;
  v9[3] = &unk_278EA2910;
  v9[4] = v7;
  v9[5] = self;
  v9[6] = a3;
  return CoreRCWaitForAsyncOperation(a4, v9);
}

- (BOOL)refreshDevices:(id *)a3
{
  v5 = [(CoreRCDevice *)self manager];
  if (!v5)
  {
    [CoreCECDeviceClient refreshDevices:];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__CoreCECDeviceClient_refreshDevices___block_invoke;
  v7[3] = &unk_278EA32B8;
  v7[4] = v5;
  v7[5] = self;
  return CoreRCWaitForAsyncOperation(a3, v7);
}

- (BOOL)refreshProperties:(id)a3 ofDevice:(id)a4 error:(id *)a5
{
  v9 = [(CoreRCDevice *)self manager];
  if (!v9)
  {
    [CoreCECDeviceClient refreshProperties:ofDevice:error:];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__CoreCECDeviceClient_refreshProperties_ofDevice_error___block_invoke;
  v11[3] = &unk_278EA3428;
  v11[4] = v9;
  v11[5] = a3;
  v11[6] = a4;
  v11[7] = self;
  return CoreRCWaitForAsyncOperation(a5, v11);
}

- (BOOL)requestActiveSource:(id *)a3
{
  v5 = [(CoreRCDevice *)self manager];
  if (!v5)
  {
    [CoreCECDeviceClient requestActiveSource:];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__CoreCECDeviceClient_requestActiveSource___block_invoke;
  v7[3] = &unk_278EA32B8;
  v7[4] = v5;
  v7[5] = self;
  return CoreRCWaitForAsyncOperation(a3, v7);
}

- (BOOL)resignActiveSource:(id *)a3
{
  v5 = [(CoreRCDevice *)self manager];
  if (!v5)
  {
    [CoreCECDeviceClient resignActiveSource:];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__CoreCECDeviceClient_resignActiveSource___block_invoke;
  v7[3] = &unk_278EA32B8;
  v7[4] = v5;
  v7[5] = self;
  return CoreRCWaitForAsyncOperation(a3, v7);
}

- (BOOL)setSystemAudioControlEnabled:(BOOL)a3 error:(id *)a4
{
  v7 = [(CoreRCDevice *)self manager];
  if (!v7)
  {
    [CoreCECDeviceClient setSystemAudioControlEnabled:error:];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__CoreCECDeviceClient_setSystemAudioControlEnabled_error___block_invoke;
  v9[3] = &unk_278EA2938;
  v10 = a3;
  v9[4] = v7;
  v9[5] = self;
  return CoreRCWaitForAsyncOperation(a4, v9);
}

- (BOOL)systemAudioModeRequest:(unint64_t)a3 error:(id *)a4
{
  v7 = [(CoreRCDevice *)self manager];
  if (!v7)
  {
    [CoreCECDeviceClient systemAudioModeRequest:error:];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__CoreCECDeviceClient_systemAudioModeRequest_error___block_invoke;
  v9[3] = &unk_278EA4348;
  v9[4] = v7;
  v9[5] = self;
  v9[6] = a3;
  return CoreRCWaitForAsyncOperation(a4, v9);
}

- (BOOL)setAudioReturnChannelControlEnabled:(BOOL)a3 error:(id *)a4
{
  v7 = [(CoreRCDevice *)self manager];
  if (!v7)
  {
    [CoreCECDeviceClient setAudioReturnChannelControlEnabled:error:];
  }

  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceClient setAudioReturnChannelControlEnabled:error:];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__CoreCECDeviceClient_setAudioReturnChannelControlEnabled_error___block_invoke;
  v9[3] = &unk_278EA2938;
  v10 = a3;
  v9[4] = v7;
  v9[5] = self;
  return CoreRCWaitForAsyncOperation(a4, v9);
}

- (BOOL)requestAudioReturnChannelStatusChangeTo:(unint64_t)a3 error:(id *)a4
{
  v7 = [(CoreRCDevice *)self manager];
  if (!v7)
  {
    if (gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceClient requestAudioReturnChannelStatusChangeTo:error:];
      if (a4)
      {
        goto LABEL_10;
      }
    }

    else if (a4)
    {
LABEL_10:
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6726 userInfo:0];
      result = 0;
      *a4 = v10;
      return result;
    }

    return 0;
  }

  v8 = v7;
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceClient requestAudioReturnChannelStatusChangeTo:error:];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__CoreCECDeviceClient_requestAudioReturnChannelStatusChangeTo_error___block_invoke;
  v11[3] = &unk_278EA4348;
  v11[5] = self;
  v11[6] = a3;
  v11[4] = v8;
  return CoreRCWaitForAsyncOperation(a4, v11);
}

- (BOOL)setAudioVolumeStatus:(unint64_t)a3 error:(id *)a4
{
  v7 = [(CoreRCDevice *)self manager];
  if (!v7)
  {
    [CoreCECDeviceClient setAudioVolumeStatus:error:];
  }

  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceClient setAudioVolumeStatus:error:];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__CoreCECDeviceClient_setAudioVolumeStatus_error___block_invoke;
  v9[3] = &unk_278EA4348;
  v9[5] = self;
  v9[6] = a3;
  v9[4] = v7;
  return CoreRCWaitForAsyncOperation(a4, v9);
}

- (BOOL)setAudioMuteStatus:(BOOL)a3 error:(id *)a4
{
  v7 = [(CoreRCDevice *)self manager];
  if (!v7)
  {
    [CoreCECDeviceClient setAudioMuteStatus:error:];
  }

  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceClient setAudioMuteStatus:error:];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__CoreCECDeviceClient_setAudioMuteStatus_error___block_invoke;
  v9[3] = &unk_278EA2938;
  v10 = a3;
  v9[4] = v7;
  v9[5] = self;
  return CoreRCWaitForAsyncOperation(a4, v9);
}

- (BOOL)setSupportedAudioFormats:(const CoreCECAudioFormat *)a3 count:(unint64_t)a4 error:(id *)a5
{
  v8 = [(CoreRCDevice *)self manager];
  v9 = [MEMORY[0x277CBEB38] dictionary];
  if (v8)
  {
    if (!a4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    [CoreCECDeviceClient setSupportedAudioFormats:count:error:];
    if (!a4)
    {
      goto LABEL_13;
    }
  }

  v10 = 0;
  do
  {
    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceClient setSupportedAudioFormats:a3->var0 count:? error:?];
    }

    v11 = (a3->var0[0] >> 3) & 0xF;
    if (v11 == 15)
    {
      v11 = (a3->var0[2] >> 3) | 0x40u;
    }

    v12 = [MEMORY[0x277CBEA90] dataWithBytes:a3 length:3];
    [v9 setObject:v12 forKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", v11)}];
    ++v10;
    ++a3;
  }

  while (a4 != v10);
LABEL_13:
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v9];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __60__CoreCECDeviceClient_setSupportedAudioFormats_count_error___block_invoke;
  v16[3] = &unk_278EA2910;
  v16[4] = v8;
  v16[5] = v13;
  v16[6] = self;
  return CoreRCWaitForAsyncOperation(a5, v16);
}

- (BOOL)setTrackAudioStatusEnabled:(BOOL)a3 pressTimeout:(int64_t)a4 pollInterval:(int64_t)a5 error:(id *)a6
{
  v11 = [(CoreRCDevice *)self manager];
  if (!v11)
  {
    [CoreCECDeviceClient setTrackAudioStatusEnabled:pressTimeout:pollInterval:error:];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__CoreCECDeviceClient_setTrackAudioStatusEnabled_pressTimeout_pollInterval_error___block_invoke;
  v13[3] = &unk_278EA4528;
  v14 = a3;
  v13[6] = a4;
  v13[7] = a5;
  v13[4] = v11;
  v13[5] = self;
  return CoreRCWaitForAsyncOperation(a6, v13);
}

- (BOOL)requestAudioStatus:(id *)a3
{
  v5 = [(CoreRCDevice *)self manager];
  if (!v5)
  {
    [CoreCECDeviceClient requestAudioStatus:];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__CoreCECDeviceClient_requestAudioStatus___block_invoke;
  v7[3] = &unk_278EA32B8;
  v7[4] = v5;
  v7[5] = self;
  return CoreRCWaitForAsyncOperation(a3, v7);
}

- (BOOL)requestSystemAudioModeStatusChangeTo:(unint64_t)a3 error:(id *)a4
{
  v7 = [(CoreRCDevice *)self manager];
  if (!v7)
  {
    if (gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceClient requestSystemAudioModeStatusChangeTo:error:];
      if (a4)
      {
        goto LABEL_10;
      }
    }

    else if (a4)
    {
LABEL_10:
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6726 userInfo:0];
      result = 0;
      *a4 = v10;
      return result;
    }

    return 0;
  }

  v8 = v7;
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceClient requestSystemAudioModeStatusChangeTo:error:];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__CoreCECDeviceClient_requestSystemAudioModeStatusChangeTo_error___block_invoke;
  v11[3] = &unk_278EA4348;
  v11[5] = self;
  v11[6] = a3;
  v11[4] = v8;
  return CoreRCWaitForAsyncOperation(a4, v11);
}

- (void)removeFromBus
{
  v3 = [(CoreRCDevice *)self manager];
  if (!v3)
  {
    [CoreCECDeviceClient removeFromBus];
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__CoreCECDeviceClient_removeFromBus__block_invoke;
  v4[3] = &unk_278EA32B8;
  v4[4] = v3;
  v4[5] = self;
  if ((CoreRCWaitForAsyncOperation(0, v4) & 1) == 0)
  {
    [CoreCECDeviceClient removeFromBus];
  }
}

- (BOOL)setPowerStatus:(unint64_t)a3 error:(id *)a4
{
  v8 = [(CoreRCDevice *)self manager];
  if (!v8)
  {
    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__CoreCECDeviceClient_setPowerStatus_error___block_invoke;
  v13[3] = &unk_278EA4348;
  v13[5] = self;
  v13[6] = a3;
  v13[4] = v8;
  v9 = CoreRCWaitForAsyncOperation(a4, v13);
  if (v9)
  {
    OUTLINED_FUNCTION_0_6();
    LOBYTE(v9) = objc_msgSendSuper2(v10, v11);
  }

  return v9;
}

- (uint64_t)deckControlSetDeckStatus:error:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (uint64_t)deckControlCommandWithMode:target:error:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (uint64_t)deckControlPlayWithMode:target:error:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (uint64_t)deckControlRefreshStatus:requestType:error:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (uint64_t)makeActiveSourceWithTVMenus:error:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (uint64_t)performStandbyWithTargetDevice:error:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (uint64_t)refreshDevices:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (uint64_t)refreshProperties:ofDevice:error:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (uint64_t)requestActiveSource:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (uint64_t)resignActiveSource:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (uint64_t)setSystemAudioControlEnabled:error:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (uint64_t)systemAudioModeRequest:error:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (uint64_t)setAudioReturnChannelControlEnabled:error:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (uint64_t)requestAudioReturnChannelStatusChangeTo:error:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  objc_opt_class();
  CoreCECActivationStatusString(v0);
  return LogPrintF();
}

- (uint64_t)setAudioVolumeStatus:error:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (uint64_t)setAudioVolumeStatus:error:.cold.2()
{
  OUTLINED_FUNCTION_1_4();
  objc_opt_class();
  return LogPrintF();
}

- (uint64_t)setAudioMuteStatus:error:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (uint64_t)setSupportedAudioFormats:count:error:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (uint64_t)setSupportedAudioFormats:(uint64_t)a1 count:(unsigned __int8 *)a2 error:.cold.2(uint64_t a1, unsigned __int8 *a2)
{
  objc_opt_class();
  v5 = a2[1];
  v6 = a2[2];
  v4 = *a2;
  return LogPrintF();
}

- (uint64_t)setTrackAudioStatusEnabled:pressTimeout:pollInterval:error:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (uint64_t)requestAudioStatus:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (uint64_t)requestSystemAudioModeStatusChangeTo:error:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  objc_opt_class();
  CoreCECActivationStatusString(v0);
  return LogPrintF();
}

- (uint64_t)removeFromBus
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

@end