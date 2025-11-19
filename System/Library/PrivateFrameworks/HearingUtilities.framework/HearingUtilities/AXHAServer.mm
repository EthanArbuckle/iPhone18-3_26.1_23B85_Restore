@interface AXHAServer
+ (id)sharedInstance;
- (AXHAServer)init;
- (BOOL)backgroundSoundsPlaying;
- (NSArray)availableHearingAids;
- (void)_headphoneLevelDidUpdate:(id)a3 messageIdentifier:(unint64_t)a4;
- (void)_liveListenDidUpdate_BOOLValue:(id)a3;
- (void)_liveListenDidUpdate_enumValue:(id)a3;
- (void)_registerConnectionStateBlock:(id)a3 listenerHash:(id)a4;
- (void)_registerListener:(id)a3 forLiveHeadphoneLevelHandler:(id)a4 messageIdentifier:(unint64_t)a5;
- (void)_registerUpdateBlock:(id)a3 forIdentifier:(unint64_t)a4 listenerHash:(id)a5;
- (void)_unregisterUpdateListenerHash:(id)a3;
- (void)availableDevicesDidUpdate:(id)a3;
- (void)cancelHearingAidConnectionRequest;
- (void)comfortSoundsAssetsDidUpdate:(id)a3;
- (void)connectToControllerWithID:(id)a3;
- (void)controlMessageDidUpdate:(id)a3;
- (void)deviceDidUpdateProperty:(id)a3;
- (void)downloadComfortSoundAsset:(id)a3;
- (void)environmentalDosimetryDidUpdate:(id)a3;
- (void)handleMessageWithPayload:(id)a3 forIdentifier:(unint64_t)a4;
- (void)liveListenDidUpdate:(id)a3;
- (void)registerListener:(id)a3 forComfortSoundsModelUpdatesHandler:(id)a4;
- (void)registerListener:(id)a3 forConnectionStateHandler:(id)a4;
- (void)registerListener:(id)a3 forConnectionStateHandler:(id)a4 listenerHash:(id)a5;
- (void)registerListener:(id)a3 forControlMessageHandler:(id)a4;
- (void)registerListener:(id)a3 forLiveDosimetryUpdates:(BOOL)a4 withDoseHandler:(id)a5;
- (void)registerListener:(id)a3 forLiveListenHandler:(id)a4;
- (void)registerListener:(id)a3 forLiveListenLevelsHandler:(id)a4;
- (void)registerListener:(id)a3 forPropertyUpdateHandler:(id)a4;
- (void)registerListener:(id)a3 forRemoteLiveHeadphoneLevelChangesHandler:(id)a4;
- (void)registerListener:(id)a3 forRemoteLiveHeadphoneLevelHandler:(id)a4;
- (void)registerResponseBlock:(id)a3 forUUID:(id)a4;
- (void)registerUpdateBlock:(id)a3 forIdentifier:(unint64_t)a4 withListener:(id)a5;
- (void)registerUpdateBlock:(id)a3 forIdentifier:(unint64_t)a4 withListener:(id)a5 listenerHash:(id)a6;
- (void)removeComfortSoundAsset:(id)a3;
- (void)requestHearingAidConnectionWithReason:(int64_t)a3;
- (void)requestHearingAidReachabilityStatus;
- (void)requestNoiseBuffersForTimeInterval:(double)a3 withHandler:(id)a4;
- (void)reregisterForComfortSoundsAssetsUpdatesIfNeeded;
- (void)resetConnection;
- (void)sendMessagesPriorityDefault;
- (void)sendMessagesPriorityHigh;
- (void)setAvailableHearingAids:(id)a3;
- (void)setupListenerHelperForListener:(id)a3 withAddress:(id)a4;
- (void)shouldRestartOnInterruption:(id)a3;
- (void)startComfortSoundsPreview;
- (void)startLiveListen;
- (void)startLiveListenRewind;
- (void)startObservingRemoteLiveListenUpdates;
- (void)startServerWithDelegate:(id)a3;
- (void)stopComfortSoundsPreview;
- (void)stopLiveListen;
- (void)stopLiveListenRewind;
- (void)stopObservingRemoteLiveListenUpdates;
- (void)unregisterAvailableDevicesListener:(id)a3;
- (void)unregisterComfortSoundsModelUpdatesHandler:(id)a3;
- (void)unregisterControlMessageHandler:(id)a3;
- (void)unregisterDoseHandler:(id)a3;
- (void)unregisterLiveListenLevelListener:(id)a3;
- (void)unregisterLiveListenListener:(id)a3;
- (void)unregisterPropertyUpdateListener:(id)a3;
- (void)unregisterUpdateListener:(id)a3;
- (void)unregisterUpdateListenerHash:(id)a3;
- (void)updateProperty:(unint64_t)a3 forDeviceID:(id)a4;
- (void)writeValue:(id)a3 forProperty:(unint64_t)a4 andDeviceID:(id)a5;
@end

@implementation AXHAServer

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[AXHAServer sharedInstance];
  }

  v3 = sharedInstance_Server;

  return v3;
}

uint64_t __28__AXHAServer_sharedInstance__block_invoke()
{
  sharedInstance_Server = objc_alloc_init(AXHAServer);

  return MEMORY[0x1EEE66BB8]();
}

