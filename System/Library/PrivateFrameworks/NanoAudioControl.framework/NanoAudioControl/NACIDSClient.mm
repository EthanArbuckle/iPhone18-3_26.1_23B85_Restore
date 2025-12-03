@interface NACIDSClient
- (NACIDSClient)init;
- (NACIDSClientDelegate)delegate;
- (void)_handleAudioRoutesDidChange:(id)change;
- (void)_handleEUVolumeLimitDidChange:(id)change;
- (void)_handleHapticIntensityDidChange:(id)change;
- (void)_handleHapticStateDidChange:(id)change;
- (void)_handleListeningModesDidChange:(id)change;
- (void)_handleMutedStateDidChange:(id)change;
- (void)_handleProminentHapticStateDidChange:(id)change;
- (void)_handleRouteObservationCancelled:(id)cancelled;
- (void)_handleSystemMutedStatedDidChange:(id)change;
- (void)_handleVolumeControlAvailabilityDidChange:(id)change;
- (void)_handleVolumeObservationCancelled:(id)cancelled;
- (void)_handleVolumeValueDidChange:(id)change;
- (void)_handleVolumeWarningDidChange:(id)change;
- (void)_sendMessage:(id)message type:(int64_t)type timeout:(double)timeout queueOne:(id)one priority:(int64_t)priority;
- (void)beginObservingAudioRoutesForCategory:(id)category;
- (void)beginObservingListeningModesForTarget:(id)target;
- (void)beginObservingVolumeForTarget:(id)target;
- (void)endObservingAudioRoutesForCategory:(id)category;
- (void)endObservingListeningModesForTarget:(id)target;
- (void)endObservingVolumeForTarget:(id)target;
- (void)pickAudioRouteWithIdentifier:(id)identifier category:(id)category;
- (void)playToneWithConfiguration:(id)configuration;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)setCurrentListeningMode:(id)mode forTarget:(id)target;
- (void)setHapticIntensity:(float)intensity;
- (void)setHapticState:(int64_t)state;
- (void)setVolumeValue:(float)value forTarget:(id)target;
- (void)stopToneWithOptions:(id)options;
@end

@implementation NACIDSClient

- (NACIDSClient)init
{
  v12.receiver = self;
  v12.super_class = NACIDSClient;
  v2 = [(NACIDSClient *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
    v5 = dispatch_queue_create("com.apple.nanoaudiocontrol.ids.client.outgoing", v4);
    idsOutgoingQueue = v2->_idsOutgoingQueue;
    v2->_idsOutgoingQueue = v5;

    v7 = dispatch_queue_create("com.apple.nanoaudiocontrol.ids.client.dispatch", v3);
    idsDispatchQueue = v2->_idsDispatchQueue;
    v2->_idsDispatchQueue = v7;

    v9 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.audiocontrol.music"];
    idsService = v2->_idsService;
    v2->_idsService = v9;

    [(IDSService *)v2->_idsService setProtobufAction:sel__handleVolumeValueDidChange_ forIncomingRequestsOfType:2];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleVolumeControlAvailabilityDidChange_ forIncomingRequestsOfType:5];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleMutedStateDidChange_ forIncomingRequestsOfType:6];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleEUVolumeLimitDidChange_ forIncomingRequestsOfType:14];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleVolumeWarningDidChange_ forIncomingRequestsOfType:15];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleAudioRoutesDidChange_ forIncomingRequestsOfType:11];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleVolumeObservationCancelled_ forIncomingRequestsOfType:16];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleRouteObservationCancelled_ forIncomingRequestsOfType:17];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleSystemMutedStatedDidChange_ forIncomingRequestsOfType:18];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleHapticStateDidChange_ forIncomingRequestsOfType:22];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleListeningModesDidChange_ forIncomingRequestsOfType:24];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleHapticIntensityDidChange_ forIncomingRequestsOfType:12];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleProminentHapticStateDidChange_ forIncomingRequestsOfType:20];
    [(IDSService *)v2->_idsService addDelegate:v2 queue:v2->_idsDispatchQueue];
  }

  return v2;
}

- (void)beginObservingVolumeForTarget:(id)target
{
  targetCopy = target;
  v6 = objc_opt_new();
  originIdentifier = [targetCopy originIdentifier];

  [v6 setOriginIdentifier:{objc_msgSend(originIdentifier, "intValue")}];
  [(NACIDSClient *)self _sendMessage:v6 type:3 timeout:0 queueOne:200 priority:*MEMORY[0x277D18828]];
}

