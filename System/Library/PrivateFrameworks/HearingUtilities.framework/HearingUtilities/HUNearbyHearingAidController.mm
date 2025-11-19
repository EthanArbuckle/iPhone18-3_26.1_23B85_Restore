@interface HUNearbyHearingAidController
+ (id)sharedInstance;
- (BOOL)isPeerConnectedToHearingDevice;
- (BOOL)processStateMessageFromPeer:(id)a3 state:(id)a4;
- (BOOL)relinquishConnectionForReason:(int64_t)a3 toDevice:(id)a4;
- (BOOL)requestHandoff:(int64_t)a3 reason:(int64_t)a4;
- (BOOL)shouldConnect;
- (BOOL)shouldDisconnect;
- (BOOL)shouldRelinquishConnectionForReason:(int64_t)a3;
- (BOOL)shouldRoute:(BOOL)a3;
- (BOOL)updateStateOnDeviceQueue;
- (HUNearbyHearingAidController)init;
- (HUNearbyHearingAidControllerDelegate)delegate;
- (id)availableDevices;
- (id)descriptionForCurrentMessagePriority;
- (id)descriptionForCurrentState;
- (id)descriptionForHandoffReason:(int64_t)a3;
- (id)descriptionForHandoffState;
- (id)descriptionForState:(int64_t)a3;
- (id)device:(id)a3 didReceiveMessage:(id)a4;
- (id)devicesFromDevices:(id)a3 withMessagePriority:(unint64_t)a4;
- (id)hearingAidForDeviceID:(id)a3;
- (id)hearingDevice;
- (id)peerWithState:(int64_t)a3;
- (id)timeStamp;
- (int64_t)connectionStateForDevice:(id)a3;
- (unint64_t)messagePriorityForDevice:(id)a3;
- (void)callStatusDidChange:(id)a3;
- (void)checkConnectionRequestedForMediaAfterTimeout;
- (void)checkHandoffAfterTimeout;
- (void)checkPeerStateAfterTimout;
- (void)clientRemoved:(id)a3;
- (void)collectPropertyUpdatesFromPayload:(id)a3;
- (void)connectedPeerWithCompletion:(id)a3;
- (void)disconnectFromPairedDevice;
- (void)finishHandoff;
- (void)logAvailableDevicesWithTitle:(id)a3;
- (void)logDevices:(id)a3 withTitle:(id)a4 fullInfo:(BOOL)a5;
- (void)mediaPlaybackDidChange:(id)a3;
- (void)mediaServerDied;
- (void)processHandoffMessageFromPeer:(id)a3 state:(id)a4;
- (void)processReadMessageFromPeerDevice:(id)a3 value:(id)a4;
- (void)processReadProperty:(id)a3 fromPeerDevice:(id)a4;
- (void)processWriteMessageWithValue:(id)a3;
- (void)registerMediaNotifications;
- (void)relinquishConnection;
- (void)relinquishConnectionWithCompletion:(id)a3;
- (void)requestConnection;
- (void)requestConnectionForMedia;
- (void)requestConnectionForReason:(int64_t)a3;
- (void)resetHandoff;
- (void)resetHandoffOnDeviceQueue;
- (void)routesDidChange:(id)a3;
- (void)scIDSServiceDevice:(id)a3 didReceiveMessage:(id)a4;
- (void)scIDSServiceDidAddDevices:(id)a3;
- (void)scIDSServiceDidRemoveDevices:(id)a3;
- (void)sendConnectionUpdateToPeers;
- (void)sendMessage:(id)a3 toDevices:(id)a4;
- (void)sendMessage:(id)a3 toDevices:(id)a4 messagePriority:(unint64_t)a5;
- (void)sendMessageToAllDevices:(id)a3 messagePriority:(unint64_t)a4;
- (void)sendMessagesPriority:(unint64_t)a3;
- (void)sendMessagesPriorityDefaultForClient:(id)a3;
- (void)sendMessagesPriorityHighForClient:(id)a3;
- (void)sendStateMessage:(id)a3 toDevices:(id)a4 isUrgent:(BOOL)a5;
- (void)sendStateMessageToAllDevices:(id)a3 isUrgent:(BOOL)a4;
- (void)sendWrite:(id)a3 toDevices:(id)a4;
- (void)sendWriteToAllDevices:(id)a3;
- (void)setConnectionState:(int64_t)a3 forDevice:(id)a4;
- (void)setMessagePriority:(unint64_t)a3 forDevice:(id)a4;
- (void)shouldRequestAudioConnectionForCall:(BOOL)a3 withCompletion:(id)a4;
- (void)start;
- (void)stop;
- (void)unregisterMediaNotifications;
- (void)updateProperty:(unint64_t)a3 forDeviceID:(id)a4;
- (void)updateResponse:(id)a3 withState:(int64_t)a4;
- (void)updateState;
- (void)validateResponse:(id)a3;
- (void)writeValue:(id)a3 forProperty:(unint64_t)a4 andDeviceID:(id)a5;
- (void)writeValue:(id)a3 forProperty:(unint64_t)a4 andDeviceID:(id)a5 toDevices:(id)a6;
@end

@implementation HUNearbyHearingAidController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[HUNearbyHearingAidController sharedInstance];
  }

  v3 = sharedInstance_NearbyController;

  return v3;
}

uint64_t __46__HUNearbyHearingAidController_sharedInstance__block_invoke()
{
  sharedInstance_NearbyController = objc_alloc_init(HUNearbyHearingAidController);

  return MEMORY[0x1EEE66BB8]();
}

- (HUNearbyHearingAidController)init
{
  v34.receiver = self;
  v34.super_class = HUNearbyHearingAidController;
  v2 = [(HUDeviceController *)&v34 init];
  if (v2)
  {
    v3 = +[HUHearingAidSettings sharedInstance];
    [v3 multideviceSettingsEnabled];

    v4 = +[HUHearingAidSettings sharedInstance];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __36__HUNearbyHearingAidController_init__block_invoke;
    v32[3] = &unk_1E85C9F60;
    v5 = v2;
    v33 = v5;
    [v4 registerUpdateBlock:v32 forRetrieveSelector:sel_multideviceSettingsEnabled withListener:v5];

    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v7 = dispatch_queue_create("hu_nearby_media", v6);
    [(HUNearbyHearingAidController *)v5 setMediaQueue:v7];

    v5->_deviceMessagePriority = 1;
    v8 = [MEMORY[0x1E695DFA8] set];
    processesHighMessagePriority = v5->_processesHighMessagePriority;
    v5->_processesHighMessagePriority = v8;

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v5 selector:sel_callStatusDidChange_ name:*MEMORY[0x1E69D8E08] object:0];

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v5 selector:sel_callStatusDidChange_ name:*MEMORY[0x1E69D8E58] object:0];

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v5 selector:sel_routesDidChange_ name:@"com.apple.accessibility.hearingaid.audio.route.changed" object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, UserRequestedAudioTransferNotification, @"com.apple.accessibility.hearing.audio.transfer", 0, 0);
    v14 = objc_alloc(MEMORY[0x1E6988780]);
    v15 = [(HUNearbyHearingAidController *)v5 mediaQueue];
    v16 = [v14 initWithTargetSerialQueue:v15];
    [(HUNearbyHearingAidController *)v5 setSendConnectionToCompanionTimer:v16];

    v17 = objc_alloc(MEMORY[0x1E6988780]);
    v18 = [(HUDeviceController *)v5 deviceUpdatesQueue];
    v19 = [v17 initWithTargetSerialQueue:v18];
    handoffTimer = v5->_handoffTimer;
    v5->_handoffTimer = v19;

    [(AXDispatchTimer *)v5->_handoffTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    v21 = objc_alloc(MEMORY[0x1E6988780]);
    v22 = [(HUDeviceController *)v5 deviceUpdatesQueue];
    v23 = [v21 initWithTargetSerialQueue:v22];
    sendPropertyUpdatesLowTimer = v5->_sendPropertyUpdatesLowTimer;
    v5->_sendPropertyUpdatesLowTimer = v23;

    [(AXDispatchTimer *)v5->_sendPropertyUpdatesLowTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    v25 = objc_opt_new();
    collectedPropertyUpdates = v5->_collectedPropertyUpdates;
    v5->_collectedPropertyUpdates = v25;

    v27 = objc_alloc(MEMORY[0x1E6988780]);
    v28 = [(HUDeviceController *)v5 deviceUpdatesQueue];
    v29 = [v27 initWithTargetSerialQueue:v28];
    messagesPriorityTimer = v5->_messagesPriorityTimer;
    v5->_messagesPriorityTimer = v29;

    [(AXDispatchTimer *)v5->_messagesPriorityTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  }

  return v2;
}

void __36__HUNearbyHearingAidController_init__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 availableRemoteControllersDidChange];

  v2 = HCLogHearingAids();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "Multi-device settings change. Updated available controllers", v3, 2u);
  }
}

- (void)registerMediaNotifications
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "Registering media", v17, 2u);
  }

  v4 = [MEMORY[0x1E69AED10] sharedAVSystemController];
  v5 = MEMORY[0x1E69AECB8];
  v6 = MEMORY[0x1E69AEAB0];
  v7 = *MEMORY[0x1E69AEAB0];
  v18[0] = *MEMORY[0x1E69AECB8];
  v18[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  [v4 setAttribute:v8 forKey:*MEMORY[0x1E69AECD8] error:0];

  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  v10 = *v5;
  v11 = [MEMORY[0x1E69AED10] sharedAVSystemController];
  [v9 addObserver:self selector:sel_mediaServerDied name:v10 object:v11];

  v12 = [MEMORY[0x1E696AD88] defaultCenter];
  v13 = *v6;
  v14 = [MEMORY[0x1E69AED10] sharedAVSystemController];
  [v12 addObserver:self selector:sel_mediaPlaybackDidChange_ name:v13 object:v14];

  MRMediaRemoteSetWantsNowPlayingNotifications();
  v15 = [MEMORY[0x1E696AD88] defaultCenter];
  [v15 addObserver:self selector:sel_mediaPlaybackDidChange_ name:*MEMORY[0x1E69B0E08] object:0];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)unregisterMediaNotifications
{
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "Unregistering media", v10, 2u);
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v5 = *MEMORY[0x1E69AECB8];
  v6 = [MEMORY[0x1E69AED10] sharedAVSystemController];
  [v4 removeObserver:self name:v5 object:v6];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = *MEMORY[0x1E69AEAB0];
  v9 = [MEMORY[0x1E69AED10] sharedAVSystemController];
  [v7 removeObserver:self name:v8 object:v9];
}

- (void)mediaServerDied
{
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [HUNearbyHearingAidController mediaServerDied];
  }

  [(HUNearbyHearingAidController *)self unregisterMediaNotifications];
  v4 = dispatch_time(0, 2000000000);
  v5 = [(HUNearbyHearingAidController *)self mediaQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__HUNearbyHearingAidController_mediaServerDied__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_after(v4, v5, block);
}

- (void)mediaPlaybackDidChange:(id)a3
{
  v4 = +[HUUtilities sharedUtilities];
  v5 = [(HUNearbyHearingAidController *)self mediaQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__HUNearbyHearingAidController_mediaPlaybackDidChange___block_invoke;
  v6[3] = &unk_1E85CA050;
  v6[4] = self;
  [v4 checkAudioPlayingWithQueue:v5 andCompletion:v6];
}

void __55__HUNearbyHearingAidController_mediaPlaybackDidChange___block_invoke(uint64_t a1, int a2)
{
  v4 = HCLogHearingHandoff();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __55__HUNearbyHearingAidController_mediaPlaybackDidChange___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (a2)
  {
    [v5 requestConnectionForMedia];
  }

  else if ([v5 processingHandoff] == 1 && objc_msgSend(*(a1 + 32), "handoffReason") == 1)
  {
    v6 = HCLogHearingHandoff();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __55__HUNearbyHearingAidController_mediaPlaybackDidChange___block_invoke_cold_2();
    }
  }

  else
  {
    [*(a1 + 32) setHoldingMediaForConnection:0];
    [*(a1 + 32) sendConnectionToCompanionIfPossible];
  }
}

- (void)routesDidChange:(id)a3
{
  if (hearingAidStreamSelected())
  {
    [(HUNearbyHearingAidController *)self setHoldingPhoneForConnection:0];
    if ([(HUNearbyHearingAidController *)self holdingMediaForConnection])
    {
      [(HUNearbyHearingAidController *)self setHoldingMediaForConnection:0];
      if (([MEMORY[0x1E69A4560] deviceIsWatch] & 1) == 0)
      {
        v4 = HCLogHearingHandoff();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "Route changed. Resuming media", v7, 2u);
        }

        v5 = +[HUUtilities sharedUtilities];
        v6 = [(HUNearbyHearingAidController *)self mediaQueue];
        [v5 pauseNowPlaying:0 withQueue:v6 andCompletion:0];
      }
    }
  }
}

