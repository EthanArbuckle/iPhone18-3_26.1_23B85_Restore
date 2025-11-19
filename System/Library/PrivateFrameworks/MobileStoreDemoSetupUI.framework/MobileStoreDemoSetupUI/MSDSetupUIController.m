@interface MSDSetupUIController
+ (MSDSetupUIController)sharedInstance;
- (BOOL)hasSecureCookie;
- (void)_restoreLocationServicesState;
- (void)_setupComplete:(BOOL)a3;
- (void)disconnectWiFi;
- (void)enableLocationServices;
- (void)popTopmostViewController;
- (void)pushViewController:(id)a3 andRemoveTopmostView:(BOOL)a4;
- (void)quitToCustomerFlow;
- (void)quitToHomeScreen;
- (void)quitToOfflineMode;
- (void)saveLocationServicesState;
- (void)setCompletionHandler:(id)a3;
- (void)setHelpMenuRowSelection:(id)a3;
- (void)setupCompleteWithStoreID:(id)a3;
@end

@implementation MSDSetupUIController

+ (MSDSetupUIController)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[MSDSetupUIController sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

uint64_t __38__MSDSetupUIController_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(MSDSetupUIController);

  return MEMORY[0x2821F96F8]();
}

- (void)pushViewController:(id)a3 andRemoveTopmostView:(BOOL)a4
{
  v6 = a3;
  v7 = [(MSDSetupUIController *)self navigationController];
  v8 = [v7 topViewController];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__MSDSetupUIController_pushViewController_andRemoveTopmostView___block_invoke;
  v11[3] = &unk_2798F1DD8;
  v11[4] = self;
  v12 = v6;
  v14 = a4;
  v13 = v8;
  v9 = v8;
  v10 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

void __64__MSDSetupUIController_pushViewController_andRemoveTopmostView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__MSDSetupUIController_pushViewController_andRemoveTopmostView___block_invoke_2;
  v6[3] = &unk_2798F1DB0;
  v9 = *(a1 + 56);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v2 pushViewController:v3 completion:v6];
}

void __64__MSDSetupUIController_pushViewController_andRemoveTopmostView___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) == 1)
  {
    v2 = defaultLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v10 = 138543362;
      v11 = objc_opt_class();
      v4 = v11;
      _os_log_impl(&dword_259BCA000, v2, OS_LOG_TYPE_DEFAULT, "Removing top most view: %{public}@", &v10, 0xCu);
    }

    v5 = [*(a1 + 40) navigationController];
    v6 = [v5 viewControllers];
    v7 = [v6 mutableCopy];

    [v7 removeObject:*(a1 + 32)];
    v8 = [*(a1 + 40) navigationController];
    [v8 setViewControllers:v7];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)popTopmostViewController
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__MSDSetupUIController_popTopmostViewController__block_invoke;
  block[3] = &unk_2798F1C48;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __48__MSDSetupUIController_popTopmostViewController__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = [v2 popViewControllerAnimated:1];
}

- (void)setCompletionHandler:(id)a3
{
  v4 = MEMORY[0x259CB1050](a3, a2);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setupCompleteWithStoreID:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = defaultLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&dword_259BCA000, v5, OS_LOG_TYPE_DEFAULT, "MobileStoreDemo setup UI complete with store ID: %@", buf, 0xCu);
  }

  if (v4)
  {
    v12 = *MEMORY[0x277D29550];
    v13 = v4;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = defaultLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v6;
    _os_log_impl(&dword_259BCA000, v7, OS_LOG_TYPE_DEFAULT, "Starting demod with options: %{public}@", buf, 0xCu);
  }

  v8 = [MEMORY[0x277D29520] sharedInstance];
  [v8 sendAutoEnrollmentResult:v4 withStoreId:self->_helpMenuUserTapped withHelpMenuRowSelection:self->_autoEnrollmentTimeStamp];

  v9 = [MEMORY[0x277D29520] sharedInstance];
  v10 = [v9 prepareWithOptions:v6];

  [(MSDSetupUIController *)self _setupComplete:v10];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)quitToCustomerFlow
{
  v3 = defaultLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_259BCA000, v3, OS_LOG_TYPE_DEFAULT, "MobileStoreDemo setup UI exit, proceed to customer Buddy flow", v4, 2u);
  }

  [(MSDSetupUIController *)self _setupComplete:0];
}

- (void)quitToOfflineMode
{
  v3 = defaultLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_259BCA000, v3, OS_LOG_TYPE_DEFAULT, "MobileStoreDemo setup UI exit, proceed to offline mode", v6, 2u);
  }

  v4 = [MEMORY[0x277D29520] sharedInstance];
  v5 = [v4 enterOfflineModeWithOptions:0 error:0];

  [(MSDSetupUIController *)self _setupComplete:v5];
}

- (BOOL)hasSecureCookie
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D29520] sharedInstance];
  v3 = [v2 typeOfDemoDevice];

  v5 = v3 == 5 || v3 == 3;
  v6 = defaultLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = v5;
    _os_log_impl(&dword_259BCA000, v6, OS_LOG_TYPE_DEFAULT, "Device has secure cookie: %d", v9, 8u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)quitToHomeScreen
{
  v3 = defaultLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_259BCA000, v3, OS_LOG_TYPE_DEFAULT, "MobileStoreDemo setup UI exit, proceed to home screen", v4, 2u);
  }

  [(MSDSetupUIController *)self _setupComplete:1];
}