- (void)endObservingVolumeForTarget:(id)target
{
  targetCopy = target;
  v6 = objc_opt_new();
  originIdentifier = [targetCopy originIdentifier];

  [v6 setOriginIdentifier:{objc_msgSend(originIdentifier, "intValue")}];
  [(NACIDSClient *)self _sendMessage:v6 type:4 timeout:0 queueOne:200 priority:*MEMORY[0x277D18828]];
}

- (void)setVolumeValue:(float)value forTarget:(id)target
{
  targetCopy = target;
  v11 = objc_opt_new();
  *&v7 = value;
  [v11 setVolumeValue:v7];
  originIdentifier = [targetCopy originIdentifier];
  [v11 setOriginIdentifier:{objc_msgSend(originIdentifier, "intValue")}];

  category = [targetCopy category];
  [v11 setCategory:category];

  v10 = NACQueueOneIdentifierVolumeValue(targetCopy);

  [(NACIDSClient *)self _sendMessage:v11 type:1 timeout:v10 queueOne:300 priority:5.0];
}

- (void)setHapticIntensity:(float)intensity
{
  v7 = objc_opt_new();
  *&v5 = intensity;
  [v7 setIntensity:v5];
  v6 = NACQueueOneIdentifierHapticIntensity();
  [(NACIDSClient *)self _sendMessage:v7 type:13 timeout:v6 queueOne:300 priority:5.0];
}

- (void)setHapticState:(int64_t)state
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = NMLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    stateCopy = state;
    _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "[NACIDS] Setting haptic state to: %ld", &v9, 0xCu);
  }

  v6 = objc_opt_new();
  [v6 setState:state];
  v7 = NACQueueOneIdentifierHapticState();
  [(NACIDSClient *)self _sendMessage:v6 type:23 timeout:v7 queueOne:300 priority:5.0];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleVolumeValueDidChange:(id)change
{
  v17 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = [NACVolumeValueMessage alloc];
  data = [changeCopy data];

  v7 = [(NACVolumeValueMessage *)v5 initWithData:data];
  if ([(NACVolumeValueMessage *)v7 hasOriginIdentifier])
  {
    [MEMORY[0x277CCABB0] numberWithInt:{-[NACVolumeValueMessage originIdentifier](v7, "originIdentifier")}];
  }

  else
  {
    NACProxyVolumeControlLocalOriginIdentifier();
  }
  v8 = ;
  v9 = [NACProxyVolumeControlTarget alloc];
  category = [(NACVolumeValueMessage *)v7 category];
  v11 = [(NACProxyVolumeControlTarget *)v9 initWithOriginIdentifier:v8 category:category];

  v12 = NMLogForCategory(4);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v11;
    _os_log_impl(&dword_25AEBF000, v12, OS_LOG_TYPE_DEFAULT, "[NACIDS] Handle volume change for target: %@", &v15, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(NACVolumeValueMessage *)v7 volumeValue];
  [WeakRetained client:self volumeValue:v11 didChangeForTarget:?];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleVolumeControlAvailabilityDidChange:(id)change
{
  v17 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = [NACVolumeControlAvailabilityMessage alloc];
  data = [changeCopy data];

  v7 = [(NACVolumeControlAvailabilityMessage *)v5 initWithData:data];
  if ([(NACVolumeControlAvailabilityMessage *)v7 hasOriginIdentifier])
  {
    [MEMORY[0x277CCABB0] numberWithInt:{-[NACVolumeControlAvailabilityMessage originIdentifier](v7, "originIdentifier")}];
  }

  else
  {
    NACProxyVolumeControlLocalOriginIdentifier();
  }
  v8 = ;
  v9 = [NACProxyVolumeControlTarget alloc];
  category = [(NACVolumeControlAvailabilityMessage *)v7 category];
  v11 = [(NACProxyVolumeControlTarget *)v9 initWithOriginIdentifier:v8 category:category];

  v12 = NMLogForCategory(4);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v11;
    _os_log_impl(&dword_25AEBF000, v12, OS_LOG_TYPE_DEFAULT, "[NACIDS] Handle volume availability for target: %@", &v15, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained client:self volumeControlAvailable:-[NACVolumeControlAvailabilityMessage volumeControlAvailable](v7 didChangeForTarget:{"volumeControlAvailable"), v11}];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleMutedStateDidChange:(id)change
{
  v17 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = [NACMutedMessage alloc];
  data = [changeCopy data];

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

  v12 = NMLogForCategory(4);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v11;
    _os_log_impl(&dword_25AEBF000, v12, OS_LOG_TYPE_DEFAULT, "[NACIDS] Handle muted state for target: %@", &v15, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained client:self mutedState:-[NACMutedMessage muted](v7 didChangeForTarget:{"muted"), v11}];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleHapticIntensityDidChange:(id)change
{
  changeCopy = change;
  v5 = NMLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "[NACIDS] Handle haptic intensity change", v10, 2u);
  }

  v6 = [NACHapticIntensityMessage alloc];
  data = [changeCopy data];

  v8 = [(NACHapticIntensityMessage *)v6 initWithData:data];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(NACHapticIntensityMessage *)v8 intensity];
  [WeakRetained client:self hapticIntensityDidChange:?];
}

