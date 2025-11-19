@interface GKRemoteViewServiceController
- (BOOL)serviceNeedsFriendCode;
- (GKHostedViewController)managingViewController;
- (void)_performBlockAfterViewDidAppearIfNeeded;
- (void)_performSelectorAfterAppearingOrTimeOut:(SEL)a3;
- (void)dealloc;
- (void)nudge;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)populateInitialStateForRemoteView:(id)a3;
- (void)remoteViewControllerIsCanceling;
- (void)remoteViewControllerIsFinishing;
- (void)setValue:(id)a3 forKeyPath:(id)a4;
- (void)setupRemoteView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewServiceDidTerminateWithError:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
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
    v3 = [(GKRemoteViewServiceController *)self observedKeyPaths];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(v3);
          }

          [(GKRemoteViewServiceController *)self removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v7++) context:0];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v2 = [(GKRemoteViewServiceController *)self managingViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)populateInitialStateForRemoteView:(id)a3
{
  v23 = a3;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:getpid()];
  [v23 setObject:v4 forKey:@"HostPID"];

  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  v7 = 0.0;
  if (v6 != 1)
  {
    v8 = [MEMORY[0x277D75128] sharedApplication];
    [v8 statusBarHeight];
    v7 = v9;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  [v23 setObject:v10 forKey:@"StatusBarHeight"];

  if ([(GKRemoteViewServiceController *)self serviceNeedsLocalPlayer])
  {
    v11 = [MEMORY[0x277D0C138] localPlayer];
    [v23 setObject:v11 forKey:@"LocalPlayer"];
  }

  if ([(GKRemoteViewServiceController *)self serviceNeedsFriendCode])
  {
    v12 = [(GKRemoteViewServiceController *)self managingViewController];
    v13 = [v12 friendCode];

    if (v13)
    {
      v14 = [v12 friendCode];
      [v23 setObject:v14 forKey:@"GKFriendCodeKey"];
    }

    v15 = [v12 friendSupportPageURL];

    if (v15)
    {
      v16 = [v12 friendSupportPageURL];
      [v23 setObject:v16 forKey:@"GKFriendSupportPageURLKey"];
    }

    v17 = [v12 recipients];

    if (v17)
    {
      v18 = [v12 recipients];
      [v23 setObject:v18 forKey:@"GKFriendRecipientsKey"];
    }

    v19 = [v12 chatGUID];

    if (v19)
    {
      v20 = [v12 chatGUID];
      [v23 setObject:v20 forKey:@"GKChatGUIDKey"];
    }

    v21 = [v12 hostApp];

    if (v21)
    {
      v22 = [v12 hostApp];
      [v23 setObject:v22 forKey:@"GKHostAppKey"];
    }
  }
}

- (void)nudge
{
  v2 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v2 nudge];
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
      v3 = [(GKRemoteViewServiceController *)self managingViewController];
      [v3 _beginDelayingPresentation];
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
      v6 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __48__GKRemoteViewServiceController_setupRemoteView__block_invoke;
      v24[3] = &unk_27966A8E0;
      objc_copyWeak(&v26, location);
      v7 = v3;
      v25 = v7;
      [v6 setInitialState:v5 withReply:v24];

      objc_destroyWeak(&v26);
      objc_destroyWeak(location);
    }
  }

  else
  {
    [(GKRemoteViewServiceController *)self nudge];
    self->_didSetRemoteGame = 1;
  }

  v8 = self;
  if (![(GKRemoteViewServiceController *)self observationInfo])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = [(GKRemoteViewServiceController *)self observedKeyPaths];
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
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
            objc_enumerationMutation(v9);
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

        v10 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v7 = [(GKRemoteViewServiceController *)self observedKeyPaths];
  v8 = [v7 containsObject:v10];

  if (v8)
  {
    v9 = [(GKRemoteViewServiceController *)self valueForKeyPath:v10];
    [(GKRemoteViewServiceController *)self setValue:v9 forKeyPath:v10];
  }
}