- (AXHAServer)init
{
  v17[1] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = AXHAServer;
  v2 = [(HCServer *)&v15 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    [(AXHAServer *)v2 setUpdates:v3];

    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    responseBlocks = v2->_responseBlocks;
    v2->_responseBlocks = v4;

    v6 = objc_opt_new();
    connectionStateBlocks = v2->_connectionStateBlocks;
    v2->_connectionStateBlocks = v6;

    v8 = +[HUHearingAidSettings sharedInstance];
    v9 = [v8 pairedHearingAids];

    if (v9)
    {
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:2048];
      v16 = v10;
      v17[0] = MEMORY[0x1E695E118];
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      [(HCServer *)v2 sendMessageWithPayload:v11 andIdentifier:2048];
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, shouldHandleServerStarting, @"com.apple.accessibility.hearing.server.ready", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)shouldRestartOnInterruption:(id)a3
{
  v3 = a3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__AXHAServer_shouldRestartOnInterruption___block_invoke;
  v5[3] = &unk_1E85CA670;
  v6 = v3;
  v4 = v3;
  hearingDeamonShouldBeRunning(v5);
}

- (void)startServerWithDelegate:(id)a3
{
  v4.receiver = self;
  v4.super_class = AXHAServer;
  [(HCServer *)&v4 startServerWithDelegate:a3];
  [(HCServer *)self sendMessageWithPayload:&unk_1F56244B0 andIdentifier:4];
  [(HCServer *)self sendMessageWithPayload:&unk_1F56244D8 andIdentifier:0x10000];
}

- (void)resetConnection
{
  v8.receiver = self;
  v8.super_class = AXHAServer;
  [(HCServer *)&v8 resetConnection];
  v3 = [(AXHAServer *)self updates];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__AXHAServer_resetConnection__block_invoke;
  v7[3] = &unk_1E85CA698;
  v7[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v7];

  v4 = [(AXHAServer *)self availableHearingAids];
  v5 = [v4 lastObject];
  v6 = [v5 deviceUUID];
  [(AXHAServer *)self updateProperty:0xD07D42105FCLL forDeviceID:v6];
}

void __29__AXHAServer_resetConnection__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 count])
  {
    [*(a1 + 32) sendMessageWithPayload:&unk_1F5624500 andIdentifier:{objc_msgSend(v5, "unsignedLongLongValue")}];
  }
}

- (void)handleMessageWithPayload:(id)a3 forIdentifier:(unint64_t)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v30.receiver = self;
  v30.super_class = AXHAServer;
  [(HCServer *)&v30 handleMessageWithPayload:v6 forIdentifier:a4];
  if (a4 == 0x40000)
  {
    [(AXHAServer *)self environmentalDosimetryDidUpdate:v6];
    goto LABEL_52;
  }

  v7 = HCLogHearingAids();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = messageIdentifierDescription();
    *buf = 138412546;
    v33 = v8;
    v34 = 2112;
    v35 = v6;
    _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "AXHAServer: Handle incoming message ID: %@ %@", buf, 0x16u);
  }

  if (a4 <= 511)
  {
    if (a4 <= 127)
    {
      v9 = a4 - 2;
      if (a4 - 2 > 0x3E)
      {
LABEL_45:
        if (a4 == 0x8000000000000000)
        {
          [(AXHAServer *)self controlMessageDidUpdate:v6];
        }

        goto LABEL_52;
      }

      if (((1 << v9) & 0x45) == 0)
      {
        if (((1 << v9) & 0x4000000000004000) != 0)
        {
          [(AXHAServer *)self deviceDidUpdateProperty:v6];
          goto LABEL_52;
        }

        if (a4 == 32)
        {
          [(AXHAServer *)self availableDevicesDidUpdate:v6];
          goto LABEL_52;
        }

        goto LABEL_45;
      }

      goto LABEL_33;
    }

    if (a4 != 128)
    {
      if (a4 != 256)
      {
        goto LABEL_52;
      }

      goto LABEL_33;
    }

    goto LABEL_36;
  }

  if (a4 >= 0x400000)
  {
    if (a4 > 0x1FFFFFF)
    {
      if (a4 != 0x2000000 && a4 != 0x4000000)
      {
        if (a4 != 0x8000000)
        {
          goto LABEL_52;
        }

LABEL_33:
        v24 = HCLogHearingAids();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [AXHAServer handleMessageWithPayload:a4 forIdentifier:v24];
        }

        goto LABEL_52;
      }

LABEL_36:
      [(AXHAServer *)self liveListenDidUpdate:v6];
      goto LABEL_52;
    }

    if (a4 != 0x400000)
    {
      if (a4 == 0x1000000)
      {
        [(AXHAServer *)self comfortSoundsAssetsDidUpdate:v6];
      }

      goto LABEL_52;
    }

    v25 = self;
    v26 = v6;
    v27 = 0x400000;
LABEL_49:
    [(AXHAServer *)v25 _headphoneLevelDidUpdate:v26 messageIdentifier:v27];
    goto LABEL_52;
  }

  if (a4 >= 0x100000)
  {
    if (a4 == 0x100000)
    {
      v25 = self;
      v26 = v6;
      v27 = 0x100000;
    }

    else
    {
      if (a4 != 0x200000)
      {
        goto LABEL_52;
      }

      v25 = self;
      v26 = v6;
      v27 = 0x200000;
    }

    goto LABEL_49;
  }

  if (a4 == 512)
  {
    goto LABEL_36;
  }

  if (a4 == 2048)
  {
    v10 = HCLogHearingAids();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v6;
      _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "AXHAServer: Hearing Device reachability state %@", buf, 0xCu);
    }

    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x4000];
    v12 = [v6 objectForKey:v11];

    v13 = [v12 objectForKey:&unk_1F5623A28];
    v14 = [v13 BOOLValue];

    v15 = [v12 objectForKey:&unk_1F5623A40];
    v16 = [v15 BOOLValue];

    v17 = [v12 objectForKey:*MEMORY[0x1E69A4548]];
    if (![v17 length])
    {

      v17 = 0;
    }

    [(AXHAServer *)self setHearingDeviceName:v17];
    [(AXHAServer *)self setHearingAidReachableForAudioTransfer:v16];
    if (v14 != [(AXHAServer *)self hearingAidConnectedOrReachable])
    {
      v18 = [(AXHAServer *)self availableHearingAids];
      v19 = [v18 firstObject];
      v20 = [v19 deviceUUID];
      [(AXHAServer *)self updateProperty:0x200000 forDeviceID:v20];

      v21 = [MEMORY[0x1E696AD88] defaultCenter];
      [v21 postNotificationName:@"com.apple.accessibility.hearingaid.nearby.devices.changed" object:0];
    }

    v22 = [v12 objectForKey:&unk_1F5623A58];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v22 length])
    {

      v22 = 0;
    }

    [(AXHAServer *)self setConnectedDeviceName:v22];
    [(AXHAServer *)self setHearingAidConnectedOrReachable:v14];
    if (v22)
    {
      v31 = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
      [(AXHAServer *)self setAvailableControllers:v23];
    }

    else
    {
      [(AXHAServer *)self setAvailableControllers:0];
    }
  }

