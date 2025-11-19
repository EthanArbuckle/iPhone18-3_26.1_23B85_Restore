@interface NACIDSClient
- (NACIDSClient)init;
- (NACIDSClientDelegate)delegate;
- (void)_handleAudioRoutesDidChange:(id)a3;
- (void)_handleEUVolumeLimitDidChange:(id)a3;
- (void)_handleHapticIntensityDidChange:(id)a3;
- (void)_handleHapticStateDidChange:(id)a3;
- (void)_handleListeningModesDidChange:(id)a3;
- (void)_handleMutedStateDidChange:(id)a3;
- (void)_handleProminentHapticStateDidChange:(id)a3;
- (void)_handleRouteObservationCancelled:(id)a3;
- (void)_handleSystemMutedStatedDidChange:(id)a3;
- (void)_handleVolumeControlAvailabilityDidChange:(id)a3;
- (void)_handleVolumeObservationCancelled:(id)a3;
- (void)_handleVolumeValueDidChange:(id)a3;
- (void)_handleVolumeWarningDidChange:(id)a3;
- (void)_sendMessage:(id)a3 type:(int64_t)a4 timeout:(double)a5 queueOne:(id)a6 priority:(int64_t)a7;
- (void)beginObservingAudioRoutesForCategory:(id)a3;
- (void)beginObservingListeningModesForTarget:(id)a3;
- (void)beginObservingVolumeForTarget:(id)a3;
- (void)endObservingAudioRoutesForCategory:(id)a3;
- (void)endObservingListeningModesForTarget:(id)a3;
- (void)endObservingVolumeForTarget:(id)a3;
- (void)pickAudioRouteWithIdentifier:(id)a3 category:(id)a4;
- (void)playToneWithConfiguration:(id)a3;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)setCurrentListeningMode:(id)a3 forTarget:(id)a4;
- (void)setHapticIntensity:(float)a3;
- (void)setHapticState:(int64_t)a3;
- (void)setVolumeValue:(float)a3 forTarget:(id)a4;
- (void)stopToneWithOptions:(id)a3;
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

- (void)beginObservingVolumeForTarget:(id)a3
{
  v4 = a3;
  v6 = objc_opt_new();
  v5 = [v4 originIdentifier];

  [v6 setOriginIdentifier:{objc_msgSend(v5, "intValue")}];
  [(NACIDSClient *)self _sendMessage:v6 type:3 timeout:0 queueOne:200 priority:*MEMORY[0x277D18828]];
}

- (void)endObservingVolumeForTarget:(id)a3
{
  v4 = a3;
  v6 = objc_opt_new();
  v5 = [v4 originIdentifier];

  [v6 setOriginIdentifier:{objc_msgSend(v5, "intValue")}];
  [(NACIDSClient *)self _sendMessage:v6 type:4 timeout:0 queueOne:200 priority:*MEMORY[0x277D18828]];
}

- (void)setVolumeValue:(float)a3 forTarget:(id)a4
{
  v6 = a4;
  v11 = objc_opt_new();
  *&v7 = a3;
  [v11 setVolumeValue:v7];
  v8 = [v6 originIdentifier];
  [v11 setOriginIdentifier:{objc_msgSend(v8, "intValue")}];

  v9 = [v6 category];
  [v11 setCategory:v9];

  v10 = NACQueueOneIdentifierVolumeValue(v6);

  [(NACIDSClient *)self _sendMessage:v11 type:1 timeout:v10 queueOne:300 priority:5.0];
}

- (void)setHapticIntensity:(float)a3
{
  v7 = objc_opt_new();
  *&v5 = a3;
  [v7 setIntensity:v5];
  v6 = NACQueueOneIdentifierHapticIntensity();
  [(NACIDSClient *)self _sendMessage:v7 type:13 timeout:v6 queueOne:300 priority:5.0];
}

