@interface CoreRCXPCService
- (BOOL)checkEntitlement:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (CoreRCXPCService)init;
- (void)_addDeviceOnBusAsync:(id)a3 withType:(unint64_t)a4 matching:(id)a5 reply:(id)a6;
- (void)_addDeviceOnBusAsync:(id)a3 withType:(unint64_t)a4 matching:(id)a5 withSessionOwningDevice:(id)a6 reply:(id)a7;
- (void)_changeButtonCombinationAsync:(id)a3 delay:(double)a4 enabled:(BOOL)a5 forDevice:(id)a6 reply:(id)a7;
- (void)_clearAllStoredCommandsFromDeviceAsync:(id)a3 reply:(id)a4;
- (void)_deleteDeviceAsync:(id)a3 fromBus:(id)a4 reply:(id)a5;
- (void)_endLearningWithDeviceAsync:(id)a3 reply:(id)a4;
- (void)_fakeRemoveCECBusAsync:(id)a3 reply:(id)a4;
- (void)_fakeRemoveCECDeviceAsync:(id)a3 reply:(id)a4;
- (void)_getExtendedPropertyAsyncForKey:(id)a3 ofDevice:(id)a4 reply:(id)a5;
- (void)_getPropertyAsyncForKey:(id)a3 ofBus:(id)a4 reply:(id)a5;
- (void)_injectRXMessageAsync:(id)a3 forBus:(id)a4 reply:(id)a5;
- (void)_injectTXMessageAsync:(id)a3 forBus:(id)a4 reply:(id)a5;
- (void)_performDeckControlCommandAsync:(id)a3 controlMode:(unint64_t)a4 targetDevice:(id)a5 allowRemoteDevice:(BOOL)a6 reply:(id)a7;
- (void)_performDeckControlPlayAsync:(id)a3 playMode:(unint64_t)a4 targetDevice:(id)a5 allowRemoteDevice:(BOOL)a6 reply:(id)a7;
- (void)_performDeckControlRefreshStatusAsync:(id)a3 targetDevice:(id)a4 requestType:(unint64_t)a5 allowRemoteDevice:(BOOL)a6 reply:(id)a7;
- (void)_performDeckControlSetDeckStatusAsync:(unint64_t)a3 forDevice:(id)a4 allowRemoteDevice:(BOOL)a5 reply:(id)a6;
- (void)_performInactiveSourceAsync:(id)a3 allowRemoteDevice:(BOOL)a4 reply:(id)a5;
- (void)_performRefreshDevicesAsync:(id)a3 allowRemoteDevice:(BOOL)a4 reply:(id)a5;
- (void)_performRefreshProperties:(id)a3 ofDevice:(id)a4 withDeviceAsync:(id)a5 allowRemoteDevice:(BOOL)a6 reply:(id)a7;
- (void)_performRemoveDeviceWithTypeAsync:(unint64_t)a3 bus:(id)a4 reply:(id)a5;
- (void)_performRemoveFromBus:(id)a3 reply:(id)a4;
- (void)_performRequestActiveSourceAsync:(id)a3 allowRemoteDevice:(BOOL)a4 reply:(id)a5;
- (void)_performRequestAudioReturnChannelStatusChangeTo:(unint64_t)a3 withDeviceAsync:(id)a4 allowRemoteDevice:(BOOL)a5 reply:(id)a6;
- (void)_performRequestAudioStatusAsync:(id)a3 reply:(id)a4;
- (void)_performRequestSystemAudioModeStatusChangeTo:(unint64_t)a3 withDeviceAsync:(id)a4 allowRemoteDevice:(BOOL)a5 reply:(id)a6;
- (void)_performSetAudioVolumeStatus:(unint64_t)a3 withDeviceAsync:(id)a4 allowRemoteDevice:(BOOL)a5 reply:(id)a6;
- (void)_performSetPowerStatus:(unint64_t)a3 withDeviceAsync:(id)a4 allowRemoteDevice:(BOOL)a5 reply:(id)a6;
- (void)_performSetSupportedAudioFormats:(id)a3 withDeviceAsync:(id)a4 allowRemoteDevice:(BOOL)a5 reply:(id)a6;
- (void)_performStandbyAsync:(id)a3 targetDevice:(id)a4 allowRemoteDevice:(BOOL)a5 reply:(id)a6;
- (void)_performSystemAudioModeRequestAsync:(id)a3 withDesiredState:(unint64_t)a4 allowRemoteDevice:(BOOL)a5 reply:(id)a6;
- (void)_queryBusesAsync:(id)a3;
- (void)_queryLocalInstanceAsync:(id)a3 bus:(id)a4 client:(id)a5 reply:(id)a6;
- (void)_sendCommandAsync:(id)a3 fromDevice:(id)a4 reply:(id)a5;
- (void)_sendCommandAsync:(unint64_t)a3 fromDevice:(id)a4 toDevice:(id)a5 withDuration:(unint64_t)a6 reply:(id)a7;
- (void)_sendHIDEventAsync:(id)a3 fromDevice:(id)a4 toDevice:(id)a5 reply:(id)a6;
- (void)_setCommandAsync:(unint64_t)a3 target:(id)a4 source:(id)a5 forButtonCombination:(id)a6 delay:(double)a7 reply:(id)a8;
- (void)_setExtendedPropertyAsync:(id)a3 forKey:(id)a4 ofDevice:(id)a5 reply:(id)a6;
- (void)_setOSDNameAsync:(id)a3 forDevice:(id)a4 reply:(id)a5;
- (void)_setOsdNameAsync:(id)a3 forBus:(id)a4 reply:(id)a5;
- (void)_setPairStateAsync:(BOOL)a3 forAppleRemote:(id)a4 reply:(id)a5;
- (void)_setPropertyAsync:(id)a3 forKey:(id)a4 ofBus:(id)a5 reply:(id)a6;
- (void)_setTvLanguageCodeAsync:(id)a3 forBus:(id)a4 reply:(id)a5;
- (void)_startLearningCommandAsync:(unint64_t)a3 withDevice:(id)a4 reply:(id)a5;
- (void)_startLearningSessionWithDeviceAsync:(id)a3 forReason:(id)a4 reply:(id)a5;
- (void)_updateMappingWithSessionOwningDeviceAsync:(id)a3 forTargetDevice:(id)a4 reply:(id)a5;
- (void)addDeviceOnBusAsync:(id)a3 withType:(unint64_t)a4 matching:(id)a5 reply:(id)a6;
- (void)addDeviceOnBusAsync:(id)a3 withType:(unint64_t)a4 matching:(id)a5 withSessionOwningDevice:(id)a6 reply:(id)a7;
- (void)addMappingWithDeviceAsync:(id)a3 withProtocolID:(unsigned __int8)a4 options:(unsigned __int8)a5 commandToMap:(unint64_t)a6 command:(unint64_t)a7 repeat:(unint64_t)a8 reply:(id)a9;
- (void)bus:(id)a3 deviceHasBeenAdded:(id)a4;
- (void)bus:(id)a3 deviceHasBeenRemoved:(id)a4;
- (void)bus:(id)a3 deviceHasBeenUpdated:(id)a4;
- (void)cecBus:(id)a3 activeSourceHasChangedTo:(id)a4 fromDevice:(id)a5;
- (void)cecBus:(id)a3 rxMessageReceived:(id)a4;
- (void)cecBus:(id)a3 txMessageSent:(id)a4 error:(id)a5;
- (void)cecDevice:(id)a3 activeSourceStatusHasChanged:(BOOL)a4;
- (void)cecDevice:(id)a3 audioStatusReceived:(unint64_t)a4 muteStatus:(BOOL)a5;
- (void)cecDevice:(id)a3 deckControlCommandHasBeenReceived:(unint64_t)a4 fromDevice:(id)a5;
- (void)cecDevice:(id)a3 deckControlPlayHasBeenReceived:(unint64_t)a4 fromDevice:(id)a5;
- (void)cecDevice:(id)a3 deckControlStatusHasBeenUpdated:(unint64_t)a4 fromDevice:(id)a5;
- (void)cecDevice:(id)a3 featureAbort:(id)a4;
- (void)cecDevice:(id)a3 receivedRequestAudioReturnChannelStatusChangeTo:(unint64_t)a4 fromDevice:(id)a5;
- (void)cecDevice:(id)a3 receivedRequestSystemAudioModeStatusChangeTo:(unint64_t)a4 fromDevice:(id)a5;
- (void)cecDevice:(id)a3 requestAudioReturnChannelStatusChangeTo:(unint64_t)a4 didFinishWithResult:(BOOL)a5 error:(id)a6;
- (void)cecDevice:(id)a3 requestSystemAudioModeStatusChangeTo:(unint64_t)a4 didFinishWithResult:(BOOL)a5 error:(id)a6;
- (void)cecDevice:(id)a3 standbyRequestHasBeenReceived:(id)a4;
- (void)cecDeviceShouldAssertActiveSource:(id)a3;
- (void)changeButtonCombinationAsync:(id)a3 delay:(double)a4 enabled:(BOOL)a5 forDevice:(id)a6 reply:(id)a7;
- (void)clearAllStoredCommandsFromDeviceAsync:(id)a3 reply:(id)a4;
- (void)connectionInvalidated:(id)a3;
- (void)dealloc;
- (void)deleteDeviceAsync:(id)a3 fromBus:(id)a4 reply:(id)a5;
- (void)device:(id)a3 receivedHIDEvent:(id)a4 fromDevice:(id)a5;
- (void)endLearningWithDeviceAsync:(id)a3 reply:(id)a4;
- (void)enumerateClient:(id)a3 usingBlock:(id)a4;
- (void)enumerateClientsHavingEntitlement:(id)a3 usingBlock:(id)a4;
- (void)enumerateClientsUsingBlock:(id)a3;
- (void)fakeCreateCECBusAsync:(unsigned __int16)a3 reply:(id)a4;
- (void)fakeCreateRemoteCECDeviceAsync:(id)a3 bus:(id)a4 logicalAddress:(unsigned __int8)a5 physicalAddress:(unsigned __int16)a6 reply:(id)a7;
- (void)fakeRemoveCECBusAsync:(id)a3 reply:(id)a4;
- (void)fakeRemoveCECDeviceAsync:(id)a3 reply:(id)a4;
- (void)fakeSetCECBusLinkStateAsync:(id)a3 linkState:(BOOL)a4 physicalAddress:(unsigned __int16)a5 reply:(id)a6;
- (void)fakeSetCECDeviceLogicalAddressAsync:(id)a3 logicalAddress:(unsigned __int8)a4 reply:(id)a5;
- (void)getExtendedPropertyAsyncForKey:(id)a3 ofDevice:(id)a4 reply:(id)a5;
- (void)getPropertyAsyncForKey:(id)a3 ofBus:(id)a4 reply:(id)a5;
- (void)injectRXMessageAsync:(id)a3 forBus:(id)a4 reply:(id)a5;
- (void)injectTXMessageAsync:(id)a3 forBus:(id)a4 reply:(id)a5;
- (void)learningSessionForDevice:(id)a3 commandProgress:(id)a4;
- (void)learningSessionForDevice:(id)a3 duplicateCommand:(unint64_t)a4 target:(id)a5;
- (void)learningSessionForDevice:(id)a3 status:(unint64_t)a4;
- (void)learningSessionForDeviceCommandDone:(id)a3;
- (void)manager:(id)a3 hasAdded:(id)a4;
- (void)manager:(id)a3 hasRemoved:(id)a4;
- (void)manager:(id)a3 hasUpdated:(id)a4;
- (void)performActiveSourceAsync:(id)a3 withMenus:(BOOL)a4 reply:(id)a5;
- (void)performDeckControlCommandAsync:(id)a3 controlMode:(unint64_t)a4 targetDevice:(id)a5 reply:(id)a6;
- (void)performDeckControlPlayAsync:(id)a3 playMode:(unint64_t)a4 targetDevice:(id)a5 reply:(id)a6;
- (void)performDeckControlRefreshStatusAsync:(id)a3 targetDevice:(id)a4 requestType:(unint64_t)a5 reply:(id)a6;
- (void)performDeckControlSetDeckStatusAsync:(unint64_t)a3 forDevice:(id)a4 reply:(id)a5;
- (void)performInactiveSourceAsync:(id)a3 reply:(id)a4;
- (void)performRefreshDevicesAsync:(id)a3 reply:(id)a4;
- (void)performRefreshProperties:(id)a3 ofDevice:(id)a4 withDeviceAsync:(id)a5 reply:(id)a6;
- (void)performRemoveDeviceWithTypeAsync:(unint64_t)a3 bus:(id)a4 reply:(id)a5;
- (void)performRemoveFromBus:(id)a3 reply:(id)a4;
- (void)performRequestActiveSourceAsync:(id)a3 reply:(id)a4;
- (void)performRequestAudioReturnChannelStatusChangeTo:(unint64_t)a3 withDeviceAsync:(id)a4 reply:(id)a5;
- (void)performRequestAudioStatusAsync:(id)a3 reply:(id)a4;
- (void)performRequestSystemAudioModeStatusChangeTo:(unint64_t)a3 withDeviceAsync:(id)a4 reply:(id)a5;
- (void)performSetAudioMuteStatus:(BOOL)a3 withDeviceAsync:(id)a4 reply:(id)a5;
- (void)performSetAudioReturnChannelControlEnabled:(BOOL)a3 withDeviceAsync:(id)a4 reply:(id)a5;
- (void)performSetAudioVolumeStatus:(unint64_t)a3 withDeviceAsync:(id)a4 reply:(id)a5;
- (void)performSetPowerStatus:(unint64_t)a3 withDeviceAsync:(id)a4 reply:(id)a5;
- (void)performSetSupportedAudioFormats:(id)a3 withDeviceAsync:(id)a4 reply:(id)a5;
- (void)performSetSystemAudioControlEnabled:(BOOL)a3 withDeviceAsync:(id)a4 reply:(id)a5;
- (void)performSetTrackAudioStatusEnabled:(BOOL)a3 pressTimeout:(int64_t)a4 pollInterval:(int64_t)a5 withDeviceAsync:(id)a6 reply:(id)a7;
- (void)performStandbyAsync:(id)a3 targetDevice:(id)a4 reply:(id)a5;
- (void)performSystemAudioModeRequestAsync:(id)a3 withDesiredState:(unint64_t)a4 reply:(id)a5;
- (void)queryBusesAsync:(id)a3;
- (void)queryLocalInstanceAsync:(id)a3 bus:(id)a4 reply:(id)a5;
- (void)queryLoggingAsync:(id)a3;
- (void)sendCommandAsync:(id)a3 fromDevice:(id)a4 reply:(id)a5;
- (void)sendCommandAsync:(unint64_t)a3 fromDevice:(id)a4 toDevice:(id)a5 withDuration:(unint64_t)a6 reply:(id)a7;
- (void)sendHIDEventAsync:(id)a3 fromDevice:(id)a4 toDevice:(id)a5 reply:(id)a6;
- (void)setCommandAsync:(unint64_t)a3 target:(id)a4 source:(id)a5 forButtonCombination:(id)a6 delay:(double)a7 reply:(id)a8;
- (void)setExtendedPropertyAsync:(id)a3 forKey:(id)a4 ofDevice:(id)a5 reply:(id)a6;
- (void)setLoggingAsync:(id)a3 reply:(id)a4;
- (void)setOSDNameAsync:(id)a3 forDevice:(id)a4 reply:(id)a5;
- (void)setOsdNameAsync:(id)a3 forBus:(id)a4 reply:(id)a5;
- (void)setPairStateAsync:(BOOL)a3 forAppleRemote:(id)a4 reply:(id)a5;
- (void)setPropertyAsync:(id)a3 forKey:(id)a4 ofBus:(id)a5 reply:(id)a6;
- (void)setTvLanguageCodeAsync:(id)a3 forBus:(id)a4 reply:(id)a5;
- (void)startLearningCommandAsync:(unint64_t)a3 withDevice:(id)a4 reply:(id)a5;
- (void)startLearningSessionWithDeviceAsync:(id)a3 forReason:(id)a4 reply:(id)a5;
- (void)startOnQueue:(id)a3;
- (void)updateMappingWithSessionOwningDeviceAsync:(id)a3 forTargetDevice:(id)a4 reply:(id)a5;
@end

