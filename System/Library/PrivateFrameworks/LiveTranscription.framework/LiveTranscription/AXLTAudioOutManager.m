@interface AXLTAudioOutManager
+ (AXLTAudioOutManager)sharedInstance;
+ (BOOL)isCurrentProcessAXUIServer;
+ (BOOL)isExcludedAppID:(id)a3;
- (AXLTAudioOutManager)init;
- (AXLTTranscriberDelegateProtocol)delegate;
- (BOOL)isTranscribingForPID:(int)a3;
- (BOOL)startTranscriptionWithLocale:(id)a3 error:(id *)a4;
- (BOOL)stopTranscription:(id *)a3;
- (void)_avSessionMediaServicesResetNotification:(id)a3;
- (void)_cleanupAllPids;
- (void)_setupAVSystemNotificationSystem;
- (void)_someSessionIsPlayingDidChangeNotification:(id)a3;
- (void)dealloc;
- (void)handleInputBufferWithContext:(void *)a3 audioQueue:(OpaqueAudioQueue *)a4 audioBuffer:(AudioQueueBuffer *)a5 timestamp:(const AudioTimeStamp *)a6 packetCount:(unsigned int)a7 packetDesc:(const AudioStreamPacketDescription *)a8;
- (void)registerForAVSystemControllerNotifications;
- (void)unregisterForAVSystemControllerNotifications;
- (void)updateAudioSessionsInfoFromSessionsArray:(id)a3;
@end

@implementation AXLTAudioOutManager

+ (AXLTAudioOutManager)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[AXLTAudioOutManager sharedInstance];
  }

  v3 = sharedInstance__shared_1;

  return v3;
}

uint64_t __37__AXLTAudioOutManager_sharedInstance__block_invoke()
{
  sharedInstance__shared_1 = objc_alloc_init(AXLTAudioOutManager);

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)isExcludedAppID:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__AXLTAudioOutManager_isExcludedAppID___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  v3 = isExcludedAppID__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&isExcludedAppID__onceToken, block);
  }

  v5 = [isExcludedAppID___excludedAppIDs containsObject:v4];

  return v5;
}

void __39__AXLTAudioOutManager_isExcludedAppID___block_invoke(uint64_t a1)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = @"Invalid";
  v8[1] = @"com.apple.VoiceOverTouch";
  v2 = *MEMORY[0x277CE68B8];
  v8[2] = *MEMORY[0x277CE68C0];
  v8[3] = v2;
  v8[4] = @"com.apple.Accessibility.SwitchControl";
  v8[5] = @"com.apple.SpeakSelection";
  v8[6] = @"com.apple.RealityEnvironment";
  v8[7] = @"soundanalysisd";
  v8[8] = @"vot";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:9];
  v4 = isExcludedAppID___excludedAppIDs;
  isExcludedAppID___excludedAppIDs = v3;

  if ([*(a1 + 32) isCurrentProcessAXUIServer])
  {
    v5 = [isExcludedAppID___excludedAppIDs mutableCopy];
    [v5 addObject:@"com.apple.accessibility.HearingCore"];
    v6 = isExcludedAppID___excludedAppIDs;
    isExcludedAppID___excludedAppIDs = v5;
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isCurrentProcessAXUIServer
{
  if (isCurrentProcessAXUIServer_token[0] != -1)
  {
    +[AXLTAudioOutManager isCurrentProcessAXUIServer];
  }

  return isCurrentProcessAXUIServer__AXIsProcess;
}

void __49__AXLTAudioOutManager_isCurrentProcessAXUIServer__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];

  if (([v1 isEqualToString:*MEMORY[0x277CE68C0]] & 1) != 0 || objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277CE68B8]))
  {
    isCurrentProcessAXUIServer__AXIsProcess = 1;
  }
}

