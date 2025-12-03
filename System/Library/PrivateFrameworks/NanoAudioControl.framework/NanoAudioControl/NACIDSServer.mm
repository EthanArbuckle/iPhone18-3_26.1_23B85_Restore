@interface NACIDSServer
- (BOOL)_shouldForceVolumeWarning;
- (NACIDSServer)initWithVolumeAudioCategories:(id)categories;
- (id)_nacVolumeControllerForTarget:(id)target createIfNeeded:(BOOL)needed;
- (id)_targetForNACVolumeController:(id)controller;
- (id)_targetForVolumeController:(id)controller;
- (void)_beginObservingHapticState;
- (void)_beginObservingProxyVolumeForTarget:(id)target withEndpointRoute:(id)route;
- (void)_beginObservingSystemMutedState;
- (void)_beginObservingSystemVolume;
- (void)_cancelProxyVolumeObservationForTarget:(id)target;
- (void)_cancelRouteObservationForCategory:(id)category;
- (void)_cancelSystemVolumeObservation;
- (void)_handleBeginObservingAudioRoutes:(id)routes;
- (void)_handleBeginObservingListeningModes:(id)modes;
- (void)_handleBeginObservingProxyVolumeForTarget:(id)target;
- (void)_handleBeginObservingSystemVolume;
- (void)_handleBeginObservingVolume:(id)volume;
- (void)_handleEndObservingAudioRoutes:(id)routes;
- (void)_handleEndObservingListeningModes:(id)modes;
- (void)_handleEndObservingVolume:(id)volume;
- (void)_handlePickAudioRoute:(id)route;
- (void)_handlePlayTone:(id)tone;
- (void)_handleSetCurrentListeningMode:(id)mode;
- (void)_handleSetHapticIntensity:(id)intensity;
- (void)_handleSetHapticState:(id)state;
- (void)_handleSetMuted:(id)muted;
- (void)_handleSetProminentHapticEnabled:(id)enabled;
- (void)_handleSetSystemMuted:(id)muted;
- (void)_handleSetVolume:(id)volume;
- (void)_handleStopTone:(id)tone;
- (void)_hapticIntensityDidChangeNotification:(id)notification;
- (void)_sendAvailableListeningModes:(id)modes currentListeningMode:(id)mode error:(id)error forTarget:(id)target;
- (void)_sendCurrentObservingSystemVolumeValues;
- (void)_sendEUVolumeLimit:(float)limit forTarget:(id)target;
- (void)_sendHapticState:(int64_t)state;
- (void)_sendMessage:(id)message type:(int64_t)type timeout:(double)timeout queueOne:(id)one retry:(BOOL)retry;
- (void)_sendVolumeValue:(float)value forTarget:(id)target;
- (void)_sendVolumeWarningEnabled:(BOOL)enabled volumeWarningState:(int64_t)state forTarget:(id)target;
- (void)_setRequestedVolumeAtLeastOnce;
- (void)_updateHapticIntensityValue;
- (void)_updateHapticState;
- (void)_updateSystemMutedState;
- (void)beginObservingHapticState;
- (void)beginObservingSystemMutedState;
- (void)dealloc;
- (void)routingControllerAvailableRoutesDidChange:(id)change;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)updateProminentHapticState;
- (void)volumeController:(id)controller EUVolumeLimitDidChange:(float)change;
- (void)volumeController:(id)controller didFailToSetCurrentListeningModeWithError:(id)error;
- (void)volumeController:(id)controller mutedStateDidChange:(BOOL)change;
- (void)volumeController:(id)controller volumeControlAvailableDidChange:(BOOL)change;
- (void)volumeController:(id)controller volumeValueDidChange:(float)change;
- (void)volumeController:(id)controller volumeWarningStateDidChange:(int64_t)change;
- (void)volumeControllerDidUpdateAvailableListeningModes:(id)modes;
- (void)volumeControllerDidUpdateCurrentListeningMode:(id)mode;
@end

@implementation NACIDSServer

- (NACIDSServer)initWithVolumeAudioCategories:(id)categories
{
  categoriesCopy = categories;
  v26.receiver = self;
  v26.super_class = NACIDSServer;
  v6 = [(NACIDSServer *)&v26 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.audiocontrol.music"];
    idsService = v6->_idsService;
    v6->_idsService = v7;

    [(IDSService *)v6->_idsService setProtobufAction:sel__handleSetVolume_ forIncomingRequestsOfType:1];
    [(IDSService *)v6->_idsService setProtobufAction:sel__handleSetMuted_ forIncomingRequestsOfType:7];
    [(IDSService *)v6->_idsService setProtobufAction:sel__handleBeginObservingVolume_ forIncomingRequestsOfType:3];
    [(IDSService *)v6->_idsService setProtobufAction:sel__handleEndObservingVolume_ forIncomingRequestsOfType:4];
    [(IDSService *)v6->_idsService setProtobufAction:sel__handleBeginObservingAudioRoutes_ forIncomingRequestsOfType:8];
    [(IDSService *)v6->_idsService setProtobufAction:sel__handleEndObservingAudioRoutes_ forIncomingRequestsOfType:9];
    [(IDSService *)v6->_idsService setProtobufAction:sel__handlePickAudioRoute_ forIncomingRequestsOfType:10];
    [(IDSService *)v6->_idsService setProtobufAction:sel__handleSetSystemMuted_ forIncomingRequestsOfType:19];
    [(IDSService *)v6->_idsService setProtobufAction:sel__handleSetHapticState_ forIncomingRequestsOfType:23];
    [(IDSService *)v6->_idsService setProtobufAction:sel__handleSetCurrentListeningMode_ forIncomingRequestsOfType:25];
    [(IDSService *)v6->_idsService setProtobufAction:sel__handleBeginObservingListeningModes_ forIncomingRequestsOfType:26];
    [(IDSService *)v6->_idsService setProtobufAction:sel__handleEndObservingListeningModes_ forIncomingRequestsOfType:27];
    [(IDSService *)v6->_idsService setProtobufAction:sel__handlePlayTone_ forIncomingRequestsOfType:28];
    [(IDSService *)v6->_idsService setProtobufAction:sel__handleStopTone_ forIncomingRequestsOfType:29];
    [(IDSService *)v6->_idsService setProtobufAction:sel__handleSetHapticIntensity_ forIncomingRequestsOfType:13];
    [(IDSService *)v6->_idsService setProtobufAction:sel__handleSetProminentHapticEnabled_ forIncomingRequestsOfType:21];
    objc_storeStrong(&v6->_volumeAudioCategories, categories);
    v9 = objc_opt_new();
    routesObservers = v6->_routesObservers;
    v6->_routesObservers = v9;

    v11 = objc_opt_new();
    messageRecords = v6->_messageRecords;
    v6->_messageRecords = v11;

    v13 = objc_opt_new();
    systemVolumeObservers = v6->_systemVolumeObservers;
    v6->_systemVolumeObservers = v13;

    v15 = objc_opt_new();
    proxyVolumeObservers = v6->_proxyVolumeObservers;
    v6->_proxyVolumeObservers = v15;

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("com.apple.nanoaudiocontrol.ids.server", v17);
    serialQueue = v6->_serialQueue;
    v6->_serialQueue = v18;

    [(IDSService *)v6->_idsService addDelegate:v6 queue:v6->_serialQueue];
    v20 = v6->_serialQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__NACIDSServer_initWithVolumeAudioCategories___block_invoke;
    block[3] = &unk_27992B4E8;
    v21 = v6;
    v25 = v21;
    dispatch_async(v20, block);
    v22 = v21;
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  if (self->_systemSilentModeNotificationToken)
  {
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 removeObserver:self->_systemSilentModeNotificationToken];
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v6.receiver = self;
  v6.super_class = NACIDSServer;
  [(NACIDSServer *)&v6 dealloc];
}

- (void)beginObservingHapticState
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__NACIDSServer_beginObservingHapticState__block_invoke;
  block[3] = &unk_27992B4E8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)beginObservingSystemMutedState
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__NACIDSServer_beginObservingSystemMutedState__block_invoke;
  block[3] = &unk_27992B4E8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)_handleBeginObservingVolume:(id)volume
{
  volumeCopy = volume;
  v5 = [NACOriginIdentifierMessage alloc];
  data = [volumeCopy data];

  v9 = [(NACOriginIdentifierMessage *)v5 initWithData:data];
  if ([(NACOriginIdentifierMessage *)v9 hasOriginIdentifier])
  {
    [MEMORY[0x277CCABB0] numberWithInt:{-[NACOriginIdentifierMessage originIdentifier](v9, "originIdentifier")}];
  }

  else
  {
    NACProxyVolumeControlLocalOriginIdentifier();
  }
  v7 = ;
  v8 = [[NACProxyVolumeControlTarget alloc] initWithOriginIdentifier:v7 category:0];
  if ([(NACProxyVolumeControlTarget *)v8 isPairedDevice])
  {
    [(NACIDSServer *)self _handleBeginObservingSystemVolume];
  }

  else
  {
    [(NACIDSServer *)self _handleBeginObservingProxyVolumeForTarget:v8];
  }
}

