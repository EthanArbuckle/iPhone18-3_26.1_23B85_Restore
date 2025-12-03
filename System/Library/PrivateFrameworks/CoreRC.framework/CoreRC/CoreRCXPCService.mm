@interface CoreRCXPCService
- (BOOL)checkEntitlement:(id)entitlement;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CoreRCXPCService)init;
- (void)_addDeviceOnBusAsync:(id)async withType:(unint64_t)type matching:(id)matching reply:(id)reply;
- (void)_addDeviceOnBusAsync:(id)async withType:(unint64_t)type matching:(id)matching withSessionOwningDevice:(id)device reply:(id)reply;
- (void)_changeButtonCombinationAsync:(id)async delay:(double)delay enabled:(BOOL)enabled forDevice:(id)device reply:(id)reply;
- (void)_clearAllStoredCommandsFromDeviceAsync:(id)async reply:(id)reply;
- (void)_deleteDeviceAsync:(id)async fromBus:(id)bus reply:(id)reply;
- (void)_endLearningWithDeviceAsync:(id)async reply:(id)reply;
- (void)_fakeRemoveCECBusAsync:(id)async reply:(id)reply;
- (void)_fakeRemoveCECDeviceAsync:(id)async reply:(id)reply;
- (void)_getExtendedPropertyAsyncForKey:(id)key ofDevice:(id)device reply:(id)reply;
- (void)_getPropertyAsyncForKey:(id)key ofBus:(id)bus reply:(id)reply;
- (void)_injectRXMessageAsync:(id)async forBus:(id)bus reply:(id)reply;
- (void)_injectTXMessageAsync:(id)async forBus:(id)bus reply:(id)reply;
- (void)_performDeckControlCommandAsync:(id)async controlMode:(unint64_t)mode targetDevice:(id)device allowRemoteDevice:(BOOL)remoteDevice reply:(id)reply;
- (void)_performDeckControlPlayAsync:(id)async playMode:(unint64_t)mode targetDevice:(id)device allowRemoteDevice:(BOOL)remoteDevice reply:(id)reply;
- (void)_performDeckControlRefreshStatusAsync:(id)async targetDevice:(id)device requestType:(unint64_t)type allowRemoteDevice:(BOOL)remoteDevice reply:(id)reply;
- (void)_performDeckControlSetDeckStatusAsync:(unint64_t)async forDevice:(id)device allowRemoteDevice:(BOOL)remoteDevice reply:(id)reply;
- (void)_performInactiveSourceAsync:(id)async allowRemoteDevice:(BOOL)device reply:(id)reply;
- (void)_performRefreshDevicesAsync:(id)async allowRemoteDevice:(BOOL)device reply:(id)reply;
- (void)_performRefreshProperties:(id)properties ofDevice:(id)device withDeviceAsync:(id)async allowRemoteDevice:(BOOL)remoteDevice reply:(id)reply;
- (void)_performRemoveDeviceWithTypeAsync:(unint64_t)async bus:(id)bus reply:(id)reply;
- (void)_performRemoveFromBus:(id)bus reply:(id)reply;
- (void)_performRequestActiveSourceAsync:(id)async allowRemoteDevice:(BOOL)device reply:(id)reply;
- (void)_performRequestAudioReturnChannelStatusChangeTo:(unint64_t)to withDeviceAsync:(id)async allowRemoteDevice:(BOOL)device reply:(id)reply;
- (void)_performRequestAudioStatusAsync:(id)async reply:(id)reply;
- (void)_performRequestSystemAudioModeStatusChangeTo:(unint64_t)to withDeviceAsync:(id)async allowRemoteDevice:(BOOL)device reply:(id)reply;
- (void)_performSetAudioVolumeStatus:(unint64_t)status withDeviceAsync:(id)async allowRemoteDevice:(BOOL)device reply:(id)reply;
- (void)_performSetPowerStatus:(unint64_t)status withDeviceAsync:(id)async allowRemoteDevice:(BOOL)device reply:(id)reply;
- (void)_performSetSupportedAudioFormats:(id)formats withDeviceAsync:(id)async allowRemoteDevice:(BOOL)device reply:(id)reply;
- (void)_performStandbyAsync:(id)async targetDevice:(id)device allowRemoteDevice:(BOOL)remoteDevice reply:(id)reply;
- (void)_performSystemAudioModeRequestAsync:(id)async withDesiredState:(unint64_t)state allowRemoteDevice:(BOOL)device reply:(id)reply;
- (void)_queryBusesAsync:(id)async;
- (void)_queryLocalInstanceAsync:(id)async bus:(id)bus client:(id)client reply:(id)reply;
- (void)_sendCommandAsync:(id)async fromDevice:(id)device reply:(id)reply;
- (void)_sendCommandAsync:(unint64_t)async fromDevice:(id)device toDevice:(id)toDevice withDuration:(unint64_t)duration reply:(id)reply;
- (void)_sendHIDEventAsync:(id)async fromDevice:(id)device toDevice:(id)toDevice reply:(id)reply;
- (void)_setCommandAsync:(unint64_t)async target:(id)target source:(id)source forButtonCombination:(id)combination delay:(double)delay reply:(id)reply;
- (void)_setExtendedPropertyAsync:(id)async forKey:(id)key ofDevice:(id)device reply:(id)reply;
- (void)_setOSDNameAsync:(id)async forDevice:(id)device reply:(id)reply;
- (void)_setOsdNameAsync:(id)async forBus:(id)bus reply:(id)reply;
- (void)_setPairStateAsync:(BOOL)async forAppleRemote:(id)remote reply:(id)reply;
- (void)_setPropertyAsync:(id)async forKey:(id)key ofBus:(id)bus reply:(id)reply;
- (void)_setTvLanguageCodeAsync:(id)async forBus:(id)bus reply:(id)reply;
- (void)_startLearningCommandAsync:(unint64_t)async withDevice:(id)device reply:(id)reply;
- (void)_startLearningSessionWithDeviceAsync:(id)async forReason:(id)reason reply:(id)reply;
- (void)_updateMappingWithSessionOwningDeviceAsync:(id)async forTargetDevice:(id)device reply:(id)reply;
- (void)addDeviceOnBusAsync:(id)async withType:(unint64_t)type matching:(id)matching reply:(id)reply;
- (void)addDeviceOnBusAsync:(id)async withType:(unint64_t)type matching:(id)matching withSessionOwningDevice:(id)device reply:(id)reply;
- (void)addMappingWithDeviceAsync:(id)async withProtocolID:(unsigned __int8)d options:(unsigned __int8)options commandToMap:(unint64_t)map command:(unint64_t)command repeat:(unint64_t)repeat reply:(id)reply;
- (void)bus:(id)bus deviceHasBeenAdded:(id)added;
- (void)bus:(id)bus deviceHasBeenRemoved:(id)removed;
- (void)bus:(id)bus deviceHasBeenUpdated:(id)updated;
- (void)cecBus:(id)bus activeSourceHasChangedTo:(id)to fromDevice:(id)device;
- (void)cecBus:(id)bus rxMessageReceived:(id)received;
- (void)cecBus:(id)bus txMessageSent:(id)sent error:(id)error;
- (void)cecDevice:(id)device activeSourceStatusHasChanged:(BOOL)changed;
- (void)cecDevice:(id)device audioStatusReceived:(unint64_t)received muteStatus:(BOOL)status;
- (void)cecDevice:(id)device deckControlCommandHasBeenReceived:(unint64_t)received fromDevice:(id)fromDevice;
- (void)cecDevice:(id)device deckControlPlayHasBeenReceived:(unint64_t)received fromDevice:(id)fromDevice;
- (void)cecDevice:(id)device deckControlStatusHasBeenUpdated:(unint64_t)updated fromDevice:(id)fromDevice;
- (void)cecDevice:(id)device featureAbort:(id)abort;
- (void)cecDevice:(id)device receivedRequestAudioReturnChannelStatusChangeTo:(unint64_t)to fromDevice:(id)fromDevice;
- (void)cecDevice:(id)device receivedRequestSystemAudioModeStatusChangeTo:(unint64_t)to fromDevice:(id)fromDevice;
- (void)cecDevice:(id)device requestAudioReturnChannelStatusChangeTo:(unint64_t)to didFinishWithResult:(BOOL)result error:(id)error;
- (void)cecDevice:(id)device requestSystemAudioModeStatusChangeTo:(unint64_t)to didFinishWithResult:(BOOL)result error:(id)error;
- (void)cecDevice:(id)device standbyRequestHasBeenReceived:(id)received;
- (void)cecDeviceShouldAssertActiveSource:(id)source;
- (void)changeButtonCombinationAsync:(id)async delay:(double)delay enabled:(BOOL)enabled forDevice:(id)device reply:(id)reply;
- (void)clearAllStoredCommandsFromDeviceAsync:(id)async reply:(id)reply;
- (void)connectionInvalidated:(id)invalidated;
- (void)dealloc;
- (void)deleteDeviceAsync:(id)async fromBus:(id)bus reply:(id)reply;
- (void)device:(id)device receivedHIDEvent:(id)event fromDevice:(id)fromDevice;
- (void)endLearningWithDeviceAsync:(id)async reply:(id)reply;
- (void)enumerateClient:(id)client usingBlock:(id)block;
- (void)enumerateClientsHavingEntitlement:(id)entitlement usingBlock:(id)block;
- (void)enumerateClientsUsingBlock:(id)block;
- (void)fakeCreateCECBusAsync:(unsigned __int16)async reply:(id)reply;
- (void)fakeCreateRemoteCECDeviceAsync:(id)async bus:(id)bus logicalAddress:(unsigned __int8)address physicalAddress:(unsigned __int16)physicalAddress reply:(id)reply;
- (void)fakeRemoveCECBusAsync:(id)async reply:(id)reply;
- (void)fakeRemoveCECDeviceAsync:(id)async reply:(id)reply;
- (void)fakeSetCECBusLinkStateAsync:(id)async linkState:(BOOL)state physicalAddress:(unsigned __int16)address reply:(id)reply;
- (void)fakeSetCECDeviceLogicalAddressAsync:(id)async logicalAddress:(unsigned __int8)address reply:(id)reply;
- (void)getExtendedPropertyAsyncForKey:(id)key ofDevice:(id)device reply:(id)reply;
- (void)getPropertyAsyncForKey:(id)key ofBus:(id)bus reply:(id)reply;
- (void)injectRXMessageAsync:(id)async forBus:(id)bus reply:(id)reply;
- (void)injectTXMessageAsync:(id)async forBus:(id)bus reply:(id)reply;
- (void)learningSessionForDevice:(id)device commandProgress:(id)progress;
- (void)learningSessionForDevice:(id)device duplicateCommand:(unint64_t)command target:(id)target;
- (void)learningSessionForDevice:(id)device status:(unint64_t)status;
- (void)learningSessionForDeviceCommandDone:(id)done;
- (void)manager:(id)manager hasAdded:(id)added;
- (void)manager:(id)manager hasRemoved:(id)removed;
- (void)manager:(id)manager hasUpdated:(id)updated;
- (void)performActiveSourceAsync:(id)async withMenus:(BOOL)menus reply:(id)reply;
- (void)performDeckControlCommandAsync:(id)async controlMode:(unint64_t)mode targetDevice:(id)device reply:(id)reply;
- (void)performDeckControlPlayAsync:(id)async playMode:(unint64_t)mode targetDevice:(id)device reply:(id)reply;
- (void)performDeckControlRefreshStatusAsync:(id)async targetDevice:(id)device requestType:(unint64_t)type reply:(id)reply;
- (void)performDeckControlSetDeckStatusAsync:(unint64_t)async forDevice:(id)device reply:(id)reply;
- (void)performInactiveSourceAsync:(id)async reply:(id)reply;
- (void)performRefreshDevicesAsync:(id)async reply:(id)reply;
- (void)performRefreshProperties:(id)properties ofDevice:(id)device withDeviceAsync:(id)async reply:(id)reply;
- (void)performRemoveDeviceWithTypeAsync:(unint64_t)async bus:(id)bus reply:(id)reply;
- (void)performRemoveFromBus:(id)bus reply:(id)reply;
- (void)performRequestActiveSourceAsync:(id)async reply:(id)reply;
- (void)performRequestAudioReturnChannelStatusChangeTo:(unint64_t)to withDeviceAsync:(id)async reply:(id)reply;
- (void)performRequestAudioStatusAsync:(id)async reply:(id)reply;
- (void)performRequestSystemAudioModeStatusChangeTo:(unint64_t)to withDeviceAsync:(id)async reply:(id)reply;
- (void)performSetAudioMuteStatus:(BOOL)status withDeviceAsync:(id)async reply:(id)reply;
- (void)performSetAudioReturnChannelControlEnabled:(BOOL)enabled withDeviceAsync:(id)async reply:(id)reply;
- (void)performSetAudioVolumeStatus:(unint64_t)status withDeviceAsync:(id)async reply:(id)reply;
- (void)performSetPowerStatus:(unint64_t)status withDeviceAsync:(id)async reply:(id)reply;
- (void)performSetSupportedAudioFormats:(id)formats withDeviceAsync:(id)async reply:(id)reply;
- (void)performSetSystemAudioControlEnabled:(BOOL)enabled withDeviceAsync:(id)async reply:(id)reply;
- (void)performSetTrackAudioStatusEnabled:(BOOL)enabled pressTimeout:(int64_t)timeout pollInterval:(int64_t)interval withDeviceAsync:(id)async reply:(id)reply;
- (void)performStandbyAsync:(id)async targetDevice:(id)device reply:(id)reply;
- (void)performSystemAudioModeRequestAsync:(id)async withDesiredState:(unint64_t)state reply:(id)reply;
- (void)queryBusesAsync:(id)async;
- (void)queryLocalInstanceAsync:(id)async bus:(id)bus reply:(id)reply;
- (void)queryLoggingAsync:(id)async;
- (void)sendCommandAsync:(id)async fromDevice:(id)device reply:(id)reply;
- (void)sendCommandAsync:(unint64_t)async fromDevice:(id)device toDevice:(id)toDevice withDuration:(unint64_t)duration reply:(id)reply;
- (void)sendHIDEventAsync:(id)async fromDevice:(id)device toDevice:(id)toDevice reply:(id)reply;
- (void)setCommandAsync:(unint64_t)async target:(id)target source:(id)source forButtonCombination:(id)combination delay:(double)delay reply:(id)reply;
- (void)setExtendedPropertyAsync:(id)async forKey:(id)key ofDevice:(id)device reply:(id)reply;
- (void)setLoggingAsync:(id)async reply:(id)reply;
- (void)setOSDNameAsync:(id)async forDevice:(id)device reply:(id)reply;
- (void)setOsdNameAsync:(id)async forBus:(id)bus reply:(id)reply;
- (void)setPairStateAsync:(BOOL)async forAppleRemote:(id)remote reply:(id)reply;
- (void)setPropertyAsync:(id)async forKey:(id)key ofBus:(id)bus reply:(id)reply;
- (void)setTvLanguageCodeAsync:(id)async forBus:(id)bus reply:(id)reply;
- (void)startLearningCommandAsync:(unint64_t)async withDevice:(id)device reply:(id)reply;
- (void)startLearningSessionWithDeviceAsync:(id)async forReason:(id)reason reply:(id)reply;
- (void)startOnQueue:(id)queue;
- (void)updateMappingWithSessionOwningDeviceAsync:(id)async forTargetDevice:(id)device reply:(id)reply;
@end

