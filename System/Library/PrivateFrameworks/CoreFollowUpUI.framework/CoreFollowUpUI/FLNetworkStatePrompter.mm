@interface FLNetworkStatePrompter
- (FLNetworkStatePrompter)initWithPresenter:(id)presenter;
- (id)_cancelActionWithCompletionHandler:(id)handler;
- (id)_disableAirplaneActionWithCompletionHandler:(id)handler;
- (void)_mainQueue_promptToDisableAirplaneModeWithCompletionHandler:(id)handler;
- (void)_mainQueue_verificationFailedAlert;
- (void)dealloc;
- (void)preflightNetworkStateWithCompletionHandler:(id)handler;
@end

@implementation FLNetworkStatePrompter

- (FLNetworkStatePrompter)initWithPresenter:(id)presenter
{
  presenterCopy = presenter;
  v9.receiver = self;
  v9.super_class = FLNetworkStatePrompter;
  v6 = [(FLNetworkStatePrompter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_presenter, presenter);
  }

  return v7;
}

- (void)preflightNetworkStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _FLLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245383000, v5, OS_LOG_TYPE_DEFAULT, "Starting to preflight network state...", buf, 2u);
  }

  v6 = dispatch_get_global_queue(33, 0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__FLNetworkStatePrompter_preflightNetworkStateWithCompletionHandler___block_invoke;
  v8[3] = &unk_278E35B70;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(v6, v8);
}

void __69__FLNetworkStatePrompter_preflightNetworkStateWithCompletionHandler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = +[FLNetworkObserver sharedNetworkObserver];
  v3 = [v2 isNetworkReachable];

  if (v3)
  {
    v4 = _FLLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_245383000, v4, OS_LOG_TYPE_DEFAULT, "Network is reachable, moving on...", buf, 2u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__FLNetworkStatePrompter_preflightNetworkStateWithCompletionHandler___block_invoke_1;
    block[3] = &unk_278E359C0;
    v15 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
    v5 = v15;
  }

  else
  {
    v6 = +[FLNetworkObserver sharedNetworkObserver];
    v7 = [v6 isAirplaneModeActiveWithoutWiFi];

    v8 = _FLLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v17 = v7;
      _os_log_impl(&dword_245383000, v8, OS_LOG_TYPE_DEFAULT, "Network is unreachable and airplane mode state is: %d", buf, 8u);
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __69__FLNetworkStatePrompter_preflightNetworkStateWithCompletionHandler___block_invoke_2;
    v11[3] = &unk_278E35B48;
    v13 = v7;
    v9 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v9;
    dispatch_async(MEMORY[0x277D85CD0], v11);
    v5 = v12;
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __69__FLNetworkStatePrompter_preflightNetworkStateWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v4 = *(a1 + 40);

    return [v3 _mainQueue_promptToDisableAirplaneModeWithCompletionHandler:v4];
  }

  else
  {
    [v3 _mainQueue_verificationFailedAlert];
    v6 = *(*(a1 + 40) + 16);

    return v6();
  }
}

- (void)_mainQueue_promptToDisableAirplaneModeWithCompletionHandler:(id)handler
{
  v15[2] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = _FLLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245383000, v5, OS_LOG_TYPE_DEFAULT, "Prompting to disable airplane mode...", buf, 2u);
  }

  v6 = [(FLNetworkStatePrompter *)self _disableAirplaneActionWithCompletionHandler:handlerCopy];
  v15[0] = v6;
  v7 = [(FLNetworkStatePrompter *)self _cancelActionWithCompletionHandler:handlerCopy];

  v15[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];

  v9 = MGGetBoolAnswer();
  v10 = @"WIFI";
  if (v9)
  {
    v10 = @"WLAN";
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"AIRPLANE_MODE_DISABLE_TITLE_%@", v10];
  v12 = FLLoc();

  [FLAlertControllerHelper presentAlertWithTitle:v12 message:0 actions:v8 presentingController:self->_presenter];
  v13 = *MEMORY[0x277D85DE8];
}

- (id)_disableAirplaneActionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = FLLoc();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__FLNetworkStatePrompter__disableAirplaneActionWithCompletionHandler___block_invoke;
  v8[3] = &unk_278E35BE8;
  v9 = handlerCopy;
  v5 = handlerCopy;
  v6 = [FLAlertControllerAction actionWithTitle:v4 style:0 handler:v8];

  return v6;
}

void __70__FLNetworkStatePrompter__disableAirplaneActionWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FLLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245383000, v4, OS_LOG_TYPE_DEFAULT, "Disable airplane mode action initiated...", buf, 2u);
  }

  *buf = 0;
  v16 = buf;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  v5 = +[FLNetworkObserver sharedNetworkObserver];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __70__FLNetworkStatePrompter__disableAirplaneActionWithCompletionHandler___block_invoke_20;
  v12 = &unk_278E35BC0;
  v13 = *(a1 + 32);
  v14 = buf;
  v6 = [v5 addNetworkReachableBlock:&v9];
  v7 = *(v16 + 5);
  *(v16 + 5) = v6;

  v8 = [FLNetworkObserver sharedNetworkObserver:v9];
  [v8 disableAirplaneMode];

  _Block_object_dispose(buf, 8);
}

void __70__FLNetworkStatePrompter__disableAirplaneActionWithCompletionHandler___block_invoke_20(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = _FLLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v12 = a2;
    _os_log_impl(&dword_245383000, v4, OS_LOG_TYPE_DEFAULT, "Finished disabling with result... %d", buf, 8u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__FLNetworkStatePrompter__disableAirplaneActionWithCompletionHandler___block_invoke_21;
  v8[3] = &unk_278E35B98;
  v9 = *(a1 + 32);
  v10 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v8);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_cancelActionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = FLLoc();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__FLNetworkStatePrompter__cancelActionWithCompletionHandler___block_invoke;
  v8[3] = &unk_278E35BE8;
  v9 = handlerCopy;
  v5 = handlerCopy;
  v6 = [FLAlertControllerAction actionWithTitle:v4 style:1 handler:v8];

  return v6;
}

void __61__FLNetworkStatePrompter__cancelActionWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = _FLLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_245383000, v2, OS_LOG_TYPE_DEFAULT, "Dismiss action initiated, bailing...", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = FLError();
  (*(v3 + 16))(v3, 0, v4);
}

- (void)_mainQueue_verificationFailedAlert
{
  v11[1] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = _FLLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_245383000, v3, OS_LOG_TYPE_DEFAULT, "Showing verification failed...", v10, 2u);
  }

  v4 = FLLoc();
  v5 = [FLAlertControllerAction actionWithTitle:v4 style:1 handler:0];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  v7 = FLLoc();
  v8 = FLLoc();
  [FLAlertControllerHelper presentAlertWithTitle:v7 message:v8 actions:v6 presentingController:self->_presenter];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _FLLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_245383000, v3, OS_LOG_TYPE_DEFAULT, "<%@> : checking out...", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = FLNetworkStatePrompter;
  [(FLNetworkStatePrompter *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

@end