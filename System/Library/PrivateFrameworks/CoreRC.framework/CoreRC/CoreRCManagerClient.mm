@interface CoreRCManagerClient
- (BOOL)sendCommand:(unint64_t)command fromDevice:(id)device toDevice:(id)toDevice withDuration:(unint64_t)duration error:(id *)error;
- (BOOL)sendHIDEvent:(id)event fromDevice:(id)device toDevice:(id)toDevice error:(id *)error;
- (BOOL)setExtendedProperty:(id)property forKey:(id)key ofDevice:(id)device error:(id *)error;
- (BOOL)setProperty:(id)property forKey:(id)key ofBus:(id)bus error:(id *)error;
- (id)buses;
- (id)connection;
- (id)extendedPropertyForKey:(id)key ofDevice:(id)device error:(id *)error;
- (id)propertyForKey:(id)key ofBus:(id)bus error:(id *)error;
- (void)addDeviceOnBusAsync:(id)async withType:(unint64_t)type matching:(id)matching reply:(id)reply;
- (void)addDeviceOnBusAsync:(id)async withType:(unint64_t)type matching:(id)matching withSessionOwningDevice:(id)device reply:(id)reply;
- (void)bus:(id)bus deviceHasBeenAdded:(id)added;
- (void)bus:(id)bus deviceHasBeenRemoved:(id)removed;
- (void)bus:(id)bus deviceHasBeenUpdated:(id)updated;
- (void)busHasBeenAdded:(id)added;
- (void)busHasBeenRemoved:(id)removed;
- (void)busHasBeenUpdated:(id)updated;
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
- (void)clearAllStoredCommandsFromDeviceAsync:(id)async reply:(id)reply;
- (void)connectionInterrupted;
- (void)dealloc;
- (void)deleteDeviceAsync:(id)async fromBus:(id)bus reply:(id)reply;
- (void)device:(id)device receivedHIDEvent:(id)event fromDevice:(id)fromDevice;
- (void)endLearningWithDeviceAsync:(id)async reply:(id)reply;
- (void)fakeRemoveCECBusAsync:(id)async reply:(id)reply;
- (void)fakeRemoveCECDeviceAsync:(id)async reply:(id)reply;
- (void)getExtendedPropertyAsyncForKey:(id)key ofDevice:(id)device reply:(id)reply;
- (void)getPropertyAsyncForKey:(id)key ofBus:(id)bus reply:(id)reply;
- (void)injectRXMessageAsync:(id)async forBus:(id)bus reply:(id)reply;
- (void)injectTXMessageAsync:(id)async forBus:(id)bus reply:(id)reply;
- (void)invalidate;
- (void)learningSessionForDevice:(id)device commandProgress:(id)progress;
- (void)learningSessionForDevice:(id)device duplicateCommand:(unint64_t)command target:(id)target;
- (void)learningSessionForDevice:(id)device status:(unint64_t)status;
- (void)learningSessionForDeviceCommandDone:(id)done;
- (void)mergeBus:(id)bus;
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
- (void)performSetAudioVolumeStatus:(unint64_t)status withDeviceAsync:(id)async reply:(id)reply;
- (void)performSetPowerStatus:(unint64_t)status withDeviceAsync:(id)async reply:(id)reply;
- (void)performSetSupportedAudioFormats:(id)formats withDeviceAsync:(id)async reply:(id)reply;
- (void)performStandbyAsync:(id)async targetDevice:(id)device reply:(id)reply;
- (void)performSystemAudioModeRequestAsync:(id)async withDesiredState:(unint64_t)state reply:(id)reply;
- (void)queryBusesAsync:(id)async;
- (void)queryLocalInstanceAsync:(id)async bus:(id)bus reply:(id)reply;
- (void)queryLoggingAsync:(id)async;
- (void)sendCommandAsync:(id)async fromDevice:(id)device reply:(id)reply;
- (void)sendCommandAsync:(unint64_t)async fromDevice:(id)device toDevice:(id)toDevice withDuration:(unint64_t)duration reply:(id)reply;
- (void)sendHIDEventAsync:(id)async fromDevice:(id)device toDevice:(id)toDevice reply:(id)reply;
- (void)setCommandAsync:(unint64_t)async target:(id)target source:(id)source forButtonCombination:(id)combination delay:(double)delay reply:(id)reply;
- (void)setDelegate:(id)delegate;
- (void)setExtendedPropertyAsync:(id)async forKey:(id)key ofDevice:(id)device reply:(id)reply;
- (void)setLogging:(id)logging;
- (void)setLoggingAsync:(id)async reply:(id)reply;
- (void)setOSDNameAsync:(id)async forDevice:(id)device reply:(id)reply;
- (void)setOsdNameAsync:(id)async forBus:(id)bus reply:(id)reply;
- (void)setPropertyAsync:(id)async forKey:(id)key ofBus:(id)bus reply:(id)reply;
- (void)setTvLanguageCodeAsync:(id)async forBus:(id)bus reply:(id)reply;
- (void)startLearningCommandAsync:(unint64_t)async withDevice:(id)device reply:(id)reply;
- (void)startLearningSessionWithDeviceAsync:(id)async forReason:(id)reason reply:(id)reply;
- (void)synchBuses:(id)buses;
- (void)updateMappingWithSessionOwningDeviceAsync:(id)async forTargetDevice:(id)device reply:(id)reply;
@end

@implementation CoreRCManagerClient

- (void)performDeckControlSetDeckStatusAsync:(unint64_t)async forDevice:(id)device reply:(id)reply
{
  v8 = [-[CoreRCManagerClient connection](self "connection")];

  [v8 performDeckControlSetDeckStatusAsync:async forDevice:device reply:reply];
}

- (void)performDeckControlCommandAsync:(id)async controlMode:(unint64_t)mode targetDevice:(id)device reply:(id)reply
{
  v10 = [-[CoreRCManagerClient connection](self "connection")];

  [v10 performDeckControlCommandAsync:async controlMode:mode targetDevice:device reply:reply];
}

- (void)performDeckControlPlayAsync:(id)async playMode:(unint64_t)mode targetDevice:(id)device reply:(id)reply
{
  v10 = [-[CoreRCManagerClient connection](self "connection")];

  [v10 performDeckControlPlayAsync:async playMode:mode targetDevice:device reply:reply];
}

- (void)performDeckControlRefreshStatusAsync:(id)async targetDevice:(id)device requestType:(unint64_t)type reply:(id)reply
{
  v10 = [-[CoreRCManagerClient connection](self "connection")];

  [v10 performDeckControlRefreshStatusAsync:async targetDevice:device requestType:type reply:reply];
}

- (void)performInactiveSourceAsync:(id)async reply:(id)reply
{
  v6 = [-[CoreRCManagerClient connection](self "connection")];

  [v6 performInactiveSourceAsync:async reply:reply];
}

