@interface CSVoiceTriggerXPCService
+ (id)sharedService;
- (CSVoiceTriggerXPCService)init;
- (id)_createXPCClientConnectionIfNeeded:(id)needed;
- (id)fetchVoiceTriggerDailyStats;
- (void)_teardownXPCClientIfNeeded;
- (void)enableVoiceTrigger:(BOOL)trigger withAssertion:(id)assertion xpcClient:(id)client;
- (void)notifyVoiceTriggeredSiriSessionCancelledWithXpcClient:(id)client;
- (void)setPhraseSpotterBypassing:(BOOL)bypassing timeout:(double)timeout xpcClient:(id)client;
- (void)setRaiseToSpeakBypassing:(BOOL)bypassing timeout:(double)timeout xpcClient:(id)client;
- (void)voiceTriggerXPCClient:(id)client didDisconnect:(BOOL)disconnect;
@end

@implementation CSVoiceTriggerXPCService

+ (id)sharedService
{
  if (sharedService_onceToken != -1)
  {
    dispatch_once(&sharedService_onceToken, &__block_literal_global_2288);
  }

  v3 = sharedService_sharedInstance;

  return v3;
}

- (void)_teardownXPCClientIfNeeded
{
  v9 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  xpcClient = self->_xpcClient;
  if (xpcClient)
  {
    v4 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[CSVoiceTriggerXPCService _teardownXPCClientIfNeeded]";
      _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
      xpcClient = self->_xpcClient;
    }

    [(CSVoiceTriggerXPCClient *)xpcClient setDelegate:0];
    v5 = self->_xpcClient;
    self->_xpcClient = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)voiceTriggerXPCClient:(id)client didDisconnect:(BOOL)disconnect
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__CSVoiceTriggerXPCService_voiceTriggerXPCClient_didDisconnect___block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __64__CSVoiceTriggerXPCService_voiceTriggerXPCClient_didDisconnect___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSVoiceTriggerXPCService voiceTriggerXPCClient:didDisconnect:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s reset xpcClient since it disconnected", &v5, 0xCu);
  }

  result = [*(a1 + 32) _teardownXPCClientIfNeeded];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_createXPCClientConnectionIfNeeded:(id)needed
{
  v15 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  dispatch_assert_queue_V2(self->_queue);
  if (neededCopy)
  {
    v5 = neededCopy;
LABEL_3:
    v6 = v5;
    goto LABEL_14;
  }

  v7 = CSIsWatch();
  if (v7)
  {
    xpcClient = self->_xpcClient;
    if (xpcClient)
    {
      v5 = xpcClient;
      goto LABEL_3;
    }
  }

  v6 = objc_alloc_init(CSVoiceTriggerXPCClient);
  [(CSVoiceTriggerXPCClient *)v6 setDelegate:self];
  [(CSVoiceTriggerXPCClient *)v6 connect];
  if (v6)
  {
    if (v7)
    {
      [(CSVoiceTriggerXPCService *)self setXpcClient:v6];
    }

    v9 = v6;
  }

  else
  {
    v10 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      v14 = "[CSVoiceTriggerXPCService _createXPCClientConnectionIfNeeded:]";
      _os_log_error_impl(&dword_222E4D000, v10, OS_LOG_TYPE_ERROR, "%s voiceTriggerXPC client not exist", &v13, 0xCu);
    }
  }

LABEL_14:
  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)fetchVoiceTriggerDailyStats
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2268;
  v10 = __Block_byref_object_dispose__2269;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__CSVoiceTriggerXPCService_fetchVoiceTriggerDailyStats__block_invoke;
  v5[3] = &unk_2784C6F30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __55__CSVoiceTriggerXPCService_fetchVoiceTriggerDailyStats__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[CSVoiceTriggerXPCService fetchVoiceTriggerDailyStats]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v8, 0xCu);
  }

  v3 = [*(a1 + 32) _createXPCClientConnectionIfNeeded:0];
  v4 = [v3 fetchVoiceTriggerStats];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *MEMORY[0x277D85DE8];
}

- (void)notifyVoiceTriggeredSiriSessionCancelledWithXpcClient:(id)client
{
  clientCopy = client;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__CSVoiceTriggerXPCService_notifyVoiceTriggeredSiriSessionCancelledWithXpcClient___block_invoke;
  v7[3] = &unk_2784C6FA8;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(queue, v7);
}

