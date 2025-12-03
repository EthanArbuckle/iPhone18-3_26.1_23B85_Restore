@interface HUNearbyHearingAidController
+ (id)sharedInstance;
- (BOOL)isPeerConnectedToHearingDevice;
- (BOOL)processStateMessageFromPeer:(id)peer state:(id)state;
- (BOOL)relinquishConnectionForReason:(int64_t)reason toDevice:(id)device;
- (BOOL)requestHandoff:(int64_t)handoff reason:(int64_t)reason;
- (BOOL)shouldConnect;
- (BOOL)shouldDisconnect;
- (BOOL)shouldRelinquishConnectionForReason:(int64_t)reason;
- (BOOL)shouldRoute:(BOOL)route;
- (BOOL)updateStateOnDeviceQueue;
- (HUNearbyHearingAidController)init;
- (HUNearbyHearingAidControllerDelegate)delegate;
- (id)availableDevices;
- (id)descriptionForCurrentMessagePriority;
- (id)descriptionForCurrentState;
- (id)descriptionForHandoffReason:(int64_t)reason;
- (id)descriptionForHandoffState;
- (id)descriptionForState:(int64_t)state;
- (id)device:(id)device didReceiveMessage:(id)message;
- (id)devicesFromDevices:(id)devices withMessagePriority:(unint64_t)priority;
- (id)hearingAidForDeviceID:(id)d;
- (id)hearingDevice;
- (id)peerWithState:(int64_t)state;
- (id)timeStamp;
- (int64_t)connectionStateForDevice:(id)device;
- (unint64_t)messagePriorityForDevice:(id)device;
- (void)callStatusDidChange:(id)change;
- (void)checkConnectionRequestedForMediaAfterTimeout;
- (void)checkHandoffAfterTimeout;
- (void)checkPeerStateAfterTimout;
- (void)clientRemoved:(id)removed;
- (void)collectPropertyUpdatesFromPayload:(id)payload;
- (void)connectedPeerWithCompletion:(id)completion;
- (void)disconnectFromPairedDevice;
- (void)finishHandoff;
- (void)logAvailableDevicesWithTitle:(id)title;
- (void)logDevices:(id)devices withTitle:(id)title fullInfo:(BOOL)info;
- (void)mediaPlaybackDidChange:(id)change;
- (void)mediaServerDied;
- (void)processHandoffMessageFromPeer:(id)peer state:(id)state;
- (void)processReadMessageFromPeerDevice:(id)device value:(id)value;
- (void)processReadProperty:(id)property fromPeerDevice:(id)device;
- (void)processWriteMessageWithValue:(id)value;
- (void)registerMediaNotifications;
- (void)relinquishConnection;
- (void)relinquishConnectionWithCompletion:(id)completion;
- (void)requestConnection;
- (void)requestConnectionForMedia;
- (void)requestConnectionForReason:(int64_t)reason;
- (void)resetHandoff;
- (void)resetHandoffOnDeviceQueue;
- (void)routesDidChange:(id)change;
- (void)scIDSServiceDevice:(id)device didReceiveMessage:(id)message;
- (void)scIDSServiceDidAddDevices:(id)devices;
- (void)scIDSServiceDidRemoveDevices:(id)devices;
- (void)sendConnectionUpdateToPeers;
- (void)sendMessage:(id)message toDevices:(id)devices;
- (void)sendMessage:(id)message toDevices:(id)devices messagePriority:(unint64_t)priority;
- (void)sendMessageToAllDevices:(id)devices messagePriority:(unint64_t)priority;
- (void)sendMessagesPriority:(unint64_t)priority;
- (void)sendMessagesPriorityDefaultForClient:(id)client;
- (void)sendMessagesPriorityHighForClient:(id)client;
- (void)sendStateMessage:(id)message toDevices:(id)devices isUrgent:(BOOL)urgent;
- (void)sendStateMessageToAllDevices:(id)devices isUrgent:(BOOL)urgent;
- (void)sendWrite:(id)write toDevices:(id)devices;
- (void)sendWriteToAllDevices:(id)devices;
- (void)setConnectionState:(int64_t)state forDevice:(id)device;
- (void)setMessagePriority:(unint64_t)priority forDevice:(id)device;
- (void)shouldRequestAudioConnectionForCall:(BOOL)call withCompletion:(id)completion;
- (void)start;
- (void)stop;
- (void)unregisterMediaNotifications;
- (void)updateProperty:(unint64_t)property forDeviceID:(id)d;
- (void)updateResponse:(id)response withState:(int64_t)state;
- (void)updateState;
- (void)validateResponse:(id)response;
- (void)writeValue:(id)value forProperty:(unint64_t)property andDeviceID:(id)d;
- (void)writeValue:(id)value forProperty:(unint64_t)property andDeviceID:(id)d toDevices:(id)devices;
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

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel_callStatusDidChange_ name:*MEMORY[0x1E69D8E08] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v5 selector:sel_callStatusDidChange_ name:*MEMORY[0x1E69D8E58] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v5 selector:sel_routesDidChange_ name:@"com.apple.accessibility.hearingaid.audio.route.changed" object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, UserRequestedAudioTransferNotification, @"com.apple.accessibility.hearing.audio.transfer", 0, 0);
    v14 = objc_alloc(MEMORY[0x1E6988780]);
    mediaQueue = [(HUNearbyHearingAidController *)v5 mediaQueue];
    v16 = [v14 initWithTargetSerialQueue:mediaQueue];
    [(HUNearbyHearingAidController *)v5 setSendConnectionToCompanionTimer:v16];

    v17 = objc_alloc(MEMORY[0x1E6988780]);
    deviceUpdatesQueue = [(HUDeviceController *)v5 deviceUpdatesQueue];
    v19 = [v17 initWithTargetSerialQueue:deviceUpdatesQueue];
    handoffTimer = v5->_handoffTimer;
    v5->_handoffTimer = v19;

    [(AXDispatchTimer *)v5->_handoffTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    v21 = objc_alloc(MEMORY[0x1E6988780]);
    deviceUpdatesQueue2 = [(HUDeviceController *)v5 deviceUpdatesQueue];
    v23 = [v21 initWithTargetSerialQueue:deviceUpdatesQueue2];
    sendPropertyUpdatesLowTimer = v5->_sendPropertyUpdatesLowTimer;
    v5->_sendPropertyUpdatesLowTimer = v23;

    [(AXDispatchTimer *)v5->_sendPropertyUpdatesLowTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    v25 = objc_opt_new();
    collectedPropertyUpdates = v5->_collectedPropertyUpdates;
    v5->_collectedPropertyUpdates = v25;

    v27 = objc_alloc(MEMORY[0x1E6988780]);
    deviceUpdatesQueue3 = [(HUDeviceController *)v5 deviceUpdatesQueue];
    v29 = [v27 initWithTargetSerialQueue:deviceUpdatesQueue3];
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

  mEMORY[0x1E69AED10] = [MEMORY[0x1E69AED10] sharedAVSystemController];
  v5 = MEMORY[0x1E69AECB8];
  v6 = MEMORY[0x1E69AEAB0];
  v7 = *MEMORY[0x1E69AEAB0];
  v18[0] = *MEMORY[0x1E69AECB8];
  v18[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  [mEMORY[0x1E69AED10] setAttribute:v8 forKey:*MEMORY[0x1E69AECD8] error:0];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v10 = *v5;
  mEMORY[0x1E69AED10]2 = [MEMORY[0x1E69AED10] sharedAVSystemController];
  [defaultCenter addObserver:self selector:sel_mediaServerDied name:v10 object:mEMORY[0x1E69AED10]2];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  v13 = *v6;
  mEMORY[0x1E69AED10]3 = [MEMORY[0x1E69AED10] sharedAVSystemController];
  [defaultCenter2 addObserver:self selector:sel_mediaPlaybackDidChange_ name:v13 object:mEMORY[0x1E69AED10]3];

  MRMediaRemoteSetWantsNowPlayingNotifications();
  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_mediaPlaybackDidChange_ name:*MEMORY[0x1E69B0E08] object:0];

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

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v5 = *MEMORY[0x1E69AECB8];
  mEMORY[0x1E69AED10] = [MEMORY[0x1E69AED10] sharedAVSystemController];
  [defaultCenter removeObserver:self name:v5 object:mEMORY[0x1E69AED10]];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = *MEMORY[0x1E69AEAB0];
  mEMORY[0x1E69AED10]2 = [MEMORY[0x1E69AED10] sharedAVSystemController];
  [defaultCenter2 removeObserver:self name:v8 object:mEMORY[0x1E69AED10]2];
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
  mediaQueue = [(HUNearbyHearingAidController *)self mediaQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__HUNearbyHearingAidController_mediaServerDied__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_after(v4, mediaQueue, block);
}

- (void)mediaPlaybackDidChange:(id)change
{
  v4 = +[HUUtilities sharedUtilities];
  mediaQueue = [(HUNearbyHearingAidController *)self mediaQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__HUNearbyHearingAidController_mediaPlaybackDidChange___block_invoke;
  v6[3] = &unk_1E85CA050;
  v6[4] = self;
  [v4 checkAudioPlayingWithQueue:mediaQueue andCompletion:v6];
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

- (void)routesDidChange:(id)change
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
        mediaQueue = [(HUNearbyHearingAidController *)self mediaQueue];
        [v5 pauseNowPlaying:0 withQueue:mediaQueue andCompletion:0];
      }
    }
  }
}