- (void)_handleEndObservingVolume:(id)volume
{
  v20 = *MEMORY[0x277D85DE8];
  volumeCopy = volume;
  v5 = [NACOriginIdentifierMessage alloc];
  data = [volumeCopy data];

  v7 = [(NACOriginIdentifierMessage *)v5 initWithData:data];
  if ([(NACOriginIdentifierMessage *)v7 hasOriginIdentifier])
  {
    [MEMORY[0x277CCABB0] numberWithInt:{-[NACOriginIdentifierMessage originIdentifier](v7, "originIdentifier")}];
  }

  else
  {
    NACProxyVolumeControlLocalOriginIdentifier();
  }
  v8 = ;
  v9 = [[NACProxyVolumeControlTarget alloc] initWithOriginIdentifier:v8 category:0];
  isPairedDevice = [(NACProxyVolumeControlTarget *)v9 isPairedDevice];
  v11 = NMLogForCategory(4);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (isPairedDevice)
  {
    if (v12)
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_25AEBF000, v11, OS_LOG_TYPE_DEFAULT, "[NACIDS] Handle end observing system volume", &v18, 2u);
    }

    systemVolumeRunAssertion = self->_systemVolumeRunAssertion;
    self->_systemVolumeRunAssertion = 0;
  }

  else
  {
    if (v12)
    {
      v18 = 138412290;
      v19 = v9;
      _os_log_impl(&dword_25AEBF000, v11, OS_LOG_TYPE_DEFAULT, "[NACIDS] Handle end observing volume for target: %@", &v18, 0xCu);
    }

    systemVolumeRunAssertion = [(NSMutableDictionary *)self->_proxyVolumeObservers objectForKeyedSubscript:v9];
    v14 = NMLogForCategory(4);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (systemVolumeRunAssertion)
    {
      if (v15)
      {
        v18 = 138412290;
        v19 = v9;
        _os_log_impl(&dword_25AEBF000, v14, OS_LOG_TYPE_DEFAULT, "[NACIDS] End observing volume for target: %@", &v18, 0xCu);
      }

      [(NSMutableDictionary *)self->_proxyVolumeObservers removeObjectForKey:v9];
    }

    else
    {
      if (v15)
      {
        v18 = 138412290;
        v19 = v9;
        _os_log_impl(&dword_25AEBF000, v14, OS_LOG_TYPE_DEFAULT, "[NACIDS] Received attempt to end observing volume for target (%@), but observing was not in progress", &v18, 0xCu);
      }
    }

    if (![(NSMutableDictionary *)self->_proxyVolumeObservers count])
    {
      proxyVolumeRunAssertion = self->_proxyVolumeRunAssertion;
      self->_proxyVolumeRunAssertion = 0;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_handleSetVolume:(id)volume
{
  v34 = *MEMORY[0x277D85DE8];
  volumeCopy = volume;
  v5 = NMLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v30) = 0;
    _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "[NACIDS] Handle set volume", &v30, 2u);
  }

  v6 = [NACVolumeValueMessage alloc];
  data = [volumeCopy data];

  v8 = [(NACVolumeValueMessage *)v6 initWithData:data];
  if ([(NACVolumeValueMessage *)v8 hasOriginIdentifier])
  {
    [MEMORY[0x277CCABB0] numberWithInt:{-[NACVolumeValueMessage originIdentifier](v8, "originIdentifier")}];
  }

  else
  {
    NACProxyVolumeControlLocalOriginIdentifier();
  }
  v9 = ;
  v10 = [NACProxyVolumeControlTarget alloc];
  category = [(NACVolumeValueMessage *)v8 category];
  v12 = [(NACProxyVolumeControlTarget *)v10 initWithOriginIdentifier:v9 category:category];

  [(NACVolumeValueMessage *)v8 volumeValue];
  v14 = v13;
  if ([(NACProxyVolumeControlTarget *)v12 isPairedDevice])
  {
    category2 = [(NACProxyVolumeControlTarget *)v12 category];
    v16 = NACCategoryStringWithVolumeCategory(category2);

    volumeController2 = [(NSMutableDictionary *)self->_systemVolumeObservers objectForKeyedSubscript:v12];
    volumeController = [volumeController2 volumeController];
    [volumeController EUVolumeLimit];
    v20 = v19;
    [volumeController volumeValue];
    v22 = v21;
    if ([volumeController volumeWarningEnabled] && v14 > v20 && v22 <= v20)
    {
      mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
      [mEMORY[0x277D26E58] allowUserToExceedEUVolumeLimit];
    }

    v24 = NMLogForCategory(4);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 134218242;
      v31 = v14;
      v32 = 2112;
      v33 = v16;
      _os_log_impl(&dword_25AEBF000, v24, OS_LOG_TYPE_DEFAULT, "[NACIDS] Requested value: %f for category: %@", &v30, 0x16u);
    }

    *&v25 = v14;
    [volumeController setVolumeValue:v25];
    if ([(NACProxyVolumeControlTarget *)v16 isEqualToString:@"Ringtone"])
    {
      v26 = +[NACXPCServer server];
      [v26 playAudioAndHapticPreview];
    }
  }

  else
  {
    v16 = [(NSMutableDictionary *)self->_proxyVolumeObservers objectForKeyedSubscript:v12];
    volumeController2 = [(NACProxyVolumeControlTarget *)v16 volumeController];
    v27 = NMLogForCategory(4);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 134218242;
      v31 = v14;
      v32 = 2112;
      v33 = v12;
      _os_log_impl(&dword_25AEBF000, v27, OS_LOG_TYPE_DEFAULT, "[NACIDS] Requested value: %f for target: %@", &v30, 0x16u);
    }

    *&v28 = v14;
    [volumeController2 setVolumeValue:v28];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_handleSetMuted:(id)muted
{
  v21 = *MEMORY[0x277D85DE8];
  mutedCopy = muted;
  v5 = [NACMutedMessage alloc];
  data = [mutedCopy data];

  v7 = [(NACMutedMessage *)v5 initWithData:data];
  if ([(NACMutedMessage *)v7 hasOriginIdentifier])
  {
    [MEMORY[0x277CCABB0] numberWithInt:{-[NACMutedMessage originIdentifier](v7, "originIdentifier")}];
  }

  else
  {
    NACProxyVolumeControlLocalOriginIdentifier();
  }
  v8 = ;
  v9 = [NACProxyVolumeControlTarget alloc];
  category = [(NACMutedMessage *)v7 category];
  v11 = [(NACProxyVolumeControlTarget *)v9 initWithOriginIdentifier:v8 category:category];

  if ([(NACProxyVolumeControlTarget *)v11 isPairedDevice])
  {
    category2 = [(NACProxyVolumeControlTarget *)v11 category];
    v13 = NACCategoryStringWithVolumeCategory(category2);

    v14 = NMLogForCategory(4);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v13;
      _os_log_impl(&dword_25AEBF000, v14, OS_LOG_TYPE_DEFAULT, "[NACIDS] Handle set muted for category: %@", &v19, 0xCu);
    }

    v15 = [(NSMutableDictionary *)self->_systemVolumeObservers objectForKeyedSubscript:v11];
  }

  else
  {
    v16 = NMLogForCategory(4);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v11;
      _os_log_impl(&dword_25AEBF000, v16, OS_LOG_TYPE_DEFAULT, "[NACIDS] Handle set muted for target: %@", &v19, 0xCu);
    }

    v15 = [(NSMutableDictionary *)self->_proxyVolumeObservers objectForKeyedSubscript:v11];
  }

  volumeController = [v15 volumeController];
  [volumeController setMuted:{-[NACMutedMessage muted](v7, "muted")}];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_handleSetSystemMuted:(id)muted
{
  mutedCopy = muted;
  v4 = NMLogForCategory(4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_25AEBF000, v4, OS_LOG_TYPE_DEFAULT, "[NACIDS] Handle set system muted", v9, 2u);
  }

  v5 = [NACMutedMessage alloc];
  data = [mutedCopy data];

  v7 = [(NACMutedMessage *)v5 initWithData:data];
  mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedInstance];
  [mEMORY[0x277D26E58] setSilentMode:-[NACMutedMessage muted](v7 untilTime:"muted") reason:0 clientType:{@"NanoAudioControl handling system mute setting", 7}];
}

- (void)_handleSetProminentHapticEnabled:(id)enabled
{
  enabledCopy = enabled;
  v5 = NMLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "[NACIDS] Handle set prominent haptic enabled", v11, 2u);
  }

  v6 = [NACProminentHapticStateMessage alloc];
  data = [enabledCopy data];

  v8 = [(NACProminentHapticStateMessage *)v6 initWithData:data];
  enabled = [(NACProminentHapticStateMessage *)v8 enabled];
  if (self->_prominentHapticEnabled != enabled)
  {
    [MEMORY[0x277D71F50] _setWatchPrefersSalientToneAndVibration:enabled];
    [(NACIDSServer *)self _updateProminentHapticState];
    v10 = +[NACXPCServer server];
    [v10 playProminentHapticPreview];
  }
}