- (void)setHapticState:(int64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = NMLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = a3;
    _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "[NACIDS] Setting haptic state to: %ld", &v9, 0xCu);
  }

  v6 = objc_opt_new();
  [v6 setState:a3];
  v7 = NACQueueOneIdentifierHapticState();
  [(NACIDSClient *)self _sendMessage:v6 type:23 timeout:v7 queueOne:300 priority:5.0];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleVolumeValueDidChange:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [NACVolumeValueMessage alloc];
  v6 = [v4 data];

  v7 = [(NACVolumeValueMessage *)v5 initWithData:v6];
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
  v10 = [(NACVolumeValueMessage *)v7 category];
  v11 = [(NACProxyVolumeControlTarget *)v9 initWithOriginIdentifier:v8 category:v10];

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

- (void)_handleVolumeControlAvailabilityDidChange:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [NACVolumeControlAvailabilityMessage alloc];
  v6 = [v4 data];

  v7 = [(NACVolumeControlAvailabilityMessage *)v5 initWithData:v6];
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
  v10 = [(NACVolumeControlAvailabilityMessage *)v7 category];
  v11 = [(NACProxyVolumeControlTarget *)v9 initWithOriginIdentifier:v8 category:v10];

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

- (void)_handleMutedStateDidChange:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [NACMutedMessage alloc];
  v6 = [v4 data];

  v7 = [(NACMutedMessage *)v5 initWithData:v6];
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
  v10 = [(NACMutedMessage *)v7 category];
  v11 = [(NACProxyVolumeControlTarget *)v9 initWithOriginIdentifier:v8 category:v10];

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

- (void)_handleHapticIntensityDidChange:(id)a3
{
  v4 = a3;
  v5 = NMLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "[NACIDS] Handle haptic intensity change", v10, 2u);
  }

  v6 = [NACHapticIntensityMessage alloc];
  v7 = [v4 data];

  v8 = [(NACHapticIntensityMessage *)v6 initWithData:v7];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(NACHapticIntensityMessage *)v8 intensity];
  [WeakRetained client:self hapticIntensityDidChange:?];
}

- (void)_handleEUVolumeLimitDidChange:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [NACEUVolumeLimitMessage alloc];
  v6 = [v4 data];

  v7 = [(NACEUVolumeLimitMessage *)v5 initWithData:v6];
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
  v10 = [(NACEUVolumeLimitMessage *)v7 category];
  v11 = [(NACProxyVolumeControlTarget *)v9 initWithOriginIdentifier:v8 category:v10];

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

- (void)_handleVolumeWarningDidChange:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [NACVolumeWarningMessage alloc];
  v6 = [v4 data];

  v7 = [(NACVolumeWarningMessage *)v5 initWithData:v6];
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
  v10 = [(NACVolumeWarningMessage *)v7 category];
  v11 = [(NACProxyVolumeControlTarget *)v9 initWithOriginIdentifier:v8 category:v10];

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

- (void)_handleAudioRoutesDidChange:(id)a3
{
  v4 = a3;
  v5 = NMLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "[NACIDS] Handle audio routes changed", v12, 2u);
  }

  v6 = [NACAudioRoutesMessage alloc];
  v7 = [v4 data];

  v8 = [(NACAudioRoutesMessage *)v6 initWithData:v7];
  v9 = [(NACAudioRoutesMessage *)v8 category];
  v10 = [(NACAudioRoutesMessage *)v8 audioRoutes];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained client:self audioRoutes:v10 didChangeForCategory:v9];
}

- (void)_handleVolumeObservationCancelled:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [NACOriginIdentifierMessage alloc];
  v6 = [v4 data];

  v7 = [(NACOriginIdentifierMessage *)v5 initWithData:v6];
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

- (void)_handleRouteObservationCancelled:(id)a3
{
  v4 = a3;
  v5 = NMLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "[NACIDS] Handle route observation cancelled", v11, 2u);
  }

  v6 = [NACCategoryMessage alloc];
  v7 = [v4 data];

  v8 = [(NACCategoryMessage *)v6 initWithData:v7];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [(NACCategoryMessage *)v8 category];
  [WeakRetained client:self routeObservationCancelledForCategory:v10];
}

