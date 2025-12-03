@interface CSAudioSessionController
+ (id)sharedInstance;
- (BOOL)_createXPCClientConnectionIfNeeded;
- (CSAudioSessionController)initWithEndpointId:(id)id;
- (unsigned)_getAudioSessionID;
- (unsigned)getAudioSessionID;
- (void)CSXPCClient:(id)client didDisconnect:(BOOL)disconnect;
- (void)_audioRouteChanged:(id)changed;
- (void)_handleInterruption:(id)interruption;
- (void)_mediaServicesWereLost:(id)lost;
- (void)_mediaServicesWereReset:(id)reset;
- (void)_registerAudioRouteChangeNotification;
- (void)_registerInterruptionNotification;
- (void)_startMonitoring;
- (void)_stopMonitoring;
- (void)_teardownXPCClientIfNeeded;
- (void)audioSessionInfoProvider:(id)provider didReceiveAudioSessionInterruptionNotificationWithUserInfo:(id)info;
- (void)audioSessionInfoProvider:(id)provider didReceiveAudioSessionMediaServicesWereLostNotificationWithUserInfo:(id)info;
- (void)audioSessionInfoProvider:(id)provider didReceiveAudioSessionMediaServicesWereResetNotificationWithUserInfo:(id)info;
- (void)audioSessionInfoProvider:(id)provider didReceiveAudioSessionRouteChangeNotificationWithUserInfo:(id)info;
- (void)coreSpeechDaemonStateMonitor:(id)monitor didReceiveStateChanged:(unint64_t)changed;
- (void)dealloc;
- (void)getAudioSessionIDWithCompletion:(id)completion;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CSAudioSessionController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_520 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_520, &__block_literal_global_521);
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

- (unsigned)_getAudioSessionID
{
  [(CSAudioSessionController *)self _createXPCClientConnectionIfNeeded];
  endpointId = self->_endpointId;
  if (endpointId)
  {
    uUIDString = [(NSUUID *)endpointId UUIDString];
  }

  else
  {
    uUIDString = 0;
  }

  sessionInfoProvider = [(CSAudioSessionController *)self sessionInfoProvider];
  v6 = [sessionInfoProvider audioSessionIdForDeviceId:uUIDString];

  return v6;
}

