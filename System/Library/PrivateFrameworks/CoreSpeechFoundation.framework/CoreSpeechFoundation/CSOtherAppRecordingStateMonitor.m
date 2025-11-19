@interface CSOtherAppRecordingStateMonitor
+ (id)sharedInstance;
- (BOOL)_isEntitledWithDecodedAuditToken:(id *)a3;
- (BOOL)isOtherNonEligibleAppRecording;
- (CSOtherAppRecordingStateMonitor)init;
- (void)_startMonitoringWithQueue:(id)a3;
- (void)_startObservingOtherAppRecordingState;
- (void)_startObservingSystemControllerLifecycle;
- (void)_stopMonitoring;
- (void)_systemControllerDied:(id)a3;
- (void)handleOtherAppRecordingStateChange:(id)a3;
@end

@implementation CSOtherAppRecordingStateMonitor

- (BOOL)isOtherNonEligibleAppRecording
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  v3 = [v2 attributeForKey:*MEMORY[0x1E69AEB58]];
  if ([v3 count])
  {
    v25 = v3;
    v26 = v2;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v3;
    v4 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v4)
    {
      v5 = v4;
      v29 = 0;
      v6 = *v32;
      v7 = MEMORY[0x1E69AEB60];
      v8 = MEMORY[0x1E69AEB40];
      while (2)
      {
        v9 = 0;
        v28 = v5;
        do
        {
          if (*v32 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v31 + 1) + 8 * v9);
          v11 = [v10 objectForKey:{*v7, v25, v26}];
          v12 = [v10 objectForKey:*v8];
          v13 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
          {
            buf.val[0] = 136315650;
            *&buf.val[1] = "[CSOtherAppRecordingStateMonitor isOtherNonEligibleAppRecording]";
            LOWORD(buf.val[3]) = 2112;
            *(&buf.val[3] + 2) = v11;
            HIWORD(buf.val[5]) = 2112;
            *&buf.val[6] = v12;
            _os_log_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_DEFAULT, "%s SessionId: %@ AuditToken: %@", &buf, 0x20u);
          }

          if (v12)
          {
            memset(&buf, 0, sizeof(buf));
            [CSUtils getTokenFromDictionary:v10 withTokenKey:*v8];
            atoken = buf;
            v14 = audit_token_to_pid(&atoken);
            if (+[CSUtils processIdentifier]== v14)
            {
              v15 = CSLogContextFacilityCoreSpeech;
              if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
              {
                atoken.val[0] = 136315138;
                *&atoken.val[1] = "[CSOtherAppRecordingStateMonitor isOtherNonEligibleAppRecording]";
                _os_log_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_DEFAULT, "%s Skip checking entitled as it is corespeechd pid", &atoken, 0xCu);
              }
            }

            else
            {
              v17 = v8;
              v18 = v14;
              atoken = buf;
              v19 = [(CSOtherAppRecordingStateMonitor *)self _isEntitledWithDecodedAuditToken:&atoken];
              v20 = CSLogContextFacilityCoreSpeech;
              v21 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
              if (!v19)
              {
                if (v21)
                {
                  atoken.val[0] = 136315394;
                  *&atoken.val[1] = "[CSOtherAppRecordingStateMonitor isOtherNonEligibleAppRecording]";
                  LOWORD(atoken.val[3]) = 2048;
                  *(&atoken.val[3] + 2) = v18;
                  _os_log_impl(&dword_1DDA4B000, v20, OS_LOG_TYPE_DEFAULT, "%s Process %ld is not entitled!", &atoken, 0x16u);
                }

                v29 = 1;
                goto LABEL_28;
              }

              if (v21)
              {
                atoken.val[0] = 136315394;
                *&atoken.val[1] = "[CSOtherAppRecordingStateMonitor isOtherNonEligibleAppRecording]";
                LOWORD(atoken.val[3]) = 2048;
                *(&atoken.val[3] + 2) = v18;
                _os_log_impl(&dword_1DDA4B000, v20, OS_LOG_TYPE_DEFAULT, "%s Process %ld is entitled", &atoken, 0x16u);
              }

              v8 = v17;
              v5 = v28;
            }
          }

          else
          {
            v16 = CSLogContextFacilityCoreSpeech;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
            {
              buf.val[0] = 136315138;
              *&buf.val[1] = "[CSOtherAppRecordingStateMonitor isOtherNonEligibleAppRecording]";
              _os_log_impl(&dword_1DDA4B000, v16, OS_LOG_TYPE_DEFAULT, "%s There was no audit token", &buf, 0xCu);
            }

            v29 = 1;
          }

          ++v9;
        }

        while (v5 != v9);
        v5 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v29 = 0;
    }

