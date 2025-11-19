@interface DVTiOSDeviceGlobalStatusIndicator
- (BOOL)_showStopConditionAlert;
- (BOOL)statusBarCoordinator:(id)a3 receivedTapWithContext:(id)a4 completionBlock:(id)a5;
- (DVTiOSDeviceGlobalStatusIndicator)initWithConfiguration:(id)a3 stoppedByUserBlock:(id)a4;
- (void)acquireStatusBarWithCompletionHandler:(id)a3;
- (void)activateWithCompletionBlock:(id)a3;
- (void)clearStatusBar;
- (void)statusBarCoordinator:(id)a3 invalidatedRegistrationWithError:(id)a4;
@end

@implementation DVTiOSDeviceGlobalStatusIndicator

- (DVTiOSDeviceGlobalStatusIndicator)initWithConfiguration:(id)a3 stoppedByUserBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = DVTiOSDeviceGlobalStatusIndicator;
  v9 = [(DVTiOSDeviceGlobalStatusIndicator *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, a3);
    v11 = _Block_copy(v8);
    stoppedByUserBlock = v10->_stoppedByUserBlock;
    v10->_stoppedByUserBlock = v11;

    v13 = os_log_create("com.apple.dt.DVTInstrumentsFoundation", "DeviceStatusIndicator");
    statusIndicatorLog = v10->_statusIndicatorLog;
    v10->_statusIndicatorLog = v13;
  }

  return v10;
}

- (void)activateWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D66C48] assertionWithStatusBarStyleOverrides:0x80000 forPID:getpid() exclusive:1 showsWhenForeground:1];
  statusBarAssertion = self->_statusBarAssertion;
  self->_statusBarAssertion = v5;

  v7 = [(DVTiOSDeviceGlobalStatusIndicator *)self configuration];
  v8 = [v7 title];
  [(SBSStatusBarStyleOverridesAssertion *)self->_statusBarAssertion setStatusString:v8];

  v9 = objc_alloc_init(MEMORY[0x277D66C50]);
  coordinator = self->_coordinator;
  self->_coordinator = v9;

  [(SBSStatusBarStyleOverridesCoordinator *)self->_coordinator setDelegate:self];
  objc_initWeak(&location, self);
  v11 = self->_coordinator;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_247FB2B6C;
  v16[3] = &unk_278EF2D10;
  objc_copyWeak(&v17, &location);
  [(SBSStatusBarStyleOverridesCoordinator *)v11 setRegisteredStyleOverrides:0x80000 reply:v16];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_247FB2BD8;
  v13[3] = &unk_278EF2D38;
  objc_copyWeak(&v15, &location);
  v12 = v4;
  v14 = v12;
  [(DVTiOSDeviceGlobalStatusIndicator *)self acquireStatusBarWithCompletionHandler:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)acquireStatusBarWithCompletionHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = dispatch_get_global_queue(25, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_247FB2D34;
  v7[3] = &unk_278EF2D60;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  objc_copyWeak(&v9, &location);
  dispatch_async(v5, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)clearStatusBar
{
  v3 = [(DVTiOSDeviceGlobalStatusIndicator *)self statusBarAssertion];
  [v3 invalidate];

  [(DVTiOSDeviceGlobalStatusIndicator *)self setStatusBarAssertion:0];
  userNotificationStopCondition = self->_userNotificationStopCondition;
  if (userNotificationStopCondition)
  {

    CFUserNotificationCancel(userNotificationStopCondition);
  }
}

- (BOOL)_showStopConditionAlert
{
  v16[4] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277CBF188];
  v3 = [(DVTiOSDeviceGlobalStatusIndicator *)self configuration];
  v4 = [v3 title];
  v16[0] = v4;
  v15[1] = *MEMORY[0x277CBF198];
  v5 = [(DVTiOSDeviceGlobalStatusIndicator *)self configuration];
  v6 = [v5 informationText];
  v7 = *MEMORY[0x277CBF218];
  v16[1] = v6;
  v16[2] = @"Continue Recording";
  v8 = *MEMORY[0x277CBF1E8];
  v15[2] = v7;
  v15[3] = v8;
  v16[3] = @"Stop Recording";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];

  self->_userNotificationStopCondition = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 0, 0, v9);
  v10 = [(DVTiOSDeviceGlobalStatusIndicator *)self userNotificationStopCondition];
  if (v10)
  {
    v14 = 0;
    CFUserNotificationReceiveResponse(self->_userNotificationStopCondition, 0.0, &v14);
    if (!v14)
    {
      v11 = [(DVTiOSDeviceGlobalStatusIndicator *)self stoppedByUserBlock];
      v11[2]();

      [(DVTiOSDeviceGlobalStatusIndicator *)self clearStatusBar];
    }

    CFRelease(self->_userNotificationStopCondition);
    self->_userNotificationStopCondition = 0;
  }

  result = v10 != 0;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)statusBarCoordinator:(id)a3 receivedTapWithContext:(id)a4 completionBlock:(id)a5
{
  v6 = a5;
  [(DVTiOSDeviceGlobalStatusIndicator *)self _showStopConditionAlert];
  v6[2](v6);

  return 1;
}

- (void)statusBarCoordinator:(id)a3 invalidatedRegistrationWithError:(id)a4
{
  statusIndicatorLog = self->_statusIndicatorLog;
  if (os_log_type_enabled(statusIndicatorLog, OS_LOG_TYPE_ERROR))
  {
    sub_24802E9B8(statusIndicatorLog, a4);
  }
}

@end