- (void)_handleSetHapticIntensity:(id)intensity
{
  v17 = *MEMORY[0x277D85DE8];
  intensityCopy = intensity;
  v4 = [NACHapticIntensityMessage alloc];
  data = [intensityCopy data];

  v6 = [(NACHapticIntensityMessage *)v4 initWithData:data];
  [(NACHapticIntensityMessage *)v6 intensity];
  v8 = NACSystemHapticValueForUIValue(v7);
  v9 = NMLogForCategory(4);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134217984;
    v16 = v8;
    _os_log_impl(&dword_25AEBF000, v9, OS_LOG_TYPE_DEFAULT, "[NACIDS] Handle set haptic intensity. Setting haptic intensity: %f", &v15, 0xCu);
  }

  mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
  *&v11 = v8;
  v12 = [mEMORY[0x277D26E58] setVibeIntensityTo:v11];

  if (v12)
  {
    v13 = +[NACXPCServer server];
    [v13 playAudioAndHapticPreview];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleSetCurrentListeningMode:(id)mode
{
  v21 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  v5 = [NACListeningModesMessage alloc];
  data = [modeCopy data];

  v7 = [(NACListeningModesMessage *)v5 initWithData:data];
  if ([(NACListeningModesMessage *)v7 hasOriginIdentifier])
  {
    [MEMORY[0x277CCABB0] numberWithInt:{-[NACListeningModesMessage originIdentifier](v7, "originIdentifier")}];
  }

  else
  {
    NACProxyVolumeControlLocalOriginIdentifier();
  }
  v8 = ;
  v9 = [NACProxyVolumeControlTarget alloc];
  category = [(NACListeningModesMessage *)v7 category];
  v11 = [(NACProxyVolumeControlTarget *)v9 initWithOriginIdentifier:v8 category:category];

  v12 = NMLogForCategory(4);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    currentListeningMode = [(NACListeningModesMessage *)v7 currentListeningMode];
    v17 = 138412546;
    v18 = currentListeningMode;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_25AEBF000, v12, OS_LOG_TYPE_DEFAULT, "[NACIDS] [ListeningMode] Handle set current listening mode: %@ for target: %@", &v17, 0x16u);
  }

  v14 = [(NACIDSServer *)self _nacVolumeControllerForTarget:v11 createIfNeeded:1];
  currentListeningMode2 = [(NACListeningModesMessage *)v7 currentListeningMode];
  [v14 setCurrentListeningMode:currentListeningMode2];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_handleBeginObservingListeningModes:(id)modes
{
  v17 = *MEMORY[0x277D85DE8];
  modesCopy = modes;
  v5 = [NACOriginIdentifierMessage alloc];
  data = [modesCopy data];

  v7 = [(NACOriginIdentifierMessage *)v5 initWithData:data];
  if ([(NACOriginIdentifierMessage *)v7 hasOriginIdentifier])
  {
    [MEMORY[0x277CCABB0] numberWithInt:{-[NACOriginIdentifierMessage originIdentifier](v7, "originIdentifier")}];
  }

  else
  {
    NACProxyVolumeControlLocalOriginIdentifier();
  }
  v8 = ;
  v9 = [[NACProxyVolumeControlTarget alloc] initWithOriginIdentifier:v8 category:0];
  v10 = NMLogForCategory(4);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v9;
    _os_log_impl(&dword_25AEBF000, v10, OS_LOG_TYPE_DEFAULT, "[NACIDS] [ListeningMode] Handle begin observing listening modes for target: %@", &v15, 0xCu);
  }

  v11 = [(NACIDSServer *)self _nacVolumeControllerForTarget:v9 createIfNeeded:1];
  [v11 beginObservingListeningModes];
  availableListeningModes = [v11 availableListeningModes];
  currentListeningMode = [v11 currentListeningMode];
  [(NACIDSServer *)self _sendAvailableListeningModes:availableListeningModes currentListeningMode:currentListeningMode error:0 forTarget:v9];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleEndObservingListeningModes:(id)modes
{
  v15 = *MEMORY[0x277D85DE8];
  modesCopy = modes;
  v5 = [NACOriginIdentifierMessage alloc];
  data = [modesCopy data];

  v7 = [(NACOriginIdentifierMessage *)v5 initWithData:data];
  if ([(NACOriginIdentifierMessage *)v7 hasOriginIdentifier])
  {
    [MEMORY[0x277CCABB0] numberWithInt:{-[NACOriginIdentifierMessage originIdentifier](v7, "originIdentifier")}];
  }

  else
  {
    NACProxyVolumeControlLocalOriginIdentifier();
  }
  v8 = ;
  v9 = [[NACProxyVolumeControlTarget alloc] initWithOriginIdentifier:v8 category:0];
  v10 = NMLogForCategory(4);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v9;
    _os_log_impl(&dword_25AEBF000, v10, OS_LOG_TYPE_DEFAULT, "[NACIDS] [ListeningMode] Handle end observing listening modes for target: %@", &v13, 0xCu);
  }

  v11 = [(NACIDSServer *)self _nacVolumeControllerForTarget:v9 createIfNeeded:0];
  [v11 endObservingListeningModes];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handlePlayTone:(id)tone
{
  v47 = *MEMORY[0x277D85DE8];
  toneCopy = tone;
  v5 = [NACPlayToneMessage alloc];
  data = [toneCopy data];
  v7 = [(NACPlayToneMessage *)v5 initWithData:data];

  v8 = NMLogForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    alertType = [(NACPlayToneMessage *)v7 alertType];
    topic = [(NACPlayToneMessage *)v7 topic];
    toneIdentifier = [(NACPlayToneMessage *)v7 toneIdentifier];
    *buf = 138412802;
    v42 = alertType;
    v43 = 2112;
    v44 = topic;
    v45 = 2112;
    v46 = toneIdentifier;
    _os_log_impl(&dword_25AEBF000, v8, OS_LOG_TYPE_DEFAULT, "[NACIDS] Handle request to play alertType: %@, topic: %@, toneIdentifier: %@", buf, 0x20u);
  }

  v12 = objc_alloc(MEMORY[0x277D71F58]);
  alertType2 = [(NACPlayToneMessage *)v7 alertType];
  v14 = [v12 initWithType:TLAlertTypeFromString()];

  topic2 = [(NACPlayToneMessage *)v7 topic];
  [v14 setTopic:topic2];

  toneIdentifier2 = [(NACPlayToneMessage *)v7 toneIdentifier];
  [v14 setToneIdentifier:toneIdentifier2];

  [v14 setShouldRepeat:{-[NACPlayToneMessage shouldRepeat](v7, "shouldRepeat")}];
  [v14 setForPreview:{-[NACPlayToneMessage forPreview](v7, "forPreview")}];
  objc_initWeak(buf, self);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v17 = self->_playingAlerts;
  v18 = [(NSMutableSet *)v17 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v18)
  {
    v19 = *v37;
    do
    {
      v20 = 0;
      do
      {
        if (*v37 != v19)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v36 + 1) + 8 * v20++) stop];
      }

      while (v18 != v20);
      v18 = [(NSMutableSet *)v17 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v18);
  }

  [(NSMutableSet *)self->_playingAlerts removeAllObjects];
  v21 = [MEMORY[0x277D71F50] alertWithConfiguration:v14];
  playingAlerts = self->_playingAlerts;
  if (!playingAlerts)
  {
    v23 = [MEMORY[0x277CBEB58] set];
    v25 = self->_playingAlerts;
    p_playingAlerts = &self->_playingAlerts;
    *p_playingAlerts = v23;

    playingAlerts = *p_playingAlerts;
  }

  [(NSMutableSet *)playingAlerts addObject:v21];
  v26 = os_transaction_create();
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __32__NACIDSServer__handlePlayTone___block_invoke;
  v31[3] = &unk_27992B7A0;
  v27 = v26;
  v32 = v27;
  v28 = v7;
  v33 = v28;
  objc_copyWeak(&v35, buf);
  v29 = v21;
  v34 = v29;
  [v29 playWithCompletionHandler:v31];

  objc_destroyWeak(&v35);
  objc_destroyWeak(buf);

  v30 = *MEMORY[0x277D85DE8];
}

void __32__NACIDSServer__handlePlayTone___block_invoke(id *a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a1[4];
  v6 = NMLogForCategory(4);
  v7 = v6;
  if (a3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __32__NACIDSServer__handlePlayTone___block_invoke_cold_1(a1, v7);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [a1[5] alertType];
      v9 = [a1[5] topic];
      v10 = [a1[5] toneIdentifier];
      *buf = 138412802;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_25AEBF000, v7, OS_LOG_TYPE_DEFAULT, "[NACIDS] Finished playing play alertType: %@, topic: %@, toneIdentifier: %@", buf, 0x20u);
    }

    WeakRetained = objc_loadWeakRetained(a1 + 7);
    v7 = WeakRetained;
    if (WeakRetained)
    {
      v12 = *(WeakRetained + 9);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __32__NACIDSServer__handlePlayTone___block_invoke_166;
      v14[3] = &unk_27992B510;
      v14[4] = WeakRetained;
      v15 = a1[6];
      dispatch_async(v12, v14);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleStopTone:(id)tone
{
  v22 = *MEMORY[0x277D85DE8];
  toneCopy = tone;
  v5 = [NACStopToneMessage alloc];
  data = [toneCopy data];
  v7 = [(NACStopToneMessage *)v5 initWithData:data];

  v8 = NMLogForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25AEBF000, v8, OS_LOG_TYPE_DEFAULT, "[NACIDS] Handle request to stop tone.", buf, 2u);
  }

  v9 = objc_alloc_init(MEMORY[0x277D71F60]);
  [(NACStopToneMessage *)v7 fadeOutDuration];
  [v9 setFadeOutDuration:?];
  [v9 setShouldWaitUntilEndOfCurrentRepetition:{-[NACStopToneMessage shouldWaitUntilEndOfCurrentRepetition](v7, "shouldWaitUntilEndOfCurrentRepetition")}];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = self->_playingAlerts;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v16 + 1) + 8 * v14++) stopWithOptions:{v9, v16}];
      }

      while (v12 != v14);
      v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v12);
  }

  [(NSMutableSet *)self->_playingAlerts removeAllObjects];
  v15 = *MEMORY[0x277D85DE8];
}

- (id)_nacVolumeControllerForTarget:(id)target createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  targetCopy = target;
  isPairedDevice = [targetCopy isPairedDevice];
  v8 = 32;
  if (isPairedDevice)
  {
    v8 = 24;
  }

  v9 = [*(&self->super.isa + v8) objectForKeyedSubscript:targetCopy];
  nacVolumeController = [v9 nacVolumeController];
  if (nacVolumeController)
  {
    v11 = 1;
  }

  else
  {
    v11 = !neededCopy;
  }

  if (!v11)
  {
    category = [targetCopy category];
    nacVolumeController = [NACVolumeController localVolumeControllerWithAudioCategory:category];

    [nacVolumeController setDelegate:self];
    [v9 setNacVolumeController:nacVolumeController];
  }

  return nacVolumeController;
}

