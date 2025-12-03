@interface CSActivationEventNotifier
+ (id)sharedNotifier;
- (CSActivationEventNotifier)init;
- (id)_getHandlerFromEvent:(id)event;
- (id)_getHandlerFromHandlerID:(unint64_t)d;
- (void)_notifyActivationEvent:(id)event completion:(id)completion;
- (void)notifyActivationEvent:(id)event completion:(id)completion;
- (void)notifyActivationEvent:(unint64_t)event deviceId:(id)id activationInfo:(id)info completion:(id)completion;
- (void)notifyActivationEventSynchronously:(id)synchronously completion:(id)completion;
- (void)notifyDeviceActivationEvent:(id)event completion:(id)completion;
@end

@implementation CSActivationEventNotifier

- (id)_getHandlerFromEvent:(id)event
{
  v4 = ([event type] << 16) | 1;

  return [(CSActivationEventNotifier *)self _getHandlerFromHandlerID:v4];
}

- (id)_getHandlerFromHandlerID:(unint64_t)d
{
  v13 = *MEMORY[0x277D85DE8];
  handlerMap = self->_handlerMap;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:d];
  v5 = [(NSDictionary *)handlerMap objectForKey:v4];

  if (v5)
  {
    [v5 connect];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277D01700]) initWithMachServiceName:"com.apple.corespeech.corespeechd.activation.xpc"];
    v6 = MEMORY[0x277D015D8];
    v7 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[CSActivationEventNotifier _getHandlerFromHandlerID:]";
      _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_DEFAULT, "%s Using default activation client", &v11, 0xCu);
    }

    [v5 connect];
    if (!v5)
    {
      v8 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        v11 = 136315138;
        v12 = "[CSActivationEventNotifier _getHandlerFromHandlerID:]";
        _os_log_error_impl(&dword_222E4D000, v8, OS_LOG_TYPE_ERROR, "%s activation client not exist", &v11, 0xCu);
      }

      v5 = 0;
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)notifyActivationEvent:(unint64_t)event deviceId:(id)id activationInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __86__CSActivationEventNotifier_notifyActivationEvent_deviceId_activationInfo_completion___block_invoke;
  v16[3] = &unk_2784C6E20;
  v17 = completionCopy;
  v11 = completionCopy;
  infoCopy = info;
  idCopy = id;
  v14 = MEMORY[0x223DD26C0](v16);
  v15 = [objc_alloc(MEMORY[0x277D016F0]) initWithType:event deviceId:idCopy activationInfo:infoCopy hosttime:mach_absolute_time()];

  [(CSActivationEventNotifier *)self notifyDeviceActivationEvent:v15 completion:v14];
}

void __86__CSActivationEventNotifier_notifyActivationEvent_deviceId_activationInfo_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      v9 = v6;
      v10 = [v5 localizedDescription];
      v11 = 136315394;
      v12 = "[CSActivationEventNotifier notifyActivationEvent:deviceId:activationInfo:completion:]_block_invoke";
      v13 = 2114;
      v14 = v10;
      _os_log_error_impl(&dword_222E4D000, v9, OS_LOG_TYPE_ERROR, "%s Cannot handle activation event : %{public}@", &v11, 0x16u);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)notifyDeviceActivationEvent:(id)event completion:(id)completion
{
  eventCopy = event;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__CSActivationEventNotifier_notifyDeviceActivationEvent_completion___block_invoke;
  block[3] = &unk_2784C6C68;
  v12 = eventCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = eventCopy;
  dispatch_async(queue, block);
}

uint64_t __68__CSActivationEventNotifier_notifyDeviceActivationEvent_completion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 localizedDescription];
    v8 = 136315394;
    v9 = "[CSActivationEventNotifier notifyDeviceActivationEvent:completion:]_block_invoke";
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s Received Activation Event : %{public}@", &v8, 0x16u);
  }

  result = [*(a1 + 40) _notifyActivationEvent:*(a1 + 32) completion:*(a1 + 48)];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)notifyActivationEvent:(id)event completion:(id)completion
{
  eventCopy = event;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__CSActivationEventNotifier_notifyActivationEvent_completion___block_invoke;
  block[3] = &unk_2784C6C68;
  v12 = eventCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = eventCopy;
  dispatch_async(queue, block);
}

void __62__CSActivationEventNotifier_notifyActivationEvent_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 localizedDescription];
    v9 = 136315394;
    v10 = "[CSActivationEventNotifier notifyActivationEvent:completion:]_block_invoke";
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s Received Activation Event : %{public}@", &v9, 0x16u);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) deviceActivationEvent];
  [v6 _notifyActivationEvent:v7 completion:*(a1 + 48)];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)notifyActivationEventSynchronously:(id)synchronously completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  synchronouslyCopy = synchronously;
  completionCopy = completion;
  v8 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    localizedDescription = [synchronouslyCopy localizedDescription];
    v13 = 136315394;
    v14 = "[CSActivationEventNotifier notifyActivationEventSynchronously:completion:]";
    v15 = 2114;
    v16 = localizedDescription;
    _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_DEFAULT, "%s Received Activation Event : %{public}@", &v13, 0x16u);
  }

  deviceActivationEvent = [synchronouslyCopy deviceActivationEvent];
  [(CSActivationEventNotifier *)self _notifyActivationEvent:deviceActivationEvent completion:completionCopy];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_notifyActivationEvent:(id)event completion:(id)completion
{
  completionCopy = completion;
  eventCopy = event;
  v8 = [(CSActivationEventNotifier *)self _getHandlerFromEvent:eventCopy];
  [v8 notifyActivationEvent:eventCopy completion:completionCopy];
}

- (CSActivationEventNotifier)init
{
  v6.receiver = self;
  v6.super_class = CSActivationEventNotifier;
  v2 = [(CSActivationEventNotifier *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSActivationEventNotifier", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

+ (id)sharedNotifier
{
  if (sharedNotifier_onceToken != -1)
  {
    dispatch_once(&sharedNotifier_onceToken, &__block_literal_global_19438);
  }

  v3 = sharedNotifier_sharedInstance;

  return v3;
}

void __43__CSActivationEventNotifier_sharedNotifier__block_invoke()
{
  v0 = objc_alloc_init(CSActivationEventNotifier);
  v1 = sharedNotifier_sharedInstance;
  sharedNotifier_sharedInstance = v0;
}

@end