- (void)setHelpMenuRowSelection:(id)a3
{
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:0 error:0];
  helpMenuUserTapped = self->_helpMenuUserTapped;
  self->_helpMenuUserTapped = v4;

  MEMORY[0x2821F96F8]();
}

void __54__MSDSetupUIController_markAsNotDemoAndEraseDataPlan___block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = defaultLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109378;
    v8[1] = a2;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_259BCA000, v6, OS_LOG_TYPE_DEFAULT, "MarkAsNotDemo returned success: %d; error: %{public}@", v8, 0x12u);
  }

  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  v7 = *MEMORY[0x277D85DE8];
}

- (void)disconnectWiFi
{
  v2 = [MEMORY[0x277D29520] sharedInstance];
  [v2 disconnectAndForgetWiFi:0];
}

- (void)enableLocationServices
{
  v2 = defaultLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_259BCA000, v2, OS_LOG_TYPE_DEFAULT, "Enabling location services...", v3, 2u);
  }

  [MEMORY[0x277CBFC10] setLocationServicesEnabled:1];
}

- (void)saveLocationServicesState
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__MSDSetupUIController_saveLocationServicesState__block_invoke;
  block[3] = &unk_2798F1C48;
  block[4] = self;
  if (saveLocationServicesState_onceToken != -1)
  {
    dispatch_once(&saveLocationServicesState_onceToken, block);
  }
}

void __49__MSDSetupUIController_saveLocationServicesState__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setOriginalLocationServicesState:{objc_msgSend(*(a1 + 32), "hasSecureCookie")}];
  v2 = dispatch_semaphore_create(0);
  v3 = dispatch_time(0, 30000000000);
  v4 = defaultLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_259BCA000, v4, OS_LOG_TYPE_DEFAULT, "Saving original Location Services state...", buf, 2u);
  }

  v5 = dispatch_get_global_queue(21, 0);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __49__MSDSetupUIController_saveLocationServicesState__block_invoke_25;
  v13 = &unk_2798F1D60;
  v14 = *(a1 + 32);
  v6 = v2;
  v15 = v6;
  dispatch_async(v5, &v10);

  if (dispatch_semaphore_wait(v6, v3))
  {
    v7 = defaultLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) originalLocationServicesState];
      *buf = 67109376;
      v17 = 30;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(&dword_259BCA000, v7, OS_LOG_TYPE_DEFAULT, "Timed out waiting for location services state after %ds; assume Location Services is %{BOOL}d", buf, 0xEu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

intptr_t __49__MSDSetupUIController_saveLocationServicesState__block_invoke_25(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setOriginalLocationServicesState:{objc_msgSend(MEMORY[0x277CBFC10], "locationServicesEnabled:", 0)}];
  v2 = defaultLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) originalLocationServicesState];
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_259BCA000, v2, OS_LOG_TYPE_DEFAULT, "Saved original Location Services state as %{BOOL}d", v6, 8u);
  }

  result = dispatch_semaphore_signal(*(a1 + 40));
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_setupComplete:(BOOL)a3
{
  [(MSDSetupUIController *)self _restoreLocationServicesState];
  v5 = [(MSDSetupUIController *)self completionHandler];

  if (v5)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__MSDSetupUIController__setupComplete___block_invoke;
    block[3] = &unk_2798F1E28;
    v9 = a3;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v6 = defaultLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_259BCA000, v6, OS_LOG_TYPE_DEFAULT, "No completion handler provided", v7, 2u);
    }
  }
}

void __39__MSDSetupUIController__setupComplete___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = defaultLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_259BCA000, v2, OS_LOG_TYPE_DEFAULT, "Calling MobileStoreDemoSetupUI completion handler with success=%{BOOL}d", v6, 8u);
  }

  v4 = [*(a1 + 32) completionHandler];
  v4[2](v4, *(a1 + 40));

  v5 = *MEMORY[0x277D85DE8];
}

void __59__MSDSetupUIController__startEACSWithReason_eraseDataPlan___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = defaultLogHandle();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v9 = 138543362;
      v10 = v2;
      v5 = "Request to erase all content and settings failed =  %{public}@";
      v6 = v3;
      v7 = 12;
LABEL_6:
      _os_log_impl(&dword_259BCA000, v6, OS_LOG_TYPE_DEFAULT, v5, &v9, v7);
    }
  }

  else if (v4)
  {
    LOWORD(v9) = 0;
    v5 = "Reset was successful";
    v6 = v3;
    v7 = 2;
    goto LABEL_6;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_restoreLocationServicesState
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = defaultLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = [(MSDSetupUIController *)self originalLocationServicesState];
    _os_log_impl(&dword_259BCA000, v3, OS_LOG_TYPE_DEFAULT, "Restoring Location Services state to %{BOOL}d", v5, 8u);
  }

  [MEMORY[0x277CBFC10] setLocationServicesEnabled:{-[MSDSetupUIController originalLocationServicesState](self, "originalLocationServicesState")}];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)markAsNotDemoAndEraseDataPlan:(NSObject *)a1 .cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_259BCA000, a1, OS_LOG_TYPE_DEFAULT, "Skipping making the device as not demo...", v2, 2u);
  }
}

@end