- (void)callStatusDidChange:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = HCLogHearingHandoff();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    *buf = 138412290;
    v13 = v6;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Call status changed - %@", buf, 0xCu);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__HUNearbyHearingAidController_callStatusDidChange___block_invoke;
  v9[3] = &unk_1E85CA2E0;
  v10 = v4;
  v11 = self;
  v7 = v4;
  [(HUNearbyHearingAidController *)self shouldRequestAudioConnectionForCall:1 withCompletion:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __52__HUNearbyHearingAidController_callStatusDidChange___block_invoke(uint64_t a1, int a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__HUNearbyHearingAidController_callStatusDidChange___block_invoke_2;
  v13[3] = &unk_1E85CA2B8;
  v13[4] = &v26;
  v13[5] = &v22;
  v13[6] = &v18;
  v13[7] = &v14;
  getCallStatus(v13);
  v4 = HCLogHearingHandoff();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(v15 + 24);
    v6 = *(v23 + 24);
    v7 = *(v19 + 24);
    v8 = *(v27 + 24);
    v9 = hearingAidStreamAvailable();
    v10 = [*(a1 + 32) name];
    *buf = 67110658;
    v31 = v5;
    v32 = 1024;
    v33 = v6;
    v34 = 1024;
    v35 = v7;
    v36 = 1024;
    v37 = v8;
    v38 = 1024;
    v39 = v9;
    v40 = 1024;
    v41 = a2;
    v42 = 2112;
    v43 = v10;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "Phone call [pending = %d, active = %d, avc = %d, endpoint = %d] - [connected = %d, should request = %d] - %@", buf, 0x30u);
  }

  if ((v23[3] & 1) == 0 && (v19[3] & 1) == 0 && *(v15 + 24) != 1)
  {
    [*(a1 + 40) setHoldingPhoneForConnection:0];
    [*(a1 + 40) sendConnectionToCompanionIfPossible];
    goto LABEL_18;
  }

  if (((hearingAidStreamAvailable() | a2 ^ 1) & 1) == 0)
  {
    if (v23[3] & 1) != 0 || (v19[3])
    {
      if (*(v27 + 24))
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }

      if (!*(v27 + 24))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if ((v27[3] & 1) == 0)
      {
        goto LABEL_18;
      }

      v11 = 2;
    }

    [*(a1 + 40) setHoldingPhoneForConnection:1];
    [*(a1 + 40) requestConnectionForReason:v11];
  }

LABEL_18:
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  v12 = *MEMORY[0x1E69E9840];
}

void *__52__HUNearbyHearingAidController_callStatusDidChange___block_invoke_2(void *result, char a2, char a3, char a4, char a5)
{
  *(*(result[4] + 8) + 24) = a2;
  *(*(result[5] + 8) + 24) = a3;
  *(*(result[6] + 8) + 24) = a4;
  *(*(result[7] + 8) + 24) = a5;
  return result;
}

- (BOOL)shouldRoute:(BOOL)a3
{
  v4 = +[HUHearingAidSettings sharedInstance];
  v5 = v4;
  if (a3)
  {
    v6 = [v4 callAudioRoute];
  }

  else
  {
    v6 = [v4 mediaAudioRoute];
  }

  v7 = v6;

  if (v7 == 1)
  {
    return 0;
  }

  if (v7 != 2)
  {
    return 1;
  }

  v8 = +[HUUtilities sharedUtilities];
  v9 = [v8 currentPickableAudioRoutes];

  v10 = [v9 valueForKey:@"AXSHARouteHeadset"];
  v11 = [v9 valueForKey:@"AXSHARoutePicked"];
  v12 = [v10 isEqualToDictionary:v11];

  v13 = v12 ^ 1;
  return v13;
}

- (void)shouldRequestAudioConnectionForCall:(BOOL)a3 withCompletion:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = [(HUDeviceController *)self deviceUpdatesQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__HUNearbyHearingAidController_shouldRequestAudioConnectionForCall_withCompletion___block_invoke;
    block[3] = &unk_1E85CA308;
    block[4] = self;
    v10 = a3;
    v9 = v6;
    dispatch_async(v7, block);
  }
}

void __83__HUNearbyHearingAidController_shouldRequestAudioConnectionForCall_withCompletion___block_invoke(uint64_t a1)
{
  v1 = a1;
  v54 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) shouldRoute:*(a1 + 48)];
  v3 = +[AXHearingAidDeviceController sharedController];
  if ([v3 isConnected])
  {
    v41 = 0;
LABEL_3:

    goto LABEL_8;
  }

  v4 = +[AXHearingAidDeviceController sharedController];
  v5 = [v4 isPartiallyConnected];

  if ((v5 & 1) == 0 && [*(v1 + 32) isPeerConnectedToHearingDevice])
  {
    v3 = +[HUHearingAidSettings sharedInstance];
    v41 = [v3 multideviceAudioEnabled];
    goto LABEL_3;
  }

  v41 = 0;
LABEL_8:
  v6 = +[AXHearingAidDeviceController sharedController];
  v40 = [v6 isBluetoothAvailable];

  v7 = +[AXHearingAidDeviceController sharedController];
  v8 = [v7 pairedHearingDevice];

  v9 = HCLogHearingHandoff();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = +[AXHearingAidDeviceController sharedController];
    *buf = 67109632;
    *v43 = [v10 isConnected];
    *&v43[4] = 1024;
    *&v43[6] = [v8 isLeftConnected];
    v44 = 1024;
    v45 = [v8 isRightConnected];
    _os_log_impl(&dword_1DA5E2000, v9, OS_LOG_TYPE_DEFAULT, "Connected: %d, L: %d, R: %d", buf, 0x14u);
  }

  v11 = HCLogHearingHandoff();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = +[HUHearingAidSettings sharedInstance];
    v13 = [v12 shouldStreamToLeftAid];
    v14 = +[HUHearingAidSettings sharedInstance];
    v15 = [v14 shouldStreamToRightAid];
    *buf = 67109376;
    *v43 = v13;
    *&v43[4] = 1024;
    *&v43[6] = v15;
    _os_log_impl(&dword_1DA5E2000, v11, OS_LOG_TYPE_DEFAULT, "Streaming L: %d, R: %d", buf, 0xEu);
  }

  v16 = HCLogHearingHandoff();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [*(v1 + 32) connectedPeer];
    v18 = [v17 name];
    *buf = 138412290;
    *v43 = v18;
    _os_log_impl(&dword_1DA5E2000, v16, OS_LOG_TYPE_DEFAULT, "ConnectedPeer: %@", buf, 0xCu);
  }

  v19 = HCLogHearingHandoff();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v39 = v2;
    v37 = v8;
    v20 = +[HUHearingAidSettings sharedInstance];
    v21 = [v20 pairedHearingAids];
    v16 = v21 != 0;
    v22 = +[HUHearingAidSettings sharedInstance];
    v23 = [v22 shouldStreamToLeftAid];
    v38 = v1;
    if (v23)
    {
      v24 = 1;
    }

    else
    {
      v36 = +[HUHearingAidSettings sharedInstance];
      v24 = [v36 shouldStreamToRightAid];
    }

    v25 = +[HUHearingAidSettings sharedInstance];
    v26 = [v25 isPairedWithFakeHearingAids] ^ 1;
    v27 = +[HUHearingAidSettings sharedInstance];
    v28 = [v27 isiCloudPaired];
    *buf = 67110656;
    *v43 = v39;
    *&v43[4] = 1024;
    *&v43[6] = v21 != 0;
    v44 = 1024;
    v45 = v41;
    v46 = 1024;
    v47 = v24;
    v48 = 1024;
    v49 = v26;
    v50 = 1024;
    v51 = v28 ^ 1;
    v52 = 1024;
    v53 = v40;
    _os_log_impl(&dword_1DA5E2000, v19, OS_LOG_TYPE_DEFAULT, "Should request connection %d, %d, %d, %d, %d, %d, %d", buf, 0x2Cu);

    if ((v23 & 1) == 0)
    {
    }

    v8 = v37;
    v1 = v38;
    v2 = v39;
  }

  if (v2)
  {
    v29 = +[HUHearingAidSettings sharedInstance];
    v30 = [v29 pairedHearingAids];
    if (((v30 != 0) & v41) != 1)
    {
      goto LABEL_33;
    }

    v31 = +[HUHearingAidSettings sharedInstance];
    v32 = [v31 shouldStreamToLeftAid];
    if ((v32 & 1) != 0 || (+[HUHearingAidSettings sharedInstance](HUHearingAidSettings, "sharedInstance"), v16 = objc_claimAutoreleasedReturnValue(), [v16 shouldStreamToRightAid]))
    {
      v33 = +[HUHearingAidSettings sharedInstance];
      if ([v33 isPairedWithFakeHearingAids])
      {

        if (v32)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v34 = +[HUHearingAidSettings sharedInstance];
        [v34 isiCloudPaired];

        if (v32)
        {
LABEL_32:

LABEL_33:
          goto LABEL_34;
        }
      }
    }

    goto LABEL_32;
  }

LABEL_34:
  (*(*(v1 + 40) + 16))();

  v35 = *MEMORY[0x1E69E9840];
}

- (void)requestConnectionForMedia
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __57__HUNearbyHearingAidController_requestConnectionForMedia__block_invoke(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = +[HUUtilities sharedUtilities];
  [v4 clearAudioRoutes];

  if (a2)
  {
    v5 = hearingAidStreamAvailable();
    if ((v5 & 1) != 0 || *(a1 + 40) == 1)
    {
      v6 = HCLogHearingHandoff();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        *buf = 134218240;
        v14 = v5;
        v15 = 2048;
        v16 = v7;
        _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "Skipping handoff, streamAvailable - %ld, holdingMedia - %ld", buf, 0x16u);
      }
    }

    else
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __57__HUNearbyHearingAidController_requestConnectionForMedia__block_invoke_28;
      aBlock[3] = &unk_1E85CA050;
      aBlock[4] = *(a1 + 32);
      v6 = _Block_copy(aBlock);
      if ([MEMORY[0x1E69A4560] deviceIsWatch])
      {
        (*(v6 + 16))(v6, 0);
      }

      else
      {
        v9 = +[HUUtilities sharedUtilities];
        v10 = [*(a1 + 32) mediaQueue];
        [v9 pauseNowPlaying:1 withQueue:v10 andCompletion:v6];
      }
    }
  }

  else
  {
    v8 = HCLogHearingHandoff();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "sendConnectionToCompanionIfPossible", buf, 2u);
    }

    [*(a1 + 32) sendConnectionToCompanionIfPossible];
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __57__HUNearbyHearingAidController_requestConnectionForMedia__block_invoke_28(uint64_t a1)
{
  v2 = HCLogHearingHandoff();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "Requesting connection for media", v4, 2u);
  }

  [*(a1 + 32) setHoldingMediaForConnection:1];
  return [*(a1 + 32) requestConnectionForReason:1];
}

- (void)requestConnectionForReason:(int64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = HCLogHearingHandoff();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(HUNearbyHearingAidController *)self descriptionForHandoffReason:a3];
    *buf = 138412290;
    v10 = v6;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Request connection reason %@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__HUNearbyHearingAidController_requestConnectionForReason___block_invoke;
  v8[3] = &unk_1E85CA358;
  v8[4] = self;
  v8[5] = a3;
  [(HUNearbyHearingAidController *)self connectedPeerWithCompletion:v8];
  v7 = *MEMORY[0x1E69E9840];
}

void __59__HUNearbyHearingAidController_requestConnectionForReason___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) sendConnectionToCompanionTimer];
  [v4 cancel];

  if ([*(a1 + 32) requestHandoff:1 reason:*(a1 + 40)])
  {
    v5 = HCLogHearingHandoff();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) descriptionForHandoffReason:*(a1 + 40)];
      v7 = [v3 name];
      v8 = [*(a1 + 32) timeStamp];
      *buf = 138412802;
      v24 = v6;
      v25 = 2112;
      v26 = v7;
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "HandoffState: Connecting, Sending ControllerConnectWithReason %@ to %@, time: %@", buf, 0x20u);
    }

    v21 = &unk_1F5623968;
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
    v22 = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];

    if (v3)
    {
      if ([v3 isSCIDSService])
      {
        v11 = HCLogHearingHandoff();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v3 name];
          *buf = 138412290;
          v24 = v12;
          _os_log_impl(&dword_1DA5E2000, v11, OS_LOG_TYPE_DEFAULT, "Request connection from SC IDS Service Device %@", buf, 0xCu);
        }

        v13 = +[HUNearbyController sharedInstance];
        v19 = @"HCMessageIdentifierRemoteControllerConnectWithReason";
        v14 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
        v20 = v14;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        [v13 sendSCIDSMessage:v15 toDevice:v3];
      }

      else
      {
        v16 = *(a1 + 32);
        v18 = v3;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
        [v16 sendMessage:v10 toDevices:v13 messagePriority:1];
      }
    }

    else
    {
      [*(a1 + 32) sendMessageToAllDevices:v10 messagePriority:1];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)requestConnection
{
  v3 = HCLogHearingHandoff();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "Request connection", buf, 2u);
  }

  v4 = +[AXHAController sharedController];
  [v4 setListenForAvailableDeviceUpdates:0];

  v5 = [(HUDeviceController *)self deviceUpdatesQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__HUNearbyHearingAidController_requestConnection__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(v5, block);

  v6 = +[AXHAController sharedController];
  [v6 setListenForAvailableDeviceUpdates:1];
}

