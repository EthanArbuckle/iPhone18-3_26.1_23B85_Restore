@interface HUHomeControlServiceManager
+ (id)sharedInstance;
- (void)_launchServiceWithContext:(id)context;
- (void)_launchViewServiceSuspended;
- (void)_presentAlertForError:(id)error;
- (void)dismissService;
- (void)launchServiceSuspendedWithUserInfo:(id)info;
- (void)launchServiceWithContext:(id)context;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation HUHomeControlServiceManager

+ (id)sharedInstance
{
  if (qword_281121F80 != -1)
  {
    dispatch_once(&qword_281121F80, &__block_literal_global_138);
  }

  v3 = _MergedGlobals_625;

  return v3;
}

void __45__HUHomeControlServiceManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(HUHomeControlServiceManager);
  v1 = _MergedGlobals_625;
  _MergedGlobals_625 = v0;
}

- (void)launchServiceWithContext:(id)context
{
  contextCopy = context;
  serviceType = [contextCopy serviceType];
  serviceType2 = [contextCopy serviceType];
  if (![contextCopy serviceType] || serviceType == 1 || serviceType2 == 2)
  {
    presentingViewController = [contextCopy presentingViewController];
    presentingViewController = self->_presentingViewController;
    self->_presentingViewController = presentingViewController;

    objc_initWeak(location, self);
    v10 = MEMORY[0x277CF0B60];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __56__HUHomeControlServiceManager_launchServiceWithContext___block_invoke;
    v16[3] = &unk_277DBEA40;
    objc_copyWeak(&v17, location);
    v11 = [v10 responderWithHandler:v16];
    v12 = MEMORY[0x277D85CD0];
    v13 = MEMORY[0x277D85CD0];
    [v11 setQueue:v12];

    v14 = [objc_alloc(MEMORY[0x277CF0B58]) initWithInfo:0 responder:v11];
    v15 = [MEMORY[0x277CBEB98] setWithObject:v14];
    [contextCopy setActions:v15];

    [(HUHomeControlServiceManager *)self _launchServiceWithContext:contextCopy];
    objc_destroyWeak(&v17);
    objc_destroyWeak(location);
  }

  else
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_error_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_ERROR, "Launching Home Control Service NOT permitted", location, 2u);
    }
  }
}

void __56__HUHomeControlServiceManager_launchServiceWithContext___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 error];
  if (v5)
  {
    v6 = v5;
    v7 = [v3 error];
    v8 = [v7 domain];
    if (([v8 isEqualToString:*MEMORY[0x277D13850]] & 1) == 0)
    {

LABEL_8:
      goto LABEL_9;
    }

    v9 = [WeakRetained presentingViewController];

    if (v9)
    {
      v10 = HFLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [WeakRetained presentingViewController];
        v12 = 138412546;
        v13 = v3;
        v14 = 2112;
        v15 = v11;
        _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "Presenting error %@ from presentingViewController = %@", &v12, 0x16u);
      }

      v6 = [v3 error];
      [WeakRetained _presentAlertForError:v6];
      goto LABEL_8;
    }
  }

LABEL_9:
}

- (void)launchServiceSuspendedWithUserInfo:(id)info
{
  [(HUHomeControlServiceManager *)self _launchViewServiceSuspended];
  v4 = [(HUHomeControlServiceManager *)self suspendedServiceClientCount]+ 1;

  [(HUHomeControlServiceManager *)self setSuspendedServiceClientCount:v4];
}

- (void)_launchServiceWithContext:(id)context
{
  contextCopy = context;
  userInfo = [contextCopy userInfo];
  v5 = [objc_alloc(MEMORY[0x277D66BD8]) initWithServiceName:@"com.apple.Home.HomeControlService" viewControllerClassName:@"HCSRemoteAlertServiceViewController"];
  v6 = objc_alloc_init(MEMORY[0x277D66BD0]);
  [v6 setUserInfo:userInfo];
  actions = [contextCopy actions];

  [v6 setActions:actions];
  v8 = [MEMORY[0x277D66BF0] newHandleWithDefinition:v5 configurationContext:v6];
  [v8 addObserver:self];
  v9 = objc_alloc_init(MEMORY[0x277D66BC0]);
  [v8 activateWithContext:v9];
  [(HUHomeControlServiceManager *)self setRemoteAlertHandle:v8];
}

