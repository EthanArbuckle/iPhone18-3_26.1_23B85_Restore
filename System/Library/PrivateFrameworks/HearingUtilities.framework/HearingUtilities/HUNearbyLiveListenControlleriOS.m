@interface HUNearbyLiveListenControlleriOS
- (HUNearbyLiveListenController)controller;
- (HUNearbyLiveListenControlleriOS)initWithController:(id)a3;
- (id)_devicesToMessage;
- (id)_nearbyDevices;
- (void)_audioRoutesChanged:(id)a3;
- (void)_callsStatusChanged:(id)a3;
- (void)_handleRemoteControlSettingChange;
- (void)_handleRequestCurrentStateMessageFromDevice:(id)a3;
- (void)_handleStartObservingFromRemoteDevice:(id)a3;
- (void)_handleStartOrStopMessageFromRemoteDevice:(id)a3 message:(id)a4;
- (void)_handleStartOrStopRewindMessageFromRemoteDevice:(id)a3 message:(id)a4;
- (void)_handleStateChangedMessage:(id)a3 fromDevice:(id)a4;
- (void)_handleStopObservingFromRemoteDevice:(id)a3;
- (void)_nearbyDevicesChanged;
- (void)_notifyAboutAllObservingDevices;
- (void)_notifyAboutObservingDevice:(id)a3;
- (void)_receivedMessage:(id)a3 fromDevice:(id)a4;
- (void)_scheduleStateUpdate;
- (void)_sendEmptyStateToUnauthorizedDevice:(id)a3;
- (void)_sendLatestNearbyUpdate;
- (void)_sendStartObservingMessageToDevices:(id)a3;
- (void)_sendStopObservingMessage;
- (void)_startLiveListenFromRemoteDevice:(id)a3;
- (void)_startLiveListenRewind;
- (void)_stopLiveListenFromRemoteDevice:(id)a3;
- (void)_stopLiveListenRewind;
- (void)_updateRemoteStartHistoryForDevice:(id)a3 didStart:(BOOL)a4;
- (void)_updateState;
- (void)_wirelessSplitterEnabledChanged:(id)a3;
- (void)deviceDiscoveryManager:(id)a3 updatedDevices:(id)a4;
- (void)startLiveListen;
- (void)startLiveListenRewind;
- (void)startObserving;
- (void)startObservingRemoteSession;
- (void)stopLiveListen;
- (void)stopLiveListenRewind;
- (void)stopObserving;
- (void)stopObservingRemoteSession;
@end

@implementation HUNearbyLiveListenControlleriOS

- (void)_sendLatestNearbyUpdate
{
  v3 = [(HUNearbyLiveListenControlleriOS *)self updateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__HUNearbyLiveListenControlleriOS__sendLatestNearbyUpdate__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(v3, block);
}

void __58__HUNearbyLiveListenControlleriOS__sendLatestNearbyUpdate__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) pendingMessage];

  if (v2)
  {
    v3 = [*(a1 + 32) _devicesToMessage];
    if ([v3 count])
    {
      v4 = HCLogHearingAids();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = [*(a1 + 32) pendingMessage];
        v10 = 138543362;
        v11 = v5;
        _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_INFO, "Live Listen sending state change message: %{public}@", &v10, 0xCu);
      }

      v6 = +[HUNearbyController sharedInstance];
      v7 = [*(a1 + 32) pendingMessage];
      [v6 sendMessage:v7 withDomain:@"com.hearing.LiveListen" toDevices:v3 withPriority:1];

      [*(a1 + 32) setPendingMessage:0];
      v8 = [MEMORY[0x1E695DF00] now];
      [*(a1 + 32) setLastUpdateStateTimestamp:v8];
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)_devicesToMessage
{
  v3 = [(HUNearbyLiveListenControlleriOS *)self cachedNearbyDevices];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__HUNearbyLiveListenControlleriOS__devicesToMessage__block_invoke;
  v6[3] = &unk_1E85CBCE0;
  v6[4] = self;
  v4 = [v3 ax_filteredArrayUsingBlock:v6];

  return v4;
}

void __49__HUNearbyLiveListenControlleriOS_startObserving__block_invoke(uint64_t a1, void *a2)
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

- (void)_nearbyDevicesChanged
{
  v3 = [(HUNearbyLiveListenControlleriOS *)self updateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__HUNearbyLiveListenControlleriOS__nearbyDevicesChanged__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __56__HUNearbyLiveListenControlleriOS__nearbyDevicesChanged__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _nearbyDevices];
  [*(a1 + 32) setCachedNearbyDevices:v2];

  [*(a1 + 32) _notifyAboutAllObservingDevices];
  v3 = *(a1 + 32);

  return [v3 _updateState];
}

- (void)_updateState
{
  v41[4] = *MEMORY[0x1E69E9840];
  v3 = calculateState([(HUNearbyLiveListenControlleriOS *)self cachedIsListening], [(HUNearbyLiveListenControlleriOS *)self cachedHasLiveListenRoute], [(HUNearbyLiveListenControlleriOS *)self cachedHasHearingAidRoute], [(HUNearbyLiveListenControlleriOS *)self cachedCurrentCallsCount], [(HUNearbyLiveListenControlleriOS *)self cachedWirelessSplitterEnabled]);
  [(HUNearbyLiveListenControlleriOS *)self cachedAudioLevel];
  v5 = v4;
  v6 = [(HUNearbyLiveListenControlleriOS *)self cachedIsPlayingBack];
  v7 = [(HUNearbyLiveListenControlleriOS *)self cachedTranscription];
  if (!isLiveListenEnabledNearbyForState(self->_cachedNearbyState))
  {
    v8 = [(HUNearbyLiveListenControlleriOS *)self controller];
    if (!isLiveListenEnabledNearbyForState([v8 state]))
    {

      goto LABEL_7;
    }
  }

  if (v3 != 5)
  {
    cachedNearbyIsPlayingBack = self->_cachedNearbyIsPlayingBack;
    v10 = self->_cachedNearbyTranscription;

    v11 = [(HUNearbyLiveListenControlleriOS *)self controller];
    LODWORD(v12) = v5;
    [v11 _updateState:self->_cachedNearbyState audioLevel:cachedNearbyIsPlayingBack isPlayingBack:v10 transcription:v12];

    v7 = v10;
    goto LABEL_21;
  }

LABEL_7:
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v14 = [WeakRetained state];

  if (v14 == 5 && v3 == 3)
  {
    [(HUNearbyLiveListenControlleriOS *)self _stopLiveListenFromRemoteDevice:0];
  }

  v15 = [(HUNearbyLiveListenControlleriOS *)self controller];
  LODWORD(v16) = v5;
  v17 = [v15 _updateState:v3 audioLevel:v6 isPlayingBack:v7 transcription:v16];

  if (v17)
  {
    v18 = [(HUNearbyLiveListenControlleriOS *)self cachedNearbyDevices];
    v19 = [v18 count];

    if (v19)
    {
      v41[0] = &unk_1F5623D88;
      v40[0] = @"type";
      v40[1] = @"state";
      v20 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
      v41[1] = v20;
      v40[2] = @"isPlayingBack";
      v21 = [MEMORY[0x1E696AD98] numberWithBool:v6];
      v22 = v21;
      v40[3] = @"transcription";
      v23 = &stru_1F5614A78;
      if (v7)
      {
        v23 = v7;
      }

      v41[2] = v21;
      v41[3] = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:4];

      [(HUNearbyLiveListenControlleriOS *)self setPendingMessage:v24];
      v25 = [(HUNearbyLiveListenControlleriOS *)self lastUpdateStateTimestamp];
      if (v25 && (v26 = v25, -[HUNearbyLiveListenControlleriOS lastUpdateStateTimestamp](self, "lastUpdateStateTimestamp"), v27 = objc_claimAutoreleasedReturnValue(), [v27 timeIntervalSinceNow], v29 = fabs(v28), v27, v26, v29 <= 1.0))
      {
        [(HUNearbyLiveListenControlleriOS *)self _scheduleStateUpdate];
      }

      else
      {
        [(HUNearbyLiveListenControlleriOS *)self _sendLatestNearbyUpdate];
      }

      v30 = HCLogHearingAids();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v32 = liveListenStateDescription(v3);
        v33 = [(HUNearbyLiveListenControlleriOS *)self cachedNearbyDevices];
        v34 = 138543874;
        v35 = v32;
        v36 = 2048;
        v37 = [v33 count];
        v38 = 2114;
        v39 = v24;
        _os_log_debug_impl(&dword_1DA5E2000, v30, OS_LOG_TYPE_DEBUG, "Queued live listen state change message(%{public}@) to %lu nearby devices: %{public}@", &v34, 0x20u);
      }
    }
  }

