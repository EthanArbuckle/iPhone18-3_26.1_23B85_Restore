@interface CSRemoteContentSession
- (BOOL)_invalidateForReason:(int64_t)a3 error:(id)a4 completion:(id)a5;
- (BOOL)prefersInlineForPreferences:(id)a3;
- (CSRemoteContentSession)initWithDefinition:(id)a3 authenticationStatusProvider:(id)a4;
- (CSRemoteContentSessionHostDelegate)hostDelegate;
- (CSRemoteContentSessionPreferencesProvider)preferencesProvider;
- (double)remoteContentComplicationHeightInset;
- (double)remoteContentComplicationTopYInset;
- (id)_errorWithCode:(int64_t)a3;
- (id)_remoteContentViewControllerForPreferences:(id)a3;
- (void)_activateHostViewControllerWithPreferences:(id)a3;
- (void)_activateRemoteViewController:(id)a3 remoteError:(id)a4;
- (void)_invalidateWithErrorCode:(int64_t)a3;
- (void)_reactivate;
- (void)_requestRemoteViewControllerWithConnectionHandler:(id)a3;
- (void)activate;
- (void)dealloc;
- (void)didChangeRemoteHostContentFrame:(CGRect)a3;
- (void)didChangeRemotePreferences:(id)a3;
- (void)forceDisconnect;
- (void)remoteContentHostViewController:(id)a3 didTerminateWithError:(id)a4;
@end

@implementation CSRemoteContentSession

- (CSRemoteContentSession)initWithDefinition:(id)a3 authenticationStatusProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = CSRemoteContentSession;
  v8 = [(CSRemoteContentSession *)&v18 init];
  if (v8)
  {
    v9 = [v6 copy];
    definition = v8->_definition;
    v8->_definition = v9;

    objc_storeStrong(&v8->_authenticationStatusProvider, a4);
    v11 = [MEMORY[0x277CCAD78] UUID];
    v12 = [v11 UUIDString];
    sessionID = v8->_sessionID;
    v8->_sessionID = v12;

    v8->_valid = 1;
    v14 = +[CSLockScreenDomain rootSettings];
    v15 = [v14 dashBoardRemoteContentSettings];
    remoteContentSettings = v8->_remoteContentSettings;
    v8->_remoteContentSettings = v15;
  }

  return v8;
}

- (void)dealloc
{
  [(CSRemoteContentViewControllerProtocol *)self->_containerViewController setHostViewController:0];
  [(CSRemoteContentHostViewController *)self->_hostViewController setDelegate:0];
  v3 = [(_UIRemoteViewController *)self->_hostViewController disconnect];
  hostViewController = self->_hostViewController;
  self->_hostViewController = 0;

  v5.receiver = self;
  v5.super_class = CSRemoteContentSession;
  [(CSRemoteContentSession *)&v5 dealloc];
}

- (void)activate
{
  v10 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  if (!self->_activated && self->_valid)
  {
    self->_activated = 1;
    v3 = SBLogDashBoard();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      sessionID = self->_sessionID;
      *buf = 138543618;
      v7 = self;
      v8 = 2114;
      v9 = sessionID;
      _os_log_impl(&dword_21EB05000, v3, OS_LOG_TYPE_DEFAULT, "[RemoteContent] %{public}@: Activate session %{public}@", buf, 0x16u);
    }

    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __34__CSRemoteContentSession_activate__block_invoke;
    v5[3] = &unk_27838CE60;
    v5[4] = self;
    [(CSRemoteContentSession *)self _requestRemoteViewControllerWithConnectionHandler:v5];
  }
}

- (void)forceDisconnect
{
  BSDispatchQueueAssertMain();
  *&self->_activated = 0;
  self->_valid = 0;
  [(CSRemoteContentViewControllerProtocol *)self->_containerViewController setHostViewController:0];
  [(CSRemoteContentViewControllerProtocol *)self->_containerViewController setDelegate:0];
  containerViewController = self->_containerViewController;
  self->_containerViewController = 0;

  [(CSRemoteContentHostViewController *)self->_hostViewController setDelegate:0];
  v4 = [(_UIRemoteViewController *)self->_hostViewController disconnect];
  hostViewController = self->_hostViewController;
  self->_hostViewController = 0;
}