LABEL_52:
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __53__AXHAServer_handleMessageWithPayload_forIdentifier___block_invoke;
  v29[3] = &unk_1E85CA6C0;
  v29[4] = self;
  [v6 enumerateKeysAndObjectsUsingBlock:v29];

  v28 = *MEMORY[0x1E69E9840];
}

void __53__AXHAServer_handleMessageWithPayload_forIdentifier___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [*(*(a1 + 32) + 56) objectForKey:a2];
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, v7);
  }
}

- (void)deviceDidUpdateProperty:(id)a3
{
  v4 = a3;
  v3 = v4;
  HCPerformSafeBlock();
}

void __38__AXHAServer_deviceDidUpdateProperty___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updates];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:4];
  v4 = [v2 objectForKey:v3];

  v5 = [*(a1 + 32) availableHearingAids];
  v6 = [v5 firstObject];

  if ([v6 isPaired])
  {
    v7 = [v6 hasConnection];
  }

  else
  {
    v7 = 0;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __38__AXHAServer_deviceDidUpdateProperty___block_invoke_2;
  v14[3] = &unk_1E85CA6E8;
  v15 = *(a1 + 40);
  [v4 enumerateObjectsUsingBlock:v14];
  if ([v6 isPaired] && v7 != objc_msgSend(v6, "hasConnection"))
  {
    v8 = +[HUUtilities sharedUtilities];
    [v8 clearAudioRoutes];
  }

  v9 = *(a1 + 40);
  v10 = [v9 allKeys];
  v11 = [v10 firstObject];
  v12 = [v9 objectForKey:v11];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __38__AXHAServer_deviceDidUpdateProperty___block_invoke_3;
    v13[3] = &unk_1E85CA710;
    v13[4] = *(a1 + 32);
    [v12 enumerateKeysAndObjectsUsingBlock:v13];
  }
}

void __38__AXHAServer_deviceDidUpdateProperty___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 lastObject];
  v3[2](v3, *(a1 + 32));
}

void __38__AXHAServer_deviceDidUpdateProperty___block_invoke_3(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a3;
  v7 = [a2 integerValue] == 0x200000;
  v8 = v12;
  if (v7)
  {
    v9 = [v12 firstObject];
    v10 = 1;
    if ([v9 intValue] != 2)
    {
      v11 = [v12 lastObject];
      v10 = [v11 intValue] == 2;
    }

    [*(a1 + 32) updateListenersWithConnectionStatus:v10];
    *a4 = 1;
    v8 = v12;
  }
}

- (void)availableDevicesDidUpdate:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v5 = [MEMORY[0x1E695DF70] array];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __40__AXHAServer_availableDevicesDidUpdate___block_invoke;
  v12[3] = &unk_1E85CA7A8;
  v12[4] = self;
  v6 = v5;
  v13 = v6;
  v14 = &v15;
  [v4 enumerateKeysAndObjectsUsingBlock:v12];
  [(AXHAServer *)self setAvailableHearingAids:v6];
  if ((v16[3] & 1) != 0 || ![v6 count])
  {
    v7 = [(AXHAServer *)self updates];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:2];
    v9 = [v7 objectForKey:v8];

    v10 = v9;
    v11 = v6;
    HCPerformSafeBlock();
  }

  _Block_object_dispose(&v15, 8);
}

void __40__AXHAServer_availableDevicesDidUpdate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [*(a1 + 32) availableHearingAids];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __40__AXHAServer_availableDevicesDidUpdate___block_invoke_2;
      v15[3] = &unk_1E85CA758;
      v8 = v5;
      v16 = v8;
      v9 = [v7 indexOfObjectPassingTest:v15];
      if (v9 == 0x7FFFFFFFFFFFFFFFLL || !v7)
      {
        v10 = [[AXRemoteHearingAidDevice alloc] initWithRemoteRepresentation:v6 andDeviceID:v8];
        [*(a1 + 40) addObject:v10];
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }

      else
      {
        v10 = [v7 objectAtIndex:v9];
        if (v10)
        {
          [*(a1 + 40) addObject:v10];
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __40__AXHAServer_availableDevicesDidUpdate___block_invoke_3;
          v12[3] = &unk_1E85CA780;
          v10 = v10;
          v11 = *(a1 + 48);
          v13 = v10;
          v14 = v11;
          [v6 enumerateKeysAndObjectsUsingBlock:v12];
        }
      }
    }
  }
}

uint64_t __40__AXHAServer_availableDevicesDidUpdate___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 availableEars];
  [*(a1 + 32) setValue:v6 forProperty:{objc_msgSend(v7, "unsignedLongLongValue")}];

  v9 = [v7 unsignedLongLongValue];
  result = propertyContainsProperty(v9, 8);
  if (result)
  {
    result = [*(a1 + 32) availableEars];
    if (result != v8)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  return result;
}

void __40__AXHAServer_availableDevicesDidUpdate___block_invoke_4(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __40__AXHAServer_availableDevicesDidUpdate___block_invoke_5;
  v2[3] = &unk_1E85CA6E8;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 enumerateObjectsUsingBlock:v2];
}

void __40__AXHAServer_availableDevicesDidUpdate___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 lastObject];
  v3[2](v3, *(a1 + 32));
}

- (void)liveListenDidUpdate:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    [(AXHAServer *)self _liveListenDidUpdate_enumValue:v4];
  }

  else
  {
    [(AXHAServer *)self _liveListenDidUpdate_BOOLValue:v4];
  }
}

- (void)_liveListenDidUpdate_BOOLValue:(id)a3
{
  v4 = a3;
  v5 = [(AXHAServer *)self updates];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:256];
  v7 = [v5 objectForKey:v6];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:512];
  v9 = [v4 objectForKey:v8];
  [v9 doubleValue];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:1024];
  v11 = [v4 objectForKey:v10];

  [v11 BOOLValue];
  v13 = v7;
  v12 = v7;
  HCPerformSafeBlock();
}