@implementation CoreRCXPCService

- (void)fakeCreateCECBusAsync:(unsigned __int16)async reply:(id)reply
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CECPrivate) fakeCreateCECBusAsync:reply:];
  }

  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"])
  {
    queue = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__CoreRCXPCService_CECPrivate__fakeCreateCECBusAsync_reply___block_invoke;
    block[3] = &unk_278EA2B90;
    asyncCopy = async;
    block[4] = self;
    block[5] = reply;
    dispatch_async(queue, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeCreateCECBusAsync:reply reply:v7];
  }
}

- (void)fakeRemoveCECBusAsync:(id)async reply:(id)reply
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply:];
  }

  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"])
  {
    queue = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__CoreRCXPCService_CECPrivate__fakeRemoveCECBusAsync_reply___block_invoke;
    block[3] = &unk_278EA2BB8;
    block[4] = self;
    block[5] = async;
    block[6] = reply;
    dispatch_async(queue, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v7];
  }
}

- (void)_fakeRemoveCECBusAsync:(id)async reply:(id)reply
{
  v6 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedBusEquivalentTo:async];
  if (v6)
  {
    [(CoreRCManager *)[(CoreRCXPCService *)self manager] removeBus:v6];
    if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
    {
      [CoreRCXPCService(CECPrivate) _fakeRemoveCECBusAsync:reply:];
    }

    v8 = 0;
  }

  else
  {
    [CoreRCManagerProvider setProperty:v7 forKey:? ofBus:? error:?];
    v8 = v10;
  }

  v9 = *(reply + 2);

  v9(reply, v8);
}

- (void)fakeSetCECBusLinkStateAsync:(id)async linkState:(BOOL)state physicalAddress:(unsigned __int16)address reply:(id)reply
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CECPrivate) fakeSetCECBusLinkStateAsync:linkState:physicalAddress:reply:];
  }

  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"])
  {
    queue = [(CoreRCXPCService *)self queue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __92__CoreRCXPCService_CECPrivate__fakeSetCECBusLinkStateAsync_linkState_physicalAddress_reply___block_invoke;
    v13[3] = &unk_278EA2BE0;
    v13[4] = self;
    v13[5] = async;
    stateCopy = state;
    addressCopy = address;
    v13[6] = reply;
    dispatch_async(queue, v13);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v11];
  }
}

- (void)fakeCreateRemoteCECDeviceAsync:(id)async bus:(id)bus logicalAddress:(unsigned __int8)address physicalAddress:(unsigned __int16)physicalAddress reply:(id)reply
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CECPrivate) fakeCreateRemoteCECDeviceAsync:bus:logicalAddress:physicalAddress:reply:];
  }

  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"])
  {
    queue = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __104__CoreRCXPCService_CECPrivate__fakeCreateRemoteCECDeviceAsync_bus_logicalAddress_physicalAddress_reply___block_invoke;
    block[3] = &unk_278EA2C08;
    block[4] = self;
    block[5] = async;
    addressCopy = address;
    physicalAddressCopy = physicalAddress;
    block[6] = bus;
    block[7] = reply;
    dispatch_async(queue, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeCreateCECBusAsync:reply reply:v13];
  }
}

- (void)fakeSetCECDeviceLogicalAddressAsync:(id)async logicalAddress:(unsigned __int8)address reply:(id)reply
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CECPrivate) fakeSetCECDeviceLogicalAddressAsync:logicalAddress:reply:];
  }

  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"])
  {
    queue = [(CoreRCXPCService *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __89__CoreRCXPCService_CECPrivate__fakeSetCECDeviceLogicalAddressAsync_logicalAddress_reply___block_invoke;
    v11[3] = &unk_278EA2C30;
    v11[4] = self;
    v11[5] = async;
    addressCopy = address;
    v11[6] = reply;
    dispatch_async(queue, v11);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeCreateCECBusAsync:reply reply:v9];
  }
}

- (void)fakeRemoveCECDeviceAsync:(id)async reply:(id)reply
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECDeviceAsync:reply:];
  }

  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"])
  {
    queue = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__CoreRCXPCService_CECPrivate__fakeRemoveCECDeviceAsync_reply___block_invoke;
    block[3] = &unk_278EA2BB8;
    block[4] = self;
    block[5] = async;
    block[6] = reply;
    dispatch_async(queue, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v7];
  }
}

- (void)_fakeRemoveCECDeviceAsync:(id)async reply:(id)reply
{
  v6 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedBusForDevice:async];
  if (v6 && (v8 = v6, (v9 = [v6 deviceOnBusEquivalentTo:async]) != 0))
  {
    v10 = v9;
    v11 = v9;
    [v8 removeDevice:v10];
    if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
    {
      [CoreRCXPCService(CECPrivate) _fakeRemoveCECDeviceAsync:reply:];
    }

    v12 = 0;
  }

  else
  {
    [CoreRCManagerProvider setProperty:v7 forKey:? ofBus:? error:?];
    v12 = v14;
  }

  v13 = *(reply + 2);

  v13(reply, v12);
}

- (void)setOSDNameAsync:(id)async forDevice:(id)device reply:(id)reply
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__CoreRCXPCService_IR__setOSDNameAsync_forDevice_reply___block_invoke;
    v11[3] = &unk_278EA2D00;
    v11[4] = self;
    v11[5] = async;
    v11[6] = device;
    v11[7] = reply;
    dispatch_async(queue, v11);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v9];
  }
}

- (void)_setOSDNameAsync:(id)async forDevice:(id)device reply:(id)reply
{
  v12 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(IR) _setOSDNameAsync:forDevice:reply:];
  }

  v9 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:device];
  if (v9)
  {
    v10 = v9;
    if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
    {
      [CoreRCXPCService(IR) _setOSDNameAsync:forDevice:reply:];
    }

    [v10 setOSDName:async error:&v12];
    v11 = v12;
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6727 userInfo:0];
    v12 = v11;
  }

  (*(reply + 2))(reply, v11);
}

- (void)setPairStateAsync:(BOOL)async forAppleRemote:(id)remote reply:(id)reply
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __63__CoreRCXPCService_IR__setPairStateAsync_forAppleRemote_reply___block_invoke;
    v11[3] = &unk_278EA2C30;
    asyncCopy = async;
    v11[4] = self;
    v11[5] = remote;
    v11[6] = reply;
    dispatch_async(queue, v11);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v9];
  }
}

- (void)_setPairStateAsync:(BOOL)async forAppleRemote:(id)remote reply:(id)reply
{
  asyncCopy = async;
  v12 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(IR) _setPairStateAsync:a2 forAppleRemote:? reply:?];
  }

  v10 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:remote];
  if (v10)
  {
    v11 = v10;
    if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
    {
      [CoreRCXPCService(IR) _setPairStateAsync:forAppleRemote:reply:];
    }

    if (asyncCopy)
    {
      [v11 pairAppleRemote:&v12];
    }

    else
    {
      [v11 unpairAppleRemote:&v12];
    }
  }

  else
  {
    [CoreRCXPCService(IR) _setPairStateAsync:? forAppleRemote:? reply:?];
  }

  (*(reply + 2))(reply, v12);
}

- (void)addDeviceOnBusAsync:(id)async withType:(unint64_t)type matching:(id)matching reply:(id)reply
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__CoreRCXPCService_IR__addDeviceOnBusAsync_withType_matching_reply___block_invoke;
    block[3] = &unk_278EA2D28;
    block[4] = self;
    block[5] = async;
    block[7] = reply;
    block[8] = type;
    block[6] = matching;
    dispatch_async(queue, block);
  }

  else
  {
    [CoreRCXPCService(IR) addDeviceOnBusAsync:reply withType:v11 matching:? reply:?];
  }
}

- (void)_addDeviceOnBusAsync:(id)async withType:(unint64_t)type matching:(id)matching reply:(id)reply
{
  v14 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(IR) _addDeviceOnBusAsync:withType:matching:reply:];
  }

  v11 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedBusEquivalentTo:async];
  if (v11)
  {
    v12 = v11;
    if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
    {
      [CoreRCXPCService(IR) _addDeviceOnBusAsync:withType:matching:reply:];
    }

    v13 = [v12 addDeviceWithType:type matching:matching error:&v14];
    if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
    {
      [CoreRCXPCService(IR) _addDeviceOnBusAsync:withType:matching:reply:];
    }
  }

  else
  {
    [CoreRCXPCService(IR) _setPairStateAsync:? forAppleRemote:? reply:?];
    v13 = 0;
  }

  (*(reply + 2))(reply, v13, v14);
}

