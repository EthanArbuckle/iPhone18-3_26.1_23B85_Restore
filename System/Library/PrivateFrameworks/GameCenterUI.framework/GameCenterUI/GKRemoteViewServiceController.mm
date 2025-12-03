@interface GKRemoteViewServiceController
- (BOOL)serviceNeedsFriendCode;
- (GKHostedViewController)managingViewController;
- (void)_performBlockAfterViewDidAppearIfNeeded;
- (void)_performSelectorAfterAppearingOrTimeOut:(SEL)out;
- (void)dealloc;
- (void)nudge;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)populateInitialStateForRemoteView:(id)view;
- (void)remoteViewControllerIsCanceling;
- (void)remoteViewControllerIsFinishing;
- (void)setValue:(id)value forKeyPath:(id)path;
- (void)setupRemoteView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewServiceDidTerminateWithError:(id)error;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation GKRemoteViewServiceController

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(GKRemoteViewServiceController *)self observationInfo])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    observedKeyPaths = [(GKRemoteViewServiceController *)self observedKeyPaths];
    v4 = [observedKeyPaths countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(observedKeyPaths);
          }

          [(GKRemoteViewServiceController *)self removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v7++) context:0];
        }

        while (v5 != v7);
        v5 = [observedKeyPaths countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }

  v8.receiver = self;
  v8.super_class = GKRemoteViewServiceController;
  [(GKRemoteViewServiceController *)&v8 dealloc];
}

- (BOOL)serviceNeedsFriendCode
{
  managingViewController = [(GKRemoteViewServiceController *)self managingViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)populateInitialStateForRemoteView:(id)view
{
  viewCopy = view;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:getpid()];
  [viewCopy setObject:v4 forKey:@"HostPID"];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v7 = 0.0;
  if (userInterfaceIdiom != 1)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] statusBarHeight];
    v7 = v9;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  [viewCopy setObject:v10 forKey:@"StatusBarHeight"];

  if ([(GKRemoteViewServiceController *)self serviceNeedsLocalPlayer])
  {
    localPlayer = [MEMORY[0x277D0C138] localPlayer];
    [viewCopy setObject:localPlayer forKey:@"LocalPlayer"];
  }

  if ([(GKRemoteViewServiceController *)self serviceNeedsFriendCode])
  {
    managingViewController = [(GKRemoteViewServiceController *)self managingViewController];
    friendCode = [managingViewController friendCode];

    if (friendCode)
    {
      friendCode2 = [managingViewController friendCode];
      [viewCopy setObject:friendCode2 forKey:@"GKFriendCodeKey"];
    }

    friendSupportPageURL = [managingViewController friendSupportPageURL];

    if (friendSupportPageURL)
    {
      friendSupportPageURL2 = [managingViewController friendSupportPageURL];
      [viewCopy setObject:friendSupportPageURL2 forKey:@"GKFriendSupportPageURLKey"];
    }

    recipients = [managingViewController recipients];

    if (recipients)
    {
      recipients2 = [managingViewController recipients];
      [viewCopy setObject:recipients2 forKey:@"GKFriendRecipientsKey"];
    }

    chatGUID = [managingViewController chatGUID];

    if (chatGUID)
    {
      chatGUID2 = [managingViewController chatGUID];
      [viewCopy setObject:chatGUID2 forKey:@"GKChatGUIDKey"];
    }

    hostApp = [managingViewController hostApp];

    if (hostApp)
    {
      hostApp2 = [managingViewController hostApp];
      [viewCopy setObject:hostApp2 forKey:@"GKHostAppKey"];
    }
  }
}

- (void)nudge
{
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy nudge];
}