- (void)_handleEUVolumeLimitDidChange:(id)change
{
  v20 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = [NACEUVolumeLimitMessage alloc];
  data = [changeCopy data];

  v7 = [(NACEUVolumeLimitMessage *)v5 initWithData:data];
  if ([(NACEUVolumeLimitMessage *)v7 hasOriginIdentifier])
  {
    [MEMORY[0x277CCABB0] numberWithInt:{-[NACEUVolumeLimitMessage originIdentifier](v7, "originIdentifier")}];
  }

  else
  {
    NACProxyVolumeControlLocalOriginIdentifier();
  }
  v8 = ;
  v9 = [NACProxyVolumeControlTarget alloc];
  category = [(NACEUVolumeLimitMessage *)v7 category];
  v11 = [(NACProxyVolumeControlTarget *)v9 initWithOriginIdentifier:v8 category:category];

  v12 = NMLogForCategory(4);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    [(NACEUVolumeLimitMessage *)v7 eUVolumeLimit];
    v16 = 138412546;
    v17 = v11;
    v18 = 2048;
    v19 = v13;
    _os_log_impl(&dword_25AEBF000, v12, OS_LOG_TYPE_DEFAULT, "[NACIDS] Handling EU limit change for target: %@ value: %f", &v16, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(NACEUVolumeLimitMessage *)v7 eUVolumeLimit];
  [WeakRetained client:self EULimit:v11 didChangeForTarget:?];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleVolumeWarningDidChange:(id)change
{
  v17 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = [NACVolumeWarningMessage alloc];
  data = [changeCopy data];

  v7 = [(NACVolumeWarningMessage *)v5 initWithData:data];
  if ([(NACVolumeWarningMessage *)v7 hasOriginIdentifier])
  {
    [MEMORY[0x277CCABB0] numberWithInt:{-[NACVolumeWarningMessage originIdentifier](v7, "originIdentifier")}];
  }

  else
  {
    NACProxyVolumeControlLocalOriginIdentifier();
  }
  v8 = ;
  v9 = [NACProxyVolumeControlTarget alloc];
  category = [(NACVolumeWarningMessage *)v7 category];
  v11 = [(NACProxyVolumeControlTarget *)v9 initWithOriginIdentifier:v8 category:category];

  v12 = NMLogForCategory(4);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v11;
    _os_log_impl(&dword_25AEBF000, v12, OS_LOG_TYPE_DEFAULT, "[NACIDS] Handling volume warning change for target: %@", &v15, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained client:self volumeWarningEnabled:-[NACVolumeWarningMessage volumeWarningEnabled](v7 volumeWarningState:"volumeWarningEnabled") didChangeForTarget:{-[NACVolumeWarningMessage volumeWarningState](v7, "volumeWarningState"), v11}];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleAudioRoutesDidChange:(id)change
{
  changeCopy = change;
  v5 = NMLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "[NACIDS] Handle audio routes changed", v12, 2u);
  }

  v6 = [NACAudioRoutesMessage alloc];
  data = [changeCopy data];

  v8 = [(NACAudioRoutesMessage *)v6 initWithData:data];
  category = [(NACAudioRoutesMessage *)v8 category];
  audioRoutes = [(NACAudioRoutesMessage *)v8 audioRoutes];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained client:self audioRoutes:audioRoutes didChangeForCategory:category];
}

