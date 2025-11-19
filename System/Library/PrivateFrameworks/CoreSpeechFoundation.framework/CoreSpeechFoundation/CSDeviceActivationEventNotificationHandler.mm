@interface CSDeviceActivationEventNotificationHandler
+ (id)sharedInstance;
- (BOOL)_hasPendingActivationForType:(unint64_t)a3;
- (BOOL)_isVoiceTriggerEvent:(id)a3;
- (CSDeviceActivationEventNotificationHandler)init;
- (void)_notifyActivationEvent:(id)a3 completion:(id)a4;
- (void)_startMonitoring;
- (void)_stopMonitoring;
- (void)dealloc;
- (void)notifyActivationEvent:(id)a3 completion:(id)a4;
- (void)setDelegate:(id)a3 forType:(unint64_t)a4;
- (void)start;
- (void)stop;
@end

@implementation CSDeviceActivationEventNotificationHandler

- (BOOL)_hasPendingActivationForType:(unint64_t)a3
{
  pendingActivationEvent = self->_pendingActivationEvent;
  if (pendingActivationEvent)
  {
    if ([(CSDeviceActivationEvent *)pendingActivationEvent type]== a3)
    {
      v5 = mach_absolute_time();
      v6 = v5 - [(CSDeviceActivationEvent *)self->_pendingActivationEvent hosttime];
      LODWORD(v7) = 5.0;
      LOBYTE(pendingActivationEvent) = v6 <= [CSFTimeUtils secondsToHostTime:v7];
    }

    else
    {
      LOBYTE(pendingActivationEvent) = 0;
    }
  }

  return pendingActivationEvent;
}

- (void)_stopMonitoring
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSDeviceActivationEventNotificationHandler _stopMonitoring]";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : AOP First Pass trigger", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)_startMonitoring
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSDeviceActivationEventNotificationHandler _startMonitoring]";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : AOP First Pass trigger", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isVoiceTriggerEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 type];
  v5 = v4 == 1;
  if ([v3 type] == 2)
  {
    v6 = [v3 deviceId];

    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = v4 == 1;
    }

    v5 = v7;
  }

  if ([v3 type] == 6)
  {
    v8 = [v3 deviceId];
    v9 = v8 != 0;
  }

  else
  {
    v9 = 0;
  }

  if ([v3 type] == 8)
  {
    v10 = [v3 deviceId];
    v11 = v10 != 0;

    v9 |= v11;
  }

  return (v9 | v5) & 1;
}

- (void)_notifyActivationEvent:(id)a3 completion:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([(CSDeviceActivationEventNotificationHandler *)self _isVoiceTriggerEvent:v7])
  {
    delegates = self->_delegates;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v7, "type")}];
    v11 = [(NSMapTable *)delegates objectForKey:v10];

    if (!v11)
    {
      pendingActivationEvent = self->_pendingActivationEvent;
      if (pendingActivationEvent)
      {
        v13 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v13;
          v15 = [(CSDeviceActivationEvent *)pendingActivationEvent localizedDescription];
          *buf = 136315394;
          v34 = "[CSDeviceActivationEventNotificationHandler _notifyActivationEvent:completion:]";
          v35 = 2114;
          v36 = v15;
          _os_log_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_DEFAULT, "%s Returning error for already existing pending activation event : %{public}@", buf, 0x16u);
        }

        pendingCompletion = self->_pendingCompletion;
        if (pendingCompletion)
        {
          v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:601 userInfo:0];
          pendingCompletion[2](pendingCompletion, 0, v17);

          v18 = self->_pendingCompletion;
          self->_pendingCompletion = 0;
        }
      }

      v19 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v34 = "[CSDeviceActivationEventNotificationHandler _notifyActivationEvent:completion:]";
        _os_log_impl(&dword_1DDA4B000, v19, OS_LOG_TYPE_DEFAULT, "%s No delegate registered : Postpone activation event handling until we have delegate registered", buf, 0xCu);
      }

      objc_storeStrong(&self->_pendingActivationEvent, a3);
      v20 = MEMORY[0x1E12BA300](v8);
      v21 = self->_pendingCompletion;
      self->_pendingCompletion = v20;

      v22 = [(CSDeviceActivationEvent *)self->_pendingActivationEvent UUID];
      v23 = dispatch_time(0, 5000000000);
      queue = self->_queue;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __80__CSDeviceActivationEventNotificationHandler__notifyActivationEvent_completion___block_invoke;
      v31[3] = &unk_1E865C970;
      v31[4] = self;
      v32 = v22;
      v25 = v22;
      dispatch_after(v23, queue, v31);

      goto LABEL_14;
    }

LABEL_13:
    [v11 activationEventNotificationHandler:self event:v7 completion:v8];
LABEL_14:

    goto LABEL_15;
  }

  if ([v7 type] == 3)
  {
    v26 = self->_delegates;
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v7, "type")}];
    v11 = [(NSMapTable *)v26 objectForKey:v27];

    goto LABEL_13;
  }

  if ([v7 type] == 7)
  {
    v29 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v34 = "[CSDeviceActivationEventNotificationHandler _notifyActivationEvent:completion:]";
      _os_log_impl(&dword_1DDA4B000, v29, OS_LOG_TYPE_DEFAULT, "%s corespeechd received mediaserverd launched event", buf, 0xCu);
    }

    if (v8)
    {
      v8[2](v8, 1, 0);
    }
  }

  else if (v8)
  {
    v30 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:114 userInfo:0];
    (v8)[2](v8, 0, v30);
  }