void __49__HUNearbyHearingAidController_requestConnection__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) requestHandoff:1 reason:1];
  v2 = HCLogHearingHandoff();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v1)
  {
    if (v3)
    {
      v7 = 0;
      v4 = "Started processing connection";
      v5 = &v7;
LABEL_6:
      _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
    }
  }

  else if (v3)
  {
    v6 = 0;
    v4 = "Couldn't request connection";
    v5 = &v6;
    goto LABEL_6;
  }
}

- (void)checkConnectionRequestedForMediaAfterTimeout
{
  v3 = [(HUNearbyHearingAidController *)self mediaQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__HUNearbyHearingAidController_checkConnectionRequestedForMediaAfterTimeout__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(v3, block);
}

void __76__HUNearbyHearingAidController_checkConnectionRequestedForMediaAfterTimeout__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) holdingMediaForConnection] && (objc_msgSend(MEMORY[0x1E69A4560], "deviceIsWatch") & 1) == 0)
  {
    v2 = HCLogHearingHandoff();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "checkConnectionRequestedForMediaAfterTimeout, Resuming Media", buf, 2u);
    }

    v3 = +[HUUtilities sharedUtilities];
    v4 = [*(a1 + 32) mediaQueue];
    [v3 pauseNowPlaying:0 withQueue:v4 andCompletion:0];
  }

  if ((hearingAidStreamAvailable() & 1) == 0)
  {
    v5 = HCLogHearingHandoff();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "After timeout gave up on Media handoff, transition connection to peer", buf, 2u);
    }

    [*(a1 + 32) relinquishConnection];
  }

  v6 = dispatch_time(0, 2000000000);
  v7 = [*(a1 + 32) mediaQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__HUNearbyHearingAidController_checkConnectionRequestedForMediaAfterTimeout__block_invoke_38;
  block[3] = &unk_1E85C9F60;
  block[4] = *(a1 + 32);
  dispatch_after(v6, v7, block);
}

uint64_t __76__HUNearbyHearingAidController_checkConnectionRequestedForMediaAfterTimeout__block_invoke_38(uint64_t a1)
{
  v2 = HCLogHearingHandoff();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "checkConnectionRequestedForMediaAfterTimeout setHoldingMediaForConnection: NO", v4, 2u);
  }

  return [*(a1 + 32) setHoldingMediaForConnection:0];
}

- (BOOL)shouldRelinquishConnectionForReason:(int64_t)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __68__HUNearbyHearingAidController_shouldRelinquishConnectionForReason___block_invoke;
  v16[3] = &unk_1E85CA2B8;
  v16[4] = &v29;
  v16[5] = &v25;
  v16[6] = &v21;
  v16[7] = &v17;
  getCallStatus(v16);
  v5 = *(v30 + 24);
  if (v5 == 1)
  {
    if (v26[3] & 1) != 0 || (v22[3])
    {
      v6 = 1;
    }

    else
    {
      v6 = *(v18 + 24);
    }
  }

  else
  {
    v6 = 0;
  }

  if ((a3 - 1) < 2)
  {
    if (!*(v30 + 24))
    {
      goto LABEL_16;
    }

    if (v26[3] & 1) != 0 || (v22[3])
    {
      v7 = 0;
      goto LABEL_20;
    }

    LOBYTE(v5) = *(v18 + 24);
  }

  else
  {
    if (a3 != 3)
    {
      if (a3 == 4)
      {
        v7 = v6 ^ 1;
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if ((v26[3] & 1) == 0 && *(v22 + 24) != 1)
    {
LABEL_16:
      v7 = 1;
      goto LABEL_20;
    }
  }

  v7 = v5 ^ 1;
LABEL_20:
  v8 = HCLogHearingHandoff();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(HUNearbyHearingAidController *)self descriptionForHandoffReason:a3];
    v10 = *(v18 + 24);
    v11 = *(v26 + 24);
    v12 = *(v22 + 24);
    v13 = *(v30 + 24);
    *buf = 67110658;
    v34 = v7 & 1;
    v35 = 2112;
    v36 = v9;
    v37 = 1024;
    v38 = v10;
    v39 = 1024;
    v40 = v11;
    v41 = 1024;
    v42 = v12;
    v43 = 1024;
    v44 = v13;
    v45 = 1024;
    v46 = v6 & 1;
    _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "Should relinquish: %d Reason: %@, Call: [pending: %d, active: %d, avc: %d, endpoint: %d], inCall: %d", buf, 0x30u);
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  v14 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

void *__68__HUNearbyHearingAidController_shouldRelinquishConnectionForReason___block_invoke(void *result, char a2, char a3, char a4, char a5)
{
  *(*(result[4] + 8) + 24) = a2;
  *(*(result[5] + 8) + 24) = a3;
  *(*(result[6] + 8) + 24) = a4;
  *(*(result[7] + 8) + 24) = a5;
  return result;
}

- (BOOL)relinquishConnectionForReason:(int64_t)a3 toDevice:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = HCLogHearingHandoff();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(HUNearbyHearingAidController *)self descriptionForHandoffReason:a3];
    v9 = [v6 name];
    *buf = 138412546;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "relinquishConnectionForReason: %@ to peer: %@", buf, 0x16u);
  }

  if ([(HUNearbyHearingAidController *)self shouldRelinquishConnectionForReason:a3]&& [(HUNearbyHearingAidController *)self requestHandoff:2 reason:a3])
  {
    [(HUNearbyHearingAidController *)self setConnectionState:3 forDevice:v6];
    if (!a3)
    {
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x8000];
      v18 = v10;
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:0];
      v19 = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];

      if (v6)
      {
        v17 = v6;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
        [(HUNearbyHearingAidController *)self sendMessage:v12 toDevices:v13 messagePriority:1];
      }

      else
      {
        [(HUNearbyHearingAidController *)self sendMessageToAllDevices:v12 messagePriority:1];
      }
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)relinquishConnection
{
  v3 = HCLogHearingHandoff();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "Relinquish connection", buf, 2u);
  }

  v4 = [(HUDeviceController *)self deviceUpdatesQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__HUNearbyHearingAidController_relinquishConnection__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(v4, block);
}

void __52__HUNearbyHearingAidController_relinquishConnection__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) requestHandoff:2 reason:0];
  v2 = HCLogHearingHandoff();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v1)
  {
    if (v3)
    {
      v7 = 0;
      v4 = "Started relinquishing connection";
      v5 = &v7;
LABEL_6:
      _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
    }
  }

  else if (v3)
  {
    v6 = 0;
    v4 = "Couldn't relinquish connection";
    v5 = &v6;
    goto LABEL_6;
  }
}

- (void)relinquishConnectionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = HCLogHearingHandoff();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Relinquish connection with callback", buf, 2u);
  }

  v6 = [(HUDeviceController *)self deviceUpdatesQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__HUNearbyHearingAidController_relinquishConnectionWithCompletion___block_invoke;
  v8[3] = &unk_1E85CA380;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

uint64_t __67__HUNearbyHearingAidController_relinquishConnectionWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setRelinquishCompleted:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 relinquishConnection];
}

- (BOOL)shouldConnect
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(HUNearbyHearingAidController *)self state]!= 2 && [(HUNearbyHearingAidController *)self state]!= 4;
  v4 = HCLogHearingHandoff();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(HUNearbyHearingAidController *)self descriptionForCurrentState];
    v8[0] = 67109378;
    v8[1] = v3;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "NearbyHearingAidController shouldConnect: %d, state: %@", v8, 0x12u);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)shouldDisconnect
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(HUNearbyHearingAidController *)self state];
  v4 = HCLogHearingHandoff();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(HUNearbyHearingAidController *)self descriptionForCurrentState];
    v8[0] = 67109378;
    v8[1] = v3 != 3;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "NearbyHearingAidController shouldDisconnect: %d, state: %@", v8, 0x12u);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3 != 3;
}

- (id)timeStamp
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v2 setDateFormat:@"HH:mm:ss:SS"];
  v3 = [MEMORY[0x1E695DF00] now];
  v4 = [v2 stringFromDate:v3];

  return v4;
}

- (void)disconnectFromPairedDevice
{
  v2 = HCLogHearingHandoff();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "NearbyHearingAidController: Disconnect from paired hearing device", v7, 2u);
  }

  v3 = +[AXHearingAidDeviceController sharedController];
  v4 = +[AXHAController sharedController];
  v5 = [v4 pairedDeviceUUID];
  [v3 disconnectFromHearingAidWithDeviceUUID:v5];

  v6 = +[AXHearingAidDeviceController sharedController];
  [v6 cancelPendingConnections];
}

- (id)descriptionForHandoffState
{
  v2 = [(HUNearbyHearingAidController *)self processingHandoff];
  if (v2 > 2)
  {
    return @"N/A";
  }

  else
  {
    return off_1E85CA5F0[v2];
  }
}

- (id)descriptionForHandoffReason:(int64_t)a3
{
  if (a3 > 5)
  {
    return @"N/A";
  }

  else
  {
    return off_1E85CA608[a3];
  }
}

- (BOOL)requestHandoff:(int64_t)a3 reason:(int64_t)a4
{
  v23 = *MEMORY[0x1E69E9840];
  if ([(HUNearbyHearingAidController *)self processingHandoff]== a3 && [(HUNearbyHearingAidController *)self handoffReason]== a4)
  {
    v7 = HCLogHearingHandoff();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(HUNearbyHearingAidController *)self descriptionForHandoffState];
      v19 = 138412290;
      v20 = v8;
      _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "Already processing, skip requestHandoff: %@", &v19, 0xCu);
    }

LABEL_16:
    result = 0;
    goto LABEL_17;
  }

  [(HUNearbyHearingAidController *)self setProcessingHandoff:a3];
  [(HUNearbyHearingAidController *)self setHandoffReason:a4];
  v9 = HCLogHearingHandoff();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(HUNearbyHearingAidController *)self descriptionForHandoffState];
    v11 = [(HUNearbyHearingAidController *)self descriptionForHandoffReason:a4];
    v19 = 138412546;
    v20 = v10;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_1DA5E2000, v9, OS_LOG_TYPE_DEFAULT, "Start requestHandoff: %@, reason: %@", &v19, 0x16u);
  }

  [(HUNearbyHearingAidController *)self updateStateOnDeviceQueue];
  if (![(HUNearbyHearingAidController *)self processingHandoff])
  {
    v13 = HCLogHearingHandoff();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(HUNearbyHearingAidController *)self descriptionForHandoffReason:a4];
      v19 = 138412290;
      v20 = v14;
      _os_log_impl(&dword_1DA5E2000, v13, OS_LOG_TYPE_DEFAULT, "Couldn't Start handoff for a reason: %@", &v19, 0xCu);
    }

    v15 = [(HUNearbyHearingAidController *)self relinquishCompleted];

    if (v15)
    {
      v16 = HCLogHearingHandoff();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_1DA5E2000, v16, OS_LOG_TYPE_DEFAULT, "Invoking relinquishCompleted callback", &v19, 2u);
      }

      v17 = [(HUNearbyHearingAidController *)self relinquishCompleted];
      v17[2]();

      [(HUNearbyHearingAidController *)self setRelinquishCompleted:0];
    }

    goto LABEL_16;
  }

  [(HUNearbyHearingAidController *)self checkHandoffAfterTimeout];
  result = 1;
LABEL_17:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)checkHandoffAfterTimeout
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(HUNearbyHearingAidController *)self processingHandoff];
  v4 = HCLogHearingHandoff();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(HUNearbyHearingAidController *)self descriptionForHandoffState];
    v6 = [(HUNearbyHearingAidController *)self descriptionForHandoffReason:[(HUNearbyHearingAidController *)self handoffReason]];
    *buf = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "Starting check timer for handoff %@, reason: %@", buf, 0x16u);
  }

  if (v3 == 1)
  {
    v7 = 7.5;
  }

  else
  {
    v7 = 15.0;
  }

  v8 = [(HUNearbyHearingAidController *)self handoffTimer];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__HUNearbyHearingAidController_checkHandoffAfterTimeout__block_invoke;
  v10[3] = &unk_1E85C9F60;
  v10[4] = self;
  [v8 afterDelay:v10 processBlock:v7];

  v9 = *MEMORY[0x1E69E9840];
}

void __56__HUNearbyHearingAidController_checkHandoffAfterTimeout__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = HCLogHearingHandoff();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) descriptionForHandoffState];
    v4 = [*(a1 + 32) descriptionForHandoffReason:{objc_msgSend(*(a1 + 32), "handoffReason")}];
    v5 = [*(a1 + 32) connectedPeer];
    v6 = [v5 name];
    *buf = 138412802;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "Check timer fired for handoff %@, reason: %@, connectedPeer: %@", buf, 0x20u);
  }

  if ([*(a1 + 32) processingHandoff])
  {
    v7 = [*(a1 + 32) processingHandoff];
    v8 = *(a1 + 32);
    if (v7 == 1)
    {
      if ([v8 handoffReason] == 1)
      {
        [*(a1 + 32) checkConnectionRequestedForMediaAfterTimeout];
      }
    }

    else
    {
      v10 = [v8 mediaQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __56__HUNearbyHearingAidController_checkHandoffAfterTimeout__block_invoke_74;
      block[3] = &unk_1E85C9F60;
      block[4] = *(a1 + 32);
      dispatch_async(v10, block);
    }

    [*(a1 + 32) resetHandoffOnDeviceQueue];
  }

  else
  {
    v9 = HCLogHearingHandoff();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v9, OS_LOG_TYPE_DEFAULT, "Handoff is completed", buf, 2u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __56__HUNearbyHearingAidController_checkHandoffAfterTimeout__block_invoke_74(uint64_t a1)
{
  v2 = HCLogHearingHandoff();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "Relinquishing connection, holdingMediaForConnection: NO", v4, 2u);
  }

  return [*(a1 + 32) setHoldingMediaForConnection:0];
}