LABEL_28:

    v3 = v25;
    v2 = v26;
    v22 = v29;
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v22 & 1;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_15492 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_15492, &__block_literal_global_15493);
  }

  v3 = sharedInstance_sharedInstance_15494;

  return v3;
}

- (BOOL)_isEntitledWithDecodedAuditToken:(id *)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *&a3->var0[4];
  *v13 = *a3->var0;
  *&v13[16] = v4;
  v5 = [CSUtils checkEntitlementForToken:v13 withEntitlement:@"com.apple.corespeech.supportheysiriwhenrecord"];
  v6 = *&a3->var0[4];
  *v13 = *a3->var0;
  *&v13[16] = v6;
  if ([CSUtils checkEntitlementForToken:v13 withEntitlement:@"com.apple.corespeech.supportheysiriwhenrecord.sae"])
  {
    v7 = AFDeviceSupportsSystemAssistantExperience();
  }

  else
  {
    v7 = 0;
  }

  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    *&v13[4] = "[CSOtherAppRecordingStateMonitor _isEntitledWithDecodedAuditToken:]";
    if (v5)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    *v13 = 136315650;
    *&v13[14] = v10;
    *&v13[12] = 2112;
    if (v7)
    {
      v9 = @"YES";
    }

    *&v13[22] = 2112;
    *&v13[24] = v9;
    _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s isGeneralEntilementEntiled: %@, isSAEEntitlementEntiledOnSAEDevice: %@", v13, 0x20u);
  }

  v11 = *MEMORY[0x1E69E9840];
  return (v5 | v7) & 1;
}

- (void)_startObservingSystemControllerLifecycle
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = MEMORY[0x1E69AECB0];
  [v3 removeObserver:self name:*MEMORY[0x1E69AECB0] object:0];

  v9 = [MEMORY[0x1E695DEC8] arrayWithObject:*v4];
  v5 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  [v5 setAttribute:v9 forKey:*MEMORY[0x1E69AECE0] error:0];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = *v4;
  v8 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  [v6 addObserver:self selector:sel__systemControllerDied_ name:v7 object:v8];
}

- (void)_systemControllerDied:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSOtherAppRecordingStateMonitor _systemControllerDied:]";
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s notification = %{public}@", &v7, 0x16u);
  }

  [(CSOtherAppRecordingStateMonitor *)self _startObservingSystemControllerLifecycle];
  [(CSOtherAppRecordingStateMonitor *)self _startObservingOtherAppRecordingState];
  [(CSOtherAppRecordingStateMonitor *)self handleOtherAppRecordingStateChange:0];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_startObservingOtherAppRecordingState
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = MEMORY[0x1E69AEB78];
  [v3 removeObserver:self name:*MEMORY[0x1E69AEB78] object:0];

  v9 = [MEMORY[0x1E695DEC8] arrayWithObject:*v4];
  v5 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  [v5 setAttribute:v9 forKey:*MEMORY[0x1E69AECE0] error:0];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = *v4;
  v8 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  [v6 addObserver:self selector:sel_handleOtherAppRecordingStateChange_ name:v7 object:v8];
}

- (void)handleOtherAppRecordingStateChange:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if ([(CSOtherAppRecordingStateMonitor *)self isOtherNonEligibleAppRecording])
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v8 = "[CSOtherAppRecordingStateMonitor handleOtherAppRecordingStateChange:]";
      _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Another non eligible app is recording", buf, 0xCu);
    }
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__CSOtherAppRecordingStateMonitor_handleOtherAppRecordingStateChange___block_invoke;
  v6[3] = &unk_1E865CB20;
  v6[4] = self;
  [(CSEventMonitor *)self enumerateObserversInQueue:v6];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_stopMonitoring
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];
}

- (void)_startMonitoringWithQueue:(id)a3
{
  [(CSOtherAppRecordingStateMonitor *)self _startObservingSystemControllerLifecycle];

  [(CSOtherAppRecordingStateMonitor *)self _startObservingOtherAppRecordingState];
}

- (CSOtherAppRecordingStateMonitor)init
{
  if (+[CSUtils isDarwinOS])
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CSOtherAppRecordingStateMonitor;
    self = [(CSEventMonitor *)&v5 init];
    v3 = self;
  }

  return v3;
}

uint64_t __49__CSOtherAppRecordingStateMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CSOtherAppRecordingStateMonitor);
  v1 = sharedInstance_sharedInstance_15494;
  sharedInstance_sharedInstance_15494 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end