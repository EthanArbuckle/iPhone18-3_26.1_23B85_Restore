@interface CSSecureSessionHandler
+ (id)sharedHandler;
+ (id)siriEnablementSessionAssertionUUID;
- (CSSecureSessionHandler)init;
- (void)CSAudioServerCrashMonitorDidReceiveServerCrash:(id)a3;
- (void)CSSiriEnabledMonitor:(id)a3 didReceiveEnabled:(BOOL)a4;
- (void)CSSystemDaemonStateMonitorDidReceiveSysDaemonCrash:(id)a3;
- (void)_activateSecureSessionIfNeeded;
- (void)_deactivateSecureSessionIfNeeded;
- (void)acquireSecureSessionAssertionWithUUID:(id)a3;
- (void)releaseAllSecureSessionAssertions;
- (void)releaseSecureSessionAssertionWithUUID:(id)a3;
- (void)start;
@end

@implementation CSSecureSessionHandler

- (void)CSSystemDaemonStateMonitorDidReceiveSysDaemonCrash:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSSecureSessionHandler CSSystemDaemonStateMonitorDidReceiveSysDaemonCrash:]";
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s releasing All the secureAssertions when system daemon crashes", &v6, 0xCu);
  }

  [(CSSecureSessionHandler *)self releaseAllSecureSessionAssertions];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)CSAudioServerCrashMonitorDidReceiveServerCrash:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSSecureSessionHandler CSAudioServerCrashMonitorDidReceiveServerCrash:]";
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s releasing All the secureAssertions when audio server daemons crash", &v6, 0xCu);
  }

  [(CSSecureSessionHandler *)self releaseAllSecureSessionAssertions];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)CSSiriEnabledMonitor:(id)a3 didReceiveEnabled:(BOOL)a4
{
  v4 = a4;
  v6 = +[CSSecureSessionHandler siriEnablementSessionAssertionUUID];
  if (v4)
  {
    [(CSSecureSessionHandler *)self acquireSecureSessionAssertionWithUUID:v6];
  }

  else
  {
    [(CSSecureSessionHandler *)self releaseSecureSessionAssertionWithUUID:v6];
  }
}

- (void)_deactivateSecureSessionIfNeeded
{
  v17 = *MEMORY[0x1E69E9840];
  if (![(NSMutableSet *)self->_assertionSet count]&& +[CSUtils supportsSystemDaemon])
  {
    v2 = +[CSLaunchAgentXPCClient sharedClient];
    v10 = 0;
    v3 = [v2 activateSecureSession:0 error:&v10];
    v4 = v10;

    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      if (v3)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v7 = v5;
      v8 = [v4 description];
      *buf = 136315650;
      v12 = "[CSSecureSessionHandler _deactivateSecureSessionIfNeeded]";
      v13 = 2112;
      v14 = v6;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Successfully deactivated secure session? %@, err: %@", buf, 0x20u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_activateSecureSessionIfNeeded
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(NSMutableSet *)self->_assertionSet count]&& +[CSUtils supportsSystemDaemon])
  {
    v2 = +[CSLaunchAgentXPCClient sharedClient];
    v10 = 0;
    v3 = [v2 activateSecureSession:1 error:&v10];
    v4 = v10;

    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      if (v3)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v7 = v5;
      v8 = [v4 description];
      *buf = 136315650;
      v12 = "[CSSecureSessionHandler _activateSecureSessionIfNeeded]";
      v13 = 2112;
      v14 = v6;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Successfully activated secure session? %@, err: %@", buf, 0x20u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)releaseAllSecureSessionAssertions
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__CSSecureSessionHandler_releaseAllSecureSessionAssertions__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __59__CSSecureSessionHandler_releaseAllSecureSessionAssertions__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeAllObjects];
  v2 = *(a1 + 32);

  return [v2 _deactivateSecureSessionIfNeeded];
}

- (void)releaseSecureSessionAssertionWithUUID:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__CSSecureSessionHandler_releaseSecureSessionAssertionWithUUID___block_invoke;
  v7[3] = &unk_1E865C970;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __64__CSSecureSessionHandler_releaseSecureSessionAssertionWithUUID___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    v12 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v16 = 136315138;
    v17 = "[CSSecureSessionHandler releaseSecureSessionAssertionWithUUID:]_block_invoke";
    v13 = "%s UUID is nil";
    v14 = v12;
