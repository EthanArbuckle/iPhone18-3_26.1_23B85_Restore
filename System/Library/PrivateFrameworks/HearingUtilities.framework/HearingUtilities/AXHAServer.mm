@interface AXHAServer
+ (id)sharedInstance;
- (AXHAServer)init;
- (BOOL)backgroundSoundsPlaying;
- (NSArray)availableHearingAids;
- (void)_headphoneLevelDidUpdate:(id)update messageIdentifier:(unint64_t)identifier;
- (void)_liveListenDidUpdate_BOOLValue:(id)value;
- (void)_liveListenDidUpdate_enumValue:(id)value;
- (void)_registerConnectionStateBlock:(id)block listenerHash:(id)hash;
- (void)_registerListener:(id)listener forLiveHeadphoneLevelHandler:(id)handler messageIdentifier:(unint64_t)identifier;
- (void)_registerUpdateBlock:(id)block forIdentifier:(unint64_t)identifier listenerHash:(id)hash;
- (void)_unregisterUpdateListenerHash:(id)hash;
- (void)availableDevicesDidUpdate:(id)update;
- (void)cancelHearingAidConnectionRequest;
- (void)comfortSoundsAssetsDidUpdate:(id)update;
- (void)connectToControllerWithID:(id)d;
- (void)controlMessageDidUpdate:(id)update;
- (void)deviceDidUpdateProperty:(id)property;
- (void)downloadComfortSoundAsset:(id)asset;
- (void)environmentalDosimetryDidUpdate:(id)update;
- (void)handleMessageWithPayload:(id)payload forIdentifier:(unint64_t)identifier;
- (void)liveListenDidUpdate:(id)update;
- (void)registerListener:(id)listener forComfortSoundsModelUpdatesHandler:(id)handler;
- (void)registerListener:(id)listener forConnectionStateHandler:(id)handler;
- (void)registerListener:(id)listener forConnectionStateHandler:(id)handler listenerHash:(id)hash;
- (void)registerListener:(id)listener forControlMessageHandler:(id)handler;
- (void)registerListener:(id)listener forLiveDosimetryUpdates:(BOOL)updates withDoseHandler:(id)handler;
- (void)registerListener:(id)listener forLiveListenHandler:(id)handler;
- (void)registerListener:(id)listener forLiveListenLevelsHandler:(id)handler;
- (void)registerListener:(id)listener forPropertyUpdateHandler:(id)handler;
- (void)registerListener:(id)listener forRemoteLiveHeadphoneLevelChangesHandler:(id)handler;
- (void)registerListener:(id)listener forRemoteLiveHeadphoneLevelHandler:(id)handler;
- (void)registerResponseBlock:(id)block forUUID:(id)d;
- (void)registerUpdateBlock:(id)block forIdentifier:(unint64_t)identifier withListener:(id)listener;
- (void)registerUpdateBlock:(id)block forIdentifier:(unint64_t)identifier withListener:(id)listener listenerHash:(id)hash;
- (void)removeComfortSoundAsset:(id)asset;
- (void)requestHearingAidConnectionWithReason:(int64_t)reason;
- (void)requestHearingAidReachabilityStatus;
- (void)requestNoiseBuffersForTimeInterval:(double)interval withHandler:(id)handler;
- (void)reregisterForComfortSoundsAssetsUpdatesIfNeeded;
- (void)resetConnection;
- (void)sendMessagesPriorityDefault;
- (void)sendMessagesPriorityHigh;
- (void)setAvailableHearingAids:(id)aids;
- (void)setupListenerHelperForListener:(id)listener withAddress:(id)address;
- (void)shouldRestartOnInterruption:(id)interruption;
- (void)startComfortSoundsPreview;
- (void)startLiveListen;
- (void)startLiveListenRewind;
- (void)startObservingRemoteLiveListenUpdates;
- (void)startServerWithDelegate:(id)delegate;
- (void)stopComfortSoundsPreview;
- (void)stopLiveListen;
- (void)stopLiveListenRewind;
- (void)stopObservingRemoteLiveListenUpdates;
- (void)unregisterAvailableDevicesListener:(id)listener;
- (void)unregisterComfortSoundsModelUpdatesHandler:(id)handler;
- (void)unregisterControlMessageHandler:(id)handler;
- (void)unregisterDoseHandler:(id)handler;
- (void)unregisterLiveListenLevelListener:(id)listener;
- (void)unregisterLiveListenListener:(id)listener;
- (void)unregisterPropertyUpdateListener:(id)listener;
- (void)unregisterUpdateListener:(id)listener;
- (void)unregisterUpdateListenerHash:(id)hash;
- (void)updateProperty:(unint64_t)property forDeviceID:(id)d;
- (void)writeValue:(id)value forProperty:(unint64_t)property andDeviceID:(id)d;
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
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(AXHAServer *)v2 setUpdates:dictionary];

    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    responseBlocks = v2->_responseBlocks;
    v2->_responseBlocks = v4;

    v6 = objc_opt_new();
    connectionStateBlocks = v2->_connectionStateBlocks;
    v2->_connectionStateBlocks = v6;

    v8 = +[HUHearingAidSettings sharedInstance];
    pairedHearingAids = [v8 pairedHearingAids];

    if (pairedHearingAids)
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