@implementation CoreRCXPCService

- (void)fakeCreateCECBusAsync:(unsigned __int16)a3 reply:(id)a4
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CECPrivate) fakeCreateCECBusAsync:reply:];
  }

  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"])
  {
    v8 = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__CoreRCXPCService_CECPrivate__fakeCreateCECBusAsync_reply___block_invoke;
    block[3] = &unk_278EA2B90;
    v10 = a3;
    block[4] = self;
    block[5] = a4;
    dispatch_async(v8, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeCreateCECBusAsync:a4 reply:v7];
  }
}

- (void)fakeRemoveCECBusAsync:(id)a3 reply:(id)a4
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:reply:];
  }

  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"])
  {
    v8 = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__CoreRCXPCService_CECPrivate__fakeRemoveCECBusAsync_reply___block_invoke;
    block[3] = &unk_278EA2BB8;
    block[4] = self;
    block[5] = a3;
    block[6] = a4;
    dispatch_async(v8, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a4 reply:v7];
  }
}

- (void)_fakeRemoveCECBusAsync:(id)a3 reply:(id)a4
{
  v6 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedBusEquivalentTo:a3];
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

  v9 = *(a4 + 2);

  v9(a4, v8);
}

- (void)fakeSetCECBusLinkStateAsync:(id)a3 linkState:(BOOL)a4 physicalAddress:(unsigned __int16)a5 reply:(id)a6
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CECPrivate) fakeSetCECBusLinkStateAsync:linkState:physicalAddress:reply:];
  }

  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"])
  {
    v12 = [(CoreRCXPCService *)self queue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __92__CoreRCXPCService_CECPrivate__fakeSetCECBusLinkStateAsync_linkState_physicalAddress_reply___block_invoke;
    v13[3] = &unk_278EA2BE0;
    v13[4] = self;
    v13[5] = a3;
    v15 = a4;
    v14 = a5;
    v13[6] = a6;
    dispatch_async(v12, v13);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a6 reply:v11];
  }
}

- (void)fakeCreateRemoteCECDeviceAsync:(id)a3 bus:(id)a4 logicalAddress:(unsigned __int8)a5 physicalAddress:(unsigned __int16)a6 reply:(id)a7
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CECPrivate) fakeCreateRemoteCECDeviceAsync:bus:logicalAddress:physicalAddress:reply:];
  }

  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"])
  {
    v14 = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __104__CoreRCXPCService_CECPrivate__fakeCreateRemoteCECDeviceAsync_bus_logicalAddress_physicalAddress_reply___block_invoke;
    block[3] = &unk_278EA2C08;
    block[4] = self;
    block[5] = a3;
    v17 = a5;
    v16 = a6;
    block[6] = a4;
    block[7] = a7;
    dispatch_async(v14, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeCreateCECBusAsync:a7 reply:v13];
  }
}

- (void)fakeSetCECDeviceLogicalAddressAsync:(id)a3 logicalAddress:(unsigned __int8)a4 reply:(id)a5
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CECPrivate) fakeSetCECDeviceLogicalAddressAsync:logicalAddress:reply:];
  }

  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"])
  {
    v10 = [(CoreRCXPCService *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __89__CoreRCXPCService_CECPrivate__fakeSetCECDeviceLogicalAddressAsync_logicalAddress_reply___block_invoke;
    v11[3] = &unk_278EA2C30;
    v11[4] = self;
    v11[5] = a3;
    v12 = a4;
    v11[6] = a5;
    dispatch_async(v10, v11);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeCreateCECBusAsync:a5 reply:v9];
  }
}

- (void)fakeRemoveCECDeviceAsync:(id)a3 reply:(id)a4
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECDeviceAsync:reply:];
  }

  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"])
  {
    v8 = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__CoreRCXPCService_CECPrivate__fakeRemoveCECDeviceAsync_reply___block_invoke;
    block[3] = &unk_278EA2BB8;
    block[4] = self;
    block[5] = a3;
    block[6] = a4;
    dispatch_async(v8, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a4 reply:v7];
  }
}

- (void)_fakeRemoveCECDeviceAsync:(id)a3 reply:(id)a4
{
  v6 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedBusForDevice:a3];
  if (v6 && (v8 = v6, (v9 = [v6 deviceOnBusEquivalentTo:a3]) != 0))
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

  v13 = *(a4 + 2);

  v13(a4, v12);
}

- (void)setOSDNameAsync:(id)a3 forDevice:(id)a4 reply:(id)a5
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v10 = [(CoreRCXPCService *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__CoreRCXPCService_IR__setOSDNameAsync_forDevice_reply___block_invoke;
    v11[3] = &unk_278EA2D00;
    v11[4] = self;
    v11[5] = a3;
    v11[6] = a4;
    v11[7] = a5;
    dispatch_async(v10, v11);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a5 reply:v9];
  }
}

- (void)_setOSDNameAsync:(id)a3 forDevice:(id)a4 reply:(id)a5
{
  v12 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(IR) _setOSDNameAsync:forDevice:reply:];
  }

  v9 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:a4];
  if (v9)
  {
    v10 = v9;
    if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
    {
      [CoreRCXPCService(IR) _setOSDNameAsync:forDevice:reply:];
    }

    [v10 setOSDName:a3 error:&v12];
    v11 = v12;
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6727 userInfo:0];
    v12 = v11;
  }

  (*(a5 + 2))(a5, v11);
}

- (void)setPairStateAsync:(BOOL)a3 forAppleRemote:(id)a4 reply:(id)a5
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v10 = [(CoreRCXPCService *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __63__CoreRCXPCService_IR__setPairStateAsync_forAppleRemote_reply___block_invoke;
    v11[3] = &unk_278EA2C30;
    v12 = a3;
    v11[4] = self;
    v11[5] = a4;
    v11[6] = a5;
    dispatch_async(v10, v11);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a5 reply:v9];
  }
}

- (void)_setPairStateAsync:(BOOL)a3 forAppleRemote:(id)a4 reply:(id)a5
{
  v7 = a3;
  v12 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(IR) _setPairStateAsync:a2 forAppleRemote:? reply:?];
  }

  v10 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:a4];
  if (v10)
  {
    v11 = v10;
    if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
    {
      [CoreRCXPCService(IR) _setPairStateAsync:forAppleRemote:reply:];
    }

    if (v7)
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

  (*(a5 + 2))(a5, v12);
}