- (void)_requestRemoteViewControllerWithConnectionHandler:(id)a3
{
  v7 = a3;
  v4 = [(SBSRemoteContentDefinition *)self->_definition viewControllerClassName];
  v5 = [(SBSRemoteContentDefinition *)self->_definition serviceName];
  v6 = [CSRemoteContentHostViewController requestViewController:v4 fromServiceWithBundleIdentifier:v5 connectionHandler:v7];
}

- (void)_activateRemoteViewController:(id)a3 remoteError:(id)a4
{
  *&v29[5] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  BSDispatchQueueAssertMain();
  if (self->_activated && self->_valid)
  {
    v8 = objc_opt_class();
    v9 = v6;
    if (v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (!(v7 | v11))
    {
      v14 = SBLogDashBoard();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v27 = self;
        _os_log_impl(&dword_21EB05000, v14, OS_LOG_TYPE_DEFAULT, "[RemoteContent] %{public}@: Failed to activate remote view controller", buf, 0xCu);
      }

      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSRemoteContentSessionErrorDomain" code:0 userInfo:0];
    }

    v15 = SBLogDashBoard();
    v16 = v15;
    if (v7)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(CSRemoteContentSession *)self _activateRemoteViewController:v7 remoteError:v16];
      }

      v17 = [v7 userInfo];
      v18 = [v17 objectForKey:*MEMORY[0x277CCA7E8]];

      v19 = [v18 domain];
      if ([v19 isEqualToString:*MEMORY[0x277D0ABC8]])
      {
        v20 = [v18 code];

        if (v20 == 6)
        {
          v21 = dispatch_time(0, 1000000000);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __68__CSRemoteContentSession__activateRemoteViewController_remoteError___block_invoke;
          block[3] = &unk_27838B770;
          block[4] = self;
          dispatch_after(v21, MEMORY[0x277D85CD0], block);
LABEL_29:

          goto LABEL_30;
        }
      }

      else
      {
      }

      [(CSRemoteContentSession *)self _invalidateWithError:v7];
      goto LABEL_29;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      sessionID = self->_sessionID;
      *buf = 138543618;
      v27 = self;
      v28 = 2114;
      *v29 = sessionID;
      _os_log_impl(&dword_21EB05000, v16, OS_LOG_TYPE_DEFAULT, "[RemoteContent] %{public}@: Successfully activated remote view controller for session %{public}@!", buf, 0x16u);
    }

    if (self->_hostViewController)
    {
      [(CSRemoteContentViewControllerProtocol *)self->_containerViewController setHostViewController:0];
    }

    objc_storeStrong(&self->_hostViewController, v10);
    [(CSRemoteContentHostViewController *)self->_hostViewController setDelegate:self];
    self->_waitingForPreferences = 1;
    v23 = SBLogDashBoard();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = self->_sessionID;
      *buf = 138543618;
      v27 = self;
      v28 = 2114;
      *v29 = v24;
      _os_log_impl(&dword_21EB05000, v23, OS_LOG_TYPE_DEFAULT, "[RemoteContent] %{public}@: Configuring remote view controller and waiting for preferences for session %{public}@", buf, 0x16u);
    }

    [(CSRemoteContentHostViewController *)self->_hostViewController configureWithDefinition:self->_definition];
  }

  else
  {
    v11 = SBLogDashBoard();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      activated = self->_activated;
      valid = self->_valid;
      *buf = 138543874;
      v27 = self;
      v28 = 1024;
      *v29 = activated;
      v29[2] = 1024;
      *&v29[3] = valid;
      _os_log_impl(&dword_21EB05000, v11, OS_LOG_TYPE_DEFAULT, "[RemoteContent] %{public}@: Not activated (%d) or not valid (%d); not continuing activation", buf, 0x18u);
    }
  }

LABEL_30:
}