- (void)startLearningSessionWithDeviceAsync:(id)async forReason:(id)reason reply:(id)reply
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __76__CoreRCXPCService_IR__startLearningSessionWithDeviceAsync_forReason_reply___block_invoke;
    v11[3] = &unk_278EA2D00;
    v11[4] = self;
    v11[5] = async;
    v11[6] = reason;
    v11[7] = reply;
    dispatch_async(queue, v11);
  }

  else
  {
    [CoreRCXPCService(IR) addDeviceOnBusAsync:reply withType:v9 matching:? reply:?];
  }
}

- (void)updateMappingWithSessionOwningDeviceAsync:(id)async forTargetDevice:(id)device reply:(id)reply
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __88__CoreRCXPCService_IR__updateMappingWithSessionOwningDeviceAsync_forTargetDevice_reply___block_invoke;
    v11[3] = &unk_278EA2D00;
    v11[4] = self;
    v11[5] = async;
    v11[6] = device;
    v11[7] = reply;
    dispatch_async(queue, v11);
  }

  else
  {
    [CoreRCXPCService(IR) updateMappingWithSessionOwningDeviceAsync:reply forTargetDevice:v9 reply:?];
  }
}

- (void)addDeviceOnBusAsync:(id)async withType:(unint64_t)type matching:(id)matching withSessionOwningDevice:(id)device reply:(id)reply
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __92__CoreRCXPCService_IR__addDeviceOnBusAsync_withType_matching_withSessionOwningDevice_reply___block_invoke;
    v15[3] = &unk_278EA2D50;
    v15[4] = self;
    v15[5] = async;
    v15[6] = matching;
    v15[7] = device;
    v15[8] = reply;
    v15[9] = type;
    dispatch_async(queue, v15);
  }

  else
  {
    [CoreRCXPCService(IR) addDeviceOnBusAsync:reply withType:v13 matching:? reply:?];
  }
}

- (void)_addDeviceOnBusAsync:(id)async withType:(unint64_t)type matching:(id)matching withSessionOwningDevice:(id)device reply:(id)reply
{
  v23 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    asyncCopy = async;
    deviceCopy = device;
    v19 = objc_opt_class();
    Name = sel_getName(a2);
    LogPrintF();
  }

  v14 = [(CoreRCManager *)[(CoreRCXPCService *)self manager:v19] managedBusEquivalentTo:async];
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v14;
  v16 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:device];
  if (!v16)
  {
    [CoreRCXPCService(IR) _addDeviceOnBusAsync:withType:matching:withSessionOwningDevice:reply:];
    goto LABEL_14;
  }

  learningSession = [v16 learningSession];
  if (!learningSession)
  {
LABEL_10:
    [CoreRCXPCService(IR) _setPairStateAsync:? forAppleRemote:? reply:?];
LABEL_14:
    v18 = 0;
    goto LABEL_9;
  }

  v18 = [v15 addDeviceWithType:type matching:matching learningSession:learningSession error:&v23];
  if (!v18)
  {
    [CoreRCXPCService(IR) _addDeviceOnBusAsync:withType:matching:withSessionOwningDevice:reply:];
    goto LABEL_14;
  }

LABEL_9:
  (*(reply + 2))(reply, v18, v23);
}

- (void)deleteDeviceAsync:(id)async fromBus:(id)bus reply:(id)reply
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__CoreRCXPCService_IR__deleteDeviceAsync_fromBus_reply___block_invoke;
    v11[3] = &unk_278EA2D00;
    v11[4] = self;
    v11[5] = async;
    v11[6] = bus;
    v11[7] = reply;
    dispatch_async(queue, v11);
  }

  else
  {
    [CoreRCXPCService(IR) updateMappingWithSessionOwningDeviceAsync:reply forTargetDevice:v9 reply:?];
  }
}

- (void)_deleteDeviceAsync:(id)async fromBus:(id)bus reply:(id)reply
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(IR) _deleteDeviceAsync:fromBus:reply:];
  }

  v9 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:async];
  if (!v9)
  {
LABEL_14:
    [CoreRCXPCService(IR) _setPairStateAsync:? forAppleRemote:? reply:?];
    goto LABEL_15;
  }

  v10 = v9;
  if (![v9 isLocalDevice])
  {
    v11 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedBusEquivalentTo:bus];
    if (v11)
    {
      [v11 removeDevice:v10];
      v12 = 0;
      v13 = 1;
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  [CoreIRBusProvider addDeviceWithType:? matching:? learningSession:? error:?];
LABEL_15:
  v13 = 0;
  v12 = v15;
LABEL_8:
  v14 = *(reply + 2);

  v14(reply, v13, v12);
}

- (void)sendCommandAsync:(id)async fromDevice:(id)device reply:(id)reply
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __58__CoreRCXPCService_IR__sendCommandAsync_fromDevice_reply___block_invoke;
    v11[3] = &unk_278EA2D00;
    v11[4] = self;
    v11[5] = async;
    v11[6] = device;
    v11[7] = reply;
    dispatch_async(queue, v11);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v9];
  }
}

- (void)_sendCommandAsync:(id)async fromDevice:(id)device reply:(id)reply
{
  v11 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(IR) _sendCommandAsync:fromDevice:reply:];
  }

  v9 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:device];
  if (v9)
  {
    [v9 sendCommand:async error:&v11];
    v10 = v11;
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6727 userInfo:0];
    v11 = v10;
  }

  (*(reply + 2))(reply, v10);
}

- (void)clearAllStoredCommandsFromDeviceAsync:(id)async reply:(id)reply
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__CoreRCXPCService_IR__clearAllStoredCommandsFromDeviceAsync_reply___block_invoke;
    block[3] = &unk_278EA2BB8;
    block[4] = self;
    block[5] = async;
    block[6] = reply;
    dispatch_async(queue, block);
  }

  else
  {
    [CoreRCXPCService(IR) updateMappingWithSessionOwningDeviceAsync:reply forTargetDevice:v7 reply:?];
  }
}

- (void)_clearAllStoredCommandsFromDeviceAsync:(id)async reply:(id)reply
{
  v10 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(IR) _clearAllStoredCommandsFromDeviceAsync:reply:];
  }

  v7 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:async];
  if (v7)
  {
    v8 = [v7 clearAllStoredCommands:&v10];
    v9 = v10;
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6727 userInfo:0];
    v8 = 0;
    v10 = v9;
  }

  (*(reply + 2))(reply, v8, v9);
}

- (void)setCommandAsync:(unint64_t)async target:(id)target source:(id)source forButtonCombination:(id)combination delay:(double)delay reply:(id)reply
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __87__CoreRCXPCService_IR__setCommandAsync_target_source_forButtonCombination_delay_reply___block_invoke;
    block[3] = &unk_278EA2D78;
    block[4] = self;
    block[5] = target;
    block[6] = source;
    block[7] = combination;
    *&block[10] = delay;
    block[8] = reply;
    block[9] = async;
    dispatch_async(queue, block);
  }

  else
  {
    [CoreRCXPCService(IR) updateMappingWithSessionOwningDeviceAsync:reply forTargetDevice:v15 reply:?];
  }
}

- (void)_setCommandAsync:(unint64_t)async target:(id)target source:(id)source forButtonCombination:(id)combination delay:(double)delay reply:(id)reply
{
  v19 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(IR) _setCommandAsync:target:source:forButtonCombination:delay:reply:];
  }

  v15 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:source];
  if (!v15)
  {
    goto LABEL_19;
  }

  v16 = v15;
  if (gLogCategory_CoreRCXPC > 10 || gLogCategory_CoreRCXPC == -1 && !_LogCategory_Initialize())
  {
    if (!target)
    {
      goto LABEL_10;
    }

LABEL_9:
    target = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:target];
    if (target)
    {
      goto LABEL_10;
    }

LABEL_19:
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6727 userInfo:0];
    v17 = 0;
    v19 = v18;
    goto LABEL_14;
  }

  [CoreRCXPCService(IR) _setCommandAsync:target:source:forButtonCombination:delay:reply:];
  if (target)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(IR) _setCommandAsync:target:source:forButtonCombination:delay:reply:];
  }

  v17 = [v16 setCommand:async target:target forButtonCombination:combination delay:&v19 error:delay];
  v18 = v19;
LABEL_14:
  (*(reply + 2))(reply, v17, v18);
}

- (void)changeButtonCombinationAsync:(id)async delay:(double)delay enabled:(BOOL)enabled forDevice:(id)device reply:(id)reply
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __83__CoreRCXPCService_IR__changeButtonCombinationAsync_delay_enabled_forDevice_reply___block_invoke;
    v15[3] = &unk_278EA2DA0;
    v15[4] = self;
    v15[5] = async;
    *&v15[8] = delay;
    enabledCopy = enabled;
    v15[6] = device;
    v15[7] = reply;
    dispatch_async(queue, v15);
  }

  else
  {
    [CoreRCXPCService(IR) updateMappingWithSessionOwningDeviceAsync:reply forTargetDevice:v13 reply:?];
  }
}

- (void)_changeButtonCombinationAsync:(id)async delay:(double)delay enabled:(BOOL)enabled forDevice:(id)device reply:(id)reply
{
  enabledCopy = enabled;
  v16 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(IR) _changeButtonCombinationAsync:delay:enabled:forDevice:reply:];
  }

  v13 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:device];
  if (v13)
  {
    if (enabledCopy)
    {
      v14 = [v13 enableButtonCombination:async delay:&v16 error:delay];
    }

    else
    {
      v14 = [v13 disableButtonCombination:async delay:&v16 error:delay];
    }

    v15 = v14;
  }

  else
  {
    [CoreRCXPCService(IR) _setPairStateAsync:? forAppleRemote:? reply:?];
    v15 = 0;
  }

  (*(reply + 2))(reply, v15, v16);
}

- (void)startLearningCommandAsync:(unint64_t)async withDevice:(id)device reply:(id)reply
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __67__CoreRCXPCService_IR__startLearningCommandAsync_withDevice_reply___block_invoke;
    v11[3] = &unk_278EA2DC8;
    v11[4] = self;
    v11[5] = device;
    v11[6] = reply;
    v11[7] = async;
    dispatch_async(queue, v11);
  }

  else
  {
    [CoreRCXPCService(IR) updateMappingWithSessionOwningDeviceAsync:reply forTargetDevice:v9 reply:?];
  }
}

- (void)_startLearningCommandAsync:(unint64_t)async withDevice:(id)device reply:(id)reply
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(IR) _startLearningCommandAsync:withDevice:reply:];
  }

  v9 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:device];
  if (v9 && (v10 = [v9 learningSession]) != 0)
  {
    v11 = [v10 startLearningCommand:async];
    v12 = 0;
  }

  else
  {
    [CoreRCXPCService(IR) _setPairStateAsync:? forAppleRemote:? reply:?];
    v11 = 0;
    v12 = v14;
  }

  v13 = *(reply + 2);

  v13(reply, v11, v12);
}

- (void)endLearningWithDeviceAsync:(id)async reply:(id)reply
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__CoreRCXPCService_IR__endLearningWithDeviceAsync_reply___block_invoke;
    block[3] = &unk_278EA2BB8;
    block[4] = self;
    block[5] = async;
    block[6] = reply;
    dispatch_async(queue, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v7];
  }
}

- (void)_endLearningWithDeviceAsync:(id)async reply:(id)reply
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(IR) _endLearningWithDeviceAsync:reply:];
  }

  v7 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:async];
  if (v7 && (v8 = [v7 learningSession]) != 0)
  {
    [v8 endLearning];
    v9 = 0;
  }

  else
  {
    [CoreRCXPCService(IR) _setPairStateAsync:? forAppleRemote:? reply:?];
    v9 = v11;
  }

  v10 = *(reply + 2);

  v10(reply, v9);
}

- (void)addMappingWithDeviceAsync:(id)async withProtocolID:(unsigned __int8)d options:(unsigned __int8)options commandToMap:(unint64_t)map command:(unint64_t)command repeat:(unint64_t)repeat reply:(id)reply
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __107__CoreRCXPCService_IR__addMappingWithDeviceAsync_withProtocolID_options_commandToMap_command_repeat_reply___block_invoke;
    block[3] = &unk_278EA2DF0;
    block[4] = self;
    block[5] = async;
    dCopy = d;
    optionsCopy = options;
    block[8] = command;
    block[9] = repeat;
    block[6] = reply;
    block[7] = map;
    dispatch_async(queue, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v16];
  }
}