- (void)shouldRestartOnInterruption:(id)interruption
{
  interruptionCopy = interruption;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__AXHAServer_shouldRestartOnInterruption___block_invoke;
  v5[3] = &unk_1E85CA670;
  v6 = interruptionCopy;
  v4 = interruptionCopy;
  hearingDeamonShouldBeRunning(v5);
}

- (void)startServerWithDelegate:(id)delegate
{
  v4.receiver = self;
  v4.super_class = AXHAServer;
  [(HCServer *)&v4 startServerWithDelegate:delegate];
  [(HCServer *)self sendMessageWithPayload:&unk_1F56244B0 andIdentifier:4];
  [(HCServer *)self sendMessageWithPayload:&unk_1F56244D8 andIdentifier:0x10000];
}

- (void)resetConnection
{
  v8.receiver = self;
  v8.super_class = AXHAServer;
  [(HCServer *)&v8 resetConnection];
  updates = [(AXHAServer *)self updates];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__AXHAServer_resetConnection__block_invoke;
  v7[3] = &unk_1E85CA698;
  v7[4] = self;
  [updates enumerateKeysAndObjectsUsingBlock:v7];

  availableHearingAids = [(AXHAServer *)self availableHearingAids];
  lastObject = [availableHearingAids lastObject];
  deviceUUID = [lastObject deviceUUID];
  [(AXHAServer *)self updateProperty:0xD07D42105FCLL forDeviceID:deviceUUID];
}

void __29__AXHAServer_resetConnection__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 count])
  {
    [*(a1 + 32) sendMessageWithPayload:&unk_1F5624500 andIdentifier:{objc_msgSend(v5, "unsignedLongLongValue")}];
  }
}

- (void)handleMessageWithPayload:(id)payload forIdentifier:(unint64_t)identifier
{
  v36 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v30.receiver = self;
  v30.super_class = AXHAServer;
  [(HCServer *)&v30 handleMessageWithPayload:payloadCopy forIdentifier:identifier];
  if (identifier == 0x40000)
  {
    [(AXHAServer *)self environmentalDosimetryDidUpdate:payloadCopy];
    goto LABEL_52;
  }

  v7 = HCLogHearingAids();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = messageIdentifierDescription();
    *buf = 138412546;
    v33 = v8;
    v34 = 2112;
    v35 = payloadCopy;
    _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "AXHAServer: Handle incoming message ID: %@ %@", buf, 0x16u);
  }

  if (identifier <= 511)
  {
    if (identifier <= 127)
    {
      v9 = identifier - 2;
      if (identifier - 2 > 0x3E)
      {
LABEL_45:
        if (identifier == 0x8000000000000000)
        {
          [(AXHAServer *)self controlMessageDidUpdate:payloadCopy];
        }

        goto LABEL_52;
      }

      if (((1 << v9) & 0x45) == 0)
      {
        if (((1 << v9) & 0x4000000000004000) != 0)
        {
          [(AXHAServer *)self deviceDidUpdateProperty:payloadCopy];
          goto LABEL_52;
        }

        if (identifier == 32)
        {
          [(AXHAServer *)self availableDevicesDidUpdate:payloadCopy];
          goto LABEL_52;
        }

        goto LABEL_45;
      }

      goto LABEL_33;
    }

    if (identifier != 128)
    {
      if (identifier != 256)
      {
        goto LABEL_52;
      }

      goto LABEL_33;
    }

    goto LABEL_36;
  }

  if (identifier >= 0x400000)
  {
    if (identifier > 0x1FFFFFF)
    {
      if (identifier != 0x2000000 && identifier != 0x4000000)
      {
        if (identifier != 0x8000000)
        {
          goto LABEL_52;
        }

LABEL_33:
        v24 = HCLogHearingAids();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [AXHAServer handleMessageWithPayload:identifier forIdentifier:v24];
        }

        goto LABEL_52;
      }

LABEL_36:
      [(AXHAServer *)self liveListenDidUpdate:payloadCopy];
      goto LABEL_52;
    }

    if (identifier != 0x400000)
    {
      if (identifier == 0x1000000)
      {
        [(AXHAServer *)self comfortSoundsAssetsDidUpdate:payloadCopy];
      }

      goto LABEL_52;
    }

    selfCopy3 = self;
    v26 = payloadCopy;
    v27 = 0x400000;