- (void)finishHandoff
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = HCLogHearingHandoff();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(HUNearbyHearingAidController *)self descriptionForHandoffState];
    v5 = [(HUNearbyHearingAidController *)self descriptionForHandoffReason:[(HUNearbyHearingAidController *)self handoffReason]];
    v6 = [(HUNearbyHearingAidController *)self connectedPeer];
    v7 = [v6 name];
    v15 = 138413058;
    v16 = v4;
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v7;
    v21 = 1024;
    v22 = [(HUNearbyHearingAidController *)self holdingMediaForConnection];
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "Finish handoff %@, reason: %@, connectedPeer: %@, holding media %d", &v15, 0x26u);
  }

  v8 = [(HUNearbyHearingAidController *)self handoffTimer];
  [v8 cancel];

  v9 = [(HUNearbyHearingAidController *)self relinquishCompleted];
  if (v9)
  {
    v10 = v9;
    v11 = [(HUNearbyHearingAidController *)self processingHandoff];

    if (v11 == 2)
    {
      v12 = HCLogHearingHandoff();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_1DA5E2000, v12, OS_LOG_TYPE_DEFAULT, "Invoking relinquishCompleted callback", &v15, 2u);
      }

      v13 = [(HUNearbyHearingAidController *)self relinquishCompleted];
      v13[2]();

      [(HUNearbyHearingAidController *)self setRelinquishCompleted:0];
    }
  }

  if ([(HUNearbyHearingAidController *)self processingHandoff])
  {
    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_76);
  }

  [(HUNearbyHearingAidController *)self setProcessingHandoff:0];
  [(HUNearbyHearingAidController *)self setHandoffReason:0];
  v14 = *MEMORY[0x1E69E9840];
}

void __45__HUNearbyHearingAidController_finishHandoff__block_invoke()
{
  v0 = HCLogHearingHandoff();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1DA5E2000, v0, OS_LOG_TYPE_DEFAULT, "Posting connecting/transitioning handoff finished notification", v2, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.accessibility.hearing.audio.transfer.complete", 0, 0, 1u);
}

- (void)resetHandoffOnDeviceQueue
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = HCLogHearingHandoff();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(HUNearbyHearingAidController *)self descriptionForHandoffState];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "Reset handoff from: %@", &v6, 0xCu);
  }

  if ([(HUNearbyHearingAidController *)self processingHandoff])
  {
    [(HUNearbyHearingAidController *)self finishHandoff];
    [(HUNearbyHearingAidController *)self updateStateOnDeviceQueue];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)resetHandoff
{
  v3 = [(HUDeviceController *)self deviceUpdatesQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__HUNearbyHearingAidController_resetHandoff__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __44__HUNearbyHearingAidController_resetHandoff__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) processingHandoff])
  {
    v2 = *(a1 + 32);

    return [v2 resetHandoffOnDeviceQueue];
  }

  else
  {
    v4 = HCLogHearingHandoff();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "No handoff, just update state", v5, 2u);
    }

    return [*(a1 + 32) updateStateOnDeviceQueue];
  }
}

- (void)start
{
  if (![(HUNearbyHearingAidController *)self hasStarted])
  {
    [(HUNearbyHearingAidController *)self setHasStarted:1];
    v3 = HCLogHearingHandoff();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "Nearby start", buf, 2u);
    }

    [(HUNearbyHearingAidController *)self registerMediaNotifications];
    objc_initWeak(buf, self);
    v4 = +[HUNearbyController sharedInstance];
    v5 = [(HUDeviceController *)self deviceUpdatesQueue];
    [v4 registerQueue:v5 forDomain:@"com.apple.hearing.hearingaids"];

    v6 = +[HUNearbyController sharedInstance];
    [v6 registerLoggingBlock:&__block_literal_global_82 forDomain:@"com.apple.hearing.hearingaids" withListener:self];

    v7 = +[HUNearbyController sharedInstance];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __37__HUNearbyHearingAidController_start__block_invoke_83;
    v20[3] = &unk_1E85CA3F0;
    objc_copyWeak(&v21, buf);
    v20[4] = self;
    [v7 registerDiscoveryBlock:v20 forDomain:@"com.apple.hearing.hearingaids" withListener:self];

    v8 = +[HUNearbyController sharedInstance];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __37__HUNearbyHearingAidController_start__block_invoke_95;
    v18[3] = &unk_1E85CA418;
    objc_copyWeak(&v19, buf);
    [v8 registerMessageBlock:v18 forDomain:@"com.apple.hearing.hearingaids" withListener:self];

    v9 = +[HUNearbyController sharedInstance];
    [v9 discoverNearbyDevicesWithDomain:@"com.apple.hearing.hearingaids"];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __37__HUNearbyHearingAidController_start__block_invoke_3;
    v17[3] = &unk_1E85CA440;
    v17[4] = self;
    v10 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:1 repeats:v17 block:60.0];
    [(HUNearbyHearingAidController *)self setIdsMessagesTimer:v10];

    v11 = +[HUNearbyController sharedInstance];
    v15[4] = self;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __37__HUNearbyHearingAidController_start__block_invoke_100;
    v16[3] = &unk_1E85CA490;
    v16[4] = self;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __37__HUNearbyHearingAidController_start__block_invoke_3_103;
    v15[3] = &unk_1E85CA4B8;
    [v11 discoverSCIDSServiceWithDevicesUpdates:v16 messageBlock:v15];

    v12 = [(HUDeviceController *)self deviceUpdatesQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__HUNearbyHearingAidController_start__block_invoke_5;
    block[3] = &unk_1E85C9F10;
    objc_copyWeak(&v14, buf);
    dispatch_async(v12, block);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }
}

void __37__HUNearbyHearingAidController_start__block_invoke(uint64_t a1, void *a2)
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

void __37__HUNearbyHearingAidController_start__block_invoke_83(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained deviceUpdatesQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__HUNearbyHearingAidController_start__block_invoke_2;
  block[3] = &unk_1E85CA3C8;
  objc_copyWeak(&v11, (a1 + 40));
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_async(v5, block);

  objc_destroyWeak(&v11);
}

void __37__HUNearbyHearingAidController_start__block_invoke_2(id *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [WeakRetained updateStateOnDeviceQueue];

  v3 = +[HUNearbyController sharedInstance];
  v4 = [v3 nearbyDevices];

  v5 = HCLogHearingHandoff();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
    *buf = 138412290;
    v30 = v6;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Devices updated, available devices count: %@", buf, 0xCu);
  }

  v7 = objc_loadWeakRetained(a1 + 6);
  v8 = [v7 delegate];
  [v8 availableRemoteControllersDidChange];

  v9 = HCLogHearingAids();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA5E2000, v9, OS_LOG_TYPE_DEFAULT, "Nearby devices changed. Updated available controllers", buf, 2u);
  }

  if ([a1[4] count])
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = [a1[5] descriptionForCurrentState];
    v12 = [a1[5] descriptionForCurrentMessagePriority];
    v13 = [v10 stringWithFormat:@"Peers discovered, sending CheckIn, ControllerConnected: %@ MessagesPriority: %@ to", v11, v12];

    v14 = objc_loadWeakRetained(a1 + 6);
    [v14 logDevices:a1[4] withTitle:v13 fullInfo:0];

    v27[0] = &unk_1F5623980;
    v15 = MEMORY[0x1E696AD98];
    v16 = objc_loadWeakRetained(a1 + 6);
    v17 = [v15 numberWithInteger:{objc_msgSend(v16, "state")}];
    v28[0] = v17;
    v27[1] = &unk_1F5623998;
    v18 = MEMORY[0x1E696AD98];
    v19 = objc_loadWeakRetained(a1 + 6);
    v20 = [v18 numberWithInteger:{objc_msgSend(v19, "state")}];
    v28[1] = v20;
    v27[2] = &unk_1F56239B0;
    v21 = MEMORY[0x1E696AD98];
    v22 = objc_loadWeakRetained(a1 + 6);
    v23 = [v21 numberWithUnsignedInteger:{objc_msgSend(v22, "deviceMessagePriority")}];
    v28[2] = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3];

    v25 = objc_loadWeakRetained(a1 + 6);
    [v25 sendStateMessage:v24 toDevices:a1[4] isUrgent:1];
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __37__HUNearbyHearingAidController_start__block_invoke_95(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained deviceUpdatesQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__HUNearbyHearingAidController_start__block_invoke_2_96;
  block[3] = &unk_1E85CA3C8;
  objc_copyWeak(&v14, (a1 + 32));
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, block);

  objc_destroyWeak(&v14);
}

void __37__HUNearbyHearingAidController_start__block_invoke_2_96(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained device:*(a1 + 32) didReceiveMessage:*(a1 + 40)];

  if ([v3 count] && *(a1 + 32))
  {
    v4 = objc_loadWeakRetained((a1 + 48));
    v7[0] = *(a1 + 32);
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [v4 sendMessage:v3 toDevices:v5];
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __37__HUNearbyHearingAidController_start__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceUpdatesQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__HUNearbyHearingAidController_start__block_invoke_4;
  block[3] = &unk_1E85C9F60;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

uint64_t __37__HUNearbyHearingAidController_start__block_invoke_4(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) idsMessagesCount];
  if (result)
  {
    v3 = HCLogHearingHandoff();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "idsMessagesCount")}];
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "IDS messages count: %@", &v6, 0xCu);
    }

    result = [*(a1 + 32) setIdsMessagesCount:0];
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __37__HUNearbyHearingAidController_start__block_invoke_100(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) deviceUpdatesQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__HUNearbyHearingAidController_start__block_invoke_2_101;
  block[3] = &unk_1E85CA468;
  block[4] = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

uint64_t __37__HUNearbyHearingAidController_start__block_invoke_2_101(uint64_t a1)
{
  [*(a1 + 32) scIDSServiceDidRemoveDevices:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 scIDSServiceDidAddDevices:v3];
}

void __37__HUNearbyHearingAidController_start__block_invoke_3_103(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) deviceUpdatesQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__HUNearbyHearingAidController_start__block_invoke_4_104;
  block[3] = &unk_1E85CA468;
  block[4] = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

void __37__HUNearbyHearingAidController_start__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateStateOnDeviceQueue];
}

- (void)stop
{
  v12 = *MEMORY[0x1E69E9840];
  [(HUNearbyHearingAidController *)self setHasStarted:0];
  v3 = HCLogHearingHandoff();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "Nearby stop", buf, 2u);
  }

  v4 = [(HUDeviceController *)self deviceUpdatesQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__HUNearbyHearingAidController_stop__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(v4, block);

  [(HUNearbyHearingAidController *)self unregisterMediaNotifications];
  v5 = HCLogHearingHandoff();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HUNearbyHearingAidController idsMessagesCount](self, "idsMessagesCount")}];
    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "IDS messages count: %@", buf, 0xCu);
  }

  v7 = [(HUNearbyHearingAidController *)self idsMessagesTimer];
  [v7 invalidate];

  [(HUNearbyHearingAidController *)self setIdsMessagesTimer:0];
  v8 = *MEMORY[0x1E69E9840];
}

