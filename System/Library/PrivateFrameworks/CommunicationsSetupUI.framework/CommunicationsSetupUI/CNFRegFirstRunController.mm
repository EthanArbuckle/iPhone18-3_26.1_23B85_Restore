@interface CNFRegFirstRunController
- (BOOL)dismissWithState:(unint64_t)state;
- (BOOL)pushCompletionControllerIfPossible;
- (CNFRegFirstRunController)initWithParentController:(id)controller account:(id)account;
- (CNFRegFirstRunController)initWithRegController:(id)controller;
- (CNFRegFirstRunController)initWithRegController:(id)controller account:(id)account;
- (id)_leftButtonItem;
- (id)_rightButtonItem;
- (id)_validationModeCancelButton;
- (id)titleString;
- (id)validationString;
- (int64_t)currentAppearanceStyle;
- (void)_executeDismissBlock:(id)block;
- (void)_refreshCurrentState;
- (void)_setupEventHandlers;
- (void)_startActivityIndicatorWithTitle:(id)title animated:(BOOL)animated allowCancel:(BOOL)cancel;
- (void)_startListeningForReturnKey;
- (void)_startTimeoutWithDuration:(double)duration;
- (void)_stopActivityIndicatorWithTitle:(id)title animated:(BOOL)animated;
- (void)_stopListeningForReturnKey;
- (void)_stopTimeout;
- (void)_timeoutFired:(id)fired;
- (void)_updateControllerState;
- (void)dealloc;
- (void)setSpecifier:(id)specifier;
- (void)systemApplicationDidEnterBackground;
- (void)systemApplicationWillEnterForeground;
@end

@implementation CNFRegFirstRunController

- (CNFRegFirstRunController)initWithRegController:(id)controller
{
  v6.receiver = self;
  v6.super_class = CNFRegFirstRunController;
  v3 = [(CNFRegListController *)&v6 initWithRegController:controller];
  v4 = v3;
  if (v3)
  {
    [(CNFRegFirstRunController *)v3 _refreshNavBarAnimated:0];
  }

  return v4;
}

- (CNFRegFirstRunController)initWithRegController:(id)controller account:(id)account
{
  accountCopy = account;
  v7 = [(CNFRegFirstRunController *)self initWithRegController:controller];
  v8 = v7;
  if (v7)
  {
    [(CNFRegFirstRunController *)v7 setAccount:accountCopy];
  }

  return v8;
}

- (CNFRegFirstRunController)initWithParentController:(id)controller account:(id)account
{
  accountCopy = account;
  v10.receiver = self;
  v10.super_class = CNFRegFirstRunController;
  v7 = [(CNFRegListController *)&v10 initWithParentController:controller];
  v8 = v7;
  if (v7)
  {
    [(CNFRegFirstRunController *)v7 setAccount:accountCopy];
  }

  return v8;
}

- (void)dealloc
{
  self->_delegate = 0;
  [(CNFRegFirstRunController *)self _stopTimeout];
  target = [(UIBarButtonItem *)self->_customRightButton target];

  if (target == self)
  {
    [(UIBarButtonItem *)self->_customRightButton setTarget:0];
  }

  target2 = [(UIBarButtonItem *)self->_customLeftButton target];

  if (target2 == self)
  {
    [(UIBarButtonItem *)self->_customLeftButton setTarget:0];
  }

  v5.receiver = self;
  v5.super_class = CNFRegFirstRunController;
  [(CNFRegListController *)&v5 dealloc];
}

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v8.receiver = self;
  v8.super_class = CNFRegFirstRunController;
  [(CNFRegListController *)&v8 setSpecifier:specifierCopy];
  if (![(CNFRegFirstRunController *)self completionControllerClass])
  {
    v5 = [specifierCopy propertyForKey:@"cnf-completionclass"];
    v6 = v5;
    if (v5)
    {
      v7 = NSClassFromString(v5);
      if (v7)
      {
        [(CNFRegFirstRunController *)self setCompletionControllerClass:v7];
      }
    }
  }
}

- (void)_startListeningForReturnKey
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleReturnKeyTapped_ name:*MEMORY[0x277D76C20] object:0];
}

- (void)_stopListeningForReturnKey
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76C20] object:0];
}

