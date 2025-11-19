@interface CoreRCManagerClient
- (BOOL)sendCommand:(unint64_t)a3 fromDevice:(id)a4 toDevice:(id)a5 withDuration:(unint64_t)a6 error:(id *)a7;
- (BOOL)sendHIDEvent:(id)a3 fromDevice:(id)a4 toDevice:(id)a5 error:(id *)a6;
- (BOOL)setExtendedProperty:(id)a3 forKey:(id)a4 ofDevice:(id)a5 error:(id *)a6;
- (BOOL)setProperty:(id)a3 forKey:(id)a4 ofBus:(id)a5 error:(id *)a6;
- (id)buses;
- (id)connection;
- (id)extendedPropertyForKey:(id)a3 ofDevice:(id)a4 error:(id *)a5;
- (id)propertyForKey:(id)a3 ofBus:(id)a4 error:(id *)a5;
- (void)addDeviceOnBusAsync:(id)a3 withType:(unint64_t)a4 matching:(id)a5 reply:(id)a6;
- (void)addDeviceOnBusAsync:(id)a3 withType:(unint64_t)a4 matching:(id)a5 withSessionOwningDevice:(id)a6 reply:(id)a7;
- (void)bus:(id)a3 deviceHasBeenAdded:(id)a4;
- (void)bus:(id)a3 deviceHasBeenRemoved:(id)a4;
- (void)bus:(id)a3 deviceHasBeenUpdated:(id)a4;
- (void)busHasBeenAdded:(id)a3;
- (void)busHasBeenRemoved:(id)a3;
- (void)busHasBeenUpdated:(id)a3;
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
- (void)clearAllStoredCommandsFromDeviceAsync:(id)a3 reply:(id)a4;
- (void)connectionInterrupted;
- (void)dealloc;
- (void)deleteDeviceAsync:(id)a3 fromBus:(id)a4 reply:(id)a5;
- (void)device:(id)a3 receivedHIDEvent:(id)a4 fromDevice:(id)a5;
- (void)endLearningWithDeviceAsync:(id)a3 reply:(id)a4;
- (void)fakeRemoveCECBusAsync:(id)a3 reply:(id)a4;
- (void)fakeRemoveCECDeviceAsync:(id)a3 reply:(id)a4;
- (void)getExtendedPropertyAsyncForKey:(id)a3 ofDevice:(id)a4 reply:(id)a5;
- (void)getPropertyAsyncForKey:(id)a3 ofBus:(id)a4 reply:(id)a5;
- (void)injectRXMessageAsync:(id)a3 forBus:(id)a4 reply:(id)a5;
- (void)injectTXMessageAsync:(id)a3 forBus:(id)a4 reply:(id)a5;
- (void)invalidate;
- (void)learningSessionForDevice:(id)a3 commandProgress:(id)a4;
- (void)learningSessionForDevice:(id)a3 duplicateCommand:(unint64_t)a4 target:(id)a5;
- (void)learningSessionForDevice:(id)a3 status:(unint64_t)a4;
- (void)learningSessionForDeviceCommandDone:(id)a3;
- (void)mergeBus:(id)a3;
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
- (void)performSetAudioVolumeStatus:(unint64_t)a3 withDeviceAsync:(id)a4 reply:(id)a5;
- (void)performSetPowerStatus:(unint64_t)a3 withDeviceAsync:(id)a4 reply:(id)a5;
- (void)performSetSupportedAudioFormats:(id)a3 withDeviceAsync:(id)a4 reply:(id)a5;
- (void)performStandbyAsync:(id)a3 targetDevice:(id)a4 reply:(id)a5;
- (void)performSystemAudioModeRequestAsync:(id)a3 withDesiredState:(unint64_t)a4 reply:(id)a5;
- (void)queryBusesAsync:(id)a3;
- (void)queryLocalInstanceAsync:(id)a3 bus:(id)a4 reply:(id)a5;
- (void)queryLoggingAsync:(id)a3;
- (void)sendCommandAsync:(id)a3 fromDevice:(id)a4 reply:(id)a5;
- (void)sendCommandAsync:(unint64_t)a3 fromDevice:(id)a4 toDevice:(id)a5 withDuration:(unint64_t)a6 reply:(id)a7;
- (void)sendHIDEventAsync:(id)a3 fromDevice:(id)a4 toDevice:(id)a5 reply:(id)a6;
- (void)setCommandAsync:(unint64_t)a3 target:(id)a4 source:(id)a5 forButtonCombination:(id)a6 delay:(double)a7 reply:(id)a8;
- (void)setDelegate:(id)a3;
- (void)setExtendedPropertyAsync:(id)a3 forKey:(id)a4 ofDevice:(id)a5 reply:(id)a6;
- (void)setLogging:(id)a3;
- (void)setLoggingAsync:(id)a3 reply:(id)a4;
- (void)setOSDNameAsync:(id)a3 forDevice:(id)a4 reply:(id)a5;
- (void)setOsdNameAsync:(id)a3 forBus:(id)a4 reply:(id)a5;
- (void)setPropertyAsync:(id)a3 forKey:(id)a4 ofBus:(id)a5 reply:(id)a6;
- (void)setTvLanguageCodeAsync:(id)a3 forBus:(id)a4 reply:(id)a5;
- (void)startLearningCommandAsync:(unint64_t)a3 withDevice:(id)a4 reply:(id)a5;
- (void)startLearningSessionWithDeviceAsync:(id)a3 forReason:(id)a4 reply:(id)a5;
- (void)synchBuses:(id)a3;
- (void)updateMappingWithSessionOwningDeviceAsync:(id)a3 forTargetDevice:(id)a4 reply:(id)a5;
@end