void __82__CSVoiceTriggerXPCService_notifyVoiceTriggeredSiriSessionCancelledWithXpcClient___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSVoiceTriggerXPCService notifyVoiceTriggeredSiriSessionCancelledWithXpcClient:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
  }

  v3 = [*(a1 + 32) _createXPCClientConnectionIfNeeded:*(a1 + 40)];
  [v3 notifyVoiceTriggeredSiriSessionCancelled];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)setRaiseToSpeakBypassing:(BOOL)bypassing timeout:(double)timeout xpcClient:(id)client
{
  clientCopy = client;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__CSVoiceTriggerXPCService_setRaiseToSpeakBypassing_timeout_xpcClient___block_invoke;
  v11[3] = &unk_2784C4B88;
  bypassingCopy = bypassing;
  timeoutCopy = timeout;
  v11[4] = self;
  v12 = clientCopy;
  v10 = clientCopy;
  dispatch_async(queue, v11);
}

void __71__CSVoiceTriggerXPCService_setRaiseToSpeakBypassing_timeout_xpcClient___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"NOT";
    v4 = *(a1 + 48);
    if (*(a1 + 56))
    {
      v3 = &stru_28363DA48;
    }

    v7 = 136315650;
    v8 = "[CSVoiceTriggerXPCService setRaiseToSpeakBypassing:timeout:xpcClient:]_block_invoke";
    v9 = 2114;
    v10 = v3;
    v11 = 2050;
    v12 = v4;
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s Requesting RTS %{public}@ bypass for %{public}lf seconds", &v7, 0x20u);
  }

  v5 = [*(a1 + 32) _createXPCClientConnectionIfNeeded:*(a1 + 40)];
  [v5 setRaiseToSpeakBypassing:*(a1 + 56) timeout:*(a1 + 48)];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setPhraseSpotterBypassing:(BOOL)bypassing timeout:(double)timeout xpcClient:(id)client
{
  clientCopy = client;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__CSVoiceTriggerXPCService_setPhraseSpotterBypassing_timeout_xpcClient___block_invoke;
  v11[3] = &unk_2784C4B88;
  v11[4] = self;
  v12 = clientCopy;
  bypassingCopy = bypassing;
  timeoutCopy = timeout;
  v10 = clientCopy;
  dispatch_async(queue, v11);
}

void __72__CSVoiceTriggerXPCService_setPhraseSpotterBypassing_timeout_xpcClient___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSVoiceTriggerXPCService setPhraseSpotterBypassing:timeout:xpcClient:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
  }

  v3 = [*(a1 + 32) _createXPCClientConnectionIfNeeded:*(a1 + 40)];
  [v3 setPhraseSpotterBypassing:*(a1 + 56) timeout:*(a1 + 48)];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)enableVoiceTrigger:(BOOL)trigger withAssertion:(id)assertion xpcClient:(id)client
{
  assertionCopy = assertion;
  clientCopy = client;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__CSVoiceTriggerXPCService_enableVoiceTrigger_withAssertion_xpcClient___block_invoke;
  v13[3] = &unk_2784C6F80;
  v13[4] = self;
  v14 = clientCopy;
  triggerCopy = trigger;
  v15 = assertionCopy;
  v11 = assertionCopy;
  v12 = clientCopy;
  dispatch_async(queue, v13);
}

void __71__CSVoiceTriggerXPCService_enableVoiceTrigger_withAssertion_xpcClient___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[CSVoiceTriggerXPCService enableVoiceTrigger:withAssertion:xpcClient:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v8, 0xCu);
  }

  v3 = [*(a1 + 32) _createXPCClientConnectionIfNeeded:*(a1 + 40)];
  v4 = *(a1 + 56);
  v5 = *(a1 + 48);
  v6 = [MEMORY[0x277CCAC38] processInfo];
  [v6 systemUptime];
  [v3 enableVoiceTrigger:v4 withAssertion:v5 timestamp:?];

  v7 = *MEMORY[0x277D85DE8];
}

- (CSVoiceTriggerXPCService)init
{
  v6.receiver = self;
  v6.super_class = CSVoiceTriggerXPCService;
  v2 = [(CSVoiceTriggerXPCService *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSVoiceTriggerXPCService Queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

void __41__CSVoiceTriggerXPCService_sharedService__block_invoke()
{
  v0 = objc_alloc_init(CSVoiceTriggerXPCService);
  v1 = sharedService_sharedInstance;
  sharedService_sharedInstance = v0;
}

@end