- (void)callStatusDidChange:(id)change
{
  v14 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v5 = HCLogHearingHandoff();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [changeCopy name];
    *buf = 138412290;
    v13 = name;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Call status changed - %@", buf, 0xCu);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__HUNearbyHearingAidController_callStatusDidChange___block_invoke;
  v9[3] = &unk_1E85CA2E0;
  v10 = changeCopy;
  selfCopy = self;
  v7 = changeCopy;
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

- (BOOL)shouldRoute:(BOOL)route
{
  v4 = +[HUHearingAidSettings sharedInstance];
  v5 = v4;
  if (route)
  {
    callAudioRoute = [v4 callAudioRoute];
  }

  else
  {
    callAudioRoute = [v4 mediaAudioRoute];
  }

  v7 = callAudioRoute;

  if (v7 == 1)
  {
    return 0;
  }

  if (v7 != 2)
  {
    return 1;
  }

  v8 = +[HUUtilities sharedUtilities];
  currentPickableAudioRoutes = [v8 currentPickableAudioRoutes];

  v10 = [currentPickableAudioRoutes valueForKey:@"AXSHARouteHeadset"];
  v11 = [currentPickableAudioRoutes valueForKey:@"AXSHARoutePicked"];
  v12 = [v10 isEqualToDictionary:v11];

  v13 = v12 ^ 1;
  return v13;
}

- (void)shouldRequestAudioConnectionForCall:(BOOL)call withCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    deviceUpdatesQueue = [(HUDeviceController *)self deviceUpdatesQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__HUNearbyHearingAidController_shouldRequestAudioConnectionForCall_withCompletion___block_invoke;
    block[3] = &unk_1E85CA308;
    block[4] = self;
    callCopy = call;
    v9 = completionCopy;
    dispatch_async(deviceUpdatesQueue, block);
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

- (void)requestConnectionForReason:(int64_t)reason
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = HCLogHearingHandoff();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(HUNearbyHearingAidController *)self descriptionForHandoffReason:reason];
    *buf = 138412290;
    v10 = v6;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Request connection reason %@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__HUNearbyHearingAidController_requestConnectionForReason___block_invoke;
  v8[3] = &unk_1E85CA358;
  v8[4] = self;
  v8[5] = reason;
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

  deviceUpdatesQueue = [(HUDeviceController *)self deviceUpdatesQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__HUNearbyHearingAidController_requestConnection__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(deviceUpdatesQueue, block);

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
  mediaQueue = [(HUNearbyHearingAidController *)self mediaQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__HUNearbyHearingAidController_checkConnectionRequestedForMediaAfterTimeout__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(mediaQueue, block);
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

- (BOOL)shouldRelinquishConnectionForReason:(int64_t)reason
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

  if ((reason - 1) < 2)
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
    if (reason != 3)
    {
      if (reason == 4)
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
    v9 = [(HUNearbyHearingAidController *)self descriptionForHandoffReason:reason];
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

- (BOOL)relinquishConnectionForReason:(int64_t)reason toDevice:(id)device
{
  v24 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v7 = HCLogHearingHandoff();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(HUNearbyHearingAidController *)self descriptionForHandoffReason:reason];
    name = [deviceCopy name];
    *buf = 138412546;
    v21 = v8;
    v22 = 2112;
    v23 = name;
    _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "relinquishConnectionForReason: %@ to peer: %@", buf, 0x16u);
  }

  if ([(HUNearbyHearingAidController *)self shouldRelinquishConnectionForReason:reason]&& [(HUNearbyHearingAidController *)self requestHandoff:2 reason:reason])
  {
    [(HUNearbyHearingAidController *)self setConnectionState:3 forDevice:deviceCopy];
    if (!reason)
    {
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x8000];
      v18 = v10;
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:0];
      v19 = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];

      if (deviceCopy)
      {
        v17 = deviceCopy;
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

  deviceUpdatesQueue = [(HUDeviceController *)self deviceUpdatesQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__HUNearbyHearingAidController_relinquishConnection__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(deviceUpdatesQueue, block);
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

- (void)relinquishConnectionWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = HCLogHearingHandoff();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Relinquish connection with callback", buf, 2u);
  }

  deviceUpdatesQueue = [(HUDeviceController *)self deviceUpdatesQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__HUNearbyHearingAidController_relinquishConnectionWithCompletion___block_invoke;
  v8[3] = &unk_1E85CA380;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(deviceUpdatesQueue, v8);
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
    descriptionForCurrentState = [(HUNearbyHearingAidController *)self descriptionForCurrentState];
    v8[0] = 67109378;
    v8[1] = v3;
    v9 = 2112;
    v10 = descriptionForCurrentState;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "NearbyHearingAidController shouldConnect: %d, state: %@", v8, 0x12u);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)shouldDisconnect
{
  v11 = *MEMORY[0x1E69E9840];
  state = [(HUNearbyHearingAidController *)self state];
  v4 = HCLogHearingHandoff();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    descriptionForCurrentState = [(HUNearbyHearingAidController *)self descriptionForCurrentState];
    v8[0] = 67109378;
    v8[1] = state != 3;
    v9 = 2112;
    v10 = descriptionForCurrentState;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "NearbyHearingAidController shouldDisconnect: %d, state: %@", v8, 0x12u);
  }

  v6 = *MEMORY[0x1E69E9840];
  return state != 3;
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
  pairedDeviceUUID = [v4 pairedDeviceUUID];
  [v3 disconnectFromHearingAidWithDeviceUUID:pairedDeviceUUID];

  v6 = +[AXHearingAidDeviceController sharedController];
  [v6 cancelPendingConnections];
}

- (id)descriptionForHandoffState
{
  processingHandoff = [(HUNearbyHearingAidController *)self processingHandoff];
  if (processingHandoff > 2)
  {
    return @"N/A";
  }

  else
  {
    return off_1E85CA5F0[processingHandoff];
  }
}

- (id)descriptionForHandoffReason:(int64_t)reason
{
  if (reason > 5)
  {
    return @"N/A";
  }

  else
  {
    return off_1E85CA608[reason];
  }
}