LABEL_21:

  v31 = *MEMORY[0x1E69E9840];
}

- (HUNearbyLiveListenController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

uint64_t __52__HUNearbyLiveListenControlleriOS__devicesToMessage__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[HUHearingSettings sharedInstance];
  if (([v4 liveListenRemoteControlEnabled] & 1) != 0 || objc_msgSend(v3, "isWatch"))
  {
    v5 = [*(a1 + 32) observingDevices];
    v6 = [v5 containsObject:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (HUNearbyLiveListenControlleriOS)initWithController:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = HUNearbyLiveListenControlleriOS;
  v5 = [(HUNearbyLiveListenControlleriOS *)&v21 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_controller, v4);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.hearing.LiveListen.NearbyStateUpdates", v7);
    updateQueue = v6->_updateQueue;
    v6->_updateQueue = v8;

    v6->_cachedAudioLevel = 0.0;
    *&v6->_cachedIsListening = 0;
    v6->_cachedIsPlayingBack = 0;
    cachedTranscription = v6->_cachedTranscription;
    v6->_cachedCurrentCallsCount = 0;
    v6->_cachedTranscription = &stru_1F5614A78;

    cachedNearbyDevices = v6->_cachedNearbyDevices;
    v12 = MEMORY[0x1E695E0F0];
    v6->_cachedNearbyDevices = MEMORY[0x1E695E0F0];

    v6->_cachedNearbyIsPlayingBack = 0;
    cachedNearbyTranscription = v6->_cachedNearbyTranscription;
    v6->_cachedNearbyState = 0;
    v6->_cachedNearbyTranscription = &stru_1F5614A78;

    v14 = [MEMORY[0x1E695DF70] arrayWithArray:v12];
    observingDevices = v6->_observingDevices;
    v6->_observingDevices = v14;

    v16 = [MEMORY[0x1E695DF70] arrayWithArray:v12];
    notifiedDevices = v6->_notifiedDevices;
    v6->_notifiedDevices = v16;

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__HUNearbyLiveListenControlleriOS_initWithController___block_invoke;
    block[3] = &unk_1E85C9F60;
    v20 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  return v6;
}

void __54__HUNearbyLiveListenControlleriOS_initWithController___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69D8A58] sharedInstance];
  [*(a1 + 32) setCachedCurrentCallsCount:{objc_msgSend(v2, "currentCallCount")}];

  v3 = [*(a1 + 32) updateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__HUNearbyLiveListenControlleriOS_initWithController___block_invoke_2;
  block[3] = &unk_1E85C9F60;
  v5 = *(a1 + 32);
  dispatch_async(v3, block);
}

uint64_t __54__HUNearbyLiveListenControlleriOS_initWithController___block_invoke_2(uint64_t a1)
{
  v2 = +[AXHAController sharedController];
  v3 = [v2 liveListenController];
  [*(a1 + 32) setCachedIsListening:{objc_msgSend(v3, "isListening")}];

  v4 = +[AXHAController sharedController];
  v5 = [v4 liveListenController];
  [v5 audioLevel];
  [*(a1 + 32) setCachedAudioLevel:?];

  v6 = +[AXHAController sharedController];
  v7 = [v6 liveListenController];
  [*(a1 + 32) setCachedIsPlayingBack:{objc_msgSend(v7, "isPlayingBack")}];

  v8 = +[AXHAController sharedController];
  v9 = [v8 liveListenController];
  v10 = [v9 combinedSessionTranscription];
  [*(a1 + 32) setCachedTranscription:v10];

  [*(a1 + 32) setCachedHasLiveListenRoute:liveListenStreamSelected()];
  [*(a1 + 32) setCachedHasHearingAidRoute:hearingAidStreamAvailable()];
  v11 = +[HUUtilities sharedUtilities];
  [*(a1 + 32) setCachedWirelessSplitterEnabled:{objc_msgSend(v11, "wirelessSplitterEnabled")}];

  v12 = [*(a1 + 32) _nearbyDevices];
  [*(a1 + 32) setCachedNearbyDevices:v12];

  v13 = *(a1 + 32);

  return [v13 _updateState];
}

- (void)startLiveListen
{
  v3 = [(HUNearbyLiveListenControlleriOS *)self controller];
  v4 = isLiveListenEnabledNearbyForState([v3 state]);

  if (v4)
  {

    [(HUNearbyLiveListenControlleriOS *)self _sendStartOrStopMessage:1];
  }

  else
  {

    [(HUNearbyLiveListenControlleriOS *)self _startLiveListenFromRemoteDevice:0];
  }
}

- (void)stopLiveListen
{
  v3 = [(HUNearbyLiveListenControlleriOS *)self controller];
  v4 = isLiveListenEnabledNearbyForState([v3 state]);

  if (v4)
  {

    [(HUNearbyLiveListenControlleriOS *)self _sendStartOrStopMessage:0];
  }

  else
  {

    [(HUNearbyLiveListenControlleriOS *)self _stopLiveListenFromRemoteDevice:0];
  }
}