- (void)learningSessionForDevice:(id)device commandProgress:(id)progress
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(IR) learningSessionForDevice:commandProgress:];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__CoreRCXPCService_IR__learningSessionForDevice_commandProgress___block_invoke;
  v7[3] = &unk_278EA2E18;
  v7[4] = device;
  v7[5] = progress;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v7];
}

- (void)learningSessionForDevice:(id)device status:(unint64_t)status
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(IR) learningSessionForDevice:status:];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__CoreRCXPCService_IR__learningSessionForDevice_status___block_invoke;
  v7[3] = &unk_278EA2E40;
  v7[4] = device;
  v7[5] = status;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v7];
}

- (void)learningSessionForDevice:(id)device duplicateCommand:(unint64_t)command target:(id)target
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    commandCopy = command;
    deviceCopy = device;
    v9 = objc_opt_class();
    LogPrintF();
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__CoreRCXPCService_IR__learningSessionForDevice_duplicateCommand_target___block_invoke;
  v12[3] = &unk_278EA2E68;
  v12[5] = target;
  v12[6] = command;
  v12[4] = device;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v12, v9, commandCopy, deviceCopy];
}

- (void)learningSessionForDeviceCommandDone:(id)done
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(IR) learningSessionForDeviceCommandDone:];
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__CoreRCXPCService_IR__learningSessionForDeviceCommandDone___block_invoke;
  v5[3] = &unk_278EA2E90;
  v5[4] = done;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v5];
}

- (void)queryLoggingAsync:(id)async
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(Private) queryLoggingAsync:];
  }

  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.logging", 0])
  {
    v5 = LogShow();
    if (v5)
    {
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v5 userInfo:0];
      v7 = 0;
    }

    else
    {
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
      v6 = 0;
    }
  }

  else
  {
    [CoreRCXPCService(Private) queryLoggingAsync:?];
    v7 = 0;
    v6 = v9;
  }

  if (v8)
  {
    free(v8);
  }

  (*(async + 2))(async, v7, v6);
}

- (void)setLoggingAsync:(id)async reply:(id)reply
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(Private) setLoggingAsync:reply:];
  }

  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.logging"])
  {
    [async UTF8String];
    v7 = LogControl();
    if (v7)
    {
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v7 userInfo:0];
    }

    else
    {
      v8 = [async stringByReplacingOccurrencesOfString:@"+" withString:&stru_285935118];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __51__CoreRCXPCService_Private__setLoggingAsync_reply___block_invoke;
      v10[3] = &unk_278EA2E90;
      v10[4] = v8;
      [(CoreRCXPCService *)self enumerateClientsUsingBlock:v10];
      v9 = 0;
    }
  }

  else
  {
    [CoreRCXPCService(Private) queryLoggingAsync:?];
    v9 = v11;
  }

  (*(reply + 2))(reply, v9);
}

- (BOOL)checkEntitlement:(id)entitlement
{
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if (!currentConnection)
  {
    [(CoreRCXPCService *)a2 checkEntitlement:?];
  }

  return [currentConnection corerc_checkEntitlement:entitlement];
}

- (void)enumerateClientsHavingEntitlement:(id)entitlement usingBlock:(id)block
{
  v19 = *MEMORY[0x277D85DE8];
  if (!entitlement)
  {
    [CoreRCXPCService enumerateClientsHavingEntitlement:a2 usingBlock:self];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  connections = [(CoreRCXPCService *)self connections];
  v8 = [(NSSet *)connections countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(connections);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 corerc_checkEntitlement:entitlement])
        {
          [(CoreRCXPCService *)self enumerateClient:v12 usingBlock:block];
        }
      }

      v9 = [(NSSet *)connections countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)enumerateClientsUsingBlock:(id)block
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  connections = [(CoreRCXPCService *)self connections];
  v6 = [(NSSet *)connections countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(connections);
        }

        [(CoreRCXPCService *)self enumerateClient:*(*(&v11 + 1) + 8 * v9++) usingBlock:block];
      }

      while (v7 != v9);
      v7 = [(NSSet *)connections countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)enumerateClient:(id)client usingBlock:(id)block
{
  remoteObjectProxy = [client remoteObjectProxy];
  if ([remoteObjectProxy conformsToProtocol:&unk_2859434A8])
  {
    v6 = *(block + 2);

    v6(block, remoteObjectProxy);
  }
}

- (CoreRCXPCService)init
{
  v4.receiver = self;
  v4.super_class = CoreRCXPCService;
  v2 = [(CoreRCXPCService *)&v4 init];
  if (v2)
  {
    v2->_connections = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  return v2;
}

- (void)dealloc
{
  [(CoreRCXPCService *)self invalidate];

  [(NSMutableSet *)self->_connections removeAllObjects];
  v3.receiver = self;
  v3.super_class = CoreRCXPCService;
  [(CoreRCXPCService *)&v3 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService listener:connection shouldAcceptNewConnection:?];
  }

  [connection setExportedInterface:CoreRCXPCServiceInterface()];
  [connection setExportedObject:self];
  [connection setRemoteObjectInterface:CoreRCXPCClientInterface()];
  [connection setUserInfo:{objc_msgSend(MEMORY[0x277CBEB58], "set")}];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__CoreRCXPCService_listener_shouldAcceptNewConnection___block_invoke;
  v7[3] = &unk_278EA29D8;
  v7[4] = self;
  v7[5] = connection;
  [connection setInvalidationHandler:v7];
  [(NSMutableSet *)self->_connections addObject:connection];
  [connection resume];
  return 1;
}

- (void)connectionInvalidated:(id)invalidated
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService connectionInvalidated:invalidated];
  }

  queue = [(CoreRCXPCService *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__CoreRCXPCService_connectionInvalidated___block_invoke;
  v6[3] = &unk_278EA29D8;
  v6[4] = invalidated;
  v6[5] = self;
  dispatch_async_and_wait(queue, v6);
  [invalidated setInvalidationHandler:0];
}

uint64_t __42__CoreRCXPCService_connectionInvalidated___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] setWithSet:{objc_msgSend(*(a1 + 32), "userInfo")}];
  if (v2)
  {
    v3 = v2;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        v7 = 0;
        do
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v12 + 1) + 8 * v7);
          if (![v8 removeOwningClient:*(a1 + 32)])
          {
            if (gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
            {
              __42__CoreRCXPCService_connectionInvalidated___block_invoke_cold_1();
            }

            [objc_msgSend(v8 "bus")];
          }

          ++v7;
        }

        while (v5 != v7);
        v9 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        v5 = v9;
      }

      while (v9);
    }
  }

  [*(*(a1 + 40) + 8) removeObject:*(a1 + 32)];
  result = [*(a1 + 32) setUserInfo:0];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)sendHIDEventAsync:(id)async fromDevice:(id)device toDevice:(id)toDevice reply:(id)reply
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__CoreRCXPCService_sendHIDEventAsync_fromDevice_toDevice_reply___block_invoke;
    block[3] = &unk_278EA4248;
    block[4] = self;
    block[5] = async;
    block[6] = device;
    block[7] = toDevice;
    block[8] = reply;
    dispatch_async(queue, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v11];
  }
}

- (void)_sendHIDEventAsync:(id)async fromDevice:(id)device toDevice:(id)toDevice reply:(id)reply
{
  v16 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService _sendHIDEventAsync:a2 fromDevice:? toDevice:? reply:?];
  }

  v12 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:device];
  if (v12 && ((v13 = v12, !toDevice) || (v14 = -[CoreRCManager managedDeviceEquivalentTo:](-[CoreRCXPCService manager](self, "manager"), "managedDeviceEquivalentTo:", toDevice)) != 0 && (toDevice = v14, ([objc_msgSend(v13 "bus")] & 1) != 0)))
  {
    [v13 sendHIDEvent:async target:toDevice error:&v16];
    v15 = v16;
  }

  else
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6727 userInfo:0];
    v16 = v15;
  }

  (*(reply + 2))(reply, v15);
}

- (void)sendCommandAsync:(unint64_t)async fromDevice:(id)device toDevice:(id)toDevice withDuration:(unint64_t)duration reply:(id)reply
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __76__CoreRCXPCService_sendCommandAsync_fromDevice_toDevice_withDuration_reply___block_invoke;
    v15[3] = &unk_278EA4270;
    v15[4] = self;
    v15[5] = device;
    v15[8] = async;
    v15[9] = duration;
    v15[6] = toDevice;
    v15[7] = reply;
    dispatch_async(queue, v15);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v13];
  }
}

- (void)_sendCommandAsync:(unint64_t)async fromDevice:(id)device toDevice:(id)toDevice withDuration:(unint64_t)duration reply:(id)reply
{
  v18 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService _sendCommandAsync:a2 fromDevice:? toDevice:? withDuration:? reply:?];
  }

  v14 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:device];
  if (v14 && ((v15 = v14, !toDevice) || (v16 = -[CoreRCManager managedDeviceEquivalentTo:](-[CoreRCXPCService manager](self, "manager"), "managedDeviceEquivalentTo:", toDevice)) != 0 && (toDevice = v16, ([objc_msgSend(v15 "bus")] & 1) != 0)))
  {
    [v15 sendCommand:async target:toDevice withDuration:duration error:&v18];
    v17 = v18;
  }

  else
  {
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6727 userInfo:0];
    v18 = v17;
  }

  (*(reply + 2))(reply, v17);
}

- (void)queryBusesAsync:(id)async
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__CoreRCXPCService_queryBusesAsync___block_invoke;
    v7[3] = &unk_278EA4298;
    v7[4] = self;
    v7[5] = async;
    dispatch_async(queue, v7);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeCreateCECBusAsync:async reply:v5];
  }
}

- (void)_queryBusesAsync:(id)async
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService _queryBusesAsync:];
  }

  buses = [(CoreRCManager *)[(CoreRCXPCService *)self manager] buses];
  v6 = *(async + 2);

  v6(async, buses, 0);
}

- (void)setPropertyAsync:(id)async forKey:(id)key ofBus:(id)bus reply:(id)reply
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__CoreRCXPCService_setPropertyAsync_forKey_ofBus_reply___block_invoke;
    block[3] = &unk_278EA4248;
    block[4] = self;
    block[5] = async;
    block[6] = key;
    block[7] = bus;
    block[8] = reply;
    dispatch_async(queue, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v11];
  }
}

- (void)_setPropertyAsync:(id)async forKey:(id)key ofBus:(id)bus reply:(id)reply
{
  v11 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService _setPropertyAsync:forKey:ofBus:reply:];
  }

  [(CoreRCManagerProvider *)[(CoreRCXPCService *)self manager] setProperty:async forKey:key ofBus:bus error:&v11];
  (*(reply + 2))(reply, v11);
}

- (void)getPropertyAsyncForKey:(id)key ofBus:(id)bus reply:(id)reply
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.observer"])
  {
    queue = [(CoreRCXPCService *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __55__CoreRCXPCService_getPropertyAsyncForKey_ofBus_reply___block_invoke;
    v11[3] = &unk_278EA2D00;
    v11[4] = self;
    v11[5] = key;
    v11[6] = bus;
    v11[7] = reply;
    dispatch_async(queue, v11);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeCreateCECBusAsync:reply reply:v9];
  }
}

- (void)_getPropertyAsyncForKey:(id)key ofBus:(id)bus reply:(id)reply
{
  v10 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService _getPropertyAsyncForKey:ofBus:reply:];
  }

  v9 = [(CoreRCManagerProvider *)[(CoreRCXPCService *)self manager] propertyForKey:key ofBus:bus error:&v10];
  (*(reply + 2))(reply, v9, v10);
}

- (void)setExtendedPropertyAsync:(id)async forKey:(id)key ofDevice:(id)device reply:(id)reply
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__CoreRCXPCService_setExtendedPropertyAsync_forKey_ofDevice_reply___block_invoke;
    block[3] = &unk_278EA4248;
    block[4] = self;
    block[5] = async;
    block[6] = key;
    block[7] = device;
    block[8] = reply;
    dispatch_async(queue, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v11];
  }
}