LABEL_49:
    [(AXHAServer *)selfCopy3 _headphoneLevelDidUpdate:v26 messageIdentifier:v27];
    goto LABEL_52;
  }

  if (identifier >= 0x100000)
  {
    if (identifier == 0x100000)
    {
      selfCopy3 = self;
      v26 = payloadCopy;
      v27 = 0x100000;
    }

    else
    {
      if (identifier != 0x200000)
      {
        goto LABEL_52;
      }

      selfCopy3 = self;
      v26 = payloadCopy;
      v27 = 0x200000;
    }

    goto LABEL_49;
  }

  if (identifier == 512)
  {
    goto LABEL_36;
  }

  if (identifier == 2048)
  {
    v10 = HCLogHearingAids();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = payloadCopy;
      _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "AXHAServer: Hearing Device reachability state %@", buf, 0xCu);
    }

    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x4000];
    v12 = [payloadCopy objectForKey:v11];

    v13 = [v12 objectForKey:&unk_1F5623A28];
    bOOLValue = [v13 BOOLValue];

    v15 = [v12 objectForKey:&unk_1F5623A40];
    bOOLValue2 = [v15 BOOLValue];

    v17 = [v12 objectForKey:*MEMORY[0x1E69A4548]];
    if (![v17 length])
    {

      v17 = 0;
    }

    [(AXHAServer *)self setHearingDeviceName:v17];
    [(AXHAServer *)self setHearingAidReachableForAudioTransfer:bOOLValue2];
    if (bOOLValue != [(AXHAServer *)self hearingAidConnectedOrReachable])
    {
      availableHearingAids = [(AXHAServer *)self availableHearingAids];
      firstObject = [availableHearingAids firstObject];
      deviceUUID = [firstObject deviceUUID];
      [(AXHAServer *)self updateProperty:0x200000 forDeviceID:deviceUUID];

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"com.apple.accessibility.hearingaid.nearby.devices.changed" object:0];
    }

    v22 = [v12 objectForKey:&unk_1F5623A58];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v22 length])
    {

      v22 = 0;
    }

    [(AXHAServer *)self setConnectedDeviceName:v22];
    [(AXHAServer *)self setHearingAidConnectedOrReachable:bOOLValue];
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
  [payloadCopy enumerateKeysAndObjectsUsingBlock:v29];

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

- (void)deviceDidUpdateProperty:(id)property
{
  propertyCopy = property;
  v3 = propertyCopy;
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

- (void)availableDevicesDidUpdate:(id)update
{
  updateCopy = update;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  array = [MEMORY[0x1E695DF70] array];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __40__AXHAServer_availableDevicesDidUpdate___block_invoke;
  v12[3] = &unk_1E85CA7A8;
  v12[4] = self;
  v6 = array;
  v13 = v6;
  v14 = &v15;
  [updateCopy enumerateKeysAndObjectsUsingBlock:v12];
  [(AXHAServer *)self setAvailableHearingAids:v6];
  if ((v16[3] & 1) != 0 || ![v6 count])
  {
    updates = [(AXHAServer *)self updates];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:2];
    v9 = [updates objectForKey:v8];

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

- (void)liveListenDidUpdate:(id)update
{
  updateCopy = update;
  if (_os_feature_enabled_impl())
  {
    [(AXHAServer *)self _liveListenDidUpdate_enumValue:updateCopy];
  }

  else
  {
    [(AXHAServer *)self _liveListenDidUpdate_BOOLValue:updateCopy];
  }
}

- (void)_liveListenDidUpdate_BOOLValue:(id)value
{
  valueCopy = value;
  updates = [(AXHAServer *)self updates];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:256];
  v7 = [updates objectForKey:v6];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:512];
  v9 = [valueCopy objectForKey:v8];
  [v9 doubleValue];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:1024];
  v11 = [valueCopy objectForKey:v10];

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