- (void)startLiveListenRewind
{
  v3 = [(HUNearbyLiveListenControlleriOS *)self controller];
  v4 = isLiveListenEnabledNearbyForState([v3 state]);

  if (v4)
  {

    [(HUNearbyLiveListenControlleriOS *)self _sendStartOrStopRewindMessage:1];
  }

  else
  {

    [(HUNearbyLiveListenControlleriOS *)self _startLiveListenRewind];
  }
}

- (void)stopLiveListenRewind
{
  v3 = [(HUNearbyLiveListenControlleriOS *)self controller];
  v4 = isLiveListenEnabledNearbyForState([v3 state]);

  if (v4)
  {

    [(HUNearbyLiveListenControlleriOS *)self _sendStartOrStopRewindMessage:0];
  }

  else
  {

    [(HUNearbyLiveListenControlleriOS *)self _stopLiveListenRewind];
  }
}

- (void)_startLiveListenFromRemoteDevice:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = HCLogHearingAids();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Starting live listen from device %@", buf, 0xCu);
  }

  LiveListenRequestNotificationAuthorization();
  [(HUNearbyLiveListenControlleriOS *)self setRemoteStartDevice:v4];
  if (v4)
  {
    [(HUNearbyLiveListenControlleriOS *)self _updateRemoteStartHistoryForDevice:v4 didStart:1];
  }

  v6 = +[AXHAController sharedController];
  v7 = [v6 liveListenController];
  v8 = [v7 isListening];

  if (v8)
  {
    v9 = HCLogHearingAids();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v9, OS_LOG_TYPE_DEFAULT, "Not starting live listen, already listening", buf, 2u);
    }
  }

  else
  {
    v10 = +[AXHAController sharedController];
    v11 = [v10 liveListenController];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __68__HUNearbyLiveListenControlleriOS__startLiveListenFromRemoteDevice___block_invoke;
    v13[3] = &unk_1E85CBF50;
    v13[4] = self;
    v14 = v4;
    [v11 startListeningWithCompletion:v13];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __68__HUNearbyLiveListenControlleriOS__startLiveListenFromRemoteDevice___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 && (a2 & 1) == 0)
  {
    v6 = HCLogHearingAids();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __68__HUNearbyLiveListenControlleriOS__startLiveListenFromRemoteDevice___block_invoke_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    [*(a1 + 32) _handleRequestCurrentStateMessageFromDevice:*(a1 + 40)];
  }
}

- (void)_stopLiveListenFromRemoteDevice:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = HCLogHearingAids();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v4;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Stopping live listen from device %@", buf, 0xCu);
  }

  v6 = [(HUNearbyLiveListenControlleriOS *)self remoteStartDevice];

  if (v6)
  {
    v7 = [(HUNearbyLiveListenControlleriOS *)self remoteStartDevice];
    [(HUNearbyLiveListenControlleriOS *)self _updateRemoteStartHistoryForDevice:v7 didStart:0];

    [(HUNearbyLiveListenControlleriOS *)self setRemoteStartDevice:0];
  }

  v8 = +[AXHAController sharedController];
  v9 = [v8 liveListenController];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __67__HUNearbyLiveListenControlleriOS__stopLiveListenFromRemoteDevice___block_invoke;
  v16 = &unk_1E85CBF50;
  v17 = self;
  v18 = v4;
  v10 = v4;
  [v9 stopListeningWithCompletion:&v13];

  v11 = [MEMORY[0x1E695DF70] arrayWithArray:{MEMORY[0x1E695E0F0], v13, v14, v15, v16, v17}];
  [(HUNearbyLiveListenControlleriOS *)self setNotifiedDevices:v11];

  v12 = *MEMORY[0x1E69E9840];
}

void __67__HUNearbyLiveListenControlleriOS__stopLiveListenFromRemoteDevice___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 && (a2 & 1) == 0)
  {
    v6 = HCLogHearingAids();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __67__HUNearbyLiveListenControlleriOS__stopLiveListenFromRemoteDevice___block_invoke_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    [*(a1 + 32) _handleRequestCurrentStateMessageFromDevice:*(a1 + 40)];
  }
}

- (void)_startLiveListenRewind
{
  v2 = HCLogHearingAids();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "Starting live listen rewind", v5, 2u);
  }

  v3 = +[AXHAController sharedController];
  v4 = [v3 liveListenController];
  [v4 startLiveListenRewind];
}

- (void)_stopLiveListenRewind
{
  v2 = HCLogHearingAids();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "Stopping live listen rewind", v5, 2u);
  }

  v3 = +[AXHAController sharedController];
  v4 = [v3 liveListenController];
  [v4 stopLiveListenRewind];
}

- (void)_scheduleStateUpdate
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__HUNearbyLiveListenControlleriOS__scheduleStateUpdate__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __55__HUNearbyLiveListenControlleriOS__scheduleStateUpdate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateStateTimer];
  [v2 invalidate];

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__HUNearbyLiveListenControlleriOS__scheduleStateUpdate__block_invoke_2;
  v4[3] = &unk_1E85CA440;
  v4[4] = *(a1 + 32);
  v3 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:0 repeats:v4 block:1.0];
  [*(a1 + 32) setUpdateStateTimer:v3];
}