uint64_t __45__AXHAServer__liveListenDidUpdate_BOOLValue___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__AXHAServer__liveListenDidUpdate_BOOLValue___block_invoke_2;
  v3[3] = &__block_descriptor_41_e24_v32__0__NSArray_8Q16_B24l;
  v3[4] = *(a1 + 40);
  v4 = *(a1 + 48);
  return [v1 enumerateObjectsUsingBlock:v3];
}

void __45__AXHAServer__liveListenDidUpdate_BOOLValue___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 lastObject];
  v3[2](v3, *(a1 + 40), *(a1 + 32));
}

- (void)_liveListenDidUpdate_enumValue:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = [v4 objectForKeyedSubscript:&unk_1F5623A70];
    [v5 doubleValue];

    v6 = [v4 objectForKeyedSubscript:&unk_1F5623A88];
    [v6 integerValue];

    v7 = [v4 objectForKeyedSubscript:&unk_1F5623AA0];
    [v7 BOOLValue];

    v8 = [v4 objectForKeyedSubscript:&unk_1F5623AB8];
    v9 = [(AXHAServer *)self updates];
    v10 = [v9 objectForKeyedSubscript:&unk_1F5623AD0];
    v11 = [v10 copy];

    v12 = v8;
    v13 = v11;
    HCPerformSafeBlock();
  }
}

void __45__AXHAServer__liveListenDidUpdate_enumValue___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v9 + 1) + 8 * v6) lastObject];
        v7[2](v7, *(a1 + 56), *(a1 + 64), *(a1 + 40), *(a1 + 48));

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)unregisterUpdateListener:(id)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  [(AXHAServer *)self unregisterUpdateListenerHash:v4];
}

- (void)unregisterUpdateListenerHash:(id)a3
{
  v4 = a3;
  v5 = [(HCServer *)self connectionQueue];

  if (v5)
  {
    v6 = [(HCServer *)self connectionQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43__AXHAServer_unregisterUpdateListenerHash___block_invoke;
    v7[3] = &unk_1E85C9F38;
    v7[4] = self;
    v8 = v4;
    dispatch_async(v6, v7);
  }

  else
  {
    [(AXHAServer *)self _unregisterUpdateListenerHash:v4];
  }
}

- (void)_unregisterUpdateListenerHash:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = HCLogHearingAids();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "AXHAServer: Unregister from updates listenerHash: %@", &v7, 0xCu);
  }

  [(AXHAServer *)self registerUpdateBlock:0 forIdentifier:2 withListener:0 listenerHash:v4];
  [(AXHAServer *)self registerUpdateBlock:0 forIdentifier:4 withListener:0 listenerHash:v4];
  [(AXHAServer *)self registerUpdateBlock:0 forIdentifier:256 withListener:0 listenerHash:v4];
  [(AXHAServer *)self registerUpdateBlock:0 forIdentifier:0x8000000000000000 withListener:0 listenerHash:v4];
  [(AXHAServer *)self registerUpdateBlock:0 forIdentifier:0x40000 withListener:0 listenerHash:v4];
  [(AXHAServer *)self registerUpdateBlock:0 forIdentifier:0x100000 withListener:0 listenerHash:v4];
  [(AXHAServer *)self registerUpdateBlock:0 forIdentifier:0x200000 withListener:0 listenerHash:v4];
  [(AXHAServer *)self registerUpdateBlock:0 forIdentifier:0x400000 withListener:0 listenerHash:v4];
  [(AXHAServer *)self registerUpdateBlock:0 forIdentifier:0x1000000 withListener:0 listenerHash:v4];
  [(AXHAServer *)self registerListener:0 forConnectionStateHandler:0 listenerHash:v4];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)registerUpdateBlock:(id)a3 forIdentifier:(unint64_t)a4 withListener:(id)a5
{
  v9 = MEMORY[0x1E696AD98];
  v10 = a5;
  v11 = a3;
  v12 = [v9 numberWithUnsignedLongLong:a5];
  [(AXHAServer *)self registerUpdateBlock:v11 forIdentifier:a4 withListener:v10 listenerHash:v12];
}

- (void)registerUpdateBlock:(id)a3 forIdentifier:(unint64_t)a4 withListener:(id)a5 listenerHash:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (v11)
  {
    [(AXHAServer *)self setupListenerHelperForListener:v11 withAddress:v12];
  }

  v13 = [(HCServer *)self connectionQueue];

  if (v13)
  {
    objc_initWeak(&location, self);
    v14 = [(HCServer *)self connectionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__AXHAServer_registerUpdateBlock_forIdentifier_withListener_listenerHash___block_invoke;
    block[3] = &unk_1E85CA840;
    objc_copyWeak(v18, &location);
    v16 = v10;
    v18[1] = a4;
    v17 = v12;
    dispatch_async(v14, block);

    objc_destroyWeak(v18);
    objc_destroyWeak(&location);
  }

  else
  {
    [(AXHAServer *)self _registerUpdateBlock:v10 forIdentifier:a4 listenerHash:v12];
  }
}

void __74__AXHAServer_registerUpdateBlock_forIdentifier_withListener_listenerHash___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _registerUpdateBlock:*(a1 + 32) forIdentifier:*(a1 + 56) listenerHash:*(a1 + 40)];
}

- (void)_registerUpdateBlock:(id)a3 forIdentifier:(unint64_t)a4 listenerHash:(id)a5
{
  v25[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [(AXHAServer *)self updates];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4];
  v12 = [v10 objectForKey:v11];

  if (v8)
  {
    v13 = [v8 copy];
    v25[0] = v9;
    v14 = _Block_copy(v13);
    v25[1] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];

    if (!v12)
    {
      v12 = [MEMORY[0x1E695DF70] array];
      v16 = [(AXHAServer *)self updates];
      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4];
      [v16 setObject:v12 forKey:v17];
    }

    [v12 addObject:v15];
  }

  else
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __62__AXHAServer__registerUpdateBlock_forIdentifier_listenerHash___block_invoke;
    v23 = &unk_1E85CA868;
    v24 = v9;
    v18 = [v12 indexesOfObjectsPassingTest:&v20];
    if ([v18 count])
    {
      [v12 removeObjectsAtIndexes:v18];
    }

    if (![v12 count])
    {
      [(HCServer *)self sendMessageWithPayload:&unk_1F5624528 andIdentifier:a4];
    }

    v13 = v24;
  }

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t __62__AXHAServer__registerUpdateBlock_forIdentifier_listenerHash___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [v4 isEqual:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)registerResponseBlock:(id)a3 forUUID:(id)a4
{
  if (a3 && a4)
  {
    v6 = a4;
    v9 = [a3 copy];
    responseBlocks = self->_responseBlocks;
    v8 = _Block_copy(v9);
    [(NSMutableDictionary *)responseBlocks setObject:v8 forKey:v6];
  }
}