void __36__HUNearbyHearingAidController_stop__block_invoke(uint64_t a1)
{
  [*(a1 + 32) sendConnectionToCompanionIfPossible];
  [*(a1 + 32) relinquishConnectionForReason:0 toDevice:0];
  v2 = dispatch_time(0, 12000000000);
  v3 = [*(a1 + 32) deviceUpdatesQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__HUNearbyHearingAidController_stop__block_invoke_2;
  block[3] = &unk_1E85C9F60;
  block[4] = *(a1 + 32);
  dispatch_after(v2, v3, block);
}

void __36__HUNearbyHearingAidController_stop__block_invoke_2(uint64_t a1)
{
  if (([*(a1 + 32) hasStarted] & 1) == 0)
  {
    v1 = +[HUNearbyController sharedInstance];
    [v1 stopDiscoveringDevicesWithDomain:@"com.apple.hearing.hearingaids"];

    v2 = +[HUNearbyController sharedInstance];
    [v2 stopDiscoveringSCIDSService];
  }
}

- (BOOL)updateStateOnDeviceQueue
{
  v90 = *MEMORY[0x1E69E9840];
  v3 = +[HUHearingAidSettings sharedInstance];
  v4 = [v3 isiCloudPaired];

  v5 = +[HUHearingAidSettings sharedInstance];
  v6 = [v5 pairedHearingAids];
  v7 = (v6 != 0) & (v4 ^ 1);

  v8 = +[AXHearingAidDeviceController sharedController];
  v81 = [v8 isConnected];

  v9 = +[AXHearingAidDeviceController sharedController];
  v10 = [v9 isConnecting];

  v11 = [(HUNearbyHearingAidController *)self availableDevices];
  v12 = [v11 count];

  v13 = +[AXHearingAidDeviceController sharedController];
  v14 = [v13 isBluetoothAvailable];

  v15 = [(HUNearbyHearingAidController *)self connectedPeer];
  v16 = [(HUNearbyHearingAidController *)self connectingPeer];
  v17 = HCLogHearingHandoff();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110144;
    *v87 = v14;
    *&v87[4] = 1024;
    *&v87[6] = v7;
    LOWORD(v88) = 1024;
    *(&v88 + 2) = v4 & 1;
    HIWORD(v88) = 1024;
    v89[0] = v81;
    LOWORD(v89[1]) = 1024;
    *(&v89[1] + 2) = v10;
    _os_log_impl(&dword_1DA5E2000, v17, OS_LOG_TYPE_DEFAULT, "UpdateState BT: %d, Paired: %d iCloudPaired %d, Connected: %d, Connecting: %d", buf, 0x20u);
  }

  v18 = HCLogHearingHandoff();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v15 name];
    [v16 name];
    v20 = v14;
    v21 = v15;
    v23 = v22 = v16;
    *buf = 138412546;
    *v87 = v19;
    *&v87[8] = 2112;
    v88 = v23;
    _os_log_impl(&dword_1DA5E2000, v18, OS_LOG_TYPE_DEFAULT, "connectedPeer: %@, connectingPeer: %@", buf, 0x16u);

    v16 = v22;
    v15 = v21;
    v14 = v20;
  }

  v24 = HCLogHearingHandoff();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [(HUNearbyHearingAidController *)self descriptionForCurrentState];
    [(HUNearbyHearingAidController *)self descriptionForHandoffState];
    v26 = v14;
    v27 = v15;
    v29 = v28 = v16;
    *buf = 138412546;
    *v87 = v25;
    *&v87[8] = 2112;
    v88 = v29;
    _os_log_impl(&dword_1DA5E2000, v24, OS_LOG_TYPE_DEFAULT, "Processing state: %@, handoff: %@", buf, 0x16u);

    v16 = v28;
    v15 = v27;
    v14 = v26;
  }

  v30 = [(HUNearbyHearingAidController *)self hasStarted]& v14;
  if (v12)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  if ((v7 & v31 & 1) == 0)
  {
    if ([(HUNearbyHearingAidController *)self processingHandoff]== 1 && ((v4 & 1) == 0 || (([(HUNearbyHearingAidController *)self handoffReason]== 4) & v31) == 0))
    {
      v32 = HCLogHearingHandoff();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [(HUNearbyHearingAidController *)self hasStarted];
        *buf = 67109888;
        *v87 = v33;
        *&v87[4] = 1024;
        *&v87[6] = v7;
        LOWORD(v88) = 1024;
        *(&v88 + 2) = v14;
        HIWORD(v88) = 1024;
        v89[0] = v12 != 0;
        _os_log_impl(&dword_1DA5E2000, v32, OS_LOG_TYPE_DEFAULT, "Connection request interrupted, Nearby started: %d, isPaired: %d, BT available: %d, hasPeers: %d", buf, 0x1Au);
      }

      [(HUNearbyHearingAidController *)self finishHandoff];
    }

    if ([(HUNearbyHearingAidController *)self processingHandoff]== 2)
    {
      v34 = HCLogHearingHandoff();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [(HUNearbyHearingAidController *)self hasStarted];
        *buf = 67109888;
        *v87 = v35;
        *&v87[4] = 1024;
        *&v87[6] = v7;
        LOWORD(v88) = 1024;
        *(&v88 + 2) = v14;
        HIWORD(v88) = 1024;
        v89[0] = v12 != 0;
        _os_log_impl(&dword_1DA5E2000, v34, OS_LOG_TYPE_DEFAULT, "Transition request interrupted, Nearby started: %d, isPaired: %d, BT available: %d, hasPeers: %d", buf, 0x1Au);
      }

      [(HUNearbyHearingAidController *)self finishHandoff];
    }
  }

  v36 = [(HUNearbyHearingAidController *)self hasStarted];
  v37 = v36;
  if (v36 && v12)
  {
    if (v81)
    {
      if ([(HUNearbyHearingAidController *)self processingHandoff]== 2)
      {
LABEL_25:
        v37 = 4;
        goto LABEL_62;
      }

      v38 = [(HUNearbyHearingAidController *)self processingHandoff];
      if (!v15)
      {
        if (v38 == 1)
        {
          v41 = HCLogHearingHandoff();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1DA5E2000, v41, OS_LOG_TYPE_DEFAULT, "Connection request has been finished", buf, 2u);
          }

          [(HUNearbyHearingAidController *)self finishHandoff];
        }

        goto LABEL_54;
      }

      if (v38 == 1)
      {
        [(HUNearbyHearingAidController *)self processingHandoff];
LABEL_54:
        v37 = 5;
        goto LABEL_62;
      }

LABEL_39:
      v37 = 2;
      goto LABEL_62;
    }

    if (v15)
    {
      if ([(HUNearbyHearingAidController *)self processingHandoff]!= 1)
      {
        if ([(HUNearbyHearingAidController *)self processingHandoff]== 2)
        {
          v40 = HCLogHearingHandoff();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1DA5E2000, v40, OS_LOG_TYPE_DEFAULT, "Connection transition has been finished", buf, 2u);
          }

          [(HUNearbyHearingAidController *)self finishHandoff];
        }

        goto LABEL_39;
      }

LABEL_28:
      v37 = 3;
      goto LABEL_62;
    }

    v39 = (v4 & 1) != 0 && [(HUNearbyHearingAidController *)self processingHandoff]== 1 && [(HUNearbyHearingAidController *)self handoffReason]== 4;
    if (((v7 | v39) & 1) == 0)
    {
      goto LABEL_61;
    }

    if ((v14 & 1) == 0)
    {
      v42 = HCLogHearingHandoff();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DA5E2000, v42, OS_LOG_TYPE_DEFAULT, "Update state to Transitioning, BT is Off", buf, 2u);
      }

      goto LABEL_25;
    }

    if ([(HUNearbyHearingAidController *)self processingHandoff]== 1)
    {
      goto LABEL_28;
    }

    if ([(HUNearbyHearingAidController *)self processingHandoff]== 2)
    {
      goto LABEL_25;
    }

    if ([(HUNearbyHearingAidController *)self state]== 5 || [(HUNearbyHearingAidController *)self state]== 3)
    {
      goto LABEL_28;
    }

    if (!v16 || [(HUNearbyHearingAidController *)self state]== 4)
    {
LABEL_49:
      v37 = 1;
      goto LABEL_62;
    }

    if ([(HUNearbyHearingAidController *)self state]!= 2)
    {
      goto LABEL_61;
    }

    v37 = [(HUNearbyHearingAidController *)self peerTimer];

    if (v37)
    {
      v43 = [(HUNearbyHearingAidController *)self peerTimer];
      v44 = [v43 isPending];

      if ((v44 & 1) == 0)
      {
        [(HUNearbyHearingAidController *)self setPeerTimer:0];
        v80 = HCLogHearingHandoff();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1DA5E2000, v80, OS_LOG_TYPE_DEFAULT, "Update state to Searching, peerTimer fired", buf, 2u);
        }

        goto LABEL_49;
      }

LABEL_61:
      v37 = 0;
      goto LABEL_62;
    }

    [(HUNearbyHearingAidController *)self checkPeerStateAfterTimout];
  }

LABEL_62:
  if (v37 == [(HUNearbyHearingAidController *)self state])
  {
LABEL_63:
    v45 = 0;
    goto LABEL_64;
  }

  if (((v37 == 0) & v7) == 1)
  {
    if ([(HUNearbyHearingAidController *)self hasStarted])
    {
      goto LABEL_63;
    }

    [(HUNearbyHearingAidController *)self logAvailableDevicesWithTitle:@"Available Devices"];
  }

  else
  {
    [(HUNearbyHearingAidController *)self logAvailableDevicesWithTitle:@"Available Devices"];
    if (v37 == 5)
    {
      v55 = 1;
      goto LABEL_79;
    }
  }

  v56 = [(HUNearbyHearingAidController *)self state];
  v55 = 1;
  if (v37 != 3 && v56 != 5)
  {
    v55 = [(HUNearbyHearingAidController *)self state]== 3;
  }

LABEL_79:
  v57 = HCLogHearingHandoff();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    v58 = [(HUNearbyHearingAidController *)self descriptionForState:v37];
    v59 = [(HUNearbyHearingAidController *)self descriptionForCurrentState];
    v60 = [(HUNearbyHearingAidController *)self descriptionForHandoffState];
    *buf = 138412802;
    *v87 = v58;
    *&v87[8] = 2112;
    v88 = v59;
    LOWORD(v89[0]) = 2112;
    *(v89 + 2) = v60;
    _os_log_impl(&dword_1DA5E2000, v57, OS_LOG_TYPE_DEFAULT, "Did update state new: %@, old: %@, handoff: %@", buf, 0x20u);
  }

  [(HUNearbyHearingAidController *)self setState:v37];
  v61 = HCLogHearingHandoff();
  v62 = os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT);
  if (!v55)
  {
    if (!v62)
    {
LABEL_91:

      goto LABEL_92;
    }

    v69 = [(HUNearbyHearingAidController *)self descriptionForCurrentState];
    *buf = 138412290;
    *v87 = v69;
    _os_log_impl(&dword_1DA5E2000, v61, OS_LOG_TYPE_DEFAULT, "Skipping sending ControllerConnected: %@", buf, 0xCu);
LABEL_90:

    goto LABEL_91;
  }

  if (v62)
  {
    v63 = [(HUNearbyHearingAidController *)self descriptionForCurrentState];
    *buf = 138412290;
    *v87 = v63;
    _os_log_impl(&dword_1DA5E2000, v61, OS_LOG_TYPE_DEFAULT, "Sending ControllerConnected: %@, isUrgent: YES", buf, 0xCu);
  }

  v84 = &unk_1F5623998;
  v64 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HUNearbyHearingAidController state](self, "state")}];
  v85 = v64;
  v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
  [(HUNearbyHearingAidController *)self sendStateMessageToAllDevices:v65 isUrgent:1];

  v66 = +[HUNearbyController sharedInstance];
  LODWORD(v65) = [v66 scIDSHasPeers];

  if (v65)
  {
    v67 = HCLogHearingHandoff();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      v68 = [(HUNearbyHearingAidController *)self descriptionForState:[(HUNearbyHearingAidController *)self state]];
      *buf = 138412290;
      *v87 = v68;
      _os_log_impl(&dword_1DA5E2000, v67, OS_LOG_TYPE_DEFAULT, "Sending SC IDS device state %@", buf, 0xCu);
    }

    v61 = +[HUNearbyController sharedInstance];
    v82 = @"HCMessageIdentifierControllerConnected";
    v69 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HUNearbyHearingAidController state](self, "state")}];
    v83 = v69;
    v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
    [v61 sendSCIDSMessage:v70 toDevice:0];

    goto LABEL_90;
  }

LABEL_92:
  v45 = 1;
  if (v37 > 2)
  {
    if (v37 != 3)
    {
      if (v37 != 4)
      {
        goto LABEL_64;
      }

      goto LABEL_98;
    }
  }

  else
  {
    if (v37 != 1)
    {
      if (v37 != 2)
      {
        goto LABEL_64;
      }

LABEL_98:
      v71 = HCLogHearingHandoff();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        v72 = [v15 name];
        v73 = [v16 name];
        *buf = 138412546;
        *v87 = v72;
        *&v87[8] = 2112;
        v88 = v73;
        _os_log_impl(&dword_1DA5E2000, v71, OS_LOG_TYPE_DEFAULT, "NearbyHearingAidController: Disconnect, Connected peer: %@, Connecting Peer: %@", buf, 0x16u);
      }

      v45 = 1;
      [(HUNearbyHearingAidController *)self sendConnectionToCompanionIfPossible:1];
      [(HUNearbyHearingAidController *)self disconnectFromPairedDevice];
      goto LABEL_64;
    }

    if (!v14)
    {
      goto LABEL_64;
    }
  }

  v74 = +[AXHearingAidDeviceController sharedController];
  v75 = [v74 pairedHearingDevice];

  v76 = HCLogHearingHandoff();
  if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
  {
    v77 = [v75 name];
    v78 = [v15 name];
    v79 = [v16 name];
    *buf = 138412802;
    *v87 = v77;
    *&v87[8] = 2112;
    v88 = v78;
    LOWORD(v89[0]) = 2112;
    *(v89 + 2) = v79;
    _os_log_impl(&dword_1DA5E2000, v76, OS_LOG_TYPE_DEFAULT, "NearbyHearingAidController: Connect to %@, Connected peer: %@, Connecting Peer: %@", buf, 0x20u);
  }

  [v75 connect];
  v45 = 1;