- (void)_handleSetHapticState:(id)state
{
  v25 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = [NACHapticStateMessage alloc];
  data = [stateCopy data];

  v7 = [(NACHapticStateMessage *)v5 initWithData:data];
  state = [(NACHapticStateMessage *)v7 state];
  v9 = state;
  if (self->_hapticState == state)
  {
    v10 = NMLogForCategory(4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 134217984;
      v22 = *&v9;
      _os_log_impl(&dword_25AEBF000, v10, OS_LOG_TYPE_DEFAULT, "[NACIDS] Haptic state is the same (%lu). Skipped setting haptic state.", &v21, 0xCu);
    }
  }

  else
  {
    v11 = NACIntensityFromState(state);
    v12 = NACProminentEnabledFromState(v9);
    v13 = NMLogForCategory(4);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = @"NO";
      if (v12)
      {
        v14 = @"YES";
      }

      v21 = 134218242;
      v22 = v11;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_25AEBF000, v13, OS_LOG_TYPE_DEFAULT, "[NACIDS] Handling set haptic state. Setting haptic intensity to %f, prominent haptic enabled to %@", &v21, 0x16u);
    }

    v15 = NMLogForCategory(4);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v16)
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_25AEBF000, v15, OS_LOG_TYPE_DEFAULT, "[NACIDS] Playing prominent haptic preview", &v21, 2u);
      }

      v17 = +[NACXPCServer server];
      [v17 playProminentHapticPreview];
    }

    else
    {
      if (v16)
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_25AEBF000, v15, OS_LOG_TYPE_DEFAULT, "[NACIDS] Playing default haptic preview", &v21, 2u);
      }

      v17 = +[NACXPCServer server];
      [v17 playDefaultHapticPreview];
    }

    [MEMORY[0x277D71F50] _setWatchPrefersSalientToneAndVibration:v12];
    mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
    *&v19 = v11;
    [mEMORY[0x277D26E58] setVibeIntensityTo:v19];

    self->_prominentHapticEnabled = v12;
    self->_hapticIntensity = v11;
    [(NACIDSServer *)self _updateHapticState];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleBeginObservingAudioRoutes:(id)routes
{
  v25 = *MEMORY[0x277D85DE8];
  routesCopy = routes;
  v5 = NMLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "[NACIDS] Handle begin observing audio routes", buf, 2u);
  }

  v6 = [NACCategoryMessage alloc];
  data = [routesCopy data];

  v8 = [(NACCategoryMessage *)v6 initWithData:data];
  category = [(NACCategoryMessage *)v8 category];
  v10 = NACCategoryStringWithRouteCategory(category);

  v11 = [(NSMutableDictionary *)self->_routesObservers objectForKeyedSubscript:v10];
  v12 = NMLogForCategory(4);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      *buf = 138412290;
      v24 = v10;
      _os_log_impl(&dword_25AEBF000, v12, OS_LOG_TYPE_DEFAULT, "[NACIDS] Received attempt to begin observing audio routes for category [%@], but observing had already begun", buf, 0xCu);
    }
  }

  else
  {
    if (v13)
    {
      *buf = 138412290;
      v24 = v10;
      _os_log_impl(&dword_25AEBF000, v12, OS_LOG_TYPE_DEFAULT, "[NACIDS] Begin observing routes for category: %@", buf, 0xCu);
    }

    v12 = objc_opt_new();
    category2 = [(NACCategoryMessage *)v8 category];
    [v12 setCategory:category2];

    [v12 setDiscoveryMode:3];
    v11 = objc_opt_new();
    [v11 setRoutingController:v12];
    v15 = objc_opt_new();
    [v11 setRunAssertion:v15];

    [(NSMutableDictionary *)self->_routesObservers setObject:v11 forKeyedSubscript:v10];
    [v12 setDelegate:self];
    objc_initWeak(buf, v11);
    v16 = dispatch_time(0, 30000000000);
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__NACIDSServer__handleBeginObservingAudioRoutes___block_invoke;
    block[3] = &unk_27992B7C8;
    objc_copyWeak(&v22, buf);
    v20 = v10;
    selfCopy = self;
    dispatch_after(v16, serialQueue, block);

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __49__NACIDSServer__handleBeginObservingAudioRoutes___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));

  if (WeakRetained)
  {
    v3 = NMLogForCategory(4);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_25AEBF000, v3, OS_LOG_TYPE_DEFAULT, "[NACIDS] Route observation of category [%@] has been active for 30 seconds, cancelling and informing client", &v6, 0xCu);
    }

    [*(a1 + 40) _cancelRouteObservationForCategory:*(a1 + 32)];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleEndObservingAudioRoutes:(id)routes
{
  v18 = *MEMORY[0x277D85DE8];
  routesCopy = routes;
  v5 = NMLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "[NACIDS] Handle end observing audio routes", &v16, 2u);
  }

  v6 = [NACCategoryMessage alloc];
  data = [routesCopy data];

  v8 = [(NACCategoryMessage *)v6 initWithData:data];
  category = [(NACCategoryMessage *)v8 category];
  v10 = NACCategoryStringWithRouteCategory(category);

  v11 = [(NSMutableDictionary *)self->_routesObservers objectForKeyedSubscript:v10];
  v12 = NMLogForCategory(4);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      v16 = 138412290;
      v17 = v10;
      _os_log_impl(&dword_25AEBF000, v12, OS_LOG_TYPE_DEFAULT, "[NACIDS] End observing audio routes for category: %@", &v16, 0xCu);
    }

    routingController = [v11 routingController];
    [routingController setDiscoveryMode:0];

    [(NSMutableDictionary *)self->_routesObservers removeObjectForKey:v10];
  }

  else
  {
    if (v13)
    {
      v16 = 138412290;
      v17 = v10;
      _os_log_impl(&dword_25AEBF000, v12, OS_LOG_TYPE_DEFAULT, "[NACIDS] Received attempt to end observing audio routes for category [%@], but observing was not in progress", &v16, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handlePickAudioRoute:(id)route
{
  v34 = *MEMORY[0x277D85DE8];
  routeCopy = route;
  v5 = NMLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "[NACIDS] Handle pick audio route", buf, 2u);
  }

  v6 = [NACPickAudioRouteMessage alloc];
  data = [routeCopy data];
  v8 = [(NACPickAudioRouteMessage *)v6 initWithData:data];

  category = [(NACPickAudioRouteMessage *)v8 category];
  v10 = [(NSMutableDictionary *)self->_routesObservers objectForKeyedSubscript:category];
  if (v10)
  {
    identifier = [(NACPickAudioRouteMessage *)v8 identifier];
    v12 = NMLogForCategory(4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = identifier;
      *&buf[12] = 2112;
      *&buf[14] = category;
      _os_log_impl(&dword_25AEBF000, v12, OS_LOG_TYPE_DEFAULT, "[NACIDS] Pick audio route with identifier: %@, category: %@", buf, 0x16u);
    }

    routingController = [v10 routingController];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v31 = __Block_byref_object_copy_;
    v32 = __Block_byref_object_dispose_;
    availableRoutes = [routingController availableRoutes];
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__183;
    v28 = __Block_byref_object_dispose__184;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __38__NACIDSServer__handlePickAudioRoute___block_invoke;
    v20[3] = &unk_27992B7F0;
    v23 = buf;
    v14 = identifier;
    v21 = v14;
    v15 = routingController;
    v22 = v15;
    v29 = MEMORY[0x25F85B570](v20);
    if ([*(*&buf[8] + 40) count])
    {
      (*(v25[5] + 16))();
      self->_shouldPickRouteAfterFetching = 0;
    }

    else
    {
      self->_shouldPickRouteAfterFetching = 1;
      objc_initWeak(&location, self);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __38__NACIDSServer__handlePickAudioRoute___block_invoke_188;
      v17[3] = &unk_27992B840;
      v17[4] = self;
      objc_copyWeak(&v18, &location);
      v17[5] = buf;
      v17[6] = &v24;
      [v15 fetchAvailableRoutesWithCompletionHandler:v17];
      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }

    _Block_object_dispose(&v24, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v14 = NMLogForCategory(4);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = category;
      _os_log_impl(&dword_25AEBF000, v14, OS_LOG_TYPE_DEFAULT, "[NACIDS] Received attempt to pick audio route for category [%@], but observing was not in progress", buf, 0xCu);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __38__NACIDSServer__handlePickAudioRoute___block_invoke(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(*(a1[6] + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [NACAudioRoute audioRouteWithMPAVRoute:v7];
        v9 = [v8 uniqueIdentifier];
        if ([v9 isEqualToString:a1[4]])
        {
          v10 = NMLogForCategory(4);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25AEBF000, v10, OS_LOG_TYPE_DEFAULT, "[NACIDS] Found audio route, attempting to pick", buf, 2u);
          }

          v11 = a1[5];
          v13[0] = MEMORY[0x277D85DD0];
          v13[1] = 3221225472;
          v13[2] = __38__NACIDSServer__handlePickAudioRoute___block_invoke_186;
          v13[3] = &unk_27992B430;
          v13[4] = v7;
          [v11 selectRoute:v7 operation:0 completion:v13];

          goto LABEL_14;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v2 = NMLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25AEBF000, v2, OS_LOG_TYPE_DEFAULT, "[NACIDS] Couldn't find audio route to pick", buf, 2u);
  }

LABEL_14:

  v12 = *MEMORY[0x277D85DE8];
}

void __38__NACIDSServer__handlePickAudioRoute___block_invoke_186(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = NMLogForCategory(4);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __38__NACIDSServer__handlePickAudioRoute___block_invoke_186_cold_1(a1);
    }
  }
}

void __38__NACIDSServer__handlePickAudioRoute___block_invoke_188(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 72);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__NACIDSServer__handlePickAudioRoute___block_invoke_2;
  v6[3] = &unk_27992B818;
  objc_copyWeak(&v9, (a1 + 56));
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v9);
}

void __38__NACIDSServer__handlePickAudioRoute___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 80) == 1)
  {
    (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
    v2 = WeakRetained;
  }
}

- (void)_handleBeginObservingSystemVolume
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = NMLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_25AEBF000, v3, OS_LOG_TYPE_DEFAULT, "[NACIDS] Handle begin observing volume", buf, 2u);
  }

  if (!self->_systemVolumeRunAssertion)
  {
    v4 = objc_opt_new();
    systemVolumeRunAssertion = self->_systemVolumeRunAssertion;
    self->_systemVolumeRunAssertion = v4;
  }

  if ([(NACIDSServer *)self _hasRequestedVolumeAtLeastOnce])
  {
    [(NACIDSServer *)self _sendCurrentObservingSystemVolumeValues];
  }

  else
  {
    [(NACIDSServer *)self _setRequestedVolumeAtLeastOnce];
    [(NACIDSServer *)self _beginObservingSystemVolume];
    if (self->_shouldObserveHapticState)
    {
      [(NACIDSServer *)self _beginObservingHapticState];
    }

    if (self->_shouldObserveSystemMutedState)
    {
      [(NACIDSServer *)self _beginObservingSystemMutedState];
    }
  }

  objc_initWeak(buf, self);
  v6 = dispatch_time(0, 30000000000);
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__NACIDSServer__handleBeginObservingSystemVolume__block_invoke;
  block[3] = &unk_27992B678;
  objc_copyWeak(&v9, buf);
  dispatch_after(v6, serialQueue, block);
  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void __49__NACIDSServer__handleBeginObservingSystemVolume__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 1))
  {
    v3 = NMLogForCategory(4);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_25AEBF000, v3, OS_LOG_TYPE_DEFAULT, "[NACIDS] Volume observation has been holding a run assertion for 30 seconds, cancelling and informing client", v4, 2u);
    }

    [v2 _cancelSystemVolumeObservation];
  }
}