- (id)titleString
{
  regController = [(CNFRegListController *)self regController];
  serviceType = [regController serviceType];

  if (serviceType > 2)
  {
    v7 = &stru_2856D3978;
  }

  else
  {
    v4 = off_278DE89A0[serviceType];
    v5 = CommunicationsSetupUIBundle();
    v6 = CNFRegStringTableName();
    v7 = [v5 localizedStringForKey:v4 value:&stru_2856D3978 table:v6];
  }

  return v7;
}

- (id)validationString
{
  v2 = CommunicationsSetupUIBundle();
  v3 = CNFRegStringTableName();
  v4 = [v2 localizedStringForKey:@"VERIFYING" value:&stru_2856D3978 table:v3];

  return v4;
}

- (id)_rightButtonItem
{
  customRightButton = self->_customRightButton;
  if (customRightButton)
  {
    v4 = customRightButton;
    target = [(UIBarButtonItem *)v4 target];

    if (!target)
    {
      [(UIBarButtonItem *)v4 setTarget:self];
    }

    if (![(UIBarButtonItem *)v4 action])
    {
      [(UIBarButtonItem *)v4 setAction:sel__rightButtonTapped];
    }
  }

  else
  {
    v6 = CommunicationsSetupUIBundle();
    v7 = CNFRegStringTableName();
    v8 = [v6 localizedStringForKey:@"NEXT" value:&stru_2856D3978 table:v7];

    v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v8 style:2 target:self action:sel__rightButtonTapped];
  }

  return v4;
}

- (id)_leftButtonItem
{
  customLeftButton = self->_customLeftButton;
  if (customLeftButton)
  {
    v4 = customLeftButton;
    target = [(UIBarButtonItem *)v4 target];

    if (!target)
    {
      [(UIBarButtonItem *)v4 setTarget:self];
    }

    if (![(UIBarButtonItem *)v4 action])
    {
      [(UIBarButtonItem *)v4 setAction:sel__leftButtonTapped];
    }
  }

  return customLeftButton;
}

- (void)_startTimeoutWithDuration:(double)duration
{
  if (!self->_timeoutTimer)
  {
    [(CNFRegFirstRunController *)self setTimedOut:0];
    v5 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__timeoutFired_ selector:0 userInfo:0 repeats:duration];
    timeoutTimer = self->_timeoutTimer;
    self->_timeoutTimer = v5;

    MEMORY[0x2821F96F8]();
  }
}

- (void)_stopTimeout
{
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    [(NSTimer *)timeoutTimer invalidate];
    v4 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }
}

- (void)_timeoutFired:(id)fired
{
  [(CNFRegFirstRunController *)self _stopTimeout];
  [(CNFRegFirstRunController *)self setTimedOut:1];

  [(CNFRegFirstRunController *)self _handleTimeout];
}

- (id)_validationModeCancelButton
{
  v2 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelValidationMode];

  return v2;
}

- (void)_startActivityIndicatorWithTitle:(id)title animated:(BOOL)animated allowCancel:(BOOL)cancel
{
  titleCopy = title;
  v9 = titleCopy;
  if (!self->_showingActivityIndicator)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__CNFRegFirstRunController__startActivityIndicatorWithTitle_animated_allowCancel___block_invoke;
    block[3] = &unk_278DE8958;
    block[4] = self;
    v11 = titleCopy;
    cancelCopy = cancel;
    animatedCopy = animated;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __82__CNFRegFirstRunController__startActivityIndicatorWithTitle_animated_allowCancel___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) navigationItem];
  v2 = [v8 leftBarButtonItem];
  [*(a1 + 32) setPreviousLeftButton:v2];

  v3 = [v8 rightBarButtonItem];
  [*(a1 + 32) setPreviousRightButton:v3];

  [*(a1 + 32) setPreviousHidesBackButton:{objc_msgSend(v8, "hidesBackButton")}];
  [v8 setTitle:*(a1 + 40)];
  v4 = [*(a1 + 32) navigationController];
  v5 = [v4 navigationBar];
  [v8 setNavigationBar:v5];

  v6 = [[CNFRegNavigationBarTitleView alloc] initWithNavigationItem:v8];
  [(CNFRegNavigationBarTitleView *)v6 sizeToFit];
  [v8 setTitleView:v6];
  if (*(a1 + 48) == 1)
  {
    v7 = [*(a1 + 32) _validationModeCancelButton];
  }

  else
  {
    v7 = 0;
  }

  [v8 setLeftBarButtonItem:v7 animated:*(a1 + 49)];
  [v8 setRightBarButtonItem:0 animated:*(a1 + 49)];
  [v8 setHidesBackButton:1 animated:*(a1 + 49)];
  *(*(a1 + 32) + 1488) = 1;
  [*(a1 + 32) _setFieldsEnabled:0 animated:*(a1 + 49)];
}