- (void)_handleVolumeObservationCancelled:(id)cancelled
{
  v15 = *MEMORY[0x277D85DE8];
  cancelledCopy = cancelled;
  v5 = [NACOriginIdentifierMessage alloc];
  data = [cancelledCopy data];

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
    _os_log_impl(&dword_25AEBF000, v10, OS_LOG_TYPE_DEFAULT, "[NACIDS] Handle volume observation cancelled for target: %@", &v13, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained client:self volumeObservationCancelledForTarget:v9];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleRouteObservationCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  v5 = NMLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "[NACIDS] Handle route observation cancelled", v11, 2u);
  }

  v6 = [NACCategoryMessage alloc];
  data = [cancelledCopy data];

  v8 = [(NACCategoryMessage *)v6 initWithData:data];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  category = [(NACCategoryMessage *)v8 category];
  [WeakRetained client:self routeObservationCancelledForCategory:category];
}

- (void)_handleSystemMutedStatedDidChange:(id)change
{
  changeCopy = change;
  v5 = NMLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "[NACIDS] Handle system muted state did change", v10, 2u);
  }

  v6 = [NACMutedMessage alloc];
  data = [changeCopy data];

  v8 = [(NACMutedMessage *)v6 initWithData:data];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained client:self systemMutedStateDidChange:{-[NACMutedMessage muted](v8, "muted")}];
}

- (void)_handleProminentHapticStateDidChange:(id)change
{
  changeCopy = change;
  v5 = NMLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "[NACIDS] Handle prominent haptic state did change", v10, 2u);
  }

  v6 = [NACProminentHapticStateMessage alloc];
  data = [changeCopy data];

  v8 = [(NACProminentHapticStateMessage *)v6 initWithData:data];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained client:self prominentHapticStateDidChange:{-[NACProminentHapticStateMessage enabled](v8, "enabled")}];
}

- (void)_handleHapticStateDidChange:(id)change
{
  changeCopy = change;
  v5 = NMLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "[NACIDS] Handle haptic state did change", v10, 2u);
  }

  v6 = [NACHapticStateMessage alloc];
  data = [changeCopy data];

  v8 = [(NACHapticStateMessage *)v6 initWithData:data];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained client:self hapticStateDidChange:{-[NACHapticStateMessage state](v8, "state")}];
}

- (void)beginObservingListeningModesForTarget:(id)target
{
  targetCopy = target;
  v6 = objc_opt_new();
  originIdentifier = [targetCopy originIdentifier];

  [v6 setOriginIdentifier:{objc_msgSend(originIdentifier, "intValue")}];
  [(NACIDSClient *)self _sendMessage:v6 type:26 timeout:0 queueOne:200 priority:*MEMORY[0x277D18828]];
}

- (void)endObservingListeningModesForTarget:(id)target
{
  targetCopy = target;
  v6 = objc_opt_new();
  originIdentifier = [targetCopy originIdentifier];

  [v6 setOriginIdentifier:{objc_msgSend(originIdentifier, "intValue")}];
  [(NACIDSClient *)self _sendMessage:v6 type:27 timeout:0 queueOne:200 priority:*MEMORY[0x277D18828]];
}