- (void)performRefreshDevicesAsync:(id)async reply:(id)reply
{
  v6 = [-[CoreRCManagerClient connection](self "connection")];

  [v6 performRefreshDevicesAsync:async reply:reply];
}

- (void)performRefreshProperties:(id)properties ofDevice:(id)device withDeviceAsync:(id)async reply:(id)reply
{
  v10 = [-[CoreRCManagerClient connection](self "connection")];

  [v10 performRefreshProperties:properties ofDevice:device withDeviceAsync:async reply:reply];
}

- (void)performRequestActiveSourceAsync:(id)async reply:(id)reply
{
  v6 = [-[CoreRCManagerClient connection](self "connection")];

  [v6 performRequestActiveSourceAsync:async reply:reply];
}

- (void)performSystemAudioModeRequestAsync:(id)async withDesiredState:(unint64_t)state reply:(id)reply
{
  v8 = [-[CoreRCManagerClient connection](self "connection")];

  [v8 performSystemAudioModeRequestAsync:async withDesiredState:state reply:reply];
}

- (void)performRequestAudioReturnChannelStatusChangeTo:(unint64_t)to withDeviceAsync:(id)async reply:(id)reply
{
  v8 = [-[CoreRCManagerClient connection](self "connection")];

  [v8 performRequestAudioReturnChannelStatusChangeTo:to withDeviceAsync:async reply:reply];
}

- (void)performSetAudioVolumeStatus:(unint64_t)status withDeviceAsync:(id)async reply:(id)reply
{
  v8 = [-[CoreRCManagerClient connection](self "connection")];

  [v8 performSetAudioVolumeStatus:status withDeviceAsync:async reply:reply];
}

- (void)performSetSupportedAudioFormats:(id)formats withDeviceAsync:(id)async reply:(id)reply
{
  v8 = [-[CoreRCManagerClient connection](self "connection")];

  [v8 performSetSupportedAudioFormats:formats withDeviceAsync:async reply:reply];
}

- (void)performRequestAudioStatusAsync:(id)async reply:(id)reply
{
  v6 = [-[CoreRCManagerClient connection](self "connection")];

  [v6 performRequestAudioStatusAsync:async reply:reply];
}

- (void)performRequestSystemAudioModeStatusChangeTo:(unint64_t)to withDeviceAsync:(id)async reply:(id)reply
{
  v8 = [-[CoreRCManagerClient connection](self "connection")];

  [v8 performRequestSystemAudioModeStatusChangeTo:to withDeviceAsync:async reply:reply];
}

- (void)performSetPowerStatus:(unint64_t)status withDeviceAsync:(id)async reply:(id)reply
{
  v8 = [-[CoreRCManagerClient connection](self "connection")];

  [v8 performSetPowerStatus:status withDeviceAsync:async reply:reply];
}

- (void)performRemoveFromBus:(id)bus reply:(id)reply
{
  v6 = [-[CoreRCManagerClient connection](self "connection")];

  [v6 performRemoveFromBus:bus reply:reply];
}

- (void)performStandbyAsync:(id)async targetDevice:(id)device reply:(id)reply
{
  v8 = [-[CoreRCManagerClient connection](self "connection")];

  [v8 performStandbyAsync:async targetDevice:device reply:reply];
}

