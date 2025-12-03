@interface CoreSpeechXPCFakeModelMonitor
- (CoreSpeechXPCFakeModelMonitor)init;
- (void)_registerForFakeAssetRollNotification;
- (void)start;
- (void)stop;
@end

@implementation CoreSpeechXPCFakeModelMonitor

- (void)_registerForFakeAssetRollNotification
{
  v18 = *MEMORY[0x277D85DE8];
  if (CSIsInternalBuild() && self->_fakeAssetRollNotificationRegistrationToken == -1)
  {
    out_token = 0;
    objc_initWeak(&location, self);
    uTF8String = [@"com.apple.corespeech.fakeasset.rolling" UTF8String];
    queue = self->_queue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __70__CoreSpeechXPCFakeModelMonitor__registerForFakeAssetRollNotification__block_invoke;
    handler[3] = &unk_2784C5588;
    objc_copyWeak(&v9, &location);
    v5 = notify_register_dispatch(uTF8String, &out_token, queue, handler);
    if (v5)
    {
      v6 = *MEMORY[0x277D015D8];
      if (!os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
      {
LABEL_11:
        objc_destroyWeak(&v9);
        objc_destroyWeak(&location);
        goto LABEL_12;
      }

      *buf = 136315650;
      v13 = "[CoreSpeechXPCFakeModelMonitor _registerForFakeAssetRollNotification]";
      v14 = 2112;
      v15 = @"com.apple.corespeech.fakeasset.rolling";
      v16 = 1024;
      v17 = v5;
    }

    else
    {
      if (out_token != -1)
      {
        self->_fakeAssetRollNotificationRegistrationToken = out_token;
        goto LABEL_11;
      }

      v6 = *MEMORY[0x277D015D8];
      if (!os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      *buf = 136315650;
      v13 = "[CoreSpeechXPCFakeModelMonitor _registerForFakeAssetRollNotification]";
      v14 = 2112;
      v15 = @"com.apple.corespeech.fakeasset.rolling";
      v16 = 1024;
      v17 = 0;
    }

    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_DEFAULT, "%s Failed to register for notification %@ (status=%d)", buf, 0x1Cu);
    goto LABEL_11;
  }

LABEL_12:
  v7 = *MEMORY[0x277D85DE8];
}

void __70__CoreSpeechXPCFakeModelMonitor__registerForFakeAssetRollNotification__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[CoreSpeechXPCFakeModelMonitor _registerForFakeAssetRollNotification]_block_invoke";
    v7 = 2112;
    v8 = @"com.apple.corespeech.fakeasset.rolling";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s Received notification %@", &v5, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setShouldRollFakeModel:1];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  fakeAssetRollNotificationRegistrationToken = self->_fakeAssetRollNotificationRegistrationToken;
  self->_fakeAssetRollNotificationRegistrationToken = -1;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__CoreSpeechXPCFakeModelMonitor_stop__block_invoke;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v5 = fakeAssetRollNotificationRegistrationToken;
  dispatch_sync(queue, block);
}

uint64_t __37__CoreSpeechXPCFakeModelMonitor_stop__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result != -1)
  {
    return notify_cancel(result);
  }

  return result;
}

- (void)start
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__CoreSpeechXPCFakeModelMonitor_start__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (CoreSpeechXPCFakeModelMonitor)init
{
  v6.receiver = self;
  v6.super_class = CoreSpeechXPCFakeModelMonitor;
  v2 = [(CoreSpeechXPCFakeModelMonitor *)&v6 init];
  if (v2)
  {
    v3 = dispatch_get_global_queue(33, 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v2->_fakeAssetRollNotificationRegistrationToken = -1;
  }

  return v2;
}

@end