- (void)unregisterAvailableDevicesListener:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = HCLogHearingAids();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "AXHAServer: Unregister from available devices listener: %@", &v8, 0xCu);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v4];
  [(AXHAServer *)self registerUpdateBlock:0 forIdentifier:2 withListener:0 listenerHash:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)unregisterPropertyUpdateListener:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = HCLogHearingAids();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "AXHAServer: Unregister from property update listener: %@", &v8, 0xCu);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v4];
  [(AXHAServer *)self registerUpdateBlock:0 forIdentifier:4 withListener:0 listenerHash:v6];

  v7 = *MEMORY[0x1E69E9840];
}

void __73__AXHAServer__registerListener_forAvailableDeviceHandler_beginSearching___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) availableHearingAids];
  (*(v1 + 16))(v1, v2);
}

- (void)registerListener:(id)a3 forPropertyUpdateHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(HCServer *)self sendMessageWithPayload:&unk_1F5624550 andIdentifier:4];
  v8 = _Block_copy(v6);

  [(AXHAServer *)self registerUpdateBlock:v8 forIdentifier:4 withListener:v7];
}

- (void)updateProperty:(unint64_t)a3 forDeviceID:(id)a4
{
  v6 = MEMORY[0x1E695DF20];
  v7 = MEMORY[0x1E696AD98];
  v8 = a4;
  v9 = [v7 numberWithUnsignedLongLong:a3];
  v10 = [v6 dictionaryWithObjectsAndKeys:{v8, &unk_1F5623AE8, v8, v9, 0}];

  [(HCServer *)self sendMessageWithPayload:v10 andIdentifier:16];
}

- (void)writeValue:(id)a3 forProperty:(unint64_t)a4 andDeviceID:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E695DF20];
  v9 = MEMORY[0x1E696AD98];
  v10 = a5;
  v11 = a3;
  v12 = [v9 numberWithUnsignedLongLong:a4];
  v13 = [v8 dictionaryWithObjectsAndKeys:{v10, &unk_1F5623AE8, v11, v12, 0}];

  v14 = HCLogHearingAids();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v13;
    _os_log_impl(&dword_1DA5E2000, v14, OS_LOG_TYPE_DEFAULT, "AXHAServer: writeValue, XPC sending payload %@", buf, 0xCu);
  }

  [(HCServer *)self sendMessageWithPayload:v13 andIdentifier:8];
  v15 = *MEMORY[0x1E69E9840];
}

- (void)sendMessagesPriorityHigh
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "AXHAServer: XPC sending messagesPriority: Urgent", v7, 2u);
  }

  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x20000];
  v8 = v4;
  v9[0] = MEMORY[0x1E695E118];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [(HCServer *)self sendMessageWithPayload:v5 andIdentifier:0x20000];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)sendMessagesPriorityDefault
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "AXHAServer: XPC sending messagesPriority: Default", v7, 2u);
  }

  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x20000];
  v8 = v4;
  v9[0] = MEMORY[0x1E695E110];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [(HCServer *)self sendMessageWithPayload:v5 andIdentifier:0x20000];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)requestHearingAidReachabilityStatus
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:2048];
  v6 = v3;
  v7[0] = MEMORY[0x1E695E118];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [(HCServer *)self sendMessageWithPayload:v4 andIdentifier:2048];

  v5 = *MEMORY[0x1E69E9840];
}

- (NSArray)availableHearingAids
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSArray *)v2->_availableHearingAids copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)setAvailableHearingAids:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  availableHearingAids = v4->_availableHearingAids;
  v4->_availableHearingAids = v5;

  objc_sync_exit(v4);
}

- (void)registerListener:(id)a3 forConnectionStateHandler:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = a3;
  v9 = [v6 numberWithUnsignedLongLong:a3];
  [(AXHAServer *)self registerListener:v8 forConnectionStateHandler:v7 listenerHash:v9];
}

- (void)registerListener:(id)a3 forConnectionStateHandler:(id)a4 listenerHash:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    [(AXHAServer *)self setupListenerHelperForListener:v8 withAddress:v10];
  }

  v11 = [(HCServer *)self connectionQueue];

  if (v11)
  {
    objc_initWeak(&location, self);
    v12 = [(HCServer *)self connectionQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __70__AXHAServer_registerListener_forConnectionStateHandler_listenerHash___block_invoke;
    v13[3] = &unk_1E85CA890;
    objc_copyWeak(&v16, &location);
    v15 = v9;
    v14 = v10;
    dispatch_async(v12, v13);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    [(AXHAServer *)self _registerConnectionStateBlock:v9 listenerHash:v10];
  }
}

void __70__AXHAServer_registerListener_forConnectionStateHandler_listenerHash___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _registerConnectionStateBlock:*(a1 + 40) listenerHash:*(a1 + 32)];
}

- (void)_registerConnectionStateBlock:(id)a3 listenerHash:(id)a4
{
  v6 = a4;
  if (a3)
  {
    aBlock = [a3 copy];
    v7 = [(AXHAServer *)self connectionStateBlocks];
    v8 = _Block_copy(aBlock);
    [v7 setObject:v8 forKey:v6];

    v6 = v7;
  }

  else
  {
    aBlock = [(AXHAServer *)self connectionStateBlocks];
    [aBlock removeObjectForKey:v6];
  }
}

- (void)connectToControllerWithID:(id)a3
{
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{a3, @"controller", 0}];
  [(HCServer *)self sendMessageWithPayload:v4 andIdentifier:0x8000];
}