- (void)_setExtendedPropertyAsync:(id)async forKey:(id)key ofDevice:(id)device reply:(id)reply
{
  v11 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService _setExtendedPropertyAsync:forKey:ofDevice:reply:];
  }

  [(CoreRCManagerProvider *)[(CoreRCXPCService *)self manager] setExtendedProperty:async forKey:key ofDevice:device error:&v11];
  (*(reply + 2))(reply, v11);
}

- (void)getExtendedPropertyAsyncForKey:(id)key ofDevice:(id)device reply:(id)reply
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.observer"])
  {
    queue = [(CoreRCXPCService *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __66__CoreRCXPCService_getExtendedPropertyAsyncForKey_ofDevice_reply___block_invoke;
    v11[3] = &unk_278EA2D00;
    v11[4] = self;
    v11[5] = key;
    v11[6] = device;
    v11[7] = reply;
    dispatch_async(queue, v11);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeCreateCECBusAsync:reply reply:v9];
  }
}

- (void)_getExtendedPropertyAsyncForKey:(id)key ofDevice:(id)device reply:(id)reply
{
  v10 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService _getExtendedPropertyAsyncForKey:ofDevice:reply:];
  }

  v9 = [(CoreRCManagerProvider *)[(CoreRCXPCService *)self manager] extendedPropertyForKey:key ofDevice:device error:&v10];
  (*(reply + 2))(reply, v9, v10);
}

- (void)manager:(id)manager hasAdded:(id)added
{
  v18 = *MEMORY[0x277D85DE8];
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService manager:hasAdded:];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  devices = [added devices];
  v7 = [devices countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(devices);
        }

        [*(*(&v13 + 1) + 8 * i) setDelegate:self];
      }

      v8 = [devices countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [added setDelegate:self];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __37__CoreRCXPCService_manager_hasAdded___block_invoke;
  v12[3] = &unk_278EA2E90;
  v12[4] = added;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v12];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)manager:(id)manager hasRemoved:(id)removed
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService manager:hasRemoved:];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__CoreRCXPCService_manager_hasRemoved___block_invoke;
  v6[3] = &unk_278EA2E90;
  v6[4] = removed;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v6];
}

- (void)manager:(id)manager hasUpdated:(id)updated
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService manager:hasUpdated:];
  }

  [updated setDelegate:self];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__CoreRCXPCService_manager_hasUpdated___block_invoke;
  v6[3] = &unk_278EA2E90;
  v6[4] = updated;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v6];
}

- (void)bus:(id)bus deviceHasBeenAdded:(id)added
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    busCopy = bus;
    addedCopy = added;
    v7 = objc_opt_class();
    LogPrintF();
  }

  [added setDelegate:{self, v7, busCopy, addedCopy}];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__CoreRCXPCService_bus_deviceHasBeenAdded___block_invoke;
  v10[3] = &unk_278EA2E18;
  v10[4] = bus;
  v10[5] = added;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v10];
}

- (void)bus:(id)bus deviceHasBeenRemoved:(id)removed
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    busCopy = bus;
    removedCopy = removed;
    v7 = objc_opt_class();
    LogPrintF();
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__CoreRCXPCService_bus_deviceHasBeenRemoved___block_invoke;
  v10[3] = &unk_278EA2E18;
  v10[4] = bus;
  v10[5] = removed;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v10, v7, busCopy, removedCopy];
}

- (void)bus:(id)bus deviceHasBeenUpdated:(id)updated
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    busCopy = bus;
    updatedCopy = updated;
    v7 = objc_opt_class();
    LogPrintF();
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__CoreRCXPCService_bus_deviceHasBeenUpdated___block_invoke;
  v10[3] = &unk_278EA2E18;
  v10[4] = bus;
  v10[5] = updated;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v10, v7, busCopy, updatedCopy];
}

- (void)device:(id)device receivedHIDEvent:(id)event fromDevice:(id)fromDevice
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    eventCopy = event;
    fromDeviceCopy = fromDevice;
    v9 = objc_opt_class();
    deviceCopy = device;
    LogPrintF();
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__CoreRCXPCService_device_receivedHIDEvent_fromDevice___block_invoke;
  v13[3] = &unk_278EA42C0;
  v13[4] = device;
  v13[5] = event;
  v13[6] = fromDevice;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v13, v9, deviceCopy, eventCopy, fromDeviceCopy];
}

- (void)performActiveSourceAsync:(id)async withMenus:(BOOL)menus reply:(id)reply
{
  v9 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__CoreRCXPCService_CEC__performActiveSourceAsync_withMenus_reply___block_invoke;
    v12[3] = &unk_278EA4398;
    v12[4] = self;
    v12[5] = async;
    menusCopy = menus;
    v14 = v9;
    v12[6] = reply;
    dispatch_async(queue, v12);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v10];
  }
}

- (void)performDeckControlSetDeckStatusAsync:(unint64_t)async forDevice:(id)device reply:(id)reply
{
  v9 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__CoreRCXPCService_CEC__performDeckControlSetDeckStatusAsync_forDevice_reply___block_invoke;
    block[3] = &unk_278EA43C0;
    block[4] = self;
    block[5] = device;
    v13 = v9;
    block[6] = reply;
    block[7] = async;
    dispatch_async(queue, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v10];
  }
}

- (void)_performDeckControlSetDeckStatusAsync:(unint64_t)async forDevice:(id)device allowRemoteDevice:(BOOL)remoteDevice reply:(id)reply
{
  v15 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) _performDeckControlSetDeckStatusAsync:async forDevice:? allowRemoteDevice:? reply:?];
  }

  v11 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:device];
  if (v11)
  {
    v13 = v11;
    if (([v11 isLocalDevice] & 1) != 0 || remoteDevice)
    {
      [v13 deckControlSetDeckStatus:async error:&v15];
      if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
      {
        [CoreRCXPCService(CEC) _performDeckControlSetDeckStatusAsync:forDevice:allowRemoteDevice:reply:];
      }
    }

    else
    {
      [CoreRCXPCService(CEC) _performDeckControlSetDeckStatusAsync:v14 forDevice:? allowRemoteDevice:? reply:?];
    }
  }

  else
  {
    [CoreRCManagerProvider setProperty:v12 forKey:? ofBus:? error:?];
  }

  (*(reply + 2))(reply, v15);
}

- (void)performDeckControlCommandAsync:(id)async controlMode:(unint64_t)mode targetDevice:(id)device reply:(id)reply
{
  v11 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __87__CoreRCXPCService_CEC__performDeckControlCommandAsync_controlMode_targetDevice_reply___block_invoke;
    v14[3] = &unk_278EA2DA0;
    v14[4] = self;
    v14[5] = async;
    v14[7] = reply;
    v14[8] = mode;
    v15 = v11;
    v14[6] = device;
    dispatch_async(queue, v14);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v12];
  }
}

- (void)_performDeckControlCommandAsync:(id)async controlMode:(unint64_t)mode targetDevice:(id)device allowRemoteDevice:(BOOL)remoteDevice reply:(id)reply
{
  v25 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v13 = objc_opt_class();
    v23 = CoreCECDeckControlModeString(mode);
    deviceCopy = device;
    v21 = v13;
    asyncCopy = async;
    LogPrintF();
  }

  v14 = [(CoreRCManager *)[(CoreRCXPCService *)self manager:v21] managedDeviceEquivalentTo:async];
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v14;
  if (([v14 isLocalDevice] & 1) == 0 && !remoteDevice)
  {
    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA590];
    v19 = -6773;
    goto LABEL_15;
  }

  if (device)
  {
    v16 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:device];
    if (!v16)
    {
LABEL_10:
      v17 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277CCA590];
      v19 = -6727;
LABEL_15:
      v20 = [v17 errorWithDomain:v18 code:v19 userInfo:0];
      v25 = v20;
      goto LABEL_13;
    }
  }

  else
  {
    v16 = 0;
  }

  [v15 deckControlCommandWithMode:mode target:v16 error:&v25];
  v20 = v25;
LABEL_13:
  (*(reply + 2))(reply, v20);
}

- (void)performDeckControlPlayAsync:(id)async playMode:(unint64_t)mode targetDevice:(id)device reply:(id)reply
{
  v11 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __81__CoreRCXPCService_CEC__performDeckControlPlayAsync_playMode_targetDevice_reply___block_invoke;
    v14[3] = &unk_278EA2DA0;
    v14[4] = self;
    v14[5] = async;
    v14[7] = reply;
    v14[8] = mode;
    v15 = v11;
    v14[6] = device;
    dispatch_async(queue, v14);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v12];
  }
}

- (void)_performDeckControlPlayAsync:(id)async playMode:(unint64_t)mode targetDevice:(id)device allowRemoteDevice:(BOOL)remoteDevice reply:(id)reply
{
  v25 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v13 = objc_opt_class();
    v23 = CoreCECPlayModeString(mode);
    deviceCopy = device;
    v21 = v13;
    asyncCopy = async;
    LogPrintF();
  }

  v14 = [(CoreRCManager *)[(CoreRCXPCService *)self manager:v21] managedDeviceEquivalentTo:async];
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v14;
  if (([v14 isLocalDevice] & 1) == 0 && !remoteDevice)
  {
    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA590];
    v19 = -6773;
    goto LABEL_15;
  }

  if (device)
  {
    v16 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:device];
    if (!v16)
    {
LABEL_10:
      v17 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277CCA590];
      v19 = -6727;
LABEL_15:
      v20 = [v17 errorWithDomain:v18 code:v19 userInfo:0];
      v25 = v20;
      goto LABEL_13;
    }
  }

  else
  {
    v16 = 0;
  }

  [v15 deckControlPlayWithMode:mode target:v16 error:&v25];
  v20 = v25;
LABEL_13:
  (*(reply + 2))(reply, v20);
}

- (void)performDeckControlRefreshStatusAsync:(id)async targetDevice:(id)device requestType:(unint64_t)type reply:(id)reply
{
  v11 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __93__CoreRCXPCService_CEC__performDeckControlRefreshStatusAsync_targetDevice_requestType_reply___block_invoke;
    v14[3] = &unk_278EA2DA0;
    v14[4] = self;
    v14[5] = async;
    v14[7] = reply;
    v14[8] = type;
    v15 = v11;
    v14[6] = device;
    dispatch_async(queue, v14);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v12];
  }
}

- (void)_performDeckControlRefreshStatusAsync:(id)async targetDevice:(id)device requestType:(unint64_t)type allowRemoteDevice:(BOOL)remoteDevice reply:(id)reply
{
  v23 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    asyncCopy = async;
    deviceCopy = device;
    v20 = objc_opt_class();
    LogPrintF();
  }

  v13 = [(CoreRCManager *)[(CoreRCXPCService *)self manager:v20] managedDeviceEquivalentTo:async];
  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = v13;
  if (([v13 isLocalDevice] & 1) == 0 && !remoteDevice)
  {
    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA590];
    v19 = -6773;
    goto LABEL_13;
  }

  v15 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:device];
  if (!v15)
  {
LABEL_11:
    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA590];
    v19 = -6727;
LABEL_13:
    v16 = [v17 errorWithDomain:v18 code:v19 userInfo:0];
    v23 = v16;
    goto LABEL_10;
  }

  [v14 deckControlRefreshStatus:v15 requestType:type error:&v23];
  v16 = v23;
LABEL_10:
  (*(reply + 2))(reply, v16);
}

- (void)performInactiveSourceAsync:(id)async reply:(id)reply
{
  v7 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__CoreRCXPCService_CEC__performInactiveSourceAsync_reply___block_invoke;
    v10[3] = &unk_278EA2C30;
    v10[4] = self;
    v10[5] = async;
    v11 = v7;
    v10[6] = reply;
    dispatch_async(queue, v10);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v8];
  }
}

- (void)_performInactiveSourceAsync:(id)async allowRemoteDevice:(BOOL)device reply:(id)reply
{
  v15 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) _performInactiveSourceAsync:allowRemoteDevice:reply:];
  }

  v9 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:async];
  if (!v9)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA590];
    v14 = -6727;