- (void)addDeviceOnBusAsync:(id)a3 withType:(unint64_t)a4 matching:(id)a5 reply:(id)a6
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v12 = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__CoreRCXPCService_IR__addDeviceOnBusAsync_withType_matching_reply___block_invoke;
    block[3] = &unk_278EA2D28;
    block[4] = self;
    block[5] = a3;
    block[7] = a6;
    block[8] = a4;
    block[6] = a5;
    dispatch_async(v12, block);
  }

  else
  {
    [CoreRCXPCService(IR) addDeviceOnBusAsync:a6 withType:v11 matching:? reply:?];
  }
}

- (void)_addDeviceOnBusAsync:(id)a3 withType:(unint64_t)a4 matching:(id)a5 reply:(id)a6
{
  v14 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(IR) _addDeviceOnBusAsync:withType:matching:reply:];
  }

  v11 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedBusEquivalentTo:a3];
  if (v11)
  {
    v12 = v11;
    if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
    {
      [CoreRCXPCService(IR) _addDeviceOnBusAsync:withType:matching:reply:];
    }

    v13 = [v12 addDeviceWithType:a4 matching:a5 error:&v14];
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

  (*(a6 + 2))(a6, v13, v14);
}

- (void)startLearningSessionWithDeviceAsync:(id)a3 forReason:(id)a4 reply:(id)a5
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v10 = [(CoreRCXPCService *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __76__CoreRCXPCService_IR__startLearningSessionWithDeviceAsync_forReason_reply___block_invoke;
    v11[3] = &unk_278EA2D00;
    v11[4] = self;
    v11[5] = a3;
    v11[6] = a4;
    v11[7] = a5;
    dispatch_async(v10, v11);
  }

  else
  {
    [CoreRCXPCService(IR) addDeviceOnBusAsync:a5 withType:v9 matching:? reply:?];
  }
}

- (void)updateMappingWithSessionOwningDeviceAsync:(id)a3 forTargetDevice:(id)a4 reply:(id)a5
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v10 = [(CoreRCXPCService *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __88__CoreRCXPCService_IR__updateMappingWithSessionOwningDeviceAsync_forTargetDevice_reply___block_invoke;
    v11[3] = &unk_278EA2D00;
    v11[4] = self;
    v11[5] = a3;
    v11[6] = a4;
    v11[7] = a5;
    dispatch_async(v10, v11);
  }

  else
  {
    [CoreRCXPCService(IR) updateMappingWithSessionOwningDeviceAsync:a5 forTargetDevice:v9 reply:?];
  }
}

- (void)addDeviceOnBusAsync:(id)a3 withType:(unint64_t)a4 matching:(id)a5 withSessionOwningDevice:(id)a6 reply:(id)a7
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v14 = [(CoreRCXPCService *)self queue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __92__CoreRCXPCService_IR__addDeviceOnBusAsync_withType_matching_withSessionOwningDevice_reply___block_invoke;
    v15[3] = &unk_278EA2D50;
    v15[4] = self;
    v15[5] = a3;
    v15[6] = a5;
    v15[7] = a6;
    v15[8] = a7;
    v15[9] = a4;
    dispatch_async(v14, v15);
  }

  else
  {
    [CoreRCXPCService(IR) addDeviceOnBusAsync:a7 withType:v13 matching:? reply:?];
  }
}

- (void)_addDeviceOnBusAsync:(id)a3 withType:(unint64_t)a4 matching:(id)a5 withSessionOwningDevice:(id)a6 reply:(id)a7
{
  v23 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v21 = a3;
    v22 = a6;
    v19 = objc_opt_class();
    Name = sel_getName(a2);
    LogPrintF();
  }

  v14 = [(CoreRCManager *)[(CoreRCXPCService *)self manager:v19] managedBusEquivalentTo:a3];
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v14;
  v16 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:a6];
  if (!v16)
  {
    [CoreRCXPCService(IR) _addDeviceOnBusAsync:withType:matching:withSessionOwningDevice:reply:];
    goto LABEL_14;
  }

  v17 = [v16 learningSession];
  if (!v17)
  {
LABEL_10:
    [CoreRCXPCService(IR) _setPairStateAsync:? forAppleRemote:? reply:?];
LABEL_14:
    v18 = 0;
    goto LABEL_9;
  }

  v18 = [v15 addDeviceWithType:a4 matching:a5 learningSession:v17 error:&v23];
  if (!v18)
  {
    [CoreRCXPCService(IR) _addDeviceOnBusAsync:withType:matching:withSessionOwningDevice:reply:];
    goto LABEL_14;
  }

LABEL_9:
  (*(a7 + 2))(a7, v18, v23);
}

- (void)deleteDeviceAsync:(id)a3 fromBus:(id)a4 reply:(id)a5
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v10 = [(CoreRCXPCService *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__CoreRCXPCService_IR__deleteDeviceAsync_fromBus_reply___block_invoke;
    v11[3] = &unk_278EA2D00;
    v11[4] = self;
    v11[5] = a3;
    v11[6] = a4;
    v11[7] = a5;
    dispatch_async(v10, v11);
  }

  else
  {
    [CoreRCXPCService(IR) updateMappingWithSessionOwningDeviceAsync:a5 forTargetDevice:v9 reply:?];
  }
}

- (void)_deleteDeviceAsync:(id)a3 fromBus:(id)a4 reply:(id)a5
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(IR) _deleteDeviceAsync:fromBus:reply:];
  }

  v9 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:a3];
  if (!v9)
  {
LABEL_14:
    [CoreRCXPCService(IR) _setPairStateAsync:? forAppleRemote:? reply:?];
    goto LABEL_15;
  }

  v10 = v9;
  if (![v9 isLocalDevice])
  {
    v11 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedBusEquivalentTo:a4];
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
  v14 = *(a5 + 2);

  v14(a5, v13, v12);
}

- (void)sendCommandAsync:(id)a3 fromDevice:(id)a4 reply:(id)a5
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v10 = [(CoreRCXPCService *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __58__CoreRCXPCService_IR__sendCommandAsync_fromDevice_reply___block_invoke;
    v11[3] = &unk_278EA2D00;
    v11[4] = self;
    v11[5] = a3;
    v11[6] = a4;
    v11[7] = a5;
    dispatch_async(v10, v11);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a5 reply:v9];
  }
}

- (void)_sendCommandAsync:(id)a3 fromDevice:(id)a4 reply:(id)a5
{
  v11 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(IR) _sendCommandAsync:fromDevice:reply:];
  }

  v9 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:a4];
  if (v9)
  {
    [v9 sendCommand:a3 error:&v11];
    v10 = v11;
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6727 userInfo:0];
    v11 = v10;
  }

  (*(a5 + 2))(a5, v10);
}

- (void)clearAllStoredCommandsFromDeviceAsync:(id)a3 reply:(id)a4
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v8 = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__CoreRCXPCService_IR__clearAllStoredCommandsFromDeviceAsync_reply___block_invoke;
    block[3] = &unk_278EA2BB8;
    block[4] = self;
    block[5] = a3;
    block[6] = a4;
    dispatch_async(v8, block);
  }

  else
  {
    [CoreRCXPCService(IR) updateMappingWithSessionOwningDeviceAsync:a4 forTargetDevice:v7 reply:?];
  }
}

- (void)_clearAllStoredCommandsFromDeviceAsync:(id)a3 reply:(id)a4
{
  v10 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(IR) _clearAllStoredCommandsFromDeviceAsync:reply:];
  }

  v7 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:a3];
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

  (*(a4 + 2))(a4, v8, v9);
}

- (void)setCommandAsync:(unint64_t)a3 target:(id)a4 source:(id)a5 forButtonCombination:(id)a6 delay:(double)a7 reply:(id)a8
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v16 = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __87__CoreRCXPCService_IR__setCommandAsync_target_source_forButtonCombination_delay_reply___block_invoke;
    block[3] = &unk_278EA2D78;
    block[4] = self;
    block[5] = a4;
    block[6] = a5;
    block[7] = a6;
    *&block[10] = a7;
    block[8] = a8;
    block[9] = a3;
    dispatch_async(v16, block);
  }

  else
  {
    [CoreRCXPCService(IR) updateMappingWithSessionOwningDeviceAsync:a8 forTargetDevice:v15 reply:?];
  }
}

- (void)_setCommandAsync:(unint64_t)a3 target:(id)a4 source:(id)a5 forButtonCombination:(id)a6 delay:(double)a7 reply:(id)a8
{
  v19 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(IR) _setCommandAsync:target:source:forButtonCombination:delay:reply:];
  }

  v15 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:a5];
  if (!v15)
  {
    goto LABEL_19;
  }

  v16 = v15;
  if (gLogCategory_CoreRCXPC > 10 || gLogCategory_CoreRCXPC == -1 && !_LogCategory_Initialize())
  {
    if (!a4)
    {
      goto LABEL_10;
    }

LABEL_9:
    a4 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:a4];
    if (a4)
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
  if (a4)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(IR) _setCommandAsync:target:source:forButtonCombination:delay:reply:];
  }

  v17 = [v16 setCommand:a3 target:a4 forButtonCombination:a6 delay:&v19 error:a7];
  v18 = v19;
LABEL_14:
  (*(a8 + 2))(a8, v17, v18);
}

- (void)changeButtonCombinationAsync:(id)a3 delay:(double)a4 enabled:(BOOL)a5 forDevice:(id)a6 reply:(id)a7
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v14 = [(CoreRCXPCService *)self queue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __83__CoreRCXPCService_IR__changeButtonCombinationAsync_delay_enabled_forDevice_reply___block_invoke;
    v15[3] = &unk_278EA2DA0;
    v15[4] = self;
    v15[5] = a3;
    *&v15[8] = a4;
    v16 = a5;
    v15[6] = a6;
    v15[7] = a7;
    dispatch_async(v14, v15);
  }

  else
  {
    [CoreRCXPCService(IR) updateMappingWithSessionOwningDeviceAsync:a7 forTargetDevice:v13 reply:?];
  }
}

- (void)_changeButtonCombinationAsync:(id)a3 delay:(double)a4 enabled:(BOOL)a5 forDevice:(id)a6 reply:(id)a7
{
  v9 = a5;
  v16 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(IR) _changeButtonCombinationAsync:delay:enabled:forDevice:reply:];
  }

  v13 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:a6];
  if (v13)
  {
    if (v9)
    {
      v14 = [v13 enableButtonCombination:a3 delay:&v16 error:a4];
    }

    else
    {
      v14 = [v13 disableButtonCombination:a3 delay:&v16 error:a4];
    }

    v15 = v14;
  }

  else
  {
    [CoreRCXPCService(IR) _setPairStateAsync:? forAppleRemote:? reply:?];
    v15 = 0;
  }

  (*(a7 + 2))(a7, v15, v16);
}