- (AXLTAudioOutManager)init
{
  v16 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = AXLTAudioOutManager;
  v2 = [(AXLTAudioOutManager *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_isTranscribing = 0;
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, -1);
    v5 = dispatch_queue_create("com.apple.accessibility.LiveTranscription.audioOutManagerBufferQueue", v4);
    bufferQueue = v3->_bufferQueue;
    v3->_bufferQueue = v5;

    v7 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    processToTranscriberMap = v3->_processToTranscriberMap;
    v3->_processToTranscriberMap = v7;

    [(AXLTAudioOutManager *)v3 _setupAVSystemNotificationSystem];
    v9 = AXLogLiveTranscription();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      avSystemController = v3->_avSystemController;
      *buf = 138412290;
      v15 = avSystemController;
      _os_log_impl(&dword_256022000, v9, OS_LOG_TYPE_INFO, "_avSystemController: %@", buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)dealloc
{
  [(AXLTAudioOutManager *)self stopTranscription:0];
  [(AXLTAudioOutManager *)self _stopTranscriptionForPID:4294967293 error:0];
  [(AXLTAudioOutManager *)self _stopTranscriptionForPID:4294967294 error:0];
  v3.receiver = self;
  v3.super_class = AXLTAudioOutManager;
  [(AXLTAudioOutManager *)&v3 dealloc];
}

- (BOOL)startTranscriptionWithLocale:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(AXLTAudioOutManager *)self isTranscribing];
  v8 = AXLogLiveTranscription();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_256022000, v9, OS_LOG_TYPE_INFO, "AudioManager: Already started transcription", buf, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_256022000, v9, OS_LOG_TYPE_DEFAULT, "AudioManager: Starting transcription", v15, 2u);
    }

    self->_isTranscribing = 1;
    objc_storeStrong(&self->_locale, a3);
    v10 = +[AXLTTranscriber sharedInstance];
    v11 = [v10 downloadState];

    if (v11 == -1)
    {
      v12 = +[AXLTTranscriber sharedInstance];
      [v12 setDownloadState:-2];
    }

    v13 = +[_TtC17LiveTranscription15AXLCTranscriber shared];
    [v13 resetErrorStates];

    [(AXLTAudioOutManager *)self registerForAVSystemControllerNotifications];
  }

  return 1;
}

- (BOOL)stopTranscription:(id *)a3
{
  v4 = [(AXLTAudioOutManager *)self isTranscribing];
  v5 = AXLogLiveTranscription();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_256022000, v6, OS_LOG_TYPE_DEFAULT, "AudioManager: Stopping transcription", v9, 2u);
    }

    self->_isTranscribing = 0;
    locale = self->_locale;
    self->_locale = 0;

    [(AXLTAudioOutManager *)self unregisterForAVSystemControllerNotifications];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_256022000, v6, OS_LOG_TYPE_INFO, "AudioManager: Already stopped transcription", buf, 2u);
    }
  }

  return 1;
}

- (BOOL)isTranscribingForPID:(int)a3
{
  v4 = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [(AXLTAudioOutManager *)self bufferQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__AXLTAudioOutManager_isTranscribingForPID___block_invoke;
  block[3] = &unk_27981CCA0;
  v8 = a3;
  block[4] = v4;
  block[5] = &v9;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v4;
}

void __44__AXLTAudioOutManager_isTranscribingForPID___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) processToTranscriberMap];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) intValue] == *(a1 + 48))
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];
}

void __90__AXLTAudioOutManager__startTranscriptionForPID_appID_appName_excludingPIDs_locale_error___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) processToTranscriberMap];
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  [v4 setObject:v2 forKey:v3];
}

- (void)handleInputBufferWithContext:(void *)a3 audioQueue:(OpaqueAudioQueue *)a4 audioBuffer:(AudioQueueBuffer *)a5 timestamp:(const AudioTimeStamp *)a6 packetCount:(unsigned int)a7 packetDesc:(const AudioStreamPacketDescription *)a8
{
  v14 = a3;
  v15 = [v14 pid];
  v16 = [(AXLTAudioOutManager *)self bufferQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __108__AXLTAudioOutManager_handleInputBufferWithContext_audioQueue_audioBuffer_timestamp_packetCount_packetDesc___block_invoke;
  block[3] = &unk_27981CCF0;
  block[4] = self;
  v19 = v14;
  v20 = a5;
  v21 = a4;
  v24 = v15;
  v25 = a7;
  v22 = a6;
  v23 = a8;
  v17 = v14;
  dispatch_async(v16, block);
}

void __108__AXLTAudioOutManager_handleInputBufferWithContext_audioQueue_audioBuffer_timestamp_packetCount_packetDesc___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) processToTranscriberMap];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 80)];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v9 = *(a1 + 84);
    v10 = *(a1 + 72);

    [v5 handleAudioBuffer:v6 audioQueue:v7 timestamp:v8 packetCount:v9 packetDesc:v10];
  }
}