- (void)requestHearingAidConnectionWithReason:(int64_t)a3
{
  if (a3 == 5)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.accessibility.hearing.audio.transfer", 0, 0, 1u);
  }

  else
  {
    v6 = MEMORY[0x1E695DF20];
    v7 = [MEMORY[0x1E695DFB0] null];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v9 = [v6 dictionaryWithObjectsAndKeys:{v7, @"controller", v8, @"reason", 0}];

    [(HCServer *)self sendMessageWithPayload:v9 andIdentifier:0x8000];
  }
}

- (void)cancelHearingAidConnectionRequest
{
  v3 = MEMORY[0x1E695DF20];
  v4 = [MEMORY[0x1E695DFB0] null];
  v5 = [v3 dictionaryWithObjectsAndKeys:{v4, @"controller", 0}];

  [(HCServer *)self sendMessageWithPayload:v5 andIdentifier:0x2000];
}

- (void)registerListener:(id)a3 forLiveListenLevelsHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_os_feature_enabled_impl())
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__AXHAServer_registerListener_forLiveListenLevelsHandler___block_invoke;
    v9[3] = &unk_1E85CA8B8;
    v10 = v7;
    [(AXHAServer *)self registerListener:v6 forLiveListenHandler:v9];
  }

  else
  {
    [(HCServer *)self sendMessageWithPayload:&unk_1F5624578 andIdentifier:256];
    v8 = _Block_copy(v7);
    [(AXHAServer *)self registerUpdateBlock:v8 forIdentifier:256 withListener:v6];
  }
}

- (void)unregisterLiveListenLevelListener:(id)a3
{
  v6 = a3;
  if (_os_feature_enabled_impl())
  {
    [(AXHAServer *)self registerListener:v6 forLiveListenHandler:0];
  }

  else
  {
    [(AXHAServer *)self registerUpdateBlock:0 forIdentifier:256 withListener:v6];

    v4 = [(AXHAServer *)self updates];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:256];
    v6 = [v4 objectForKey:v5];

    if (![v6 count])
    {
      [(HCServer *)self sendMessageWithPayload:&unk_1F56245A0 andIdentifier:256];
    }
  }
}

- (void)registerListener:(id)a3 forLiveListenHandler:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (_os_feature_enabled_impl())
  {
    [(HCServer *)self sendMessageWithPayload:&unk_1F56245C8 andIdentifier:256];
    v7 = _Block_copy(v6);
    [(AXHAServer *)self registerUpdateBlock:v7 forIdentifier:256 withListener:v8];
  }
}

- (void)unregisterLiveListenListener:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    [(AXHAServer *)self registerUpdateBlock:0 forIdentifier:256 withListener:v4];
    [(HCServer *)self sendMessageWithPayload:&unk_1F56245F0 andIdentifier:256];
  }
}

- (void)startObservingRemoteLiveListenUpdates
{
  if (_os_feature_enabled_impl())
  {

    [(HCServer *)self sendMessageWithPayload:&unk_1F5624618 andIdentifier:0x8000000];
  }
}

- (void)stopObservingRemoteLiveListenUpdates
{
  if (_os_feature_enabled_impl())
  {

    [(HCServer *)self sendMessageWithPayload:&unk_1F5624640 andIdentifier:0x8000000];
  }
}

- (void)startLiveListen
{
  v3 = MEMORY[0x1E695DF20];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:128];
  v5 = [v3 dictionaryWithObjectsAndKeys:{MEMORY[0x1E695E118], v4, 0}];

  [(HCServer *)self sendMessageWithPayload:v5 andIdentifier:128];
  [(HCServer *)self sendMessageWithPayload:&unk_1F5624668 andIdentifier:256];
}

- (void)stopLiveListen
{
  v3 = MEMORY[0x1E695DF20];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:128];
  v5 = [v3 dictionaryWithObjectsAndKeys:{MEMORY[0x1E695E110], v4, 0}];

  [(HCServer *)self sendMessageWithPayload:v5 andIdentifier:128];
}

- (void)startLiveListenRewind
{
  if (_os_feature_enabled_impl())
  {
    v3 = MEMORY[0x1E695DF20];
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:1024];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x2000000];
    v6 = [v3 dictionaryWithObjectsAndKeys:{v4, MEMORY[0x1E695E118], v5, 0}];

    [(HCServer *)self sendMessageWithPayload:v6 andIdentifier:0x2000000];
  }
}

- (void)stopLiveListenRewind
{
  if (_os_feature_enabled_impl())
  {
    v3 = MEMORY[0x1E695DF20];
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:1024];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x2000000];
    v6 = [v3 dictionaryWithObjectsAndKeys:{MEMORY[0x1E695E118], v4, MEMORY[0x1E695E110], v5, 0}];

    [(HCServer *)self sendMessageWithPayload:v6 andIdentifier:0x2000000];
  }
}

- (void)registerListener:(id)a3 forLiveDosimetryUpdates:(BOOL)a4 withDoseHandler:(id)a5
{
  v7 = a5;
  v8 = a3;
  [(HCServer *)self sendMessageWithPayload:&unk_1F5624690 andIdentifier:0x40000];
  v9 = _Block_copy(v7);

  [(AXHAServer *)self registerUpdateBlock:v9 forIdentifier:0x40000 withListener:v8];
}

- (void)unregisterDoseHandler:(id)a3
{
  [(AXHAServer *)self registerUpdateBlock:0 forIdentifier:0x40000 withListener:a3];
  v4 = [(AXHAServer *)self updates];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x40000];
  v6 = [v4 objectForKey:v5];

  if (![v6 count])
  {
    [(HCServer *)self sendMessageWithPayload:&unk_1F56246B8 andIdentifier:0x40000];
  }
}