- (void)startLearningCommandAsync:(unint64_t)a3 withDevice:(id)a4 reply:(id)a5
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v10 = [(CoreRCXPCService *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __67__CoreRCXPCService_IR__startLearningCommandAsync_withDevice_reply___block_invoke;
    v11[3] = &unk_278EA2DC8;
    v11[4] = self;
    v11[5] = a4;
    v11[6] = a5;
    v11[7] = a3;
    dispatch_async(v10, v11);
  }

  else
  {
    [CoreRCXPCService(IR) updateMappingWithSessionOwningDeviceAsync:a5 forTargetDevice:v9 reply:?];
  }
}

- (void)_startLearningCommandAsync:(unint64_t)a3 withDevice:(id)a4 reply:(id)a5
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(IR) _startLearningCommandAsync:withDevice:reply:];
  }

  v9 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:a4];
  if (v9 && (v10 = [v9 learningSession]) != 0)
  {
    v11 = [v10 startLearningCommand:a3];
    v12 = 0;
  }

  else
  {
    [CoreRCXPCService(IR) _setPairStateAsync:? forAppleRemote:? reply:?];
    v11 = 0;
    v12 = v14;
  }

  v13 = *(a5 + 2);

  v13(a5, v11, v12);
}

- (void)endLearningWithDeviceAsync:(id)a3 reply:(id)a4
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v8 = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__CoreRCXPCService_IR__endLearningWithDeviceAsync_reply___block_invoke;
    block[3] = &unk_278EA2BB8;
    block[4] = self;
    block[5] = a3;
    block[6] = a4;
    dispatch_async(v8, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a4 reply:v7];
  }
}

- (void)_endLearningWithDeviceAsync:(id)a3 reply:(id)a4
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(IR) _endLearningWithDeviceAsync:reply:];
  }

  v7 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:a3];
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

  v10 = *(a4 + 2);

  v10(a4, v9);
}

- (void)addMappingWithDeviceAsync:(id)a3 withProtocolID:(unsigned __int8)a4 options:(unsigned __int8)a5 commandToMap:(unint64_t)a6 command:(unint64_t)a7 repeat:(unint64_t)a8 reply:(id)a9
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v17 = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __107__CoreRCXPCService_IR__addMappingWithDeviceAsync_withProtocolID_options_commandToMap_command_repeat_reply___block_invoke;
    block[3] = &unk_278EA2DF0;
    block[4] = self;
    block[5] = a3;
    v19 = a4;
    v20 = a5;
    block[8] = a7;
    block[9] = a8;
    block[6] = a9;
    block[7] = a6;
    dispatch_async(v17, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a9 reply:v16];
  }
}

- (void)learningSessionForDevice:(id)a3 commandProgress:(id)a4
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(IR) learningSessionForDevice:commandProgress:];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__CoreRCXPCService_IR__learningSessionForDevice_commandProgress___block_invoke;
  v7[3] = &unk_278EA2E18;
  v7[4] = a3;
  v7[5] = a4;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v7];
}

- (void)learningSessionForDevice:(id)a3 status:(unint64_t)a4
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(IR) learningSessionForDevice:status:];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__CoreRCXPCService_IR__learningSessionForDevice_status___block_invoke;
  v7[3] = &unk_278EA2E40;
  v7[4] = a3;
  v7[5] = a4;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v7];
}

- (void)learningSessionForDevice:(id)a3 duplicateCommand:(unint64_t)a4 target:(id)a5
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v10 = a4;
    v11 = a3;
    v9 = objc_opt_class();
    LogPrintF();
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__CoreRCXPCService_IR__learningSessionForDevice_duplicateCommand_target___block_invoke;
  v12[3] = &unk_278EA2E68;
  v12[5] = a5;
  v12[6] = a4;
  v12[4] = a3;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v12, v9, v10, v11];
}

- (void)learningSessionForDeviceCommandDone:(id)a3
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(IR) learningSessionForDeviceCommandDone:];
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__CoreRCXPCService_IR__learningSessionForDeviceCommandDone___block_invoke;
  v5[3] = &unk_278EA2E90;
  v5[4] = a3;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v5];
}

- (void)queryLoggingAsync:(id)a3
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

  (*(a3 + 2))(a3, v7, v6);
}

- (void)setLoggingAsync:(id)a3 reply:(id)a4
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(Private) setLoggingAsync:reply:];
  }

  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.logging"])
  {
    [a3 UTF8String];
    v7 = LogControl();
    if (v7)
    {
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v7 userInfo:0];
    }

    else
    {
      v8 = [a3 stringByReplacingOccurrencesOfString:@"+" withString:&stru_285935118];
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

  (*(a4 + 2))(a4, v9);
}

- (BOOL)checkEntitlement:(id)a3
{
  v6 = [MEMORY[0x277CCAE80] currentConnection];
  if (!v6)
  {
    [(CoreRCXPCService *)a2 checkEntitlement:?];
  }

  return [v6 corerc_checkEntitlement:a3];
}

- (void)enumerateClientsHavingEntitlement:(id)a3 usingBlock:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    [CoreRCXPCService enumerateClientsHavingEntitlement:a2 usingBlock:self];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(CoreRCXPCService *)self connections];
  v8 = [(NSSet *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 corerc_checkEntitlement:a3])
        {
          [(CoreRCXPCService *)self enumerateClient:v12 usingBlock:a4];
        }
      }

      v9 = [(NSSet *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)enumerateClientsUsingBlock:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(CoreRCXPCService *)self connections];
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        [(CoreRCXPCService *)self enumerateClient:*(*(&v11 + 1) + 8 * v9++) usingBlock:a3];
      }

      while (v7 != v9);
      v7 = [(NSSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)enumerateClient:(id)a3 usingBlock:(id)a4
{
  v5 = [a3 remoteObjectProxy];
  if ([v5 conformsToProtocol:&unk_2859434A8])
  {
    v6 = *(a4 + 2);

    v6(a4, v5);
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService listener:a4 shouldAcceptNewConnection:?];
  }

  [a4 setExportedInterface:CoreRCXPCServiceInterface()];
  [a4 setExportedObject:self];
  [a4 setRemoteObjectInterface:CoreRCXPCClientInterface()];
  [a4 setUserInfo:{objc_msgSend(MEMORY[0x277CBEB58], "set")}];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__CoreRCXPCService_listener_shouldAcceptNewConnection___block_invoke;
  v7[3] = &unk_278EA29D8;
  v7[4] = self;
  v7[5] = a4;
  [a4 setInvalidationHandler:v7];
  [(NSMutableSet *)self->_connections addObject:a4];
  [a4 resume];
  return 1;
}

- (void)connectionInvalidated:(id)a3
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService connectionInvalidated:a3];
  }

  v5 = [(CoreRCXPCService *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__CoreRCXPCService_connectionInvalidated___block_invoke;
  v6[3] = &unk_278EA29D8;
  v6[4] = a3;
  v6[5] = self;
  dispatch_async_and_wait(v5, v6);
  [a3 setInvalidationHandler:0];
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

- (void)sendHIDEventAsync:(id)a3 fromDevice:(id)a4 toDevice:(id)a5 reply:(id)a6
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v12 = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__CoreRCXPCService_sendHIDEventAsync_fromDevice_toDevice_reply___block_invoke;
    block[3] = &unk_278EA4248;
    block[4] = self;
    block[5] = a3;
    block[6] = a4;
    block[7] = a5;
    block[8] = a6;
    dispatch_async(v12, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a6 reply:v11];
  }
}

- (void)_sendHIDEventAsync:(id)a3 fromDevice:(id)a4 toDevice:(id)a5 reply:(id)a6
{
  v16 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService _sendHIDEventAsync:a2 fromDevice:? toDevice:? reply:?];
  }

  v12 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:a4];
  if (v12 && ((v13 = v12, !a5) || (v14 = -[CoreRCManager managedDeviceEquivalentTo:](-[CoreRCXPCService manager](self, "manager"), "managedDeviceEquivalentTo:", a5)) != 0 && (a5 = v14, ([objc_msgSend(v13 "bus")] & 1) != 0)))
  {
    [v13 sendHIDEvent:a3 target:a5 error:&v16];
    v15 = v16;
  }

  else
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6727 userInfo:0];
    v16 = v15;
  }

  (*(a6 + 2))(a6, v15);
}

- (void)sendCommandAsync:(unint64_t)a3 fromDevice:(id)a4 toDevice:(id)a5 withDuration:(unint64_t)a6 reply:(id)a7
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v14 = [(CoreRCXPCService *)self queue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __76__CoreRCXPCService_sendCommandAsync_fromDevice_toDevice_withDuration_reply___block_invoke;
    v15[3] = &unk_278EA4270;
    v15[4] = self;
    v15[5] = a4;
    v15[8] = a3;
    v15[9] = a6;
    v15[6] = a5;
    v15[7] = a7;
    dispatch_async(v14, v15);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a7 reply:v13];
  }
}

- (void)_sendCommandAsync:(unint64_t)a3 fromDevice:(id)a4 toDevice:(id)a5 withDuration:(unint64_t)a6 reply:(id)a7
{
  v18 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService _sendCommandAsync:a2 fromDevice:? toDevice:? withDuration:? reply:?];
  }

  v14 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:a4];
  if (v14 && ((v15 = v14, !a5) || (v16 = -[CoreRCManager managedDeviceEquivalentTo:](-[CoreRCXPCService manager](self, "manager"), "managedDeviceEquivalentTo:", a5)) != 0 && (a5 = v16, ([objc_msgSend(v15 "bus")] & 1) != 0)))
  {
    [v15 sendCommand:a3 target:a5 withDuration:a6 error:&v18];
    v17 = v18;
  }

  else
  {
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6727 userInfo:0];
    v18 = v17;
  }

  (*(a7 + 2))(a7, v17);
}

- (void)queryBusesAsync:(id)a3
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v6 = [(CoreRCXPCService *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__CoreRCXPCService_queryBusesAsync___block_invoke;
    v7[3] = &unk_278EA4298;
    v7[4] = self;
    v7[5] = a3;
    dispatch_async(v6, v7);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeCreateCECBusAsync:a3 reply:v5];
  }
}

- (void)_queryBusesAsync:(id)a3
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService _queryBusesAsync:];
  }

  v5 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] buses];
  v6 = *(a3 + 2);

  v6(a3, v5, 0);
}

- (void)setPropertyAsync:(id)a3 forKey:(id)a4 ofBus:(id)a5 reply:(id)a6
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v12 = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__CoreRCXPCService_setPropertyAsync_forKey_ofBus_reply___block_invoke;
    block[3] = &unk_278EA4248;
    block[4] = self;
    block[5] = a3;
    block[6] = a4;
    block[7] = a5;
    block[8] = a6;
    dispatch_async(v12, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a6 reply:v11];
  }
}

- (void)_setPropertyAsync:(id)a3 forKey:(id)a4 ofBus:(id)a5 reply:(id)a6
{
  v11 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService _setPropertyAsync:forKey:ofBus:reply:];
  }

  [(CoreRCManagerProvider *)[(CoreRCXPCService *)self manager] setProperty:a3 forKey:a4 ofBus:a5 error:&v11];
  (*(a6 + 2))(a6, v11);
}