void __38__AXLTAudioOutManager__cleanupForPID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) cleanup];
  v3 = [*(a1 + 40) processToTranscriberMap];
  v2 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  [v3 removeObjectForKey:v2];
}

- (void)_cleanupAllPids
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(AXLTAudioOutManager *)self bufferQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__AXLTAudioOutManager__cleanupAllPids__block_invoke;
  block[3] = &unk_27981C9D0;
  block[4] = self;
  v5 = v3;
  v17 = v5;
  dispatch_sync(v4, block);

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10++) cleanup];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __38__AXLTAudioOutManager__cleanupAllPids__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) processToTranscriberMap];
  v9 = [v2 keyEnumerator];

  v3 = [v9 nextObject];
  if (v3)
  {
    v4 = v3;
    do
    {
      v5 = [*(a1 + 32) processToTranscriberMap];
      v6 = [v5 objectForKey:v4];

      if (v6)
      {
        [*(a1 + 40) addObject:v6];
      }

      v7 = [v9 nextObject];

      v4 = v7;
    }

    while (v7);
  }

  v8 = [*(a1 + 32) processToTranscriberMap];
  [v8 removeAllObjects];
}

- (void)registerForAVSystemControllerNotifications
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)unregisterForAVSystemControllerNotifications
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v3 = AXLogLiveTranscription();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [AXLTAudioOutManager registerForAVSystemControllerNotifications];
    }
  }

  v4 = AXLogLiveTranscription();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_256022000, v4, OS_LOG_TYPE_INFO, "AudioManager: Unsubscribing on Audio Server events", v7, 2u);
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self name:*MEMORY[0x277D26D40] object:0];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:self name:*MEMORY[0x277D26DA8] object:0];

  [(AXLTAudioOutManager *)self _cleanupAllPids];
  [(AXLTAudioOutManager *)self setSubscribed:0];
}

- (void)_someSessionIsPlayingDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = AXLogLiveTranscription();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_256022000, v5, OS_LOG_TYPE_INFO, "AudioManager: Audio Sessions were updated", buf, 2u);
  }

  v6 = [v4 userInfo];

  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D26DB8]];

  if (v7)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__AXLTAudioOutManager__someSessionIsPlayingDidChangeNotification___block_invoke;
    v8[3] = &unk_27981C9D0;
    v8[4] = self;
    v9 = v7;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }
}

- (void)_setupAVSystemNotificationSystem
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D26E58] sharedAVSystemController];
  [(AXLTAudioOutManager *)self setAvSystemController:v3];

  v4 = *MEMORY[0x277D26DA8];
  v14[0] = *MEMORY[0x277D26D40];
  v14[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v6 = [(AXLTAudioOutManager *)self avSystemController];
  v7 = *MEMORY[0x277D26DD0];
  v13 = 0;
  v8 = [v6 setAttribute:v5 forKey:v7 error:&v13];

  v9 = AXLogLiveTranscription();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_256022000, v10, OS_LOG_TYPE_INFO, "AudioManager: Registered for Audio server events", v12, 2u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [AXLTAudioOutManager _setupAVSystemNotificationSystem];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_avSessionMediaServicesResetNotification:(id)a3
{
  v4 = AXLogLiveTranscription();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_256022000, v4, OS_LOG_TYPE_DEFAULT, "AudioManager: Audio server connection reset", v5, 2u);
  }

  [(AXLTAudioOutManager *)self _setupAVSystemNotificationSystem];
}

