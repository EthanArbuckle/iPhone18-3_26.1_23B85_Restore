@interface COStatusBar
- (BOOL)showStopConditionAlert;
- (BOOL)statusBarCoordinator:(id)coordinator receivedTapWithContext:(id)context completionBlock:(id)block;
- (COStatusBar)initWithConditionClass:(id)class profile:(id)profile teardownBeganCb:(id)cb teardownCompleteCb:(id)completeCb;
- (id)doTeardownOnStop;
- (id)getDeviceType;
- (void)acquireStatusBarWithCompletionHandler:(id)handler;
- (void)clearStatusBar;
- (void)dealloc;
- (void)showConditionIsTearingDownAlert;
- (void)statusBarCoordinator:(id)coordinator invalidatedRegistrationWithError:(id)error;
@end

@implementation COStatusBar

- (COStatusBar)initWithConditionClass:(id)class profile:(id)profile teardownBeganCb:(id)cb teardownCompleteCb:(id)completeCb
{
  classCopy = class;
  profileCopy = profile;
  cbCopy = cb;
  completeCbCopy = completeCb;
  v26.receiver = self;
  v26.super_class = COStatusBar;
  v15 = [(COStatusBar *)&v26 init];
  if (v15)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v25 = 0;
      _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Creating statusbar assertion for ConditionInducer", v25, 2u);
    }

    objc_storeStrong(&v15->_conditionClass, class);
    objc_storeStrong(&v15->_profileDescription, profile);
    v16 = MEMORY[0x245D53520](cbCopy);
    terminationBeganCallback = v15->_terminationBeganCallback;
    v15->_terminationBeganCallback = v16;

    v18 = MEMORY[0x245D53520](completeCbCopy);
    terminationNotifyCallback = v15->_terminationNotifyCallback;
    v15->_terminationNotifyCallback = v18;

    v20 = [MEMORY[0x277D66C48] assertionWithStatusBarStyleOverrides:0x80000 forPID:getpid() exclusive:1 showsWhenForeground:1];
    statusBarAssertion = v15->_statusBarAssertion;
    v15->_statusBarAssertion = v20;

    v22 = objc_alloc_init(MEMORY[0x277D66C50]);
    coordinator = v15->_coordinator;
    v15->_coordinator = v22;

    [(SBSStatusBarStyleOverridesCoordinator *)v15->_coordinator setDelegate:v15];
    [(SBSStatusBarStyleOverridesCoordinator *)v15->_coordinator setRegisteredStyleOverrides:0x80000 reply:&__block_literal_global_0];
    [(COStatusBar *)v15 acquireStatusBarWithCompletionHandler:&__block_literal_global_5];
  }

  return v15;
}

void __81__COStatusBar_initWithConditionClass_profile_teardownBeganCb_teardownCompleteCb___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __81__COStatusBar_initWithConditionClass_profile_teardownBeganCb_teardownCompleteCb___block_invoke_cold_1(v2);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Registered status bar assertion", v3, 2u);
  }
}

void __81__COStatusBar_initWithConditionClass_profile_teardownBeganCb_teardownCompleteCb___block_invoke_2(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __81__COStatusBar_initWithConditionClass_profile_teardownBeganCb_teardownCompleteCb___block_invoke_2_cold_1();
  }
}

- (void)acquireStatusBarWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v5 = dispatch_get_global_queue(25, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__COStatusBar_acquireStatusBarWithCompletionHandler___block_invoke;
  v7[3] = &unk_278DF7FE0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  objc_copyWeak(&v9, &location);
  dispatch_async(v5, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __53__COStatusBar_acquireStatusBarWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) statusBarAssertion];
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__COStatusBar_acquireStatusBarWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_278DF7FB8;
  objc_copyWeak(&v5, (a1 + 48));
  [v2 acquireWithHandler:v3 invalidationHandler:v4];

  objc_destroyWeak(&v5);
}

void __53__COStatusBar_acquireStatusBarWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained clearStatusBar];
}

- (void)clearStatusBar
{
  statusBarAssertion = [(COStatusBar *)self statusBarAssertion];
  [statusBarAssertion invalidate];

  [(COStatusBar *)self setStatusBarAssertion:0];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Released status bar assertion for ConditionInducer", v4, 2u);
  }
}

- (void)dealloc
{
  [(COStatusBar *)self clearStatusBar];
  v3.receiver = self;
  v3.super_class = COStatusBar;
  [(COStatusBar *)&v3 dealloc];
}