- (void)queryLocalInstanceAsync:(id)async bus:(id)bus reply:(id)reply
{
  connection = [(CoreRCManagerClient *)self connection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__CoreRCManagerClient_CEC__queryLocalInstanceAsync_bus_reply___block_invoke;
  v9[3] = &unk_278EA2960;
  v9[4] = reply;
  [objc_msgSend(connection remoteObjectProxyWithErrorHandler:{v9), "queryLocalInstanceAsync:bus:reply:", async, bus, reply}];
}

- (void)performRemoveDeviceWithTypeAsync:(unint64_t)async bus:(id)bus reply:(id)reply
{
  v8 = [-[CoreRCManagerClient connection](self "connection")];

  [v8 performRemoveDeviceWithTypeAsync:async bus:bus reply:reply];
}

- (void)setOsdNameAsync:(id)async forBus:(id)bus reply:(id)reply
{
  v8 = [-[CoreRCManagerClient connection](self "connection")];

  [v8 setOsdNameAsync:async forBus:bus reply:reply];
}

- (void)setTvLanguageCodeAsync:(id)async forBus:(id)bus reply:(id)reply
{
  v8 = [-[CoreRCManagerClient connection](self "connection")];

  [v8 setTvLanguageCodeAsync:async forBus:bus reply:reply];
}

- (void)injectRXMessageAsync:(id)async forBus:(id)bus reply:(id)reply
{
  v8 = [-[CoreRCManagerClient connection](self "connection")];

  [v8 injectRXMessageAsync:async forBus:bus reply:reply];
}

- (void)injectTXMessageAsync:(id)async forBus:(id)bus reply:(id)reply
{
  v8 = [-[CoreRCManagerClient connection](self "connection")];

  [v8 injectTXMessageAsync:async forBus:bus reply:reply];
}

- (void)cecBus:(id)bus activeSourceHasChangedTo:(id)to fromDevice:(id)device
{
  serialQueue = [(CoreRCManager *)self serialQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__CoreRCManagerClient_CEC__cecBus_activeSourceHasChangedTo_fromDevice___block_invoke;
  v10[3] = &unk_278EA2988;
  v10[4] = bus;
  v10[5] = to;
  v10[6] = device;
  v10[7] = self;
  dispatch_async(serialQueue, v10);
}

- (void)cecBus:(id)bus rxMessageReceived:(id)received
{
  serialQueue = [(CoreRCManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__CoreRCManagerClient_CEC__cecBus_rxMessageReceived___block_invoke;
  block[3] = &unk_278EA29B0;
  block[4] = bus;
  block[5] = self;
  block[6] = received;
  dispatch_async(serialQueue, block);
}

- (void)cecBus:(id)bus txMessageSent:(id)sent error:(id)error
{
  serialQueue = [(CoreRCManager *)self serialQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__CoreRCManagerClient_CEC__cecBus_txMessageSent_error___block_invoke;
  v10[3] = &unk_278EA2988;
  v10[4] = bus;
  v10[5] = self;
  v10[6] = sent;
  v10[7] = error;
  dispatch_async(serialQueue, v10);
}

- (void)cecDeviceShouldAssertActiveSource:(id)source
{
  serialQueue = [(CoreRCManager *)self serialQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__CoreRCManagerClient_CEC__cecDeviceShouldAssertActiveSource___block_invoke;
  v6[3] = &unk_278EA29D8;
  v6[4] = source;
  v6[5] = self;
  dispatch_async(serialQueue, v6);
}

- (void)cecDevice:(id)device activeSourceStatusHasChanged:(BOOL)changed
{
  serialQueue = [(CoreRCManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__CoreRCManagerClient_CEC__cecDevice_activeSourceStatusHasChanged___block_invoke;
  block[3] = &unk_278EA2A00;
  changedCopy = changed;
  block[4] = device;
  block[5] = self;
  dispatch_async(serialQueue, block);
}

- (void)cecDevice:(id)device deckControlPlayHasBeenReceived:(unint64_t)received fromDevice:(id)fromDevice
{
  serialQueue = [(CoreRCManager *)self serialQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__CoreRCManagerClient_CEC__cecDevice_deckControlPlayHasBeenReceived_fromDevice___block_invoke;
  v10[3] = &unk_278EA2A28;
  v10[4] = device;
  v10[5] = fromDevice;
  v10[6] = self;
  v10[7] = received;
  dispatch_async(serialQueue, v10);
}

- (void)cecDevice:(id)device deckControlCommandHasBeenReceived:(unint64_t)received fromDevice:(id)fromDevice
{
  serialQueue = [(CoreRCManager *)self serialQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__CoreRCManagerClient_CEC__cecDevice_deckControlCommandHasBeenReceived_fromDevice___block_invoke;
  v10[3] = &unk_278EA2A28;
  v10[4] = device;
  v10[5] = fromDevice;
  v10[6] = self;
  v10[7] = received;
  dispatch_async(serialQueue, v10);
}

- (void)cecDevice:(id)device deckControlStatusHasBeenUpdated:(unint64_t)updated fromDevice:(id)fromDevice
{
  serialQueue = [(CoreRCManager *)self serialQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__CoreRCManagerClient_CEC__cecDevice_deckControlStatusHasBeenUpdated_fromDevice___block_invoke;
  v10[3] = &unk_278EA2A28;
  v10[4] = device;
  v10[5] = fromDevice;
  v10[6] = self;
  v10[7] = updated;
  dispatch_async(serialQueue, v10);
}

- (void)cecDevice:(id)device featureAbort:(id)abort
{
  serialQueue = [(CoreRCManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__CoreRCManagerClient_CEC__cecDevice_featureAbort___block_invoke;
  block[3] = &unk_278EA29B0;
  block[4] = device;
  block[5] = abort;
  block[6] = self;
  dispatch_async(serialQueue, block);
}

- (void)cecDevice:(id)device standbyRequestHasBeenReceived:(id)received
{
  serialQueue = [(CoreRCManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__CoreRCManagerClient_CEC__cecDevice_standbyRequestHasBeenReceived___block_invoke;
  block[3] = &unk_278EA29B0;
  block[4] = device;
  block[5] = received;
  block[6] = self;
  dispatch_async(serialQueue, block);
}

- (void)cecDevice:(id)device receivedRequestAudioReturnChannelStatusChangeTo:(unint64_t)to fromDevice:(id)fromDevice
{
  serialQueue = [(CoreRCManager *)self serialQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__CoreRCManagerClient_CEC__cecDevice_receivedRequestAudioReturnChannelStatusChangeTo_fromDevice___block_invoke;
  v10[3] = &unk_278EA2A28;
  v10[4] = device;
  v10[5] = fromDevice;
  v10[6] = self;
  v10[7] = to;
  dispatch_async(serialQueue, v10);
}

- (void)cecDevice:(id)device requestAudioReturnChannelStatusChangeTo:(unint64_t)to didFinishWithResult:(BOOL)result error:(id)error
{
  serialQueue = [(CoreRCManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104__CoreRCManagerClient_CEC__cecDevice_requestAudioReturnChannelStatusChangeTo_didFinishWithResult_error___block_invoke;
  block[3] = &unk_278EA2A50;
  resultCopy = result;
  block[4] = device;
  block[5] = error;
  block[6] = self;
  block[7] = to;
  dispatch_async(serialQueue, block);
}

- (void)cecDevice:(id)device receivedRequestSystemAudioModeStatusChangeTo:(unint64_t)to fromDevice:(id)fromDevice
{
  serialQueue = [(CoreRCManager *)self serialQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __94__CoreRCManagerClient_CEC__cecDevice_receivedRequestSystemAudioModeStatusChangeTo_fromDevice___block_invoke;
  v10[3] = &unk_278EA2A28;
  v10[4] = device;
  v10[5] = fromDevice;
  v10[6] = self;
  v10[7] = to;
  dispatch_async(serialQueue, v10);
}

- (void)cecDevice:(id)device requestSystemAudioModeStatusChangeTo:(unint64_t)to didFinishWithResult:(BOOL)result error:(id)error
{
  serialQueue = [(CoreRCManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__CoreRCManagerClient_CEC__cecDevice_requestSystemAudioModeStatusChangeTo_didFinishWithResult_error___block_invoke;
  block[3] = &unk_278EA2A50;
  resultCopy = result;
  block[4] = device;
  block[5] = error;
  block[6] = self;
  block[7] = to;
  dispatch_async(serialQueue, block);
}

- (void)cecDevice:(id)device audioStatusReceived:(unint64_t)received muteStatus:(BOOL)status
{
  serialQueue = [(CoreRCManager *)self serialQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__CoreRCManagerClient_CEC__cecDevice_audioStatusReceived_muteStatus___block_invoke;
  v10[3] = &unk_278EA2A78;
  v10[4] = device;
  v10[5] = self;
  v10[6] = received;
  statusCopy = status;
  dispatch_async(serialQueue, v10);
}

- (void)queryLoggingAsync:(id)async
{
  connection = [(CoreRCManagerClient *)self connection];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__CoreRCManagerClient_Private__queryLoggingAsync___block_invoke;
  v5[3] = &unk_278EA2960;
  v5[4] = async;
  [objc_msgSend(connection remoteObjectProxyWithErrorHandler:{v5), "queryLoggingAsync:", async}];
}

- (void)setLoggingAsync:(id)async reply:(id)reply
{
  v6 = [-[CoreRCManagerClient connection](self "connection")];

  [v6 setLoggingAsync:async reply:reply];
}

- (void)fakeRemoveCECBusAsync:(id)async reply:(id)reply
{
  v6 = [-[CoreRCManagerClient connection](self "connection")];

  [v6 fakeRemoveCECBusAsync:async reply:reply];
}

- (void)fakeRemoveCECDeviceAsync:(id)async reply:(id)reply
{
  v6 = [-[CoreRCManagerClient connection](self "connection")];

  [v6 fakeRemoveCECDeviceAsync:async reply:reply];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = CoreRCManagerClient;
  [(CoreRCManager *)&v3 dealloc];
}

void __33__CoreRCManagerClient_connection__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__CoreRCManagerClient_connection__block_invoke_2;
  block[3] = &unk_278EA3400;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

- (void)connectionInterrupted
{
  if (gLogCategory_CoreRCManager <= 40 && (gLogCategory_CoreRCManager != -1 || _LogCategory_Initialize()))
  {
    [(CoreRCManagerClient *)self connectionInterrupted];
  }

  self->_connection = 0;

  [(CoreRCManagerClient *)self buses];
}

- (void)invalidate
{
  [(NSXPCConnection *)self->_connection setExportedObject:0];
  [(NSXPCConnection *)self->_connection invalidate];

  self->_connection = 0;
}

- (BOOL)setProperty:(id)property forKey:(id)key ofBus:(id)bus error:(id *)error
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__CoreRCManagerClient_setProperty_forKey_ofBus_error___block_invoke;
  v7[3] = &unk_278EA3428;
  v7[4] = self;
  v7[5] = property;
  v7[6] = key;
  v7[7] = bus;
  return CoreRCWaitForAsyncOperation(error, v7);
}

- (id)propertyForKey:(id)key ofBus:(id)bus error:(id *)error
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__2;
  v13 = __Block_byref_object_dispose__2;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__CoreRCManagerClient_propertyForKey_ofBus_error___block_invoke;
  v8[3] = &unk_278EA3478;
  v8[4] = self;
  v8[5] = key;
  v8[6] = bus;
  v8[7] = &v9;
  if (CoreRCWaitForAsyncOperation(error, v8))
  {
    v5 = v10[5];
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __50__CoreRCManagerClient_propertyForKey_ofBus_error___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v2 = a1[5];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__CoreRCManagerClient_propertyForKey_ofBus_error___block_invoke_2;
  v7[3] = &unk_278EA3450;
  v4 = a1[6];
  v5 = a1[7];
  v7[4] = a2;
  v7[5] = v5;
  return [v3 getPropertyAsyncForKey:v2 ofBus:v4 reply:v7];
}

uint64_t __50__CoreRCManagerClient_propertyForKey_ofBus_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    *(*(*(a1 + 40) + 8) + 40) = [a2 copy];
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

- (BOOL)setExtendedProperty:(id)property forKey:(id)key ofDevice:(id)device error:(id *)error
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__CoreRCManagerClient_setExtendedProperty_forKey_ofDevice_error___block_invoke;
  v7[3] = &unk_278EA3428;
  v7[4] = self;
  v7[5] = property;
  v7[6] = key;
  v7[7] = device;
  return CoreRCWaitForAsyncOperation(error, v7);
}

- (id)extendedPropertyForKey:(id)key ofDevice:(id)device error:(id *)error
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__2;
  v13 = __Block_byref_object_dispose__2;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__CoreRCManagerClient_extendedPropertyForKey_ofDevice_error___block_invoke;
  v8[3] = &unk_278EA3478;
  v8[4] = self;
  v8[5] = key;
  v8[6] = device;
  v8[7] = &v9;
  if (CoreRCWaitForAsyncOperation(error, v8))
  {
    v5 = v10[5];
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __61__CoreRCManagerClient_extendedPropertyForKey_ofDevice_error___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v2 = a1[5];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__CoreRCManagerClient_extendedPropertyForKey_ofDevice_error___block_invoke_2;
  v7[3] = &unk_278EA3450;
  v4 = a1[6];
  v5 = a1[7];
  v7[4] = a2;
  v7[5] = v5;
  return [v3 getExtendedPropertyAsyncForKey:v2 ofDevice:v4 reply:v7];
}

uint64_t __61__CoreRCManagerClient_extendedPropertyForKey_ofDevice_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    *(*(*(a1 + 40) + 8) + 40) = [a2 copy];
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

- (void)setDelegate:(id)delegate
{
  v4.receiver = self;
  v4.super_class = CoreRCManagerClient;
  [(CoreRCManager *)&v4 setDelegate:delegate];
  [(CoreRCManagerClient *)self buses];
}

- (id)buses
{
  v15 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__2;
  v13 = __Block_byref_object_dispose__2;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __28__CoreRCManagerClient_buses__block_invoke;
  v8[3] = &unk_278EA34C8;
  v8[4] = self;
  v8[5] = &v9;
  if (CoreRCWaitForAsyncOperation(&v15, v8))
  {
    [(CoreRCManagerClient *)self synchBuses:v10[5]];
  }

  v3 = v15;
  if (v15 && gLogCategory_CoreRCManager <= 90)
  {
    if (gLogCategory_CoreRCManager == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_8;
      }

      v3 = v15;
    }

    v6 = v3;
    LogPrintF();
  }

LABEL_8:
  v7.receiver = self;
  v7.super_class = CoreRCManagerClient;
  buses = [(CoreRCManager *)&v7 buses];
  _Block_object_dispose(&v9, 8);
  return buses;
}

uint64_t __28__CoreRCManagerClient_buses__block_invoke(uint64_t a1, uint64_t a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __28__CoreRCManagerClient_buses__block_invoke_2;
  v5[3] = &unk_278EA34A0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[4] = a2;
  v5[5] = v3;
  return [v2 queryBusesAsync:v5];
}

uint64_t __28__CoreRCManagerClient_buses__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
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

- (void)mergeBus:(id)bus
{
  v11 = *MEMORY[0x277D85DE8];
  if (!bus)
  {
    [CoreRCManagerClient mergeBus:];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    busCopy = bus;
    _os_log_impl(&dword_247384000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[CoreRC] manager: %@ mergeBus: %@", &v7, 0x16u);
  }

  v5 = [(CoreRCManager *)self managedBusEquivalentTo:bus];
  if (v5)
  {
    [v5 mergePropertiesFromBus:bus];
  }

  else
  {
    [(CoreRCManager *)self addBus:bus];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)synchBuses:(id)buses
{
  v31 = *MEMORY[0x277D85DE8];
  if (!buses)
  {
    [CoreRCManagerClient synchBuses:];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    selfCopy = self;
    v29 = 2112;
    busesCopy = buses;
    _os_log_impl(&dword_247384000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[CoreRC] manager: %@ synchBuses: %@", buf, 0x16u);
  }

  busesInternal = [(CoreRCManager *)self busesInternal];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __34__CoreRCManagerClient_synchBuses___block_invoke;
  v24[3] = &unk_278EA34F0;
  v24[4] = buses;
  v24[5] = self;
  v6 = [(NSMutableSet *)busesInternal objectsPassingTest:v24];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(CoreRCManager *)self removeBus:*(*(&v20 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v8);
  }

  [(NSMutableSet *)[(CoreRCManager *)self busesInternal] intersectSet:buses];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = [buses countByEnumeratingWithState:&v16 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(buses);
        }

        [(CoreRCManagerClient *)self mergeBus:*(*(&v16 + 1) + 8 * j)];
      }

      v12 = [buses countByEnumeratingWithState:&v16 objects:v25 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)sendHIDEvent:(id)event fromDevice:(id)device toDevice:(id)toDevice error:(id *)error
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreRCManagerClient sendHIDEvent:fromDevice:toDevice:error:];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__CoreRCManagerClient_sendHIDEvent_fromDevice_toDevice_error___block_invoke;
  v12[3] = &unk_278EA3428;
  v12[4] = self;
  v12[5] = event;
  v12[6] = device;
  v12[7] = toDevice;
  return CoreRCWaitForAsyncOperation(error, v12);
}

- (BOOL)sendCommand:(unint64_t)command fromDevice:(id)device toDevice:(id)toDevice withDuration:(unint64_t)duration error:(id *)error
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreRCManagerClient sendCommand:fromDevice:toDevice:withDuration:error:];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __74__CoreRCManagerClient_sendCommand_fromDevice_toDevice_withDuration_error___block_invoke;
  v14[3] = &unk_278EA3518;
  v14[4] = self;
  v14[5] = device;
  v14[6] = toDevice;
  v14[7] = command;
  v14[8] = duration;
  return CoreRCWaitForAsyncOperation(error, v14);
}

- (void)queryBusesAsync:(id)async
{
  connection = [(CoreRCManagerClient *)self connection];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__CoreRCManagerClient_queryBusesAsync___block_invoke;
  v5[3] = &unk_278EA2960;
  v5[4] = async;
  [objc_msgSend(connection remoteObjectProxyWithErrorHandler:{v5), "queryBusesAsync:", async}];
}

- (void)sendHIDEventAsync:(id)async fromDevice:(id)device toDevice:(id)toDevice reply:(id)reply
{
  v10 = [-[CoreRCManagerClient connection](self "connection")];

  [v10 sendHIDEventAsync:async fromDevice:device toDevice:toDevice reply:reply];
}

- (void)sendCommandAsync:(unint64_t)async fromDevice:(id)device toDevice:(id)toDevice withDuration:(unint64_t)duration reply:(id)reply
{
  v12 = [-[CoreRCManagerClient connection](self "connection")];

  [v12 sendCommandAsync:async fromDevice:device toDevice:toDevice withDuration:duration reply:reply];
}

- (void)setPropertyAsync:(id)async forKey:(id)key ofBus:(id)bus reply:(id)reply
{
  v10 = [-[CoreRCManagerClient connection](self "connection")];

  [v10 setPropertyAsync:async forKey:key ofBus:bus reply:reply];
}

- (void)getPropertyAsyncForKey:(id)key ofBus:(id)bus reply:(id)reply
{
  connection = [(CoreRCManagerClient *)self connection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__CoreRCManagerClient_getPropertyAsyncForKey_ofBus_reply___block_invoke;
  v9[3] = &unk_278EA2960;
  v9[4] = reply;
  [objc_msgSend(connection remoteObjectProxyWithErrorHandler:{v9), "getPropertyAsyncForKey:ofBus:reply:", key, bus, reply}];
}

- (void)setExtendedPropertyAsync:(id)async forKey:(id)key ofDevice:(id)device reply:(id)reply
{
  v10 = [-[CoreRCManagerClient connection](self "connection")];

  [v10 setExtendedPropertyAsync:async forKey:key ofDevice:device reply:reply];
}

- (void)getExtendedPropertyAsyncForKey:(id)key ofDevice:(id)device reply:(id)reply
{
  connection = [(CoreRCManagerClient *)self connection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__CoreRCManagerClient_getExtendedPropertyAsyncForKey_ofDevice_reply___block_invoke;
  v9[3] = &unk_278EA2960;
  v9[4] = reply;
  [objc_msgSend(connection remoteObjectProxyWithErrorHandler:{v9), "getExtendedPropertyAsyncForKey:ofDevice:reply:", key, device, reply}];
}

- (void)busHasBeenAdded:(id)added
{
  v15 = *MEMORY[0x277D85DE8];
  if (!added)
  {
    [CoreRCManagerClient busHasBeenAdded:];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    connection = self->_connection;
    *buf = 138412802;
    selfCopy = self;
    v11 = 2112;
    addedCopy = added;
    v13 = 2112;
    v14 = connection;
    _os_log_impl(&dword_247384000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[CoreRC] manager: %@ busHasBeenAdded: %@ connection: %@", buf, 0x20u);
  }

  serialQueue = [(CoreRCManager *)self serialQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__CoreRCManagerClient_busHasBeenAdded___block_invoke;
  v8[3] = &unk_278EA29D8;
  v8[4] = self;
  v8[5] = added;
  dispatch_async(serialQueue, v8);
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __39__CoreRCManagerClient_busHasBeenAdded___block_invoke(uint64_t a1)
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    __39__CoreRCManagerClient_busHasBeenAdded___block_invoke_cold_1(a1);
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 mergeBus:v3];
}

- (void)busHasBeenRemoved:(id)removed
{
  v15 = *MEMORY[0x277D85DE8];
  if (!removed)
  {
    [CoreRCManagerClient busHasBeenRemoved:];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    connection = self->_connection;
    *buf = 138412802;
    selfCopy = self;
    v11 = 2112;
    removedCopy = removed;
    v13 = 2112;
    v14 = connection;
    _os_log_impl(&dword_247384000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[CoreRC] manager: %@ busHasBeenRemoved: %@ connection: %@", buf, 0x20u);
  }

  serialQueue = [(CoreRCManager *)self serialQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__CoreRCManagerClient_busHasBeenRemoved___block_invoke;
  v8[3] = &unk_278EA29D8;
  v8[4] = self;
  v8[5] = removed;
  dispatch_async(serialQueue, v8);
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __41__CoreRCManagerClient_busHasBeenRemoved___block_invoke(uint64_t a1)
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    __41__CoreRCManagerClient_busHasBeenRemoved___block_invoke_cold_1(a1);
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 removeBus:v3];
}

- (void)busHasBeenUpdated:(id)updated
{
  v15 = *MEMORY[0x277D85DE8];
  if (!updated)
  {
    [CoreRCManagerClient busHasBeenUpdated:];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    connection = self->_connection;
    *buf = 138412802;
    selfCopy = self;
    v11 = 2112;
    updatedCopy = updated;
    v13 = 2112;
    v14 = connection;
    _os_log_impl(&dword_247384000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[CoreRC] manager: %@ busHasBeenUpdated: %@ connection: %@", buf, 0x20u);
  }

  serialQueue = [(CoreRCManager *)self serialQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__CoreRCManagerClient_busHasBeenUpdated___block_invoke;
  v8[3] = &unk_278EA29D8;
  v8[4] = self;
  v8[5] = updated;
  dispatch_async(serialQueue, v8);
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __41__CoreRCManagerClient_busHasBeenUpdated___block_invoke(uint64_t a1)
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    __41__CoreRCManagerClient_busHasBeenUpdated___block_invoke_cold_1(a1);
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 mergeBus:v3];
}

- (void)setLogging:(id)logging
{
  [logging UTF8String];
  LogControl();
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCManagerClient setLogging:];
  }
}

- (void)bus:(id)bus deviceHasBeenAdded:(id)added
{
  serialQueue = [(CoreRCManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__CoreRCManagerClient_bus_deviceHasBeenAdded___block_invoke;
  block[3] = &unk_278EA29B0;
  block[4] = bus;
  block[5] = added;
  block[6] = self;
  dispatch_async(serialQueue, block);
}

- (void)bus:(id)bus deviceHasBeenRemoved:(id)removed
{
  serialQueue = [(CoreRCManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__CoreRCManagerClient_bus_deviceHasBeenRemoved___block_invoke;
  block[3] = &unk_278EA29B0;
  block[4] = bus;
  block[5] = removed;
  block[6] = self;
  dispatch_async(serialQueue, block);
}

- (void)bus:(id)bus deviceHasBeenUpdated:(id)updated
{
  serialQueue = [(CoreRCManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__CoreRCManagerClient_bus_deviceHasBeenUpdated___block_invoke;
  block[3] = &unk_278EA29B0;
  block[4] = bus;
  block[5] = updated;
  block[6] = self;
  dispatch_async(serialQueue, block);
}

- (void)device:(id)device receivedHIDEvent:(id)event fromDevice:(id)fromDevice
{
  serialQueue = [(CoreRCManager *)self serialQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__CoreRCManagerClient_device_receivedHIDEvent_fromDevice___block_invoke;
  v10[3] = &unk_278EA2988;
  v10[4] = device;
  v10[5] = event;
  v10[6] = fromDevice;
  v10[7] = self;
  dispatch_async(serialQueue, v10);
}

- (void)setOSDNameAsync:(id)async forDevice:(id)device reply:(id)reply
{
  v8 = [-[CoreRCManagerClient connection](self "connection")];

  [v8 setOSDNameAsync:async forDevice:device reply:reply];
}

- (void)startLearningCommandAsync:(unint64_t)async withDevice:(id)device reply:(id)reply
{
  connection = [(CoreRCManagerClient *)self connection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__CoreRCManagerClient_IR__startLearningCommandAsync_withDevice_reply___block_invoke;
  v9[3] = &unk_278EA2960;
  v9[4] = reply;
  [objc_msgSend(connection remoteObjectProxyWithErrorHandler:{v9), "startLearningCommandAsync:withDevice:reply:", async, device, reply}];
}

- (void)endLearningWithDeviceAsync:(id)async reply:(id)reply
{
  v6 = [-[CoreRCManagerClient connection](self "connection")];

  [v6 endLearningWithDeviceAsync:async reply:reply];
}

- (void)addDeviceOnBusAsync:(id)async withType:(unint64_t)type matching:(id)matching reply:(id)reply
{
  connection = [(CoreRCManagerClient *)self connection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__CoreRCManagerClient_IR__addDeviceOnBusAsync_withType_matching_reply___block_invoke;
  v11[3] = &unk_278EA2960;
  v11[4] = reply;
  [objc_msgSend(connection remoteObjectProxyWithErrorHandler:{v11), "addDeviceOnBusAsync:withType:matching:reply:", async, type, matching, reply}];
}

- (void)updateMappingWithSessionOwningDeviceAsync:(id)async forTargetDevice:(id)device reply:(id)reply
{
  connection = [(CoreRCManagerClient *)self connection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __91__CoreRCManagerClient_IR__updateMappingWithSessionOwningDeviceAsync_forTargetDevice_reply___block_invoke;
  v9[3] = &unk_278EA2960;
  v9[4] = reply;
  [objc_msgSend(connection remoteObjectProxyWithErrorHandler:{v9), "updateMappingWithSessionOwningDeviceAsync:forTargetDevice:reply:", async, device, reply}];
}

- (void)startLearningSessionWithDeviceAsync:(id)async forReason:(id)reason reply:(id)reply
{
  connection = [(CoreRCManagerClient *)self connection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__CoreRCManagerClient_IR__startLearningSessionWithDeviceAsync_forReason_reply___block_invoke;
  v9[3] = &unk_278EA2960;
  v9[4] = reply;
  [objc_msgSend(connection remoteObjectProxyWithErrorHandler:{v9), "startLearningSessionWithDeviceAsync:forReason:reply:", async, reason, reply}];
}

- (void)addDeviceOnBusAsync:(id)async withType:(unint64_t)type matching:(id)matching withSessionOwningDevice:(id)device reply:(id)reply
{
  connection = [(CoreRCManagerClient *)self connection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __95__CoreRCManagerClient_IR__addDeviceOnBusAsync_withType_matching_withSessionOwningDevice_reply___block_invoke;
  v13[3] = &unk_278EA2960;
  v13[4] = reply;
  [objc_msgSend(connection remoteObjectProxyWithErrorHandler:{v13), "addDeviceOnBusAsync:withType:matching:withSessionOwningDevice:reply:", async, type, matching, device, reply}];
}

- (void)deleteDeviceAsync:(id)async fromBus:(id)bus reply:(id)reply
{
  connection = [(CoreRCManagerClient *)self connection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__CoreRCManagerClient_IR__deleteDeviceAsync_fromBus_reply___block_invoke;
  v9[3] = &unk_278EA2960;
  v9[4] = reply;
  [objc_msgSend(connection remoteObjectProxyWithErrorHandler:{v9), "deleteDeviceAsync:fromBus:reply:", async, bus, reply}];
}

- (void)sendCommandAsync:(id)async fromDevice:(id)device reply:(id)reply
{
  v8 = [-[CoreRCManagerClient connection](self "connection")];

  [v8 sendCommandAsync:async fromDevice:device reply:reply];
}

- (void)clearAllStoredCommandsFromDeviceAsync:(id)async reply:(id)reply
{
  connection = [(CoreRCManagerClient *)self connection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__CoreRCManagerClient_IR__clearAllStoredCommandsFromDeviceAsync_reply___block_invoke;
  v7[3] = &unk_278EA2960;
  v7[4] = reply;
  [objc_msgSend(connection remoteObjectProxyWithErrorHandler:{v7), "clearAllStoredCommandsFromDeviceAsync:reply:", async, reply}];
}

- (void)setCommandAsync:(unint64_t)async target:(id)target source:(id)source forButtonCombination:(id)combination delay:(double)delay reply:(id)reply
{
  connection = [(CoreRCManagerClient *)self connection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__CoreRCManagerClient_IR__setCommandAsync_target_source_forButtonCombination_delay_reply___block_invoke;
  v15[3] = &unk_278EA2960;
  v15[4] = reply;
  [objc_msgSend(connection remoteObjectProxyWithErrorHandler:{v15), "setCommandAsync:target:source:forButtonCombination:delay:reply:", async, target, source, combination, reply, delay}];
}

- (void)learningSessionForDevice:(id)device commandProgress:(id)progress
{
  serialQueue = [(CoreRCManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__CoreRCManagerClient_IR__learningSessionForDevice_commandProgress___block_invoke;
  block[3] = &unk_278EA29B0;
  block[4] = self;
  block[5] = device;
  block[6] = progress;
  dispatch_async(serialQueue, block);
}

- (void)learningSessionForDevice:(id)device status:(unint64_t)status
{
  serialQueue = [(CoreRCManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__CoreRCManagerClient_IR__learningSessionForDevice_status___block_invoke;
  block[3] = &unk_278EA4220;
  block[4] = self;
  block[5] = device;
  block[6] = status;
  dispatch_async(serialQueue, block);
}

- (void)learningSessionForDevice:(id)device duplicateCommand:(unint64_t)command target:(id)target
{
  serialQueue = [(CoreRCManager *)self serialQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__CoreRCManagerClient_IR__learningSessionForDevice_duplicateCommand_target___block_invoke;
  v10[3] = &unk_278EA2A28;
  v10[4] = target;
  v10[5] = self;
  v10[6] = device;
  v10[7] = command;
  dispatch_async(serialQueue, v10);
}

- (void)learningSessionForDeviceCommandDone:(id)done
{
  serialQueue = [(CoreRCManager *)self serialQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__CoreRCManagerClient_IR__learningSessionForDeviceCommandDone___block_invoke;
  v6[3] = &unk_278EA29D8;
  v6[4] = self;
  v6[5] = done;
  dispatch_async(serialQueue, v6);
}

void *__71__CoreRCManagerClient_CEC__cecBus_activeSourceHasChangedTo_fromDevice___block_invoke(uint64_t a1)
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v7 = *(a1 + 48);
    v6 = *(a1 + 32);
    LogPrintF();
  }

  result = [*(a1 + 56) managedBusEquivalentTo:{*(a1 + 32), v6, v7}];
  if (result)
  {
    v3 = result;
    if (*(a1 + 48))
    {
      v4 = [result mergeDevice:?];
    }

    else
    {
      v4 = 0;
    }

    if (*(a1 + 40))
    {
      v5 = [v3 mergeDevice:?];
    }

    else
    {
      v5 = 0;
    }

    return [v3 didChangeActiveSourceFrom:v4 to:v5];
  }

  return result;
}

void *__53__CoreRCManagerClient_CEC__cecBus_rxMessageReceived___block_invoke(uint64_t a1)
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_6();
    LogPrintF();
  }

  result = [*(a1 + 40) managedBusEquivalentTo:*(a1 + 32)];
  if (result)
  {
    v3 = *(a1 + 48);

    return [result didReceiveRXMessage:v3];
  }

  return result;
}

void *__55__CoreRCManagerClient_CEC__cecBus_txMessageSent_error___block_invoke(uint64_t a1)
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_6();
    LogPrintF();
  }

  result = [*(a1 + 40) managedBusEquivalentTo:*(a1 + 32)];
  if (result)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);

    return [result didSendTXMessage:v3 error:v4];
  }

  return result;
}

void *__62__CoreRCManagerClient_CEC__cecDeviceShouldAssertActiveSource___block_invoke(uint64_t a1)
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_6();
    LogPrintF();
  }

  result = [*(a1 + 40) managedDeviceEquivalentTo:*(a1 + 32)];
  if (result)
  {

    return [result shouldAssertActiveSource];
  }

  return result;
}

void *__67__CoreRCManagerClient_CEC__cecDevice_activeSourceStatusHasChanged___block_invoke(uint64_t a1)
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v2 = *(a1 + 32);
    if (*(a1 + 48))
    {
      v3 = "YES";
    }

    else
    {
      v3 = "NO";
    }

    v6 = *(a1 + 32);
    v7 = v3;
    LogPrintF();
  }

  result = [*(a1 + 40) managedDeviceEquivalentTo:{*(a1 + 32), v6, v7}];
  if (result)
  {
    v5 = *(a1 + 48);

    return [result setIsActiveSource:v5];
  }

  return result;
}

uint64_t __80__CoreRCManagerClient_CEC__cecDevice_deckControlPlayHasBeenReceived_fromDevice___block_invoke()
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v0 = OUTLINED_FUNCTION_2();
    CoreCECPlayModeString(v0);
    OUTLINED_FUNCTION_0();
    LogPrintF();
  }

  result = OUTLINED_FUNCTION_3();
  if (result)
  {
    result = OUTLINED_FUNCTION_5();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_1();

      return [v2 deckControlPlayHasBeenReceived:? fromDevice:?];
    }
  }

  return result;
}

uint64_t __83__CoreRCManagerClient_CEC__cecDevice_deckControlCommandHasBeenReceived_fromDevice___block_invoke()
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v0 = OUTLINED_FUNCTION_2();
    CoreCECDeckControlModeString(v0);
    OUTLINED_FUNCTION_0();
    LogPrintF();
  }

  result = OUTLINED_FUNCTION_3();
  if (result)
  {
    result = OUTLINED_FUNCTION_5();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_1();

      return [v2 deckControlCommandHasBeenReceived:? fromDevice:?];
    }
  }

  return result;
}

uint64_t __81__CoreRCManagerClient_CEC__cecDevice_deckControlStatusHasBeenUpdated_fromDevice___block_invoke()
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v0 = OUTLINED_FUNCTION_2();
    CoreCECDeckInfoString(v0);
    OUTLINED_FUNCTION_0();
    LogPrintF();
  }

  result = OUTLINED_FUNCTION_3();
  if (result)
  {
    result = OUTLINED_FUNCTION_5();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_1();

      return [v2 deckControlStatusHasBeenUpdated:? fromDevice:?];
    }
  }

  return result;
}

void *__51__CoreRCManagerClient_CEC__cecDevice_featureAbort___block_invoke(uint64_t a1)
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    LogPrintF();
  }

  result = OUTLINED_FUNCTION_3();
  if (result)
  {
    v3 = *(a1 + 40);

    return [result featureAbort:v3];
  }

  return result;
}

uint64_t __68__CoreRCManagerClient_CEC__cecDevice_standbyRequestHasBeenReceived___block_invoke(uint64_t a1)
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    LogPrintF();
  }

  result = OUTLINED_FUNCTION_3();
  if (result)
  {
    v4 = OUTLINED_FUNCTION_5();

    return [v1 standbyRequestHasBeenReceived:v4];
  }

  return result;
}

uint64_t __97__CoreRCManagerClient_CEC__cecDevice_receivedRequestAudioReturnChannelStatusChangeTo_fromDevice___block_invoke()
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v0 = OUTLINED_FUNCTION_2();
    CoreCECActivationStatusString(v0);
    OUTLINED_FUNCTION_0();
    LogPrintF();
  }

  result = OUTLINED_FUNCTION_3();
  if (result)
  {
    OUTLINED_FUNCTION_5();
    v2 = OUTLINED_FUNCTION_1();

    return [v2 receivedRequestAudioReturnChannelStatusChangeTo:? fromDevice:?];
  }

  return result;
}

void *__104__CoreRCManagerClient_CEC__cecDevice_requestAudioReturnChannelStatusChangeTo_didFinishWithResult_error___block_invoke(uint64_t a1)
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v2 = OUTLINED_FUNCTION_2();
    CoreCECActivationStatusString(v2);
    v3 = *(a1 + 64);
    OUTLINED_FUNCTION_4();
    LogPrintF();
  }

  result = OUTLINED_FUNCTION_3();
  if (result)
  {
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v7 = *(a1 + 40);

    return [result requestAudioReturnChannelStatusChangeTo:v5 didFinishWithResult:v6 error:v7];
  }

  return result;
}

uint64_t __94__CoreRCManagerClient_CEC__cecDevice_receivedRequestSystemAudioModeStatusChangeTo_fromDevice___block_invoke()
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v0 = OUTLINED_FUNCTION_2();
    CoreCECActivationStatusString(v0);
    OUTLINED_FUNCTION_0();
    LogPrintF();
  }

  result = OUTLINED_FUNCTION_3();
  if (result)
  {
    OUTLINED_FUNCTION_5();
    v2 = OUTLINED_FUNCTION_1();

    return [v2 receivedRequestSystemAudioModeStatusChangeTo:? fromDevice:?];
  }

  return result;
}

void *__101__CoreRCManagerClient_CEC__cecDevice_requestSystemAudioModeStatusChangeTo_didFinishWithResult_error___block_invoke(uint64_t a1)
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v2 = OUTLINED_FUNCTION_2();
    CoreCECActivationStatusString(v2);
    v3 = *(a1 + 64);
    OUTLINED_FUNCTION_4();
    LogPrintF();
  }

  result = OUTLINED_FUNCTION_3();
  if (result)
  {
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v7 = *(a1 + 40);

    return [result requestSystemAudioModeStatusChangeTo:v5 didFinishWithResult:v6 error:v7];
  }

  return result;
}

void *__69__CoreRCManagerClient_CEC__cecDevice_audioStatusReceived_muteStatus___block_invoke(uint64_t a1)
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_6();
    LogPrintF();
  }

  result = [*(a1 + 40) managedDeviceEquivalentTo:*(a1 + 32)];
  if (result)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);

    return [result audioStatusReceived:v3 muteStatus:v4];
  }

  return result;
}

- (id)connection
{
  result = self->_connection;
  if (!result)
  {
    self->_connection = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.corercd" options:0];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:CoreRCXPCServiceInterface()];
    [(NSXPCConnection *)self->_connection setExportedInterface:CoreRCXPCClientInterface()];
    [(NSXPCConnection *)self->_connection setExportedObject:self];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __33__CoreRCManagerClient_connection__block_invoke;
    v4[3] = &unk_278EA3400;
    v4[4] = self;
    [(NSXPCConnection *)self->_connection setInterruptionHandler:v4];
    [(NSXPCConnection *)self->_connection resume];
    return self->_connection;
  }

  return result;
}

void *__46__CoreRCManagerClient_bus_deviceHasBeenAdded___block_invoke(uint64_t a1)
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    LogPrintF();
  }

  result = [*(a1 + 48) managedBusEquivalentTo:{*(a1 + 32), v4, v5}];
  if (result)
  {
    v3 = *(a1 + 40);

    return [result mergeDevice:v3];
  }

  return result;
}

void *__48__CoreRCManagerClient_bus_deviceHasBeenRemoved___block_invoke(uint64_t a1)
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    LogPrintF();
  }

  result = [*(a1 + 48) managedBusEquivalentTo:{*(a1 + 32), v4, v5}];
  if (result)
  {
    v3 = *(a1 + 40);

    return [result removeDevice:v3];
  }

  return result;
}

void *__48__CoreRCManagerClient_bus_deviceHasBeenUpdated___block_invoke(uint64_t a1)
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    LogPrintF();
  }

  result = [*(a1 + 48) managedBusEquivalentTo:{*(a1 + 32), v4, v5}];
  if (result)
  {
    v3 = *(a1 + 40);

    return [result mergeDevice:v3];
  }

  return result;
}