LABEL_12:
    v11 = [v12 errorWithDomain:v13 code:v14 userInfo:0];
    v15 = v11;
    goto LABEL_8;
  }

  v10 = v9;
  if (([v9 isLocalDevice] & 1) == 0 && !device)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA590];
    v14 = -6773;
    goto LABEL_12;
  }

  [v10 resignActiveSource:&v15];
  v11 = v15;
LABEL_8:
  (*(reply + 2))(reply, v11);
}

- (void)performRefreshDevicesAsync:(id)async reply:(id)reply
{
  v7 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__CoreRCXPCService_CEC__performRefreshDevicesAsync_reply___block_invoke;
    v10[3] = &unk_278EA2C30;
    v10[4] = self;
    v10[5] = async;
    v11 = v7;
    v10[6] = reply;
    dispatch_async(queue, v10);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v8];
  }
}

- (void)_performRefreshDevicesAsync:(id)async allowRemoteDevice:(BOOL)device reply:(id)reply
{
  v15 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) _performRefreshDevicesAsync:allowRemoteDevice:reply:];
  }

  v9 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:async];
  if (!v9)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA590];
    v14 = -6727;
LABEL_12:
    v11 = [v12 errorWithDomain:v13 code:v14 userInfo:0];
    v15 = v11;
    goto LABEL_8;
  }

  v10 = v9;
  if (([v9 isLocalDevice] & 1) == 0 && !device)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA590];
    v14 = -6773;
    goto LABEL_12;
  }

  [objc_msgSend(v10 "bus")];
  v11 = v15;
LABEL_8:
  (*(reply + 2))(reply, v11);
}

- (void)performRefreshProperties:(id)properties ofDevice:(id)device withDeviceAsync:(id)async reply:(id)reply
{
  v11 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __81__CoreRCXPCService_CEC__performRefreshProperties_ofDevice_withDeviceAsync_reply___block_invoke;
    v14[3] = &unk_278EA43E8;
    v14[4] = self;
    v14[5] = properties;
    v14[6] = device;
    v14[7] = async;
    v15 = v11;
    v14[8] = reply;
    dispatch_async(queue, v14);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v12];
  }
}

- (void)_performRefreshProperties:(id)properties ofDevice:(id)device withDeviceAsync:(id)async allowRemoteDevice:(BOOL)remoteDevice reply:(id)reply
{
  v20 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) _performRefreshProperties:ofDevice:withDeviceAsync:allowRemoteDevice:reply:];
  }

  v13 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:async];
  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = v13;
  if (([v13 isLocalDevice] & 1) == 0 && !remoteDevice)
  {
    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA590];
    v19 = -6773;
    goto LABEL_13;
  }

  v15 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:device];
  if (!v15)
  {
LABEL_11:
    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA590];
    v19 = -6727;
LABEL_13:
    v16 = [v17 errorWithDomain:v18 code:v19 userInfo:0];
    v20 = v16;
    goto LABEL_9;
  }

  [v14 refreshProperties:properties ofDevice:v15 error:&v20];
  v16 = v20;
LABEL_9:
  (*(reply + 2))(reply, v16);
}

- (void)performRequestActiveSourceAsync:(id)async reply:(id)reply
{
  v7 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __63__CoreRCXPCService_CEC__performRequestActiveSourceAsync_reply___block_invoke;
    v10[3] = &unk_278EA2C30;
    v10[4] = self;
    v10[5] = async;
    v11 = v7;
    v10[6] = reply;
    dispatch_async(queue, v10);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v8];
  }
}

- (void)_performRequestActiveSourceAsync:(id)async allowRemoteDevice:(BOOL)device reply:(id)reply
{
  v15 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) _performRequestActiveSourceAsync:allowRemoteDevice:reply:];
  }

  v9 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:async];
  if (!v9)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA590];
    v14 = -6727;
LABEL_12:
    v11 = [v12 errorWithDomain:v13 code:v14 userInfo:0];
    v15 = v11;
    goto LABEL_8;
  }

  v10 = v9;
  if (([v9 isLocalDevice] & 1) == 0 && !device)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA590];
    v14 = -6773;
    goto LABEL_12;
  }

  [v10 requestActiveSource:&v15];
  v11 = v15;
LABEL_8:
  (*(reply + 2))(reply, v11);
}

- (void)performSetSystemAudioControlEnabled:(BOOL)enabled withDeviceAsync:(id)async reply:(id)reply
{
  v9 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __83__CoreRCXPCService_CEC__performSetSystemAudioControlEnabled_withDeviceAsync_reply___block_invoke;
    v12[3] = &unk_278EA4398;
    enabledCopy = enabled;
    v12[4] = self;
    v12[5] = async;
    v14 = v9;
    v12[6] = reply;
    dispatch_async(queue, v12);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v10];
  }
}

- (void)performSystemAudioModeRequestAsync:(id)async withDesiredState:(unint64_t)state reply:(id)reply
{
  v9 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__CoreRCXPCService_CEC__performSystemAudioModeRequestAsync_withDesiredState_reply___block_invoke;
    block[3] = &unk_278EA43C0;
    block[4] = self;
    block[5] = async;
    v13 = v9;
    block[6] = reply;
    block[7] = state;
    dispatch_async(queue, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v10];
  }
}

- (void)_performSystemAudioModeRequestAsync:(id)async withDesiredState:(unint64_t)state allowRemoteDevice:(BOOL)device reply:(id)reply
{
  v17 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) _performSystemAudioModeRequestAsync:withDesiredState:allowRemoteDevice:reply:];
  }

  v11 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:async];
  if (!v11)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA590];
    v16 = -6727;
LABEL_12:
    v13 = [v14 errorWithDomain:v15 code:v16 userInfo:0];
    v17 = v13;
    goto LABEL_8;
  }

  v12 = v11;
  if (([v11 isLocalDevice] & 1) == 0 && !device)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA590];
    v16 = -6773;
    goto LABEL_12;
  }

  [v12 systemAudioModeRequest:state error:&v17];
  v13 = v17;
LABEL_8:
  (*(reply + 2))(reply, v13);
}

- (void)performSetAudioReturnChannelControlEnabled:(BOOL)enabled withDeviceAsync:(id)async reply:(id)reply
{
  v9 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __90__CoreRCXPCService_CEC__performSetAudioReturnChannelControlEnabled_withDeviceAsync_reply___block_invoke;
    v12[3] = &unk_278EA4398;
    enabledCopy = enabled;
    v12[4] = self;
    v12[5] = async;
    v14 = v9;
    v12[6] = reply;
    dispatch_async(queue, v12);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v10];
  }
}

- (void)performRequestAudioReturnChannelStatusChangeTo:(unint64_t)to withDeviceAsync:(id)async reply:(id)reply
{
  v9 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __94__CoreRCXPCService_CEC__performRequestAudioReturnChannelStatusChangeTo_withDeviceAsync_reply___block_invoke;
    block[3] = &unk_278EA43C0;
    block[4] = self;
    block[5] = async;
    v13 = v9;
    block[6] = reply;
    block[7] = to;
    dispatch_async(queue, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v10];
  }
}

- (void)_performRequestAudioReturnChannelStatusChangeTo:(unint64_t)to withDeviceAsync:(id)async allowRemoteDevice:(BOOL)device reply:(id)reply
{
  v17 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) _performRequestAudioReturnChannelStatusChangeTo:withDeviceAsync:allowRemoteDevice:reply:];
  }

  v11 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:async];
  if (!v11)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA590];
    v16 = -6727;
LABEL_12:
    v13 = [v14 errorWithDomain:v15 code:v16 userInfo:0];
    v17 = v13;
    goto LABEL_8;
  }

  v12 = v11;
  if (([v11 isLocalDevice] & 1) == 0 && !device)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA590];
    v16 = -6773;
    goto LABEL_12;
  }

  [v12 requestAudioReturnChannelStatusChangeTo:to error:&v17];
  v13 = v17;
LABEL_8:
  (*(reply + 2))(reply, v13);
}

- (void)performSetAudioVolumeStatus:(unint64_t)status withDeviceAsync:(id)async reply:(id)reply
{
  v9 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__CoreRCXPCService_CEC__performSetAudioVolumeStatus_withDeviceAsync_reply___block_invoke;
    block[3] = &unk_278EA43C0;
    block[4] = self;
    block[5] = async;
    v13 = v9;
    block[6] = reply;
    block[7] = status;
    dispatch_async(queue, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v10];
  }
}

- (void)_performSetAudioVolumeStatus:(unint64_t)status withDeviceAsync:(id)async allowRemoteDevice:(BOOL)device reply:(id)reply
{
  v17 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) _performSetAudioVolumeStatus:withDeviceAsync:allowRemoteDevice:reply:];
  }

  v11 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:async];
  if (!v11)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA590];
    v16 = -6727;
LABEL_12:
    v13 = [v14 errorWithDomain:v15 code:v16 userInfo:0];
    v17 = v13;
    goto LABEL_8;
  }

  v12 = v11;
  if (([v11 isLocalDevice] & 1) == 0 && !device)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA590];
    v16 = -6773;
    goto LABEL_12;
  }

  [v12 setAudioVolumeStatus:status error:&v17];
  v13 = v17;
LABEL_8:
  (*(reply + 2))(reply, v13);
}

- (void)performSetAudioMuteStatus:(BOOL)status withDeviceAsync:(id)async reply:(id)reply
{
  v9 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __73__CoreRCXPCService_CEC__performSetAudioMuteStatus_withDeviceAsync_reply___block_invoke;
    v12[3] = &unk_278EA4398;
    statusCopy = status;
    v12[4] = self;
    v12[5] = async;
    v14 = v9;
    v12[6] = reply;
    dispatch_async(queue, v12);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v10];
  }
}

- (void)performSetSupportedAudioFormats:(id)formats withDeviceAsync:(id)async reply:(id)reply
{
  v9 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__CoreRCXPCService_CEC__performSetSupportedAudioFormats_withDeviceAsync_reply___block_invoke;
    block[3] = &unk_278EA4410;
    block[4] = self;
    block[5] = formats;
    v13 = v9;
    block[6] = async;
    block[7] = reply;
    dispatch_async(queue, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v10];
  }
}

- (void)_performSetSupportedAudioFormats:(id)formats withDeviceAsync:(id)async allowRemoteDevice:(BOOL)device reply:(id)reply
{
  v17 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) _performSetSupportedAudioFormats:withDeviceAsync:allowRemoteDevice:reply:];
  }

  v11 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:async];
  if (!v11)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA590];
    v16 = -6727;
LABEL_12:
    v13 = [v14 errorWithDomain:v15 code:v16 userInfo:0];
    v17 = v13;
    goto LABEL_8;
  }

  v12 = v11;
  if (([v11 isLocalDevice] & 1) == 0 && !device)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA590];
    v16 = -6773;
    goto LABEL_12;
  }

  [v12 setSupportedAudioFormats:formats error:&v17];
  v13 = v17;
LABEL_8:
  (*(reply + 2))(reply, v13);
}

- (void)performSetTrackAudioStatusEnabled:(BOOL)enabled pressTimeout:(int64_t)timeout pollInterval:(int64_t)interval withDeviceAsync:(id)async reply:(id)reply
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __107__CoreRCXPCService_CEC__performSetTrackAudioStatusEnabled_pressTimeout_pollInterval_withDeviceAsync_reply___block_invoke;
    v15[3] = &unk_278EA4438;
    enabledCopy = enabled;
    v15[7] = timeout;
    v15[8] = interval;
    v15[4] = self;
    v15[5] = async;
    v15[6] = reply;
    dispatch_async(queue, v15);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v13];
  }
}

- (void)performRequestAudioStatusAsync:(id)async reply:(id)reply
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__CoreRCXPCService_CEC__performRequestAudioStatusAsync_reply___block_invoke;
    block[3] = &unk_278EA2BB8;
    block[4] = self;
    block[5] = async;
    block[6] = reply;
    dispatch_async(queue, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v7];
  }
}