- (void)startObserving
{
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "Start observing", buf, 2u);
  }

  MRMediaRemoteSetWantsRouteChangeNotifications();
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel__audioRoutesChanged_ name:*MEMORY[0x1E69B12A0] object:0];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:self selector:sel__audioRoutesChanged_ name:*MEMORY[0x1E69B12E0] object:0];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 addObserver:self selector:sel__callsStatusChanged_ name:*MEMORY[0x1E69D8E08] object:0];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 addObserver:self selector:sel__wirelessSplitterEnabledChanged_ name:@"com.apple.accessibility.hearing.wireless.splitter.changed" object:0];

  objc_initWeak(&location, self);
  v8 = +[HUNearbyController sharedInstance];
  [v8 registerLoggingBlock:&__block_literal_global_14 forDomain:@"com.hearing.LiveListen" withListener:self];

  v9 = +[HUNearbyController sharedInstance];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __49__HUNearbyLiveListenControlleriOS_startObserving__block_invoke_21;
  v30[3] = &unk_1E85CBF78;
  objc_copyWeak(&v31, &location);
  [v9 registerDiscoveryBlock:v30 forDomain:@"com.hearing.LiveListen" withListener:self];

  v10 = +[HUNearbyController sharedInstance];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __49__HUNearbyLiveListenControlleriOS_startObserving__block_invoke_2;
  v28[3] = &unk_1E85CA418;
  objc_copyWeak(&v29, &location);
  [v10 registerMessageBlock:v28 forDomain:@"com.hearing.LiveListen" withListener:self];

  v11 = [HULiveListenObserver alloc];
  v12 = +[AXHAController sharedController];
  v13 = [v12 liveListenController];
  v14 = [(HULiveListenObserver *)v11 initWithController:v13];
  [(HUNearbyLiveListenControlleriOS *)self setLiveListenObserver:v14];

  v15 = [(HUNearbyLiveListenControlleriOS *)self liveListenObserver];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __49__HUNearbyLiveListenControlleriOS_startObserving__block_invoke_3;
  v26[3] = &unk_1E85CBFA0;
  objc_copyWeak(&v27, &location);
  [v15 registerUpdateBlock:v26 withListener:self];

  v16 = +[HUHearingSettings sharedInstance];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __49__HUNearbyLiveListenControlleriOS_startObserving__block_invoke_4;
  v24[3] = &unk_1E85C9F10;
  objc_copyWeak(&v25, &location);
  [v16 registerUpdateBlock:v24 forRetrieveSelector:sel_liveListenRemoteControlEnabled withListener:self];

  v38 = 0;
  v39 = &v38;
  v40 = 0x2050000000;
  v17 = getAXRDeviceDiscoveryManagerClass_softClass;
  v41 = getAXRDeviceDiscoveryManagerClass_softClass;
  if (!getAXRDeviceDiscoveryManagerClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    v34 = 3221225472;
    v35 = __getAXRDeviceDiscoveryManagerClass_block_invoke;
    v36 = &unk_1E85C9FB0;
    v37 = &v38;
    __getAXRDeviceDiscoveryManagerClass_block_invoke(buf);
    v17 = v39[3];
  }

  v18 = v17;
  _Block_object_dispose(&v38, 8);
  v19 = [v17 sharedInstance];
  [(HUNearbyLiveListenControlleriOS *)self setDiscoveryManager:v19];

  v20 = [(HUNearbyLiveListenControlleriOS *)self discoveryManager];
  [v20 addObserver:self];

  v21 = [(HUNearbyLiveListenControlleriOS *)self discoveryManager];
  v22 = [(HUNearbyLiveListenControlleriOS *)self discoveryManager];
  v23 = [v22 cachedDiscoveredDevices];
  [(HUNearbyLiveListenControlleriOS *)self deviceDiscoveryManager:v21 updatedDevices:v23];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

void __49__HUNearbyLiveListenControlleriOS_startObserving__block_invoke_21(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _nearbyDevicesChanged];
}

void __49__HUNearbyLiveListenControlleriOS_startObserving__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _receivedMessage:v5 fromDevice:v6];
}

void __49__HUNearbyLiveListenControlleriOS_startObserving__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, float a5)
{
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  *&v10 = a5;
  [WeakRetained _isListeningChanged:a2 audioLevel:a3 isPlayingBack:v9 orTranscriptionChanged:v10];
}

void __49__HUNearbyLiveListenControlleriOS_startObserving__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleRemoteControlSettingChange];
}

- (void)stopObserving
{
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "Stop observing", v10, 2u);
  }

  if ([(HUNearbyLiveListenControlleriOS *)self isObservingNearbyStatus]&& ![(HUNearbyLiveListenControlleriOS *)self shouldBeObservingNearbyStatus])
  {
    [(HUNearbyLiveListenControlleriOS *)self _sendStopObservingMessage];
    [(HUNearbyLiveListenControlleriOS *)self setIsObservingNearbyStatus:0];
  }

  MRMediaRemoteSetWantsRouteChangeNotifications();
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  v5 = +[HUNearbyController sharedInstance];
  [v5 registerLoggingBlock:0 forDomain:@"com.hearing.LiveListen" withListener:self];

  v6 = +[HUNearbyController sharedInstance];
  [v6 registerDiscoveryBlock:0 forDomain:@"com.hearing.LiveListen" withListener:self];

  v7 = +[HUNearbyController sharedInstance];
  [v7 registerMessageBlock:0 forDomain:@"com.hearing.LiveListen" withListener:self];

  v8 = [(HUNearbyLiveListenControlleriOS *)self liveListenObserver];
  [v8 registerUpdateBlock:0 withListener:self];

  [(HUNearbyLiveListenControlleriOS *)self setLiveListenObserver:0];
  [(HUNearbyLiveListenControlleriOS *)self _sendLatestNearbyUpdate];
  [(HUNearbyLiveListenControlleriOS *)self setDiscoveredNearbyDeviceIdentifiers:MEMORY[0x1E695E0F0]];
  v9 = [(HUNearbyLiveListenControlleriOS *)self discoveryManager];
  [v9 removeObserver:self];

  [(HUNearbyLiveListenControlleriOS *)self setDiscoveryManager:0];
}

- (void)startObservingRemoteSession
{
  v3 = [(HUNearbyLiveListenControlleriOS *)self updateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__HUNearbyLiveListenControlleriOS_startObservingRemoteSession__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __62__HUNearbyLiveListenControlleriOS_startObservingRemoteSession__block_invoke(uint64_t a1)
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
  v3 = [(HUNearbyLiveListenControlleriOS *)self updateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__HUNearbyLiveListenControlleriOS_stopObservingRemoteSession__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __61__HUNearbyLiveListenControlleriOS_stopObservingRemoteSession__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setShouldBeObservingNearbyStatus:0];
  [*(a1 + 32) setCachedNearbyState:0];
  [*(a1 + 32) setCachedNearbyTranscription:&stru_1F5614A78];
  v2 = *(a1 + 32);

  return [v2 setCachedNearbyIsPlayingBack:0];
}

- (void)deviceDiscoveryManager:(id)a3 updatedDevices:(id)a4
{
  v5 = a4;
  v6 = [(HUNearbyLiveListenControlleriOS *)self updateQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__HUNearbyLiveListenControlleriOS_deviceDiscoveryManager_updatedDevices___block_invoke;
  v8[3] = &unk_1E85C9F38;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

uint64_t __73__HUNearbyLiveListenControlleriOS_deviceDiscoveryManager_updatedDevices___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) axMapObjectsUsingBlock:&__block_literal_global_31];
  [*(a1 + 32) setDiscoveredNearbyDeviceIdentifiers:v2];

  v3 = [*(a1 + 32) _nearbyDevices];
  [*(a1 + 32) setCachedNearbyDevices:v3];

  [*(a1 + 32) _notifyAboutAllObservingDevices];
  v4 = *(a1 + 32);

  return [v4 _updateState];
}

- (id)_nearbyDevices
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "Updating nearby devices", buf, 2u);
  }

  v4 = +[HUNearbyController sharedInstance];
  v5 = [v4 nearbyDevices];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __49__HUNearbyLiveListenControlleriOS__nearbyDevices__block_invoke;
  v21[3] = &unk_1E85CBCE0;
  v21[4] = self;
  v6 = [v5 ax_filteredArrayUsingBlock:v21];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(HUNearbyLiveListenControlleriOS *)self observingDevices];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if (([v6 containsObject:v12] & 1) == 0)
        {
          [(HUNearbyLiveListenControlleriOS *)self _sendEmptyStateToUnauthorizedDevice:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v9);
  }

  if ([(HUNearbyLiveListenControlleriOS *)self isObservingNearbyStatus])
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __49__HUNearbyLiveListenControlleriOS__nearbyDevices__block_invoke_34;
    v16[3] = &unk_1E85CBCE0;
    v16[4] = self;
    v13 = [v6 ax_filteredArrayUsingBlock:v16];
    [(HUNearbyLiveListenControlleriOS *)self _sendStartObservingMessageToDevices:v13];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v6;
}