- (void)requestNoiseBuffersForTimeInterval:(double)a3 withHandler:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v6)
  {
    if (a3 <= 0.0)
    {
      v7 = [(HCServer *)self connectionQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __61__AXHAServer_requestNoiseBuffersForTimeInterval_withHandler___block_invoke_3;
      block[3] = &unk_1E85CA930;
      v9 = &v12;
      v12 = v6;
      dispatch_async(v7, block);
    }

    else
    {
      v15 = @"HUEDSampleIntervalKey";
      v7 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
      v16[0] = v7;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __61__AXHAServer_requestNoiseBuffersForTimeInterval_withHandler___block_invoke;
      v13[3] = &unk_1E85CA908;
      v9 = &v14;
      v14 = v6;
      [(HCServer *)self sendMessageWithPayload:v8 identifier:0x40000 andResponseBlock:v13];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __61__AXHAServer_requestNoiseBuffersForTimeInterval_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 valueForKey:@"HUEDSampleIntervalKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __61__AXHAServer_requestNoiseBuffersForTimeInterval_withHandler___block_invoke_2;
    v6[3] = &unk_1E85CA8E0;
    v7 = v4;
    v5 = v4;
    [v3 enumerateObjectsUsingBlock:v6];
    (*(*(a1 + 32) + 16))();
  }
}

void __61__AXHAServer_requestNoiseBuffersForTimeInterval_withHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = [[HUNoiseSample alloc] initWithRepresentation:v5];
    [v3 hcSafeAddObject:v4];
  }
}

- (void)environmentalDosimetryDidUpdate:(id)a3
{
  v4 = a3;
  v5 = [(AXHAServer *)self updates];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x40000];
  v7 = [v5 objectForKey:v6];

  v8 = [v4 objectForKey:@"HUEDSlowLeqIdentifier"];
  [v8 floatValue];

  v9 = [v4 objectForKey:@"HUEDFastLeqIdentifier"];
  [v9 floatValue];

  v10 = [v4 objectForKey:@"HUEDEnabledIdentifier"];
  [v10 BOOLValue];

  v11 = [v4 objectForKey:@"HUEDThresholdCrossedIdentifier"];
  [v11 unsignedIntegerValue];

  v12 = [v4 objectForKey:@"HUEDSlowAttenuationLevelIdentifier"];
  [v12 floatValue];

  v13 = [v4 objectForKey:@"HUEDFastAttenuationLevelIdentifier"];
  [v13 floatValue];

  v14 = [v4 objectForKey:@"HUEDWearingAirPodsIdentifier"];
  [v14 BOOLValue];

  v15 = [v4 objectForKey:@"HUEDDeviceTypeIdentifier"];

  [v15 unsignedIntegerValue];
  v17 = v7;
  v16 = v7;
  HCPerformSafeBlock();
}

uint64_t __46__AXHAServer_environmentalDosimetryDidUpdate___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__AXHAServer_environmentalDosimetryDidUpdate___block_invoke_2;
  v4[3] = &__block_descriptor_66_e24_v32__0__NSArray_8Q16_B24l;
  v6 = *(a1 + 72);
  v5 = *(a1 + 56);
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v4[4] = *(a1 + 40);
  v4[5] = v2;
  return [v1 enumerateObjectsUsingBlock:v4];
}

void __46__AXHAServer_environmentalDosimetryDidUpdate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 lastObject];
  (*(v3 + 2))(v3, *(a1 + 64), *(a1 + 32), *(a1 + 65), *(a1 + 40), *(a1 + 48), *(a1 + 52), *(a1 + 56), *(a1 + 60));
}

- (void)registerListener:(id)a3 forRemoteLiveHeadphoneLevelHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[HUUtilities sharedUtilities];
  v9 = [v8 deviceIsTinker];

  if (v9)
  {
    v10 = HCLogSoundMeter();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_INFO, "Watch is in family mode. Not requesting remote live headphone data", v11, 2u);
    }
  }

  else
  {
    [(AXHAServer *)self _registerListener:v6 forLiveHeadphoneLevelHandler:v7 messageIdentifier:0x200000];
  }
}

- (void)registerListener:(id)a3 forRemoteLiveHeadphoneLevelChangesHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[HUUtilities sharedUtilities];
  v9 = [v8 deviceIsTinker];

  if (v9)
  {
    v10 = HCLogSoundMeter();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_INFO, "Watch is in family mode. Not requesting remote headphone data changes", v11, 2u);
    }
  }

  else
  {
    [(AXHAServer *)self _registerListener:v6 forLiveHeadphoneLevelHandler:v7 messageIdentifier:0x400000];
  }
}

- (void)_registerListener:(id)a3 forLiveHeadphoneLevelHandler:(id)a4 messageIdentifier:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  [(HCServer *)self sendMessageWithPayload:&unk_1F56246E0 andIdentifier:a5];
  v10 = _Block_copy(v8);

  [(AXHAServer *)self registerUpdateBlock:v10 forIdentifier:a5 withListener:v9];
}

- (void)_headphoneLevelDidUpdate:(id)a3 messageIdentifier:(unint64_t)a4
{
  v6 = a3;
  v7 = [(AXHAServer *)self updates];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4];
  v9 = [v7 objectForKey:v8];

  v10 = v6;
  v11 = v9;
  HCPerformSafeBlock();
}

void __57__AXHAServer__headphoneLevelDidUpdate_messageIdentifier___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __57__AXHAServer__headphoneLevelDidUpdate_messageIdentifier___block_invoke_2;
  v2[3] = &unk_1E85CA6E8;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 enumerateObjectsUsingBlock:v2];
}

void __57__AXHAServer__headphoneLevelDidUpdate_messageIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 lastObject];
  if (v3)
  {
    v4 = v3;
    v3[2](v3, *(a1 + 32));
    v3 = v4;
  }
}

- (void)registerListener:(id)a3 forControlMessageHandler:(id)a4
{
  v6 = a3;
  v7 = _Block_copy(a4);
  [(AXHAServer *)self registerUpdateBlock:v7 forIdentifier:0x8000000000000000 withListener:v6];

  [(HCServer *)self sendMessageWithPayload:&unk_1F5624708 andIdentifier:0x8000000000000000];
}

- (void)unregisterControlMessageHandler:(id)a3
{
  [(AXHAServer *)self registerUpdateBlock:0 forIdentifier:0x8000000000000000 withListener:a3];

  [(HCServer *)self sendMessageWithPayload:&unk_1F5624730 andIdentifier:0x8000000000000000];
}