- (void)_liveListenDidUpdate_enumValue:(id)value
{
  valueCopy = value;
  if (_os_feature_enabled_impl())
  {
    v5 = [valueCopy objectForKeyedSubscript:&unk_1F5623A70];
    [v5 doubleValue];

    v6 = [valueCopy objectForKeyedSubscript:&unk_1F5623A88];
    [v6 integerValue];

    v7 = [valueCopy objectForKeyedSubscript:&unk_1F5623AA0];
    [v7 BOOLValue];

    v8 = [valueCopy objectForKeyedSubscript:&unk_1F5623AB8];
    updates = [(AXHAServer *)self updates];
    v10 = [updates objectForKeyedSubscript:&unk_1F5623AD0];
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

- (void)unregisterUpdateListener:(id)listener
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:listener];
  [(AXHAServer *)self unregisterUpdateListenerHash:v4];
}

- (void)unregisterUpdateListenerHash:(id)hash
{
  hashCopy = hash;
  connectionQueue = [(HCServer *)self connectionQueue];

  if (connectionQueue)
  {
    connectionQueue2 = [(HCServer *)self connectionQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43__AXHAServer_unregisterUpdateListenerHash___block_invoke;
    v7[3] = &unk_1E85C9F38;
    v7[4] = self;
    v8 = hashCopy;
    dispatch_async(connectionQueue2, v7);
  }

  else
  {
    [(AXHAServer *)self _unregisterUpdateListenerHash:hashCopy];
  }
}

- (void)_unregisterUpdateListenerHash:(id)hash
{
  v9 = *MEMORY[0x1E69E9840];
  hashCopy = hash;
  v5 = HCLogHearingAids();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = hashCopy;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "AXHAServer: Unregister from updates listenerHash: %@", &v7, 0xCu);
  }

  [(AXHAServer *)self registerUpdateBlock:0 forIdentifier:2 withListener:0 listenerHash:hashCopy];
  [(AXHAServer *)self registerUpdateBlock:0 forIdentifier:4 withListener:0 listenerHash:hashCopy];
  [(AXHAServer *)self registerUpdateBlock:0 forIdentifier:256 withListener:0 listenerHash:hashCopy];
  [(AXHAServer *)self registerUpdateBlock:0 forIdentifier:0x8000000000000000 withListener:0 listenerHash:hashCopy];
  [(AXHAServer *)self registerUpdateBlock:0 forIdentifier:0x40000 withListener:0 listenerHash:hashCopy];
  [(AXHAServer *)self registerUpdateBlock:0 forIdentifier:0x100000 withListener:0 listenerHash:hashCopy];
  [(AXHAServer *)self registerUpdateBlock:0 forIdentifier:0x200000 withListener:0 listenerHash:hashCopy];
  [(AXHAServer *)self registerUpdateBlock:0 forIdentifier:0x400000 withListener:0 listenerHash:hashCopy];
  [(AXHAServer *)self registerUpdateBlock:0 forIdentifier:0x1000000 withListener:0 listenerHash:hashCopy];
  [(AXHAServer *)self registerListener:0 forConnectionStateHandler:0 listenerHash:hashCopy];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)registerUpdateBlock:(id)block forIdentifier:(unint64_t)identifier withListener:(id)listener
{
  v9 = MEMORY[0x1E696AD98];
  listenerCopy = listener;
  blockCopy = block;
  v12 = [v9 numberWithUnsignedLongLong:listener];
  [(AXHAServer *)self registerUpdateBlock:blockCopy forIdentifier:identifier withListener:listenerCopy listenerHash:v12];
}

- (void)registerUpdateBlock:(id)block forIdentifier:(unint64_t)identifier withListener:(id)listener listenerHash:(id)hash
{
  blockCopy = block;
  listenerCopy = listener;
  hashCopy = hash;
  if (listenerCopy)
  {
    [(AXHAServer *)self setupListenerHelperForListener:listenerCopy withAddress:hashCopy];
  }

  connectionQueue = [(HCServer *)self connectionQueue];

  if (connectionQueue)
  {
    objc_initWeak(&location, self);
    connectionQueue2 = [(HCServer *)self connectionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__AXHAServer_registerUpdateBlock_forIdentifier_withListener_listenerHash___block_invoke;
    block[3] = &unk_1E85CA840;
    objc_copyWeak(v18, &location);
    v16 = blockCopy;
    v18[1] = identifier;
    v17 = hashCopy;
    dispatch_async(connectionQueue2, block);

    objc_destroyWeak(v18);
    objc_destroyWeak(&location);
  }

  else
  {
    [(AXHAServer *)self _registerUpdateBlock:blockCopy forIdentifier:identifier listenerHash:hashCopy];
  }
}

void __74__AXHAServer_registerUpdateBlock_forIdentifier_withListener_listenerHash___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _registerUpdateBlock:*(a1 + 32) forIdentifier:*(a1 + 56) listenerHash:*(a1 + 40)];
}