- (BOOL)requestHandoff:(int64_t)handoff reason:(int64_t)reason
{
  v23 = *MEMORY[0x1E69E9840];
  if ([(HUNearbyHearingAidController *)self processingHandoff]== handoff && [(HUNearbyHearingAidController *)self handoffReason]== reason)
  {
    v7 = HCLogHearingHandoff();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      descriptionForHandoffState = [(HUNearbyHearingAidController *)self descriptionForHandoffState];
      v19 = 138412290;
      v20 = descriptionForHandoffState;
      _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "Already processing, skip requestHandoff: %@", &v19, 0xCu);
    }

LABEL_16:
    result = 0;
    goto LABEL_17;
  }

  [(HUNearbyHearingAidController *)self setProcessingHandoff:handoff];
  [(HUNearbyHearingAidController *)self setHandoffReason:reason];
  v9 = HCLogHearingHandoff();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    descriptionForHandoffState2 = [(HUNearbyHearingAidController *)self descriptionForHandoffState];
    v11 = [(HUNearbyHearingAidController *)self descriptionForHandoffReason:reason];
    v19 = 138412546;
    v20 = descriptionForHandoffState2;
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
      v14 = [(HUNearbyHearingAidController *)self descriptionForHandoffReason:reason];
      v19 = 138412290;
      v20 = v14;
      _os_log_impl(&dword_1DA5E2000, v13, OS_LOG_TYPE_DEFAULT, "Couldn't Start handoff for a reason: %@", &v19, 0xCu);
    }

    relinquishCompleted = [(HUNearbyHearingAidController *)self relinquishCompleted];

    if (relinquishCompleted)
    {
      v16 = HCLogHearingHandoff();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_1DA5E2000, v16, OS_LOG_TYPE_DEFAULT, "Invoking relinquishCompleted callback", &v19, 2u);
      }

      relinquishCompleted2 = [(HUNearbyHearingAidController *)self relinquishCompleted];
      relinquishCompleted2[2]();

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
  processingHandoff = [(HUNearbyHearingAidController *)self processingHandoff];
  v4 = HCLogHearingHandoff();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    descriptionForHandoffState = [(HUNearbyHearingAidController *)self descriptionForHandoffState];
    v6 = [(HUNearbyHearingAidController *)self descriptionForHandoffReason:[(HUNearbyHearingAidController *)self handoffReason]];
    *buf = 138412546;
    v12 = descriptionForHandoffState;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "Starting check timer for handoff %@, reason: %@", buf, 0x16u);
  }

  if (processingHandoff == 1)
  {
    v7 = 7.5;
  }

  else
  {
    v7 = 15.0;
  }

  handoffTimer = [(HUNearbyHearingAidController *)self handoffTimer];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__HUNearbyHearingAidController_checkHandoffAfterTimeout__block_invoke;
  v10[3] = &unk_1E85C9F60;
  v10[4] = self;
  [handoffTimer afterDelay:v10 processBlock:v7];

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
    descriptionForHandoffState = [(HUNearbyHearingAidController *)self descriptionForHandoffState];
    v5 = [(HUNearbyHearingAidController *)self descriptionForHandoffReason:[(HUNearbyHearingAidController *)self handoffReason]];
    connectedPeer = [(HUNearbyHearingAidController *)self connectedPeer];
    name = [connectedPeer name];
    v15 = 138413058;
    v16 = descriptionForHandoffState;
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = name;
    v21 = 1024;
    holdingMediaForConnection = [(HUNearbyHearingAidController *)self holdingMediaForConnection];
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "Finish handoff %@, reason: %@, connectedPeer: %@, holding media %d", &v15, 0x26u);
  }

  handoffTimer = [(HUNearbyHearingAidController *)self handoffTimer];
  [handoffTimer cancel];

  relinquishCompleted = [(HUNearbyHearingAidController *)self relinquishCompleted];
  if (relinquishCompleted)
  {
    v10 = relinquishCompleted;
    processingHandoff = [(HUNearbyHearingAidController *)self processingHandoff];

    if (processingHandoff == 2)
    {
      v12 = HCLogHearingHandoff();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_1DA5E2000, v12, OS_LOG_TYPE_DEFAULT, "Invoking relinquishCompleted callback", &v15, 2u);
      }

      relinquishCompleted2 = [(HUNearbyHearingAidController *)self relinquishCompleted];
      relinquishCompleted2[2]();

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
    descriptionForHandoffState = [(HUNearbyHearingAidController *)self descriptionForHandoffState];
    v6 = 138412290;
    v7 = descriptionForHandoffState;
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
  deviceUpdatesQueue = [(HUDeviceController *)self deviceUpdatesQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__HUNearbyHearingAidController_resetHandoff__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(deviceUpdatesQueue, block);
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
    deviceUpdatesQueue = [(HUDeviceController *)self deviceUpdatesQueue];
    [v4 registerQueue:deviceUpdatesQueue forDomain:@"com.apple.hearing.hearingaids"];

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

    deviceUpdatesQueue2 = [(HUDeviceController *)self deviceUpdatesQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__HUNearbyHearingAidController_start__block_invoke_5;
    block[3] = &unk_1E85C9F10;
    objc_copyWeak(&v14, buf);
    dispatch_async(deviceUpdatesQueue2, block);

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

  deviceUpdatesQueue = [(HUDeviceController *)self deviceUpdatesQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__HUNearbyHearingAidController_stop__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(deviceUpdatesQueue, block);

  [(HUNearbyHearingAidController *)self unregisterMediaNotifications];
  v5 = HCLogHearingHandoff();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HUNearbyHearingAidController idsMessagesCount](self, "idsMessagesCount")}];
    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "IDS messages count: %@", buf, 0xCu);
  }

  idsMessagesTimer = [(HUNearbyHearingAidController *)self idsMessagesTimer];
  [idsMessagesTimer invalidate];

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
  isiCloudPaired = [v3 isiCloudPaired];

  v5 = +[HUHearingAidSettings sharedInstance];
  pairedHearingAids = [v5 pairedHearingAids];
  v7 = (pairedHearingAids != 0) & (isiCloudPaired ^ 1);

  v8 = +[AXHearingAidDeviceController sharedController];
  isConnected = [v8 isConnected];

  v9 = +[AXHearingAidDeviceController sharedController];
  isConnecting = [v9 isConnecting];

  availableDevices = [(HUNearbyHearingAidController *)self availableDevices];
  v12 = [availableDevices count];

  v13 = +[AXHearingAidDeviceController sharedController];
  isBluetoothAvailable = [v13 isBluetoothAvailable];

  connectedPeer = [(HUNearbyHearingAidController *)self connectedPeer];
  connectingPeer = [(HUNearbyHearingAidController *)self connectingPeer];
  v17 = HCLogHearingHandoff();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110144;
    *v87 = isBluetoothAvailable;
    *&v87[4] = 1024;
    *&v87[6] = v7;
    LOWORD(v88) = 1024;
    *(&v88 + 2) = isiCloudPaired & 1;
    HIWORD(v88) = 1024;
    v89[0] = isConnected;
    LOWORD(v89[1]) = 1024;
    *(&v89[1] + 2) = isConnecting;
    _os_log_impl(&dword_1DA5E2000, v17, OS_LOG_TYPE_DEFAULT, "UpdateState BT: %d, Paired: %d iCloudPaired %d, Connected: %d, Connecting: %d", buf, 0x20u);
  }

  v18 = HCLogHearingHandoff();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    name = [connectedPeer name];
    [connectingPeer name];
    v20 = isBluetoothAvailable;
    v21 = connectedPeer;
    v23 = v22 = connectingPeer;
    *buf = 138412546;
    *v87 = name;
    *&v87[8] = 2112;
    v88 = v23;
    _os_log_impl(&dword_1DA5E2000, v18, OS_LOG_TYPE_DEFAULT, "connectedPeer: %@, connectingPeer: %@", buf, 0x16u);

    connectingPeer = v22;
    connectedPeer = v21;
    isBluetoothAvailable = v20;
  }

  v24 = HCLogHearingHandoff();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    descriptionForCurrentState = [(HUNearbyHearingAidController *)self descriptionForCurrentState];
    [(HUNearbyHearingAidController *)self descriptionForHandoffState];
    v26 = isBluetoothAvailable;
    v27 = connectedPeer;
    v29 = v28 = connectingPeer;
    *buf = 138412546;
    *v87 = descriptionForCurrentState;
    *&v87[8] = 2112;
    v88 = v29;
    _os_log_impl(&dword_1DA5E2000, v24, OS_LOG_TYPE_DEFAULT, "Processing state: %@, handoff: %@", buf, 0x16u);

    connectingPeer = v28;
    connectedPeer = v27;
    isBluetoothAvailable = v26;
  }

  v30 = [(HUNearbyHearingAidController *)self hasStarted]& isBluetoothAvailable;
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
    if ([(HUNearbyHearingAidController *)self processingHandoff]== 1 && ((isiCloudPaired & 1) == 0 || (([(HUNearbyHearingAidController *)self handoffReason]== 4) & v31) == 0))
    {
      v32 = HCLogHearingHandoff();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        hasStarted = [(HUNearbyHearingAidController *)self hasStarted];
        *buf = 67109888;
        *v87 = hasStarted;
        *&v87[4] = 1024;
        *&v87[6] = v7;
        LOWORD(v88) = 1024;
        *(&v88 + 2) = isBluetoothAvailable;
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
        hasStarted2 = [(HUNearbyHearingAidController *)self hasStarted];
        *buf = 67109888;
        *v87 = hasStarted2;
        *&v87[4] = 1024;
        *&v87[6] = v7;
        LOWORD(v88) = 1024;
        *(&v88 + 2) = isBluetoothAvailable;
        HIWORD(v88) = 1024;
        v89[0] = v12 != 0;
        _os_log_impl(&dword_1DA5E2000, v34, OS_LOG_TYPE_DEFAULT, "Transition request interrupted, Nearby started: %d, isPaired: %d, BT available: %d, hasPeers: %d", buf, 0x1Au);
      }

      [(HUNearbyHearingAidController *)self finishHandoff];
    }
  }

  hasStarted3 = [(HUNearbyHearingAidController *)self hasStarted];
  peerTimer = hasStarted3;
  if (hasStarted3 && v12)
  {
    if (isConnected)
    {
      if ([(HUNearbyHearingAidController *)self processingHandoff]== 2)
      {
LABEL_25:
        peerTimer = 4;
        goto LABEL_62;
      }

      processingHandoff = [(HUNearbyHearingAidController *)self processingHandoff];
      if (!connectedPeer)
      {
        if (processingHandoff == 1)
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

      if (processingHandoff == 1)
      {
        [(HUNearbyHearingAidController *)self processingHandoff];
LABEL_54:
        peerTimer = 5;
        goto LABEL_62;
      }

LABEL_39:
      peerTimer = 2;
      goto LABEL_62;
    }

    if (connectedPeer)
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
      peerTimer = 3;
      goto LABEL_62;
    }

    v39 = (isiCloudPaired & 1) != 0 && [(HUNearbyHearingAidController *)self processingHandoff]== 1 && [(HUNearbyHearingAidController *)self handoffReason]== 4;
    if (((v7 | v39) & 1) == 0)
    {
      goto LABEL_61;
    }

    if ((isBluetoothAvailable & 1) == 0)
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

    if (!connectingPeer || [(HUNearbyHearingAidController *)self state]== 4)
    {
LABEL_49:
      peerTimer = 1;
      goto LABEL_62;
    }

    if ([(HUNearbyHearingAidController *)self state]!= 2)
    {
      goto LABEL_61;
    }

    peerTimer = [(HUNearbyHearingAidController *)self peerTimer];

    if (peerTimer)
    {
      peerTimer2 = [(HUNearbyHearingAidController *)self peerTimer];
      isPending = [peerTimer2 isPending];

      if ((isPending & 1) == 0)
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
      peerTimer = 0;
      goto LABEL_62;
    }

    [(HUNearbyHearingAidController *)self checkPeerStateAfterTimout];
  }