uint64_t __45__CSAudioSessionController_getAudioSessionID__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _getAudioSessionID];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unsigned)getAudioSessionID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__CSAudioSessionController_getAudioSessionID__block_invoke;
  v5[3] = &unk_2784C6F30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_createXPCClientConnectionIfNeeded
{
  v12 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_xpcClient)
  {
    goto LABEL_3;
  }

  v3 = [[CSXPCClient alloc] initWithType:2];
  xpcClient = self->_xpcClient;
  self->_xpcClient = v3;

  [(CSAudioSessionController *)self setSessionInfoProvider:self->_xpcClient];
  sessionInfoProvider = [(CSAudioSessionController *)self sessionInfoProvider];
  [sessionInfoProvider registerObserver:self];

  [(CSXPCClient *)self->_xpcClient setDelegate:self];
  [(CSXPCClient *)self->_xpcClient connect];
  if (self->_xpcClient)
  {
LABEL_3:
    LOBYTE(v6) = 1;
  }

  else
  {
    v8 = *MEMORY[0x277D015B0];
    v6 = os_log_type_enabled(*MEMORY[0x277D015B0], OS_LOG_TYPE_ERROR);
    if (v6)
    {
      v10 = 136315138;
      v11 = "[CSAudioSessionController _createXPCClientConnectionIfNeeded]";
      _os_log_error_impl(&dword_222E4D000, v8, OS_LOG_TYPE_ERROR, "%s audioProvider not exist", &v10, 0xCu);
      LOBYTE(v6) = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)coreSpeechDaemonStateMonitor:(id)monitor didReceiveStateChanged:(unint64_t)changed
{
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __80__CSAudioSessionController_coreSpeechDaemonStateMonitor_didReceiveStateChanged___block_invoke;
  v5[3] = &unk_2784C6EC0;
  v5[4] = self;
  v5[5] = changed;
  dispatch_async(queue, v5);
}

void __80__CSAudioSessionController_coreSpeechDaemonStateMonitor_didReceiveStateChanged___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40) == 1)
  {
    v2 = *MEMORY[0x277D015B0];
    if (os_log_type_enabled(*MEMORY[0x277D015B0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[CSAudioSessionController coreSpeechDaemonStateMonitor:didReceiveStateChanged:]_block_invoke";
      _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CoreSpeech Daemon reset notification", buf, 0xCu);
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = *(*(a1 + 32) + 24);
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v10 + 1) + 8 * v7);
          if (objc_opt_respondsToSelector())
          {
            [v8 audioSessionController:*(a1 + 32) didReceiveAudioSessionOwnerResetNotification:{0, v10}];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)CSXPCClient:(id)client didDisconnect:(BOOL)disconnect
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__CSAudioSessionController_CSXPCClient_didDisconnect___block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __54__CSAudioSessionController_CSXPCClient_didDisconnect___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 audioSessionController:*(a1 + 32) didReceiveAudioSessionOwnerLostNotification:{0, v11}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D015B0];
  if (os_log_type_enabled(*MEMORY[0x277D015B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[CSAudioSessionController CSXPCClient:didDisconnect:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_DEFAULT, "%s reset sessionInfoProvider since xpcClient disconnected", buf, 0xCu);
  }

  result = [*(a1 + 32) _teardownXPCClientIfNeeded];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_teardownXPCClientIfNeeded
{
  v10 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  xpcClient = self->_xpcClient;
  if (xpcClient)
  {
    v4 = *MEMORY[0x277D015B0];
    if (os_log_type_enabled(*MEMORY[0x277D015B0], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[CSAudioSessionController _teardownXPCClientIfNeeded]";
      _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s ", &v8, 0xCu);
      xpcClient = self->_xpcClient;
    }

    [(CSXPCClient *)xpcClient setDelegate:0];
    sessionInfoProvider = [(CSAudioSessionController *)self sessionInfoProvider];
    [sessionInfoProvider unregisterObserver:self];

    v6 = self->_xpcClient;
    self->_xpcClient = 0;

    [(CSAudioSessionController *)self setSessionInfoProvider:self->_xpcClient];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_audioRouteChanged:(id)changed
{
  changedCopy = changed;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__CSAudioSessionController__audioRouteChanged___block_invoke;
  v7[3] = &unk_2784C6FA8;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(queue, v7);
}

void __47__CSAudioSessionController__audioRouteChanged___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015B0];
  if (os_log_type_enabled(*MEMORY[0x277D015B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[CSAudioSessionController _audioRouteChanged:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(*(a1 + 32) + 24);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          v9 = *(a1 + 32);
          v10 = [*(a1 + 40) userInfo];
          [v8 audioSessionController:v9 didReceiveAudioSessionRouteChangeNotificationWithUserInfo:v10];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_mediaServicesWereReset:(id)reset
{
  resetCopy = reset;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__CSAudioSessionController__mediaServicesWereReset___block_invoke;
  v7[3] = &unk_2784C6FA8;
  v7[4] = self;
  v8 = resetCopy;
  v6 = resetCopy;
  dispatch_async(queue, v7);
}

uint64_t __52__CSAudioSessionController__mediaServicesWereReset___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015B0];
  if (os_log_type_enabled(*MEMORY[0x277D015B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[CSAudioSessionController _mediaServicesWereReset:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(*(a1 + 32) + 24);
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          v9 = *(a1 + 32);
          v10 = [*(a1 + 40) userInfo];
          [v8 audioSessionController:v9 didReceiveAudioSessionMediaServicesWereResetNotificationWithUserInfo:v10];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  [*(a1 + 32) _registerInterruptionNotification];
  result = [*(a1 + 32) _registerAudioRouteChangeNotification];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_mediaServicesWereLost:(id)lost
{
  lostCopy = lost;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__CSAudioSessionController__mediaServicesWereLost___block_invoke;
  v7[3] = &unk_2784C6FA8;
  v7[4] = self;
  v8 = lostCopy;
  v6 = lostCopy;
  dispatch_async(queue, v7);
}

void __51__CSAudioSessionController__mediaServicesWereLost___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015B0];
  if (os_log_type_enabled(*MEMORY[0x277D015B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[CSAudioSessionController _mediaServicesWereLost:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(*(a1 + 32) + 24);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          v9 = *(a1 + 32);
          v10 = [*(a1 + 40) userInfo];
          [v8 audioSessionController:v9 didReceiveAudioSessionMediaServicesWereLostNotificationWithUserInfo:v10];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleInterruption:(id)interruption
{
  interruptionCopy = interruption;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__CSAudioSessionController__handleInterruption___block_invoke;
  v7[3] = &unk_2784C6FA8;
  v7[4] = self;
  v8 = interruptionCopy;
  v6 = interruptionCopy;
  dispatch_async(queue, v7);
}

void __48__CSAudioSessionController__handleInterruption___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015B0];
  if (os_log_type_enabled(*MEMORY[0x277D015B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[CSAudioSessionController _handleInterruption:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(*(a1 + 32) + 24);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          v9 = *(a1 + 32);
          v10 = [*(a1 + 40) userInfo];
          [v8 audioSessionController:v9 didReceiveAudioSessionInterruptionNotificationWithUserInfo:v10];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_registerAudioRouteChangeNotification
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015B0];
  if (os_log_type_enabled(*MEMORY[0x277D015B0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSAudioSessionController _registerAudioRouteChangeNotification]";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s Start Monitoring : AudioSession notification from corespeechd", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_registerInterruptionNotification
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015B0];
  if (os_log_type_enabled(*MEMORY[0x277D015B0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSAudioSessionController _registerInterruptionNotification]";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s Start Monitoring : AudioSession notification from corespeechd", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_stopMonitoring
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015B0];
  if (os_log_type_enabled(*MEMORY[0x277D015B0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSAudioSessionController _stopMonitoring]";
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_DEFAULT, "%s Stop Monitoring : AudioSession notification from corespeechd", &v5, 0xCu);
  }

  [(CSAudioSessionController *)self setShouldKeepConnection:0];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_startMonitoring
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015B0];
  if (os_log_type_enabled(*MEMORY[0x277D015B0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSAudioSessionController _startMonitoring]";
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_DEFAULT, "%s Start Monitoring : AudioSession notification from corespeechd", &v6, 0xCu);
  }

  [(CSAudioSessionController *)self setShouldKeepConnection:1];
  [(CSAudioSessionController *)self _createXPCClientConnectionIfNeeded];
  v4 = +[CSCoreSpeechDaemonStateMonitor sharedInstance];
  [v4 addObserver:self];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)audioSessionInfoProvider:(id)provider didReceiveAudioSessionMediaServicesWereResetNotificationWithUserInfo:(id)info
{
  infoCopy = info;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __122__CSAudioSessionController_audioSessionInfoProvider_didReceiveAudioSessionMediaServicesWereResetNotificationWithUserInfo___block_invoke;
  v8[3] = &unk_2784C6FA8;
  v8[4] = self;
  v9 = infoCopy;
  v7 = infoCopy;
  dispatch_async(queue, v8);
}

void __122__CSAudioSessionController_audioSessionInfoProvider_didReceiveAudioSessionMediaServicesWereResetNotificationWithUserInfo___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015B0];
  if (os_log_type_enabled(*MEMORY[0x277D015B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[CSAudioSessionController audioSessionInfoProvider:didReceiveAudioSessionMediaServicesWereResetNotificationWithUserInfo:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(*(a1 + 32) + 24);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 audioSessionController:*(a1 + 32) didReceiveAudioSessionMediaServicesWereResetNotificationWithUserInfo:{*(a1 + 40), v10}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)audioSessionInfoProvider:(id)provider didReceiveAudioSessionMediaServicesWereLostNotificationWithUserInfo:(id)info
{
  infoCopy = info;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __121__CSAudioSessionController_audioSessionInfoProvider_didReceiveAudioSessionMediaServicesWereLostNotificationWithUserInfo___block_invoke;
  v8[3] = &unk_2784C6FA8;
  v8[4] = self;
  v9 = infoCopy;
  v7 = infoCopy;
  dispatch_async(queue, v8);
}

void __121__CSAudioSessionController_audioSessionInfoProvider_didReceiveAudioSessionMediaServicesWereLostNotificationWithUserInfo___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015B0];
  if (os_log_type_enabled(*MEMORY[0x277D015B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[CSAudioSessionController audioSessionInfoProvider:didReceiveAudioSessionMediaServicesWereLostNotificationWithUserInfo:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(*(a1 + 32) + 24);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 audioSessionController:*(a1 + 32) didReceiveAudioSessionMediaServicesWereLostNotificationWithUserInfo:{*(a1 + 40), v10}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)audioSessionInfoProvider:(id)provider didReceiveAudioSessionRouteChangeNotificationWithUserInfo:(id)info
{
  infoCopy = info;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __111__CSAudioSessionController_audioSessionInfoProvider_didReceiveAudioSessionRouteChangeNotificationWithUserInfo___block_invoke;
  v8[3] = &unk_2784C6FA8;
  v8[4] = self;
  v9 = infoCopy;
  v7 = infoCopy;
  dispatch_async(queue, v8);
}

void __111__CSAudioSessionController_audioSessionInfoProvider_didReceiveAudioSessionRouteChangeNotificationWithUserInfo___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015B0];
  if (os_log_type_enabled(*MEMORY[0x277D015B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[CSAudioSessionController audioSessionInfoProvider:didReceiveAudioSessionRouteChangeNotificationWithUserInfo:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(*(a1 + 32) + 24);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 audioSessionController:*(a1 + 32) didReceiveAudioSessionRouteChangeNotificationWithUserInfo:{*(a1 + 40), v10}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)audioSessionInfoProvider:(id)provider didReceiveAudioSessionInterruptionNotificationWithUserInfo:(id)info
{
  infoCopy = info;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __112__CSAudioSessionController_audioSessionInfoProvider_didReceiveAudioSessionInterruptionNotificationWithUserInfo___block_invoke;
  v8[3] = &unk_2784C6FA8;
  v8[4] = self;
  v9 = infoCopy;
  v7 = infoCopy;
  dispatch_async(queue, v8);
}

void __112__CSAudioSessionController_audioSessionInfoProvider_didReceiveAudioSessionInterruptionNotificationWithUserInfo___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015B0];
  if (os_log_type_enabled(*MEMORY[0x277D015B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[CSAudioSessionController audioSessionInfoProvider:didReceiveAudioSessionInterruptionNotificationWithUserInfo:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(*(a1 + 32) + 24);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 audioSessionController:*(a1 + 32) didReceiveAudioSessionInterruptionNotificationWithUserInfo:{*(a1 + 40), v10}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)getAudioSessionIDWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__CSAudioSessionController_getAudioSessionIDWithCompletion___block_invoke;
    v7[3] = &unk_2784C6E98;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(queue, v7);
  }
}

uint64_t __60__CSAudioSessionController_getAudioSessionIDWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _getAudioSessionID];
  v3 = *(v1 + 16);

  return v3(v1, v2, 0);
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__CSAudioSessionController_unregisterObserver___block_invoke;
    v7[3] = &unk_2784C6FA8;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_async(queue, v7);
  }
}

uint64_t __47__CSAudioSessionController_unregisterObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
  result = [*(*(a1 + 32) + 24) count];
  if (!result)
  {
    v3 = *(a1 + 32);

    return [v3 _stopMonitoring];
  }

  return result;
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__CSAudioSessionController_registerObserver___block_invoke;
    v7[3] = &unk_2784C6FA8;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_async(queue, v7);
  }
}

uint64_t __45__CSAudioSessionController_registerObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
  result = [*(*(a1 + 32) + 24) count];
  if (result == 1)
  {
    v3 = *(a1 + 32);

    return [v3 _startMonitoring];
  }

  return result;
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015B0];
  if (os_log_type_enabled(*MEMORY[0x277D015B0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [objc_opt_class() description];
    *buf = 136315394;
    v9 = "[CSAudioSessionController dealloc]";
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s %{public}@ deallocated", buf, 0x16u);
  }

  v7.receiver = self;
  v7.super_class = CSAudioSessionController;
  [(CSAudioSessionController *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (CSAudioSessionController)initWithEndpointId:(id)id
{
  idCopy = id;
  v14.receiver = self;
  v14.super_class = CSAudioSessionController;
  v5 = [(CSAudioSessionController *)&v14 init];
  if (v5)
  {
    v6 = dispatch_get_global_queue(33, 0);
    v7 = dispatch_queue_create_with_target_V2("CSAudioSessionController Queue", 0, v6);
    queue = v5->_queue;
    v5->_queue = v7;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v5->_observers;
    v5->_observers = weakObjectsHashTable;

    v11 = [idCopy copy];
    endpointId = v5->_endpointId;
    v5->_endpointId = v11;
  }

  return v5;
}

void __42__CSAudioSessionController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CSAudioSessionController);
  v1 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v0;
}

@end