- (void)_handleSystemMutedStatedDidChange:(id)a3
{
  v4 = a3;
  v5 = NMLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "[NACIDS] Handle system muted state did change", v10, 2u);
  }

  v6 = [NACMutedMessage alloc];
  v7 = [v4 data];

  v8 = [(NACMutedMessage *)v6 initWithData:v7];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained client:self systemMutedStateDidChange:{-[NACMutedMessage muted](v8, "muted")}];
}

- (void)_handleProminentHapticStateDidChange:(id)a3
{
  v4 = a3;
  v5 = NMLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "[NACIDS] Handle prominent haptic state did change", v10, 2u);
  }

  v6 = [NACProminentHapticStateMessage alloc];
  v7 = [v4 data];

  v8 = [(NACProminentHapticStateMessage *)v6 initWithData:v7];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained client:self prominentHapticStateDidChange:{-[NACProminentHapticStateMessage enabled](v8, "enabled")}];
}

- (void)_handleHapticStateDidChange:(id)a3
{
  v4 = a3;
  v5 = NMLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "[NACIDS] Handle haptic state did change", v10, 2u);
  }

  v6 = [NACHapticStateMessage alloc];
  v7 = [v4 data];

  v8 = [(NACHapticStateMessage *)v6 initWithData:v7];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained client:self hapticStateDidChange:{-[NACHapticStateMessage state](v8, "state")}];
}

- (void)beginObservingListeningModesForTarget:(id)a3
{
  v4 = a3;
  v6 = objc_opt_new();
  v5 = [v4 originIdentifier];

  [v6 setOriginIdentifier:{objc_msgSend(v5, "intValue")}];
  [(NACIDSClient *)self _sendMessage:v6 type:26 timeout:0 queueOne:200 priority:*MEMORY[0x277D18828]];
}

- (void)endObservingListeningModesForTarget:(id)a3
{
  v4 = a3;
  v6 = objc_opt_new();
  v5 = [v4 originIdentifier];

  [v6 setOriginIdentifier:{objc_msgSend(v5, "intValue")}];
  [(NACIDSClient *)self _sendMessage:v6 type:27 timeout:0 queueOne:200 priority:*MEMORY[0x277D18828]];
}

- (void)setCurrentListeningMode:(id)a3 forTarget:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = NMLogForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_25AEBF000, v8, OS_LOG_TYPE_DEFAULT, "[NACIDS] [ListeningMode] Setting current listening mode: %@ for target: %@", &v14, 0x16u);
  }

  v9 = objc_alloc_init(NACListeningModesMessage);
  [(NACListeningModesMessage *)v9 setCurrentListeningMode:v6];
  v10 = [v7 originIdentifier];
  -[NACListeningModesMessage setOriginIdentifier:](v9, "setOriginIdentifier:", [v10 intValue]);

  v11 = [v7 category];
  [(NACListeningModesMessage *)v9 setCategory:v11];

  v12 = NACQueueOneIdentifierListeningModes(v7);
  [(NACIDSClient *)self _sendMessage:v9 type:25 timeout:v12 queueOne:300 priority:5.0];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleListeningModesDidChange:(id)a3
{
  v4 = a3;
  v5 = NMLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "[NACIDS] [ListeningMode] Handle listening modes did change", buf, 2u);
  }

  v6 = [NACListeningModesMessage alloc];
  v7 = [v4 data];

  v8 = [(NACListeningModesMessage *)v6 initWithData:v7];
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
  v11 = [(NACListeningModesMessage *)v8 category];
  v12 = [(NACProxyVolumeControlTarget *)v10 initWithOriginIdentifier:v9 category:v11];

  if ([(NACListeningModesMessage *)v8 availableListeningModesCount])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v14 = MEMORY[0x277CBEB70];
    v15 = [(NACListeningModesMessage *)v8 availableListeningModes];
    v16 = [v14 orderedSetWithArray:v15];
    [WeakRetained client:self availableListeningModes:v16 didChangeForTarget:v12];
  }

  if ([(NACListeningModesMessage *)v8 hasCurrentListeningMode])
  {
    v17 = objc_loadWeakRetained(&self->_delegate);
    v18 = [(NACListeningModesMessage *)v8 currentListeningMode];
    [v17 client:self currentListeningMode:v18 didChangeForTarget:v12];
  }

  if ([(NACListeningModesMessage *)v8 hasError])
  {
    v19 = MEMORY[0x277CCAAC8];
    v20 = [MEMORY[0x277CBEB98] setWithObject:{objc_msgSend(MEMORY[0x277CCA9B8], "classForKeyedUnarchiver")}];
    v21 = [(NACListeningModesMessage *)v8 error];
    v28 = 0;
    v22 = [v19 unarchivedObjectOfClasses:v20 fromData:v21 error:&v28];
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

- (void)beginObservingAudioRoutesForCategory:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setCategory:v4];

  [(NACIDSClient *)self _sendMessage:v5 type:8 timeout:0 queueOne:200 priority:*MEMORY[0x277D18828]];
}