- (void)dismissService
{
  remoteAlertHandle = [(HUHomeControlServiceManager *)self remoteAlertHandle];

  if (remoteAlertHandle)
  {
    remoteAlertHandle2 = [(HUHomeControlServiceManager *)self remoteAlertHandle];
    [remoteAlertHandle2 removeObserver:self];

    remoteAlertHandle3 = [(HUHomeControlServiceManager *)self remoteAlertHandle];
    [remoteAlertHandle3 invalidate];

    [(HUHomeControlServiceManager *)self setRemoteAlertHandle:0];

    [(HUHomeControlServiceManager *)self setPresentingViewController:0];
  }

  else
  {
    [(HUHomeControlServiceManager *)self setSuspendedServiceClientCount:[(HUHomeControlServiceManager *)self suspendedServiceClientCount]- 1];
    if (![(HUHomeControlServiceManager *)self suspendedServiceClientCount])
    {
      mEMORY[0x277D0AE18] = [MEMORY[0x277D0AE18] sharedService];
      [mEMORY[0x277D0AE18] terminateApplication:@"com.apple.Home.HomeControlService" forReason:5 andReport:0 withDescription:&stru_2823E0EE8];
    }
  }
}

- (void)_launchViewServiceSuspended
{
  v5[1] = *MEMORY[0x277D85DE8];
  mEMORY[0x277D0AE18] = [MEMORY[0x277D0AE18] sharedService];
  v4 = *MEMORY[0x277D0ABF0];
  v5[0] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [mEMORY[0x277D0AE18] openApplication:@"com.apple.Home.HomeControlService" options:v3 withResult:&__block_literal_global_20_2];
}

void __58__HUHomeControlServiceManager__launchViewServiceSuspended__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = HFLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_error_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_ERROR, "Error opening Home Control Service Alert using Frontboard System Service [%@]", &v4, 0xCu);
    }
  }
}