LABEL_62:
  if (peerTimer == [(HUNearbyHearingAidController *)self state])
  {
LABEL_63:
    v45 = 0;
    goto LABEL_64;
  }

  if (((peerTimer == 0) & v7) == 1)
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
    if (peerTimer == 5)
    {
      v55 = 1;
      goto LABEL_79;
    }
  }

  state = [(HUNearbyHearingAidController *)self state];
  v55 = 1;
  if (peerTimer != 3 && state != 5)
  {
    v55 = [(HUNearbyHearingAidController *)self state]== 3;
  }

LABEL_79:
  v57 = HCLogHearingHandoff();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    v58 = [(HUNearbyHearingAidController *)self descriptionForState:peerTimer];
    descriptionForCurrentState2 = [(HUNearbyHearingAidController *)self descriptionForCurrentState];
    descriptionForHandoffState = [(HUNearbyHearingAidController *)self descriptionForHandoffState];
    *buf = 138412802;
    *v87 = v58;
    *&v87[8] = 2112;
    v88 = descriptionForCurrentState2;
    LOWORD(v89[0]) = 2112;
    *(v89 + 2) = descriptionForHandoffState;
    _os_log_impl(&dword_1DA5E2000, v57, OS_LOG_TYPE_DEFAULT, "Did update state new: %@, old: %@, handoff: %@", buf, 0x20u);
  }

  [(HUNearbyHearingAidController *)self setState:peerTimer];
  v61 = HCLogHearingHandoff();
  v62 = os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT);
  if (!v55)
  {
    if (!v62)
    {
LABEL_91:

      goto LABEL_92;
    }

    descriptionForCurrentState3 = [(HUNearbyHearingAidController *)self descriptionForCurrentState];
    *buf = 138412290;
    *v87 = descriptionForCurrentState3;
    _os_log_impl(&dword_1DA5E2000, v61, OS_LOG_TYPE_DEFAULT, "Skipping sending ControllerConnected: %@", buf, 0xCu);
LABEL_90:

    goto LABEL_91;
  }

  if (v62)
  {
    descriptionForCurrentState4 = [(HUNearbyHearingAidController *)self descriptionForCurrentState];
    *buf = 138412290;
    *v87 = descriptionForCurrentState4;
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
    descriptionForCurrentState3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HUNearbyHearingAidController state](self, "state")}];
    v83 = descriptionForCurrentState3;
    v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
    [v61 sendSCIDSMessage:v70 toDevice:0];

    goto LABEL_90;
  }

LABEL_92:
  v45 = 1;
  if (peerTimer > 2)
  {
    if (peerTimer != 3)
    {
      if (peerTimer != 4)
      {
        goto LABEL_64;
      }

      goto LABEL_98;
    }
  }

  else
  {
    if (peerTimer != 1)
    {
      if (peerTimer != 2)
      {
        goto LABEL_64;
      }

LABEL_98:
      v71 = HCLogHearingHandoff();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        name2 = [connectedPeer name];
        name3 = [connectingPeer name];
        *buf = 138412546;
        *v87 = name2;
        *&v87[8] = 2112;
        v88 = name3;
        _os_log_impl(&dword_1DA5E2000, v71, OS_LOG_TYPE_DEFAULT, "NearbyHearingAidController: Disconnect, Connected peer: %@, Connecting Peer: %@", buf, 0x16u);
      }

      v45 = 1;
      [(HUNearbyHearingAidController *)self sendConnectionToCompanionIfPossible:1];
      [(HUNearbyHearingAidController *)self disconnectFromPairedDevice];
      goto LABEL_64;
    }

    if (!isBluetoothAvailable)
    {
      goto LABEL_64;
    }
  }

  v74 = +[AXHearingAidDeviceController sharedController];
  pairedHearingDevice = [v74 pairedHearingDevice];

  v76 = HCLogHearingHandoff();
  if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
  {
    name4 = [pairedHearingDevice name];
    name5 = [connectedPeer name];
    name6 = [connectingPeer name];
    *buf = 138412802;
    *v87 = name4;
    *&v87[8] = 2112;
    v88 = name5;
    LOWORD(v89[0]) = 2112;
    *(v89 + 2) = name6;
    _os_log_impl(&dword_1DA5E2000, v76, OS_LOG_TYPE_DEFAULT, "NearbyHearingAidController: Connect to %@, Connected peer: %@, Connecting Peer: %@", buf, 0x20u);
  }

  [pairedHearingDevice connect];
  v45 = 1;