LABEL_64:
  v46 = [(HUNearbyHearingAidController *)self peerTimer];
  if (v46)
  {
    v47 = v46;
    v48 = [(HUNearbyHearingAidController *)self state];

    if (v48 != 2 || v15)
    {
      v49 = HCLogHearingHandoff();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = [(HUNearbyHearingAidController *)self peerTimer];
        v51 = [v50 isPending];
        *buf = 67109120;
        *v87 = v51;
        _os_log_impl(&dword_1DA5E2000, v49, OS_LOG_TYPE_DEFAULT, "NearbyHearingAidController: Cancel and Destroy peerTimer, is pending %d", buf, 8u);
      }

      v52 = [(HUNearbyHearingAidController *)self peerTimer];
      [v52 cancel];

      [(HUNearbyHearingAidController *)self setPeerTimer:0];
    }
  }

  v53 = *MEMORY[0x1E69E9840];
  return v45;
}

- (void)updateState
{
  v3 = [(HUDeviceController *)self deviceUpdatesQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__HUNearbyHearingAidController_updateState__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(v3, block);
}

- (id)descriptionForState:(int64_t)a3
{
  if (a3 > 5)
  {
    return @"N/A";
  }

  else
  {
    return off_1E85CA638[a3];
  }
}

- (id)descriptionForCurrentState
{
  v3 = [(HUNearbyHearingAidController *)self state];

  return [(HUNearbyHearingAidController *)self descriptionForState:v3];
}

- (id)availableDevices
{
  v2 = +[HUNearbyController sharedInstance];
  v3 = [v2 nearbyDevices];

  return v3;
}

- (void)logAvailableDevicesWithTitle:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A4560] isInternalInstall];
  v6 = HCLogHearingAids();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 138412290;
      v21 = v4;
      _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [(HUNearbyHearingAidController *)self availableDevices];
    v8 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = HCLogHearingAids();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v21 = v12;
            _os_log_impl(&dword_1DA5E2000, v13, OS_LOG_TYPE_DEFAULT, "nearbyDevice: %@", buf, 0xCu);
          }
        }

        v9 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v9);
    }
  }

  else if (v7)
  {
    v14 = [(HUNearbyHearingAidController *)self availableDevices];
    *buf = 138412546;
    v21 = v4;
    v22 = 2112;
    v23 = v14;
    _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "%@ - %@", buf, 0x16u);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)logDevices:(id)a3 withTitle:(id)a4 fullInfo:(BOOL)a5
{
  v5 = a5;
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v5)
  {
    v9 = [v7 mutableCopy];
  }

  else
  {
    v9 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          v16 = [v15 name];
          if (v16)
          {
            [v15 name];
          }

          else
          {
            [v15 identifier];
          }
          v17 = ;

          if (v17)
          {
            [v9 addObject:v17];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v12);
    }
  }

  if ([v9 count])
  {
    v18 = HCLogHearingHandoff();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v25 = v8;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&dword_1DA5E2000, v18, OS_LOG_TYPE_DEFAULT, "%@ devices: %@", buf, 0x16u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (int64_t)connectionStateForDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 stateForDomain:@"com.apple.hearing.hearingaids.connection"];
  if (v4)
  {
    v5 = HCLogHearingAids();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(HUNearbyHearingAidController *)v4 connectionStateForDevice:v3];
    }
  }

  v6 = [v4 integerValue];

  return v6;
}

- (void)setConnectionState:(int64_t)a3 forDevice:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setState:v6 forDomain:@"com.apple.hearing.hearingaids.connection"];

  v7 = HCLogHearingAids();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [HUNearbyHearingAidController setConnectionState:v5 forDevice:?];
  }
}

- (unint64_t)messagePriorityForDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 stateForDomain:@"com.apple.hearing.hearingaids.priority"];
  if (v4)
  {
    v5 = HCLogHearingAids();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(HUNearbyHearingAidController *)v4 messagePriorityForDevice:v3];
    }
  }

  v6 = [v4 integerValue];

  return v6;
}

- (void)setMessagePriority:(unint64_t)a3 forDevice:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = HCLogHearingAids();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v8 = [v5 name];
    v12 = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "setMessagePriority: %@ for device: %@", &v12, 0x16u);
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v5 setState:v9 forDomain:@"com.apple.hearing.hearingaids.priority"];

  v10 = HCLogHearingAids();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [HUNearbyHearingAidController setMessagePriority:v5 forDevice:?];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)peerWithState:(int64_t)a3
{
  v5 = [(HUNearbyHearingAidController *)self availableDevices];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__HUNearbyHearingAidController_peerWithState___block_invoke;
  v9[3] = &unk_1E85CA4E0;
  v9[4] = self;
  v9[5] = a3;
  v6 = [v5 indexOfObjectPassingTest:v9];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 objectAtIndex:v6];
  }

  return v7;
}

BOOL __46__HUNearbyHearingAidController_peerWithState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connectionStateForDevice:v3];
  if (v4 == 3)
  {
    v5 = HCLogHearingHandoff();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __46__HUNearbyHearingAidController_peerWithState___block_invoke_cold_1(v3);
    }
  }

  v6 = v4 == *(a1 + 40);

  return v6;
}

- (BOOL)isPeerConnectedToHearingDevice
{
  v2 = self;
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(HUNearbyHearingAidController *)self connectedPeer];
  v5 = [v3 stringWithFormat:@"Checking connection %@", v4];
  [(HUNearbyHearingAidController *)v2 logAvailableDevicesWithTitle:v5];

  v6 = [(HUNearbyHearingAidController *)v2 connectedPeer];
  LOBYTE(v2) = v6 != 0;

  return v2;
}

- (void)checkPeerStateAfterTimout
{
  v3 = [(HUNearbyHearingAidController *)self peerTimer];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x1E6988780]);
    v5 = [(HUDeviceController *)self deviceUpdatesQueue];
    v6 = [v4 initWithTargetSerialQueue:v5];
    [(HUNearbyHearingAidController *)self setPeerTimer:v6];

    v7 = [(HUNearbyHearingAidController *)self peerTimer];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__HUNearbyHearingAidController_checkPeerStateAfterTimout__block_invoke;
    v10[3] = &unk_1E85C9F60;
    v10[4] = self;
    [v7 afterDelay:v10 processBlock:7.5];

    v8 = HCLogHearingHandoff();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "Starting peerTimer for Peer state", v9, 2u);
    }
  }
}

uint64_t __57__HUNearbyHearingAidController_checkPeerStateAfterTimout__block_invoke(uint64_t a1)
{
  v2 = HCLogHearingHandoff();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "peerTimer fired, We want to check the state", v4, 2u);
  }

  return [*(a1 + 32) updateStateOnDeviceQueue];
}

- (void)connectedPeerWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(HUDeviceController *)self deviceUpdatesQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__HUNearbyHearingAidController_connectedPeerWithCompletion___block_invoke;
    v6[3] = &unk_1E85CA508;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

void __60__HUNearbyHearingAidController_connectedPeerWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) connectedPeer];
  (*(v1 + 16))(v1, v2);
}

- (id)devicesFromDevices:(id)a3 withMessagePriority:(unint64_t)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__HUNearbyHearingAidController_devicesFromDevices_withMessagePriority___block_invoke;
  v6[3] = &unk_1E85CA4E0;
  v6[4] = self;
  v6[5] = a4;
  v4 = [a3 ax_filteredArrayUsingBlock:v6];

  return v4;
}

BOOL __71__HUNearbyHearingAidController_devicesFromDevices_withMessagePriority___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connectionStateForDevice:v3];
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4 == 5;
  }

  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = (v5 != 1 || v4 != 5) && [*(a1 + 32) messagePriorityForDevice:v3] == *(a1 + 40);
  }

  return v8;
}

- (id)hearingDevice
{
  v3 = [(HUNearbyHearingAidController *)self localDevice];
  if (!v3)
  {
    v4 = +[HUHearingAidSettings sharedInstance];
    v5 = [v4 pairedHearingAids];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [[AXRemoteHearingAidDevice alloc] initWithPersistentRepresentation:v5];
      [(AXRemoteHearingAidDevice *)v6 setUpdateDelegate:self];
      [(HUNearbyHearingAidController *)self setLocalDevice:v6];
    }
  }

  return v3;
}

- (void)sendMessagesPriorityHighForClient:(id)a3
{
  v4 = a3;
  v5 = [(HUDeviceController *)self deviceUpdatesQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__HUNearbyHearingAidController_sendMessagesPriorityHighForClient___block_invoke;
  v7[3] = &unk_1E85C9F38;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __66__HUNearbyHearingAidController_sendMessagesPriorityHighForClient___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v2 && [v2 pid] && objc_msgSend(*v3, "pid") != -1)
  {
    v4 = [*(a1 + 40) processesHighMessagePriority];
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*(a1 + 32), "pid")}];
    [v4 addObject:v5];

    v6 = HCLogHearingAids();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) pid];
      v8 = [*(a1 + 40) processesHighMessagePriority];
      v13[0] = 67109378;
      v13[1] = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "Added High priority client: %d, set: %@", v13, 0x12u);
    }
  }

  else
  {
    v6 = HCLogHearingAids();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __66__HUNearbyHearingAidController_sendMessagesPriorityHighForClient___block_invoke_cold_1(v3, v6);
    }
  }

  v9 = [*(a1 + 40) messagesPriorityTimer];
  [v9 cancel];

  result = [*(a1 + 40) deviceMessagePriority];
  if (result)
  {
    v11 = HCLogHearingAids();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(&dword_1DA5E2000, v11, OS_LOG_TYPE_DEFAULT, "XPC received MessagesPriority High", v13, 2u);
    }

    result = [*(a1 + 40) sendMessagesPriority:0];
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)sendMessagesPriorityDefaultForClient:(id)a3
{
  v4 = a3;
  v5 = [(HUDeviceController *)self deviceUpdatesQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__HUNearbyHearingAidController_sendMessagesPriorityDefaultForClient___block_invoke;
  v7[3] = &unk_1E85C9F38;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __69__HUNearbyHearingAidController_sendMessagesPriorityDefaultForClient___block_invoke(uint64_t a1)
{
  *&v18[5] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2 && [v2 pid] && objc_msgSend(*(a1 + 32), "pid") != -1)
  {
    v3 = [*(a1 + 40) processesHighMessagePriority];
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*(a1 + 32), "pid")}];
    [v3 removeObject:v4];

    v5 = HCLogHearingAids();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) pid];
      v7 = [*(a1 + 40) processesHighMessagePriority];
      *buf = 67109378;
      v18[0] = v6;
      LOWORD(v18[1]) = 2112;
      *(&v18[1] + 2) = v7;
      _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Removed High priority client: %d, clients: %@", buf, 0x12u);
    }
  }

  if ([*(a1 + 40) deviceMessagePriority] != 1)
  {
    v8 = HCLogHearingAids();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = MEMORY[0x1E696AD98];
      v10 = [*(a1 + 40) messagesPriorityTimer];
      v11 = [v9 numberWithBool:{objc_msgSend(v10, "isPending")}];
      *buf = 138412290;
      *v18 = v11;
      _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "XPC received MessagesPriority Default, push scheduled: %@", buf, 0xCu);
    }

    v12 = [*(a1 + 40) messagesPriorityTimer];
    v13 = [v12 isPending];

    if ((v13 & 1) == 0)
    {
      v14 = [*(a1 + 40) messagesPriorityTimer];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __69__HUNearbyHearingAidController_sendMessagesPriorityDefaultForClient___block_invoke_138;
      v16[3] = &unk_1E85C9F60;
      v16[4] = *(a1 + 40);
      [v14 afterDelay:v16 processBlock:20.0];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __69__HUNearbyHearingAidController_sendMessagesPriorityDefaultForClient___block_invoke_138(uint64_t a1)
{
  v2 = HCLogHearingAids();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __69__HUNearbyHearingAidController_sendMessagesPriorityDefaultForClient___block_invoke_138_cold_1(a1);
  }

  v3 = [*(a1 + 32) processesHighMessagePriority];
  v4 = [v3 count];

  if (!v4)
  {
    [*(a1 + 32) sendMessagesPriority:1];
  }
}

- (void)sendMessagesPriority:(unint64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  [(HUNearbyHearingAidController *)self setDeviceMessagePriority:a3];
  v4 = +[HUHearingAidSettings sharedInstance];
  v5 = [v4 pairedHearingAids];

  if (v5)
  {
    v6 = HCLogHearingAids();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(HUNearbyHearingAidController *)self descriptionForCurrentMessagePriority];
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "IDS Sending MessagesPriority %@", buf, 0xCu);
    }

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HUNearbyHearingAidController deviceMessagePriority](self, "deviceMessagePriority", &unk_1F56239B0)}];
    v12 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    [(HUNearbyHearingAidController *)self sendMessageToAllDevices:v9 messagePriority:1];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)descriptionForCurrentMessagePriority
{
  if (self->_deviceMessagePriority)
  {
    return @"Default";
  }

  else
  {
    return @"High";
  }
}