- (void)getPropertyAsyncForKey:(id)a3 ofBus:(id)a4 reply:(id)a5
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.observer"])
  {
    v10 = [(CoreRCXPCService *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __55__CoreRCXPCService_getPropertyAsyncForKey_ofBus_reply___block_invoke;
    v11[3] = &unk_278EA2D00;
    v11[4] = self;
    v11[5] = a3;
    v11[6] = a4;
    v11[7] = a5;
    dispatch_async(v10, v11);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeCreateCECBusAsync:a5 reply:v9];
  }
}

- (void)_getPropertyAsyncForKey:(id)a3 ofBus:(id)a4 reply:(id)a5
{
  v10 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService _getPropertyAsyncForKey:ofBus:reply:];
  }

  v9 = [(CoreRCManagerProvider *)[(CoreRCXPCService *)self manager] propertyForKey:a3 ofBus:a4 error:&v10];
  (*(a5 + 2))(a5, v9, v10);
}

- (void)setExtendedPropertyAsync:(id)a3 forKey:(id)a4 ofDevice:(id)a5 reply:(id)a6
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v12 = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__CoreRCXPCService_setExtendedPropertyAsync_forKey_ofDevice_reply___block_invoke;
    block[3] = &unk_278EA4248;
    block[4] = self;
    block[5] = a3;
    block[6] = a4;
    block[7] = a5;
    block[8] = a6;
    dispatch_async(v12, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a6 reply:v11];
  }
}

- (void)_setExtendedPropertyAsync:(id)a3 forKey:(id)a4 ofDevice:(id)a5 reply:(id)a6
{
  v11 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService _setExtendedPropertyAsync:forKey:ofDevice:reply:];
  }

  [(CoreRCManagerProvider *)[(CoreRCXPCService *)self manager] setExtendedProperty:a3 forKey:a4 ofDevice:a5 error:&v11];
  (*(a6 + 2))(a6, v11);
}

- (void)getExtendedPropertyAsyncForKey:(id)a3 ofDevice:(id)a4 reply:(id)a5
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.observer"])
  {
    v10 = [(CoreRCXPCService *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __66__CoreRCXPCService_getExtendedPropertyAsyncForKey_ofDevice_reply___block_invoke;
    v11[3] = &unk_278EA2D00;
    v11[4] = self;
    v11[5] = a3;
    v11[6] = a4;
    v11[7] = a5;
    dispatch_async(v10, v11);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeCreateCECBusAsync:a5 reply:v9];
  }
}

- (void)_getExtendedPropertyAsyncForKey:(id)a3 ofDevice:(id)a4 reply:(id)a5
{
  v10 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService _getExtendedPropertyAsyncForKey:ofDevice:reply:];
  }

  v9 = [(CoreRCManagerProvider *)[(CoreRCXPCService *)self manager] extendedPropertyForKey:a3 ofDevice:a4 error:&v10];
  (*(a5 + 2))(a5, v9, v10);
}

- (void)manager:(id)a3 hasAdded:(id)a4
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
  v6 = [a4 devices];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        [*(*(&v13 + 1) + 8 * i) setDelegate:self];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [a4 setDelegate:self];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __37__CoreRCXPCService_manager_hasAdded___block_invoke;
  v12[3] = &unk_278EA2E90;
  v12[4] = a4;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v12];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)manager:(id)a3 hasRemoved:(id)a4
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService manager:hasRemoved:];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__CoreRCXPCService_manager_hasRemoved___block_invoke;
  v6[3] = &unk_278EA2E90;
  v6[4] = a4;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v6];
}

- (void)manager:(id)a3 hasUpdated:(id)a4
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService manager:hasUpdated:];
  }

  [a4 setDelegate:self];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__CoreRCXPCService_manager_hasUpdated___block_invoke;
  v6[3] = &unk_278EA2E90;
  v6[4] = a4;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v6];
}

- (void)bus:(id)a3 deviceHasBeenAdded:(id)a4
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v8 = a3;
    v9 = a4;
    v7 = objc_opt_class();
    LogPrintF();
  }

  [a4 setDelegate:{self, v7, v8, v9}];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__CoreRCXPCService_bus_deviceHasBeenAdded___block_invoke;
  v10[3] = &unk_278EA2E18;
  v10[4] = a3;
  v10[5] = a4;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v10];
}

- (void)bus:(id)a3 deviceHasBeenRemoved:(id)a4
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v8 = a3;
    v9 = a4;
    v7 = objc_opt_class();
    LogPrintF();
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__CoreRCXPCService_bus_deviceHasBeenRemoved___block_invoke;
  v10[3] = &unk_278EA2E18;
  v10[4] = a3;
  v10[5] = a4;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v10, v7, v8, v9];
}

- (void)bus:(id)a3 deviceHasBeenUpdated:(id)a4
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v8 = a3;
    v9 = a4;
    v7 = objc_opt_class();
    LogPrintF();
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__CoreRCXPCService_bus_deviceHasBeenUpdated___block_invoke;
  v10[3] = &unk_278EA2E18;
  v10[4] = a3;
  v10[5] = a4;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v10, v7, v8, v9];
}

- (void)device:(id)a3 receivedHIDEvent:(id)a4 fromDevice:(id)a5
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v11 = a4;
    v12 = a5;
    v9 = objc_opt_class();
    v10 = a3;
    LogPrintF();
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__CoreRCXPCService_device_receivedHIDEvent_fromDevice___block_invoke;
  v13[3] = &unk_278EA42C0;
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = a5;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v13, v9, v10, v11, v12];
}

- (void)performActiveSourceAsync:(id)a3 withMenus:(BOOL)a4 reply:(id)a5
{
  v9 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v11 = [(CoreRCXPCService *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__CoreRCXPCService_CEC__performActiveSourceAsync_withMenus_reply___block_invoke;
    v12[3] = &unk_278EA4398;
    v12[4] = self;
    v12[5] = a3;
    v13 = a4;
    v14 = v9;
    v12[6] = a5;
    dispatch_async(v11, v12);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a5 reply:v10];
  }
}

- (void)performDeckControlSetDeckStatusAsync:(unint64_t)a3 forDevice:(id)a4 reply:(id)a5
{
  v9 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v11 = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__CoreRCXPCService_CEC__performDeckControlSetDeckStatusAsync_forDevice_reply___block_invoke;
    block[3] = &unk_278EA43C0;
    block[4] = self;
    block[5] = a4;
    v13 = v9;
    block[6] = a5;
    block[7] = a3;
    dispatch_async(v11, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a5 reply:v10];
  }
}

- (void)_performDeckControlSetDeckStatusAsync:(unint64_t)a3 forDevice:(id)a4 allowRemoteDevice:(BOOL)a5 reply:(id)a6
{
  v15 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) _performDeckControlSetDeckStatusAsync:a3 forDevice:? allowRemoteDevice:? reply:?];
  }

  v11 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:a4];
  if (v11)
  {
    v13 = v11;
    if (([v11 isLocalDevice] & 1) != 0 || a5)
    {
      [v13 deckControlSetDeckStatus:a3 error:&v15];
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

  (*(a6 + 2))(a6, v15);
}

- (void)performDeckControlCommandAsync:(id)a3 controlMode:(unint64_t)a4 targetDevice:(id)a5 reply:(id)a6
{
  v11 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v13 = [(CoreRCXPCService *)self queue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __87__CoreRCXPCService_CEC__performDeckControlCommandAsync_controlMode_targetDevice_reply___block_invoke;
    v14[3] = &unk_278EA2DA0;
    v14[4] = self;
    v14[5] = a3;
    v14[7] = a6;
    v14[8] = a4;
    v15 = v11;
    v14[6] = a5;
    dispatch_async(v13, v14);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a6 reply:v12];
  }
}

- (void)_performDeckControlCommandAsync:(id)a3 controlMode:(unint64_t)a4 targetDevice:(id)a5 allowRemoteDevice:(BOOL)a6 reply:(id)a7
{
  v25 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v13 = objc_opt_class();
    v23 = CoreCECDeckControlModeString(a4);
    v24 = a5;
    v21 = v13;
    v22 = a3;
    LogPrintF();
  }

  v14 = [(CoreRCManager *)[(CoreRCXPCService *)self manager:v21] managedDeviceEquivalentTo:a3];
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v14;
  if (([v14 isLocalDevice] & 1) == 0 && !a6)
  {
    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA590];
    v19 = -6773;
    goto LABEL_15;
  }

  if (a5)
  {
    v16 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:a5];
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

  [v15 deckControlCommandWithMode:a4 target:v16 error:&v25];
  v20 = v25;
LABEL_13:
  (*(a7 + 2))(a7, v20);
}

- (void)performDeckControlPlayAsync:(id)a3 playMode:(unint64_t)a4 targetDevice:(id)a5 reply:(id)a6
{
  v11 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v13 = [(CoreRCXPCService *)self queue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __81__CoreRCXPCService_CEC__performDeckControlPlayAsync_playMode_targetDevice_reply___block_invoke;
    v14[3] = &unk_278EA2DA0;
    v14[4] = self;
    v14[5] = a3;
    v14[7] = a6;
    v14[8] = a4;
    v15 = v11;
    v14[6] = a5;
    dispatch_async(v13, v14);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a6 reply:v12];
  }
}

- (void)_performDeckControlPlayAsync:(id)a3 playMode:(unint64_t)a4 targetDevice:(id)a5 allowRemoteDevice:(BOOL)a6 reply:(id)a7
{
  v25 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v13 = objc_opt_class();
    v23 = CoreCECPlayModeString(a4);
    v24 = a5;
    v21 = v13;
    v22 = a3;
    LogPrintF();
  }

  v14 = [(CoreRCManager *)[(CoreRCXPCService *)self manager:v21] managedDeviceEquivalentTo:a3];
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v14;
  if (([v14 isLocalDevice] & 1) == 0 && !a6)
  {
    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA590];
    v19 = -6773;
    goto LABEL_15;
  }

  if (a5)
  {
    v16 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:a5];
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

  [v15 deckControlPlayWithMode:a4 target:v16 error:&v25];
  v20 = v25;
LABEL_13:
  (*(a7 + 2))(a7, v20);
}

- (void)performDeckControlRefreshStatusAsync:(id)a3 targetDevice:(id)a4 requestType:(unint64_t)a5 reply:(id)a6
{
  v11 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v13 = [(CoreRCXPCService *)self queue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __93__CoreRCXPCService_CEC__performDeckControlRefreshStatusAsync_targetDevice_requestType_reply___block_invoke;
    v14[3] = &unk_278EA2DA0;
    v14[4] = self;
    v14[5] = a3;
    v14[7] = a6;
    v14[8] = a5;
    v15 = v11;
    v14[6] = a4;
    dispatch_async(v13, v14);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a6 reply:v12];
  }
}

- (void)_performDeckControlRefreshStatusAsync:(id)a3 targetDevice:(id)a4 requestType:(unint64_t)a5 allowRemoteDevice:(BOOL)a6 reply:(id)a7
{
  v23 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v21 = a3;
    v22 = a4;
    v20 = objc_opt_class();
    LogPrintF();
  }

  v13 = [(CoreRCManager *)[(CoreRCXPCService *)self manager:v20] managedDeviceEquivalentTo:a3];
  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = v13;
  if (([v13 isLocalDevice] & 1) == 0 && !a6)
  {
    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA590];
    v19 = -6773;
    goto LABEL_13;
  }

  v15 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:a4];
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

  [v14 deckControlRefreshStatus:v15 requestType:a5 error:&v23];
  v16 = v23;