LABEL_15:

  v28 = *MEMORY[0x1E69E9840];
}

void __80__CSDeviceActivationEventNotificationHandler__notifyActivationEvent_completion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 24) UUID];
  v3 = [v2 isEqualToString:*(a1 + 40)];

  v4 = CSLogContextFacilityCoreSpeech;
  v5 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 40);
      v14 = 136315394;
      v15 = "[CSDeviceActivationEventNotificationHandler _notifyActivationEvent:completion:]_block_invoke";
      v16 = 2114;
      v17 = v6;
      _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Pending Timeout fired for %{public}@ returning error for timeout", &v14, 0x16u);
    }

    v7 = *(a1 + 32);
    v8 = *(v7 + 32);
    if (v8)
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:602 userInfo:0];
      (*(v8 + 16))(v8, 0, v9);

      v10 = *(a1 + 32);
      v11 = *(v10 + 32);
      *(v10 + 32) = 0;

      v7 = *(a1 + 32);
    }

    v12 = *(v7 + 24);
    *(v7 + 24) = 0;
  }

  else if (v5)
  {
    v14 = 136315138;
    v15 = "[CSDeviceActivationEventNotificationHandler _notifyActivationEvent:completion:]_block_invoke";
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s There is no pending activation event to timeout", &v14, 0xCu);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)notifyActivationEvent:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__CSDeviceActivationEventNotificationHandler_notifyActivationEvent_completion___block_invoke;
  block[3] = &unk_1E865C678;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

uint64_t __79__CSDeviceActivationEventNotificationHandler_notifyActivationEvent_completion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 localizedDescription];
    v8 = 136315394;
    v9 = "[CSDeviceActivationEventNotificationHandler notifyActivationEvent:completion:]_block_invoke";
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Received Activation Event in CoreSpeechDaemon: %{public}@", &v8, 0x16u);
  }

  result = [*(a1 + 40) _notifyActivationEvent:*(a1 + 32) completion:*(a1 + 48)];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setDelegate:(id)a3 forType:(unint64_t)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__CSDeviceActivationEventNotificationHandler_setDelegate_forType___block_invoke;
  block[3] = &unk_1E865C350;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(queue, block);
}

void __66__CSDeviceActivationEventNotificationHandler_setDelegate_forType___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 16);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 48)];
  [v3 setObject:v2 forKey:v4];

  if ([*(a1 + 32) _hasPendingActivationForType:*(a1 + 48)])
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1 + 32) + 24);
      v7 = v5;
      v8 = [v6 localizedDescription];
      v14 = 136315394;
      v15 = "[CSDeviceActivationEventNotificationHandler setDelegate:forType:]_block_invoke";
      v16 = 2114;
      v17 = v8;
      _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Found pending activation : %{public}@, handle pending activation immediately", &v14, 0x16u);
    }

    [*(a1 + 40) activationEventNotificationHandler:*(a1 + 32) event:*(*(a1 + 32) + 24) completion:*(*(a1 + 32) + 32)];
    v9 = *(a1 + 32);
    v10 = *(v9 + 24);
    *(v9 + 24) = 0;

    v11 = *(a1 + 32);
    v12 = *(v11 + 32);
    *(v11 + 32) = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)stop
{
  if (CSHasAOP_onceToken != -1)
  {
    dispatch_once(&CSHasAOP_onceToken, &__block_literal_global_38);
  }

  if (CSHasAOP_hasAOP == 1)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__CSDeviceActivationEventNotificationHandler_stop__block_invoke;
    block[3] = &unk_1E865CB68;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)start
{
  if (CSHasAOP_onceToken != -1)
  {
    dispatch_once(&CSHasAOP_onceToken, &__block_literal_global_38);
  }

  if (CSHasAOP_hasAOP == 1)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__CSDeviceActivationEventNotificationHandler_start__block_invoke;
    block[3] = &unk_1E865CB68;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)dealloc
{
  [(CSDeviceActivationEventNotificationHandler *)self _stopMonitoring];
  v3.receiver = self;
  v3.super_class = CSDeviceActivationEventNotificationHandler;
  [(CSDeviceActivationEventNotificationHandler *)&v3 dealloc];
}

- (CSDeviceActivationEventNotificationHandler)init
{
  v10.receiver = self;
  v10.super_class = CSDeviceActivationEventNotificationHandler;
  v2 = [(CSDeviceActivationEventNotificationHandler *)&v10 init];
  if (v2)
  {
    v3 = [CSUtils getSerialQueue:@"CSDeviceActivationEventNotificationHandler Queue" qualityOfService:33];
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    delegates = v2->_delegates;
    v2->_delegates = v5;

    pendingActivationEvent = v2->_pendingActivationEvent;
    v2->_pendingActivationEvent = 0;

    pendingCompletion = v2->_pendingCompletion;
    v2->_pendingCompletion = 0;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_457 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_457, &__block_literal_global_458);
  }

  v3 = sharedInstance_sharedInstance_459;

  return v3;
}

uint64_t __60__CSDeviceActivationEventNotificationHandler_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_459 = objc_alloc_init(CSDeviceActivationEventNotificationHandler);

  return MEMORY[0x1EEE66BB8]();
}

@end