- (void)clientRemoved:(id)a3
{
  v4 = [a3 pid];
  v5 = [(HUDeviceController *)self deviceUpdatesQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__HUNearbyHearingAidController_clientRemoved___block_invoke;
  v6[3] = &unk_1E85CA530;
  v6[4] = self;
  v7 = v4;
  dispatch_async(v5, v6);
}

uint64_t __46__HUNearbyHearingAidController_clientRemoved___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) processesHighMessagePriority];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
  [v2 removeObject:v3];

  v4 = AXLogTemp();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) processesHighMessagePriority];
    v9[0] = 67109378;
    v9[1] = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "XPC error, client removed: %d, clients: %@", v9, 0x12u);
  }

  result = [*(a1 + 32) sendMessagesPriorityDefaultForClient:0];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)sendConnectionUpdateToPeers
{
  v3 = +[HUHearingAidSettings sharedInstance];
  v4 = [v3 pairedHearingAids];

  if (v4)
  {
    v5 = [(HUDeviceController *)self deviceUpdatesQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__HUNearbyHearingAidController_sendConnectionUpdateToPeers__block_invoke;
    block[3] = &unk_1E85C9F60;
    block[4] = self;
    dispatch_async(v5, block);
  }
}

void __59__HUNearbyHearingAidController_sendConnectionUpdateToPeers__block_invoke(uint64_t a1)
{
  [*(a1 + 32) sendConnectionToCompanionIfPossible];
  [*(a1 + 32) updateStateOnDeviceQueue];
  v2 = [*(a1 + 32) delegate];
  [v2 availableRemoteControllersDidChange];
}

- (void)sendStateMessageToAllDevices:(id)a3 isUrgent:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(HUNearbyHearingAidController *)self setIdsMessagesCount:[(HUNearbyHearingAidController *)self idsMessagesCount]+ 1];
  v7 = +[HUNearbyController sharedInstance];
  v9 = v7;
  if (v4)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  [v7 sendMessage:v6 toDevicesWithDomain:@"com.apple.hearing.hearingaids" withPriority:v8];
}

- (void)sendMessageToAllDevices:(id)a3 messagePriority:(unint64_t)a4
{
  v5 = a3;
  v6 = +[HUNearbyController sharedInstance];
  [v6 sendMessage:v5 toDevicesWithDomain:@"com.apple.hearing.hearingaids" withPriority:a4];
}

- (void)sendStateMessage:(id)a3 toDevices:(id)a4 isUrgent:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  [(HUNearbyHearingAidController *)self setIdsMessagesCount:[(HUNearbyHearingAidController *)self idsMessagesCount]+ 1];
  v10 = +[HUNearbyController sharedInstance];
  v12 = v10;
  if (v5)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  [v10 sendMessage:v9 withDomain:@"com.apple.hearing.hearingaids" toDevices:v8 withPriority:v11];
}

- (void)sendMessage:(id)a3 toDevices:(id)a4 messagePriority:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = +[HUNearbyController sharedInstance];
  [v9 sendMessage:v8 withDomain:@"com.apple.hearing.hearingaids" toDevices:v7 withPriority:a5];
}

- (void)sendMessage:(id)a3 toDevices:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[HUNearbyController sharedInstance];
  [v7 sendMessage:v6 withDomain:@"com.apple.hearing.hearingaids" toDevices:v5 withPriority:1];
}

- (void)sendWriteToAllDevices:(id)a3
{
  v4 = a3;
  v5 = [(HUDeviceController *)self deviceUpdatesQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__HUNearbyHearingAidController_sendWriteToAllDevices___block_invoke;
  v7[3] = &unk_1E85C9F38;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __54__HUNearbyHearingAidController_sendWriteToAllDevices___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lastSentPropertyUpdates];
  v3 = [v2 isEqualToDictionary:*(a1 + 40)];

  v4 = HCLogHearingAids();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __54__HUNearbyHearingAidController_sendWriteToAllDevices___block_invoke_cold_2();
    }
  }

  else
  {
    if (v5)
    {
      __54__HUNearbyHearingAidController_sendWriteToAllDevices___block_invoke_cold_1((a1 + 40));
    }

    [*(a1 + 32) setLastSentPropertyUpdates:*(a1 + 40)];
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v4 = [v7 availableDevices];
    [v7 sendWrite:v6 toDevices:v4];
  }
}

- (void)sendWrite:(id)a3 toDevices:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && [v7 count])
  {
    v9 = MEMORY[0x1E695DF20];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:8];
    v11 = [v9 dictionaryWithObject:v6 forKey:v10];

    v12 = [(HUNearbyHearingAidController *)self urgentDevicesFromDevices:v8];
    if ([v12 count])
    {
      v13 = HCLogHearingAids();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v12;
        _os_log_impl(&dword_1DA5E2000, v13, OS_LOG_TYPE_DEFAULT, "Sending Properties to urgent devices: %@", buf, 0xCu);
      }

      [(HUNearbyHearingAidController *)self sendMessage:v11 toDevices:v12];
    }

    [(HUNearbyHearingAidController *)self collectPropertyUpdatesFromPayload:v6];
    v14 = [(HUNearbyHearingAidController *)self sendPropertyUpdatesLowTimer];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __52__HUNearbyHearingAidController_sendWrite_toDevices___block_invoke;
    v16[3] = &unk_1E85C9F38;
    v16[4] = self;
    v17 = v8;
    [v14 afterDelay:v16 processBlock:4.0];
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __52__HUNearbyHearingAidController_sendWrite_toDevices___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) defaultDevicesFromDevices:*(a1 + 40)];
  if ([v2 count])
  {
    v3 = [*(a1 + 32) collectedPropertyUpdates];
    v4 = [v3 count];

    if (v4)
    {
      v5 = MEMORY[0x1E695DF20];
      v6 = [*(a1 + 32) collectedPropertyUpdates];
      v7 = [v6 copy];
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:8];
      v9 = [v5 dictionaryWithObject:v7 forKey:v8];

      [*(a1 + 32) sendMessage:v9 toDevices:v2 messagePriority:2];
      v10 = HCLogHearingAids();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412546;
        v14 = v9;
        v15 = 2112;
        v16 = v2;
        _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "Sending Properties:\n%@\nto default devices:\n%@", &v13, 0x16u);
      }

      v11 = [*(a1 + 32) collectedPropertyUpdates];
      [v11 removeAllObjects];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)writeValue:(id)a3 forProperty:(unint64_t)a4 andDeviceID:(id)a5 toDevices:(id)a6
{
  v20[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (v10 && [v11 length])
  {
    v19 = v11;
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4];
    v17 = v13;
    v18 = v10;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v20[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    [(HUNearbyHearingAidController *)self sendWrite:v15 toDevices:v12];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)collectPropertyUpdatesFromPayload:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __66__HUNearbyHearingAidController_collectPropertyUpdatesFromPayload___block_invoke;
  v3[3] = &unk_1E85CA558;
  v3[4] = self;
  [a3 enumerateKeysAndObjectsUsingBlock:v3];
}

void __66__HUNearbyHearingAidController_collectPropertyUpdatesFromPayload___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [*(a1 + 32) collectedPropertyUpdates];
      v7 = [v6 objectForKey:v10];
      v8 = [v7 mutableCopy];

      if (!v8)
      {
        v8 = objc_opt_new();
      }

      [v8 addEntriesFromDictionary:v5];
      v9 = [*(a1 + 32) collectedPropertyUpdates];
      [v9 setObject:v8 forKey:v10];
    }
  }
}

- (id)device:(id)a3 didReceiveMessage:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = HCLogHearingAids();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    *&buf[4] = [(HUNearbyHearingAidController *)self state];
    *&buf[12] = 2112;
    *&buf[14] = v6;
    *&buf[22] = 2112;
    v28 = v7;
    _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "%ld== %@ - %@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v28) = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v9 = [MEMORY[0x1E695DF90] dictionary];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __57__HUNearbyHearingAidController_device_didReceiveMessage___block_invoke;
  v17[3] = &unk_1E85CA580;
  v10 = v6;
  v18 = v10;
  v19 = self;
  v20 = buf;
  v21 = &v22;
  [v7 enumerateKeysAndObjectsUsingBlock:v17];
  if (v10 && (*(*&buf[8] + 24) & 1) != 0)
  {
    v11 = objc_opt_new();
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HUNearbyHearingAidController deviceMessagePriority](self, "deviceMessagePriority")}];
    [v11 setObject:v12 forKey:&unk_1F56239B0];

    if ((v23[3] & 1) == 0)
    {
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HUNearbyHearingAidController state](self, "state")}];
      [v11 setObject:v13 forKey:&unk_1F5623998];
    }

    v26 = v10;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    [(HUNearbyHearingAidController *)self sendStateMessage:v11 toDevices:v14 isUrgent:1];
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(buf, 8);

  v15 = *MEMORY[0x1E69E9840];

  return v9;
}

void __57__HUNearbyHearingAidController_device_didReceiveMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 unsignedLongLongValue];
  if (v6 < 0x8000)
  {
    if (v6 == 8)
    {
      [*(a1 + 40) processWriteMessageWithValue:v5];
      goto LABEL_20;
    }

    if (v6 == 16)
    {
      [*(a1 + 40) processReadMessageFromPeerDevice:*(a1 + 32) value:v5];
      goto LABEL_20;
    }

    if (v6 != 4096)
    {
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  switch(v6)
  {
    case 0x8000:
      [*(a1 + 40) processHandoffMessageFromPeer:*(a1 + 32) state:v5];
      break;
    case 0x20000:
      v10 = HCLogHearingAids();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [*(a1 + 32) name];
        v13 = 138412546;
        v14 = v5;
        v15 = 2112;
        v16 = v11;
        _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "IDS Received HCMessageIdentifierMessagesPriority: %@ from device: %@", &v13, 0x16u);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(a1 + 40) setMessagePriority:objc_msgSend(v5 forDevice:{"integerValue"), *(a1 + 32)}];
      }

      break;
    case 0x80000:
      v7 = HCLogHearingHandoff();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [*(a1 + 32) name];
        v9 = [*(a1 + 40) descriptionForCurrentState];
        v13 = 138412546;
        v14 = v8;
        v15 = 2112;
        v16 = v9;
        _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "Received CheckIn from device: %@, current state: %@", &v13, 0x16u);
      }

      *(*(*(a1 + 48) + 8) + 24) = 1;
LABEL_12:
      *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 40) processStateMessageFromPeer:*(a1 + 32) state:v5];
      break;
  }

LABEL_20:

  v12 = *MEMORY[0x1E69E9840];
}

- (void)updateResponse:(id)a3 withState:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 objectForKey:&unk_1F5623998];

  if (!v7)
  {
    [(HUNearbyHearingAidController *)self setIdsMessagesCount:[(HUNearbyHearingAidController *)self idsMessagesCount]+ 1];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v6 setObject:v8 forKey:&unk_1F5623998];
}

- (void)validateResponse:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKey:&unk_1F5623998];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntegerValue];
    if (v7 != [(HUNearbyHearingAidController *)self state])
    {
      [(HUNearbyHearingAidController *)self updateResponse:v4 withState:[(HUNearbyHearingAidController *)self state]];
    }

    v8 = HCLogHearingHandoff();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(HUNearbyHearingAidController *)self descriptionForCurrentState];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "Response ControllerConnected state: %@", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)processHandoffMessageFromPeer:(id)a3 state:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = HCLogHearingHandoff();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(HUNearbyHearingAidController *)self timeStamp];
    v10 = [v6 name];
    *buf = 138412802;
    v22 = v7;
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "Received ControllerConnectWithReason: %@, time: %@, from device: %@", buf, 0x20u);
  }

  v11 = v7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 1;
    goto LABEL_8;
  }

  v12 = [v11 integerValue];
  v13 = v12;
  if ((v12 - 1) < 5)
  {
LABEL_8:
    [(HUNearbyHearingAidController *)self relinquishConnectionForReason:v13 toDevice:v6];
    goto LABEL_9;
  }

  if (!v12)
  {
    v14 = dispatch_time(0, 1000000000);
    v15 = [(HUDeviceController *)self deviceUpdatesQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__HUNearbyHearingAidController_processHandoffMessageFromPeer_state___block_invoke;
    block[3] = &unk_1E85C9F60;
    block[4] = self;
    dispatch_after(v14, v15, block);
  }

LABEL_9:
  v16 = [(HUNearbyHearingAidController *)self delegate];

  if (v16)
  {
    v17 = [(HUNearbyHearingAidController *)self delegate];
    [v17 availableRemoteControllersDidChange];

    v18 = HCLogHearingAids();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v18, OS_LOG_TYPE_DEFAULT, "Handoff requested. Updated available controllers", buf, 2u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)processStateMessageFromPeer:(id)a3 state:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a4 integerValue];
  v8 = HCLogHearingHandoff();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 name];
    v10 = [(HUNearbyHearingAidController *)self descriptionForState:v7];
    v22 = 138412546;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "Received ControllerConnected peer: %@, peer state: %@", &v22, 0x16u);
  }

  [(HUNearbyHearingAidController *)self setConnectionState:v7 forDevice:v6];
  v11 = [(HUNearbyHearingAidController *)self updateStateOnDeviceQueue];
  v12 = +[AXHearingAidDeviceController sharedController];
  v13 = [v12 isConnected];

  if ((v13 & 1) == 0)
  {
    v14 = [(HUNearbyHearingAidController *)self hearingDevice];
    v15 = [v14 didLoadRequiredPeerProperties];

    if ((v15 & 1) == 0)
    {
      v16 = [(HUNearbyHearingAidController *)self hearingDevice];
      [v16 loadRequiredProperties];
    }
  }

  v17 = [(HUNearbyHearingAidController *)self delegate];

  if (v17)
  {
    v18 = [(HUNearbyHearingAidController *)self delegate];
    [v18 availableRemoteControllersDidChange];

    v19 = HCLogHearingAids();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_1DA5E2000, v19, OS_LOG_TYPE_DEFAULT, "Controller state changed. Updated available controllers", &v22, 2u);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)processReadMessageFromPeerDevice:(id)a3 value:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[AXHAController sharedController];
  v9 = [v8 pairedDeviceUUID];

  if (v6)
  {
    if ([(HUNearbyHearingAidController *)self state]== 5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __71__HUNearbyHearingAidController_processReadMessageFromPeerDevice_value___block_invoke;
        v15[3] = &unk_1E85CA5A8;
        v15[4] = self;
        v16 = v6;
        [v7 enumerateKeysAndObjectsUsingBlock:v15];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(HUNearbyHearingAidController *)self processReadProperty:v7 fromPeerDevice:v6];
        }
      }
    }

    else if ([(HUNearbyHearingAidController *)self state]== 2)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 integerValue] == 0x1000000)
      {
        v11 = [(HUNearbyHearingAidController *)self hearingDevice];
        v12 = [v11 valueForProperty:0x1000000];
        v18[0] = v6;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
        [(HUNearbyHearingAidController *)self writeValue:v12 forProperty:0x1000000 andDeviceID:v9 toDevices:v13];
      }
    }
  }

  else
  {
    v10 = HCLogHearingAids();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "Asking for device property read but device is nil", buf, 2u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)processReadProperty:(id)a3 fromPeerDevice:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = +[AXHAController sharedController];
  v9 = [v8 pairedDeviceUUID];

  v10 = [v7 unsignedLongLongValue];
  v11 = +[AXHearingAidDeviceController sharedController];
  v12 = [v11 valueForProperty:v10 forDeviceID:v9];

  v15[0] = v6;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

  [(HUNearbyHearingAidController *)self writeValue:v12 forProperty:v10 andDeviceID:v9 toDevices:v13];
  v14 = *MEMORY[0x1E69E9840];
}