- (void)setCurrentListeningMode:(id)mode forTarget:(id)target
{
  v18 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  targetCopy = target;
  v8 = NMLogForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = modeCopy;
    v16 = 2112;
    v17 = targetCopy;
    _os_log_impl(&dword_25AEBF000, v8, OS_LOG_TYPE_DEFAULT, "[NACIDS] [ListeningMode] Setting current listening mode: %@ for target: %@", &v14, 0x16u);
  }

  v9 = objc_alloc_init(NACListeningModesMessage);
  [(NACListeningModesMessage *)v9 setCurrentListeningMode:modeCopy];
  originIdentifier = [targetCopy originIdentifier];
  -[NACListeningModesMessage setOriginIdentifier:](v9, "setOriginIdentifier:", [originIdentifier intValue]);

  category = [targetCopy category];
  [(NACListeningModesMessage *)v9 setCategory:category];

  v12 = NACQueueOneIdentifierListeningModes(targetCopy);
  [(NACIDSClient *)self _sendMessage:v9 type:25 timeout:v12 queueOne:300 priority:5.0];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleListeningModesDidChange:(id)change
{
  changeCopy = change;
  v5 = NMLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "[NACIDS] [ListeningMode] Handle listening modes did change", buf, 2u);
  }

  v6 = [NACListeningModesMessage alloc];
  data = [changeCopy data];

  v8 = [(NACListeningModesMessage *)v6 initWithData:data];
  if ([(NACListeningModesMessage *)v8 hasOriginIdentifier])
  {
    [MEMORY[0x277CCABB0] numberWithInt:{-[NACListeningModesMessage originIdentifier](v8, "originIdentifier")}];
  }

  else
  {
    NACProxyVolumeControlLocalOriginIdentifier();
  }
  v9 = ;
  v10 = [NACProxyVolumeControlTarget alloc];
  category = [(NACListeningModesMessage *)v8 category];
  v12 = [(NACProxyVolumeControlTarget *)v10 initWithOriginIdentifier:v9 category:category];

  if ([(NACListeningModesMessage *)v8 availableListeningModesCount])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v14 = MEMORY[0x277CBEB70];
    availableListeningModes = [(NACListeningModesMessage *)v8 availableListeningModes];
    v16 = [v14 orderedSetWithArray:availableListeningModes];
    [WeakRetained client:self availableListeningModes:v16 didChangeForTarget:v12];
  }

  if ([(NACListeningModesMessage *)v8 hasCurrentListeningMode])
  {
    v17 = objc_loadWeakRetained(&self->_delegate);
    currentListeningMode = [(NACListeningModesMessage *)v8 currentListeningMode];
    [v17 client:self currentListeningMode:currentListeningMode didChangeForTarget:v12];
  }

  if ([(NACListeningModesMessage *)v8 hasError])
  {
    v19 = MEMORY[0x277CCAAC8];
    v20 = [MEMORY[0x277CBEB98] setWithObject:{objc_msgSend(MEMORY[0x277CCA9B8], "classForKeyedUnarchiver")}];
    error = [(NACListeningModesMessage *)v8 error];
    v28 = 0;
    v22 = [v19 unarchivedObjectOfClasses:v20 fromData:error error:&v28];
    v23 = v28;

    if (v23)
    {
      v24 = NMLogForCategory(2);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [(NACIDSClient *)v23 _handleListeningModesDidChange:v24];
      }
    }

    if (v22)
    {
      v25 = v22;
    }

    else
    {
      v25 = v23;
    }

    v26 = v25;
    v27 = objc_loadWeakRetained(&self->_delegate);
    [v27 client:self didFailToSetCurrentListeningModeForTarget:v12 error:v26];
  }
}

- (void)beginObservingAudioRoutesForCategory:(id)category
{
  categoryCopy = category;
  v5 = objc_opt_new();
  [v5 setCategory:categoryCopy];

  [(NACIDSClient *)self _sendMessage:v5 type:8 timeout:0 queueOne:200 priority:*MEMORY[0x277D18828]];
}

- (void)endObservingAudioRoutesForCategory:(id)category
{
  categoryCopy = category;
  v5 = objc_opt_new();
  [v5 setCategory:categoryCopy];

  [(NACIDSClient *)self _sendMessage:v5 type:9 timeout:0 queueOne:200 priority:*MEMORY[0x277D18828]];
}

- (void)pickAudioRouteWithIdentifier:(id)identifier category:(id)category
{
  categoryCopy = category;
  identifierCopy = identifier;
  v8 = objc_opt_new();
  [v8 setCategory:categoryCopy];

  [v8 setIdentifier:identifierCopy];
  [(NACIDSClient *)self _sendMessage:v8 type:10 timeout:0 queueOne:200 priority:15.0];
}

- (void)playToneWithConfiguration:(id)configuration
{
  v13 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v5 = NMLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = configurationCopy;
    _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "[NACIDS] Requesting to play tone with configuration: %@", &v11, 0xCu);
  }

  v6 = objc_alloc_init(NACPlayToneMessage);
  [configurationCopy type];
  v7 = NSStringFromTLAlertType();
  [(NACPlayToneMessage *)v6 setAlertType:v7];

  topic = [configurationCopy topic];
  [(NACPlayToneMessage *)v6 setTopic:topic];

  toneIdentifier = [configurationCopy toneIdentifier];
  [(NACPlayToneMessage *)v6 setToneIdentifier:toneIdentifier];

  -[NACPlayToneMessage setShouldRepeat:](v6, "setShouldRepeat:", [configurationCopy shouldRepeat]);
  -[NACPlayToneMessage setForPreview:](v6, "setForPreview:", [configurationCopy isForPreview]);
  [(NACIDSClient *)self _sendMessage:v6 type:28 timeout:0 queueOne:300 priority:5.0];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)stopToneWithOptions:(id)options
{
  v10 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v5 = NMLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = optionsCopy;
    _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "[NACIDS] Requesting to stop tone with options: %@", &v8, 0xCu);
  }

  v6 = objc_alloc_init(NACStopToneMessage);
  [optionsCopy fadeOutDuration];
  [(NACStopToneMessage *)v6 setFadeOutDuration:?];
  -[NACStopToneMessage setShouldWaitUntilEndOfCurrentRepetition:](v6, "setShouldWaitUntilEndOfCurrentRepetition:", [optionsCopy shouldWaitUntilEndOfCurrentRepetition]);
  [(NACIDSClient *)self _sendMessage:v6 type:29 timeout:0 queueOne:300 priority:5.0];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_sendMessage:(id)message type:(int64_t)type timeout:(double)timeout queueOne:(id)one priority:(int64_t)priority
{
  messageCopy = message;
  oneCopy = one;
  idsOutgoingQueue = self->_idsOutgoingQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__NACIDSClient__sendMessage_type_timeout_queueOne_priority___block_invoke;
  v17[3] = &unk_27992BC20;
  timeoutCopy = timeout;
  v18 = messageCopy;
  v19 = oneCopy;
  priorityCopy = priority;
  selfCopy = self;
  typeCopy = type;
  v15 = oneCopy;
  v16 = messageCopy;
  dispatch_async(idsOutgoingQueue, v17);
}