- (void)_beginObservingSystemVolume
{
  v33 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_serialQueue);
  if ([(NACIDSServer *)self _hasRequestedVolumeAtLeastOnce])
  {
    mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
    getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];
    v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"AD00FAC5-9C37-4D0C-8F16-9B00B4C821C6"];
    v6 = [getActivePairedDevice supportsCapability:v5];

    if ((v6 & 1) == 0)
    {
      objc_initWeak(&location, self);
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      obj = self->_volumeAudioCategories;
      v7 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v32 count:16];
      if (v7)
      {
        v20 = *v26;
        do
        {
          v21 = v7;
          for (i = 0; i != v21; ++i)
          {
            if (*v26 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v25 + 1) + 8 * i);
            v10 = NMLogForCategory(4);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v31 = v9;
              _os_log_impl(&dword_25AEBF000, v10, OS_LOG_TYPE_DEFAULT, "[NACIDS] Observing volume for category: %@", buf, 0xCu);
            }

            v11 = [NACProxyVolumeControlTarget volumeControlTargetWithCategory:v9];
            v12 = objc_alloc_init(MEMORY[0x277CD6100]);
            [v12 setVolumeAudioCategory:v9];
            v13 = [objc_alloc(MEMORY[0x277CD60F0]) initWithDataSource:v12];
            v14 = objc_opt_new();
            [v14 setCategory:v9];
            [v14 setDiscoveryMode:0];
            v15 = objc_opt_new();
            [v15 setVolumeController:v13];
            [v15 setRoutingController:v14];
            v16 = [[NACEventThrottler alloc] initWithQueue:self->_serialQueue];
            [(NACEventThrottler *)v16 setMinimumDelay:0.5];
            v22[0] = MEMORY[0x277D85DD0];
            v22[1] = 3221225472;
            v22[2] = __43__NACIDSServer__beginObservingSystemVolume__block_invoke;
            v22[3] = &unk_27992B868;
            objc_copyWeak(&v24, &location);
            v17 = v11;
            v23 = v17;
            [(NACEventThrottler *)v16 setEventBlock:v22];
            [v15 setThrottler:v16];
            [(NSMutableDictionary *)self->_systemVolumeObservers setObject:v15 forKeyedSubscript:v17];
            [v13 setDelegate:self];
            [v14 setDelegate:self];
            [v13 volumeValue];
            [(NACIDSServer *)self _sendVolumeValue:v17 forTarget:?];
            -[NACIDSServer _sendVolumeControlAvailability:forTarget:](self, "_sendVolumeControlAvailability:forTarget:", [v14 volumeControlIsAvailable], v17);
            -[NACIDSServer _sendVolumeWarningEnabled:volumeWarningState:forTarget:](self, "_sendVolumeWarningEnabled:volumeWarningState:forTarget:", [v13 volumeWarningEnabled], objc_msgSend(v13, "volumeWarningState"), v17);
            [v13 EUVolumeLimit];
            [(NACIDSServer *)self _sendEUVolumeLimit:v17 forTarget:?];

            objc_destroyWeak(&v24);
          }

          v7 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v32 count:16];
        }

        while (v7);
      }

      objc_destroyWeak(&location);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __43__NACIDSServer__beginObservingSystemVolume__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v3 floatValue];
  v5 = v4;

  LODWORD(v6) = v5;
  [WeakRetained _sendVolumeValue:*(a1 + 32) forTarget:v6];
}

- (void)_beginObservingHapticState
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_25AEBF000, v0, v1, "[NACIDS] Failed to set AVSC notifications attribute: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __42__NACIDSServer__beginObservingHapticState__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [v5 floatValue];
    WeakRetained[25] = v4;
    [WeakRetained _updateHapticState];
  }
}

- (void)_beginObservingSystemMutedState
{
  v22[1] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_serialQueue);
  self->_shouldObserveSystemMutedState = 1;
  if ([(NACIDSServer *)self _hasRequestedVolumeAtLeastOnce])
  {
    v3 = NMLogForCategory(4);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_25AEBF000, v3, OS_LOG_TYPE_DEFAULT, "[NACIDS] Observing system mute", buf, 2u);
    }

    objc_initWeak(buf, self);
    mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedInstance];
    v5 = MEMORY[0x277D26D58];
    v22[0] = *MEMORY[0x277D26D58];
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    v7 = *MEMORY[0x277D26DD0];
    v20 = 0;
    v8 = [mEMORY[0x277D26E58] setAttribute:v6 forKey:v7 error:&v20];
    v9 = v20;

    if ((v8 & 1) == 0)
    {
      v10 = NMLogForCategory(4);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [NACIDSServer _beginObservingHapticState];
      }
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v12 = *v5;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __47__NACIDSServer__beginObservingSystemMutedState__block_invoke;
    v18[3] = &unk_27992B8B8;
    objc_copyWeak(&v19, buf);
    v13 = [defaultCenter addObserverForName:v12 object:mEMORY[0x277D26E58] queue:0 usingBlock:v18];
    systemSilentModeNotificationToken = self->_systemSilentModeNotificationToken;
    self->_systemSilentModeNotificationToken = v13;

    v15 = NMLogForCategory(4);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_25AEBF000, v15, OS_LOG_TYPE_DEFAULT, "[NACIDS] Updating system mute value because we started observing", v17, 2u);
    }

    [(NACIDSServer *)self _updateSystemMutedState];
    objc_destroyWeak(&v19);

    objc_destroyWeak(buf);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __47__NACIDSServer__beginObservingSystemMutedState__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[9];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__NACIDSServer__beginObservingSystemMutedState__block_invoke_2;
    block[3] = &unk_27992B4E8;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

uint64_t __47__NACIDSServer__beginObservingSystemMutedState__block_invoke_2(uint64_t a1)
{
  v2 = NMLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25AEBF000, v2, OS_LOG_TYPE_DEFAULT, "[NACIDS] Updating system mute value because we got a state change notification", v4, 2u);
  }

  return [*(a1 + 32) _updateSystemMutedState];
}

- (void)_updateSystemMutedState
{
  v8 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_serialQueue);
  mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedInstance];
  self->_isSystemMuted = [mEMORY[0x277D26E58] getSilentMode];

  v4 = NMLogForCategory(4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    isSystemMuted = self->_isSystemMuted;
    v7[0] = 67109120;
    v7[1] = isSystemMuted;
    _os_log_impl(&dword_25AEBF000, v4, OS_LOG_TYPE_DEFAULT, "[NACIDS] System mute state: %d", v7, 8u);
  }

  [(NACIDSServer *)self _sendSystemMutedState:self->_isSystemMuted];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateProminentHapticState
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__NACIDSServer_updateProminentHapticState__block_invoke;
  block[3] = &unk_27992B4E8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

uint64_t __42__NACIDSServer_updateProminentHapticState__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateProminentHapticState];
  v2 = *(a1 + 32);

  return [v2 _updateHapticState];
}

- (void)_updateHapticState
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = NACStateFromIntensityAndProminentEnabled(self->_prominentHapticEnabled, self->_hapticIntensity);
  if (v3 != self->_hapticState)
  {
    self->_hapticState = v3;

    [(NACIDSServer *)self _sendHapticState:v3];
  }
}

- (void)_handleBeginObservingProxyVolumeForTarget:(id)target
{
  v15 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  dispatch_assert_queue_V2(self->_serialQueue);
  v5 = NMLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = targetCopy;
    _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "[NACIDS] Handle begin observing volume for target: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v6 = +[NACEndpointObserver sharedObserver];
  originIdentifier = [targetCopy originIdentifier];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__NACIDSServer__handleBeginObservingProxyVolumeForTarget___block_invoke;
  v10[3] = &unk_27992B8E0;
  objc_copyWeak(&v12, buf);
  v8 = targetCopy;
  v11 = v8;
  [v6 fetchRouteForOriginIdentifier:originIdentifier completion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);

  v9 = *MEMORY[0x277D85DE8];
}

void __58__NACIDSServer__handleBeginObservingProxyVolumeForTarget___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[9];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__NACIDSServer__handleBeginObservingProxyVolumeForTarget___block_invoke_2;
    block[3] = &unk_27992B650;
    block[4] = WeakRetained;
    v8 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v6, block);
  }
}

- (void)_beginObservingProxyVolumeForTarget:(id)target withEndpointRoute:(id)route
{
  targetCopy = target;
  routeCopy = route;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (routeCopy)
  {
    if (!self->_proxyVolumeRunAssertion)
    {
      v8 = objc_opt_new();
      proxyVolumeRunAssertion = self->_proxyVolumeRunAssertion;
      self->_proxyVolumeRunAssertion = v8;
    }

    objc_initWeak(&location, self);
    v10 = [objc_alloc(MEMORY[0x277CD60F8]) initWithGroupRoute:routeCopy outputDeviceRoute:0];
    v11 = [objc_alloc(MEMORY[0x277CD60F0]) initWithDataSource:v10];
    v12 = objc_opt_new();
    [v12 setVolumeController:v11];
    v13 = [[NACEventThrottler alloc] initWithQueue:self->_serialQueue];
    [(NACEventThrottler *)v13 setMinimumDelay:0.5];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __70__NACIDSServer__beginObservingProxyVolumeForTarget_withEndpointRoute___block_invoke;
    v21[3] = &unk_27992B868;
    objc_copyWeak(&v23, &location);
    v14 = targetCopy;
    v22 = v14;
    [(NACEventThrottler *)v13 setEventBlock:v21];
    [v12 setThrottler:v13];
    [(NSMutableDictionary *)self->_proxyVolumeObservers setObject:v12 forKeyedSubscript:v14];
    [v11 setDelegate:self];
    [v11 volumeValue];
    [(NACIDSServer *)self _sendVolumeValue:v14 forTarget:?];
    -[NACIDSServer _sendVolumeControlAvailability:forTarget:](self, "_sendVolumeControlAvailability:forTarget:", [v11 isVolumeControlAvailable], v14);
    -[NACIDSServer _sendVolumeWarningEnabled:volumeWarningState:forTarget:](self, "_sendVolumeWarningEnabled:volumeWarningState:forTarget:", [v11 volumeWarningEnabled], objc_msgSend(v11, "volumeWarningState"), v14);
    [v11 EUVolumeLimit];
    [(NACIDSServer *)self _sendEUVolumeLimit:v14 forTarget:?];
    v15 = dispatch_time(0, 30000000000);
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__NACIDSServer__beginObservingProxyVolumeForTarget_withEndpointRoute___block_invoke_2;
    block[3] = &unk_27992B908;
    objc_copyWeak(&v20, &location);
    v19 = v14;
    dispatch_after(v15, serialQueue, block);

    objc_destroyWeak(&v20);
    objc_destroyWeak(&v23);

    objc_destroyWeak(&location);
  }

  else
  {
    v17 = NMLogForCategory(4);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [NACIDSServer _beginObservingProxyVolumeForTarget:withEndpointRoute:];
    }
  }
}

void __70__NACIDSServer__beginObservingProxyVolumeForTarget_withEndpointRoute___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v3 floatValue];
  v5 = v4;

  LODWORD(v6) = v5;
  [WeakRetained _sendVolumeValue:*(a1 + 32) forTarget:v6];
}

void __70__NACIDSServer__beginObservingProxyVolumeForTarget_withEndpointRoute___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 2))
  {
    v4 = NMLogForCategory(4);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_25AEBF000, v4, OS_LOG_TYPE_DEFAULT, "[NACIDS] Volume observation has been holding a run assertion for 30 seconds, cancelling and informing client", v5, 2u);
    }

    [v3 _cancelProxyVolumeObservationForTarget:*(a1 + 32)];
  }
}