uint64_t __58__CoreRCManagerClient_device_receivedHIDEvent_fromDevice___block_invoke(uint64_t a1)
{
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    v7 = *(a1 + 48);
    v6 = *(a1 + 32);
    LogPrintF();
  }

  result = [*(a1 + 56) managedDeviceEquivalentTo:{*(a1 + 32), v6, v7}];
  if (result)
  {
    v3 = result;
    if (*(a1 + 48))
    {
      result = [*(a1 + 56) managedDeviceEquivalentTo:?];
      v4 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v4 = 0;
    }

    v5 = *(a1 + 40);

    return [v3 receivedHIDEvent:v5 fromDevice:v4];
  }

  return result;
}

- (uint64_t)sendHIDEvent:fromDevice:toDevice:error:.cold.1()
{
  objc_opt_class();
  objc_opt_class();
  return LogPrintF();
}

- (uint64_t)sendCommand:fromDevice:toDevice:withDuration:error:.cold.1()
{
  objc_opt_class();
  objc_opt_class();
  return LogPrintF();
}

uint64_t __39__CoreRCManagerClient_busHasBeenAdded___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  objc_opt_class();
  return LogPrintF();
}

uint64_t __41__CoreRCManagerClient_busHasBeenRemoved___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  objc_opt_class();
  return LogPrintF();
}