- (void)_registerUpdateBlock:(id)block forIdentifier:(unint64_t)identifier listenerHash:(id)hash
{
  v25[2] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  hashCopy = hash;
  updates = [(AXHAServer *)self updates];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:identifier];
  array = [updates objectForKey:v11];

  if (blockCopy)
  {
    v13 = [blockCopy copy];
    v25[0] = hashCopy;
    v14 = _Block_copy(v13);
    v25[1] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];

    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
      updates2 = [(AXHAServer *)self updates];
      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:identifier];
      [updates2 setObject:array forKey:v17];
    }

    [array addObject:v15];
  }

  else
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __62__AXHAServer__registerUpdateBlock_forIdentifier_listenerHash___block_invoke;
    v23 = &unk_1E85CA868;
    v24 = hashCopy;
    v18 = [array indexesOfObjectsPassingTest:&v20];
    if ([v18 count])
    {
      [array removeObjectsAtIndexes:v18];
    }

    if (![array count])
    {
      [(HCServer *)self sendMessageWithPayload:&unk_1F5624528 andIdentifier:identifier];
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

- (void)registerResponseBlock:(id)block forUUID:(id)d
{
  if (block && d)
  {
    dCopy = d;
    v9 = [block copy];
    responseBlocks = self->_responseBlocks;
    v8 = _Block_copy(v9);
    [(NSMutableDictionary *)responseBlocks setObject:v8 forKey:dCopy];
  }
}

- (void)unregisterAvailableDevicesListener:(id)listener
{
  v10 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  v5 = HCLogHearingAids();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = listenerCopy;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "AXHAServer: Unregister from available devices listener: %@", &v8, 0xCu);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:listenerCopy];
  [(AXHAServer *)self registerUpdateBlock:0 forIdentifier:2 withListener:0 listenerHash:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)unregisterPropertyUpdateListener:(id)listener
{
  v10 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  v5 = HCLogHearingAids();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = listenerCopy;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "AXHAServer: Unregister from property update listener: %@", &v8, 0xCu);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:listenerCopy];
  [(AXHAServer *)self registerUpdateBlock:0 forIdentifier:4 withListener:0 listenerHash:v6];

  v7 = *MEMORY[0x1E69E9840];
}

void __73__AXHAServer__registerListener_forAvailableDeviceHandler_beginSearching___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) availableHearingAids];
  (*(v1 + 16))(v1, v2);
}

- (void)registerListener:(id)listener forPropertyUpdateHandler:(id)handler
{
  handlerCopy = handler;
  listenerCopy = listener;
  [(HCServer *)self sendMessageWithPayload:&unk_1F5624550 andIdentifier:4];
  v8 = _Block_copy(handlerCopy);

  [(AXHAServer *)self registerUpdateBlock:v8 forIdentifier:4 withListener:listenerCopy];
}

- (void)updateProperty:(unint64_t)property forDeviceID:(id)d
{
  v6 = MEMORY[0x1E695DF20];
  v7 = MEMORY[0x1E696AD98];
  dCopy = d;
  v9 = [v7 numberWithUnsignedLongLong:property];
  v10 = [v6 dictionaryWithObjectsAndKeys:{dCopy, &unk_1F5623AE8, dCopy, v9, 0}];

  [(HCServer *)self sendMessageWithPayload:v10 andIdentifier:16];
}

- (void)writeValue:(id)value forProperty:(unint64_t)property andDeviceID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E695DF20];
  v9 = MEMORY[0x1E696AD98];
  dCopy = d;
  valueCopy = value;
  v12 = [v9 numberWithUnsignedLongLong:property];
  v13 = [v8 dictionaryWithObjectsAndKeys:{dCopy, &unk_1F5623AE8, valueCopy, v12, 0}];

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSArray *)selfCopy->_availableHearingAids copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setAvailableHearingAids:(id)aids
{
  aidsCopy = aids;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [aidsCopy copy];
  availableHearingAids = selfCopy->_availableHearingAids;
  selfCopy->_availableHearingAids = v5;

  objc_sync_exit(selfCopy);
}