- (id)getDeviceType
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)doTeardownOnStop
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v21 = v2;
  v3 = [COConditionSession tearDownAllConditionsWithErrors:&v21];
  v4 = v21;

  if (!v3)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    allKeys = [v4 allKeys];
    v6 = [allKeys countByEnumeratingWithState:&v17 objects:v26 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v18;
      v10 = MEMORY[0x277D86220];
      *&v7 = 138412546;
      v16 = v7;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(allKeys);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v4 objectForKey:{v12, v16}];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = v16;
            v23 = v12;
            v24 = 2112;
            v25 = v13;
            _os_log_error_impl(&dword_243E0F000, v10, OS_LOG_TYPE_ERROR, "From the status bar, error while tearing down %@: %@", buf, 0x16u);
          }
        }

        v8 = [allKeys countByEnumeratingWithState:&v17 objects:v26 count:16];
      }

      while (v8);
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)showStopConditionAlert
{
  v25[4] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  conditionClass = [(COStatusBar *)self conditionClass];
  v5 = [v3 stringWithFormat:@"%@ Condition Active", conditionClass];

  v6 = MEMORY[0x277CCACA8];
  profileDescription = [(COStatusBar *)self profileDescription];
  getDeviceType = [(COStatusBar *)self getDeviceType];
  v9 = [v6 stringWithFormat:@"%@ is active on this %@. Stop running this condition?", profileDescription, getDeviceType];

  v10 = *MEMORY[0x277CBF198];
  v24[0] = *MEMORY[0x277CBF188];
  v24[1] = v10;
  v25[0] = v5;
  v25[1] = v9;
  v11 = *MEMORY[0x277CBF1E8];
  v24[2] = *MEMORY[0x277CBF218];
  v24[3] = v11;
  v25[2] = @"Cancel";
  v25[3] = @"Stop";
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];
  self->_userNotificationStopCondition = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 0, 0, v12);
  userNotificationStopCondition = [(COStatusBar *)self userNotificationStopCondition];
  if (userNotificationStopCondition)
  {
    responseFlags = 0;
    CFUserNotificationReceiveResponse(self->_userNotificationStopCondition, 0.0, &responseFlags);
    switch(responseFlags)
    {
      case 3uLL:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          [COStatusBar showStopConditionAlert];
        }

        break;
      case 2uLL:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Continuing with the condition...", buf, 2u);
        }

        break;
      case 0uLL:
        [(COStatusBar *)self setDidRequestTeardownOnce:1];
        terminationBeganCallback = [(COStatusBar *)self terminationBeganCallback];

        if (terminationBeganCallback)
        {
          terminationBeganCallback2 = [(COStatusBar *)self terminationBeganCallback];
          terminationBeganCallback2[2]();
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "We got a request, to terminate, but there's no termination began callback set", buf, 2u);
        }

        doTeardownOnStop = [(COStatusBar *)self doTeardownOnStop];
        terminationNotifyCallback = [(COStatusBar *)self terminationNotifyCallback];

        v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
        if (terminationNotifyCallback)
        {
          if (v18)
          {
            *buf = 0;
            _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Invoking termination callback...", buf, 2u);
          }

          terminationNotifyCallback2 = [(COStatusBar *)self terminationNotifyCallback];
          (terminationNotifyCallback2)[2](terminationNotifyCallback2, doTeardownOnStop);
        }

        else if (v18)
        {
          *buf = 0;
          _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "We got a request, to terminate, but there's no termination complete callback set", buf, 2u);
        }

        break;
    }

    CFRelease(self->_userNotificationStopCondition);
    self->_userNotificationStopCondition = 0;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [COStatusBar showStopConditionAlert];
  }

  v20 = *MEMORY[0x277D85DE8];
  return userNotificationStopCondition != 0;
}

- (void)showConditionIsTearingDownAlert
{
  v3 = MEMORY[0x277CCACA8];
  conditionClass = [(COStatusBar *)self conditionClass];
  alertHeader = [v3 stringWithFormat:@"%@ Condition Stopping", conditionClass];

  v5 = MEMORY[0x277CCACA8];
  profileDescription = [(COStatusBar *)self profileDescription];
  v7 = [v5 stringWithFormat:@"%@ may take a few moments to turn off.", profileDescription];

  CFUserNotificationDisplayNotice(0.0, 2uLL, 0, 0, 0, alertHeader, v7, @"OK");
}

- (BOOL)statusBarCoordinator:(id)coordinator receivedTapWithContext:(id)context completionBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  contextCopy = context;
  blockCopy = block;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = 138412546;
    selfCopy = self;
    v15 = 1024;
    didRequestTeardownOnce = [(COStatusBar *)self didRequestTeardownOnce];
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Received a tap on the status bar coordinator! Showing popup... %@, %d", &v13, 0x12u);
  }

  if ([(COStatusBar *)self didRequestTeardownOnce])
  {
    [(COStatusBar *)self showConditionIsTearingDownAlert];
  }

  else
  {
    [(COStatusBar *)self showStopConditionAlert];
  }

  blockCopy[2](blockCopy);

  v11 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)statusBarCoordinator:(id)coordinator invalidatedRegistrationWithError:(id)error
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "statusBarCoordinator:invalidatedRegistrationWithError:", v4, 2u);
  }
}

void __81__COStatusBar_initWithConditionClass_profile_teardownBeganCb_teardownCompleteCb___block_invoke_cold_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error registering status bar assertion: %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end