void __60__NACIDSClient__sendMessage_type_timeout_queueOne_priority___block_invoke(uint64_t a1)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D189F0]);
  v3 = [*(a1 + 32) data];
  v4 = [v2 initWithProtobufData:v3 type:*(a1 + 56) isResponse:0];

  v5 = objc_alloc(MEMORY[0x277CBEB38]);
  v38[0] = *MEMORY[0x277D18650];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 64)];
  v38[1] = *MEMORY[0x277D185D0];
  v39[0] = v6;
  v39[1] = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
  v8 = [v5 initWithDictionary:v7];

  v9 = *(a1 + 40);
  if (v9)
  {
    [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x277D18630]];
  }

  if (*(a1 + 72) == 300)
  {
    v10 = MEMORY[0x277CBEC38];
    [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D185C0]];
    [v8 setObject:v10 forKeyedSubscript:*MEMORY[0x277D18580]];
  }

  v11 = *(*(a1 + 48) + 8);
  v12 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D187E8]];
  v13 = *(a1 + 72);
  v26 = 0;
  v27 = 0;
  v14 = [v11 sendProtobuf:v4 toDestinations:v12 priority:v13 options:v8 identifier:&v27 error:&v26];
  v15 = v27;
  v16 = v26;

  v17 = NSStringFromNACMessageType(*(a1 + 56));
  v18 = NMLogForCategory(4);
  v19 = v18;
  if ((v14 & 1) == 0)
  {
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v24 = *(a1 + 40);
    v21 = [*(a1 + 32) data];
    v25 = [v21 length];
    *buf = 138413314;
    v29 = v17;
    v30 = 2112;
    v31 = v24;
    v32 = 2112;
    v33 = v15;
    v34 = 2048;
    v35 = v25;
    v36 = 2112;
    v37 = v16;
    _os_log_error_impl(&dword_25AEBF000, v19, OS_LOG_TYPE_ERROR, "[NACIDS] Failed to request delivery of IDS message, type: %@, queueOne: %@, identifier: %@, payload size: %tu, error: %@", buf, 0x34u);
    goto LABEL_8;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 40);
    v21 = [*(a1 + 32) data];
    v22 = [v21 length];
    *buf = 138413058;
    v29 = v17;
    v30 = 2112;
    v31 = v20;
    v32 = 2112;
    v33 = v15;
    v34 = 2048;
    v35 = v22;
    _os_log_impl(&dword_25AEBF000, v19, OS_LOG_TYPE_DEFAULT, "[NACIDS] Successfully requested delivery of IDS message, type: %@, queueOne: %@, identifier: %@, payload size: %tu", buf, 0x2Au);
LABEL_8:
  }

LABEL_10:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  errorCopy = error;
  v11 = NMLogForCategory(4);
  v12 = v11;
  if (successCopy)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = identifierCopy;
      _os_log_impl(&dword_25AEBF000, v12, OS_LOG_TYPE_DEFAULT, "[NACIDS] Successfully sent message (ID: %@).", &v14, 0xCu);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [NACIDSClient service:identifierCopy account:errorCopy identifier:v12 didSendWithSuccess:? error:?];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (NACIDSClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleListeningModesDidChange:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25AEBF000, a2, OS_LOG_TYPE_ERROR, "Failed to unarchive error with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)service:(os_log_t)log account:identifier:didSendWithSuccess:error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_25AEBF000, log, OS_LOG_TYPE_ERROR, "[NACIDS] Failed to send message (ID: %@) with error %@.", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end