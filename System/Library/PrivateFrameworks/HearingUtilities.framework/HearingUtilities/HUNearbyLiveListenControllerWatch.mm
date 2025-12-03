@interface HUNearbyLiveListenControllerWatch
- (HUNearbyLiveListenController)controller;
- (HUNearbyLiveListenControllerWatch)initWithController:(id)controller;
- (void)_handleStateChangedMessage:(id)message;
- (void)_nearbyDevicesChanged;
- (void)_receivedMessage:(id)message fromDevice:(id)device;
- (void)_sendMessageToRequestInitialState;
- (void)_sendStartObservingMessageToDevices:(id)devices;
- (void)_sendStopObservingMessage;
- (void)_updateState;
- (void)startObserving;
- (void)startObservingRemoteSession;
- (void)stopObserving;
- (void)stopObservingRemoteSession;
@end

@implementation HUNearbyLiveListenControllerWatch

- (HUNearbyLiveListenControllerWatch)initWithController:(id)controller
{
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = HUNearbyLiveListenControllerWatch;
  v5 = [(HUNearbyLiveListenControllerWatch *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_controller, controllerCopy);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.hearing.LiveListen.NearbyStateUpdates", v7);
    updateQueue = v6->_updateQueue;
    v6->_updateQueue = v8;

    v6->_cachedIsPlayingBack = 0;
    cachedTranscription = v6->_cachedTranscription;
    v6->_cachedState = 0;
    v6->_cachedTranscription = &stru_1F5614A78;

    cachedNearbyDevices = v6->_cachedNearbyDevices;
    v6->_cachedNearbyDevices = MEMORY[0x1E695E0F0];

    [(HUNearbyLiveListenControllerWatch *)v6 _nearbyDevicesChanged];
  }

  return v6;
}

- (void)startObserving
{
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "Start observing", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4 = +[HUNearbyController sharedInstance];
  [v4 registerLoggingBlock:&__block_literal_global_28 forDomain:@"com.hearing.LiveListen" withListener:self];

  v5 = +[HUNearbyController sharedInstance];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__HUNearbyLiveListenControllerWatch_startObserving__block_invoke_6;
  v12[3] = &unk_1E85CBF78;
  objc_copyWeak(&v13, buf);
  [v5 registerDiscoveryBlock:v12 forDomain:@"com.hearing.LiveListen" withListener:self];

  v6 = +[HUNearbyController sharedInstance];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __51__HUNearbyLiveListenControllerWatch_startObserving__block_invoke_2;
  v10 = &unk_1E85CA418;
  objc_copyWeak(&v11, buf);
  [v6 registerMessageBlock:&v7 forDomain:@"com.hearing.LiveListen" withListener:self];

  [(HUNearbyLiveListenControllerWatch *)self _sendMessageToRequestInitialState:v7];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void __51__HUNearbyLiveListenControllerWatch_startObserving__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "%@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __51__HUNearbyLiveListenControllerWatch_startObserving__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _nearbyDevicesChanged];
}

void __51__HUNearbyLiveListenControllerWatch_startObserving__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _receivedMessage:v5 fromDevice:v6];
}

- (void)stopObserving
{
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "Stop observing", v7, 2u);
  }

  if ([(HUNearbyLiveListenControllerWatch *)self isObservingNearbyStatus]&& ![(HUNearbyLiveListenControllerWatch *)self shouldBeObservingNearbyStatus])
  {
    [(HUNearbyLiveListenControllerWatch *)self _sendStopObservingMessage];
    [(HUNearbyLiveListenControllerWatch *)self setIsObservingNearbyStatus:0];
  }

  v4 = +[HUNearbyController sharedInstance];
  [v4 registerLoggingBlock:0 forDomain:@"com.hearing.LiveListen" withListener:self];

  v5 = +[HUNearbyController sharedInstance];
  [v5 registerDiscoveryBlock:0 forDomain:@"com.hearing.LiveListen" withListener:self];

  v6 = +[HUNearbyController sharedInstance];
  [v6 registerMessageBlock:0 forDomain:@"com.hearing.LiveListen" withListener:self];
}

