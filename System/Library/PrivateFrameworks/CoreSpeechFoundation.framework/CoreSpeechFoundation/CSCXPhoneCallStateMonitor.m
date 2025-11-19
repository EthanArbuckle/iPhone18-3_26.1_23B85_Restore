@interface CSCXPhoneCallStateMonitor
+ (id)sharedInstance;
- (BOOL)firstPartyCall;
- (CSCXPhoneCallStateMonitor)init;
- (unint64_t)phoneCallState;
- (void)_startMonitoringWithQueue:(id)a3;
- (void)_stopMonitoring;
- (void)callObserver:(id)a3 callChanged:(id)a4;
@end

@implementation CSCXPhoneCallStateMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3882 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_3882, &__block_literal_global_3883);
  }

  v3 = sharedInstance_sharedInstance_3884;

  return v3;
}

- (unint64_t)phoneCallState
{
  v34 = *MEMORY[0x1E69E9840];
  [(CXCallObserver *)self->_callObserver calls];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v22 = 0u;
  v2 = [obj countByEnumeratingWithState:&v19 objects:v33 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v20;
    *&v3 = 136316162;
    v17 = v3;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v8 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v8;
          v10 = [v7 hasConnected];
          v11 = [v7 isOnHold];
          v12 = [v7 hasEnded];
          v13 = [v7 isOutgoing];
          *buf = v17;
          v24 = "[CSCXPhoneCallStateMonitor phoneCallState]";
          v25 = 1024;
          v26 = v10;
          v27 = 1024;
          v28 = v11;
          v29 = 1024;
          v30 = v12;
          v31 = 1024;
          v32 = v13;
          _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s Call : [connected:%d] [onhold:%d] [hasEnd:%d] [isOutputgoing:%d]", buf, 0x24u);
        }

        if ([v7 hasEnded])
        {
          v14 = 1;
          goto LABEL_23;
        }

        if ([v7 isOutgoing] && !objc_msgSend(v7, "hasConnected"))
        {
          v14 = 4;
          goto LABEL_23;
        }

        if (([v7 hasConnected] & 1) == 0 && (objc_msgSend(v7, "hasEnded") & 1) == 0 && (objc_msgSend(v7, "isOnHold") & 1) == 0 && !objc_msgSend(v7, "isOutgoing"))
        {
          v14 = 2;
          goto LABEL_23;
        }

        if ([v7 hasConnected])
        {
          v14 = 3;
          goto LABEL_23;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v19 objects:v33 count:16];
      v14 = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_23:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)firstPartyCall
{
  v28 = *MEMORY[0x1E69E9840];
  [(CXCallObserver *)self->_callObserver calls];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v22 = 0u;
  v3 = [obj countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    v6 = 1;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = [v8 providerIdentifier];
        v10 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v24 = "[CSCXPhoneCallStateMonitor firstPartyCall]";
          v25 = 2112;
          v26 = v9;
          _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s Call : [providerIdentifier: %@]", buf, 0x16u);
        }

        if (!v9)
        {
          v6 = 0;
          goto LABEL_18;
        }

        v11 = [(TUCallProviderManager *)self->_tuCallProviderManager providerWithIdentifier:v9];
        v12 = v11;
        if (v11)
        {
          if (([v11 isSystemProvider] & 1) == 0)
          {
            v13 = CSLogContextFacilityCoreSpeech;
            v6 = 0;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
            {
              v14 = v13;
              v15 = [v8 providerIdentifier];
              *buf = 136315394;
              v24 = "[CSCXPhoneCallStateMonitor firstPartyCall]";
              v25 = 2112;
              v26 = v15;
              _os_log_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_DEFAULT, "%s Call identifier is not first party: %@", buf, 0x16u);

              v6 = 0;
            }
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 1;
  }

LABEL_18:

  v16 = *MEMORY[0x1E69E9840];
  return v6 & 1;
}

- (void)callObserver:(id)a3 callChanged:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = a4;
    v9 = [v8 hasConnected];
    v10 = [v8 isOnHold];
    v11 = [v8 hasEnded];
    v12 = [v8 isOutgoing];

    *buf = 136316162;
    v16 = "[CSCXPhoneCallStateMonitor callObserver:callChanged:]";
    v17 = 1024;
    v18 = v9;
    v19 = 1024;
    v20 = v10;
    v21 = 1024;
    v22 = v11;
    v23 = 1024;
    v24 = v12;
    _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Received Call Observer Input : [connected:%d] [onhold:%d] [hasEnd:%d] [isOutputgoing:%d]", buf, 0x24u);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__CSCXPhoneCallStateMonitor_callObserver_callChanged___block_invoke;
  v14[3] = &unk_1E865CB20;
  v14[4] = self;
  [(CSEventMonitor *)self enumerateObserversInQueue:v14];
  v13 = *MEMORY[0x1E69E9840];
}

void __54__CSCXPhoneCallStateMonitor_callObserver_callChanged___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) notifyObserver:v3];
  if (objc_opt_respondsToSelector())
  {
    [v3 CSPhoneCallStateMonitor:*(a1 + 32) didRecievePhoneCallStateChange:{objc_msgSend(*(a1 + 32), "phoneCallState")}];
  }
}

- (void)_stopMonitoring
{
  callObserver = self->_callObserver;
  if (callObserver)
  {
    self->_callObserver = 0;
  }

  tuCallProviderManager = self->_tuCallProviderManager;
  if (tuCallProviderManager)
  {
    self->_tuCallProviderManager = 0;
  }

  [(CSPhoneCallStateMonitor *)self deregisterDropInCallNotification];
}

- (void)_startMonitoringWithQueue:(id)a3
{
  v8 = a3;
  if (!self->_callObserver)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695AF00]);
    callObserver = self->_callObserver;
    self->_callObserver = v4;

    [(CXCallObserver *)self->_callObserver setDelegate:self queue:0];
  }

  if (!self->_tuCallProviderManager)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69D8A88]);
    tuCallProviderManager = self->_tuCallProviderManager;
    self->_tuCallProviderManager = v6;
  }

  [(CSPhoneCallStateMonitor *)self registerDropInCallNotificationIfNeeded];
}

- (CSCXPhoneCallStateMonitor)init
{
  if (+[CSUtils isDarwinOS])
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CSCXPhoneCallStateMonitor;
    self = [(CSEventMonitor *)&v5 init];
    v3 = self;
  }

  return v3;
}

uint64_t __43__CSCXPhoneCallStateMonitor_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_3884 = objc_alloc_init(CSCXPhoneCallStateMonitor);

  return MEMORY[0x1EEE66BB8]();
}

@end