- (void)_performRequestAudioStatusAsync:(id)async reply:(id)reply
{
  v9 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) _performRequestAudioStatusAsync:reply:];
  }

  v7 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:async];
  if (v7)
  {
    [v7 requestAudioStatus:&v9];
    v8 = v9;
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6727 userInfo:0];
    v9 = v8;
  }

  (*(reply + 2))(reply, v8);
}

- (void)performRequestSystemAudioModeStatusChangeTo:(unint64_t)to withDeviceAsync:(id)async reply:(id)reply
{
  v9 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91__CoreRCXPCService_CEC__performRequestSystemAudioModeStatusChangeTo_withDeviceAsync_reply___block_invoke;
    block[3] = &unk_278EA43C0;
    block[4] = self;
    block[5] = async;
    v13 = v9;
    block[6] = reply;
    block[7] = to;
    dispatch_async(queue, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v10];
  }
}

- (void)_performRequestSystemAudioModeStatusChangeTo:(unint64_t)to withDeviceAsync:(id)async allowRemoteDevice:(BOOL)device reply:(id)reply
{
  v17 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) _performRequestSystemAudioModeStatusChangeTo:withDeviceAsync:allowRemoteDevice:reply:];
  }

  v11 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:async];
  if (!v11)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA590];
    v16 = -6727;
LABEL_12:
    v13 = [v14 errorWithDomain:v15 code:v16 userInfo:0];
    v17 = v13;
    goto LABEL_8;
  }

  v12 = v11;
  if (([v11 isLocalDevice] & 1) == 0 && !device)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA590];
    v16 = -6773;
    goto LABEL_12;
  }

  [v12 requestSystemAudioModeStatusChangeTo:to error:&v17];
  v13 = v17;
LABEL_8:
  (*(reply + 2))(reply, v13);
}

- (void)performSetPowerStatus:(unint64_t)status withDeviceAsync:(id)async reply:(id)reply
{
  v9 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__CoreRCXPCService_CEC__performSetPowerStatus_withDeviceAsync_reply___block_invoke;
    block[3] = &unk_278EA43C0;
    block[4] = self;
    block[5] = async;
    v13 = v9;
    block[6] = reply;
    block[7] = status;
    dispatch_async(queue, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v10];
  }
}

- (void)_performSetPowerStatus:(unint64_t)status withDeviceAsync:(id)async allowRemoteDevice:(BOOL)device reply:(id)reply
{
  v17 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) _performSetPowerStatus:withDeviceAsync:allowRemoteDevice:reply:];
  }

  v11 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:async];
  if (!v11)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA590];
    v16 = -6727;
LABEL_12:
    v13 = [v14 errorWithDomain:v15 code:v16 userInfo:0];
    v17 = v13;
    goto LABEL_8;
  }

  v12 = v11;
  if (([v11 isLocalDevice] & 1) == 0 && !device)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA590];
    v16 = -6773;
    goto LABEL_12;
  }

  [v12 setPowerStatus:status error:&v17];
  v13 = v17;
LABEL_8:
  (*(reply + 2))(reply, v13);
}

- (void)performRemoveFromBus:(id)bus reply:(id)reply
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__CoreRCXPCService_CEC__performRemoveFromBus_reply___block_invoke;
    block[3] = &unk_278EA2BB8;
    block[4] = self;
    block[5] = bus;
    block[6] = reply;
    dispatch_async(queue, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v7];
  }
}

- (void)_performRemoveFromBus:(id)bus reply:(id)reply
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) _performRemoveFromBus:reply:];
  }

  v7 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:bus];
  if (v7)
  {
    [v7 removeFromBus];
    v9 = 0;
  }

  else
  {
    [CoreRCManagerProvider setProperty:v8 forKey:? ofBus:? error:?];
    v9 = v11;
  }

  v10 = *(reply + 2);

  v10(reply, v9);
}

- (void)performStandbyAsync:(id)async targetDevice:(id)device reply:(id)reply
{
  v9 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__CoreRCXPCService_CEC__performStandbyAsync_targetDevice_reply___block_invoke;
    block[3] = &unk_278EA4410;
    block[4] = self;
    block[5] = async;
    v13 = v9;
    block[6] = device;
    block[7] = reply;
    dispatch_async(queue, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v10];
  }
}

- (void)_performStandbyAsync:(id)async targetDevice:(id)device allowRemoteDevice:(BOOL)remoteDevice reply:(id)reply
{
  v21 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    asyncCopy = async;
    deviceCopy = device;
    v18 = objc_opt_class();
    LogPrintF();
  }

  v11 = [(CoreRCManager *)[(CoreRCXPCService *)self manager:v18] managedDeviceEquivalentTo:async];
  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = v11;
  if (([v11 isLocalDevice] & 1) == 0 && !remoteDevice)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA590];
    v16 = -6773;
    goto LABEL_15;
  }

  if (device)
  {
    v13 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:device];
    if (!v13)
    {
LABEL_10:
      v14 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277CCA590];
      v16 = -6727;
LABEL_15:
      v17 = [v14 errorWithDomain:v15 code:v16 userInfo:0];
      v21 = v17;
      goto LABEL_13;
    }
  }

  else
  {
    v13 = 0;
  }

  [v12 performStandbyWithTargetDevice:v13 error:&v21];
  v17 = v21;
LABEL_13:
  (*(reply + 2))(reply, v17);
}

- (void)queryLocalInstanceAsync:(id)async bus:(id)bus reply:(id)reply
{
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__CoreRCXPCService_CEC__queryLocalInstanceAsync_bus_reply___block_invoke;
    block[3] = &unk_278EA4248;
    block[4] = self;
    block[5] = async;
    block[6] = bus;
    block[7] = currentConnection;
    block[8] = reply;
    dispatch_async(queue, block);
  }

  else
  {
    [CoreRCXPCService(CEC) queryLocalInstanceAsync:reply bus:v10 reply:?];
  }
}

- (void)performRemoveDeviceWithTypeAsync:(unint64_t)async bus:(id)bus reply:(id)reply
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__CoreRCXPCService_CEC__performRemoveDeviceWithTypeAsync_bus_reply___block_invoke;
    block[3] = &unk_278EA2DC8;
    block[4] = self;
    block[5] = bus;
    block[6] = reply;
    block[7] = async;
    dispatch_async(queue, block);
    v11 = 0;
  }

  else
  {
    [CoreRCXPCService(CEC) _performDeckControlSetDeckStatusAsync:v9 forDevice:? allowRemoteDevice:? reply:?];
    v11 = v13;
  }

  (*(reply + 2))(reply, v11);
}

- (void)_performRemoveDeviceWithTypeAsync:(unint64_t)async bus:(id)bus reply:(id)reply
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    asyncCopy = async;
    busCopy = bus;
    v9 = objc_opt_class();
    LogPrintF();
  }

  v8 = [(CoreRCManager *)[(CoreRCXPCService *)self manager:v9] managedBusEquivalentTo:bus];
  if (v8)
  {
    [v8 removeDeviceWithType:async];
    if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
    {
      [CoreRCXPCService(CEC) _performRemoveDeviceWithTypeAsync:bus:reply:];
    }
  }

  else if (gLogCategory_CoreRCXPC <= 90 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) _performRemoveDeviceWithTypeAsync:bus:reply:];
  }
}

- (void)setOsdNameAsync:(id)async forBus:(id)bus reply:(id)reply
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    queue = [(CoreRCXPCService *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __54__CoreRCXPCService_CEC__setOsdNameAsync_forBus_reply___block_invoke;
    v11[3] = &unk_278EA2D00;
    v11[4] = self;
    v11[5] = async;
    v11[6] = bus;
    v11[7] = reply;
    dispatch_async(queue, v11);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v9];
  }
}

- (void)_setOsdNameAsync:(id)async forBus:(id)bus reply:(id)reply
{
  v14 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    asyncCopy = async;
    busCopy = bus;
    v11 = objc_opt_class();
    LogPrintF();
  }

  v9 = [(CoreRCManager *)[(CoreRCXPCService *)self manager:v11] managedBusEquivalentTo:bus];
  if (v9)
  {
    [v9 setOSDName:async error:&v14];
    if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
    {
      [CoreRCXPCService(CEC) _setOsdNameAsync:forBus:reply:];
    }
  }

  else
  {
    [CoreRCManagerProvider setProperty:v10 forKey:? ofBus:? error:?];
  }

  (*(reply + 2))(reply, v14);
}

- (void)setTvLanguageCodeAsync:(id)async forBus:(id)bus reply:(id)reply
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"])
  {
    queue = [(CoreRCXPCService *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __61__CoreRCXPCService_CEC__setTvLanguageCodeAsync_forBus_reply___block_invoke;
    v11[3] = &unk_278EA2D00;
    v11[4] = self;
    v11[5] = async;
    v11[6] = bus;
    v11[7] = reply;
    dispatch_async(queue, v11);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v9];
  }
}

- (void)_setTvLanguageCodeAsync:(id)async forBus:(id)bus reply:(id)reply
{
  v14 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    asyncCopy = async;
    busCopy = bus;
    v11 = objc_opt_class();
    LogPrintF();
  }

  v9 = [(CoreRCManager *)[(CoreRCXPCService *)self manager:v11] managedBusEquivalentTo:bus];
  if (v9)
  {
    [v9 setTvLanguageCode:async error:&v14];
    if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
    {
      [CoreRCXPCService(CEC) _setTvLanguageCodeAsync:forBus:reply:];
    }
  }

  else
  {
    [CoreRCManagerProvider setProperty:v10 forKey:? ofBus:? error:?];
  }

  (*(reply + 2))(reply, v14);
}

- (void)injectRXMessageAsync:(id)async forBus:(id)bus reply:(id)reply
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"])
  {
    queue = [(CoreRCXPCService *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__CoreRCXPCService_CEC__injectRXMessageAsync_forBus_reply___block_invoke;
    v11[3] = &unk_278EA2D00;
    v11[4] = self;
    v11[5] = async;
    v11[6] = bus;
    v11[7] = reply;
    dispatch_async(queue, v11);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v9];
  }
}

- (void)_injectRXMessageAsync:(id)async forBus:(id)bus reply:(id)reply
{
  v14 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    asyncCopy = async;
    busCopy = bus;
    v11 = objc_opt_class();
    LogPrintF();
  }

  v9 = [(CoreRCManager *)[(CoreRCXPCService *)self manager:v11] managedBusEquivalentTo:bus];
  if (v9)
  {
    [v9 injectRXMessage:async error:&v14];
    if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
    {
      [CoreRCXPCService(CEC) _injectRXMessageAsync:forBus:reply:];
    }
  }

  else
  {
    [CoreRCManagerProvider setProperty:v10 forKey:? ofBus:? error:?];
  }

  (*(reply + 2))(reply, v14);
}

- (void)injectTXMessageAsync:(id)async forBus:(id)bus reply:(id)reply
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"])
  {
    queue = [(CoreRCXPCService *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__CoreRCXPCService_CEC__injectTXMessageAsync_forBus_reply___block_invoke;
    v11[3] = &unk_278EA2D00;
    v11[4] = self;
    v11[5] = async;
    v11[6] = bus;
    v11[7] = reply;
    dispatch_async(queue, v11);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply reply:v9];
  }
}

- (void)_injectTXMessageAsync:(id)async forBus:(id)bus reply:(id)reply
{
  v14 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    asyncCopy = async;
    busCopy = bus;
    v11 = objc_opt_class();
    LogPrintF();
  }

  v9 = [(CoreRCManager *)[(CoreRCXPCService *)self manager:v11] managedBusEquivalentTo:bus];
  if (v9)
  {
    [v9 injectTXMessage:async error:&v14];
    if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
    {
      [CoreRCXPCService(CEC) _injectTXMessageAsync:forBus:reply:];
    }
  }

  else
  {
    [CoreRCManagerProvider setProperty:v10 forKey:? ofBus:? error:?];
  }

  (*(reply + 2))(reply, v14);
}

- (void)cecBus:(id)bus activeSourceHasChangedTo:(id)to fromDevice:(id)device
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) cecBus:activeSourceHasChangedTo:fromDevice:];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__CoreRCXPCService_CEC__cecBus_activeSourceHasChangedTo_fromDevice___block_invoke;
  v9[3] = &unk_278EA42C0;
  v9[4] = bus;
  v9[5] = to;
  v9[6] = device;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.control" usingBlock:v9];
}