LABEL_10:
  (*(a7 + 2))(a7, v16);
}

- (void)performInactiveSourceAsync:(id)a3 reply:(id)a4
{
  v7 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v9 = [(CoreRCXPCService *)self queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__CoreRCXPCService_CEC__performInactiveSourceAsync_reply___block_invoke;
    v10[3] = &unk_278EA2C30;
    v10[4] = self;
    v10[5] = a3;
    v11 = v7;
    v10[6] = a4;
    dispatch_async(v9, v10);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a4 reply:v8];
  }
}

- (void)_performInactiveSourceAsync:(id)a3 allowRemoteDevice:(BOOL)a4 reply:(id)a5
{
  v15 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) _performInactiveSourceAsync:allowRemoteDevice:reply:];
  }

  v9 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:a3];
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
  if (([v9 isLocalDevice] & 1) == 0 && !a4)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA590];
    v14 = -6773;
    goto LABEL_12;
  }

  [v10 resignActiveSource:&v15];
  v11 = v15;
LABEL_8:
  (*(a5 + 2))(a5, v11);
}

- (void)performRefreshDevicesAsync:(id)a3 reply:(id)a4
{
  v7 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v9 = [(CoreRCXPCService *)self queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__CoreRCXPCService_CEC__performRefreshDevicesAsync_reply___block_invoke;
    v10[3] = &unk_278EA2C30;
    v10[4] = self;
    v10[5] = a3;
    v11 = v7;
    v10[6] = a4;
    dispatch_async(v9, v10);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a4 reply:v8];
  }
}

- (void)_performRefreshDevicesAsync:(id)a3 allowRemoteDevice:(BOOL)a4 reply:(id)a5
{
  v15 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) _performRefreshDevicesAsync:allowRemoteDevice:reply:];
  }

  v9 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:a3];
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
  if (([v9 isLocalDevice] & 1) == 0 && !a4)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA590];
    v14 = -6773;
    goto LABEL_12;
  }

  [objc_msgSend(v10 "bus")];
  v11 = v15;
LABEL_8:
  (*(a5 + 2))(a5, v11);
}

- (void)performRefreshProperties:(id)a3 ofDevice:(id)a4 withDeviceAsync:(id)a5 reply:(id)a6
{
  v11 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v13 = [(CoreRCXPCService *)self queue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __81__CoreRCXPCService_CEC__performRefreshProperties_ofDevice_withDeviceAsync_reply___block_invoke;
    v14[3] = &unk_278EA43E8;
    v14[4] = self;
    v14[5] = a3;
    v14[6] = a4;
    v14[7] = a5;
    v15 = v11;
    v14[8] = a6;
    dispatch_async(v13, v14);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a6 reply:v12];
  }
}

- (void)_performRefreshProperties:(id)a3 ofDevice:(id)a4 withDeviceAsync:(id)a5 allowRemoteDevice:(BOOL)a6 reply:(id)a7
{
  v20 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) _performRefreshProperties:ofDevice:withDeviceAsync:allowRemoteDevice:reply:];
  }

  v13 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:a5];
  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = v13;
  if (([v13 isLocalDevice] & 1) == 0 && !a6)
  {
    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA590];
    v19 = -6773;
    goto LABEL_13;
  }

  v15 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:a4];
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

  [v14 refreshProperties:a3 ofDevice:v15 error:&v20];
  v16 = v20;
LABEL_9:
  (*(a7 + 2))(a7, v16);
}

- (void)performRequestActiveSourceAsync:(id)a3 reply:(id)a4
{
  v7 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v9 = [(CoreRCXPCService *)self queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __63__CoreRCXPCService_CEC__performRequestActiveSourceAsync_reply___block_invoke;
    v10[3] = &unk_278EA2C30;
    v10[4] = self;
    v10[5] = a3;
    v11 = v7;
    v10[6] = a4;
    dispatch_async(v9, v10);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a4 reply:v8];
  }
}

- (void)_performRequestActiveSourceAsync:(id)a3 allowRemoteDevice:(BOOL)a4 reply:(id)a5
{
  v15 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) _performRequestActiveSourceAsync:allowRemoteDevice:reply:];
  }

  v9 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:a3];
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
  if (([v9 isLocalDevice] & 1) == 0 && !a4)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA590];
    v14 = -6773;
    goto LABEL_12;
  }

  [v10 requestActiveSource:&v15];
  v11 = v15;
LABEL_8:
  (*(a5 + 2))(a5, v11);
}

- (void)performSetSystemAudioControlEnabled:(BOOL)a3 withDeviceAsync:(id)a4 reply:(id)a5
{
  v9 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v11 = [(CoreRCXPCService *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __83__CoreRCXPCService_CEC__performSetSystemAudioControlEnabled_withDeviceAsync_reply___block_invoke;
    v12[3] = &unk_278EA4398;
    v13 = a3;
    v12[4] = self;
    v12[5] = a4;
    v14 = v9;
    v12[6] = a5;
    dispatch_async(v11, v12);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a5 reply:v10];
  }
}

- (void)performSystemAudioModeRequestAsync:(id)a3 withDesiredState:(unint64_t)a4 reply:(id)a5
{
  v9 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v11 = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__CoreRCXPCService_CEC__performSystemAudioModeRequestAsync_withDesiredState_reply___block_invoke;
    block[3] = &unk_278EA43C0;
    block[4] = self;
    block[5] = a3;
    v13 = v9;
    block[6] = a5;
    block[7] = a4;
    dispatch_async(v11, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a5 reply:v10];
  }
}

- (void)_performSystemAudioModeRequestAsync:(id)a3 withDesiredState:(unint64_t)a4 allowRemoteDevice:(BOOL)a5 reply:(id)a6
{
  v17 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) _performSystemAudioModeRequestAsync:withDesiredState:allowRemoteDevice:reply:];
  }

  v11 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:a3];
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
  if (([v11 isLocalDevice] & 1) == 0 && !a5)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA590];
    v16 = -6773;
    goto LABEL_12;
  }

  [v12 systemAudioModeRequest:a4 error:&v17];
  v13 = v17;
LABEL_8:
  (*(a6 + 2))(a6, v13);
}

- (void)performSetAudioReturnChannelControlEnabled:(BOOL)a3 withDeviceAsync:(id)a4 reply:(id)a5
{
  v9 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v11 = [(CoreRCXPCService *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __90__CoreRCXPCService_CEC__performSetAudioReturnChannelControlEnabled_withDeviceAsync_reply___block_invoke;
    v12[3] = &unk_278EA4398;
    v13 = a3;
    v12[4] = self;
    v12[5] = a4;
    v14 = v9;
    v12[6] = a5;
    dispatch_async(v11, v12);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a5 reply:v10];
  }
}

- (void)performRequestAudioReturnChannelStatusChangeTo:(unint64_t)a3 withDeviceAsync:(id)a4 reply:(id)a5
{
  v9 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v11 = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __94__CoreRCXPCService_CEC__performRequestAudioReturnChannelStatusChangeTo_withDeviceAsync_reply___block_invoke;
    block[3] = &unk_278EA43C0;
    block[4] = self;
    block[5] = a4;
    v13 = v9;
    block[6] = a5;
    block[7] = a3;
    dispatch_async(v11, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a5 reply:v10];
  }
}

- (void)_performRequestAudioReturnChannelStatusChangeTo:(unint64_t)a3 withDeviceAsync:(id)a4 allowRemoteDevice:(BOOL)a5 reply:(id)a6
{
  v17 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) _performRequestAudioReturnChannelStatusChangeTo:withDeviceAsync:allowRemoteDevice:reply:];
  }

  v11 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:a4];
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
  if (([v11 isLocalDevice] & 1) == 0 && !a5)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA590];
    v16 = -6773;
    goto LABEL_12;
  }

  [v12 requestAudioReturnChannelStatusChangeTo:a3 error:&v17];
  v13 = v17;
LABEL_8:
  (*(a6 + 2))(a6, v13);
}

- (void)performSetAudioVolumeStatus:(unint64_t)a3 withDeviceAsync:(id)a4 reply:(id)a5
{
  v9 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v11 = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__CoreRCXPCService_CEC__performSetAudioVolumeStatus_withDeviceAsync_reply___block_invoke;
    block[3] = &unk_278EA43C0;
    block[4] = self;
    block[5] = a4;
    v13 = v9;
    block[6] = a5;
    block[7] = a3;
    dispatch_async(v11, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a5 reply:v10];
  }
}

- (void)_performSetAudioVolumeStatus:(unint64_t)a3 withDeviceAsync:(id)a4 allowRemoteDevice:(BOOL)a5 reply:(id)a6
{
  v17 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) _performSetAudioVolumeStatus:withDeviceAsync:allowRemoteDevice:reply:];
  }

  v11 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:a4];
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
  if (([v11 isLocalDevice] & 1) == 0 && !a5)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA590];
    v16 = -6773;
    goto LABEL_12;
  }

  [v12 setAudioVolumeStatus:a3 error:&v17];
  v13 = v17;
LABEL_8:
  (*(a6 + 2))(a6, v13);
}

- (void)performSetAudioMuteStatus:(BOOL)a3 withDeviceAsync:(id)a4 reply:(id)a5
{
  v9 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v11 = [(CoreRCXPCService *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __73__CoreRCXPCService_CEC__performSetAudioMuteStatus_withDeviceAsync_reply___block_invoke;
    v12[3] = &unk_278EA4398;
    v13 = a3;
    v12[4] = self;
    v12[5] = a4;
    v14 = v9;
    v12[6] = a5;
    dispatch_async(v11, v12);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a5 reply:v10];
  }
}

- (void)performSetSupportedAudioFormats:(id)a3 withDeviceAsync:(id)a4 reply:(id)a5
{
  v9 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v11 = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__CoreRCXPCService_CEC__performSetSupportedAudioFormats_withDeviceAsync_reply___block_invoke;
    block[3] = &unk_278EA4410;
    block[4] = self;
    block[5] = a3;
    v13 = v9;
    block[6] = a4;
    block[7] = a5;
    dispatch_async(v11, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a5 reply:v10];
  }
}

- (void)_performSetSupportedAudioFormats:(id)a3 withDeviceAsync:(id)a4 allowRemoteDevice:(BOOL)a5 reply:(id)a6
{
  v17 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) _performSetSupportedAudioFormats:withDeviceAsync:allowRemoteDevice:reply:];
  }

  v11 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:a4];
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
  if (([v11 isLocalDevice] & 1) == 0 && !a5)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA590];
    v16 = -6773;
    goto LABEL_12;
  }

  [v12 setSupportedAudioFormats:a3 error:&v17];
  v13 = v17;
LABEL_8:
  (*(a6 + 2))(a6, v13);
}

- (void)performSetTrackAudioStatusEnabled:(BOOL)a3 pressTimeout:(int64_t)a4 pollInterval:(int64_t)a5 withDeviceAsync:(id)a6 reply:(id)a7
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v14 = [(CoreRCXPCService *)self queue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __107__CoreRCXPCService_CEC__performSetTrackAudioStatusEnabled_pressTimeout_pollInterval_withDeviceAsync_reply___block_invoke;
    v15[3] = &unk_278EA4438;
    v16 = a3;
    v15[7] = a4;
    v15[8] = a5;
    v15[4] = self;
    v15[5] = a6;
    v15[6] = a7;
    dispatch_async(v14, v15);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a7 reply:v13];
  }
}