- (void)_presentAlertForError:(id)error
{
  errorCopy = error;
  localizedDescription = [errorCopy localizedDescription];
  code = [errorCopy code];

  if (code <= 90)
  {
    if (code > 87)
    {
      if (code == 88)
      {
        v63 = _HULocalizedStringWithDefaultValue(@"HUDropIn_ErrorAlert_Ended_Title", @"HUDropIn_ErrorAlert_Ended_Title", 1);
        HULocalizedStringWithFormat(@"HUDropIn_ErrorAlert_FailedDuringCall_Description", @"%@", v38, v39, v40, v41, v42, v43, localizedDescription);
      }

      else
      {
        v63 = _HULocalizedStringWithDefaultValue(@"HUDropIn_ErrorAlert_Ended_Title", @"HUDropIn_ErrorAlert_Ended_Title", 1);
        if (code == 89)
        {
          HULocalizedStringWithFormat(@"HUDropIn_ErrorAlert_FailedDuringCall_TryAgain_Description", @"%@", v7, v8, v9, v10, v11, v12, localizedDescription);
        }

        else
        {
          HULocalizedStringWithFormat(@"HUDropIn_ErrorAlert_Ended_Description", @"%@", v7, v8, v9, v10, v11, v12, localizedDescription);
        }
      }

      goto LABEL_25;
    }

    if (code == 86)
    {
      v63 = _HULocalizedStringWithDefaultValue(@"HUDropIn_ErrorAlert_UnableToConnect_Title", @"HUDropIn_ErrorAlert_UnableToConnect_Title", 1);
      HULocalizedStringWithFormat(@"HUDropIn_ErrorAlert_FailedToStart_Description", @"%@", v31, v32, v33, v34, v35, v36, localizedDescription);
      goto LABEL_25;
    }

    if (code == 87)
    {
      v63 = _HULocalizedStringWithDefaultValue(@"HUDropIn_ErrorAlert_UnableToConnect_Title", @"HUDropIn_ErrorAlert_UnableToConnect_Title", 1);
      HULocalizedStringWithFormat(@"HUDropIn_ErrorAlert_FailedToStart_TryAgain_Description", @"%@", v19, v20, v21, v22, v23, v24, localizedDescription);
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (code <= 92)
  {
    if (code != 91)
    {
      v63 = _HULocalizedStringWithDefaultValue(@"HUDropIn_ErrorAlert_AlreadyInProgress_Title", @"HUDropIn_ErrorAlert_AlreadyInProgress_Title", 1);
      HULocalizedStringWithFormat(@"HUDropIn_ErrorAlert_AlreadyInProgress_Description", @"%@", v25, v26, v27, v28, v29, v30, localizedDescription);
      goto LABEL_25;
    }

    v63 = _HULocalizedStringWithDefaultValue(@"HUDropIn_ErrorAlert_NoLongerAvailable_Title", @"HUDropIn_ErrorAlert_NoLongerAvailable_Title", 1);
    v37 = @"HUDropIn_ErrorAlert_WindowExpired_Description";
LABEL_20:
    v44 = _HULocalizedStringWithDefaultValue(v37, v37, 1);
LABEL_26:
    v51 = v44;
    goto LABEL_27;
  }

  if (code == 93)
  {
    v63 = _HULocalizedStringWithDefaultValue(@"HUDropIn_ErrorAlert_UnableToConnect_Title", @"HUDropIn_ErrorAlert_UnableToConnect_Title", 1);
    v37 = @"HUDropIn_ErrorAlert_UserAccessNotAllowed_Description";
    goto LABEL_20;
  }

  if (code != 94)
  {
    if (code == 95)
    {
      v63 = _HULocalizedStringWithDefaultValue(@"HUDropIn_ErrorAlert_UnableToConnect_Title", @"HUDropIn_ErrorAlert_UnableToConnect_Title", 1);
      HULocalizedStringWithFormat(@"HUDropIn_ErrorAlert_HostDevice_OnActiveCall_Description", @"%@", v13, v14, v15, v16, v17, v18, localizedDescription);
      v44 = LABEL_25:;
      goto LABEL_26;
    }

LABEL_24:
    v63 = _HULocalizedStringWithDefaultValue(@"HUDropIn_ErrorAlert_Ended_Title", @"HUDropIn_ErrorAlert_Ended_Title", 1);
    HULocalizedStringWithFormat(@"HUDropIn_ErrorAlert_ThisDevice_OnActiveCall_Description", @"%@", v52, v53, v54, v55, v56, v57, localizedDescription);
    goto LABEL_25;
  }

  v63 = _HULocalizedStringWithDefaultValue(@"HUDropIn_ErrorAlert_OnActiveCall_Title", @"HUDropIn_ErrorAlert_OnActiveCall_Title", 1);
  v51 = HULocalizedStringWithFormat(@"HUDropIn_ErrorAlert_ThisDevice_OnActiveCall_Description", @"%@", v45, v46, v47, v48, v49, v50, localizedDescription);
  if (!v51)
  {
    NSLog(&cfstr_CouldnTLocaliz_1.isa, 0);
  }

LABEL_27:
  v58 = [MEMORY[0x277D75110] alertControllerWithTitle:v63 message:v51 preferredStyle:1];
  v59 = MEMORY[0x277D750F8];
  v60 = _HULocalizedStringWithDefaultValue(@"HUOkTitle", @"HUOkTitle", 1);
  v61 = [v59 actionWithTitle:v60 style:0 handler:0];
  [v58 addAction:v61];

  presentingViewController = [(HUHomeControlServiceManager *)self presentingViewController];
  [presentingViewController presentViewController:v58 animated:1 completion:0];
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  remoteAlertHandle = [(HUHomeControlServiceManager *)self remoteAlertHandle];
  v6 = [remoteAlertHandle isEqual:deactivateCopy];

  if (v6)
  {
    remoteAlertHandle2 = [(HUHomeControlServiceManager *)self remoteAlertHandle];
    [remoteAlertHandle2 removeObserver:self];

    [(HUHomeControlServiceManager *)self setRemoteAlertHandle:0];
  }
}

@end