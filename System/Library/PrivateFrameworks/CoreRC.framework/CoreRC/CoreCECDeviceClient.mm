@interface CoreCECDeviceClient
- (BOOL)deckControlCommandWithMode:(unint64_t)mode target:(id)target error:(id *)error;
- (BOOL)deckControlPlayWithMode:(unint64_t)mode target:(id)target error:(id *)error;
- (BOOL)deckControlRefreshStatus:(id)status requestType:(unint64_t)type error:(id *)error;
- (BOOL)deckControlSetDeckStatus:(unint64_t)status error:(id *)error;
- (BOOL)makeActiveSourceWithTVMenus:(BOOL)menus error:(id *)error;
- (BOOL)performStandbyWithTargetDevice:(id)device error:(id *)error;
- (BOOL)refreshDevices:(id *)devices;
- (BOOL)refreshProperties:(id)properties ofDevice:(id)device error:(id *)error;
- (BOOL)requestActiveSource:(id *)source;
- (BOOL)requestAudioReturnChannelStatusChangeTo:(unint64_t)to error:(id *)error;
- (BOOL)requestAudioStatus:(id *)status;
- (BOOL)requestSystemAudioModeStatusChangeTo:(unint64_t)to error:(id *)error;
- (BOOL)resignActiveSource:(id *)source;
- (BOOL)setAudioMuteStatus:(BOOL)status error:(id *)error;
- (BOOL)setAudioReturnChannelControlEnabled:(BOOL)enabled error:(id *)error;
- (BOOL)setAudioVolumeStatus:(unint64_t)status error:(id *)error;
- (BOOL)setPowerStatus:(unint64_t)status error:(id *)error;
- (BOOL)setSupportedAudioFormats:(const CoreCECAudioFormat *)formats count:(unint64_t)count error:(id *)error;
- (BOOL)setSystemAudioControlEnabled:(BOOL)enabled error:(id *)error;
- (BOOL)setTrackAudioStatusEnabled:(BOOL)enabled pressTimeout:(int64_t)timeout pollInterval:(int64_t)interval error:(id *)error;
- (BOOL)systemAudioModeRequest:(unint64_t)request error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (uint64_t)removeFromBus;
- (void)removeFromBus;
@end

@implementation CoreCECDeviceClient

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = CoreCECDeviceClient;
  return [(CoreRCDevice *)&v4 copyWithZone:zone];
}