- (void)controlMessageDidUpdate:(id)a3
{
  v4 = a3;
  v5 = [(AXHAServer *)self updates];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x8000000000000000];
  v7 = [v5 objectForKey:v6];

  v10 = v4;
  v8 = v4;
  v9 = v7;
  HCPerformSafeBlock();
}

void __38__AXHAServer_controlMessageDidUpdate___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __38__AXHAServer_controlMessageDidUpdate___block_invoke_2;
  v2[3] = &unk_1E85CA6E8;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 enumerateObjectsUsingBlock:v2];
}

void __38__AXHAServer_controlMessageDidUpdate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 lastObject];
  if (v3)
  {
    v4 = v3;
    v3[2](v3, *(a1 + 32));
    v3 = v4;
  }
}

- (void)registerListener:(id)a3 forComfortSoundsModelUpdatesHandler:(id)a4
{
  v6 = a3;
  v7 = _Block_copy(a4);
  [(AXHAServer *)self registerUpdateBlock:v7 forIdentifier:0x1000000 withListener:v6];

  [(HCServer *)self sendMessageWithPayload:&unk_1F5624758 andIdentifier:0x1000000];
}

- (void)unregisterComfortSoundsModelUpdatesHandler:(id)a3
{
  [(AXHAServer *)self registerUpdateBlock:0 forIdentifier:0x1000000 withListener:a3];

  [(HCServer *)self sendMessageWithPayload:&unk_1F5624780 andIdentifier:0x1000000];
}

- (void)comfortSoundsAssetsDidUpdate:(id)a3
{
  v4 = a3;
  v5 = [(AXHAServer *)self updates];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x1000000];
  v7 = [v5 objectForKey:v6];

  v10 = v4;
  v8 = v7;
  v9 = v4;
  HCPerformSafeBlock();
}

void __43__AXHAServer_comfortSoundsAssetsDidUpdate___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69881A8];
  v3 = [*(a1 + 32) valueForKey:@"HUComfortSoundsAvailableAssetsKey"];
  v14 = 0;
  v4 = [v2 unarchivedAssets:v3 error:&v14];
  v5 = v14;

  v6 = [*(a1 + 32) valueForKey:@"HUComfortSoundsDownloadProgressKey"];
  if (v5)
  {
    v7 = HCLogComfortSounds();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __43__AXHAServer_comfortSoundsAssetsDidUpdate___block_invoke_cold_1(v7);
    }
  }

  v8 = *(a1 + 40);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43__AXHAServer_comfortSoundsAssetsDidUpdate___block_invoke_139;
  v11[3] = &unk_1E85CA9A0;
  v12 = v4;
  v13 = v6;
  v9 = v6;
  v10 = v4;
  [v8 enumerateObjectsUsingBlock:v11];
}

void __43__AXHAServer_comfortSoundsAssetsDidUpdate___block_invoke_139(uint64_t a1, void *a2)
{
  v3 = [a2 lastObject];
  if (v3)
  {
    v4 = v3;
    v3[2](v3, *(a1 + 32), *(a1 + 40));
    v3 = v4;
  }
}

- (void)reregisterForComfortSoundsAssetsUpdatesIfNeeded
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [(AXHAServer *)self updates];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x1000000];
  v5 = [v3 objectForKey:v4];

  v6 = HCLogComfortSounds();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "Reregistering for updates %@", &v8, 0xCu);
  }

  if ([v5 count])
  {
    [(HCServer *)self sendMessageWithPayload:&unk_1F56247A8 andIdentifier:0x1000000];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)downloadComfortSoundAsset:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 assetId];
  v6 = [v5 length];

  if (v6)
  {
    [(AXHAServer *)self reregisterForComfortSoundsAssetsUpdatesIfNeeded];
    v10 = @"HUComfortSoundsDownloadAssetKey";
    v7 = [v4 assetId];
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [(HCServer *)self sendMessageWithPayload:v8 andIdentifier:0x1000000];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)removeComfortSoundAsset:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 assetId];
  v6 = [v5 length];

  if (v6)
  {
    [(AXHAServer *)self reregisterForComfortSoundsAssetsUpdatesIfNeeded];
    v10 = @"HUComfortSoundsRemoveAssetKey";
    v7 = [v4 assetId];
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [(HCServer *)self sendMessageWithPayload:v8 andIdentifier:0x1000000];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)startComfortSoundsPreview
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"HUComfortSoundsPreviewKey";
  v6[0] = MEMORY[0x1E695E118];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [(HCServer *)self sendMessageWithPayload:v3 andIdentifier:0x10000000];

  v4 = *MEMORY[0x1E69E9840];
}

- (void)stopComfortSoundsPreview
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"HUComfortSoundsPreviewKey";
  v6[0] = MEMORY[0x1E695E110];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [(HCServer *)self sendMessageWithPayload:v3 andIdentifier:0x10000000];

  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)backgroundSoundsPlaying
{
  if (_AXSAutomationEnabled())
  {
    v3 = [(HCServer *)self sendSynchronousMessageWithPayloadAndGetResponse:&unk_1F56247D0 andIdentifier:0x4000000000000000];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKey:@"ax_automation_is_background_sounds_playing"];
      if (!v5)
      {
LABEL_8:

        return v5;
      }

      v6 = [v4 objectForKey:@"ax_automation_is_background_sounds_playing"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v8 = [v4 objectForKey:@"ax_automation_is_background_sounds_playing"];
        LOBYTE(v5) = [v8 BOOLValue];

        goto LABEL_8;
      }
    }

    LOBYTE(v5) = 0;
    goto LABEL_8;
  }

  LOBYTE(v5) = 0;
  return v5;
}

- (void)setupListenerHelperForListener:(id)a3 withAddress:(id)a4
{
  object = a3;
  v5 = a4;
  v6 = objc_getAssociatedObject(object, &AXHAListenerHelperKey);
  if (!v6)
  {
    v6 = [[AXHAListenerHelper alloc] initWithListenerAddress:v5];
    objc_setAssociatedObject(object, &AXHAListenerHelperKey, v6, 1);
  }
}

- (void)handleMessageWithPayload:(uint64_t)a1 forIdentifier:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = messageIdentifierDescription();
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1DA5E2000, a2, OS_LOG_TYPE_ERROR, "AXHAServer: Unexpected message ID: %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end