- (void)_sendCurrentObservingSystemVolumeValues
{
  v20 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_serialQueue);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = self->_volumeAudioCategories;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [NACProxyVolumeControlTarget volumeControlTargetWithCategory:*(*(&v15 + 1) + 8 * v6)];
        v8 = [(NSMutableDictionary *)self->_systemVolumeObservers objectForKeyedSubscript:v7];
        volumeController = [v8 volumeController];
        routingController = [v8 routingController];
        [volumeController volumeValue];
        [(NACIDSServer *)self _sendVolumeValue:v7 forTarget:?];
        -[NACIDSServer _sendVolumeControlAvailability:forTarget:](self, "_sendVolumeControlAvailability:forTarget:", [routingController volumeControlIsAvailable], v7);
        -[NACIDSServer _sendVolumeWarningEnabled:volumeWarningState:forTarget:](self, "_sendVolumeWarningEnabled:volumeWarningState:forTarget:", [volumeController volumeWarningEnabled], objc_msgSend(volumeController, "volumeWarningState"), v7);
        [volumeController EUVolumeLimit];
        [(NACIDSServer *)self _sendEUVolumeLimit:v7 forTarget:?];

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSArray *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  if (self->_shouldObserveHapticState)
  {
    [(NACIDSServer *)self _updateHapticState];
  }

  if (self->_shouldObserveSystemMutedState)
  {
    v11 = NMLogForCategory(4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25AEBF000, v11, OS_LOG_TYPE_DEFAULT, "[NACIDS] Updating system mute value because we were asked to send the current observing system volume values", buf, 2u);
    }

    [(NACIDSServer *)self _updateSystemMutedState];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_updateHapticIntensityValue
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v6 = 0.0;
  mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
  v4 = [mEMORY[0x277D26E58] getVibeIntensity:&v6];

  if (v4)
  {
    self->_hapticIntensity = v6;
  }

  else
  {
    v5 = NMLogForCategory(4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(NACIDSServer *)v5 _updateHapticIntensityValue];
    }
  }
}

- (void)_cancelSystemVolumeObservation
{
  dispatch_assert_queue_V2(self->_serialQueue);
  systemVolumeRunAssertion = self->_systemVolumeRunAssertion;
  self->_systemVolumeRunAssertion = 0;

  v4 = *MEMORY[0x277D18828];
  v5 = NACQueueOneIdentifierVolumeObservationCancelled(0);
  [(NACIDSServer *)self _sendMessage:0 type:16 timeout:v5 queueOne:1 retry:v4];
}

- (void)_cancelProxyVolumeObservationForTarget:(id)target
{
  serialQueue = self->_serialQueue;
  targetCopy = target;
  dispatch_assert_queue_V2(serialQueue);
  v6 = objc_opt_new();
  originIdentifier = [targetCopy originIdentifier];
  [v6 setOriginIdentifier:{objc_msgSend(originIdentifier, "intValue")}];

  v8 = NACQueueOneIdentifierVolumeObservationCancelled(targetCopy);
  [(NACIDSServer *)self _sendMessage:v6 type:16 timeout:v8 queueOne:1 retry:*MEMORY[0x277D18828]];
  [(NSMutableDictionary *)self->_proxyVolumeObservers removeObjectForKey:targetCopy];

  if (![(NSMutableDictionary *)self->_proxyVolumeObservers count])
  {
    v9 = NMLogForCategory(4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_25AEBF000, v9, OS_LOG_TYPE_DEFAULT, "[NACIDS] Last proxy volume observer cancelled. Cancelling proxy volume run assertion.", v11, 2u);
    }

    proxyVolumeRunAssertion = self->_proxyVolumeRunAssertion;
    self->_proxyVolumeRunAssertion = 0;
  }
}

- (void)_cancelRouteObservationForCategory:(id)category
{
  serialQueue = self->_serialQueue;
  categoryCopy = category;
  dispatch_assert_queue_V2(serialQueue);
  v9 = objc_opt_new();
  [v9 setCategory:categoryCopy];
  v6 = NACQueueOneIdentifierRouteObservationCancelled(categoryCopy);
  [(NACIDSServer *)self _sendMessage:v9 type:17 timeout:v6 queueOne:0 retry:*MEMORY[0x277D18828]];
  v7 = [(NSMutableDictionary *)self->_routesObservers objectForKeyedSubscript:categoryCopy];
  routingController = [v7 routingController];
  [routingController setDiscoveryMode:0];

  [(NSMutableDictionary *)self->_routesObservers removeObjectForKey:categoryCopy];
}

- (void)volumeController:(id)controller volumeValueDidChange:(float)change
{
  controllerCopy = controller;
  serialQueue = self->_serialQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__NACIDSServer_volumeController_volumeValueDidChange___block_invoke;
  v8[3] = &unk_27992B510;
  v8[4] = self;
  v9 = controllerCopy;
  v7 = controllerCopy;
  dispatch_async(serialQueue, v8);
}

void __54__NACIDSServer_volumeController_volumeValueDidChange___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _targetForVolumeController:*(a1 + 40)];
  v3 = NMLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 40) volumeValue];
    v12 = 138412546;
    v13 = v2;
    v14 = 2048;
    v15 = v4;
    _os_log_impl(&dword_25AEBF000, v3, OS_LOG_TYPE_DEFAULT, "[NACIDS] Volume value for target %@ did change: %f", &v12, 0x16u);
  }

  v5 = [v2 isPairedDevice];
  v6 = 32;
  if (v5)
  {
    v6 = 24;
  }

  v7 = [*(*(a1 + 32) + v6) objectForKeyedSubscript:v2];
  v8 = [v7 throttler];
  v9 = MEMORY[0x277CCABB0];
  [*(a1 + 40) volumeValue];
  v10 = [v9 numberWithFloat:?];
  [v8 setValue:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)volumeController:(id)controller volumeControlAvailableDidChange:(BOOL)change
{
  controllerCopy = controller;
  serialQueue = self->_serialQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__NACIDSServer_volumeController_volumeControlAvailableDidChange___block_invoke;
  v8[3] = &unk_27992B510;
  v8[4] = self;
  v9 = controllerCopy;
  v7 = controllerCopy;
  dispatch_async(serialQueue, v8);
}

void __65__NACIDSServer_volumeController_volumeControlAvailableDidChange___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _targetForVolumeController:*(a1 + 40)];
  v3 = NMLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 40) isVolumeControlAvailable];
    v6 = 138412546;
    v7 = v2;
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&dword_25AEBF000, v3, OS_LOG_TYPE_DEFAULT, "[NACIDS] Volume control availability for target %@ did change: %d", &v6, 0x12u);
  }

  [*(a1 + 32) _sendVolumeControlAvailability:objc_msgSend(*(a1 + 40) forTarget:{"isVolumeControlAvailable"), v2}];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)volumeController:(id)controller mutedStateDidChange:(BOOL)change
{
  controllerCopy = controller;
  serialQueue = self->_serialQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__NACIDSServer_volumeController_mutedStateDidChange___block_invoke;
  v8[3] = &unk_27992B510;
  v8[4] = self;
  v9 = controllerCopy;
  v7 = controllerCopy;
  dispatch_async(serialQueue, v8);
}

void __53__NACIDSServer_volumeController_mutedStateDidChange___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _targetForVolumeController:*(a1 + 40)];
  v3 = NMLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 40) isMuted];
    v6 = 138412546;
    v7 = v2;
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&dword_25AEBF000, v3, OS_LOG_TYPE_DEFAULT, "[NACIDS] Volume muted state for target %@ did change: %d", &v6, 0x12u);
  }

  if ([v2 isPairedDevice])
  {
    [*(a1 + 32) _sendMutedState:objc_msgSend(*(a1 + 40) forTarget:{"isMuted"), v2}];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)volumeController:(id)controller EUVolumeLimitDidChange:(float)change
{
  controllerCopy = controller;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__NACIDSServer_volumeController_EUVolumeLimitDidChange___block_invoke;
  block[3] = &unk_27992B588;
  block[4] = self;
  v10 = controllerCopy;
  changeCopy = change;
  v8 = controllerCopy;
  dispatch_async(serialQueue, block);
}

void __56__NACIDSServer_volumeController_EUVolumeLimitDidChange___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _targetForVolumeController:*(a1 + 40)];
  v3 = NMLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 40) EUVolumeLimit];
    v7 = 138412546;
    v8 = v2;
    v9 = 2048;
    v10 = v4;
    _os_log_impl(&dword_25AEBF000, v3, OS_LOG_TYPE_DEFAULT, "[NACIDS] EU limit for target %@ did change: %f", &v7, 0x16u);
  }

  if ([v2 isPairedDevice])
  {
    LODWORD(v5) = *(a1 + 48);
    [*(a1 + 32) _sendEUVolumeLimit:v2 forTarget:v5];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)volumeController:(id)controller volumeWarningStateDidChange:(int64_t)change
{
  controllerCopy = controller;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__NACIDSServer_volumeController_volumeWarningStateDidChange___block_invoke;
  block[3] = &unk_27992B930;
  v10 = controllerCopy;
  selfCopy = self;
  changeCopy = change;
  v8 = controllerCopy;
  dispatch_async(serialQueue, block);
}

void __61__NACIDSServer_volumeController_volumeWarningStateDidChange___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) volumeWarningEnabled];
  v3 = [*(a1 + 40) _targetForVolumeController:*(a1 + 32)];
  v4 = NMLogForCategory(4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    v7 = 138412802;
    v8 = v3;
    v9 = 1024;
    v10 = v2;
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&dword_25AEBF000, v4, OS_LOG_TYPE_DEFAULT, "[NACIDS] Volume warning for target %@ did change (enabled: %d, state: %ld)", &v7, 0x1Cu);
  }

  [*(a1 + 40) _sendVolumeWarningEnabled:v2 volumeWarningState:*(a1 + 48) forTarget:v3];
  v6 = *MEMORY[0x277D85DE8];
}