@implementation CoreRCManagerClient

- (void)performDeckControlSetDeckStatusAsync:(unint64_t)a3 forDevice:(id)a4 reply:(id)a5
{
  v8 = [-[CoreRCManagerClient connection](self "connection")];

  [v8 performDeckControlSetDeckStatusAsync:a3 forDevice:a4 reply:a5];
}

- (void)performDeckControlCommandAsync:(id)a3 controlMode:(unint64_t)a4 targetDevice:(id)a5 reply:(id)a6
{
  v10 = [-[CoreRCManagerClient connection](self "connection")];

  [v10 performDeckControlCommandAsync:a3 controlMode:a4 targetDevice:a5 reply:a6];
}

- (void)performDeckControlPlayAsync:(id)a3 playMode:(unint64_t)a4 targetDevice:(id)a5 reply:(id)a6
{
  v10 = [-[CoreRCManagerClient connection](self "connection")];

  [v10 performDeckControlPlayAsync:a3 playMode:a4 targetDevice:a5 reply:a6];
}

- (void)performDeckControlRefreshStatusAsync:(id)a3 targetDevice:(id)a4 requestType:(unint64_t)a5 reply:(id)a6
{
  v10 = [-[CoreRCManagerClient connection](self "connection")];

  [v10 performDeckControlRefreshStatusAsync:a3 targetDevice:a4 requestType:a5 reply:a6];
}

- (void)performInactiveSourceAsync:(id)a3 reply:(id)a4
{
  v6 = [-[CoreRCManagerClient connection](self "connection")];

  [v6 performInactiveSourceAsync:a3 reply:a4];
}

- (void)performRefreshDevicesAsync:(id)a3 reply:(id)a4
{
  v6 = [-[CoreRCManagerClient connection](self "connection")];

  [v6 performRefreshDevicesAsync:a3 reply:a4];
}

- (void)performRefreshProperties:(id)a3 ofDevice:(id)a4 withDeviceAsync:(id)a5 reply:(id)a6
{
  v10 = [-[CoreRCManagerClient connection](self "connection")];

  [v10 performRefreshProperties:a3 ofDevice:a4 withDeviceAsync:a5 reply:a6];
}

- (void)performRequestActiveSourceAsync:(id)a3 reply:(id)a4
{
  v6 = [-[CoreRCManagerClient connection](self "connection")];

  [v6 performRequestActiveSourceAsync:a3 reply:a4];
}

- (void)performSystemAudioModeRequestAsync:(id)a3 withDesiredState:(unint64_t)a4 reply:(id)a5
{
  v8 = [-[CoreRCManagerClient connection](self "connection")];

  [v8 performSystemAudioModeRequestAsync:a3 withDesiredState:a4 reply:a5];
}

- (void)performRequestAudioReturnChannelStatusChangeTo:(unint64_t)a3 withDeviceAsync:(id)a4 reply:(id)a5
{
  v8 = [-[CoreRCManagerClient connection](self "connection")];

  [v8 performRequestAudioReturnChannelStatusChangeTo:a3 withDeviceAsync:a4 reply:a5];
}

- (void)performSetAudioVolumeStatus:(unint64_t)a3 withDeviceAsync:(id)a4 reply:(id)a5
{
  v8 = [-[CoreRCManagerClient connection](self "connection")];

  [v8 performSetAudioVolumeStatus:a3 withDeviceAsync:a4 reply:a5];
}

- (void)performSetSupportedAudioFormats:(id)a3 withDeviceAsync:(id)a4 reply:(id)a5
{
  v8 = [-[CoreRCManagerClient connection](self "connection")];

  [v8 performSetSupportedAudioFormats:a3 withDeviceAsync:a4 reply:a5];
}