- (void)setupRemoteView
{
  v29 = *MEMORY[0x277D85DE8];
  if ([(GKRemoteViewServiceController *)self serviceNeedsLocalPlayer])
  {
    if (self->_didSetRemoteGame)
    {
      [(GKRemoteViewServiceController *)self nudge];
    }

    else
    {
      managingViewController = [(GKRemoteViewServiceController *)self managingViewController];
      [managingViewController _beginDelayingPresentation];
      if (!*MEMORY[0x277D0C2A0])
      {
        v4 = GKOSLoggers();
      }

      if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
      {
        [GKRemoteViewServiceController setupRemoteView];
      }

      v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
      [(GKRemoteViewServiceController *)self populateInitialStateForRemoteView:v5];
      objc_initWeak(location, self);
      serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __48__GKRemoteViewServiceController_setupRemoteView__block_invoke;
      v24[3] = &unk_27966A8E0;
      objc_copyWeak(&v26, location);
      v7 = managingViewController;
      v25 = v7;
      [serviceViewControllerProxy setInitialState:v5 withReply:v24];

      objc_destroyWeak(&v26);
      objc_destroyWeak(location);
    }
  }

  else
  {
    [(GKRemoteViewServiceController *)self nudge];
    self->_didSetRemoteGame = 1;
  }

  selfCopy = self;
  if (![(GKRemoteViewServiceController *)self observationInfo])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    observedKeyPaths = [(GKRemoteViewServiceController *)self observedKeyPaths];
    v10 = [observedKeyPaths countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v10)
    {
      v12 = *v21;
      v13 = MEMORY[0x277D0C2A0];
      v14 = MEMORY[0x277D0C2A8];
      *&v11 = 138412290;
      v19 = v11;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(observedKeyPaths);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          [(GKRemoteViewServiceController *)self addObserver:self forKeyPath:v16 options:0 context:0, v19];
          if (!*v13)
          {
            v17 = GKOSLoggers();
          }

          v18 = *v14;
          if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(location[0]) = v19;
            *(location + 4) = v16;
            _os_log_debug_impl(&dword_24DE53000, v18, OS_LOG_TYPE_DEBUG, "observing keyPath %@", location, 0xCu);
          }
        }

        v10 = [observedKeyPaths countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v10);
    }
  }
}

void __48__GKRemoteViewServiceController_setupRemoteView__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) _endDelayingPresentation];
  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
  }

  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    __48__GKRemoteViewServiceController_setupRemoteView__block_invoke_cold_1();
  }

  [WeakRetained setDidSetRemoteGame:a2];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  observedKeyPaths = [(GKRemoteViewServiceController *)self observedKeyPaths];
  v8 = [observedKeyPaths containsObject:pathCopy];

  if (v8)
  {
    v9 = [(GKRemoteViewServiceController *)self valueForKeyPath:pathCopy];
    [(GKRemoteViewServiceController *)self setValue:v9 forKeyPath:pathCopy];
  }
}

- (void)setValue:(id)value forKeyPath:(id)path
{
  valueCopy = value;
  pathCopy = path;
  if (!self->_dirtyProperties)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(GKRemoteViewServiceController *)self setDirtyProperties:dictionary];
  }

  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  managingViewController = [(GKRemoteViewServiceController *)self managingViewController];
  v11 = MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v12 = GKOSLoggers();
  }

  v13 = MEMORY[0x277D0C2A8];
  v14 = *MEMORY[0x277D0C2A8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    [GKRemoteViewServiceController setValue:pathCopy forKeyPath:v14];
  }

  dirtyProperties = [(GKRemoteViewServiceController *)self dirtyProperties];
  v16 = dirtyProperties;
  if (valueCopy)
  {
    [dirtyProperties setObject:valueCopy forKey:pathCopy];
  }

  else
  {
    [dirtyProperties removeObjectForKey:pathCopy];
  }

  [managingViewController _beginDelayingPresentation];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __53__GKRemoteViewServiceController_setValue_forKeyPath___block_invoke;
  v22[3] = &unk_27966A908;
  v17 = pathCopy;
  v23 = v17;
  v18 = valueCopy;
  v24 = v18;
  selfCopy = self;
  v19 = managingViewController;
  v26 = v19;
  [serviceViewControllerProxy setValue:v18 forKeyPath:v17 withReply:v22];
  if (!*v11)
  {
    v20 = GKOSLoggers();
  }

  v21 = *v13;
  if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEBUG))
  {
    [(GKRemoteViewServiceController *)v17 setValue:v21 forKeyPath:self];
  }
}