LABEL_64:
  peerTimer3 = [(HUNearbyHearingAidController *)self peerTimer];
  if (peerTimer3)
  {
    v47 = peerTimer3;
    state2 = [(HUNearbyHearingAidController *)self state];

    if (state2 != 2 || connectedPeer)
    {
      v49 = HCLogHearingHandoff();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        peerTimer4 = [(HUNearbyHearingAidController *)self peerTimer];
        isPending2 = [peerTimer4 isPending];
        *buf = 67109120;
        *v87 = isPending2;
        _os_log_impl(&dword_1DA5E2000, v49, OS_LOG_TYPE_DEFAULT, "NearbyHearingAidController: Cancel and Destroy peerTimer, is pending %d", buf, 8u);
      }

      peerTimer5 = [(HUNearbyHearingAidController *)self peerTimer];
      [peerTimer5 cancel];

      [(HUNearbyHearingAidController *)self setPeerTimer:0];
    }
  }

  v53 = *MEMORY[0x1E69E9840];
  return v45;
}

- (void)updateState
{
  deviceUpdatesQueue = [(HUDeviceController *)self deviceUpdatesQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__HUNearbyHearingAidController_updateState__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(deviceUpdatesQueue, block);
}

- (id)descriptionForState:(int64_t)state
{
  if (state > 5)
  {
    return @"N/A";
  }

  else
  {
    return off_1E85CA638[state];
  }
}

- (id)descriptionForCurrentState
{
  state = [(HUNearbyHearingAidController *)self state];

  return [(HUNearbyHearingAidController *)self descriptionForState:state];
}

- (id)availableDevices
{
  v2 = +[HUNearbyController sharedInstance];
  nearbyDevices = [v2 nearbyDevices];

  return nearbyDevices;
}

- (void)logAvailableDevicesWithTitle:(id)title
{
  v25 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  isInternalInstall = [MEMORY[0x1E69A4560] isInternalInstall];
  availableDevices = HCLogHearingAids();
  v7 = os_log_type_enabled(availableDevices, OS_LOG_TYPE_DEFAULT);
  if (isInternalInstall)
  {
    if (v7)
    {
      *buf = 138412290;
      v21 = titleCopy;
      _os_log_impl(&dword_1DA5E2000, availableDevices, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    availableDevices = [(HUNearbyHearingAidController *)self availableDevices];
    v8 = [availableDevices countByEnumeratingWithState:&v16 objects:v24 count:16];
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
            objc_enumerationMutation(availableDevices);
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

        v9 = [availableDevices countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v9);
    }
  }

  else if (v7)
  {
    availableDevices2 = [(HUNearbyHearingAidController *)self availableDevices];
    *buf = 138412546;
    v21 = titleCopy;
    v22 = 2112;
    v23 = availableDevices2;
    _os_log_impl(&dword_1DA5E2000, availableDevices, OS_LOG_TYPE_DEFAULT, "%@ - %@", buf, 0x16u);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)logDevices:(id)devices withTitle:(id)title fullInfo:(BOOL)info
{
  infoCopy = info;
  v29 = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  titleCopy = title;
  if (infoCopy)
  {
    v9 = [devicesCopy mutableCopy];
  }

  else
  {
    v9 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = devicesCopy;
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
          name = [v15 name];
          if (name)
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
      v25 = titleCopy;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&dword_1DA5E2000, v18, OS_LOG_TYPE_DEFAULT, "%@ devices: %@", buf, 0x16u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (int64_t)connectionStateForDevice:(id)device
{
  deviceCopy = device;
  v4 = [deviceCopy stateForDomain:@"com.apple.hearing.hearingaids.connection"];
  if (v4)
  {
    v5 = HCLogHearingAids();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(HUNearbyHearingAidController *)v4 connectionStateForDevice:deviceCopy];
    }
  }

  integerValue = [v4 integerValue];

  return integerValue;
}

- (void)setConnectionState:(int64_t)state forDevice:(id)device
{
  deviceCopy = device;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  [deviceCopy setState:v6 forDomain:@"com.apple.hearing.hearingaids.connection"];

  v7 = HCLogHearingAids();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [HUNearbyHearingAidController setConnectionState:deviceCopy forDevice:?];
  }
}

- (unint64_t)messagePriorityForDevice:(id)device
{
  deviceCopy = device;
  v4 = [deviceCopy stateForDomain:@"com.apple.hearing.hearingaids.priority"];
  if (v4)
  {
    v5 = HCLogHearingAids();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(HUNearbyHearingAidController *)v4 messagePriorityForDevice:deviceCopy];
    }
  }

  integerValue = [v4 integerValue];

  return integerValue;
}

- (void)setMessagePriority:(unint64_t)priority forDevice:(id)device
{
  v16 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v6 = HCLogHearingAids();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:priority];
    name = [deviceCopy name];
    v12 = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = name;
    _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "setMessagePriority: %@ for device: %@", &v12, 0x16u);
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:priority];
  [deviceCopy setState:v9 forDomain:@"com.apple.hearing.hearingaids.priority"];

  v10 = HCLogHearingAids();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [HUNearbyHearingAidController setMessagePriority:deviceCopy forDevice:?];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)peerWithState:(int64_t)state
{
  availableDevices = [(HUNearbyHearingAidController *)self availableDevices];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__HUNearbyHearingAidController_peerWithState___block_invoke;
  v9[3] = &unk_1E85CA4E0;
  v9[4] = self;
  v9[5] = state;
  v6 = [availableDevices indexOfObjectPassingTest:v9];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [availableDevices objectAtIndex:v6];
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
  selfCopy = self;
  v3 = MEMORY[0x1E696AEC0];
  connectedPeer = [(HUNearbyHearingAidController *)self connectedPeer];
  v5 = [v3 stringWithFormat:@"Checking connection %@", connectedPeer];
  [(HUNearbyHearingAidController *)selfCopy logAvailableDevicesWithTitle:v5];

  connectedPeer2 = [(HUNearbyHearingAidController *)selfCopy connectedPeer];
  LOBYTE(selfCopy) = connectedPeer2 != 0;

  return selfCopy;
}

- (void)checkPeerStateAfterTimout
{
  peerTimer = [(HUNearbyHearingAidController *)self peerTimer];

  if (!peerTimer)
  {
    v4 = objc_alloc(MEMORY[0x1E6988780]);
    deviceUpdatesQueue = [(HUDeviceController *)self deviceUpdatesQueue];
    v6 = [v4 initWithTargetSerialQueue:deviceUpdatesQueue];
    [(HUNearbyHearingAidController *)self setPeerTimer:v6];

    peerTimer2 = [(HUNearbyHearingAidController *)self peerTimer];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__HUNearbyHearingAidController_checkPeerStateAfterTimout__block_invoke;
    v10[3] = &unk_1E85C9F60;
    v10[4] = self;
    [peerTimer2 afterDelay:v10 processBlock:7.5];

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

- (void)connectedPeerWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    deviceUpdatesQueue = [(HUDeviceController *)self deviceUpdatesQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__HUNearbyHearingAidController_connectedPeerWithCompletion___block_invoke;
    v6[3] = &unk_1E85CA508;
    v6[4] = self;
    v7 = completionCopy;
    dispatch_async(deviceUpdatesQueue, v6);
  }
}

void __60__HUNearbyHearingAidController_connectedPeerWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) connectedPeer];
  (*(v1 + 16))(v1, v2);
}