- (void)performRequestAudioStatusAsync:(id)a3 reply:(id)a4
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v8 = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__CoreRCXPCService_CEC__performRequestAudioStatusAsync_reply___block_invoke;
    block[3] = &unk_278EA2BB8;
    block[4] = self;
    block[5] = a3;
    block[6] = a4;
    dispatch_async(v8, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a4 reply:v7];
  }
}

- (void)_performRequestAudioStatusAsync:(id)a3 reply:(id)a4
{
  v9 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) _performRequestAudioStatusAsync:reply:];
  }

  v7 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:a3];
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

  (*(a4 + 2))(a4, v8);
}

- (void)performRequestSystemAudioModeStatusChangeTo:(unint64_t)a3 withDeviceAsync:(id)a4 reply:(id)a5
{
  v9 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v11 = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91__CoreRCXPCService_CEC__performRequestSystemAudioModeStatusChangeTo_withDeviceAsync_reply___block_invoke;
    block[3] = &unk_278EA43C0;
    block[4] = self;
    block[5] = a4;
    v13 = v9;
    block[6] = a5;
    block[7] = a3;
    dispatch_async(v11, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a5 reply:v10];
  }
}

- (void)_performRequestSystemAudioModeStatusChangeTo:(unint64_t)a3 withDeviceAsync:(id)a4 allowRemoteDevice:(BOOL)a5 reply:(id)a6
{
  v17 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) _performRequestSystemAudioModeStatusChangeTo:withDeviceAsync:allowRemoteDevice:reply:];
  }

  v11 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:a4];
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
  if (([v11 isLocalDevice] & 1) == 0 && !a5)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA590];
    v16 = -6773;
    goto LABEL_12;
  }

  [v12 requestSystemAudioModeStatusChangeTo:a3 error:&v17];
  v13 = v17;
LABEL_8:
  (*(a6 + 2))(a6, v13);
}

- (void)performSetPowerStatus:(unint64_t)a3 withDeviceAsync:(id)a4 reply:(id)a5
{
  v9 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v11 = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__CoreRCXPCService_CEC__performSetPowerStatus_withDeviceAsync_reply___block_invoke;
    block[3] = &unk_278EA43C0;
    block[4] = self;
    block[5] = a4;
    v13 = v9;
    block[6] = a5;
    block[7] = a3;
    dispatch_async(v11, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a5 reply:v10];
  }
}

- (void)_performSetPowerStatus:(unint64_t)a3 withDeviceAsync:(id)a4 allowRemoteDevice:(BOOL)a5 reply:(id)a6
{
  v17 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) _performSetPowerStatus:withDeviceAsync:allowRemoteDevice:reply:];
  }

  v11 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:a4];
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
  if (([v11 isLocalDevice] & 1) == 0 && !a5)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA590];
    v16 = -6773;
    goto LABEL_12;
  }

  [v12 setPowerStatus:a3 error:&v17];
  v13 = v17;
LABEL_8:
  (*(a6 + 2))(a6, v13);
}

- (void)performRemoveFromBus:(id)a3 reply:(id)a4
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v8 = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__CoreRCXPCService_CEC__performRemoveFromBus_reply___block_invoke;
    block[3] = &unk_278EA2BB8;
    block[4] = self;
    block[5] = a3;
    block[6] = a4;
    dispatch_async(v8, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a4 reply:v7];
  }
}

- (void)_performRemoveFromBus:(id)a3 reply:(id)a4
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) _performRemoveFromBus:reply:];
  }

  v7 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:a3];
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

  v10 = *(a4 + 2);

  v10(a4, v9);
}

- (void)performStandbyAsync:(id)a3 targetDevice:(id)a4 reply:(id)a5
{
  v9 = [(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v11 = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__CoreRCXPCService_CEC__performStandbyAsync_targetDevice_reply___block_invoke;
    block[3] = &unk_278EA4410;
    block[4] = self;
    block[5] = a3;
    v13 = v9;
    block[6] = a4;
    block[7] = a5;
    dispatch_async(v11, block);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a5 reply:v10];
  }
}

- (void)_performStandbyAsync:(id)a3 targetDevice:(id)a4 allowRemoteDevice:(BOOL)a5 reply:(id)a6
{
  v21 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v19 = a3;
    v20 = a4;
    v18 = objc_opt_class();
    LogPrintF();
  }

  v11 = [(CoreRCManager *)[(CoreRCXPCService *)self manager:v18] managedDeviceEquivalentTo:a3];
  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = v11;
  if (([v11 isLocalDevice] & 1) == 0 && !a5)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA590];
    v16 = -6773;
    goto LABEL_15;
  }

  if (a4)
  {
    v13 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:a4];
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
  (*(a6 + 2))(a6, v17);
}

- (void)queryLocalInstanceAsync:(id)a3 bus:(id)a4 reply:(id)a5
{
  v9 = [MEMORY[0x277CCAE80] currentConnection];
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v11 = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__CoreRCXPCService_CEC__queryLocalInstanceAsync_bus_reply___block_invoke;
    block[3] = &unk_278EA4248;
    block[4] = self;
    block[5] = a3;
    block[6] = a4;
    block[7] = v9;
    block[8] = a5;
    dispatch_async(v11, block);
  }

  else
  {
    [CoreRCXPCService(CEC) queryLocalInstanceAsync:a5 bus:v10 reply:?];
  }
}

- (void)performRemoveDeviceWithTypeAsync:(unint64_t)a3 bus:(id)a4 reply:(id)a5
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v10 = [(CoreRCXPCService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__CoreRCXPCService_CEC__performRemoveDeviceWithTypeAsync_bus_reply___block_invoke;
    block[3] = &unk_278EA2DC8;
    block[4] = self;
    block[5] = a4;
    block[6] = a5;
    block[7] = a3;
    dispatch_async(v10, block);
    v11 = 0;
  }

  else
  {
    [CoreRCXPCService(CEC) _performDeckControlSetDeckStatusAsync:v9 forDevice:? allowRemoteDevice:? reply:?];
    v11 = v13;
  }

  (*(a5 + 2))(a5, v11);
}

- (void)_performRemoveDeviceWithTypeAsync:(unint64_t)a3 bus:(id)a4 reply:(id)a5
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v10 = a3;
    v11 = a4;
    v9 = objc_opt_class();
    LogPrintF();
  }

  v8 = [(CoreRCManager *)[(CoreRCXPCService *)self manager:v9] managedBusEquivalentTo:a4];
  if (v8)
  {
    [v8 removeDeviceWithType:a3];
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

- (void)setOsdNameAsync:(id)a3 forBus:(id)a4 reply:(id)a5
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.control"])
  {
    v10 = [(CoreRCXPCService *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __54__CoreRCXPCService_CEC__setOsdNameAsync_forBus_reply___block_invoke;
    v11[3] = &unk_278EA2D00;
    v11[4] = self;
    v11[5] = a3;
    v11[6] = a4;
    v11[7] = a5;
    dispatch_async(v10, v11);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a5 reply:v9];
  }
}

- (void)_setOsdNameAsync:(id)a3 forBus:(id)a4 reply:(id)a5
{
  v14 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v12 = a3;
    v13 = a4;
    v11 = objc_opt_class();
    LogPrintF();
  }

  v9 = [(CoreRCManager *)[(CoreRCXPCService *)self manager:v11] managedBusEquivalentTo:a4];
  if (v9)
  {
    [v9 setOSDName:a3 error:&v14];
    if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
    {
      [CoreRCXPCService(CEC) _setOsdNameAsync:forBus:reply:];
    }
  }

  else
  {
    [CoreRCManagerProvider setProperty:v10 forKey:? ofBus:? error:?];
  }

  (*(a5 + 2))(a5, v14);
}

- (void)setTvLanguageCodeAsync:(id)a3 forBus:(id)a4 reply:(id)a5
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"])
  {
    v10 = [(CoreRCXPCService *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __61__CoreRCXPCService_CEC__setTvLanguageCodeAsync_forBus_reply___block_invoke;
    v11[3] = &unk_278EA2D00;
    v11[4] = self;
    v11[5] = a3;
    v11[6] = a4;
    v11[7] = a5;
    dispatch_async(v10, v11);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a5 reply:v9];
  }
}

- (void)_setTvLanguageCodeAsync:(id)a3 forBus:(id)a4 reply:(id)a5
{
  v14 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v12 = a3;
    v13 = a4;
    v11 = objc_opt_class();
    LogPrintF();
  }

  v9 = [(CoreRCManager *)[(CoreRCXPCService *)self manager:v11] managedBusEquivalentTo:a4];
  if (v9)
  {
    [v9 setTvLanguageCode:a3 error:&v14];
    if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
    {
      [CoreRCXPCService(CEC) _setTvLanguageCodeAsync:forBus:reply:];
    }
  }

  else
  {
    [CoreRCManagerProvider setProperty:v10 forKey:? ofBus:? error:?];
  }

  (*(a5 + 2))(a5, v14);
}

- (void)injectRXMessageAsync:(id)a3 forBus:(id)a4 reply:(id)a5
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"])
  {
    v10 = [(CoreRCXPCService *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__CoreRCXPCService_CEC__injectRXMessageAsync_forBus_reply___block_invoke;
    v11[3] = &unk_278EA2D00;
    v11[4] = self;
    v11[5] = a3;
    v11[6] = a4;
    v11[7] = a5;
    dispatch_async(v10, v11);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a5 reply:v9];
  }
}

- (void)_injectRXMessageAsync:(id)a3 forBus:(id)a4 reply:(id)a5
{
  v14 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v12 = a3;
    v13 = a4;
    v11 = objc_opt_class();
    LogPrintF();
  }

  v9 = [(CoreRCManager *)[(CoreRCXPCService *)self manager:v11] managedBusEquivalentTo:a4];
  if (v9)
  {
    [v9 injectRXMessage:a3 error:&v14];
    if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
    {
      [CoreRCXPCService(CEC) _injectRXMessageAsync:forBus:reply:];
    }
  }

  else
  {
    [CoreRCManagerProvider setProperty:v10 forKey:? ofBus:? error:?];
  }

  (*(a5 + 2))(a5, v14);
}