- (void)_stopActivityIndicatorWithTitle:(id)title animated:(BOOL)animated
{
  titleCopy = title;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__CNFRegFirstRunController__stopActivityIndicatorWithTitle_animated___block_invoke;
  block[3] = &unk_278DE8980;
  block[4] = self;
  v9 = titleCopy;
  animatedCopy = animated;
  v7 = titleCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __69__CNFRegFirstRunController__stopActivityIndicatorWithTitle_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1488] == 1)
  {
    v5 = [v2 navigationItem];
    [v5 setTitle:*(a1 + 40)];
    [v5 setTitleView:0];
    v3 = [*(a1 + 32) previousLeftButton];
    [v5 setLeftBarButtonItem:v3 animated:*(a1 + 48)];

    v4 = [*(a1 + 32) previousRightButton];
    [v5 setRightBarButtonItem:v4 animated:*(a1 + 48)];

    [v5 setHidesBackButton:objc_msgSend(*(a1 + 32) animated:{"previousHidesBackButton"), *(a1 + 48)}];
    [*(a1 + 32) setPreviousLeftButton:0];
    [*(a1 + 32) setPreviousRightButton:0];
    [*(a1 + 32) setPreviousHidesBackButton:0];
    [*(a1 + 32) _setFieldsEnabled:1 animated:*(a1 + 48)];
    *(*(a1 + 32) + 1488) = 0;
  }
}

- (void)systemApplicationWillEnterForeground
{
  v3.receiver = self;
  v3.super_class = CNFRegFirstRunController;
  [(CNFRegListController *)&v3 systemApplicationWillEnterForeground];
  [(CNFRegFirstRunController *)self _setupEventHandlers];
  [(CNFRegFirstRunController *)self _updateUI];
}

- (void)systemApplicationDidEnterBackground
{
  v3.receiver = self;
  v3.super_class = CNFRegFirstRunController;
  [(CNFRegListController *)&v3 systemApplicationDidEnterBackground];
  [(CNFRegFirstRunController *)self _stopTimeout];
  [(CNFRegListController *)self removeAllHandlers];
  [(CNFRegFirstRunController *)self _stopValidationModeAnimated:0];
}

- (void)_updateControllerState
{
  regController = [(CNFRegListController *)self regController];
  isServiceSupported = [regController isServiceSupported];

  if (isServiceSupported)
  {

    [(CNFRegFirstRunController *)self _updateUI];
  }

  else
  {

    [(CNFRegFirstRunController *)self dismissWithState:0];
  }
}

- (void)_refreshCurrentState
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "_refreshCurrentState", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  regController = [(CNFRegListController *)self regController];
  account = [(CNFRegFirstRunController *)self account];
  v6 = [regController accountStateForAccount:account];

  if ((v6 & 0x40000000) == 0)
  {
    goto LABEL_7;
  }

  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "_refreshCurrentState: finished", v8, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  if (![(CNFRegFirstRunController *)self pushCompletionControllerIfPossible]&& ![(CNFRegFirstRunController *)self dismissWithState:v6])
  {
LABEL_7:
    [(CNFRegFirstRunController *)self _updateControllerState];
  }
}