- (id)devicesFromDevices:(id)devices withMessagePriority:(unint64_t)priority
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__HUNearbyHearingAidController_devicesFromDevices_withMessagePriority___block_invoke;
  v6[3] = &unk_1E85CA4E0;
  v6[4] = self;
  v6[5] = priority;
  v4 = [devices ax_filteredArrayUsingBlock:v6];

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
  localDevice = [(HUNearbyHearingAidController *)self localDevice];
  if (!localDevice)
  {
    v4 = +[HUHearingAidSettings sharedInstance];
    pairedHearingAids = [v4 pairedHearingAids];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [[AXRemoteHearingAidDevice alloc] initWithPersistentRepresentation:pairedHearingAids];
      [(AXRemoteHearingAidDevice *)v6 setUpdateDelegate:self];
      [(HUNearbyHearingAidController *)self setLocalDevice:v6];
    }
  }

  return localDevice;
}

- (void)sendMessagesPriorityHighForClient:(id)client
{
  clientCopy = client;
  deviceUpdatesQueue = [(HUDeviceController *)self deviceUpdatesQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__HUNearbyHearingAidController_sendMessagesPriorityHighForClient___block_invoke;
  v7[3] = &unk_1E85C9F38;
  v8 = clientCopy;
  selfCopy = self;
  v6 = clientCopy;
  dispatch_async(deviceUpdatesQueue, v7);
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

- (void)sendMessagesPriorityDefaultForClient:(id)client
{
  clientCopy = client;
  deviceUpdatesQueue = [(HUDeviceController *)self deviceUpdatesQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__HUNearbyHearingAidController_sendMessagesPriorityDefaultForClient___block_invoke;
  v7[3] = &unk_1E85C9F38;
  v8 = clientCopy;
  selfCopy = self;
  v6 = clientCopy;
  dispatch_async(deviceUpdatesQueue, v7);
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

- (void)sendMessagesPriority:(unint64_t)priority
{
  v15 = *MEMORY[0x1E69E9840];
  [(HUNearbyHearingAidController *)self setDeviceMessagePriority:priority];
  v4 = +[HUHearingAidSettings sharedInstance];
  pairedHearingAids = [v4 pairedHearingAids];

  if (pairedHearingAids)
  {
    v6 = HCLogHearingAids();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      descriptionForCurrentMessagePriority = [(HUNearbyHearingAidController *)self descriptionForCurrentMessagePriority];
      *buf = 138412290;
      v14 = descriptionForCurrentMessagePriority;
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

- (void)clientRemoved:(id)removed
{
  v4 = [removed pid];
  deviceUpdatesQueue = [(HUDeviceController *)self deviceUpdatesQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__HUNearbyHearingAidController_clientRemoved___block_invoke;
  v6[3] = &unk_1E85CA530;
  v6[4] = self;
  v7 = v4;
  dispatch_async(deviceUpdatesQueue, v6);
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
  pairedHearingAids = [v3 pairedHearingAids];

  if (pairedHearingAids)
  {
    deviceUpdatesQueue = [(HUDeviceController *)self deviceUpdatesQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__HUNearbyHearingAidController_sendConnectionUpdateToPeers__block_invoke;
    block[3] = &unk_1E85C9F60;
    block[4] = self;
    dispatch_async(deviceUpdatesQueue, block);
  }
}

void __59__HUNearbyHearingAidController_sendConnectionUpdateToPeers__block_invoke(uint64_t a1)
{
  [*(a1 + 32) sendConnectionToCompanionIfPossible];
  [*(a1 + 32) updateStateOnDeviceQueue];
  v2 = [*(a1 + 32) delegate];
  [v2 availableRemoteControllersDidChange];
}

- (void)sendStateMessageToAllDevices:(id)devices isUrgent:(BOOL)urgent
{
  urgentCopy = urgent;
  devicesCopy = devices;
  [(HUNearbyHearingAidController *)self setIdsMessagesCount:[(HUNearbyHearingAidController *)self idsMessagesCount]+ 1];
  v7 = +[HUNearbyController sharedInstance];
  v9 = v7;
  if (urgentCopy)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  [v7 sendMessage:devicesCopy toDevicesWithDomain:@"com.apple.hearing.hearingaids" withPriority:v8];
}

- (void)sendMessageToAllDevices:(id)devices messagePriority:(unint64_t)priority
{
  devicesCopy = devices;
  v6 = +[HUNearbyController sharedInstance];
  [v6 sendMessage:devicesCopy toDevicesWithDomain:@"com.apple.hearing.hearingaids" withPriority:priority];
}

- (void)sendStateMessage:(id)message toDevices:(id)devices isUrgent:(BOOL)urgent
{
  urgentCopy = urgent;
  devicesCopy = devices;
  messageCopy = message;
  [(HUNearbyHearingAidController *)self setIdsMessagesCount:[(HUNearbyHearingAidController *)self idsMessagesCount]+ 1];
  v10 = +[HUNearbyController sharedInstance];
  v12 = v10;
  if (urgentCopy)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  [v10 sendMessage:messageCopy withDomain:@"com.apple.hearing.hearingaids" toDevices:devicesCopy withPriority:v11];
}

- (void)sendMessage:(id)message toDevices:(id)devices messagePriority:(unint64_t)priority
{
  devicesCopy = devices;
  messageCopy = message;
  v9 = +[HUNearbyController sharedInstance];
  [v9 sendMessage:messageCopy withDomain:@"com.apple.hearing.hearingaids" toDevices:devicesCopy withPriority:priority];
}

- (void)sendMessage:(id)message toDevices:(id)devices
{
  devicesCopy = devices;
  messageCopy = message;
  v7 = +[HUNearbyController sharedInstance];
  [v7 sendMessage:messageCopy withDomain:@"com.apple.hearing.hearingaids" toDevices:devicesCopy withPriority:1];
}

- (void)sendWriteToAllDevices:(id)devices
{
  devicesCopy = devices;
  deviceUpdatesQueue = [(HUDeviceController *)self deviceUpdatesQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__HUNearbyHearingAidController_sendWriteToAllDevices___block_invoke;
  v7[3] = &unk_1E85C9F38;
  v7[4] = self;
  v8 = devicesCopy;
  v6 = devicesCopy;
  dispatch_async(deviceUpdatesQueue, v7);
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

- (void)sendWrite:(id)write toDevices:(id)devices
{
  v20 = *MEMORY[0x1E69E9840];
  writeCopy = write;
  devicesCopy = devices;
  v8 = devicesCopy;
  if (writeCopy && [devicesCopy count])
  {
    v9 = MEMORY[0x1E695DF20];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:8];
    v11 = [v9 dictionaryWithObject:writeCopy forKey:v10];

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

    [(HUNearbyHearingAidController *)self collectPropertyUpdatesFromPayload:writeCopy];
    sendPropertyUpdatesLowTimer = [(HUNearbyHearingAidController *)self sendPropertyUpdatesLowTimer];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __52__HUNearbyHearingAidController_sendWrite_toDevices___block_invoke;
    v16[3] = &unk_1E85C9F38;
    v16[4] = self;
    v17 = v8;
    [sendPropertyUpdatesLowTimer afterDelay:v16 processBlock:4.0];
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

- (void)writeValue:(id)value forProperty:(unint64_t)property andDeviceID:(id)d toDevices:(id)devices
{
  v20[1] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  dCopy = d;
  devicesCopy = devices;
  if (valueCopy && [dCopy length])
  {
    v19 = dCopy;
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:property];
    v17 = v13;
    v18 = valueCopy;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v20[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    [(HUNearbyHearingAidController *)self sendWrite:v15 toDevices:devicesCopy];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)collectPropertyUpdatesFromPayload:(id)payload
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __66__HUNearbyHearingAidController_collectPropertyUpdatesFromPayload___block_invoke;
  v3[3] = &unk_1E85CA558;
  v3[4] = self;
  [payload enumerateKeysAndObjectsUsingBlock:v3];
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

- (id)device:(id)device didReceiveMessage:(id)message
{
  v29 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  messageCopy = message;
  v8 = HCLogHearingAids();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    *&buf[4] = [(HUNearbyHearingAidController *)self state];
    *&buf[12] = 2112;
    *&buf[14] = deviceCopy;
    *&buf[22] = 2112;
    v28 = messageCopy;
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __57__HUNearbyHearingAidController_device_didReceiveMessage___block_invoke;
  v17[3] = &unk_1E85CA580;
  v10 = deviceCopy;
  v18 = v10;
  selfCopy = self;
  v20 = buf;
  v21 = &v22;
  [messageCopy enumerateKeysAndObjectsUsingBlock:v17];
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

  return dictionary;
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

- (void)updateResponse:(id)response withState:(int64_t)state
{
  responseCopy = response;
  v7 = [responseCopy objectForKey:&unk_1F5623998];

  if (!v7)
  {
    [(HUNearbyHearingAidController *)self setIdsMessagesCount:[(HUNearbyHearingAidController *)self idsMessagesCount]+ 1];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  [responseCopy setObject:v8 forKey:&unk_1F5623998];
}

- (void)validateResponse:(id)response
{
  v13 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  v5 = [responseCopy objectForKey:&unk_1F5623998];
  v6 = v5;
  if (v5)
  {
    unsignedIntegerValue = [v5 unsignedIntegerValue];
    if (unsignedIntegerValue != [(HUNearbyHearingAidController *)self state])
    {
      [(HUNearbyHearingAidController *)self updateResponse:responseCopy withState:[(HUNearbyHearingAidController *)self state]];
    }

    v8 = HCLogHearingHandoff();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      descriptionForCurrentState = [(HUNearbyHearingAidController *)self descriptionForCurrentState];
      v11 = 138412290;
      v12 = descriptionForCurrentState;
      _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "Response ControllerConnected state: %@", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)processHandoffMessageFromPeer:(id)peer state:(id)state
{
  v27 = *MEMORY[0x1E69E9840];
  peerCopy = peer;
  stateCopy = state;
  v8 = HCLogHearingHandoff();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    timeStamp = [(HUNearbyHearingAidController *)self timeStamp];
    name = [peerCopy name];
    *buf = 138412802;
    v22 = stateCopy;
    v23 = 2112;
    v24 = timeStamp;
    v25 = 2112;
    v26 = name;
    _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "Received ControllerConnectWithReason: %@, time: %@, from device: %@", buf, 0x20u);
  }

  v11 = stateCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 1;
    goto LABEL_8;
  }

  integerValue = [v11 integerValue];
  v13 = integerValue;
  if ((integerValue - 1) < 5)
  {
LABEL_8:
    [(HUNearbyHearingAidController *)self relinquishConnectionForReason:v13 toDevice:peerCopy];
    goto LABEL_9;
  }

  if (!integerValue)
  {
    v14 = dispatch_time(0, 1000000000);
    deviceUpdatesQueue = [(HUDeviceController *)self deviceUpdatesQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__HUNearbyHearingAidController_processHandoffMessageFromPeer_state___block_invoke;
    block[3] = &unk_1E85C9F60;
    block[4] = self;
    dispatch_after(v14, deviceUpdatesQueue, block);
  }

LABEL_9:
  delegate = [(HUNearbyHearingAidController *)self delegate];

  if (delegate)
  {
    delegate2 = [(HUNearbyHearingAidController *)self delegate];
    [delegate2 availableRemoteControllersDidChange];

    v18 = HCLogHearingAids();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v18, OS_LOG_TYPE_DEFAULT, "Handoff requested. Updated available controllers", buf, 2u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)processStateMessageFromPeer:(id)peer state:(id)state
{
  v26 = *MEMORY[0x1E69E9840];
  peerCopy = peer;
  integerValue = [state integerValue];
  v8 = HCLogHearingHandoff();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    name = [peerCopy name];
    v10 = [(HUNearbyHearingAidController *)self descriptionForState:integerValue];
    v22 = 138412546;
    v23 = name;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "Received ControllerConnected peer: %@, peer state: %@", &v22, 0x16u);
  }

  [(HUNearbyHearingAidController *)self setConnectionState:integerValue forDevice:peerCopy];
  updateStateOnDeviceQueue = [(HUNearbyHearingAidController *)self updateStateOnDeviceQueue];
  v12 = +[AXHearingAidDeviceController sharedController];
  isConnected = [v12 isConnected];

  if ((isConnected & 1) == 0)
  {
    hearingDevice = [(HUNearbyHearingAidController *)self hearingDevice];
    didLoadRequiredPeerProperties = [hearingDevice didLoadRequiredPeerProperties];

    if ((didLoadRequiredPeerProperties & 1) == 0)
    {
      hearingDevice2 = [(HUNearbyHearingAidController *)self hearingDevice];
      [hearingDevice2 loadRequiredProperties];
    }
  }

  delegate = [(HUNearbyHearingAidController *)self delegate];

  if (delegate)
  {
    delegate2 = [(HUNearbyHearingAidController *)self delegate];
    [delegate2 availableRemoteControllersDidChange];

    v19 = HCLogHearingAids();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_1DA5E2000, v19, OS_LOG_TYPE_DEFAULT, "Controller state changed. Updated available controllers", &v22, 2u);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return updateStateOnDeviceQueue;
}

- (void)processReadMessageFromPeerDevice:(id)device value:(id)value
{
  v18[1] = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  valueCopy = value;
  v8 = +[AXHAController sharedController];
  pairedDeviceUUID = [v8 pairedDeviceUUID];

  if (deviceCopy)
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
        v16 = deviceCopy;
        [valueCopy enumerateKeysAndObjectsUsingBlock:v15];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(HUNearbyHearingAidController *)self processReadProperty:valueCopy fromPeerDevice:deviceCopy];
        }
      }
    }

    else if ([(HUNearbyHearingAidController *)self state]== 2)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [valueCopy integerValue] == 0x1000000)
      {
        hearingDevice = [(HUNearbyHearingAidController *)self hearingDevice];
        v12 = [hearingDevice valueForProperty:0x1000000];
        v18[0] = deviceCopy;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
        [(HUNearbyHearingAidController *)self writeValue:v12 forProperty:0x1000000 andDeviceID:pairedDeviceUUID toDevices:v13];
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

- (void)processReadProperty:(id)property fromPeerDevice:(id)device
{
  v15[1] = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  propertyCopy = property;
  v8 = +[AXHAController sharedController];
  pairedDeviceUUID = [v8 pairedDeviceUUID];

  unsignedLongLongValue = [propertyCopy unsignedLongLongValue];
  v11 = +[AXHearingAidDeviceController sharedController];
  v12 = [v11 valueForProperty:unsignedLongLongValue forDeviceID:pairedDeviceUUID];

  v15[0] = deviceCopy;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

  [(HUNearbyHearingAidController *)self writeValue:v12 forProperty:unsignedLongLongValue andDeviceID:pairedDeviceUUID toDevices:v13];
  v14 = *MEMORY[0x1E69E9840];
}

- (void)processWriteMessageWithValue:(id)value
{
  v29 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v5 = +[AXHAController sharedController];
  pairedDeviceUUID = [v5 pairedDeviceUUID];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [valueCopy count] == 1)
  {
    if ([(HUNearbyHearingAidController *)self state]== 5)
    {
      v7 = +[AXHearingAidDeviceController sharedController];
      hearingDevice = [v7 hearingAidForDeviceID:pairedDeviceUUID];

      selfCopy = +[AXHearingAidDeviceController sharedController];
    }

    else
    {
      hearingDevice = [(HUNearbyHearingAidController *)self hearingDevice];
      selfCopy = self;
      if ([(HUNearbyHearingAidController *)selfCopy isPeerConnectedToHearingDevice])
      {
        v10 = &unk_1F56239E0;
      }

      else
      {
        v10 = &unk_1F56239C8;
      }

      [hearingDevice setValue:v10 forProperty:0x200000];
    }

    v11 = valueCopy;
    allKeys = [v11 allKeys];
    lastObject = [allKeys lastObject];
    deviceUUID = [hearingDevice deviceUUID];
    v15 = [lastObject isEqualToString:deviceUUID];

    if (v15)
    {
      deviceUUID2 = [hearingDevice deviceUUID];
      v17 = [v11 objectForKey:deviceUUID2];

      v11 = v17;
    }

    else
    {
      v18 = HCLogHearingAids();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v26 = hearingDevice;
        v27 = 2112;
        v28 = v11;
        _os_log_impl(&dword_1DA5E2000, v18, OS_LOG_TYPE_DEFAULT, "Unknown device ID %@ - %@", buf, 0x16u);
      }
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __61__HUNearbyHearingAidController_processWriteMessageWithValue___block_invoke;
    v22[3] = &unk_1E85CA5A8;
    v23 = selfCopy;
    v24 = hearingDevice;
    v19 = hearingDevice;
    v20 = selfCopy;
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

- (void)scIDSServiceDevice:(id)device didReceiveMessage:(id)message
{
  v27 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  messageCopy = message;
  v8 = HCLogHearingHandoff();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = messageCopy;
    v25 = 2112;
    v26 = deviceCopy;
    _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "Received HearingAids Message %@ from device: %@", buf, 0x16u);
  }

  v9 = [messageCopy objectForKeyedSubscript:@"com.apple.hearing.hearingaids"];
  v10 = [v9 objectForKeyedSubscript:@"HCMessageIdentifierRemoteControllerConnectWithReason"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    deviceUpdatesQueue = [(HUDeviceController *)self deviceUpdatesQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__HUNearbyHearingAidController_scIDSServiceDevice_didReceiveMessage___block_invoke;
    block[3] = &unk_1E85CA468;
    block[4] = self;
    v21 = v10;
    v22 = deviceCopy;
    dispatch_async(deviceUpdatesQueue, block);
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
      v26 = deviceCopy;
      _os_log_impl(&dword_1DA5E2000, v13, OS_LOG_TYPE_DEFAULT, "Update controllerState %@ for device: %@", buf, 0x16u);
    }

    deviceUpdatesQueue2 = [(HUDeviceController *)self deviceUpdatesQueue];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __69__HUNearbyHearingAidController_scIDSServiceDevice_didReceiveMessage___block_invoke_154;
    v17[3] = &unk_1E85CA468;
    v17[4] = self;
    v18 = deviceCopy;
    v19 = v12;
    dispatch_async(deviceUpdatesQueue2, v17);
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

- (void)scIDSServiceDidRemoveDevices:(id)devices
{
  v20 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  devicesCopy = devices;
  v5 = [devicesCopy countByEnumeratingWithState:&v13 objects:v19 count:16];
  delegate = devicesCopy;
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
          objc_enumerationMutation(devicesCopy);
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
          delegate = [(HUNearbyHearingAidController *)self delegate];
          [delegate availableRemoteControllersDidChange];
          goto LABEL_13;
        }
      }

      v7 = [devicesCopy countByEnumeratingWithState:&v13 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    delegate = devicesCopy;
  }

LABEL_13:

  v12 = *MEMORY[0x1E69E9840];
}

- (void)scIDSServiceDidAddDevices:(id)devices
{
  v17 = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  if ([devicesCopy count])
  {
    v5 = HCLogHearingHandoff();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      descriptionForCurrentState = [(HUNearbyHearingAidController *)self descriptionForCurrentState];
      v15 = 138412290;
      v16 = descriptionForCurrentState;
      _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "SC IDS Service Added, current state %@", &v15, 0xCu);
    }

    if ([(HUNearbyHearingAidController *)self state]== 5)
    {
      v7 = [devicesCopy count];
      v8 = HCLogHearingHandoff();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (v7 < 2)
      {
        if (v9)
        {
          v11 = [devicesCopy objectAtIndexedSubscript:0];
          name = [v11 name];
          v15 = 138412290;
          v16 = name;
          _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "SC IDS Service Sending PeerConnected to %@", &v15, 0xCu);
        }

        delegate = +[HUNearbyController sharedInstance];
        v13 = [devicesCopy objectAtIndexedSubscript:0];
        [delegate sendSCIDSMessage:&unk_1F5624488 toDevice:v13];
      }

      else
      {
        if (v9)
        {
          LOWORD(v15) = 0;
          _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "SC IDS Service Sending PeerConnected to all", &v15, 2u);
        }

        delegate = +[HUNearbyController sharedInstance];
        [delegate sendSCIDSMessage:&unk_1F5624460 toDevice:0];
      }
    }

    else
    {
      [(HUNearbyHearingAidController *)self updateStateOnDeviceQueue];
      delegate = [(HUNearbyHearingAidController *)self delegate];
      [delegate availableRemoteControllersDidChange];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)hearingAidForDeviceID:(id)d
{
  dCopy = d;
  hearingDevice = [(HUNearbyHearingAidController *)self hearingDevice];
  deviceUUID = [hearingDevice deviceUUID];
  v7 = [deviceUUID isEqualToString:dCopy];

  if (v7)
  {
    hearingDevice2 = [(HUNearbyHearingAidController *)self hearingDevice];
  }

  else
  {
    hearingDevice2 = 0;
  }

  return hearingDevice2;
}

- (void)updateProperty:(unint64_t)property forDeviceID:(id)d
{
  dCopy = d;
  v7 = +[HUHearingAidSettings sharedInstance];
  isiCloudPaired = [v7 isiCloudPaired];

  if (isiCloudPaired)
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
    v12[5] = property;
    [(HUNearbyHearingAidController *)self connectedPeerWithCompletion:v12];
  }

  v10.receiver = self;
  v10.super_class = HUNearbyHearingAidController;
  [(HUDeviceController *)&v10 updateProperty:property forDeviceID:dCopy];
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

- (void)writeValue:(id)value forProperty:(unint64_t)property andDeviceID:(id)d
{
  v27 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  dCopy = d;
  v10 = [(HUNearbyHearingAidController *)self hearingAidForDeviceID:dCopy];
  v11 = [v10 valueForProperty:property];
  v12 = [v11 isEqual:valueCopy];

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
      v15 = [v10 valueForProperty:property];
      *buf = 138412546;
      v24 = v15;
      v25 = 2112;
      v26 = valueCopy;
      _os_log_impl(&dword_1DA5E2000, v13, OS_LOG_TYPE_DEFAULT, "Writing %@ = %@", buf, 0x16u);
    }

    v22.receiver = self;
    v22.super_class = HUNearbyHearingAidController;
    [(HUDeviceController *)&v22 writeValue:valueCopy forProperty:property andDeviceID:dCopy];
    deviceUpdatesQueue = [(HUDeviceController *)self deviceUpdatesQueue];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __67__HUNearbyHearingAidController_writeValue_forProperty_andDeviceID___block_invoke;
    v18[3] = &unk_1E85CA5D0;
    v18[4] = self;
    v19 = valueCopy;
    propertyCopy = property;
    v20 = dCopy;
    dispatch_async(deviceUpdatesQueue, v18);
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