- (void)injectTXMessageAsync:(id)a3 forBus:(id)a4 reply:(id)a5
{
  if ([(CoreRCXPCService *)self checkEntitlement:@"com.apple.private.cecd.private"])
  {
    v10 = [(CoreRCXPCService *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__CoreRCXPCService_CEC__injectTXMessageAsync_forBus_reply___block_invoke;
    v11[3] = &unk_278EA2D00;
    v11[4] = self;
    v11[5] = a3;
    v11[6] = a4;
    v11[7] = a5;
    dispatch_async(v10, v11);
  }

  else
  {
    [CoreRCXPCService(CECPrivate) fakeRemoveCECBusAsync:a5 reply:v9];
  }
}

- (void)_injectTXMessageAsync:(id)a3 forBus:(id)a4 reply:(id)a5
{
  v14 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v12 = a3;
    v13 = a4;
    v11 = objc_opt_class();
    LogPrintF();
  }

  v9 = [(CoreRCManager *)[(CoreRCXPCService *)self manager:v11] managedBusEquivalentTo:a4];
  if (v9)
  {
    [v9 injectTXMessage:a3 error:&v14];
    if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
    {
      [CoreRCXPCService(CEC) _injectTXMessageAsync:forBus:reply:];
    }
  }

  else
  {
    [CoreRCManagerProvider setProperty:v10 forKey:? ofBus:? error:?];
  }

  (*(a5 + 2))(a5, v14);
}

- (void)cecBus:(id)a3 activeSourceHasChangedTo:(id)a4 fromDevice:(id)a5
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) cecBus:activeSourceHasChangedTo:fromDevice:];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__CoreRCXPCService_CEC__cecBus_activeSourceHasChangedTo_fromDevice___block_invoke;
  v9[3] = &unk_278EA42C0;
  v9[4] = a3;
  v9[5] = a4;
  v9[6] = a5;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.control" usingBlock:v9];
}

- (void)cecBus:(id)a3 rxMessageReceived:(id)a4
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) cecBus:rxMessageReceived:];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__CoreRCXPCService_CEC__cecBus_rxMessageReceived___block_invoke;
  v7[3] = &unk_278EA2E18;
  v7[4] = a3;
  v7[5] = a4;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.control" usingBlock:v7];
}

- (void)cecBus:(id)a3 txMessageSent:(id)a4 error:(id)a5
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) cecBus:txMessageSent:error:];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__CoreRCXPCService_CEC__cecBus_txMessageSent_error___block_invoke;
  v9[3] = &unk_278EA42C0;
  v9[4] = a3;
  v9[5] = a4;
  v9[6] = a5;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.control" usingBlock:v9];
}

- (void)cecDeviceShouldAssertActiveSource:(id)a3
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) cecDeviceShouldAssertActiveSource:];
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__CoreRCXPCService_CEC__cecDeviceShouldAssertActiveSource___block_invoke;
  v5[3] = &unk_278EA2E90;
  v5[4] = a3;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.control" usingBlock:v5];
}

- (void)cecDevice:(id)a3 activeSourceStatusHasChanged:(BOOL)a4
{
  v4 = a4;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v7 = objc_opt_class();
    v8 = "NO";
    if (v4)
    {
      v8 = "YES";
    }

    v10 = a3;
    v11 = v8;
    v9 = v7;
    LogPrintF();
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__CoreRCXPCService_CEC__cecDevice_activeSourceStatusHasChanged___block_invoke;
  v12[3] = &unk_278EA4460;
  v12[4] = a3;
  v13 = v4;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v12, v9, v10, v11];
}

- (void)cecDevice:(id)a3 deckControlPlayHasBeenReceived:(unint64_t)a4 fromDevice:(id)a5
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v9 = objc_opt_class();
    v12 = CoreCECPlayModeString(a4);
    v13 = a5;
    v10 = v9;
    v11 = a3;
    LogPrintF();
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__CoreRCXPCService_CEC__cecDevice_deckControlPlayHasBeenReceived_fromDevice___block_invoke;
  v14[3] = &unk_278EA2E68;
  v14[5] = a5;
  v14[6] = a4;
  v14[4] = a3;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v14, v10, v11, v12, v13];
}

- (void)cecDevice:(id)a3 deckControlCommandHasBeenReceived:(unint64_t)a4 fromDevice:(id)a5
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v9 = objc_opt_class();
    v12 = CoreCECDeckControlModeString(a4);
    v13 = a5;
    v10 = v9;
    v11 = a3;
    LogPrintF();
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__CoreRCXPCService_CEC__cecDevice_deckControlCommandHasBeenReceived_fromDevice___block_invoke;
  v14[3] = &unk_278EA2E68;
  v14[5] = a5;
  v14[6] = a4;
  v14[4] = a3;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v14, v10, v11, v12, v13];
}

- (void)cecDevice:(id)a3 deckControlStatusHasBeenUpdated:(unint64_t)a4 fromDevice:(id)a5
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v9 = objc_opt_class();
    v12 = CoreCECDeckInfoString(a4);
    v13 = a5;
    v10 = v9;
    v11 = a3;
    LogPrintF();
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__CoreRCXPCService_CEC__cecDevice_deckControlStatusHasBeenUpdated_fromDevice___block_invoke;
  v14[3] = &unk_278EA2E68;
  v14[5] = a5;
  v14[6] = a4;
  v14[4] = a3;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v14, v10, v11, v12, v13];
}

- (void)cecDevice:(id)a3 featureAbort:(id)a4
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v8 = a3;
    v9 = a4;
    v7 = objc_opt_class();
    LogPrintF();
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__CoreRCXPCService_CEC__cecDevice_featureAbort___block_invoke;
  v10[3] = &unk_278EA2E18;
  v10[4] = a3;
  v10[5] = a4;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v10, v7, v8, v9];
}

- (void)cecDevice:(id)a3 standbyRequestHasBeenReceived:(id)a4
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v8 = a3;
    v9 = a4;
    v7 = objc_opt_class();
    LogPrintF();
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__CoreRCXPCService_CEC__cecDevice_standbyRequestHasBeenReceived___block_invoke;
  v10[3] = &unk_278EA2E18;
  v10[4] = a3;
  v10[5] = a4;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v10, v7, v8, v9];
}

- (void)cecDevice:(id)a3 receivedRequestAudioReturnChannelStatusChangeTo:(unint64_t)a4 fromDevice:(id)a5
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v9 = objc_opt_class();
    v12 = CoreCECActivationStatusString(a4);
    v13 = a5;
    v10 = v9;
    v11 = a3;
    LogPrintF();
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __94__CoreRCXPCService_CEC__cecDevice_receivedRequestAudioReturnChannelStatusChangeTo_fromDevice___block_invoke;
  v14[3] = &unk_278EA2E68;
  v14[5] = a5;
  v14[6] = a4;
  v14[4] = a3;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v14, v10, v11, v12, v13];
}

- (void)cecDevice:(id)a3 requestAudioReturnChannelStatusChangeTo:(unint64_t)a4 didFinishWithResult:(BOOL)a5 error:(id)a6
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) cecDevice:a4 requestAudioReturnChannelStatusChangeTo:? didFinishWithResult:? error:?];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __101__CoreRCXPCService_CEC__cecDevice_requestAudioReturnChannelStatusChangeTo_didFinishWithResult_error___block_invoke;
  v11[3] = &unk_278EA4488;
  v11[5] = a6;
  v11[6] = a4;
  v12 = a5;
  v11[4] = a3;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v11];
}

- (void)cecDevice:(id)a3 receivedRequestSystemAudioModeStatusChangeTo:(unint64_t)a4 fromDevice:(id)a5
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v9 = objc_opt_class();
    v12 = CoreCECActivationStatusString(a4);
    v13 = a5;
    v10 = v9;
    v11 = a3;
    LogPrintF();
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __91__CoreRCXPCService_CEC__cecDevice_receivedRequestSystemAudioModeStatusChangeTo_fromDevice___block_invoke;
  v14[3] = &unk_278EA2E68;
  v14[5] = a5;
  v14[6] = a4;
  v14[4] = a3;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v14, v10, v11, v12, v13];
}

- (void)cecDevice:(id)a3 requestSystemAudioModeStatusChangeTo:(unint64_t)a4 didFinishWithResult:(BOOL)a5 error:(id)a6
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) cecDevice:a4 requestSystemAudioModeStatusChangeTo:? didFinishWithResult:? error:?];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __98__CoreRCXPCService_CEC__cecDevice_requestSystemAudioModeStatusChangeTo_didFinishWithResult_error___block_invoke;
  v11[3] = &unk_278EA4488;
  v11[5] = a6;
  v11[6] = a4;
  v12 = a5;
  v11[4] = a3;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.observer" usingBlock:v11];
}

- (void)cecDevice:(id)a3 audioStatusReceived:(unint64_t)a4 muteStatus:(BOOL)a5
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCXPCService(CEC) cecDevice:audioStatusReceived:muteStatus:];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__CoreRCXPCService_CEC__cecDevice_audioStatusReceived_muteStatus___block_invoke;
  v9[3] = &unk_278EA44B0;
  v9[4] = a3;
  v9[5] = a4;
  v10 = a5;
  [(CoreRCXPCService *)self enumerateClientsHavingEntitlement:@"com.apple.private.cecd.control" usingBlock:v9];
}

- (void)_startLearningSessionWithDeviceAsync:(id)a3 forReason:(id)a4 reply:(id)a5
{
  v19 = 0;
  v9 = [a4 unsignedIntegerValue];
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v17 = objc_opt_class();
    Name = sel_getName(a2);
    LogPrintF();
  }

  v10 = [(CoreRCManager *)[(CoreRCXPCService *)self manager:v17] managedDeviceEquivalentTo:a3];
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

  v12 = [v11 startLearningSessionWithReason:v9 error:&v19];
  v13 = v12;
  if (v12)
  {
    [v12 setBridgeDelegate:self];
  }

LABEL_9:
  (*(a5 + 2))(a5, v13, v19);
}

- (void)_updateMappingWithSessionOwningDeviceAsync:(id)a3 forTargetDevice:(id)a4 reply:(id)a5
{
  v25 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v20 = objc_opt_class();
    Name = sel_getName(a2);
    LogPrintF();
  }

  v10 = [(CoreRCManager *)[(CoreRCXPCService *)self manager:v20] managedDeviceEquivalentTo:a4];
  if (v10 && (v11 = v10, (v12 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedDeviceEquivalentTo:a3]) != 0))
  {
    v13 = v12;
    if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
    {
      v21 = v13;
      v24 = v11;
      LogPrintF();
    }

    v14 = [v13 learningSession];
    if (v14)
    {
      v15 = v14;
      if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
      {
        v22 = [v15 mappings];
        LogPrintF();
      }

      v16 = [v11 updateMappingWithSession:v15 error:{&v25, v22}];
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

  (*(a5 + 2))(a5, v16, v17);
}

- (void)startOnQueue:(id)a3
{
  if (!self->_queue)
  {
    v5 = MEMORY[0x277D85CD0];
    if (a3)
    {
      v5 = a3;
    }

    self->_queue = v5;
    v6 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.corercd"];
    self->_listener = v6;
    [(NSXPCListener *)v6 setDelegate:self];
    [(NSXPCListener *)self->_listener _setQueue:a3];
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

- (void)_queryLocalInstanceAsync:(id)a3 bus:(id)a4 client:(id)a5 reply:(id)a6
{
  v18 = 0;
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v16 = objc_opt_class();
    LogPrintF();
  }

  v11 = [(CoreRCManager *)[(CoreRCXPCService *)self manager] managedBusEquivalentTo:a4];
  if (v11)
  {
    v13 = v11;
    if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
    {
      v17 = v13;
      LogPrintF();
    }

    v14 = [v13 addDeviceWithAttributes:a3 error:{&v18, v17}];
    v15 = v14;
    if (v14)
    {
      [v14 addOwningClient:a5];
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

  (*(a6 + 2))(a6, v15, v18);
}

@end