uint64_t __53__GKRemoteViewServiceController_setValue_forKeyPath___block_invoke(uint64_t a1, int a2)
{
  v3 = MEMORY[0x277D0C2A0];
  v4 = *MEMORY[0x277D0C2A0];
  v5 = MEMORY[0x277D0C2A8];
  if (a2)
  {
    if (!v4)
    {
      v6 = GKOSLoggers();
    }

    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
    {
      __53__GKRemoteViewServiceController_setValue_forKeyPath___block_invoke_cold_2();
    }

    v7 = [*(a1 + 48) dirtyProperties];
    [v7 removeObjectForKey:*(a1 + 32)];
  }

  else
  {
    if (!v4)
    {
      v8 = GKOSLoggers();
    }

    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
    {
      __53__GKRemoteViewServiceController_setValue_forKeyPath___block_invoke_cold_1();
    }
  }

  if (!*v3)
  {
    v9 = GKOSLoggers();
  }

  v10 = *v5;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __53__GKRemoteViewServiceController_setValue_forKeyPath___block_invoke_cold_3(a1, v10);
  }

  return [*(a1 + 56) _endDelayingPresentation];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  local = [MEMORY[0x277D0C138] local];
  [local hideAccessPoint];

  [(GKRemoteViewServiceController *)self setupRemoteView];
  v9.receiver = self;
  v9.super_class = GKRemoteViewServiceController;
  [(_UIRemoteViewController *)&v9 viewWillAppear:appearCopy];
  if (!*MEMORY[0x277D0C2A0])
  {
    v6 = GKOSLoggers();
  }

  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    [GKRemoteViewServiceController viewWillAppear:];
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom != 1 || *MEMORY[0x277D0C258] == 1 && (*MEMORY[0x277D0C8F0] & 1) == 0)
  {
    [(UIViewController *)self _gkSaveStatusBarStyleAnimated:appearCopy setToStyle:[(GKRemoteViewServiceController *)self _desiredStatusBarStyle]];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = GKRemoteViewServiceController;
  [(_UIRemoteViewController *)&v6 viewDidAppear:appear];
  if (!*MEMORY[0x277D0C2A0])
  {
    v4 = GKOSLoggers();
  }

  v5 = *MEMORY[0x277D0C2A8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    [GKRemoteViewServiceController viewDidAppear:v5];
  }

  [(GKRemoteViewServiceController *)self setViewDidAppear:1];
  [(GKRemoteViewServiceController *)self _performBlockAfterViewDidAppearIfNeeded];
}

- (void)_performBlockAfterViewDidAppearIfNeeded
{
  if (!*MEMORY[0x277D0C2A0])
  {
    v3 = GKOSLoggers();
  }

  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    [GKRemoteViewServiceController _performBlockAfterViewDidAppearIfNeeded];
  }

  blockToPerformAfterViewDidAppear = [(GKRemoteViewServiceController *)self blockToPerformAfterViewDidAppear];
  v5 = blockToPerformAfterViewDidAppear;
  if (blockToPerformAfterViewDidAppear)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __72__GKRemoteViewServiceController__performBlockAfterViewDidAppearIfNeeded__block_invoke;
    v6[3] = &unk_27966A480;
    v6[4] = self;
    v7 = blockToPerformAfterViewDidAppear;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }
}

uint64_t __72__GKRemoteViewServiceController__performBlockAfterViewDidAppearIfNeeded__block_invoke(uint64_t a1)
{
  if (!*MEMORY[0x277D0C2A0])
  {
    v2 = GKOSLoggers();
  }

  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    __72__GKRemoteViewServiceController__performBlockAfterViewDidAppearIfNeeded__block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
  return [*(a1 + 32) setBlockToPerformAfterViewDidAppear:0];
}

- (void)_performSelectorAfterAppearingOrTimeOut:(SEL)out
{
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__GKRemoteViewServiceController__performSelectorAfterAppearingOrTimeOut___block_invoke;
  v7[3] = &unk_27966A930;
  objc_copyWeak(v8, &location);
  v8[1] = out;
  [(GKRemoteViewServiceController *)self setBlockToPerformAfterViewDidAppear:v7];
  v5 = dispatch_time(0, 3000000000);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__GKRemoteViewServiceController__performSelectorAfterAppearingOrTimeOut___block_invoke_2;
  v6[3] = &unk_2796699A8;
  v6[4] = self;
  dispatch_after(v5, MEMORY[0x277D85CD0], v6);
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

void __73__GKRemoteViewServiceController__performSelectorAfterAppearingOrTimeOut___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _gkPerformSelector:*(a1 + 40)];
}

uint64_t __73__GKRemoteViewServiceController__performSelectorAfterAppearingOrTimeOut___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setViewDidAppear:1];
  v2 = *(a1 + 32);

  return [v2 _performBlockAfterViewDidAppearIfNeeded];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = GKRemoteViewServiceController;
  [(_UIRemoteViewController *)&v4 viewWillDisappear:disappear];
  if (!*MEMORY[0x277D0C2A0])
  {
    v3 = GKOSLoggers();
  }

  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    [GKRemoteViewServiceController viewWillDisappear:];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = GKRemoteViewServiceController;
  [(_UIRemoteViewController *)&v7 viewDidDisappear:?];
  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
  }

  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    [GKRemoteViewServiceController viewDidDisappear:];
  }

  [(UIViewController *)self _gkRestoreStatusBarStyle:disappearCopy];
  local = [MEMORY[0x277D0C138] local];
  [local showAccessPoint];
}