- (id)_targetForVolumeController:(id)controller
{
  controllerCopy = controller;
  dataSource = [controllerCopy dataSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  dataSource2 = [controllerCopy dataSource];
  v7 = dataSource2;
  if (isKindOfClass)
  {
    volumeAudioCategory = [dataSource2 volumeAudioCategory];

    v9 = [NACProxyVolumeControlTarget volumeControlTargetWithCategory:volumeAudioCategory];
  }

  else
  {
    objc_opt_class();
    v10 = objc_opt_isKindOfClass();

    if ((v10 & 1) == 0)
    {
      v9 = 0;
      goto LABEL_10;
    }

    dataSource3 = [controllerCopy dataSource];
    volumeAudioCategory = [dataSource3 groupRoute];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([volumeAudioCategory endpointWrapper], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "unwrappedValue"), MRAVEndpointGetExternalDevice(), v12, (v13 = MRExternalDeviceCopyCustomOrigin()) != 0))
    {
      v14 = v13;
      v15 = [MEMORY[0x277CCABB0] numberWithInt:MROriginGetUniqueIdentifier()];
      v9 = [NACProxyVolumeControlTarget volumeControlTargetWithOriginIdentifier:v15];

      CFRelease(v14);
    }

    else
    {
      v9 = 0;
    }
  }

LABEL_10:

  return v9;
}

- (id)_targetForNACVolumeController:(id)controller
{
  controllerCopy = controller;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  systemVolumeObservers = self->_systemVolumeObservers;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__NACIDSServer__targetForNACVolumeController___block_invoke;
  v9[3] = &unk_27992B958;
  v6 = controllerCopy;
  v10 = v6;
  v11 = &v12;
  [(NSMutableDictionary *)systemVolumeObservers enumerateKeysAndObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __46__NACIDSServer__targetForNACVolumeController___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v8 = [a3 nacVolumeController];
  v9 = *(a1 + 32);

  if (v8 == v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)routingControllerAvailableRoutesDidChange:(id)change
{
  changeCopy = change;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__NACIDSServer_routingControllerAvailableRoutesDidChange___block_invoke;
  v7[3] = &unk_27992B510;
  v8 = changeCopy;
  selfCopy = self;
  v6 = changeCopy;
  dispatch_async(serialQueue, v7);
}

void __58__NACIDSServer_routingControllerAvailableRoutesDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) category];
  v3 = [NACProxyVolumeControlTarget volumeControlTargetWithCategory:v2];
  v4 = [*(*(a1 + 40) + 24) objectForKeyedSubscript:v3];
  v5 = [*(a1 + 32) volumeControlIsAvailable];
  if (v4 && v5 != [v4 isVolumeControlAvailable])
  {
    [v4 setVolumeControlAvailable:v5];
    [*(a1 + 40) _sendVolumeControlAvailability:v5 forTarget:v3];
  }

  v6 = NACCategoryStringWithRouteCategory(v2);

  v7 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:v6];
  v8 = v7;
  if (v7)
  {
    v9 = *(a1 + 32);
    v10 = [v7 routingController];

    if (v9 == v10)
    {
      v11 = NMLogForCategory(4);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25AEBF000, v11, OS_LOG_TYPE_DEFAULT, "[NACIDS] Available routes updated", buf, 2u);
      }

      v12 = objc_opt_new();
      v13 = [*(a1 + 32) availableRoutes];
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __58__NACIDSServer_routingControllerAvailableRoutesDidChange___block_invoke_212;
      v22 = &unk_27992B980;
      v24 = v5;
      v23 = v12;
      v14 = v12;
      [v13 enumerateObjectsUsingBlock:&v19];
      v15 = objc_opt_new();
      [v15 setCategory:{v6, v19, v20, v21, v22}];
      v16 = [NACAudioRoute buffersFromAudioRoutes:v14];
      v17 = [v16 mutableCopy];

      [v15 setAudioRoutes:v17];
      v18 = NACQueueOneIdentifierAudioRoutes(v6);
      [*(a1 + 40) _sendMessage:v15 type:11 timeout:v18 queueOne:0 retry:*MEMORY[0x277D18828]];
    }
  }
}

void __58__NACIDSServer_routingControllerAvailableRoutesDidChange___block_invoke_212(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = NMLogForCategory(4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 routeName];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_25AEBF000, v4, OS_LOG_TYPE_DEFAULT, "[NACIDS] -> %@", &v8, 0xCu);
  }

  v6 = [NACAudioRoute audioRouteWithMPAVRoute:v3];
  if ([v3 isPicked])
  {
    [v6 setSupportsVolumeControl:*(a1 + 40)];
  }

  [*(a1 + 32) addObject:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_hapticIntensityDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__NACIDSServer__hapticIntensityDidChangeNotification___block_invoke;
  v7[3] = &unk_27992B510;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(serialQueue, v7);
}

void __54__NACIDSServer__hapticIntensityDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = NMLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_25AEBF000, v2, OS_LOG_TYPE_DEFAULT, "[NACIDS] Haptic intensity changed", v10, 2u);
  }

  v3 = [*(a1 + 32) userInfo];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D26E00]];
  [v4 floatValue];
  v6 = NACUIValueForSystemHapticValue(v5);

  v7 = *(*(a1 + 40) + 112);
  *&v8 = v6;
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  [v7 setValue:v9];
}

- (void)volumeControllerDidUpdateAvailableListeningModes:(id)modes
{
  modesCopy = modes;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__NACIDSServer_volumeControllerDidUpdateAvailableListeningModes___block_invoke;
  v7[3] = &unk_27992B510;
  v7[4] = self;
  v8 = modesCopy;
  v6 = modesCopy;
  dispatch_async(serialQueue, v7);
}

void __65__NACIDSServer_volumeControllerDidUpdateAvailableListeningModes___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _targetForNACVolumeController:*(a1 + 40)];
  v3 = NMLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 40) availableListeningModes];
    v9 = 138412546;
    v10 = v2;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_25AEBF000, v3, OS_LOG_TYPE_DEFAULT, "[NACIDS] [ListeningMode] Available listening modes for target %@ did change: %@", &v9, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) availableListeningModes];
  v7 = [*(a1 + 40) currentListeningMode];
  [v5 _sendAvailableListeningModes:v6 currentListeningMode:v7 error:0 forTarget:v2];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)volumeControllerDidUpdateCurrentListeningMode:(id)mode
{
  modeCopy = mode;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__NACIDSServer_volumeControllerDidUpdateCurrentListeningMode___block_invoke;
  v7[3] = &unk_27992B510;
  v7[4] = self;
  v8 = modeCopy;
  v6 = modeCopy;
  dispatch_async(serialQueue, v7);
}

void __62__NACIDSServer_volumeControllerDidUpdateCurrentListeningMode___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _targetForNACVolumeController:*(a1 + 40)];
  v3 = NMLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 40) currentListeningMode];
    v9 = 138412546;
    v10 = v2;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_25AEBF000, v3, OS_LOG_TYPE_DEFAULT, "[NACIDS] [ListeningMode] Current listening mode for target %@ did change: %@", &v9, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) availableListeningModes];
  v7 = [*(a1 + 40) currentListeningMode];
  [v5 _sendAvailableListeningModes:v6 currentListeningMode:v7 error:0 forTarget:v2];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)volumeController:(id)controller didFailToSetCurrentListeningModeWithError:(id)error
{
  controllerCopy = controller;
  errorCopy = error;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__NACIDSServer_volumeController_didFailToSetCurrentListeningModeWithError___block_invoke;
  block[3] = &unk_27992B650;
  block[4] = self;
  v12 = controllerCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = controllerCopy;
  dispatch_async(serialQueue, block);
}

