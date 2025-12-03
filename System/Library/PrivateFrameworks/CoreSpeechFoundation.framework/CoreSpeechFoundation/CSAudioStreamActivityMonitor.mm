@interface CSAudioStreamActivityMonitor
+ (id)sharedInstance;
- (BOOL)hasNonVoiceTriggerStreamsOrStreamHoldersActive;
- (CSAudioStreamActivityMonitor)init;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
- (void)notifyActiveStreamsChanged:(id)changed streamHolders:(id)holders streamId:(unint64_t)id;
@end

@implementation CSAudioStreamActivityMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1620 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1620, &__block_literal_global_1621);
  }

  v3 = sharedInstance_monitor;

  return v3;
}

- (BOOL)hasNonVoiceTriggerStreamsOrStreamHoldersActive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __78__CSAudioStreamActivityMonitor_hasNonVoiceTriggerStreamsOrStreamHoldersActive__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)notifyActiveStreamsChanged:(id)changed streamHolders:(id)holders streamId:(unint64_t)id
{
  v52 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  holdersCopy = holders;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v8 = changedCopy;
  v9 = [v8 countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v43;
    v33 = holdersCopy;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v43 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v42 + 1) + 8 * i);
        streamRequest = [v13 streamRequest];
        if ([streamRequest clientIdentity] == 3)
        {
          goto LABEL_14;
        }

        streamRequest2 = [v13 streamRequest];
        if ([streamRequest2 clientIdentity] == 4)
        {

LABEL_14:
LABEL_15:
          v19 = CSLogContextFacilityCoreSpeech;
          v18 = 1;
          holdersCopy = v33;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
          {
            v20 = v19;
            name = [v13 name];
            *buf = 136315394;
            v48 = "[CSAudioStreamActivityMonitor notifyActiveStreamsChanged:streamHolders:streamId:]";
            v49 = 2112;
            v50 = name;
            _os_log_impl(&dword_1DDA4B000, v20, OS_LOG_TYPE_INFO, "%s stream %@ is active", buf, 0x16u);
          }

          goto LABEL_17;
        }

        streamRequest3 = [v13 streamRequest];
        clientIdentity = [streamRequest3 clientIdentity];

        if (clientIdentity == 9)
        {
          goto LABEL_15;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v42 objects:v51 count:16];
      v18 = 0;
      holdersCopy = v33;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v18 = 0;
  }

LABEL_17:

  v41 = 0u;
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  v22 = holdersCopy;
  v23 = [v22 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v39;
    while (2)
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v39 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v38 + 1) + 8 * j);
        if ([v27 clientIdentity] == 6)
        {
          v28 = CSLogContextFacilityCoreSpeech;
          v18 = 1;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
          {
            v29 = v28;
            name2 = [v27 name];
            *buf = 136315394;
            v48 = "[CSAudioStreamActivityMonitor notifyActiveStreamsChanged:streamHolders:streamId:]";
            v49 = 2112;
            v50 = name2;
            _os_log_impl(&dword_1DDA4B000, v29, OS_LOG_TYPE_INFO, "%s streamHolder %@ is active", buf, 0x16u);
          }

          goto LABEL_28;
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }
  }

LABEL_28:

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__CSAudioStreamActivityMonitor_notifyActiveStreamsChanged_streamHolders_streamId___block_invoke;
  block[3] = &unk_1E865B178;
  block[4] = self;
  v37 = v18;
  dispatch_async(queue, block);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __82__CSAudioStreamActivityMonitor_notifyActiveStreamsChanged_streamHolders_streamId___block_invoke_2;
  v35[3] = &unk_1E865CB20;
  v35[4] = self;
  [(CSEventMonitor *)self enumerateObserversInQueue:v35];

  v32 = *MEMORY[0x1E69E9840];
}

- (void)_stopMonitoring
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSAudioStreamActivityMonitor _stopMonitoring]";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : audio stream activity", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)_startMonitoringWithQueue:(id)queue
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSAudioStreamActivityMonitor _startMonitoringWithQueue:]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : audio stream activity", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (CSAudioStreamActivityMonitor)init
{
  v6.receiver = self;
  v6.super_class = CSAudioStreamActivityMonitor;
  v2 = [(CSEventMonitor *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSAudioStreamActivityMonitor", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

uint64_t __46__CSAudioStreamActivityMonitor_sharedInstance__block_invoke()
{
  sharedInstance_monitor = objc_alloc_init(CSAudioStreamActivityMonitor);

  return MEMORY[0x1EEE66BB8]();
}

@end