uint64_t __49__HUNearbyLiveListenControlleriOS__nearbyDevices__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 idsDevice];
  v5 = [v4 isNearby];

  v6 = [*(a1 + 32) discoveredNearbyDeviceIdentifiers];
  v7 = [v3 uniqueIdentifier];
  v8 = [v6 containsObject:v7];

  v9 = HCLogHearingAids();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:v5];
    v11 = [MEMORY[0x1E696AD98] numberWithBool:v8];
    v14 = 138412802;
    v15 = v3;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_1DA5E2000, v9, OS_LOG_TYPE_DEFAULT, "Checking device %@. idsNearby: %@, rapportNearby: %@", &v14, 0x20u);
  }

  v12 = *MEMORY[0x1E69E9840];
  return (v5 | v8) & 1;
}

uint64_t __49__HUNearbyLiveListenControlleriOS__nearbyDevices__block_invoke_34(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 cachedNearbyDevices];
  v5 = [v4 containsObject:v3];

  return v5 ^ 1u;
}

- (void)_notifyAboutAllObservingDevices
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(HUNearbyLiveListenControlleriOS *)self observingDevices];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(HUNearbyLiveListenControlleriOS *)self _notifyAboutObservingDevice:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_notifyAboutObservingDevice:(id)a3
{
  v4 = a3;
  v5 = [(HUNearbyLiveListenControlleriOS *)self updateQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__HUNearbyLiveListenControlleriOS__notifyAboutObservingDevice___block_invoke;
  v7[3] = &unk_1E85C9F38;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __63__HUNearbyLiveListenControlleriOS__notifyAboutObservingDevice___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) cachedIsListening])
  {
    v4 = [*(a1 + 32) notifiedDevices];
    if (([v4 containsObject:*(a1 + 40)] & 1) == 0)
    {
      v2 = [*(a1 + 32) _devicesToMessage];
      v3 = [v2 containsObject:*(a1 + 40)];

      if (!v3)
      {
        return;
      }

      LiveListenSendObservingNotificationForDevice(*(a1 + 40));
      v4 = [*(a1 + 32) notifiedDevices];
      [v4 addObject:*(a1 + 40)];
    }
  }
}

- (void)_updateRemoteStartHistoryForDevice:(id)a3 didStart:(BOOL)a4
{
  v27[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MEMORY[0x1E695DF90];
  v7 = +[HUHearingSettings sharedInstance];
  v8 = [v7 liveListenRemoteStartHistory];
  v9 = [v6 dictionaryWithDictionary:v8];

  v10 = [v5 identifier];
  if (a4)
  {
    v26[0] = @"deviceName";
    v11 = [v5 name];
    v27[0] = v11;
    v26[1] = @"startDate";
    v12 = [MEMORY[0x1E695DF00] now];
    v27[1] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];

    [v9 setObject:v13 forKey:v10];
LABEL_5:
    v18 = +[HUHearingSettings sharedInstance];
    [v18 setLiveListenRemoteStartHistory:v9];
    goto LABEL_6;
  }

  v14 = MEMORY[0x1E695DF90];
  v15 = [v9 objectForKey:v10];
  v16 = [v14 dictionaryWithDictionary:v15];

  if (v16)
  {
    v17 = [MEMORY[0x1E695DF00] now];
    [v16 setObject:v17 forKey:@"endDate"];

    [v9 setObject:v16 forKey:v10];
    goto LABEL_5;
  }

  v18 = HCLogHearingAids();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [(HUNearbyLiveListenControlleriOS *)v5 _updateRemoteStartHistoryForDevice:v18 didStart:v20, v21, v22, v23, v24, v25];
  }

LABEL_6:

  v19 = *MEMORY[0x1E69E9840];
}

void __103__HUNearbyLiveListenControlleriOS__isListeningChanged_audioLevel_isPlayingBack_orTranscriptionChanged___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) cachedIsListening])
  {
    v2 = 0;
  }

  else
  {
    v3 = +[AXHAController sharedController];
    v4 = [v3 liveListenController];
    v2 = [v4 isListening];
  }

  v5 = +[AXHAController sharedController];
  v6 = [v5 liveListenController];
  [*(a1 + 32) setCachedIsListening:{objc_msgSend(v6, "isListening")}];

  v7 = +[AXHAController sharedController];
  v8 = [v7 liveListenController];
  [v8 audioLevel];
  [*(a1 + 32) setCachedAudioLevel:?];

  v9 = +[AXHAController sharedController];
  v10 = [v9 liveListenController];
  [*(a1 + 32) setCachedIsPlayingBack:{objc_msgSend(v10, "isPlayingBack")}];

  v11 = +[AXHAController sharedController];
  v12 = [v11 liveListenController];
  v13 = [v12 combinedSessionTranscription];
  [*(a1 + 32) setCachedTranscription:v13];

  [*(a1 + 32) _updateState];
  if (v2)
  {
    objc_initWeak(&location, *(a1 + 32));
    v14 = dispatch_time(0, 2000000000);
    v15 = [*(a1 + 32) updateQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __103__HUNearbyLiveListenControlleriOS__isListeningChanged_audioLevel_isPlayingBack_orTranscriptionChanged___block_invoke_2;
    v16[3] = &unk_1E85C9F10;
    objc_copyWeak(&v17, &location);
    dispatch_after(v14, v15, v16);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __103__HUNearbyLiveListenControlleriOS__isListeningChanged_audioLevel_isPlayingBack_orTranscriptionChanged___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyAboutAllObservingDevices];
}