- (BOOL)pushCompletionControllerIfPossible
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = NSStringFromClass([(CNFRegFirstRunController *)self completionControllerClass]);
    *buf = 138412290;
    v27 = v4;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Pushing completion controller %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v25 = NSStringFromClass([(CNFRegFirstRunController *)self completionControllerClass]);
    IMLogString();
  }

  completionControllerClass = [(CNFRegFirstRunController *)self completionControllerClass];
  v6 = completionControllerClass;
  if (completionControllerClass)
  {
    v7 = [completionControllerClass alloc];
    regController = [(CNFRegListController *)self regController];
    v9 = [v7 initWithRegController:regController];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 conformsToProtocol:&unk_2857030B8])
    {
      [v9 setParentController:self];
      rootController = [(CNFRegFirstRunController *)self rootController];
      [v9 setRootController:rootController];

      specifier = [(CNFRegFirstRunController *)self specifier];
      [v9 setSpecifier:specifier];

      if (objc_opt_respondsToSelector())
      {
        [v9 setShouldRerootPreferences:1];
      }

      v12 = *MEMORY[0x277D3FD10];
      WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.super.isa + v12));
      viewControllers = [WeakRetained viewControllers];
      v15 = [viewControllers mutableCopy];

      v16 = objc_alloc_init(MEMORY[0x277CCAB58]);
      if ([v15 count])
      {
        v17 = 0;
        do
        {
          v18 = [v15 objectAtIndex:v17];
          if ([v18 conformsToProtocol:&unk_28570CEE0])
          {
            [v18 setDelegate:0];
            [v16 addIndex:v17];
          }

          ++v17;
        }

        while (v17 < [v15 count]);
      }

      [v15 removeObjectsAtIndexes:v16];
      [v15 addObject:v9];
      v19 = objc_loadWeakRetained((&self->super.super.super.super.super.super.isa + v12));
      [v19 setViewControllers:v15 animated:1];

      v20 = 1;
    }

    else
    {
      v21 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = NSStringFromClass(v6);
        *buf = 138412290;
        v27 = v22;
        _os_log_impl(&dword_243BE5000, v21, OS_LOG_TYPE_DEFAULT, "Unexpected completion controller %@", buf, 0xCu);
      }

      if (!os_log_shim_legacy_logging_enabled() || !IMShouldLog())
      {
        v20 = 0;
        goto LABEL_25;
      }

      v15 = NSStringFromClass(v6);
      IMLogString();
      v20 = 0;
    }

LABEL_25:
    goto LABEL_26;
  }

  v20 = 0;
LABEL_26:
  v23 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)dismissWithState:(unint64_t)state
{
  delegate = [(CNFRegFirstRunController *)self delegate];
  if (delegate)
  {
    v6 = delegate;
    delegate2 = [(CNFRegFirstRunController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate3 = [(CNFRegFirstRunController *)self delegate];
      [delegate3 firstRunController:self finishedWithState:state];

      LOBYTE(delegate) = 1;
    }

    else
    {
      LOBYTE(delegate) = 0;
    }
  }

  return delegate;
}

- (void)_setupEventHandlers
{
  v6.receiver = self;
  v6.super_class = CNFRegFirstRunController;
  [(CNFRegListController *)&v6 _setupEventHandlers];
  regController = [(CNFRegListController *)self regController];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__CNFRegFirstRunController__setupEventHandlers__block_invoke;
  v5[3] = &unk_278DE7E08;
  v5[4] = self;
  [regController setResetBlock:v5];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__CNFRegFirstRunController__setupEventHandlers__block_invoke_2;
  v4[3] = &unk_278DE7E08;
  v4[4] = self;
  [regController setServiceDidBecomeUnsupportedBlock:v4];
}

void __47__CNFRegFirstRunController__setupEventHandlers__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) regController];
  v3 = [v2 isServiceSupported];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 32);

    [v4 _updateControllerState];
  }
}

- (int64_t)currentAppearanceStyle
{
  v3.receiver = self;
  v3.super_class = CNFRegFirstRunController;
  return [(CNFRegListController *)&v3 currentAppearanceStyle];
}

- (void)_executeDismissBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v9 = blockCopy;
    navigationController = [(CNFRegFirstRunController *)self navigationController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      navigationController2 = [(CNFRegFirstRunController *)self navigationController];
      if (navigationController2)
      {
        v8 = navigationController2;
        [navigationController2 setSkipReloadOnNextViewWillAppear:1];
      }
    }

    v9[2]();
    blockCopy = v9;
  }
}

@end