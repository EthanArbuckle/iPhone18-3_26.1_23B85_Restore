@interface CSTUPhoneCallStateMonitor
+ (id)sharedInstance;
- (BOOL)firstPartyCall;
- (CSTUPhoneCallStateMonitor)init;
- (unint64_t)_fetchTUPhoneCallState;
- (unint64_t)phoneCallState;
- (void)_callStatusDidChangeHandler:(id)handler;
- (void)_registerPhoneCallStateChangeNotifier;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
@end

@implementation CSTUPhoneCallStateMonitor

- (unint64_t)_fetchTUPhoneCallState
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (!self->_tuCallCenter)
  {
    v3 = [MEMORY[0x1E69D8A50] callCenterWithQueue:self->_queue];
    tuCallCenter = self->_tuCallCenter;
    self->_tuCallCenter = v3;
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__CSTUPhoneCallStateMonitor__fetchTUPhoneCallState__block_invoke;
  v8[3] = &unk_1E865C880;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(queue, v8);
  v6 = v10[3];
  self->_tuPhoneCallState = v6;
  _Block_object_dispose(&v9, 8);
  return v6;
}

void __51__CSTUPhoneCallStateMonitor__fetchTUPhoneCallState__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 32) currentAudioAndVideoCalls];
  if (![v2 count])
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v21 = "[CSTUPhoneCallStateMonitor _fetchTUPhoneCallState]_block_invoke";
      v22 = 1024;
      v23 = 6;
      _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s TUPhone call - [TUCallStatus: %d]", buf, 0x12u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v16;
    *&v6 = 136315394;
    v14 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v15 + 1) + 8 * v9) status];
        v11 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v14;
          v21 = "[CSTUPhoneCallStateMonitor _fetchTUPhoneCallState]_block_invoke";
          v22 = 1024;
          v23 = v10;
          _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s TUPhone call - [TUCallStatus: %d]", buf, 0x12u);
        }

        switch(v10)
        {
          case 3:
            v12 = 4;
            break;
          case 6:
            v12 = 1;
            break;
          case 4:
            v12 = 2;
            break;
          default:
            if ((v10 - 1) > 1)
            {
              goto LABEL_21;
            }

            v12 = 3;
            break;
        }

        *(*(*(a1 + 40) + 8) + 24) = v12;
LABEL_21:
        if (*(*(*(a1 + 40) + 8) + 24))
        {
          goto LABEL_24;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

LABEL_24:

  v13 = *MEMORY[0x1E69E9840];
}

- (unint64_t)phoneCallState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__CSTUPhoneCallStateMonitor_phoneCallState__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)firstPartyCall
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  if (!self->_tuCallCenter)
  {
    v3 = [MEMORY[0x1E69D8A50] callCenterWithQueue:self->_queue];
    tuCallCenter = self->_tuCallCenter;
    self->_tuCallCenter = v3;
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__CSTUPhoneCallStateMonitor_firstPartyCall__block_invoke;
  v8[3] = &unk_1E865C880;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(queue, v8);
  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

void __43__CSTUPhoneCallStateMonitor_firstPartyCall__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 32) currentAudioAndVideoCalls];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = v19 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v17;
    *&v4 = 136315394;
    v15 = v4;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v16 + 1) + 8 * i) provider];
        v9 = [v8 identifier];

        v10 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v15;
          v21 = "[CSTUPhoneCallStateMonitor firstPartyCall]_block_invoke";
          v22 = 2112;
          v23 = v9;
          _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s TUPhone Call - [providerIdentifier: %@]", buf, 0x16u);
        }

        if (!v9)
        {
          *(*(*(a1 + 40) + 8) + 24) = 0;
          goto LABEL_18;
        }

        v11 = [*(*(a1 + 32) + 32) providerManager];
        v12 = [v11 providerWithIdentifier:v9];

        if (v12 && ([v12 isSystemProvider] & 1) == 0)
        {
          v13 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v15;
            v21 = "[CSTUPhoneCallStateMonitor firstPartyCall]_block_invoke";
            v22 = 2112;
            v23 = v9;
            _os_log_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_DEFAULT, "%s TUPhone call - identifier is not first party: %@", buf, 0x16u);
          }

          *(*(*(a1 + 40) + 8) + 24) = 0;
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_callStatusDidChangeHandler:(id)handler
{
  handlerCopy = handler;
  name = [handlerCopy name];
  if ([name isEqualToString:*MEMORY[0x1E69D8E10]])
  {

LABEL_4:
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__CSTUPhoneCallStateMonitor__callStatusDidChangeHandler___block_invoke;
    v8[3] = &unk_1E865CB20;
    v8[4] = self;
    [(CSEventMonitor *)self enumerateObserversInQueue:v8];
    goto LABEL_5;
  }

  name2 = [handlerCopy name];
  v7 = [name2 isEqualToString:*MEMORY[0x1E69D8E60]];

  if (v7)
  {
    goto LABEL_4;
  }

LABEL_5:
}

void __57__CSTUPhoneCallStateMonitor__callStatusDidChangeHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) notifyObserver:v3];
  if (objc_opt_respondsToSelector())
  {
    [v3 CSPhoneCallStateMonitor:*(a1 + 32) didRecievePhoneCallStateChange:{objc_msgSend(*(a1 + 32), "_fetchTUPhoneCallState")}];
  }
}

- (void)_registerPhoneCallStateChangeNotifier
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (self->_tuCallCenter)
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[CSTUPhoneCallStateMonitor _registerPhoneCallStateChangeNotifier]";
      _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s register tuCallCenter notification call backs", &v7, 0xCu);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__callStatusDidChangeHandler_ name:*MEMORY[0x1E69D8E10] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__callStatusDidChangeHandler_ name:*MEMORY[0x1E69D8E60] object:0];

    [(CSPhoneCallStateMonitor *)self registerDropInCallNotificationIfNeeded];
  }

  else if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315138;
    v8 = "[CSTUPhoneCallStateMonitor _registerPhoneCallStateChangeNotifier]";
    _os_log_error_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_ERROR, "%s No tuCallCenter to register", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_stopMonitoring
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69D8E10] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x1E69D8E60] object:0];

  self->_tuPhoneCallState = 0;
  tuCallCenter = self->_tuCallCenter;
  self->_tuCallCenter = 0;

  [(CSPhoneCallStateMonitor *)self deregisterDropInCallNotification];
}

- (void)_startMonitoringWithQueue:(id)queue
{
  v4 = [MEMORY[0x1E69D8A50] callCenterWithQueue:self->_queue];
  tuCallCenter = self->_tuCallCenter;
  self->_tuCallCenter = v4;

  self->_tuPhoneCallState = [(CSTUPhoneCallStateMonitor *)self _fetchTUPhoneCallState];

  [(CSTUPhoneCallStateMonitor *)self _registerPhoneCallStateChangeNotifier];
}

- (CSTUPhoneCallStateMonitor)init
{
  if (+[CSUtils isDarwinOS])
  {
    selfCopy = 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CSTUPhoneCallStateMonitor;
    v4 = [(CSEventMonitor *)&v8 init];
    if (v4)
    {
      v5 = dispatch_queue_create("CSTUPhoneCallStateMonitor queue", 0);
      queue = v4->_queue;
      v4->_queue = v5;
    }

    self = v4;
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_8993 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_8993, &__block_literal_global_8994);
  }

  v3 = sharedInstance_sharedInstance_8995;

  return v3;
}

uint64_t __43__CSTUPhoneCallStateMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CSTUPhoneCallStateMonitor);
  v1 = sharedInstance_sharedInstance_8995;
  sharedInstance_sharedInstance_8995 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end