- (void)_audioRoutesChanged:(id)a3
{
  v4 = [(HUNearbyLiveListenControlleriOS *)self updateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__HUNearbyLiveListenControlleriOS__audioRoutesChanged___block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(v4, block);
}

uint64_t __55__HUNearbyLiveListenControlleriOS__audioRoutesChanged___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setCachedHasLiveListenRoute:liveListenStreamSelected()];
  [*(a1 + 32) setCachedHasHearingAidRoute:hearingAidStreamAvailable()];
  v2 = HCLogHearingAids();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "cachedHasLiveListenRoute")}];
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "cachedHasHearingAidRoute")}];
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "Updated for audio route change: LL stream selected %@, HA stream available %@", &v7, 0x16u);
  }

  result = [*(a1 + 32) _updateState];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_wirelessSplitterEnabledChanged:(id)a3
{
  v4 = [(HUNearbyLiveListenControlleriOS *)self updateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__HUNearbyLiveListenControlleriOS__wirelessSplitterEnabledChanged___block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(v4, block);
}

uint64_t __67__HUNearbyLiveListenControlleriOS__wirelessSplitterEnabledChanged___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = +[HUUtilities sharedUtilities];
  [*(a1 + 32) setCachedWirelessSplitterEnabled:{objc_msgSend(v2, "wirelessSplitterEnabled")}];

  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "cachedWirelessSplitterEnabled")}];
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "Updated for wireless splitter change: %@", &v7, 0xCu);
  }

  result = [*(a1 + 32) _updateState];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_callsStatusChanged:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__HUNearbyLiveListenControlleriOS__callsStatusChanged___block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __55__HUNearbyLiveListenControlleriOS__callsStatusChanged___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69D8A58] sharedInstance];
  v3 = [v2 currentCallCount];

  v4 = [*(a1 + 32) updateQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__HUNearbyLiveListenControlleriOS__callsStatusChanged___block_invoke_2;
  v5[3] = &unk_1E85CBFE8;
  v5[4] = *(a1 + 32);
  v5[5] = v3;
  dispatch_async(v4, v5);
}

uint64_t __55__HUNearbyLiveListenControlleriOS__callsStatusChanged___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setCachedCurrentCallsCount:*(a1 + 40)];
  v2 = HCLogHearingAids();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) cachedCurrentCallsCount];
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "Updated for call status change: %lu", &v6, 0xCu);
  }

  result = [*(a1 + 32) _updateState];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_handleRemoteControlSettingChange
{
  if ([(HUNearbyLiveListenControlleriOS *)self cachedIsListening])
  {
    v3 = [(HUNearbyLiveListenControlleriOS *)self updateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__HUNearbyLiveListenControlleriOS__handleRemoteControlSettingChange__block_invoke;
    block[3] = &unk_1E85C9F60;
    block[4] = self;
    dispatch_async(v3, block);
  }
}

void __68__HUNearbyLiveListenControlleriOS__handleRemoteControlSettingChange__block_invoke(uint64_t a1)
{
  v27[4] = *MEMORY[0x1E69E9840];
  v2 = +[HUHearingSettings sharedInstance];
  v3 = [v2 liveListenRemoteControlEnabled];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 _devicesToMessage];
    v6 = [v5 ax_filteredArrayUsingBlock:&__block_literal_global_40];

    v7 = calculateState([*(a1 + 32) cachedIsListening], objc_msgSend(*(a1 + 32), "cachedHasLiveListenRoute"), objc_msgSend(*(a1 + 32), "cachedHasHearingAidRoute"), objc_msgSend(*(a1 + 32), "cachedCurrentCallsCount"), objc_msgSend(*(a1 + 32), "cachedWirelessSplitterEnabled"));
    v27[0] = &unk_1F5623D88;
    v26[0] = @"type";
    v26[1] = @"state";
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
    v27[1] = v8;
    v26[2] = @"isPlayingBack";
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "cachedIsPlayingBack")}];
    v27[2] = v9;
    v26[3] = @"transcription";
    v10 = [*(a1 + 32) cachedTranscription];
    v27[3] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:4];

    [*(a1 + 32) _notifyAboutAllObservingDevices];
  }

  else
  {
    v12 = [v4 cachedNearbyDevices];
    v6 = [v12 ax_filteredArrayUsingBlock:&__block_literal_global_42];

    v24[0] = @"type";
    v24[1] = @"state";
    v25[0] = &unk_1F5623D88;
    v25[1] = &unk_1F5623DA0;
    v24[2] = @"isPlayingBack";
    v24[3] = @"transcription";
    v25[2] = MEMORY[0x1E695E110];
    v25[3] = &stru_1F5614A78;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:4];
    v13 = MEMORY[0x1E695DF70];
    v14 = [*(a1 + 32) notifiedDevices];
    v15 = [v14 ax_filteredArrayUsingBlock:&__block_literal_global_47];
    v16 = [v13 arrayWithArray:v15];
    [*(a1 + 32) setNotifiedDevices:v16];
  }

  v17 = HCLogHearingAids();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 134218242;
    v21 = [v6 count];
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&dword_1DA5E2000, v17, OS_LOG_TYPE_DEFAULT, "Sending message to update state on %lu nearby devices: %@", &v20, 0x16u);
  }

  v18 = +[HUNearbyController sharedInstance];
  [v18 sendMessage:v11 withDomain:@"com.hearing.LiveListen" toDevices:v6 withPriority:1];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_receivedMessage:(id)a3 fromDevice:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = HCLogHearingAids();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 allKeys];
    v17 = 138412290;
    v18 = v9;
    _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "Handling incoming message %@", &v17, 0xCu);
  }

  v10 = [v6 objectForKeyedSubscript:@"type"];
  v11 = [v10 integerValue];

  if (v11 > 3)
  {
    switch(v11)
    {
      case 4:
        [(HUNearbyLiveListenControlleriOS *)self _handleStartOrStopRewindMessageFromRemoteDevice:v7 message:v6];
        break;
      case 5:
        [(HUNearbyLiveListenControlleriOS *)self _handleStartObservingFromRemoteDevice:v7];
        break;
      case 6:
        [(HUNearbyLiveListenControlleriOS *)self _handleStopObservingFromRemoteDevice:v7];
        break;
    }
  }

  else
  {
    switch(v11)
    {
      case 1:
        [(HUNearbyLiveListenControlleriOS *)self _handleRequestCurrentStateMessageFromDevice:v7];
        break;
      case 2:
        v12 = [v6 objectForKeyedSubscript:@"state"];
        updated = updateStateForNearbyDevice([v12 integerValue], v7);

        v14 = [(HUNearbyLiveListenControlleriOS *)self controller];
        if (isLiveListenEnabledNearbyForState([v14 state]))
        {
        }

        else
        {
          v15 = isLiveListenEnabledNearbyForState(updated);

          if (!v15)
          {
            break;
          }
        }

        [(HUNearbyLiveListenControlleriOS *)self _handleStateChangedMessage:v6 fromDevice:v7];
        break;
      case 3:
        [(HUNearbyLiveListenControlleriOS *)self _handleStartOrStopMessageFromRemoteDevice:v7 message:v6];
        break;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_handleStateChangedMessage:(id)a3 fromDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HUNearbyLiveListenControlleriOS *)self updateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__HUNearbyLiveListenControlleriOS__handleStateChangedMessage_fromDevice___block_invoke;
  block[3] = &unk_1E85CA468;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __73__HUNearbyLiveListenControlleriOS__handleStateChangedMessage_fromDevice___block_invoke(id *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if ([a1[4] isObservingNearbyStatus] && (objc_msgSend(a1[4], "shouldBeObservingNearbyStatus") & 1) == 0)
  {
    v11 = HCLogHearingAids();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __73__HUNearbyLiveListenControlleriOS__handleStateChangedMessage_fromDevice___block_invoke_cold_1(v11);
    }

    [a1[4] _sendStopObservingMessage];
    [a1[4] setIsObservingNearbyStatus:0];
    goto LABEL_13;
  }

  v2 = [a1[4] activeNearbyDevice];

  v3 = [a1[4] activeNearbyDevice];
  v4 = [v3 isEqual:a1[5]];

  if (v2 && (v4 & 1) == 0)
  {
    v5 = HCLogHearingAids();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [a1[4] activeNearbyDevice];
      v7 = a1[5];
      v17 = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Ignoring update. Active device (%@) does not match messaging device (%@)", &v17, 0x16u);
    }

LABEL_13:
    v12 = *MEMORY[0x1E69E9840];
    return;
  }

  v8 = [a1[6] objectForKeyedSubscript:@"state"];
  updated = updateStateForNearbyDevice([v8 integerValue], a1[5]);

  if (isLiveListenEnabledNearbyForState(updated))
  {
    v10 = a1[5];
LABEL_16:
    [a1[4] setActiveNearbyDevice:v10];
    goto LABEL_17;
  }

  if (v4)
  {
    v10 = 0;
    goto LABEL_16;
  }