- (void)startObservingRemoteSession
{
  updateQueue = [(HUNearbyLiveListenControllerWatch *)self updateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__HUNearbyLiveListenControllerWatch_startObservingRemoteSession__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(updateQueue, block);
}

uint64_t __64__HUNearbyLiveListenControllerWatch_startObservingRemoteSession__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setShouldBeObservingNearbyStatus:1];
  result = [*(a1 + 32) isObservingNearbyStatus];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = [v3 cachedNearbyDevices];
    [v3 _sendStartObservingMessageToDevices:v4];

    v5 = *(a1 + 32);

    return [v5 setIsObservingNearbyStatus:1];
  }

  return result;
}

- (void)stopObservingRemoteSession
{
  updateQueue = [(HUNearbyLiveListenControllerWatch *)self updateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__HUNearbyLiveListenControllerWatch_stopObservingRemoteSession__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(updateQueue, block);
}

uint64_t __63__HUNearbyLiveListenControllerWatch_stopObservingRemoteSession__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setShouldBeObservingNearbyStatus:0];
  [*(a1 + 32) setCachedState:3];
  [*(a1 + 32) setCachedTranscription:&stru_1F5614A78];
  v2 = *(a1 + 32);

  return [v2 setCachedIsPlayingBack:0];
}

- (void)_nearbyDevicesChanged
{
  updateQueue = [(HUNearbyLiveListenControllerWatch *)self updateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__HUNearbyLiveListenControllerWatch__nearbyDevicesChanged__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(updateQueue, block);
}

void __58__HUNearbyLiveListenControllerWatch__nearbyDevicesChanged__block_invoke(uint64_t a1)
{
  v2 = +[HUNearbyController sharedInstance];
  v3 = [v2 nearbyDevices];
  v4 = [v3 ax_filteredArrayUsingBlock:&__block_literal_global_12];

  if ([*(a1 + 32) isObservingNearbyStatus])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __58__HUNearbyLiveListenControllerWatch__nearbyDevicesChanged__block_invoke_3;
    v6[3] = &unk_1E85CBCE0;
    v6[4] = *(a1 + 32);
    v5 = [v4 ax_filteredArrayUsingBlock:v6];
    [*(a1 + 32) _sendStartObservingMessageToDevices:v5];
  }

  [*(a1 + 32) setCachedNearbyDevices:v4];
  if (![*(a1 + 32) cachedState])
  {
    [*(a1 + 32) _sendMessageToRequestInitialState];
  }

  [*(a1 + 32) _updateState];
}

uint64_t __58__HUNearbyLiveListenControllerWatch__nearbyDevicesChanged__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 idsDevice];
  v3 = [v2 isLocallyPaired];

  return v3;
}

uint64_t __58__HUNearbyLiveListenControllerWatch__nearbyDevicesChanged__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 cachedNearbyDevices];
  v5 = [v4 containsObject:v3];

  return v5 ^ 1u;
}

- (void)_receivedMessage:(id)message fromDevice:(id)device
{
  messageCopy = message;
  deviceCopy = device;
  updateQueue = [(HUNearbyLiveListenControllerWatch *)self updateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__HUNearbyLiveListenControllerWatch__receivedMessage_fromDevice___block_invoke;
  block[3] = &unk_1E85CA468;
  v12 = messageCopy;
  selfCopy = self;
  v14 = deviceCopy;
  v9 = deviceCopy;
  v10 = messageCopy;
  dispatch_async(updateQueue, block);
}

void __65__HUNearbyLiveListenControllerWatch__receivedMessage_fromDevice___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = HCLogHearingAids();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "Handling incoming message %@", &v10, 0xCu);
  }

  v4 = [*(a1 + 40) cachedNearbyDevices];
  v5 = [v4 containsObject:*(a1 + 48)];

  if (v5)
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:@"type"];
    v7 = [v6 integerValue];

    if (v7 == 2)
    {
      [*(a1 + 40) _handleStateChangedMessage:*(a1 + 32)];
    }
  }

  else
  {
    v8 = HCLogHearingAids();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __65__HUNearbyLiveListenControllerWatch__receivedMessage_fromDevice___block_invoke_cold_1(v8);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_handleStateChangedMessage:(id)message
{
  messageCopy = message;
  if ([(HUNearbyLiveListenControllerWatch *)self isObservingNearbyStatus]&& ![(HUNearbyLiveListenControllerWatch *)self shouldBeObservingNearbyStatus])
  {
    v8 = HCLogHearingAids();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __73__HUNearbyLiveListenControlleriOS__handleStateChangedMessage_fromDevice___block_invoke_cold_1(v8);
    }

    [(HUNearbyLiveListenControllerWatch *)self _sendStopObservingMessage];
    [(HUNearbyLiveListenControllerWatch *)self setIsObservingNearbyStatus:0];
  }

  else
  {
    v5 = [messageCopy objectForKeyedSubscript:@"state"];
    -[HUNearbyLiveListenControllerWatch setCachedState:](self, "setCachedState:", [v5 integerValue]);

    v6 = [messageCopy objectForKeyedSubscript:@"isPlayingBack"];
    -[HUNearbyLiveListenControllerWatch setCachedIsPlayingBack:](self, "setCachedIsPlayingBack:", [v6 BOOLValue]);

    v7 = [messageCopy objectForKeyedSubscript:@"transcription"];
    [(HUNearbyLiveListenControllerWatch *)self setCachedTranscription:v7];

    [(HUNearbyLiveListenControllerWatch *)self _updateState];
  }
}