- (void)cecBus:(id)bus rxMessageReceived:(id)received
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) cecBus:rxMessageReceived:];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__CoreRCXPCService_CEC__cecBus_rxMessageReceived___block_invoke;
  v7[3] = &unk_278EA2E18;
  v7[4] = bus;
  v7[5] = received;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.control" usingBlock:v7];
}

- (void)cecBus:(id)bus txMessageSent:(id)sent error:(id)error
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) cecBus:txMessageSent:error:];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__CoreRCXPCService_CEC__cecBus_txMessageSent_error___block_invoke;
  v9[3] = &unk_278EA42C0;
  v9[4] = bus;
  v9[5] = sent;
  v9[6] = error;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.control" usingBlock:v9];
}

- (void)cecDeviceShouldAssertActiveSource:(id)source
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) cecDeviceShouldAssertActiveSource:];
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__CoreRCXPCService_CEC__cecDeviceShouldAssertActiveSource___block_invoke;
  v5[3] = &unk_278EA2E90;
  v5[4] = source;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.control" usingBlock:v5];
}

- (void)cecDevice:(id)device activeSourceStatusHasChanged:(BOOL)changed
{
  changedCopy = changed;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v7 = objc_opt_class();
    v8 = "NO";
    if (changedCopy)
    {
      v8 = "YES";
    }

    deviceCopy = device;
    v11 = v8;
    v9 = v7;
    LogPrintF();
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__CoreRCXPCService_CEC__cecDevice_activeSourceStatusHasChanged___block_invoke;
  v12[3] = &unk_278EA4460;
  v12[4] = device;
  v13 = changedCopy;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v12, v9, deviceCopy, v11];
}

- (void)cecDevice:(id)device deckControlPlayHasBeenReceived:(unint64_t)received fromDevice:(id)fromDevice
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v9 = objc_opt_class();
    v12 = CoreCECPlayModeString(received);
    fromDeviceCopy = fromDevice;
    v10 = v9;
    deviceCopy = device;
    LogPrintF();
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__CoreRCXPCService_CEC__cecDevice_deckControlPlayHasBeenReceived_fromDevice___block_invoke;
  v14[3] = &unk_278EA2E68;
  v14[5] = fromDevice;
  v14[6] = received;
  v14[4] = device;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v14, v10, deviceCopy, v12, fromDeviceCopy];
}

- (void)cecDevice:(id)device deckControlCommandHasBeenReceived:(unint64_t)received fromDevice:(id)fromDevice
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v9 = objc_opt_class();
    v12 = CoreCECDeckControlModeString(received);
    fromDeviceCopy = fromDevice;
    v10 = v9;
    deviceCopy = device;
    LogPrintF();
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__CoreRCXPCService_CEC__cecDevice_deckControlCommandHasBeenReceived_fromDevice___block_invoke;
  v14[3] = &unk_278EA2E68;
  v14[5] = fromDevice;
  v14[6] = received;
  v14[4] = device;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v14, v10, deviceCopy, v12, fromDeviceCopy];
}

- (void)cecDevice:(id)device deckControlStatusHasBeenUpdated:(unint64_t)updated fromDevice:(id)fromDevice
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v9 = objc_opt_class();
    v12 = CoreCECDeckInfoString(updated);
    fromDeviceCopy = fromDevice;
    v10 = v9;
    deviceCopy = device;
    LogPrintF();
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__CoreRCXPCService_CEC__cecDevice_deckControlStatusHasBeenUpdated_fromDevice___block_invoke;
  v14[3] = &unk_278EA2E68;
  v14[5] = fromDevice;
  v14[6] = updated;
  v14[4] = device;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v14, v10, deviceCopy, v12, fromDeviceCopy];
}

- (void)cecDevice:(id)device featureAbort:(id)abort
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    deviceCopy = device;
    abortCopy = abort;
    v7 = objc_opt_class();
    LogPrintF();
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__CoreRCXPCService_CEC__cecDevice_featureAbort___block_invoke;
  v10[3] = &unk_278EA2E18;
  v10[4] = device;
  v10[5] = abort;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v10, v7, deviceCopy, abortCopy];
}

- (void)cecDevice:(id)device standbyRequestHasBeenReceived:(id)received
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    deviceCopy = device;
    receivedCopy = received;
    v7 = objc_opt_class();
    LogPrintF();
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__CoreRCXPCService_CEC__cecDevice_standbyRequestHasBeenReceived___block_invoke;
  v10[3] = &unk_278EA2E18;
  v10[4] = device;
  v10[5] = received;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v10, v7, deviceCopy, receivedCopy];
}

- (void)cecDevice:(id)device receivedRequestAudioReturnChannelStatusChangeTo:(unint64_t)to fromDevice:(id)fromDevice
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v9 = objc_opt_class();
    v12 = CoreCECActivationStatusString(to);
    fromDeviceCopy = fromDevice;
    v10 = v9;
    deviceCopy = device;
    LogPrintF();
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __94__CoreRCXPCService_CEC__cecDevice_receivedRequestAudioReturnChannelStatusChangeTo_fromDevice___block_invoke;
  v14[3] = &unk_278EA2E68;
  v14[5] = fromDevice;
  v14[6] = to;
  v14[4] = device;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v14, v10, deviceCopy, v12, fromDeviceCopy];
}

- (void)cecDevice:(id)device requestAudioReturnChannelStatusChangeTo:(unint64_t)to didFinishWithResult:(BOOL)result error:(id)error
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) cecDevice:to requestAudioReturnChannelStatusChangeTo:? didFinishWithResult:? error:?];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __101__CoreRCXPCService_CEC__cecDevice_requestAudioReturnChannelStatusChangeTo_didFinishWithResult_error___block_invoke;
  v11[3] = &unk_278EA4488;
  v11[5] = error;
  v11[6] = to;
  resultCopy = result;
  v11[4] = device;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v11];
}

- (void)cecDevice:(id)device receivedRequestSystemAudioModeStatusChangeTo:(unint64_t)to fromDevice:(id)fromDevice
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v9 = objc_opt_class();
    v12 = CoreCECActivationStatusString(to);
    fromDeviceCopy = fromDevice;
    v10 = v9;
    deviceCopy = device;
    LogPrintF();
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __91__CoreRCXPCService_CEC__cecDevice_receivedRequestSystemAudioModeStatusChangeTo_fromDevice___block_invoke;
  v14[3] = &unk_278EA2E68;
  v14[5] = fromDevice;
  v14[6] = to;
  v14[4] = device;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v14, v10, deviceCopy, v12, fromDeviceCopy];
}

- (void)cecDevice:(id)device requestSystemAudioModeStatusChangeTo:(unint64_t)to didFinishWithResult:(BOOL)result error:(id)error
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) cecDevice:to requestSystemAudioModeStatusChangeTo:? didFinishWithResult:? error:?];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __98__CoreRCXPCService_CEC__cecDevice_requestSystemAudioModeStatusChangeTo_didFinishWithResult_error___block_invoke;
  v11[3] = &unk_278EA4488;
  v11[5] = error;
  v11[6] = to;
  resultCopy = result;
  v11[4] = device;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v11];
}

- (void)cecDevice:(id)device audioStatusReceived:(unint64_t)received muteStatus:(BOOL)status
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) cecDevice:audioStatusReceived:muteStatus:];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__CoreRCXPCService_CEC__cecDevice_audioStatusReceived_muteStatus___block_invoke;
  v9[3] = &unk_278EA44B0;
  v9[4] = device;
  v9[5] = received;
  statusCopy = status;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.control" usingBlock:v9];
}

- (void)_startLearningSessionWithDeviceAsync:(id)async forReason:(id)reason reply:(id)reply
{
  v19 = 0;
  unsignedIntegerValue = [reason unsignedIntegerValue];
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v17 = objc_opt_class();
    Name = sel_getName(a2);
    LogPrintF();
  }

  v10 = [(CoreRCManager *)[(CoreRCXPCService *)self manager:v17] managedDeviceEquivalentTo:async];
  if (!v10)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA590];
    v16 = -6727;
LABEL_12:
    v13 = 0;
    v19 = [v14 errorWithDomain:v15 code:v16 userInfo:0];
    goto LABEL_9;
  }

  v11 = v10;
  if (([v10 isLocalDevice] & 1) == 0)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA590];
    v16 = -6705;
    goto LABEL_12;
  }

  v12 = [v11 startLearningSessionWithReason:unsignedIntegerValue error:&v19];
  v13 = v12;
  if (v12)
  {
    [v12 setBridgeDelegate:self];
  }

LABEL_9:
  (*(reply + 2))(reply, v13, v19);
}

- (void)_updateMappingWithSessionOwningDeviceAsync:(id)async forTargetDevice:(id)device reply:(id)reply
{
  v25 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v20 = objc_opt_class();
    Name = sel_getName(a2);
    LogPrintF();
  }

  v10 = [(CoreRCManager *)[(CoreRCXPCService *)self manager:v20] managedDeviceEquivalentTo:device];
  if (v10 && (v11 = v10, (v12 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:async]) != 0))
  {
    v13 = v12;
    if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
    {
      v21 = v13;
      v24 = v11;
      LogPrintF();
    }

    learningSession = [v13 learningSession];
    if (learningSession)
    {
      v15 = learningSession;
      if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
      {
        mappings = [v15 mappings];
        LogPrintF();
      }

      v16 = [v11 updateMappingWithSession:v15 error:{&v25, mappings}];
      v17 = v25;
    }

    else
    {
      v17 = 0;
      v16 = 0;
    }
  }

  else
  {
    v18 = *MEMORY[0x277CCA590];
    OUTLINED_FUNCTION_2_3();
    v17 = [v19 errorWithDomain:? code:? userInfo:?];
    v16 = 0;
    v25 = v17;
  }

  (*(reply + 2))(reply, v16, v17);
}

- (void)startOnQueue:(id)queue
{
  if (!self->_queue)
  {
    queueCopy = MEMORY[0x277D85CD0];
    if (queue)
    {
      queueCopy = queue;
    }

    self->_queue = queueCopy;
    v6 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.corercd"];
    self->_listener = v6;
    [(NSXPCListener *)v6 setDelegate:self];
    [(NSXPCListener *)self->_listener _setQueue:queue];
    v7 = [[CoreRCManagerProvider alloc] initWithSerialQueue:self->_queue];
    self->_manager = v7;
    [(CoreRCManager *)v7 setDelegate:self];
    [(NSXPCListener *)self->_listener resume];
    if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }
}

- (uint64_t)enumerateClientsHavingEntitlement:(uint64_t)a1 usingBlock:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"CoreRCXPCService.m" lineNumber:89 description:@"entitlement must not be nil"];
}

- (uint64_t)_sendHIDEventAsync:(uint64_t)a1 fromDevice:(const char *)a2 toDevice:reply:.cold.1(uint64_t a1, const char *a2)
{
  objc_opt_class();
  sel_getName(a2);
  return LogPrintF();
}

- (uint64_t)_sendCommandAsync:(uint64_t)a1 fromDevice:(const char *)a2 toDevice:withDuration:reply:.cold.1(uint64_t a1, const char *a2)
{
  objc_opt_class();
  sel_getName(a2);
  return LogPrintF();
}

- (void)_queryLocalInstanceAsync:(id)async bus:(id)bus client:(id)client reply:(id)reply
{
  v18 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v16 = objc_opt_class();
    LogPrintF();
  }

  v11 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedBusEquivalentTo:bus];
  if (v11)
  {
    v13 = v11;
    if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
    {
      v17 = v13;
      LogPrintF();
    }

    v14 = [v13 addDeviceWithAttributes:async error:{&v18, v17}];
    v15 = v14;
    if (v14)
    {
      [v14 addOwningClient:client];
    }
  }

  else
  {
    v15 = 0;
    v18 = OUTLINED_FUNCTION_0_0(MEMORY[0x277CCA9B8], v12, *MEMORY[0x277CCA590]);
  }

  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  (*(reply + 2))(reply, v15, v18);
}

@end