- (void)registerListener:(id)listener forConnectionStateHandler:(id)handler
{
  v6 = MEMORY[0x1E696AD98];
  handlerCopy = handler;
  listenerCopy = listener;
  v9 = [v6 numberWithUnsignedLongLong:listener];
  [(AXHAServer *)self registerListener:listenerCopy forConnectionStateHandler:handlerCopy listenerHash:v9];
}

- (void)registerListener:(id)listener forConnectionStateHandler:(id)handler listenerHash:(id)hash
{
  listenerCopy = listener;
  handlerCopy = handler;
  hashCopy = hash;
  if (listenerCopy)
  {
    [(AXHAServer *)self setupListenerHelperForListener:listenerCopy withAddress:hashCopy];
  }

  connectionQueue = [(HCServer *)self connectionQueue];

  if (connectionQueue)
  {
    objc_initWeak(&location, self);
    connectionQueue2 = [(HCServer *)self connectionQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __70__AXHAServer_registerListener_forConnectionStateHandler_listenerHash___block_invoke;
    v13[3] = &unk_1E85CA890;
    objc_copyWeak(&v16, &location);
    v15 = handlerCopy;
    v14 = hashCopy;
    dispatch_async(connectionQueue2, v13);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    [(AXHAServer *)self _registerConnectionStateBlock:handlerCopy listenerHash:hashCopy];
  }
}

void __70__AXHAServer_registerListener_forConnectionStateHandler_listenerHash___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _registerConnectionStateBlock:*(a1 + 40) listenerHash:*(a1 + 32)];
}

- (void)_registerConnectionStateBlock:(id)block listenerHash:(id)hash
{
  hashCopy = hash;
  if (block)
  {
    aBlock = [block copy];
    connectionStateBlocks = [(AXHAServer *)self connectionStateBlocks];
    v8 = _Block_copy(aBlock);
    [connectionStateBlocks setObject:v8 forKey:hashCopy];

    hashCopy = connectionStateBlocks;
  }

  else
  {
    aBlock = [(AXHAServer *)self connectionStateBlocks];
    [aBlock removeObjectForKey:hashCopy];
  }
}

- (void)connectToControllerWithID:(id)d
{
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{d, @"controller", 0}];
  [(HCServer *)self sendMessageWithPayload:v4 andIdentifier:0x8000];
}

- (void)requestHearingAidConnectionWithReason:(int64_t)reason
{
  if (reason == 5)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.accessibility.hearing.audio.transfer", 0, 0, 1u);
  }

  else
  {
    v6 = MEMORY[0x1E695DF20];
    null = [MEMORY[0x1E695DFB0] null];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:reason];
    v9 = [v6 dictionaryWithObjectsAndKeys:{null, @"controller", v8, @"reason", 0}];

    [(HCServer *)self sendMessageWithPayload:v9 andIdentifier:0x8000];
  }
}

- (void)cancelHearingAidConnectionRequest
{
  v3 = MEMORY[0x1E695DF20];
  null = [MEMORY[0x1E695DFB0] null];
  v5 = [v3 dictionaryWithObjectsAndKeys:{null, @"controller", 0}];

  [(HCServer *)self sendMessageWithPayload:v5 andIdentifier:0x2000];
}

- (void)registerListener:(id)listener forLiveListenLevelsHandler:(id)handler
{
  listenerCopy = listener;
  handlerCopy = handler;
  if (_os_feature_enabled_impl())
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__AXHAServer_registerListener_forLiveListenLevelsHandler___block_invoke;
    v9[3] = &unk_1E85CA8B8;
    v10 = handlerCopy;
    [(AXHAServer *)self registerListener:listenerCopy forLiveListenHandler:v9];
  }

  else
  {
    [(HCServer *)self sendMessageWithPayload:&unk_1F5624578 andIdentifier:256];
    v8 = _Block_copy(handlerCopy);
    [(AXHAServer *)self registerUpdateBlock:v8 forIdentifier:256 withListener:listenerCopy];
  }
}

- (void)unregisterLiveListenLevelListener:(id)listener
{
  listenerCopy = listener;
  if (_os_feature_enabled_impl())
  {
    [(AXHAServer *)self registerListener:listenerCopy forLiveListenHandler:0];
  }

  else
  {
    [(AXHAServer *)self registerUpdateBlock:0 forIdentifier:256 withListener:listenerCopy];

    updates = [(AXHAServer *)self updates];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:256];
    listenerCopy = [updates objectForKey:v5];

    if (![listenerCopy count])
    {
      [(HCServer *)self sendMessageWithPayload:&unk_1F56245A0 andIdentifier:256];
    }
  }
}