void __75__NACIDSServer_volumeController_didFailToSetCurrentListeningModeWithError___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _targetForNACVolumeController:*(a1 + 40)];
  v3 = NMLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    v9 = 138412546;
    v10 = v2;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_25AEBF000, v3, OS_LOG_TYPE_DEFAULT, "[NACIDS] [ListeningMode] Failed to set current listening mode for target %@ error: %@", &v9, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) availableListeningModes];
  v7 = [*(a1 + 40) currentListeningMode];
  [v5 _sendAvailableListeningModes:v6 currentListeningMode:v7 error:*(a1 + 48) forTarget:v2];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_sendVolumeValue:(float)value forTarget:(id)target
{
  v18 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  dispatch_assert_queue_V2(self->_serialQueue);
  v7 = NACQueueOneIdentifierVolumeValue(targetCopy);
  v8 = objc_opt_new();
  *&v9 = value;
  [v8 setVolumeValue:v9];
  originIdentifier = [targetCopy originIdentifier];
  [v8 setOriginIdentifier:{objc_msgSend(originIdentifier, "intValue")}];

  category = [targetCopy category];
  [v8 setCategory:category];

  v12 = NMLogForCategory(4);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134218242;
    valueCopy = value;
    v16 = 2112;
    v17 = targetCopy;
    _os_log_impl(&dword_25AEBF000, v12, OS_LOG_TYPE_DEFAULT, "[NACIDS] Sending system volume value: %f for target: %@", &v14, 0x16u);
  }

  [(NACIDSServer *)self _sendMessage:v8 type:2 timeout:v7 queueOne:1 retry:*MEMORY[0x277D18828]];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_sendEUVolumeLimit:(float)limit forTarget:(id)target
{
  v20 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  dispatch_assert_queue_V2(self->_serialQueue);
  if ([(NACIDSServer *)self _shouldForceVolumeWarning])
  {
    limit = *"333?";
  }

  v7 = [(NSMutableDictionary *)self->_systemVolumeObservers objectForKeyedSubscript:targetCopy];
  [v7 EUVolumeLimit];
  if (limit != *&v8)
  {
    *&v8 = limit;
    [v7 setEUVolumeLimit:v8];
    v9 = objc_opt_new();
    *&v10 = limit;
    [v9 setEUVolumeLimit:v10];
    originIdentifier = [targetCopy originIdentifier];
    [v9 setOriginIdentifier:{objc_msgSend(originIdentifier, "intValue")}];

    category = [targetCopy category];
    [v9 setCategory:category];

    v13 = NACQueueOneIdentifierEUVolumeLimit(targetCopy);
    v14 = NMLogForCategory(4);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134218242;
      limitCopy = limit;
      v18 = 2112;
      v19 = targetCopy;
      _os_log_impl(&dword_25AEBF000, v14, OS_LOG_TYPE_DEFAULT, "[NACIDS] Sending system EU volume limit: %f for target: %@", &v16, 0x16u);
    }

    [(NACIDSServer *)self _sendMessage:v9 type:14 timeout:v13 queueOne:1 retry:*MEMORY[0x277D18828]];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_sendVolumeWarningEnabled:(BOOL)enabled volumeWarningState:(int64_t)state forTarget:(id)target
{
  enabledCopy = enabled;
  v24 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  dispatch_assert_queue_V2(self->_serialQueue);
  _shouldForceVolumeWarning = [(NACIDSServer *)self _shouldForceVolumeWarning];
  if (_shouldForceVolumeWarning)
  {
    stateCopy = 1;
  }

  else
  {
    stateCopy = state;
  }

  v11 = _shouldForceVolumeWarning | enabledCopy;
  v12 = [(NSMutableDictionary *)self->_systemVolumeObservers objectForKeyedSubscript:targetCopy];
  if (v11 != [v12 isVolumeWarningEnabled] || stateCopy != objc_msgSend(v12, "volumeWarningState"))
  {
    [v12 setVolumeWarningEnabled:v11];
    [v12 setVolumeWarningState:stateCopy];
    v13 = objc_opt_new();
    [v13 setVolumeWarningEnabled:v11];
    [v13 setVolumeWarningState:stateCopy];
    originIdentifier = [targetCopy originIdentifier];
    [v13 setOriginIdentifier:{objc_msgSend(originIdentifier, "intValue")}];

    category = [targetCopy category];
    [v13 setCategory:category];

    v16 = NACQueueOneIdentifierVolumeWarning(targetCopy);
    v17 = NMLogForCategory(4);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19[0] = 67109634;
      v19[1] = v11;
      v20 = 2048;
      v21 = stateCopy;
      v22 = 2112;
      v23 = targetCopy;
      _os_log_impl(&dword_25AEBF000, v17, OS_LOG_TYPE_DEFAULT, "[NACIDS] Sending system volume warning enabled: %d state: %ld for category: %@", v19, 0x1Cu);
    }

    [(NACIDSServer *)self _sendMessage:v13 type:15 timeout:v16 queueOne:1 retry:*MEMORY[0x277D18828]];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_sendAvailableListeningModes:(id)modes currentListeningMode:(id)mode error:(id)error forTarget:(id)target
{
  v42 = *MEMORY[0x277D85DE8];
  modesCopy = modes;
  modeCopy = mode;
  errorCopy = error;
  targetCopy = target;
  dispatch_assert_queue_V2(self->_serialQueue);
  v14 = objc_alloc_init(NACListeningModesMessage);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v15 = modesCopy;
  v16 = [v15 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      v19 = 0;
      do
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(NACListeningModesMessage *)v14 addAvailableListeningMode:*(*(&v29 + 1) + 8 * v19++)];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v17);
  }

  [(NACListeningModesMessage *)v14 setCurrentListeningMode:modeCopy];
  if (errorCopy)
  {
    v28 = 0;
    v20 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:errorCopy requiringSecureCoding:1 error:&v28];
    v21 = v28;
    if (v21)
    {
      v22 = NMLogForCategory(2);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [NACIDSServer _sendAvailableListeningModes:currentListeningMode:error:forTarget:];
      }
    }

    [(NACListeningModesMessage *)v14 setError:v20];
  }

  originIdentifier = [targetCopy originIdentifier];
  -[NACListeningModesMessage setOriginIdentifier:](v14, "setOriginIdentifier:", [originIdentifier intValue]);

  category = [targetCopy category];
  [(NACListeningModesMessage *)v14 setCategory:category];

  v25 = NACQueueOneIdentifierVolumeControlAvailability(targetCopy);
  v26 = NMLogForCategory(4);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v34 = v15;
    v35 = 2112;
    v36 = modeCopy;
    v37 = 2112;
    v38 = errorCopy;
    v39 = 2112;
    v40 = targetCopy;
    _os_log_impl(&dword_25AEBF000, v26, OS_LOG_TYPE_DEFAULT, "[NACIDS] [ListeningMode] Sending available listening modes: %@ current listening mode: %@ error: %@ for target: %@", buf, 0x2Au);
  }

  [(NACIDSServer *)self _sendMessage:v14 type:24 timeout:v25 queueOne:1 retry:*MEMORY[0x277D18828]];
  v27 = *MEMORY[0x277D85DE8];
}

- (void)_sendHapticState:(int64_t)state
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v6 = objc_opt_new();
  [v6 setState:state];
  v5 = NACQueueOneIdentifierHapticState();
  [(NACIDSServer *)self _sendMessage:v6 type:22 timeout:v5 queueOne:1 retry:*MEMORY[0x277D18828]];
}

- (void)_sendMessage:(id)message type:(int64_t)type timeout:(double)timeout queueOne:(id)one retry:(BOOL)retry
{
  retryCopy = retry;
  v49[2] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  oneCopy = one;
  dispatch_assert_queue_V2(self->_serialQueue);
  v13 = objc_alloc(MEMORY[0x277D189F0]);
  v35 = messageCopy;
  data = [messageCopy data];
  v15 = [v13 initWithProtobufData:data type:type isResponse:0];

  v16 = objc_alloc(MEMORY[0x277CBEB38]);
  v48[0] = *MEMORY[0x277D18650];
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:timeout];
  v48[1] = *MEMORY[0x277D185D0];
  v49[0] = v17;
  v49[1] = MEMORY[0x277CBEC38];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
  v19 = [v16 initWithDictionary:v18];

  if (NACMessageTypeIsNonWaking())
  {
    [v19 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D18600]];
  }

  if (oneCopy)
  {
    [v19 setObject:oneCopy forKeyedSubscript:*MEMORY[0x277D18630]];
  }

  idsService = self->_idsService;
  v21 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D187E8]];
  v36 = 0;
  v37 = 0;
  v22 = v15;
  v23 = [(IDSService *)idsService sendProtobuf:v15 toDestinations:v21 priority:200 options:v19 identifier:&v37 error:&v36];
  v24 = v37;
  v25 = v36;

  v26 = NSStringFromNACMessageType(type);
  v27 = NMLogForCategory(4);
  v28 = v27;
  if ((v23 & 1) == 0)
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      data2 = [v35 data];
      v33 = [data2 length];
      *buf = 138413314;
      v39 = v26;
      v40 = 2112;
      v41 = oneCopy;
      v42 = 2112;
      v43 = v24;
      v44 = 2048;
      v45 = v33;
      v46 = 2112;
      v47 = v25;
      _os_log_error_impl(&dword_25AEBF000, v28, OS_LOG_TYPE_ERROR, "[NACIDS] Failed to request delivery of IDS message, type: %@, queueOne: %@, identifier: %@, payload size: %tu, error: %@", buf, 0x34u);
    }

    goto LABEL_13;
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    data3 = [v35 data];
    v30 = [data3 length];
    *buf = 138413058;
    v39 = v26;
    v40 = 2112;
    v41 = oneCopy;
    v42 = 2112;
    v43 = v24;
    v44 = 2048;
    v45 = v30;
    _os_log_impl(&dword_25AEBF000, v28, OS_LOG_TYPE_DEFAULT, "[NACIDS] Successfully requested delivery of IDS message, type: %@, queueOne: %@, identifier: %@, payload size: %tu", buf, 0x2Au);
  }

  if (retryCopy && v24)
  {
    v28 = objc_opt_new();
    [v28 setMessage:v35];
    [v28 setType:type];
    [v28 setTimeout:timeout];
    [v28 setQueueOne:oneCopy];
    [(NSMutableDictionary *)self->_messageRecords setObject:v28 forKeyedSubscript:v24];
LABEL_13:
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v27 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  v16 = NMLogForCategory(4);
  v17 = v16;
  if (successCopy)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = identifierCopy;
      _os_log_impl(&dword_25AEBF000, v17, OS_LOG_TYPE_DEFAULT, "[NACIDS] Successfully sent message (ID: %@).", &v25, 0xCu);
    }

LABEL_9:

    goto LABEL_10;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [NACIDSServer service:account:identifier:didSendWithSuccess:error:];
  }

  if ([errorCopy code] == 23)
  {
    v18 = [(NSMutableDictionary *)self->_messageRecords objectForKeyedSubscript:identifierCopy];
    v17 = v18;
    if (v18)
    {
      message = [v18 message];
      type = [v17 type];
      [v17 timeout];
      v22 = v21;
      queueOne = [v17 queueOne];
      [(NACIDSServer *)self _sendMessage:message type:type timeout:queueOne queueOne:1 retry:v22];
    }

    goto LABEL_9;
  }

LABEL_10:
  [(NSMutableDictionary *)self->_messageRecords removeObjectForKey:identifierCopy];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_setRequestedVolumeAtLeastOnce
{
  CFPreferencesSetAppValue(@"RequestedVolume", MEMORY[0x277CBEC38], @"com.apple.NanoAudioControl");

  CFPreferencesAppSynchronize(@"com.apple.NanoAudioControl");
}

- (BOOL)_shouldForceVolumeWarning
{
  if (_shouldForceVolumeWarning_onceToken != -1)
  {
    [NACIDSServer _shouldForceVolumeWarning];
  }

  return _shouldForceVolumeWarning_shouldForceVolumeWarning;
}

uint64_t __41__NACIDSServer__shouldForceVolumeWarning__block_invoke()
{
  CFPreferencesAppSynchronize(@"com.apple.NanoAudioControl");
  result = CFPreferencesGetAppBooleanValue(@"ForceVolumeWarning", @"com.apple.NanoAudioControl", 0);
  _shouldForceVolumeWarning_shouldForceVolumeWarning = result != 0;
  return result;
}

void __32__NACIDSServer__handlePlayTone___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 40) alertType];
  v5 = [*(a1 + 40) topic];
  v6 = [*(a1 + 40) toneIdentifier];
  v8 = 138412802;
  v9 = v4;
  v10 = 2112;
  v11 = v5;
  v12 = 2112;
  v13 = v6;
  _os_log_error_impl(&dword_25AEBF000, a2, OS_LOG_TYPE_ERROR, "[NACIDS] Failed to to play alertType: %@, topic: %@, toneIdentifier: %@", &v8, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

void __38__NACIDSServer__handlePickAudioRoute___block_invoke_186_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25AEBF000, v1, v2, "[NACIDS] Failed to pick route: %@ due to %@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_beginObservingProxyVolumeForTarget:withEndpointRoute:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_25AEBF000, v0, v1, "[NACIDS] Endpoint route doesn't exist for target: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_sendAvailableListeningModes:currentListeningMode:error:forTarget:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25AEBF000, v0, v1, "Failed to archive error: %@ with error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)service:account:identifier:didSendWithSuccess:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25AEBF000, v0, v1, "[NACIDS] Failed to send message (ID: %@) with error %@.");
  v2 = *MEMORY[0x277D85DE8];
}

@end