- (void)_activateHostViewControllerWithPreferences:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  containerViewController = self->_containerViewController;
  if (containerViewController)
  {
    [(CSRemoteContentViewControllerProtocol *)containerViewController setHostViewController:self->_hostViewController];
  }

  else
  {
    v6 = [(CSRemoteContentSession *)self _remoteContentViewControllerForPreferences:v4];
    v7 = self->_containerViewController;
    self->_containerViewController = v6;

    [(CSRemoteContentViewControllerProtocol *)self->_containerViewController setDelegate:self];
  }

  if (self->_presented)
  {
    WeakRetained = SBLogDashBoard();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      sessionID = self->_sessionID;
      v17 = 138543618;
      v18 = self;
      v19 = 2114;
      v20 = sessionID;
      _os_log_impl(&dword_21EB05000, WeakRetained, OS_LOG_TYPE_DEFAULT, "[RemoteContent] %{public}@: Successfully re-presented session %{public}@!", &v17, 0x16u);
    }

    goto LABEL_19;
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostDelegate);
  if (![WeakRetained shouldActivateRemoteContentSession:self])
  {
    v14 = SBLogDashBoard();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CSRemoteContentSession _activateHostViewControllerWithPreferences:];
    }

    v15 = self;
    v16 = 3;
    goto LABEL_18;
  }

  v10 = [WeakRetained remoteContentSession:self presentViewController:self->_containerViewController];
  self->_presented = v10;
  v11 = SBLogDashBoard();
  v12 = v11;
  if (!v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CSRemoteContentSession _activateHostViewControllerWithPreferences:];
    }

    v15 = self;
    v16 = 2;
LABEL_18:
    [(CSRemoteContentSession *)v15 _invalidateWithErrorCode:v16];
    goto LABEL_19;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = self->_sessionID;
    v17 = 138543618;
    v18 = self;
    v19 = 2114;
    v20 = v13;
    _os_log_impl(&dword_21EB05000, v12, OS_LOG_TYPE_DEFAULT, "[RemoteContent] %{public}@: Successfully presented remote view controller for session %{public}@!", &v17, 0x16u);
  }

LABEL_19:
}

- (id)_remoteContentViewControllerForPreferences:(id)a3
{
  v4 = a3;
  v5 = [(CSRemoteContentSession *)self prefersInlineForPreferences:v4];
  v6 = off_27838A5E8;
  if (!v5)
  {
    v6 = off_27838A5F8;
  }

  v7 = [objc_alloc(*v6) initWithContentDefinition:self->_definition preferences:v4 hostViewController:self->_hostViewController authenticationStatusProvider:self->_authenticationStatusProvider];

  return v7;
}

- (void)_reactivate
{
  v6 = *MEMORY[0x277D85DE8];
  if (self->_activated)
  {
    v3 = SBLogDashBoard();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138543362;
      v5 = self;
      _os_log_impl(&dword_21EB05000, v3, OS_LOG_TYPE_DEFAULT, "[RemoteContent] %{public}@: Reactivating view service.", &v4, 0xCu);
    }

    self->_activated = 0;
    [(CSRemoteContentSession *)self activate];
  }

  else
  {

    [(CSRemoteContentSession *)self _invalidateWithErrorCode:1];
  }
}

- (void)_invalidateWithErrorCode:(int64_t)a3
{
  v4 = [(CSRemoteContentSession *)self _errorWithCode:a3];
  [(CSRemoteContentSession *)self _invalidateWithError:v4];
}

- (BOOL)_invalidateForReason:(int64_t)a3 error:(id)a4 completion:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  BSDispatchQueueAssertMain();
  if (!self->_valid)
  {
    v16 = 0;
    goto LABEL_14;
  }

  self->_activated = 0;
  self->_valid = 0;
  v11 = SBLogDashBoard();
  v12 = v11;
  if (v9)
  {
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v13 = NSStringFromSelector(a2);
    v14 = NSStringFromSBSRemoteContentDismissType();
    v15 = [v9 descriptionWithMultilinePrefix:0];
    *buf = 138544130;
    v30 = self;
    v31 = 2114;
    v32 = v13;
    v33 = 2114;
    v34 = v14;
    v35 = 2114;
    v36 = v15;
    _os_log_error_impl(&dword_21EB05000, v12, OS_LOG_TYPE_ERROR, "[RemoteContent][Invalidate] %{public}@: %{public}@ (%{public}@): %{public}@", buf, 0x2Au);
  }

  else
  {
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v13 = NSStringFromSelector(a2);
    v14 = NSStringFromSBSRemoteContentDismissType();
    *buf = 138543874;
    v30 = self;
    v31 = 2114;
    v32 = v13;
    v33 = 2114;
    v34 = v14;
    _os_log_impl(&dword_21EB05000, v12, OS_LOG_TYPE_DEFAULT, "[RemoteContent][Invalidate] %{public}@: %{public}@ (%{public}@)", buf, 0x20u);
  }