- (void)updateAudioSessionsInfoFromSessionsArray:(id)a3
{
  v70 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = AXLogLiveTranscription();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
    *buf = 138412290;
    *v68 = v6;
    _os_log_impl(&dword_256022000, v5, OS_LOG_TYPE_DEFAULT, "AudioManager: Processing Audio Sessions, active sessions number %@", buf, 0xCu);
  }

  if ([(AXLTAudioOutManager *)self subscribed])
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v8 = AXLogLiveTranscription();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(AXLTAudioOutManager *)v4 updateAudioSessionsInfoFromSessionsArray:v8];
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v50 = v4;
    obj = v4;
    v9 = [obj countByEnumeratingWithState:&v61 objects:v69 count:16];
    v51 = self;
    if (!v9)
    {
      v54 = 0;
      goto LABEL_39;
    }

    v10 = v9;
    v54 = 0;
    v11 = MEMORY[0x277D26C88];
    v12 = *v62;
    v55 = v7;
    v52 = *v62;
    while (1)
    {
      v13 = 0;
      v53 = v10;
      do
      {
        if (*v62 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [*(*(&v61 + 1) + 8 * v13) objectForKeyedSubscript:*v11];
        v15 = [v14 intValue];
        if (v15)
        {
          v16 = v15;
          if (![(AXLTAudioOutManager *)self isTranscribingForPID:v15])
          {
            v17 = [(AXLTAudioOutManager *)self appInfoFromPid:v16];
            v18 = [v17 objectForKeyedSubscript:@"AppIDKey"];
            v19 = [v17 objectForKeyedSubscript:@"AppNameKey"];
            v20 = AXLogLiveTranscription();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              v35 = [v17 description];
              *buf = 67109378;
              *v68 = v16;
              *&v68[4] = 2112;
              *&v68[6] = v35;
              _os_log_debug_impl(&dword_256022000, v20, OS_LOG_TYPE_DEBUG, "AudioManager Sessions: audio is from app: %d, %@", buf, 0x12u);
            }

            v21 = [AXLTAudioOutManager isExcludedAppID:v18];
            v22 = AXLogLiveTranscription();
            v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
            if (v21)
            {
              if (v23)
              {
                v24 = [MEMORY[0x277CCABB0] numberWithInt:v16];
                *buf = 138412546;
                *v68 = v19;
                *&v68[8] = 2112;
                *&v68[10] = v24;
                _os_log_impl(&dword_256022000, v22, OS_LOG_TYPE_DEFAULT, "AudioManager Sessions: Ignore starting transcription for excluded app: %@, pid: %@", buf, 0x16u);
              }

              goto LABEL_30;
            }

            if (v23)
            {
              v25 = [v17 objectForKeyedSubscript:@"AppNameKey"];
              v26 = [MEMORY[0x277CCABB0] numberWithInt:v16];
              *buf = 138412546;
              *v68 = v25;
              *&v68[8] = 2112;
              *&v68[10] = v26;
              _os_log_impl(&dword_256022000, v22, OS_LOG_TYPE_DEFAULT, "AudioManager Sessions: Starting transcription for app: %@, pid: %@", buf, 0x16u);

              self = v51;
            }

            v27 = [(AXLTAudioOutManager *)self locale];
            v28 = self;
            v29 = v27;
            v58 = v54;
            v30 = [(AXLTAudioOutManager *)v28 _startTranscriptionForPID:v16 appID:v18 appName:v19 locale:v27 error:&v58];
            v31 = v58;

            if (v30)
            {
              [v55 setObject:@"playing" forKeyedSubscript:v14];
              v22 = AXLogLiveTranscription();
              v32 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
              v11 = MEMORY[0x277D26C88];
              if (v32)
              {
                v33 = [MEMORY[0x277CCABB0] numberWithInt:v16];
                *buf = 138412546;
                *v68 = v19;
                *&v68[8] = 2112;
                *&v68[10] = v33;
                _os_log_impl(&dword_256022000, v22, OS_LOG_TYPE_DEFAULT, "AudioManager Sessions: Successfully started transcription for app: %@, pid: %@", buf, 0x16u);
                goto LABEL_27;
              }
            }

            else
            {
              v22 = AXLogLiveTranscription();
              v34 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
              v11 = MEMORY[0x277D26C88];
              if (v34)
              {
                v33 = [MEMORY[0x277CCABB0] numberWithInt:v16];
                *buf = 138412546;
                *v68 = v19;
                *&v68[8] = 2112;
                *&v68[10] = v33;
                _os_log_error_impl(&dword_256022000, v22, OS_LOG_TYPE_ERROR, "AudioManager Sessions: Failed to start transcription for app: %@, pid: %@", buf, 0x16u);
LABEL_27:
              }
            }

            v54 = v31;
            self = v51;
LABEL_30:
            v10 = v53;

            v7 = v55;
            v12 = v52;
            goto LABEL_31;
          }

          [v7 setObject:@"playing" forKeyedSubscript:v14];
          v17 = AXLogLiveTranscription();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109120;
            *v68 = v16;
            _os_log_debug_impl(&dword_256022000, v17, OS_LOG_TYPE_DEBUG, "AudioManager Sessions: Skip starting transcription pid: %d", buf, 8u);
          }
        }

        else
        {
          v17 = AXLogLiveTranscription();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [(AXLTAudioOutManager *)&v59 updateAudioSessionsInfoFromSessionsArray:v60, v17];
          }
        }

