@interface CSFDropInCallStateNotifier
- (CSFDropInCallStateNotifier)init;
- (void)_registerForDropInCallbacks;
- (void)notifyObserver:(id)observer didReceiveNotificationWithToken:(int)token;
- (void)start;
- (void)stop;
@end

@implementation CSFDropInCallStateNotifier

- (void)notifyObserver:(id)observer didReceiveNotificationWithToken:(int)token
{
  observerCopy = observer;
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__CSFDropInCallStateNotifier_notifyObserver_didReceiveNotificationWithToken___block_invoke;
  v8[3] = &unk_1E865C970;
  v8[4] = self;
  v9 = observerCopy;
  v7 = observerCopy;
  dispatch_async(queue, v8);
}

uint64_t __77__CSFDropInCallStateNotifier_notifyObserver_didReceiveNotificationWithToken___block_invoke(uint64_t result)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(result + 32);
  if (v1[2] == *(result + 40))
  {
    v2 = result;
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSFDropInCallStateNotifier notifyObserver:didReceiveNotificationWithToken:]_block_invoke";
      _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Received CSD XPC connection notification. Re-registering for drop-in calls", &v5, 0xCu);
      v1 = *(v2 + 32);
    }

    result = [v1 _registerForDropInCallbacks];
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_registerForDropInCallbacks
{
  if (!self->_conversationProviderManager)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69D8BB0]);
    conversationProviderManager = self->_conversationProviderManager;
    self->_conversationProviderManager = v3;
  }

  objc_initWeak(&location, self);
  v5 = self->_conversationProviderManager;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__CSFDropInCallStateNotifier__registerForDropInCallbacks__block_invoke;
  v6[3] = &unk_1E865C1F0;
  objc_copyWeak(&v7, &location);
  [(TUConversationProviderManager *)v5 registerForCallbacksForProvider:@"com.apple.private.alloy.dropin.communication" completionHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __57__CSFDropInCallStateNotifier__registerForDropInCallbacks__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (v3)
    {
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v10 = "[CSFDropInCallStateNotifier _registerForDropInCallbacks]_block_invoke";
        v11 = 2114;
        v12 = v3;
        _os_log_error_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_ERROR, "%s Unable to register for drop-in calls: %{public}@", buf, 0x16u);
      }

      v6 = WeakRetained[3];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __57__CSFDropInCallStateNotifier__registerForDropInCallbacks__block_invoke_32;
      block[3] = &unk_1E865CB68;
      block[4] = WeakRetained;
      dispatch_async(v6, block);
    }

    else if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[CSFDropInCallStateNotifier _registerForDropInCallbacks]_block_invoke_2";
      _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Registered for drop-in calls", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)stop
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__CSFDropInCallStateNotifier_stop__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
}

void __34__CSFDropInCallStateNotifier_stop__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  v4 = *(*(a1 + 32) + 16);
  if (v4)
  {
    [v4 invalidate];
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = 0;
  }
}

- (void)start
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__CSFDropInCallStateNotifier_start__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __35__CSFDropInCallStateNotifier_start__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E698D1A0]) initWithName:@"com.apple.telephonyutilities.callservicesdaemon.connectionrequest" options:0 queue:*(*(a1 + 32) + 24) delegate:?];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  v5 = *(a1 + 32);

  return [v5 _registerForDropInCallbacks];
}

- (CSFDropInCallStateNotifier)init
{
  if (+[CSUtils isDarwinOS](CSUtils, "isDarwinOS") || !+[CSUtils supportDropInCall])
  {
    selfCopy = 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CSFDropInCallStateNotifier;
    v3 = [(CSFDropInCallStateNotifier *)&v8 init];
    if (v3)
    {
      v4 = dispatch_queue_create("CSFDropInCallStateNotifier queue", 0);
      queue = v3->_queue;
      v3->_queue = v4;
    }

    self = v3;
    selfCopy = self;
  }

  return selfCopy;
}

@end