LABEL_17:
  [a1[4] setCachedNearbyState:updated];
  v13 = [a1[6] objectForKeyedSubscript:@"isPlayingBack"];
  [a1[4] setCachedNearbyIsPlayingBack:{objc_msgSend(v13, "BOOLValue")}];

  v14 = [a1[6] objectForKeyedSubscript:@"transcription"];
  [a1[4] setCachedNearbyTranscription:v14];

  v15 = a1[4];
  v16 = *MEMORY[0x1E69E9840];

  [v15 _updateState];
}

- (void)_handleStartOrStopMessageFromRemoteDevice:(id)a3 message:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HUNearbyLiveListenControlleriOS *)self updateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__HUNearbyLiveListenControlleriOS__handleStartOrStopMessageFromRemoteDevice_message___block_invoke;
  block[3] = &unk_1E85CA468;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __85__HUNearbyLiveListenControlleriOS__handleStartOrStopMessageFromRemoteDevice_message___block_invoke(id *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] _devicesToMessage];
  v3 = [v2 containsObject:a1[5]];

  if (v3)
  {
    v4 = [a1[6] objectForKeyedSubscript:@"shouldStart"];
    v5 = [v4 BOOLValue];

    v6 = [a1[4] controller];
    v7 = [v6 state];

    if (v5)
    {
      if (isLiveListenAvailableForState(v7) && !isLiveListenEnabledForState(v7))
      {
        v8 = [a1[4] notifiedDevices];
        [v8 addObject:a1[5]];

        LiveListenSendStartedNotificationForDevice(a1[5]);
        v9 = *MEMORY[0x1E695A8C0];
        v18[0] = *MEMORY[0x1E695A8B0];
        v18[1] = v9;
        v19[0] = &unk_1F5623DB8;
        v19[1] = MEMORY[0x1E695E118];
        v18[2] = *MEMORY[0x1E695A8E8];
        v19[2] = &unk_1F5623DD0;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
        AudioServicesPlaySystemSoundWithOptions();
        [a1[4] _startLiveListenFromRemoteDevice:a1[5]];
      }
    }

    else if (isLiveListenEnabledForState(v7))
    {
      [a1[4] _stopLiveListenFromRemoteDevice:a1[5]];
      v14 = *MEMORY[0x1E695A8C0];
      v16[0] = *MEMORY[0x1E695A8B0];
      v16[1] = v14;
      v17[0] = &unk_1F5623DB8;
      v17[1] = MEMORY[0x1E695E118];
      v16[2] = *MEMORY[0x1E695A8E8];
      v17[2] = &unk_1F5623DD0;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
      AudioServicesPlaySystemSoundWithOptions();
    }
  }

  else
  {
    v11 = HCLogHearingAids();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = a1[5];
      *buf = 138412290;
      v21 = v12;
      _os_log_impl(&dword_1DA5E2000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring start/stop message from unauthorized device %@", buf, 0xCu);
    }

    [a1[4] _sendEmptyStateToUnauthorizedDevice:a1[5]];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_handleStartOrStopRewindMessageFromRemoteDevice:(id)a3 message:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HUNearbyLiveListenControlleriOS *)self updateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__HUNearbyLiveListenControlleriOS__handleStartOrStopRewindMessageFromRemoteDevice_message___block_invoke;
  block[3] = &unk_1E85CA468;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __91__HUNearbyLiveListenControlleriOS__handleStartOrStopRewindMessageFromRemoteDevice_message___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _devicesToMessage];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v12 = HCLogHearingAids();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      v18 = 138412290;
      v19 = v13;
      _os_log_impl(&dword_1DA5E2000, v12, OS_LOG_TYPE_DEFAULT, "Ignoring start/stop rewind message from unauthorized device %@", &v18, 0xCu);
    }

    [*(a1 + 32) _sendEmptyStateToUnauthorizedDevice:*(a1 + 40)];
    goto LABEL_14;
  }

  v4 = [*(a1 + 48) objectForKeyedSubscript:@"shouldStart"];
  v5 = [v4 BOOLValue];

  v6 = [*(a1 + 32) controller];
  v7 = [v6 state];

  v8 = [*(a1 + 32) controller];
  v9 = [v8 isPlayingBack];

  if (!isLiveListenEnabledForState(v7))
  {
    v14 = HCLogHearingAids();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_1DA5E2000, v14, OS_LOG_TYPE_DEFAULT, "Live listen not enabled, ignoring rewind message", &v18, 2u);
    }

    goto LABEL_14;
  }

  if (v5)
  {
    if ((v9 & 1) == 0)
    {
      v10 = *(a1 + 32);
      v11 = *MEMORY[0x1E69E9840];

      [v10 _startLiveListenRewind];
      return;
    }

LABEL_14:
    v15 = *MEMORY[0x1E69E9840];
    return;
  }

  if (!v9)
  {
    goto LABEL_14;
  }

  v16 = *(a1 + 32);
  v17 = *MEMORY[0x1E69E9840];

  [v16 _stopLiveListenRewind];
}