uint64_t __41__CoreRCManagerClient_busHasBeenUpdated___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  objc_opt_class();
  return LogPrintF();
}

void *__68__CoreRCManagerClient_IR__learningSessionForDevice_commandProgress___block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) managedDeviceEquivalentTo:{*(a1 + 40)), "learningSession"}];
  if (result)
  {
    v3 = result;
    v4 = [result delegate];
    v5 = *(a1 + 48);

    return [v4 learningSession:v3 commandProgress:v5];
  }

  return result;
}

void *__59__CoreRCManagerClient_IR__learningSessionForDevice_status___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) managedDeviceEquivalentTo:*(a1 + 40)];
  if (result)
  {
    result = [result learningSession];
    if (result)
    {
      v3 = result;
      v4 = [result delegate];
      v5 = *(a1 + 48);

      return [v4 learningSession:v3 status:v5];
    }
  }

  return result;
}

void *__76__CoreRCManagerClient_IR__learningSessionForDevice_duplicateCommand_target___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) managedDeviceEquivalentTo:?];
  }

  else
  {
    v2 = 0;
  }

  result = [objc_msgSend(*(a1 + 40) managedDeviceEquivalentTo:{*(a1 + 48)), "learningSession"}];
  if (result)
  {
    v4 = result;
    v5 = [result delegate];
    v6 = *(a1 + 56);

    return [v5 learningSession:v4 duplicateCommand:v6 target:v2];
  }

  return result;
}

void *__63__CoreRCManagerClient_IR__learningSessionForDeviceCommandDone___block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) managedDeviceEquivalentTo:{*(a1 + 40)), "learningSession"}];
  if (result)
  {
    v2 = result;
    v3 = [result delegate];

    return [v3 learningSessionCommandDone:v2];
  }

  return result;
}

@end