- (void)performRequestAudioStatusAsync:(id)a3 reply:(id)a4
{
  v6 = [-[CoreRCManagerClient connection](self "connection")];

  [v6 performRequestAudioStatusAsync:a3 reply:a4];
}

- (void)performRequestSystemAudioModeStatusChangeTo:(unint64_t)a3 withDeviceAsync:(id)a4 reply:(id)a5
{
  v8 = [-[CoreRCManagerClient connection](self "connection")];

  [v8 performRequestSystemAudioModeStatusChangeTo:a3 withDeviceAsync:a4 reply:a5];
}

- (void)performSetPowerStatus:(unint64_t)a3 withDeviceAsync:(id)a4 reply:(id)a5
{
  v8 = [-[CoreRCManagerClient connection](self "connection")];

  [v8 performSetPowerStatus:a3 withDeviceAsync:a4 reply:a5];
}

- (void)performRemoveFromBus:(id)a3 reply:(id)a4
{
  v6 = [-[CoreRCManagerClient connection](self "connection")];

  [v6 performRemoveFromBus:a3 reply:a4];
}

- (void)performStandbyAsync:(id)a3 targetDevice:(id)a4 reply:(id)a5
{
  v8 = [-[CoreRCManagerClient connection](self "connection")];

  [v8 performStandbyAsync:a3 targetDevice:a4 reply:a5];
}