- (void)_updateState
{
  cachedNearbyDevices = [(HUNearbyLiveListenControllerWatch *)self cachedNearbyDevices];
  firstObject = [cachedNearbyDevices firstObject];

  updated = updateStateForNearbyDevice([(HUNearbyLiveListenControllerWatch *)self cachedState], firstObject);
  [(HUNearbyLiveListenControllerWatch *)self setCachedState:updated];
  controller = [(HUNearbyLiveListenControllerWatch *)self controller];
  cachedIsPlayingBack = [(HUNearbyLiveListenControllerWatch *)self cachedIsPlayingBack];
  cachedTranscription = [(HUNearbyLiveListenControllerWatch *)self cachedTranscription];
  [controller _updateState:updated audioLevel:cachedIsPlayingBack isPlayingBack:cachedTranscription transcription:0.0];
}

- (void)_sendMessageToRequestInitialState
{
  v16[1] = *MEMORY[0x1E69E9840];
  cachedNearbyDevices = [(HUNearbyLiveListenControllerWatch *)self cachedNearbyDevices];
  v4 = [cachedNearbyDevices count];

  if (v4)
  {
    v15 = @"type";
    v16[0] = &unk_1F5624220;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v6 = HCLogHearingAids();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      cachedNearbyDevices2 = [(HUNearbyLiveListenControllerWatch *)self cachedNearbyDevices];
      v11 = 134218242;
      v12 = [cachedNearbyDevices2 count];
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "Sending request current state message to %lu paired devices: %@", &v11, 0x16u);
    }

    v8 = +[HUNearbyController sharedInstance];
    cachedNearbyDevices3 = [(HUNearbyLiveListenControllerWatch *)self cachedNearbyDevices];
    [v8 sendMessage:v5 withDomain:@"com.hearing.LiveListen" toDevices:cachedNearbyDevices3 withPriority:1];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_sendStartObservingMessageToDevices:(id)devices
{
  v13[1] = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  if ([devicesCopy count])
  {
    v12 = @"type";
    v13[0] = &unk_1F5624238;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v5 = HCLogHearingAids();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134218242;
      v9 = [devicesCopy count];
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Sending start observing message to %lu paired devices: %@", &v8, 0x16u);
    }

    v6 = +[HUNearbyController sharedInstance];
    [v6 sendMessage:v4 withDomain:@"com.hearing.LiveListen" toDevices:devicesCopy withPriority:1];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_sendStopObservingMessage
{
  v16[1] = *MEMORY[0x1E69E9840];
  cachedNearbyDevices = [(HUNearbyLiveListenControllerWatch *)self cachedNearbyDevices];
  v4 = [cachedNearbyDevices count];

  if (v4)
  {
    v15 = @"type";
    v16[0] = &unk_1F5624250;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v6 = HCLogHearingAids();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      cachedNearbyDevices2 = [(HUNearbyLiveListenControllerWatch *)self cachedNearbyDevices];
      v11 = 134218242;
      v12 = [cachedNearbyDevices2 count];
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "Sending stop observing message to %lu paired devices: %@", &v11, 0x16u);
    }

    v8 = +[HUNearbyController sharedInstance];
    cachedNearbyDevices3 = [(HUNearbyLiveListenControllerWatch *)self cachedNearbyDevices];
    [v8 sendMessage:v5 withDomain:@"com.hearing.LiveListen" toDevices:cachedNearbyDevices3 withPriority:1];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (HUNearbyLiveListenController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end