LABEL_12:
    _os_log_error_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_ERROR, v13, &v16, 0xCu);
    goto LABEL_10;
  }

  v2 = +[CSUserSessionActiveMonitor sharedInstance];
  v3 = [v2 isUserActive];

  v4 = CSLogContextFacilityCoreSpeech;
  if ((v3 & 1) == 0)
  {
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v16 = 136315138;
    v17 = "[CSSecureSessionHandler releaseSecureSessionAssertionWithUUID:]_block_invoke";
    v13 = "%s Cannot acquire secure session assertion when current user is inactive";
    v14 = v4;
    goto LABEL_12;
  }

  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 UUIDString];
    v16 = 136315394;
    v17 = "[CSSecureSessionHandler releaseSecureSessionAssertionWithUUID:]_block_invoke";
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Release Secure Session Assertion with UUID: %@", &v16, 0x16u);
  }

  v8 = *(*(a1 + 40) + 16);
  v9 = [*(a1 + 32) UUIDString];
  LODWORD(v8) = [v8 containsObject:v9];

  if (v8)
  {
    v10 = *(*(a1 + 40) + 16);
    v11 = [*(a1 + 32) UUIDString];
    [v10 removeObject:v11];

    [*(a1 + 40) _deactivateSecureSessionIfNeeded];
  }

LABEL_10:
  v15 = *MEMORY[0x1E69E9840];
}

- (void)acquireSecureSessionAssertionWithUUID:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__CSSecureSessionHandler_acquireSecureSessionAssertionWithUUID___block_invoke;
  v7[3] = &unk_1E865C970;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __64__CSSecureSessionHandler_acquireSecureSessionAssertionWithUUID___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v14 = 136315138;
    v15 = "[CSSecureSessionHandler acquireSecureSessionAssertionWithUUID:]_block_invoke";
    v11 = "%s UUID is nil";
    v12 = v10;
LABEL_11:
    _os_log_error_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_ERROR, v11, &v14, 0xCu);
    goto LABEL_9;
  }

  v2 = +[CSUserSessionActiveMonitor sharedInstance];
  v3 = [v2 isUserActive];

  v4 = CSLogContextFacilityCoreSpeech;
  if ((v3 & 1) == 0)
  {
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v14 = 136315138;
    v15 = "[CSSecureSessionHandler acquireSecureSessionAssertionWithUUID:]_block_invoke";
    v11 = "%s Cannot acquire secure session assertion when current user is inactive";
    v12 = v4;
    goto LABEL_11;
  }

  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 UUIDString];
    v14 = 136315394;
    v15 = "[CSSecureSessionHandler acquireSecureSessionAssertionWithUUID:]_block_invoke";
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Acquire Secure Session Assertion with UUID: %@", &v14, 0x16u);
  }

  v8 = *(*(a1 + 40) + 16);
  v9 = [*(a1 + 32) UUIDString];
  [v8 addObject:v9];

  [*(a1 + 40) _activateSecureSessionIfNeeded];
LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
}

- (void)start
{
  v3 = +[CSSiriEnabledMonitor sharedInstance];
  [v3 addObserver:self];

  v4 = +[CSUserSessionActiveMonitor sharedInstance];
  [v4 addObserver:self];

  v5 = +[CSAudioServerCrashMonitor sharedInstance];
  [v5 addObserver:self];

  v6 = +[CSSystemDaemonStateMonitor sharedInstance];
  [v6 addObserver:self];
}

- (CSSecureSessionHandler)init
{
  v8.receiver = self;
  v8.super_class = CSSecureSessionHandler;
  v2 = [(CSSecureSessionHandler *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("Secure Session Handler Queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    assertionSet = v2->_assertionSet;
    v2->_assertionSet = v5;
  }

  return v2;
}

+ (id)siriEnablementSessionAssertionUUID
{
  if (siriEnablementSessionAssertionUUID_onceToken != -1)
  {
    dispatch_once(&siriEnablementSessionAssertionUUID_onceToken, &__block_literal_global_26);
  }

  v3 = siriEnablementSessionAssertionUUID_siriEnablementSessionAssertionUUID;

  return v3;
}

uint64_t __60__CSSecureSessionHandler_siriEnablementSessionAssertionUUID__block_invoke()
{
  v0 = [MEMORY[0x1E696AFB0] UUID];
  v1 = siriEnablementSessionAssertionUUID_siriEnablementSessionAssertionUUID;
  siriEnablementSessionAssertionUUID_siriEnablementSessionAssertionUUID = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)sharedHandler
{
  if (sharedHandler_onceToken != -1)
  {
    dispatch_once(&sharedHandler_onceToken, &__block_literal_global_10283);
  }

  v3 = sharedHandler_sharedHandler;

  return v3;
}

uint64_t __39__CSSecureSessionHandler_sharedHandler__block_invoke()
{
  result = +[CSUtils isExclaveHardware];
  if (result)
  {
    v1 = objc_alloc_init(CSSecureSessionHandler);
    v2 = sharedHandler_sharedHandler;
    sharedHandler_sharedHandler = v1;

    return MEMORY[0x1EEE66BB8](v1, v2);
  }

  return result;
}

@end