- (void)queryLocalInstanceAsync:(id)a3 bus:(id)a4 reply:(id)a5
{
  v8 = [(CoreRCManagerClient *)self connection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__CoreRCManagerClient_CEC__queryLocalInstanceAsync_bus_reply___block_invoke;
  v9[3] = &unk_278EA2960;
  v9[4] = a5;
  [objc_msgSend(v8 remoteObjectProxyWithErrorHandler:{v9), "queryLocalInstanceAsync:bus:reply:", a3, a4, a5}];
}

- (void)performRemoveDeviceWithTypeAsync:(unint64_t)a3 bus:(id)a4 reply:(id)a5
{
  v8 = [-[CoreRCManagerClient connection](self "connection")];

  [v8 performRemoveDeviceWithTypeAsync:a3 bus:a4 reply:a5];
}

- (void)setOsdNameAsync:(id)a3 forBus:(id)a4 reply:(id)a5
{
  v8 = [-[CoreRCManagerClient connection](self "connection")];

  [v8 setOsdNameAsync:a3 forBus:a4 reply:a5];
}

- (void)setTvLanguageCodeAsync:(id)a3 forBus:(id)a4 reply:(id)a5
{
  v8 = [-[CoreRCManagerClient connection](self "connection")];

  [v8 setTvLanguageCodeAsync:a3 forBus:a4 reply:a5];
}

- (void)injectRXMessageAsync:(id)a3 forBus:(id)a4 reply:(id)a5
{
  v8 = [-[CoreRCManagerClient connection](self "connection")];

  [v8 injectRXMessageAsync:a3 forBus:a4 reply:a5];
}

- (void)injectTXMessageAsync:(id)a3 forBus:(id)a4 reply:(id)a5
{
  v8 = [-[CoreRCManagerClient connection](self "connection")];

  [v8 injectTXMessageAsync:a3 forBus:a4 reply:a5];
}

- (void)cecBus:(id)a3 activeSourceHasChangedTo:(id)a4 fromDevice:(id)a5
{
  v9 = [(CoreRCManager *)self serialQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__CoreRCManagerClient_CEC__cecBus_activeSourceHasChangedTo_fromDevice___block_invoke;
  v10[3] = &unk_278EA2988;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = a5;
  v10[7] = self;
  dispatch_async(v9, v10);
}

- (void)cecBus:(id)a3 rxMessageReceived:(id)a4
{
  v7 = [(CoreRCManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__CoreRCManagerClient_CEC__cecBus_rxMessageReceived___block_invoke;
  block[3] = &unk_278EA29B0;
  block[4] = a3;
  block[5] = self;
  block[6] = a4;
  dispatch_async(v7, block);
}

- (void)cecBus:(id)a3 txMessageSent:(id)a4 error:(id)a5
{
  v9 = [(CoreRCManager *)self serialQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__CoreRCManagerClient_CEC__cecBus_txMessageSent_error___block_invoke;
  v10[3] = &unk_278EA2988;
  v10[4] = a3;
  v10[5] = self;
  v10[6] = a4;
  v10[7] = a5;
  dispatch_async(v9, v10);
}

- (void)cecDeviceShouldAssertActiveSource:(id)a3
{
  v5 = [(CoreRCManager *)self serialQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__CoreRCManagerClient_CEC__cecDeviceShouldAssertActiveSource___block_invoke;
  v6[3] = &unk_278EA29D8;
  v6[4] = a3;
  v6[5] = self;
  dispatch_async(v5, v6);
}

- (void)cecDevice:(id)a3 activeSourceStatusHasChanged:(BOOL)a4
{
  v7 = [(CoreRCManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__CoreRCManagerClient_CEC__cecDevice_activeSourceStatusHasChanged___block_invoke;
  block[3] = &unk_278EA2A00;
  v9 = a4;
  block[4] = a3;
  block[5] = self;
  dispatch_async(v7, block);
}

- (void)cecDevice:(id)a3 deckControlPlayHasBeenReceived:(unint64_t)a4 fromDevice:(id)a5
{
  v9 = [(CoreRCManager *)self serialQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__CoreRCManagerClient_CEC__cecDevice_deckControlPlayHasBeenReceived_fromDevice___block_invoke;
  v10[3] = &unk_278EA2A28;
  v10[4] = a3;
  v10[5] = a5;
  v10[6] = self;
  v10[7] = a4;
  dispatch_async(v9, v10);
}

- (void)cecDevice:(id)a3 deckControlCommandHasBeenReceived:(unint64_t)a4 fromDevice:(id)a5
{
  v9 = [(CoreRCManager *)self serialQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__CoreRCManagerClient_CEC__cecDevice_deckControlCommandHasBeenReceived_fromDevice___block_invoke;
  v10[3] = &unk_278EA2A28;
  v10[4] = a3;
  v10[5] = a5;
  v10[6] = self;
  v10[7] = a4;
  dispatch_async(v9, v10);
}

- (void)cecDevice:(id)a3 deckControlStatusHasBeenUpdated:(unint64_t)a4 fromDevice:(id)a5
{
  v9 = [(CoreRCManager *)self serialQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__CoreRCManagerClient_CEC__cecDevice_deckControlStatusHasBeenUpdated_fromDevice___block_invoke;
  v10[3] = &unk_278EA2A28;
  v10[4] = a3;
  v10[5] = a5;
  v10[6] = self;
  v10[7] = a4;
  dispatch_async(v9, v10);
}

- (void)cecDevice:(id)a3 featureAbort:(id)a4
{
  v7 = [(CoreRCManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__CoreRCManagerClient_CEC__cecDevice_featureAbort___block_invoke;
  block[3] = &unk_278EA29B0;
  block[4] = a3;
  block[5] = a4;
  block[6] = self;
  dispatch_async(v7, block);
}

- (void)cecDevice:(id)a3 standbyRequestHasBeenReceived:(id)a4
{
  v7 = [(CoreRCManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__CoreRCManagerClient_CEC__cecDevice_standbyRequestHasBeenReceived___block_invoke;
  block[3] = &unk_278EA29B0;
  block[4] = a3;
  block[5] = a4;
  block[6] = self;
  dispatch_async(v7, block);
}

- (void)cecDevice:(id)a3 receivedRequestAudioReturnChannelStatusChangeTo:(unint64_t)a4 fromDevice:(id)a5
{
  v9 = [(CoreRCManager *)self serialQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__CoreRCManagerClient_CEC__cecDevice_receivedRequestAudioReturnChannelStatusChangeTo_fromDevice___block_invoke;
  v10[3] = &unk_278EA2A28;
  v10[4] = a3;
  v10[5] = a5;
  v10[6] = self;
  v10[7] = a4;
  dispatch_async(v9, v10);
}

- (void)cecDevice:(id)a3 requestAudioReturnChannelStatusChangeTo:(unint64_t)a4 didFinishWithResult:(BOOL)a5 error:(id)a6
{
  v11 = [(CoreRCManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104__CoreRCManagerClient_CEC__cecDevice_requestAudioReturnChannelStatusChangeTo_didFinishWithResult_error___block_invoke;
  block[3] = &unk_278EA2A50;
  v13 = a5;
  block[4] = a3;
  block[5] = a6;
  block[6] = self;
  block[7] = a4;
  dispatch_async(v11, block);
}

- (void)cecDevice:(id)a3 receivedRequestSystemAudioModeStatusChangeTo:(unint64_t)a4 fromDevice:(id)a5
{
  v9 = [(CoreRCManager *)self serialQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __94__CoreRCManagerClient_CEC__cecDevice_receivedRequestSystemAudioModeStatusChangeTo_fromDevice___block_invoke;
  v10[3] = &unk_278EA2A28;
  v10[4] = a3;
  v10[5] = a5;
  v10[6] = self;
  v10[7] = a4;
  dispatch_async(v9, v10);
}

- (void)cecDevice:(id)a3 requestSystemAudioModeStatusChangeTo:(unint64_t)a4 didFinishWithResult:(BOOL)a5 error:(id)a6
{
  v11 = [(CoreRCManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__CoreRCManagerClient_CEC__cecDevice_requestSystemAudioModeStatusChangeTo_didFinishWithResult_error___block_invoke;
  block[3] = &unk_278EA2A50;
  v13 = a5;
  block[4] = a3;
  block[5] = a6;
  block[6] = self;
  block[7] = a4;
  dispatch_async(v11, block);
}

- (void)cecDevice:(id)a3 audioStatusReceived:(unint64_t)a4 muteStatus:(BOOL)a5
{
  v9 = [(CoreRCManager *)self serialQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__CoreRCManagerClient_CEC__cecDevice_audioStatusReceived_muteStatus___block_invoke;
  v10[3] = &unk_278EA2A78;
  v10[4] = a3;
  v10[5] = self;
  v10[6] = a4;
  v11 = a5;
  dispatch_async(v9, v10);
}

- (void)queryLoggingAsync:(id)a3
{
  v4 = [(CoreRCManagerClient *)self connection];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__CoreRCManagerClient_Private__queryLoggingAsync___block_invoke;
  v5[3] = &unk_278EA2960;
  v5[4] = a3;
  [objc_msgSend(v4 remoteObjectProxyWithErrorHandler:{v5), "queryLoggingAsync:", a3}];
}

- (void)setLoggingAsync:(id)a3 reply:(id)a4
{
  v6 = [-[CoreRCManagerClient connection](self "connection")];

  [v6 setLoggingAsync:a3 reply:a4];
}

- (void)fakeRemoveCECBusAsync:(id)a3 reply:(id)a4
{
  v6 = [-[CoreRCManagerClient connection](self "connection")];

  [v6 fakeRemoveCECBusAsync:a3 reply:a4];
}

- (void)fakeRemoveCECDeviceAsync:(id)a3 reply:(id)a4
{
  v6 = [-[CoreRCManagerClient connection](self "connection")];

  [v6 fakeRemoveCECDeviceAsync:a3 reply:a4];
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

- (BOOL)setProperty:(id)a3 forKey:(id)a4 ofBus:(id)a5 error:(id *)a6
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__CoreRCManagerClient_setProperty_forKey_ofBus_error___block_invoke;
  v7[3] = &unk_278EA3428;
  v7[4] = self;
  v7[5] = a3;
  v7[6] = a4;
  v7[7] = a5;
  return CoreRCWaitForAsyncOperation(a6, v7);
}

- (id)propertyForKey:(id)a3 ofBus:(id)a4 error:(id *)a5
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
  v8[5] = a3;
  v8[6] = a4;
  v8[7] = &v9;
  if (CoreRCWaitForAsyncOperation(a5, v8))
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

- (BOOL)setExtendedProperty:(id)a3 forKey:(id)a4 ofDevice:(id)a5 error:(id *)a6
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__CoreRCManagerClient_setExtendedProperty_forKey_ofDevice_error___block_invoke;
  v7[3] = &unk_278EA3428;
  v7[4] = self;
  v7[5] = a3;
  v7[6] = a4;
  v7[7] = a5;
  return CoreRCWaitForAsyncOperation(a6, v7);
}

- (id)extendedPropertyForKey:(id)a3 ofDevice:(id)a4 error:(id *)a5
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
  v8[5] = a3;
  v8[6] = a4;
  v8[7] = &v9;
  if (CoreRCWaitForAsyncOperation(a5, v8))
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

- (void)setDelegate:(id)a3
{
  v4.receiver = self;
  v4.super_class = CoreRCManagerClient;
  [(CoreRCManager *)&v4 setDelegate:a3];
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
  v4 = [(CoreRCManager *)&v7 buses];
  _Block_object_dispose(&v9, 8);
  return v4;
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

- (void)mergeBus:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    [CoreRCManagerClient mergeBus:];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = a3;
    _os_log_impl(&dword_247384000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[CoreRC] manager: %@ mergeBus: %@", &v7, 0x16u);
  }

  v5 = [(CoreRCManager *)self managedBusEquivalentTo:a3];
  if (v5)
  {
    [v5 mergePropertiesFromBus:a3];
  }

  else
  {
    [(CoreRCManager *)self addBus:a3];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)synchBuses:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    [CoreRCManagerClient synchBuses:];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v28 = self;
    v29 = 2112;
    v30 = a3;
    _os_log_impl(&dword_247384000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[CoreRC] manager: %@ synchBuses: %@", buf, 0x16u);
  }

  v5 = [(CoreRCManager *)self busesInternal];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __34__CoreRCManagerClient_synchBuses___block_invoke;
  v24[3] = &unk_278EA34F0;
  v24[4] = a3;
  v24[5] = self;
  v6 = [(NSMutableSet *)v5 objectsPassingTest:v24];
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

  [(NSMutableSet *)[(CoreRCManager *)self busesInternal] intersectSet:a3];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = [a3 countByEnumeratingWithState:&v16 objects:v25 count:16];
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
          objc_enumerationMutation(a3);
        }

        [(CoreRCManagerClient *)self mergeBus:*(*(&v16 + 1) + 8 * j)];
      }

      v12 = [a3 countByEnumeratingWithState:&v16 objects:v25 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)sendHIDEvent:(id)a3 fromDevice:(id)a4 toDevice:(id)a5 error:(id *)a6
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
  v12[5] = a3;
  v12[6] = a4;
  v12[7] = a5;
  return CoreRCWaitForAsyncOperation(a6, v12);
}

- (BOOL)sendCommand:(unint64_t)a3 fromDevice:(id)a4 toDevice:(id)a5 withDuration:(unint64_t)a6 error:(id *)a7
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
  v14[5] = a4;
  v14[6] = a5;
  v14[7] = a3;
  v14[8] = a6;
  return CoreRCWaitForAsyncOperation(a7, v14);
}

- (void)queryBusesAsync:(id)a3
{
  v4 = [(CoreRCManagerClient *)self connection];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__CoreRCManagerClient_queryBusesAsync___block_invoke;
  v5[3] = &unk_278EA2960;
  v5[4] = a3;
  [objc_msgSend(v4 remoteObjectProxyWithErrorHandler:{v5), "queryBusesAsync:", a3}];
}

- (void)sendHIDEventAsync:(id)a3 fromDevice:(id)a4 toDevice:(id)a5 reply:(id)a6
{
  v10 = [-[CoreRCManagerClient connection](self "connection")];

  [v10 sendHIDEventAsync:a3 fromDevice:a4 toDevice:a5 reply:a6];
}

- (void)sendCommandAsync:(unint64_t)a3 fromDevice:(id)a4 toDevice:(id)a5 withDuration:(unint64_t)a6 reply:(id)a7
{
  v12 = [-[CoreRCManagerClient connection](self "connection")];

  [v12 sendCommandAsync:a3 fromDevice:a4 toDevice:a5 withDuration:a6 reply:a7];
}

- (void)setPropertyAsync:(id)a3 forKey:(id)a4 ofBus:(id)a5 reply:(id)a6
{
  v10 = [-[CoreRCManagerClient connection](self "connection")];

  [v10 setPropertyAsync:a3 forKey:a4 ofBus:a5 reply:a6];
}

- (void)getPropertyAsyncForKey:(id)a3 ofBus:(id)a4 reply:(id)a5
{
  v8 = [(CoreRCManagerClient *)self connection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__CoreRCManagerClient_getPropertyAsyncForKey_ofBus_reply___block_invoke;
  v9[3] = &unk_278EA2960;
  v9[4] = a5;
  [objc_msgSend(v8 remoteObjectProxyWithErrorHandler:{v9), "getPropertyAsyncForKey:ofBus:reply:", a3, a4, a5}];
}

- (void)setExtendedPropertyAsync:(id)a3 forKey:(id)a4 ofDevice:(id)a5 reply:(id)a6
{
  v10 = [-[CoreRCManagerClient connection](self "connection")];

  [v10 setExtendedPropertyAsync:a3 forKey:a4 ofDevice:a5 reply:a6];
}

- (void)getExtendedPropertyAsyncForKey:(id)a3 ofDevice:(id)a4 reply:(id)a5
{
  v8 = [(CoreRCManagerClient *)self connection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__CoreRCManagerClient_getExtendedPropertyAsyncForKey_ofDevice_reply___block_invoke;
  v9[3] = &unk_278EA2960;
  v9[4] = a5;
  [objc_msgSend(v8 remoteObjectProxyWithErrorHandler:{v9), "getExtendedPropertyAsyncForKey:ofDevice:reply:", a3, a4, a5}];
}

- (void)busHasBeenAdded:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    [CoreRCManagerClient busHasBeenAdded:];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    connection = self->_connection;
    *buf = 138412802;
    v10 = self;
    v11 = 2112;
    v12 = a3;
    v13 = 2112;
    v14 = connection;
    _os_log_impl(&dword_247384000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[CoreRC] manager: %@ busHasBeenAdded: %@ connection: %@", buf, 0x20u);
  }

  v6 = [(CoreRCManager *)self serialQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__CoreRCManagerClient_busHasBeenAdded___block_invoke;
  v8[3] = &unk_278EA29D8;
  v8[4] = self;
  v8[5] = a3;
  dispatch_async(v6, v8);
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

- (void)busHasBeenRemoved:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    [CoreRCManagerClient busHasBeenRemoved:];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    connection = self->_connection;
    *buf = 138412802;
    v10 = self;
    v11 = 2112;
    v12 = a3;
    v13 = 2112;
    v14 = connection;
    _os_log_impl(&dword_247384000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[CoreRC] manager: %@ busHasBeenRemoved: %@ connection: %@", buf, 0x20u);
  }

  v6 = [(CoreRCManager *)self serialQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__CoreRCManagerClient_busHasBeenRemoved___block_invoke;
  v8[3] = &unk_278EA29D8;
  v8[4] = self;
  v8[5] = a3;
  dispatch_async(v6, v8);
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

- (void)busHasBeenUpdated:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    [CoreRCManagerClient busHasBeenUpdated:];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    connection = self->_connection;
    *buf = 138412802;
    v10 = self;
    v11 = 2112;
    v12 = a3;
    v13 = 2112;
    v14 = connection;
    _os_log_impl(&dword_247384000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[CoreRC] manager: %@ busHasBeenUpdated: %@ connection: %@", buf, 0x20u);
  }

  v6 = [(CoreRCManager *)self serialQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__CoreRCManagerClient_busHasBeenUpdated___block_invoke;
  v8[3] = &unk_278EA29D8;
  v8[4] = self;
  v8[5] = a3;
  dispatch_async(v6, v8);
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

- (void)setLogging:(id)a3
{
  [a3 UTF8String];
  LogControl();
  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreRCManagerClient setLogging:];
  }
}

- (void)bus:(id)a3 deviceHasBeenAdded:(id)a4
{
  v7 = [(CoreRCManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__CoreRCManagerClient_bus_deviceHasBeenAdded___block_invoke;
  block[3] = &unk_278EA29B0;
  block[4] = a3;
  block[5] = a4;
  block[6] = self;
  dispatch_async(v7, block);
}

- (void)bus:(id)a3 deviceHasBeenRemoved:(id)a4
{
  v7 = [(CoreRCManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__CoreRCManagerClient_bus_deviceHasBeenRemoved___block_invoke;
  block[3] = &unk_278EA29B0;
  block[4] = a3;
  block[5] = a4;
  block[6] = self;
  dispatch_async(v7, block);
}

- (void)bus:(id)a3 deviceHasBeenUpdated:(id)a4
{
  v7 = [(CoreRCManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__CoreRCManagerClient_bus_deviceHasBeenUpdated___block_invoke;
  block[3] = &unk_278EA29B0;
  block[4] = a3;
  block[5] = a4;
  block[6] = self;
  dispatch_async(v7, block);
}

- (void)device:(id)a3 receivedHIDEvent:(id)a4 fromDevice:(id)a5
{
  v9 = [(CoreRCManager *)self serialQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__CoreRCManagerClient_device_receivedHIDEvent_fromDevice___block_invoke;
  v10[3] = &unk_278EA2988;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = a5;
  v10[7] = self;
  dispatch_async(v9, v10);
}

- (void)setOSDNameAsync:(id)a3 forDevice:(id)a4 reply:(id)a5
{
  v8 = [-[CoreRCManagerClient connection](self "connection")];

  [v8 setOSDNameAsync:a3 forDevice:a4 reply:a5];
}

- (void)startLearningCommandAsync:(unint64_t)a3 withDevice:(id)a4 reply:(id)a5
{
  v8 = [(CoreRCManagerClient *)self connection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__CoreRCManagerClient_IR__startLearningCommandAsync_withDevice_reply___block_invoke;
  v9[3] = &unk_278EA2960;
  v9[4] = a5;
  [objc_msgSend(v8 remoteObjectProxyWithErrorHandler:{v9), "startLearningCommandAsync:withDevice:reply:", a3, a4, a5}];
}

- (void)endLearningWithDeviceAsync:(id)a3 reply:(id)a4
{
  v6 = [-[CoreRCManagerClient connection](self "connection")];

  [v6 endLearningWithDeviceAsync:a3 reply:a4];
}

- (void)addDeviceOnBusAsync:(id)a3 withType:(unint64_t)a4 matching:(id)a5 reply:(id)a6
{
  v10 = [(CoreRCManagerClient *)self connection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__CoreRCManagerClient_IR__addDeviceOnBusAsync_withType_matching_reply___block_invoke;
  v11[3] = &unk_278EA2960;
  v11[4] = a6;
  [objc_msgSend(v10 remoteObjectProxyWithErrorHandler:{v11), "addDeviceOnBusAsync:withType:matching:reply:", a3, a4, a5, a6}];
}

- (void)updateMappingWithSessionOwningDeviceAsync:(id)a3 forTargetDevice:(id)a4 reply:(id)a5
{
  v8 = [(CoreRCManagerClient *)self connection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __91__CoreRCManagerClient_IR__updateMappingWithSessionOwningDeviceAsync_forTargetDevice_reply___block_invoke;
  v9[3] = &unk_278EA2960;
  v9[4] = a5;
  [objc_msgSend(v8 remoteObjectProxyWithErrorHandler:{v9), "updateMappingWithSessionOwningDeviceAsync:forTargetDevice:reply:", a3, a4, a5}];
}

- (void)startLearningSessionWithDeviceAsync:(id)a3 forReason:(id)a4 reply:(id)a5
{
  v8 = [(CoreRCManagerClient *)self connection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__CoreRCManagerClient_IR__startLearningSessionWithDeviceAsync_forReason_reply___block_invoke;
  v9[3] = &unk_278EA2960;
  v9[4] = a5;
  [objc_msgSend(v8 remoteObjectProxyWithErrorHandler:{v9), "startLearningSessionWithDeviceAsync:forReason:reply:", a3, a4, a5}];
}

- (void)addDeviceOnBusAsync:(id)a3 withType:(unint64_t)a4 matching:(id)a5 withSessionOwningDevice:(id)a6 reply:(id)a7
{
  v12 = [(CoreRCManagerClient *)self connection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __95__CoreRCManagerClient_IR__addDeviceOnBusAsync_withType_matching_withSessionOwningDevice_reply___block_invoke;
  v13[3] = &unk_278EA2960;
  v13[4] = a7;
  [objc_msgSend(v12 remoteObjectProxyWithErrorHandler:{v13), "addDeviceOnBusAsync:withType:matching:withSessionOwningDevice:reply:", a3, a4, a5, a6, a7}];
}

- (void)deleteDeviceAsync:(id)a3 fromBus:(id)a4 reply:(id)a5
{
  v8 = [(CoreRCManagerClient *)self connection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__CoreRCManagerClient_IR__deleteDeviceAsync_fromBus_reply___block_invoke;
  v9[3] = &unk_278EA2960;
  v9[4] = a5;
  [objc_msgSend(v8 remoteObjectProxyWithErrorHandler:{v9), "deleteDeviceAsync:fromBus:reply:", a3, a4, a5}];
}

- (void)sendCommandAsync:(id)a3 fromDevice:(id)a4 reply:(id)a5
{
  v8 = [-[CoreRCManagerClient connection](self "connection")];

  [v8 sendCommandAsync:a3 fromDevice:a4 reply:a5];
}

- (void)clearAllStoredCommandsFromDeviceAsync:(id)a3 reply:(id)a4
{
  v6 = [(CoreRCManagerClient *)self connection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__CoreRCManagerClient_IR__clearAllStoredCommandsFromDeviceAsync_reply___block_invoke;
  v7[3] = &unk_278EA2960;
  v7[4] = a4;
  [objc_msgSend(v6 remoteObjectProxyWithErrorHandler:{v7), "clearAllStoredCommandsFromDeviceAsync:reply:", a3, a4}];
}

- (void)setCommandAsync:(unint64_t)a3 target:(id)a4 source:(id)a5 forButtonCombination:(id)a6 delay:(double)a7 reply:(id)a8
{
  v14 = [(CoreRCManagerClient *)self connection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__CoreRCManagerClient_IR__setCommandAsync_target_source_forButtonCombination_delay_reply___block_invoke;
  v15[3] = &unk_278EA2960;
  v15[4] = a8;
  [objc_msgSend(v14 remoteObjectProxyWithErrorHandler:{v15), "setCommandAsync:target:source:forButtonCombination:delay:reply:", a3, a4, a5, a6, a8, a7}];
}

- (void)learningSessionForDevice:(id)a3 commandProgress:(id)a4
{
  v7 = [(CoreRCManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__CoreRCManagerClient_IR__learningSessionForDevice_commandProgress___block_invoke;
  block[3] = &unk_278EA29B0;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(v7, block);
}

- (void)learningSessionForDevice:(id)a3 status:(unint64_t)a4
{
  v7 = [(CoreRCManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__CoreRCManagerClient_IR__learningSessionForDevice_status___block_invoke;
  block[3] = &unk_278EA4220;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(v7, block);
}

- (void)learningSessionForDevice:(id)a3 duplicateCommand:(unint64_t)a4 target:(id)a5
{
  v9 = [(CoreRCManager *)self serialQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__CoreRCManagerClient_IR__learningSessionForDevice_duplicateCommand_target___block_invoke;
  v10[3] = &unk_278EA2A28;
  v10[4] = a5;
  v10[5] = self;
  v10[6] = a3;
  v10[7] = a4;
  dispatch_async(v9, v10);
}

- (void)learningSessionForDeviceCommandDone:(id)a3
{
  v5 = [(CoreRCManager *)self serialQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__CoreRCManagerClient_IR__learningSessionForDeviceCommandDone___block_invoke;
  v6[3] = &unk_278EA29D8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
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