- (void)remoteViewControllerIsFinishing
{
  viewDidAppear = [(GKRemoteViewServiceController *)self viewDidAppear];
  v4 = *MEMORY[0x277D0C2A0];
  if (viewDidAppear)
  {
    if (!v4)
    {
      v5 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
    {
      [GKRemoteViewServiceController remoteViewControllerIsFinishing];
    }

    serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
    [serviceViewControllerProxy remoteViewControllerDidFinish];

    if ([(GKRemoteViewServiceController *)self _dismissSelfAfterGettingShouldFinish])
    {
      managingViewController = [(GKRemoteViewServiceController *)self managingViewController];
      [managingViewController dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {
    if (!v4)
    {
      v8 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
    {
      [GKRemoteViewServiceController remoteViewControllerIsFinishing];
    }

    [(GKRemoteViewServiceController *)self _performSelectorAfterAppearingOrTimeOut:sel_remoteViewControllerIsFinishing];
  }
}

- (void)remoteViewControllerIsCanceling
{
  viewDidAppear = [(GKRemoteViewServiceController *)self viewDidAppear];
  v4 = *MEMORY[0x277D0C2A0];
  if (viewDidAppear)
  {
    if (!v4)
    {
      v5 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
    {
      [GKRemoteViewServiceController remoteViewControllerIsCanceling];
    }

    serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
    [serviceViewControllerProxy remoteViewControllerDidCancel];

    if ([(GKRemoteViewServiceController *)self _dismissSelfAfterGettingShouldCancel])
    {
      managingViewController = [(GKRemoteViewServiceController *)self managingViewController];
      [managingViewController dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {
    if (!v4)
    {
      v8 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
    {
      [GKRemoteViewServiceController remoteViewControllerIsCanceling];
    }

    [(GKRemoteViewServiceController *)self _performSelectorAfterAppearingOrTimeOut:sel_remoteViewControllerIsCanceling];
  }
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
  }

  v6 = *MEMORY[0x277D0C290];
  if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
  {
    [(GKRemoteViewServiceController *)errorCopy viewServiceDidTerminateWithError:v6];
  }

  managingViewController = [(GKRemoteViewServiceController *)self managingViewController];

  if (managingViewController)
  {
    serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
    [serviceViewControllerProxy remoteViewControllerDidCancel];

    [(GKRemoteViewServiceController *)self remoteViewControllerIsCanceling];
    managingViewController2 = [(GKRemoteViewServiceController *)self managingViewController];
    [managingViewController2 resetRemoteViewController];
  }
}

- (GKHostedViewController)managingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_managingViewController);

  return WeakRetained;
}

- (void)setValue:(uint64_t)a1 forKeyPath:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_24DE53000, a2, OS_LOG_TYPE_DEBUG, "changed key %@", &v2, 0xCu);
}

- (void)setValue:(void *)a3 forKeyPath:.cold.2(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 dirtyProperties];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&dword_24DE53000, v5, OS_LOG_TYPE_DEBUG, "dirty properties after adding %@: %@", &v7, 0x16u);
}

void __53__GKRemoteViewServiceController_setValue_forKeyPath___block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_24DE53000, v0, OS_LOG_TYPE_DEBUG, "service failed to change key %@ to %@", v1, 0x16u);
}

void __53__GKRemoteViewServiceController_setValue_forKeyPath___block_invoke_cold_2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_24DE53000, v0, OS_LOG_TYPE_DEBUG, "service changed key %@ to %@", v1, 0x16u);
}

void __53__GKRemoteViewServiceController_setValue_forKeyPath___block_invoke_cold_3(uint64_t a1, NSObject *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 48) dirtyProperties];
  v5 = [v4 count];
  v6 = *(a1 + 32);
  v7 = [*(a1 + 48) dirtyProperties];
  v8 = [v7 count];
  v9 = *(a1 + 48);
  if (v8)
  {
    v10 = [v9 dirtyProperties];
    v12 = v10;
  }

  else
  {
    v10 = [v9 managingViewController];
    v11 = [(__CFString *)v10 shouldPresentRemoteViewController];
    v12 = @"don't present";
    if (v11)
    {
      v12 = @"present";
    }
  }

  v13[0] = 67109634;
  v13[1] = v5;
  v14 = 2112;
  v15 = v6;
  v16 = 2112;
  v17 = v12;
  _os_log_debug_impl(&dword_24DE53000, a2, OS_LOG_TYPE_DEBUG, "%u dirty properties after purging %@: %@", v13, 0x1Cu);
}

- (void)viewDidAppear:(void *)a1 .cold.1(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCACC8];
  v2 = a1;
  v3 = [v1 callStackSymbols];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_24DE53000, v2, OS_LOG_TYPE_DEBUG, "APPEARED (%@)", &v4, 0xCu);
}

- (void)viewServiceDidTerminateWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24DE53000, a2, OS_LOG_TYPE_ERROR, "view service dead: %@", &v2, 0xCu);
}

@end