LABEL_31:

        ++v13;
      }

      while (v10 != v13);
      v36 = [obj countByEnumeratingWithState:&v61 objects:v69 count:16];
      v10 = v36;
      if (!v36)
      {
LABEL_39:

        v37 = [(AXLTAudioOutManager *)self processToTranscriberMap];
        v38 = [v37 copy];

        v39 = [v38 keyEnumerator];
        v40 = [v39 nextObject];
        if (v40)
        {
          v41 = v40;
          do
          {
            v42 = [v7 objectForKeyedSubscript:v41];

            if (v42)
            {
              v43 = v54;
            }

            else
            {
              v44 = AXLogLiveTranscription();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *v68 = v41;
                _os_log_impl(&dword_256022000, v44, OS_LOG_TYPE_DEFAULT, "AudioManager Sessions: Stopping transcription for pid: %@", buf, 0xCu);
              }

              v45 = [v41 intValue];
              v57 = v54;
              v46 = [(AXLTAudioOutManager *)v51 _stopTranscriptionForPID:v45 error:&v57];
              v43 = v57;

              if (!v46)
              {
                v47 = AXLogLiveTranscription();
                if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                {
                  [(AXLTAudioOutManager *)v65 updateAudioSessionsInfoFromSessionsArray:v41, v66, v47];
                }
              }
            }

            v48 = [v39 nextObject];

            v41 = v48;
            v54 = v43;
          }

          while (v48);
        }

        else
        {
          v43 = v54;
        }

        v4 = v50;
        goto LABEL_53;
      }
    }
  }

  v7 = AXLogLiveTranscription();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_256022000, v7, OS_LOG_TYPE_DEFAULT, "AudioManager: Not subscribed to audio session updates, skip", buf, 2u);
  }

LABEL_53:

  v49 = *MEMORY[0x277D85DE8];
}

- (AXLTTranscriberDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)updateAudioSessionsInfoFromSessionsArray:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_256022000, a2, OS_LOG_TYPE_DEBUG, "AudioManager Sessions: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)updateAudioSessionsInfoFromSessionsArray:(os_log_t)log .cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_256022000, log, OS_LOG_TYPE_ERROR, "AudioManager Sessions: Skipping not valid pid", buf, 2u);
}

- (void)updateAudioSessionsInfoFromSessionsArray:(_DWORD *)a3 .cold.3(uint8_t *a1, void *a2, _DWORD *a3, NSObject *a4)
{
  v7 = [a2 intValue];
  *a1 = 67109120;
  *a3 = v7;
  _os_log_error_impl(&dword_256022000, a4, OS_LOG_TYPE_ERROR, "AudioManager Sessions: Failed to stop transcription for pid: %d\n", a1, 8u);
}

- (void)appInfoFromPid:(NSObject *)a3 .cold.1(void *a1, int a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a1 description];
  v7[0] = 67109378;
  v7[1] = a2;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_256022000, a3, OS_LOG_TYPE_ERROR, "AudioManager: Couldn't get process handle for pid: %d, error: %@", v7, 0x12u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)appInfoFromPid:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_256022000, a2, OS_LOG_TYPE_ERROR, "AudioManager: Couldn't read appName from record, error = %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)appInfoFromPid:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

@end