- (void)registerListener:(id)listener forLiveListenHandler:(id)handler
{
  listenerCopy = listener;
  handlerCopy = handler;
  if (_os_feature_enabled_impl())
  {
    [(HCServer *)self sendMessageWithPayload:&unk_1F56245C8 andIdentifier:256];
    v7 = _Block_copy(handlerCopy);
    [(AXHAServer *)self registerUpdateBlock:v7 forIdentifier:256 withListener:listenerCopy];
  }
}

- (void)unregisterLiveListenListener:(id)listener
{
  listenerCopy = listener;
  if (_os_feature_enabled_impl())
  {
    [(AXHAServer *)self registerUpdateBlock:0 forIdentifier:256 withListener:listenerCopy];
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

- (void)registerListener:(id)listener forLiveDosimetryUpdates:(BOOL)updates withDoseHandler:(id)handler
{
  handlerCopy = handler;
  listenerCopy = listener;
  [(HCServer *)self sendMessageWithPayload:&unk_1F5624690 andIdentifier:0x40000];
  v9 = _Block_copy(handlerCopy);

  [(AXHAServer *)self registerUpdateBlock:v9 forIdentifier:0x40000 withListener:listenerCopy];
}

- (void)unregisterDoseHandler:(id)handler
{
  [(AXHAServer *)self registerUpdateBlock:0 forIdentifier:0x40000 withListener:handler];
  updates = [(AXHAServer *)self updates];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x40000];
  v6 = [updates objectForKey:v5];

  if (![v6 count])
  {
    [(HCServer *)self sendMessageWithPayload:&unk_1F56246B8 andIdentifier:0x40000];
  }
}

- (void)requestNoiseBuffersForTimeInterval:(double)interval withHandler:(id)handler
{
  v16[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (interval <= 0.0)
    {
      connectionQueue = [(HCServer *)self connectionQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __61__AXHAServer_requestNoiseBuffersForTimeInterval_withHandler___block_invoke_3;
      block[3] = &unk_1E85CA930;
      v9 = &v12;
      v12 = handlerCopy;
      dispatch_async(connectionQueue, block);
    }

    else
    {
      v15 = @"HUEDSampleIntervalKey";
      connectionQueue = [MEMORY[0x1E696AD98] numberWithDouble:interval];
      v16[0] = connectionQueue;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __61__AXHAServer_requestNoiseBuffersForTimeInterval_withHandler___block_invoke;
      v13[3] = &unk_1E85CA908;
      v9 = &v14;
      v14 = handlerCopy;
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

- (void)environmentalDosimetryDidUpdate:(id)update
{
  updateCopy = update;
  updates = [(AXHAServer *)self updates];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x40000];
  v7 = [updates objectForKey:v6];

  v8 = [updateCopy objectForKey:@"HUEDSlowLeqIdentifier"];
  [v8 floatValue];

  v9 = [updateCopy objectForKey:@"HUEDFastLeqIdentifier"];
  [v9 floatValue];

  v10 = [updateCopy objectForKey:@"HUEDEnabledIdentifier"];
  [v10 BOOLValue];

  v11 = [updateCopy objectForKey:@"HUEDThresholdCrossedIdentifier"];
  [v11 unsignedIntegerValue];

  v12 = [updateCopy objectForKey:@"HUEDSlowAttenuationLevelIdentifier"];
  [v12 floatValue];

  v13 = [updateCopy objectForKey:@"HUEDFastAttenuationLevelIdentifier"];
  [v13 floatValue];

  v14 = [updateCopy objectForKey:@"HUEDWearingAirPodsIdentifier"];
  [v14 BOOLValue];

  v15 = [updateCopy objectForKey:@"HUEDDeviceTypeIdentifier"];

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

- (void)registerListener:(id)listener forRemoteLiveHeadphoneLevelHandler:(id)handler
{
  listenerCopy = listener;
  handlerCopy = handler;
  v8 = +[HUUtilities sharedUtilities];
  deviceIsTinker = [v8 deviceIsTinker];

  if (deviceIsTinker)
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
    [(AXHAServer *)self _registerListener:listenerCopy forLiveHeadphoneLevelHandler:handlerCopy messageIdentifier:0x200000];
  }
}

- (void)registerListener:(id)listener forRemoteLiveHeadphoneLevelChangesHandler:(id)handler
{
  listenerCopy = listener;
  handlerCopy = handler;
  v8 = +[HUUtilities sharedUtilities];
  deviceIsTinker = [v8 deviceIsTinker];

  if (deviceIsTinker)
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
    [(AXHAServer *)self _registerListener:listenerCopy forLiveHeadphoneLevelHandler:handlerCopy messageIdentifier:0x400000];
  }
}

- (void)_registerListener:(id)listener forLiveHeadphoneLevelHandler:(id)handler messageIdentifier:(unint64_t)identifier
{
  handlerCopy = handler;
  listenerCopy = listener;
  [(HCServer *)self sendMessageWithPayload:&unk_1F56246E0 andIdentifier:identifier];
  v10 = _Block_copy(handlerCopy);

  [(AXHAServer *)self registerUpdateBlock:v10 forIdentifier:identifier withListener:listenerCopy];
}

- (void)_headphoneLevelDidUpdate:(id)update messageIdentifier:(unint64_t)identifier
{
  updateCopy = update;
  updates = [(AXHAServer *)self updates];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:identifier];
  v9 = [updates objectForKey:v8];

  v10 = updateCopy;
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

- (void)registerListener:(id)listener forControlMessageHandler:(id)handler
{
  listenerCopy = listener;
  v7 = _Block_copy(handler);
  [(AXHAServer *)self registerUpdateBlock:v7 forIdentifier:0x8000000000000000 withListener:listenerCopy];

  [(HCServer *)self sendMessageWithPayload:&unk_1F5624708 andIdentifier:0x8000000000000000];
}

- (void)unregisterControlMessageHandler:(id)handler
{
  [(AXHAServer *)self registerUpdateBlock:0 forIdentifier:0x8000000000000000 withListener:handler];

  [(HCServer *)self sendMessageWithPayload:&unk_1F5624730 andIdentifier:0x8000000000000000];
}

- (void)controlMessageDidUpdate:(id)update
{
  updateCopy = update;
  updates = [(AXHAServer *)self updates];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x8000000000000000];
  v7 = [updates objectForKey:v6];

  v10 = updateCopy;
  v8 = updateCopy;
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

- (void)registerListener:(id)listener forComfortSoundsModelUpdatesHandler:(id)handler
{
  listenerCopy = listener;
  v7 = _Block_copy(handler);
  [(AXHAServer *)self registerUpdateBlock:v7 forIdentifier:0x1000000 withListener:listenerCopy];

  [(HCServer *)self sendMessageWithPayload:&unk_1F5624758 andIdentifier:0x1000000];
}

- (void)unregisterComfortSoundsModelUpdatesHandler:(id)handler
{
  [(AXHAServer *)self registerUpdateBlock:0 forIdentifier:0x1000000 withListener:handler];

  [(HCServer *)self sendMessageWithPayload:&unk_1F5624780 andIdentifier:0x1000000];
}

- (void)comfortSoundsAssetsDidUpdate:(id)update
{
  updateCopy = update;
  updates = [(AXHAServer *)self updates];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x1000000];
  v7 = [updates objectForKey:v6];

  v10 = updateCopy;
  v8 = v7;
  v9 = updateCopy;
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
  updates = [(AXHAServer *)self updates];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x1000000];
  v5 = [updates objectForKey:v4];

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

- (void)downloadComfortSoundAsset:(id)asset
{
  v11[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  assetId = [assetCopy assetId];
  v6 = [assetId length];

  if (v6)
  {
    [(AXHAServer *)self reregisterForComfortSoundsAssetsUpdatesIfNeeded];
    v10 = @"HUComfortSoundsDownloadAssetKey";
    assetId2 = [assetCopy assetId];
    v11[0] = assetId2;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [(HCServer *)self sendMessageWithPayload:v8 andIdentifier:0x1000000];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)removeComfortSoundAsset:(id)asset
{
  v11[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  assetId = [assetCopy assetId];
  v6 = [assetId length];

  if (v6)
  {
    [(AXHAServer *)self reregisterForComfortSoundsAssetsUpdatesIfNeeded];
    v10 = @"HUComfortSoundsRemoveAssetKey";
    assetId2 = [assetCopy assetId];
    v11[0] = assetId2;
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

- (void)setupListenerHelperForListener:(id)listener withAddress:(id)address
{
  object = listener;
  addressCopy = address;
  v6 = objc_getAssociatedObject(object, &AXHAListenerHelperKey);
  if (!v6)
  {
    v6 = [[AXHAListenerHelper alloc] initWithListenerAddress:addressCopy];
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