LABEL_9:
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __64__CSRemoteContentSession__invalidateForReason_error_completion___block_invoke;
  v24 = &unk_27838CE88;
  v25 = self;
  v28 = a3;
  v26 = v9;
  v27 = v10;
  v17 = MEMORY[0x223D698D0](&v21);
  v18 = v17;
  if (a3 == 1 || !self->_presented)
  {
    (*(v17 + 16))(v17);
    v16 = 1;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_hostDelegate);
    v16 = [WeakRetained remoteContentSession:self dismissWithReason:a3 completion:{v18, v21, v22, v23, v24, v25, v26}];
  }

LABEL_14:
  return v16;
}

uint64_t __64__CSRemoteContentSession__invalidateForReason_error_completion___block_invoke(uint64_t a1)
{
  v2 = SBLogDashBoard();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __64__CSRemoteContentSession__invalidateForReason_error_completion___block_invoke_cold_1(a1, v2);
  }

  [*(a1 + 32) forceDisconnect];
  if (*(a1 + 56) == 1)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
    [WeakRetained remoteContentSession:*(a1 + 32) didInvalidateWithError:*(a1 + 40)];
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_errorWithCode:(int64_t)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (a3 >= 4)
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSRemoteContentSessionErrorDomain" code:a3 userInfo:0];
  }

  else
  {
    v4 = off_27838CEA8[a3];
    v5 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CCA450];
    v10[0] = v4;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v7 = [v5 errorWithDomain:@"CSRemoteContentSessionErrorDomain" code:a3 userInfo:v6];
  }

  return v7;
}

- (BOOL)prefersInlineForPreferences:(id)a3
{
  v4 = a3;
  if (CSFeatureEnabled(0))
  {
    if ([(CSDashBoardRemoteContentSettings *)self->_remoteContentSettings overrideContentPreferences])
    {
      v5 = [(CSDashBoardRemoteContentSettings *)self->_remoteContentSettings prefersInlinePresentationOverride];
    }

    else
    {
      v5 = [v4 prefersInlinePresentation];
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)didChangeRemotePreferences:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_preferencesProvider);
    v6 = [WeakRetained preferencesForRemoteContentSession:self];
    [WeakRetained remoteContentSession:self didUpdateWithPreferences:v4];
    if (self->_waitingForPreferences)
    {
      self->_waitingForPreferences = 0;
      if ([(CSRemoteContentSession *)self prefersInlineForPreferences:v4]&& ([(CSRemoteContentHostViewController *)self->_hostViewController contentFrame], ![(CSRemoteContentSession *)self _remoteContentFrameIsValid:?]))
      {
        v14 = SBLogDashBoard();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          sessionID = self->_sessionID;
          v16 = 138543618;
          v17 = self;
          v18 = 2114;
          v19 = sessionID;
          _os_log_impl(&dword_21EB05000, v14, OS_LOG_TYPE_DEFAULT, "[RemoteContent] %{public}@: Waiting for contentFrame for session %{public}@", &v16, 0x16u);
        }

        self->_waitingForContentFrame = 1;
      }

      else
      {
        v7 = SBLogDashBoard();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = self->_sessionID;
          v16 = 138543618;
          v17 = self;
          v18 = 2114;
          v19 = v8;
          _os_log_impl(&dword_21EB05000, v7, OS_LOG_TYPE_DEFAULT, "[RemoteContent] %{public}@: Received valid preferences and contentFrame for session %{public}@, presenting hostVC", &v16, 0x16u);
        }

        [(CSRemoteContentSession *)self _activateHostViewControllerWithPreferences:v4];
      }
    }

    else
    {
      v9 = [v4 isEqual:v6];
      v10 = SBLogDashBoard();
      v11 = v10;
      if (v9)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 138543362;
          v17 = self;
          _os_log_impl(&dword_21EB05000, v11, OS_LOG_TYPE_DEFAULT, "[RemoteContent] %{public}@: Ignoring identical remote preferences", &v16, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v12 = self->_sessionID;
          v16 = 138543618;
          v17 = self;
          v18 = 2114;
          v19 = v12;
          _os_log_impl(&dword_21EB05000, v11, OS_LOG_TYPE_INFO, "[RemoteContent] %{public}@: remoteContentDidUpdateStyle for session %{public}@", &v16, 0x16u);
        }

        [(CSRemoteContentViewControllerProtocol *)self->_containerViewController remoteDidChangeStyle];
        v13 = objc_loadWeakRetained(&self->_hostDelegate);
        [v13 remoteContentDidUpdateStyle];
      }
    }
  }
}

- (void)didChangeRemoteHostContentFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  if (self->_waitingForContentFrame)
  {
    if ([(CSRemoteContentSession *)self _remoteContentFrameIsValid:x, y, width, height])
    {
      WeakRetained = objc_loadWeakRetained(&self->_preferencesProvider);
      v9 = [WeakRetained preferencesForRemoteContentSession:self];

      if (v9)
      {
        self->_waitingForContentFrame = 0;
        v10 = SBLogDashBoard();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v13) = 0;
          _os_log_impl(&dword_21EB05000, v10, OS_LOG_TYPE_DEFAULT, "[RemoteContent] Have content frame; activating host VC", &v13, 2u);
        }

        [(CSRemoteContentSession *)self _activateHostViewControllerWithPreferences:v9];
        goto LABEL_16;
      }

      v12 = SBLogDashBoard();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CSRemoteContentSession didChangeRemoteHostContentFrame:];
      }
    }

    else
    {
      v9 = SBLogDashBoard();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
LABEL_16:

        return;
      }

      v19.origin.x = x;
      v19.origin.y = y;
      v19.size.width = width;
      v19.size.height = height;
      v12 = NSStringFromCGRect(v19);
      v13 = 138543618;
      v14 = self;
      v15 = 2114;
      v16 = v12;
      _os_log_impl(&dword_21EB05000, v9, OS_LOG_TYPE_INFO, "[RemoteContent] %{public}@: Remote content frame is not valid: %{public}@", &v13, 0x16u);
    }

    goto LABEL_16;
  }

  if (objc_opt_respondsToSelector())
  {
    containerViewController = self->_containerViewController;

    [(CSRemoteContentViewControllerProtocol *)containerViewController didChangeRemoteHostContentFrame:x, y, width, height];
  }
}

- (void)remoteContentHostViewController:(id)a3 didTerminateWithError:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (self->_activated && self->_valid)
  {
    v6 = SBLogDashBoard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      sessionID = self->_sessionID;
      v8 = [v5 descriptionWithMultilinePrefix:0];
      v11 = 138543874;
      v12 = self;
      v13 = 2114;
      v14 = sessionID;
      v15 = 2114;
      v16 = v8;
      _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "[RemoteContent] %{public}@: Remote view connection lost while active in session %{public}@, reactivating immediately: %{public}@", &v11, 0x20u);
    }

    [(CSRemoteContentSession *)self _reactivate];
  }

  else
  {
    v9 = SBLogDashBoard();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_sessionID;
      v11 = 138543618;
      v12 = self;
      v13 = 2114;
      v14 = v10;
      _os_log_impl(&dword_21EB05000, v9, OS_LOG_TYPE_DEFAULT, "[RemoteContent] %{public}@: Remote view connection lost while inactive/invalid for session %{public}@", &v11, 0x16u);
    }
  }
}

- (double)remoteContentComplicationTopYInset
{
  WeakRetained = objc_loadWeakRetained(&self->_hostDelegate);
  [WeakRetained remoteContentComplicationTopYInset];
  v4 = v3;

  return v4;
}

- (double)remoteContentComplicationHeightInset
{
  WeakRetained = objc_loadWeakRetained(&self->_hostDelegate);
  [WeakRetained remoteContentComplicationHeightInset];
  v4 = v3;

  return v4;
}

- (CSRemoteContentSessionHostDelegate)hostDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_hostDelegate);

  return WeakRetained;
}

- (CSRemoteContentSessionPreferencesProvider)preferencesProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_preferencesProvider);

  return WeakRetained;
}

- (void)_activateRemoteViewController:(NSObject *)a3 remoteError:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 descriptionWithMultilinePrefix:0];
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_21EB05000, a3, OS_LOG_TYPE_ERROR, "[RemoteContent] %{public}@: Error activating remote view controller: %{public}@", &v6, 0x16u);
}

void __64__CSRemoteContentSession__invalidateForReason_error_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = *(v4 + 64);
  v6 = NSStringFromSBSRemoteContentDismissType();
  v7 = [*(a1 + 40) descriptionWithMultilinePrefix:0];
  v8 = 138544130;
  v9 = v4;
  v10 = 2114;
  v11 = v5;
  v12 = 2114;
  v13 = v6;
  v14 = 2114;
  v15 = v7;
  _os_log_error_impl(&dword_21EB05000, a2, OS_LOG_TYPE_ERROR, "[RemoteContent][Invalidate] %{public}@: finishing invalidating container and host for session %{public}@ due to (%{public}@): %{public}@", &v8, 0x2Au);
}

@end