- (void)_handleRequestCurrentStateMessageFromDevice:(id)a3
{
  v4 = a3;
  v5 = [(HUNearbyLiveListenControlleriOS *)self updateQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__HUNearbyLiveListenControlleriOS__handleRequestCurrentStateMessageFromDevice___block_invoke;
  v7[3] = &unk_1E85C9F38;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __79__HUNearbyLiveListenControlleriOS__handleRequestCurrentStateMessageFromDevice___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _devicesToMessage];
  if ([v2 containsObject:*(a1 + 40)])
  {

    goto LABEL_4;
  }

  v3 = [*(a1 + 40) isWatch];

  if (v3)
  {
LABEL_4:
    if (*(a1 + 40))
    {
      v4 = calculateState([*(a1 + 32) cachedIsListening], objc_msgSend(*(a1 + 32), "cachedHasLiveListenRoute"), objc_msgSend(*(a1 + 32), "cachedHasHearingAidRoute"), objc_msgSend(*(a1 + 32), "cachedCurrentCallsCount"), objc_msgSend(*(a1 + 32), "cachedWirelessSplitterEnabled"));
      v14[0] = @"type";
      v14[1] = @"state";
      v15[0] = &unk_1F5623D88;
      v5 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
      v15[1] = v5;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

      v7 = HCLogHearingAids();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = v6;
        _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "Replying with %@", buf, 0xCu);
      }

      v8 = +[HUNearbyController sharedInstance];
      v13 = *(a1 + 40);
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
      [v8 sendMessage:v6 withDomain:@"com.hearing.LiveListen" toDevices:v9 withPriority:1];
    }

    goto LABEL_11;
  }

  v10 = HCLogHearingAids();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 40);
    *buf = 138412290;
    v17 = v11;
    _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "Ignoring request current state message from unauthorized device %@", buf, 0xCu);
  }

  [*(a1 + 32) _sendEmptyStateToUnauthorizedDevice:*(a1 + 40)];
LABEL_11:
  v12 = *MEMORY[0x1E69E9840];
}

- (void)_handleStartObservingFromRemoteDevice:(id)a3
{
  v4 = a3;
  v5 = [(HUNearbyLiveListenControlleriOS *)self updateQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__HUNearbyLiveListenControlleriOS__handleStartObservingFromRemoteDevice___block_invoke;
  v7[3] = &unk_1E85C9F38;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __73__HUNearbyLiveListenControlleriOS__handleStartObservingFromRemoteDevice___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) observingDevices];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 32) observingDevices];
    [v4 addObject:*(a1 + 40)];

    v5 = [*(a1 + 32) _devicesToMessage];
    v6 = [v5 containsObject:*(a1 + 40)];

    v7 = HCLogHearingAids();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [MEMORY[0x1E696AD98] numberWithBool:v6];
      v9 = *(a1 + 40);
      *buf = 138412546;
      v24 = v8;
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "New device started observing, send update? %@ - %@", buf, 0x16u);
    }

    v10 = *(a1 + 32);
    if (v6)
    {
      if ([v10 cachedIsListening])
      {
        v11 = calculateState([*(a1 + 32) cachedIsListening], objc_msgSend(*(a1 + 32), "cachedHasLiveListenRoute"), objc_msgSend(*(a1 + 32), "cachedHasHearingAidRoute"), objc_msgSend(*(a1 + 32), "cachedCurrentCallsCount"), objc_msgSend(*(a1 + 32), "cachedWirelessSplitterEnabled"));
        v22[0] = &unk_1F5623D88;
        v21[0] = @"type";
        v21[1] = @"state";
        v12 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
        v22[1] = v12;
        v21[2] = @"isPlayingBack";
        v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "cachedIsPlayingBack")}];
        v22[2] = v13;
        v21[3] = @"transcription";
        v14 = [*(a1 + 32) cachedTranscription];
        v22[3] = v14;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:4];

        v16 = +[HUNearbyController sharedInstance];
        v20 = *(a1 + 40);
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
        [v16 sendMessage:v15 withDomain:@"com.hearing.LiveListen" toDevices:v17 withPriority:1];

        [*(a1 + 32) _notifyAboutObservingDevice:*(a1 + 40)];
      }

      else
      {
        v18 = HCLogHearingAids();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1DA5E2000, v18, OS_LOG_TYPE_DEFAULT, "Not listening, no need to send status", buf, 2u);
        }
      }
    }

    else
    {
      [v10 _sendEmptyStateToUnauthorizedDevice:*(a1 + 40)];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_handleStopObservingFromRemoteDevice:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HUNearbyLiveListenControlleriOS *)self observingDevices];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = HCLogHearingAids();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "New device stopped observing %@", &v10, 0xCu);
    }

    v8 = [(HUNearbyLiveListenControlleriOS *)self observingDevices];
    [v8 removeObject:v4];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_sendStartObservingMessageToDevices:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v12 = @"type";
    v13[0] = &unk_1F5623E00;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v5 = HCLogHearingAids();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134218242;
      v9 = [v3 count];
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Sending start observing message to %lu paired devices: %@", &v8, 0x16u);
    }

    v6 = +[HUNearbyController sharedInstance];
    [v6 sendMessage:v4 withDomain:@"com.hearing.LiveListen" toDevices:v3 withPriority:1];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_sendStopObservingMessage
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = [(HUNearbyLiveListenControlleriOS *)self cachedNearbyDevices];
  v4 = [v3 count];

  if (v4)
  {
    v15 = @"type";
    v16[0] = &unk_1F5623E18;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v6 = HCLogHearingAids();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(HUNearbyLiveListenControlleriOS *)self cachedNearbyDevices];
      v11 = 134218242;
      v12 = [v7 count];
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "Sending stop observing message to %lu paired devices: %@", &v11, 0x16u);
    }

    v8 = +[HUNearbyController sharedInstance];
    v9 = [(HUNearbyLiveListenControlleriOS *)self cachedNearbyDevices];
    [v8 sendMessage:v5 withDomain:@"com.hearing.LiveListen" toDevices:v9 withPriority:1];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_sendEmptyStateToUnauthorizedDevice:(id)a3
{
  v16[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(HUNearbyLiveListenControlleriOS *)self cachedIsListening])
  {
    v5 = HCLogHearingAids();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Already not listening, no need to send empty state to unauthorized device %@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  if (v4)
  {
    v15[0] = @"type";
    v15[1] = @"state";
    v16[0] = &unk_1F5623D88;
    v16[1] = &unk_1F5623DA0;
    v15[2] = @"isPlayingBack";
    v15[3] = @"transcription";
    v16[2] = MEMORY[0x1E695E110];
    v16[3] = &stru_1F5614A78;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];
    v6 = HCLogHearingAids();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "Sending empty state message %@ to unauthorized device %@", buf, 0x16u);
    }

    v7 = +[HUNearbyController sharedInstance];
    v10 = v4;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
    [v7 sendMessage:v5 withDomain:@"com.hearing.LiveListen" toDevices:v8 withPriority:1];

LABEL_8:
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __68__HUNearbyLiveListenControlleriOS__startLiveListenFromRemoteDevice___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1DA5E2000, a2, a3, "Error starting Live Listen: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __67__HUNearbyLiveListenControlleriOS__stopLiveListenFromRemoteDevice___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1DA5E2000, a2, a3, "Error stopping Live Listen: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_updateRemoteStartHistoryForDevice:(uint64_t)a3 didStart:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1DA5E2000, a2, a3, "Had stored that device %@ started live listen, but no info in remote start history dict", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end