- (void)processWriteMessageWithValue:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[AXHAController sharedController];
  v6 = [v5 pairedDeviceUUID];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 count] == 1)
  {
    if ([(HUNearbyHearingAidController *)self state]== 5)
    {
      v7 = +[AXHearingAidDeviceController sharedController];
      v8 = [v7 hearingAidForDeviceID:v6];

      v9 = +[AXHearingAidDeviceController sharedController];
    }

    else
    {
      v8 = [(HUNearbyHearingAidController *)self hearingDevice];
      v9 = self;
      if ([(HUNearbyHearingAidController *)v9 isPeerConnectedToHearingDevice])
      {
        v10 = &unk_1F56239E0;
      }

      else
      {
        v10 = &unk_1F56239C8;
      }

      [v8 setValue:v10 forProperty:0x200000];
    }

    v11 = v4;
    v12 = [v11 allKeys];
    v13 = [v12 lastObject];
    v14 = [v8 deviceUUID];
    v15 = [v13 isEqualToString:v14];

    if (v15)
    {
      v16 = [v8 deviceUUID];
      v17 = [v11 objectForKey:v16];

      v11 = v17;
    }

    else
    {
      v18 = HCLogHearingAids();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v26 = v8;
        v27 = 2112;
        v28 = v11;
        _os_log_impl(&dword_1DA5E2000, v18, OS_LOG_TYPE_DEFAULT, "Unknown device ID %@ - %@", buf, 0x16u);
      }
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __61__HUNearbyHearingAidController_processWriteMessageWithValue___block_invoke;
    v22[3] = &unk_1E85CA5A8;
    v23 = v9;
    v24 = v8;
    v19 = v8;
    v20 = v9;
    [v11 enumerateKeysAndObjectsUsingBlock:v22];
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __61__HUNearbyHearingAidController_processWriteMessageWithValue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 unsignedLongLongValue];
  if (v6 != 0x200000)
  {
    v7 = v6;
    v8 = v5;
    if (propertyContainsProperty(v7, 0x200000))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v8];

        [v9 removeObjectForKey:&unk_1F56239F8];
        v8 = v9;
      }
    }

    v10 = HCLogHearingAids();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "Updating controller %@", &v13, 0xCu);
    }

    [*(a1 + 40) setValue:v8 forProperty:v7];
    [*(a1 + 32) device:*(a1 + 40) didUpdateProperty:v7];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)scIDSServiceDevice:(id)a3 didReceiveMessage:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = HCLogHearingHandoff();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = v7;
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "Received HearingAids Message %@ from device: %@", buf, 0x16u);
  }

  v9 = [v7 objectForKeyedSubscript:@"com.apple.hearing.hearingaids"];
  v10 = [v9 objectForKeyedSubscript:@"HCMessageIdentifierRemoteControllerConnectWithReason"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [(HUDeviceController *)self deviceUpdatesQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__HUNearbyHearingAidController_scIDSServiceDevice_didReceiveMessage___block_invoke;
    block[3] = &unk_1E85CA468;
    block[4] = self;
    v21 = v10;
    v22 = v6;
    dispatch_async(v11, block);
  }

  v12 = [v9 objectForKeyedSubscript:@"HCMessageIdentifierControllerConnected"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = HCLogHearingHandoff();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = -[HUNearbyHearingAidController descriptionForState:](self, "descriptionForState:", [v12 integerValue]);
      *buf = 138412546;
      v24 = v14;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_1DA5E2000, v13, OS_LOG_TYPE_DEFAULT, "Update controllerState %@ for device: %@", buf, 0x16u);
    }

    v15 = [(HUDeviceController *)self deviceUpdatesQueue];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __69__HUNearbyHearingAidController_scIDSServiceDevice_didReceiveMessage___block_invoke_154;
    v17[3] = &unk_1E85CA468;
    v17[4] = self;
    v18 = v6;
    v19 = v12;
    dispatch_async(v15, v17);
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __69__HUNearbyHearingAidController_scIDSServiceDevice_didReceiveMessage___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) integerValue];
  v4 = *(a1 + 48);

  return [v2 relinquishConnectionForReason:v3 toDevice:v4];
}

- (void)scIDSServiceDidRemoveDevices:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
  v6 = v4;
  if (v5)
  {
    v7 = v5;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([(HUNearbyHearingAidController *)self connectionStateForDevice:v10, v13]== 5)
        {
          v11 = HCLogHearingHandoff();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v18 = v10;
            _os_log_impl(&dword_1DA5E2000, v11, OS_LOG_TYPE_DEFAULT, "SC IDS Service Lost connected device: %@", buf, 0xCu);
          }

          [(HUNearbyHearingAidController *)self updateStateOnDeviceQueue];
          v6 = [(HUNearbyHearingAidController *)self delegate];
          [v6 availableRemoteControllersDidChange];
          goto LABEL_13;
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    v6 = v4;
  }

LABEL_13:

  v12 = *MEMORY[0x1E69E9840];
}

- (void)scIDSServiceDidAddDevices:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = HCLogHearingHandoff();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(HUNearbyHearingAidController *)self descriptionForCurrentState];
      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "SC IDS Service Added, current state %@", &v15, 0xCu);
    }

    if ([(HUNearbyHearingAidController *)self state]== 5)
    {
      v7 = [v4 count];
      v8 = HCLogHearingHandoff();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (v7 < 2)
      {
        if (v9)
        {
          v11 = [v4 objectAtIndexedSubscript:0];
          v12 = [v11 name];
          v15 = 138412290;
          v16 = v12;
          _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "SC IDS Service Sending PeerConnected to %@", &v15, 0xCu);
        }

        v10 = +[HUNearbyController sharedInstance];
        v13 = [v4 objectAtIndexedSubscript:0];
        [v10 sendSCIDSMessage:&unk_1F5624488 toDevice:v13];
      }

      else
      {
        if (v9)
        {
          LOWORD(v15) = 0;
          _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "SC IDS Service Sending PeerConnected to all", &v15, 2u);
        }

        v10 = +[HUNearbyController sharedInstance];
        [v10 sendSCIDSMessage:&unk_1F5624460 toDevice:0];
      }
    }

    else
    {
      [(HUNearbyHearingAidController *)self updateStateOnDeviceQueue];
      v10 = [(HUNearbyHearingAidController *)self delegate];
      [v10 availableRemoteControllersDidChange];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)hearingAidForDeviceID:(id)a3
{
  v4 = a3;
  v5 = [(HUNearbyHearingAidController *)self hearingDevice];
  v6 = [v5 deviceUUID];
  v7 = [v6 isEqualToString:v4];

  if (v7)
  {
    v8 = [(HUNearbyHearingAidController *)self hearingDevice];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)updateProperty:(unint64_t)a3 forDeviceID:(id)a4
{
  v6 = a4;
  v7 = +[HUHearingAidSettings sharedInstance];
  v8 = [v7 isiCloudPaired];

  if (v8)
  {
    v9 = HCLogHearingAids();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v9, OS_LOG_TYPE_DEFAULT, "Don't request properties, iCloudPaired", buf, 2u);
    }
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __59__HUNearbyHearingAidController_updateProperty_forDeviceID___block_invoke;
    v12[3] = &unk_1E85CA358;
    v12[4] = self;
    v12[5] = a3;
    [(HUNearbyHearingAidController *)self connectedPeerWithCompletion:v12];
  }

  v10.receiver = self;
  v10.super_class = HUNearbyHearingAidController;
  [(HUDeviceController *)&v10 updateProperty:a3 forDeviceID:v6];
}

void __59__HUNearbyHearingAidController_updateProperty_forDeviceID___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3 && *(a1 + 40) != 0x1000000)
  {
    v4 = HCLogHearingAids();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = hearingPropertyDescription(*(a1 + 40));
      v6 = [v3 name];
      *buf = 138412546;
      v18 = v5;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "IDS Requesting property %@ from device %@", buf, 0x16u);
    }

    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:16];
    v15 = v8;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 40)];
    v16 = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v14 = v3;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    if ([*(a1 + 32) deviceMessagePriority])
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    [v7 sendMessage:v10 toDevices:v11 messagePriority:v12];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)writeValue:(id)a3 forProperty:(unint64_t)a4 andDeviceID:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [(HUNearbyHearingAidController *)self hearingAidForDeviceID:v9];
  v11 = [v10 valueForProperty:a4];
  v12 = [v11 isEqual:v8];

  v13 = HCLogHearingAids();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v13, OS_LOG_TYPE_DEFAULT, "Skipping write because value didn't change", buf, 2u);
    }
  }

  else
  {
    if (v14)
    {
      v15 = [v10 valueForProperty:a4];
      *buf = 138412546;
      v24 = v15;
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&dword_1DA5E2000, v13, OS_LOG_TYPE_DEFAULT, "Writing %@ = %@", buf, 0x16u);
    }

    v22.receiver = self;
    v22.super_class = HUNearbyHearingAidController;
    [(HUDeviceController *)&v22 writeValue:v8 forProperty:a4 andDeviceID:v9];
    v16 = [(HUDeviceController *)self deviceUpdatesQueue];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __67__HUNearbyHearingAidController_writeValue_forProperty_andDeviceID___block_invoke;
    v18[3] = &unk_1E85CA5D0;
    v18[4] = self;
    v19 = v8;
    v21 = a4;
    v20 = v9;
    dispatch_async(v16, v18);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __67__HUNearbyHearingAidController_writeValue_forProperty_andDeviceID___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v3 = a1[7];
  v5 = [v1 availableDevices];
  [v1 writeValue:v2 forProperty:v3 andDeviceID:v4 toDevices:v5];
}

- (HUNearbyHearingAidControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __55__HUNearbyHearingAidController_mediaPlaybackDidChange___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void __55__HUNearbyHearingAidController_mediaPlaybackDidChange___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)connectionStateForDevice:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [a2 name];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setConnectionState:(void *)a1 forDevice:.cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [a1 stateForDomain:@"com.apple.hearing.hearingaids.connection"];
  v3 = [a1 name];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)messagePriorityForDevice:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [a2 name];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setMessagePriority:(void *)a1 forDevice:.cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [a1 stateForDomain:@"com.apple.hearing.hearingaids.priority"];
  v3 = [a1 name];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __46__HUNearbyHearingAidController_peerWithState___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = [a1 name];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

void __66__HUNearbyHearingAidController_sendMessagesPriorityHighForClient___block_invoke_cold_1(id *a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [*a1 pid];
  v5 = *a1;
  v7[0] = 67109378;
  v7[1] = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_1DA5E2000, a2, OS_LOG_TYPE_ERROR, "Invalid high priority client: %d, %@", v7, 0x12u);
  v6 = *MEMORY[0x1E69E9840];
}

void __69__HUNearbyHearingAidController_sendMessagesPriorityDefaultForClient___block_invoke_138_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = [*(a1 + 32) processesHighMessagePriority];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

void __54__HUNearbyHearingAidController_sendWriteToAllDevices___block_invoke_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __54__HUNearbyHearingAidController_sendWriteToAllDevices___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end