- (void)endObservingAudioRoutesForCategory:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setCategory:v4];

  [(NACIDSClient *)self _sendMessage:v5 type:9 timeout:0 queueOne:200 priority:*MEMORY[0x277D18828]];
}

- (void)pickAudioRouteWithIdentifier:(id)a3 category:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  [v8 setCategory:v6];

  [v8 setIdentifier:v7];
  [(NACIDSClient *)self _sendMessage:v8 type:10 timeout:0 queueOne:200 priority:15.0];
}

- (void)playToneWithConfiguration:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = NMLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "[NACIDS] Requesting to play tone with configuration: %@", &v11, 0xCu);
  }

  v6 = objc_alloc_init(NACPlayToneMessage);
  [v4 type];
  v7 = NSStringFromTLAlertType();
  [(NACPlayToneMessage *)v6 setAlertType:v7];

  v8 = [v4 topic];
  [(NACPlayToneMessage *)v6 setTopic:v8];

  v9 = [v4 toneIdentifier];
  [(NACPlayToneMessage *)v6 setToneIdentifier:v9];

  -[NACPlayToneMessage setShouldRepeat:](v6, "setShouldRepeat:", [v4 shouldRepeat]);
  -[NACPlayToneMessage setForPreview:](v6, "setForPreview:", [v4 isForPreview]);
  [(NACIDSClient *)self _sendMessage:v6 type:28 timeout:0 queueOne:300 priority:5.0];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)stopToneWithOptions:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = NMLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "[NACIDS] Requesting to stop tone with options: %@", &v8, 0xCu);
  }

  v6 = objc_alloc_init(NACStopToneMessage);
  [v4 fadeOutDuration];
  [(NACStopToneMessage *)v6 setFadeOutDuration:?];
  -[NACStopToneMessage setShouldWaitUntilEndOfCurrentRepetition:](v6, "setShouldWaitUntilEndOfCurrentRepetition:", [v4 shouldWaitUntilEndOfCurrentRepetition]);
  [(NACIDSClient *)self _sendMessage:v6 type:29 timeout:0 queueOne:300 priority:5.0];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_sendMessage:(id)a3 type:(int64_t)a4 timeout:(double)a5 queueOne:(id)a6 priority:(int64_t)a7
{
  v12 = a3;
  v13 = a6;
  idsOutgoingQueue = self->_idsOutgoingQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__NACIDSClient__sendMessage_type_timeout_queueOne_priority___block_invoke;
  v17[3] = &unk_27992BC20;
  v22 = a5;
  v18 = v12;
  v19 = v13;
  v23 = a7;
  v20 = self;
  v21 = a4;
  v15 = v13;
  v16 = v12;
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

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  v16 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = a7;
  v11 = NMLogForCategory(4);
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&dword_25AEBF000, v12, OS_LOG_TYPE_DEFAULT, "[NACIDS] Successfully sent message (ID: %@).", &v14, 0xCu);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [NACIDSClient service:v9 account:v10 identifier:v12 didSendWithSuccess:? error:?];
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