- (BOOL)deckControlSetDeckStatus:(unint64_t)status error:(id *)error
{
  manager = [(CoreRCDevice *)self manager];
  if (!manager)
  {
    [CoreCECDeviceClient deckControlSetDeckStatus:error:];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__CoreCECDeviceClient_deckControlSetDeckStatus_error___block_invoke;
  v9[3] = &unk_278EA4348;
  v9[5] = self;
  v9[6] = status;
  v9[4] = manager;
  return CoreRCWaitForAsyncOperation(error, v9);
}

- (BOOL)deckControlCommandWithMode:(unint64_t)mode target:(id)target error:(id *)error
{
  manager = [(CoreRCDevice *)self manager];
  if (!manager)
  {
    [CoreCECDeviceClient deckControlCommandWithMode:target:error:];
  }

  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    CoreCECDeckControlModeString(mode);
    LogPrintF();
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__CoreCECDeviceClient_deckControlCommandWithMode_target_error___block_invoke;
  v11[3] = &unk_278EA4500;
  v11[4] = manager;
  v11[5] = self;
  v11[6] = target;
  v11[7] = mode;
  return CoreRCWaitForAsyncOperation(error, v11);
}

- (BOOL)deckControlPlayWithMode:(unint64_t)mode target:(id)target error:(id *)error
{
  manager = [(CoreRCDevice *)self manager];
  if (!manager)
  {
    [CoreCECDeviceClient deckControlPlayWithMode:target:error:];
  }

  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    CoreCECPlayModeString(mode);
    LogPrintF();
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__CoreCECDeviceClient_deckControlPlayWithMode_target_error___block_invoke;
  v11[3] = &unk_278EA4500;
  v11[4] = manager;
  v11[5] = self;
  v11[6] = target;
  v11[7] = mode;
  return CoreRCWaitForAsyncOperation(error, v11);
}

- (BOOL)deckControlRefreshStatus:(id)status requestType:(unint64_t)type error:(id *)error
{
  manager = [(CoreRCDevice *)self manager];
  if (!manager)
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
  v11[4] = manager;
  v11[5] = self;
  v11[6] = status;
  v11[7] = type;
  return CoreRCWaitForAsyncOperation(error, v11);
}

- (BOOL)makeActiveSourceWithTVMenus:(BOOL)menus error:(id *)error
{
  manager = [(CoreRCDevice *)self manager];
  if (!manager)
  {
    [CoreCECDeviceClient makeActiveSourceWithTVMenus:error:];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__CoreCECDeviceClient_makeActiveSourceWithTVMenus_error___block_invoke;
  v9[3] = &unk_278EA2938;
  v9[4] = manager;
  v9[5] = self;
  menusCopy = menus;
  return CoreRCWaitForAsyncOperation(error, v9);
}

- (BOOL)performStandbyWithTargetDevice:(id)device error:(id *)error
{
  manager = [(CoreRCDevice *)self manager];
  if (!manager)
  {
    [CoreCECDeviceClient performStandbyWithTargetDevice:error:];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__CoreCECDeviceClient_performStandbyWithTargetDevice_error___block_invoke;
  v9[3] = &unk_278EA2910;
  v9[4] = manager;
  v9[5] = self;
  v9[6] = device;
  return CoreRCWaitForAsyncOperation(error, v9);
}

- (BOOL)refreshDevices:(id *)devices
{
  manager = [(CoreRCDevice *)self manager];
  if (!manager)
  {
    [CoreCECDeviceClient refreshDevices:];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__CoreCECDeviceClient_refreshDevices___block_invoke;
  v7[3] = &unk_278EA32B8;
  v7[4] = manager;
  v7[5] = self;
  return CoreRCWaitForAsyncOperation(devices, v7);
}

- (BOOL)refreshProperties:(id)properties ofDevice:(id)device error:(id *)error
{
  manager = [(CoreRCDevice *)self manager];
  if (!manager)
  {
    [CoreCECDeviceClient refreshProperties:ofDevice:error:];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__CoreCECDeviceClient_refreshProperties_ofDevice_error___block_invoke;
  v11[3] = &unk_278EA3428;
  v11[4] = manager;
  v11[5] = properties;
  v11[6] = device;
  v11[7] = self;
  return CoreRCWaitForAsyncOperation(error, v11);
}

- (BOOL)requestActiveSource:(id *)source
{
  manager = [(CoreRCDevice *)self manager];
  if (!manager)
  {
    [CoreCECDeviceClient requestActiveSource:];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__CoreCECDeviceClient_requestActiveSource___block_invoke;
  v7[3] = &unk_278EA32B8;
  v7[4] = manager;
  v7[5] = self;
  return CoreRCWaitForAsyncOperation(source, v7);
}

- (BOOL)resignActiveSource:(id *)source
{
  manager = [(CoreRCDevice *)self manager];
  if (!manager)
  {
    [CoreCECDeviceClient resignActiveSource:];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__CoreCECDeviceClient_resignActiveSource___block_invoke;
  v7[3] = &unk_278EA32B8;
  v7[4] = manager;
  v7[5] = self;
  return CoreRCWaitForAsyncOperation(source, v7);
}

- (BOOL)setSystemAudioControlEnabled:(BOOL)enabled error:(id *)error
{
  manager = [(CoreRCDevice *)self manager];
  if (!manager)
  {
    [CoreCECDeviceClient setSystemAudioControlEnabled:error:];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__CoreCECDeviceClient_setSystemAudioControlEnabled_error___block_invoke;
  v9[3] = &unk_278EA2938;
  enabledCopy = enabled;
  v9[4] = manager;
  v9[5] = self;
  return CoreRCWaitForAsyncOperation(error, v9);
}

- (BOOL)systemAudioModeRequest:(unint64_t)request error:(id *)error
{
  manager = [(CoreRCDevice *)self manager];
  if (!manager)
  {
    [CoreCECDeviceClient systemAudioModeRequest:error:];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__CoreCECDeviceClient_systemAudioModeRequest_error___block_invoke;
  v9[3] = &unk_278EA4348;
  v9[4] = manager;
  v9[5] = self;
  v9[6] = request;
  return CoreRCWaitForAsyncOperation(error, v9);
}

- (BOOL)setAudioReturnChannelControlEnabled:(BOOL)enabled error:(id *)error
{
  manager = [(CoreRCDevice *)self manager];
  if (!manager)
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
  enabledCopy = enabled;
  v9[4] = manager;
  v9[5] = self;
  return CoreRCWaitForAsyncOperation(error, v9);
}

- (BOOL)requestAudioReturnChannelStatusChangeTo:(unint64_t)to error:(id *)error
{
  manager = [(CoreRCDevice *)self manager];
  if (!manager)
  {
    if (gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceClient requestAudioReturnChannelStatusChangeTo:error:];
      if (error)
      {
        goto LABEL_10;
      }
    }

    else if (error)
    {
LABEL_10:
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6726 userInfo:0];
      result = 0;
      *error = v10;
      return result;
    }

    return 0;
  }

  v8 = manager;
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceClient requestAudioReturnChannelStatusChangeTo:error:];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__CoreCECDeviceClient_requestAudioReturnChannelStatusChangeTo_error___block_invoke;
  v11[3] = &unk_278EA4348;
  v11[5] = self;
  v11[6] = to;
  v11[4] = v8;
  return CoreRCWaitForAsyncOperation(error, v11);
}

- (BOOL)setAudioVolumeStatus:(unint64_t)status error:(id *)error
{
  manager = [(CoreRCDevice *)self manager];
  if (!manager)
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
  v9[6] = status;
  v9[4] = manager;
  return CoreRCWaitForAsyncOperation(error, v9);
}

- (BOOL)setAudioMuteStatus:(BOOL)status error:(id *)error
{
  manager = [(CoreRCDevice *)self manager];
  if (!manager)
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
  statusCopy = status;
  v9[4] = manager;
  v9[5] = self;
  return CoreRCWaitForAsyncOperation(error, v9);
}

- (BOOL)setSupportedAudioFormats:(const CoreCECAudioFormat *)formats count:(unint64_t)count error:(id *)error
{
  manager = [(CoreRCDevice *)self manager];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (manager)
  {
    if (!count)
    {
      goto LABEL_13;
    }
  }

  else
  {
    [CoreCECDeviceClient setSupportedAudioFormats:count:error:];
    if (!count)
    {
      goto LABEL_13;
    }
  }

  v10 = 0;
  do
  {
    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceClient setSupportedAudioFormats:formats->var0 count:? error:?];
    }

    v11 = (formats->var0[0] >> 3) & 0xF;
    if (v11 == 15)
    {
      v11 = (formats->var0[2] >> 3) | 0x40u;
    }

    v12 = [MEMORY[0x277CBEA90] dataWithBytes:formats length:3];
    [dictionary setObject:v12 forKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", v11)}];
    ++v10;
    ++formats;
  }

  while (count != v10);
LABEL_13:
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __60__CoreCECDeviceClient_setSupportedAudioFormats_count_error___block_invoke;
  v16[3] = &unk_278EA2910;
  v16[4] = manager;
  v16[5] = v13;
  v16[6] = self;
  return CoreRCWaitForAsyncOperation(error, v16);
}

- (BOOL)setTrackAudioStatusEnabled:(BOOL)enabled pressTimeout:(int64_t)timeout pollInterval:(int64_t)interval error:(id *)error
{
  manager = [(CoreRCDevice *)self manager];
  if (!manager)
  {
    [CoreCECDeviceClient setTrackAudioStatusEnabled:pressTimeout:pollInterval:error:];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__CoreCECDeviceClient_setTrackAudioStatusEnabled_pressTimeout_pollInterval_error___block_invoke;
  v13[3] = &unk_278EA4528;
  enabledCopy = enabled;
  v13[6] = timeout;
  v13[7] = interval;
  v13[4] = manager;
  v13[5] = self;
  return CoreRCWaitForAsyncOperation(error, v13);
}

- (BOOL)requestAudioStatus:(id *)status
{
  manager = [(CoreRCDevice *)self manager];
  if (!manager)
  {
    [CoreCECDeviceClient requestAudioStatus:];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__CoreCECDeviceClient_requestAudioStatus___block_invoke;
  v7[3] = &unk_278EA32B8;
  v7[4] = manager;
  v7[5] = self;
  return CoreRCWaitForAsyncOperation(status, v7);
}

- (BOOL)requestSystemAudioModeStatusChangeTo:(unint64_t)to error:(id *)error
{
  manager = [(CoreRCDevice *)self manager];
  if (!manager)
  {
    if (gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceClient requestSystemAudioModeStatusChangeTo:error:];
      if (error)
      {
        goto LABEL_10;
      }
    }

    else if (error)
    {
LABEL_10:
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6726 userInfo:0];
      result = 0;
      *error = v10;
      return result;
    }

    return 0;
  }

  v8 = manager;
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceClient requestSystemAudioModeStatusChangeTo:error:];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__CoreCECDeviceClient_requestSystemAudioModeStatusChangeTo_error___block_invoke;
  v11[3] = &unk_278EA4348;
  v11[5] = self;
  v11[6] = to;
  v11[4] = v8;
  return CoreRCWaitForAsyncOperation(error, v11);
}

- (void)removeFromBus
{
  manager = [(CoreRCDevice *)self manager];
  if (!manager)
  {
    [CoreCECDeviceClient removeFromBus];
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__CoreCECDeviceClient_removeFromBus__block_invoke;
  v4[3] = &unk_278EA32B8;
  v4[4] = manager;
  v4[5] = self;
  if ((CoreRCWaitForAsyncOperation(0, v4) & 1) == 0)
  {
    [CoreCECDeviceClient removeFromBus];
  }
}

- (BOOL)setPowerStatus:(unint64_t)status error:(id *)error
{
  manager = [(CoreRCDevice *)self manager];
  if (!manager)
  {
    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__CoreCECDeviceClient_setPowerStatus_error___block_invoke;
  v13[3] = &unk_278EA4348;
  v13[5] = self;
  v13[6] = status;
  v13[4] = manager;
  v9 = CoreRCWaitForAsyncOperation(error, v13);
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