- (void)setValue:(id)a3 forKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_dirtyProperties)
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    [(GKRemoteViewServiceController *)self setDirtyProperties:v8];
  }

  v9 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  v10 = [(GKRemoteViewServiceController *)self managingViewController];
  v11 = MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v12 = GKOSLoggers();
  }

  v13 = MEMORY[0x277D0C2A8];
  v14 = *MEMORY[0x277D0C2A8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    [GKRemoteViewServiceController setValue:v7 forKeyPath:v14];
  }

  v15 = [(GKRemoteViewServiceController *)self dirtyProperties];
  v16 = v15;
  if (v6)
  {
    [v15 setObject:v6 forKey:v7];
  }

  else
  {
    [v15 removeObjectForKey:v7];
  }

  [v10 _beginDelayingPresentation];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __53__GKRemoteViewServiceController_setValue_forKeyPath___block_invoke;
  v22[3] = &unk_27966A908;
  v17 = v7;
  v23 = v17;
  v18 = v6;
  v24 = v18;
  v25 = self;
  v19 = v10;
  v26 = v19;
  [v9 setValue:v18 forKeyPath:v17 withReply:v22];
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

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277D0C138] local];
  [v5 hideAccessPoint];

  [(GKRemoteViewServiceController *)self setupRemoteView];
  v9.receiver = self;
  v9.super_class = GKRemoteViewServiceController;
  [(_UIRemoteViewController *)&v9 viewWillAppear:v3];
  if (!*MEMORY[0x277D0C2A0])
  {
    v6 = GKOSLoggers();
  }

  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    [GKRemoteViewServiceController viewWillAppear:];
  }

  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8 != 1 || *MEMORY[0x277D0C258] == 1 && (*MEMORY[0x277D0C8F0] & 1) == 0)
  {
    [(UIViewController *)self _gkSaveStatusBarStyleAnimated:v3 setToStyle:[(GKRemoteViewServiceController *)self _desiredStatusBarStyle]];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = GKRemoteViewServiceController;
  [(_UIRemoteViewController *)&v6 viewDidAppear:a3];
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

  v4 = [(GKRemoteViewServiceController *)self blockToPerformAfterViewDidAppear];
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __72__GKRemoteViewServiceController__performBlockAfterViewDidAppearIfNeeded__block_invoke;
    v6[3] = &unk_27966A480;
    v6[4] = self;
    v7 = v4;
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

- (void)_performSelectorAfterAppearingOrTimeOut:(SEL)a3
{
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__GKRemoteViewServiceController__performSelectorAfterAppearingOrTimeOut___block_invoke;
  v7[3] = &unk_27966A930;
  objc_copyWeak(v8, &location);
  v8[1] = a3;
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

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = GKRemoteViewServiceController;
  [(_UIRemoteViewController *)&v4 viewWillDisappear:a3];
  if (!*MEMORY[0x277D0C2A0])
  {
    v3 = GKOSLoggers();
  }

  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    [GKRemoteViewServiceController viewWillDisappear:];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
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

  [(UIViewController *)self _gkRestoreStatusBarStyle:v3];
  v6 = [MEMORY[0x277D0C138] local];
  [v6 showAccessPoint];
}

- (void)remoteViewControllerIsFinishing
{
  v3 = [(GKRemoteViewServiceController *)self viewDidAppear];
  v4 = *MEMORY[0x277D0C2A0];
  if (v3)
  {
    if (!v4)
    {
      v5 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
    {
      [GKRemoteViewServiceController remoteViewControllerIsFinishing];
    }

    v6 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
    [v6 remoteViewControllerDidFinish];

    if ([(GKRemoteViewServiceController *)self _dismissSelfAfterGettingShouldFinish])
    {
      v7 = [(GKRemoteViewServiceController *)self managingViewController];
      [v7 dismissViewControllerAnimated:1 completion:0];
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
  v3 = [(GKRemoteViewServiceController *)self viewDidAppear];
  v4 = *MEMORY[0x277D0C2A0];
  if (v3)
  {
    if (!v4)
    {
      v5 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
    {
      [GKRemoteViewServiceController remoteViewControllerIsCanceling];
    }

    v6 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
    [v6 remoteViewControllerDidCancel];

    if ([(GKRemoteViewServiceController *)self _dismissSelfAfterGettingShouldCancel])
    {
      v7 = [(GKRemoteViewServiceController *)self managingViewController];
      [v7 dismissViewControllerAnimated:1 completion:0];
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

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v4 = a3;
  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
  }

  v6 = *MEMORY[0x277D0C290];
  if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
  {
    [(GKRemoteViewServiceController *)v4 viewServiceDidTerminateWithError:v6];
  }

  v7 = [(GKRemoteViewServiceController *)self managingViewController];

  if (v7)
  {
    v8 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
    [v8 remoteViewControllerDidCancel];

    [(GKRemoteViewServiceController *)self remoteViewControllerIsCanceling];
    v9 = [(GKRemoteViewServiceController *)self managingViewController];
    [v9 resetRemoteViewController];
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