@interface AutomationOverlayViewController
- (AutomationOverlayViewController)initWithDelegate:(id)delegate;
- (BOOL)allowsUserInteraction;
- (void)_interceptUserInteraction;
- (void)_setAllowsUserInteraction:(BOOL)interaction completionHandler:(id)handler;
- (void)_toggleAllowsUserInteractionTemporarily:(BOOL)temporarily;
- (void)loadView;
@end

@implementation AutomationOverlayViewController

- (AutomationOverlayViewController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = AutomationOverlayViewController;
  v6 = [(AutomationOverlayViewController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, delegate);
    v7->_allowsUserInteraction = 0;
    v8 = v7;
  }

  return v7;
}

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = AutomationOverlayViewController;
  [(AutomationOverlayViewController *)&v6 loadView];
  view = [(AutomationOverlayViewController *)self view];
  if (SFDebugMenuEnabled())
  {
    v4 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:1.0 alpha:0.2];
    [view setBackgroundColor:v4];
  }

  layer = [view layer];
  [layer setHitTestsAsOpaque:1];

  [view setAutoresizingMask:18];
}

- (BOOL)allowsUserInteraction
{
  if (self->_allowsUserInteraction)
  {
    return 1;
  }

  return (objc_opt_respondsToSelector() & 1) != 0 && ([(AutomationOverlayViewControllerDelegate *)self->_delegate automationOverlayControllerShouldAllowUserInteraction:self]& 1) != 0;
}

- (void)_interceptUserInteraction
{
  presentedViewController = [(AutomationOverlayViewController *)self presentedViewController];

  if (!presentedViewController && ![(AutomationOverlayViewController *)self allowsUserInteraction])
  {
    v4 = MEMORY[0x277D75110];
    v5 = _WBSLocalizedString();
    v6 = _WBSLocalizedString();
    v7 = [v4 alertControllerWithTitle:v5 message:v6 preferredStyle:1];

    v8 = MEMORY[0x277D750F8];
    v9 = _WBSLocalizedString();
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __60__AutomationOverlayViewController__interceptUserInteraction__block_invoke;
    v22[3] = &unk_2781D79E8;
    v22[4] = self;
    v10 = [v8 actionWithTitle:v9 style:2 handler:v22];
    [v7 addAction:v10];

    v11 = MEMORY[0x277D750F8];
    v12 = _WBSLocalizedString();
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __60__AutomationOverlayViewController__interceptUserInteraction__block_invoke_2;
    v21[3] = &unk_2781D79E8;
    v21[4] = self;
    v13 = [v11 actionWithTitle:v12 style:0 handler:v21];
    [v7 addAction:v13];

    if (SFDebugMenuEnabled())
    {
      v14 = MEMORY[0x277D750F8];
      0x4014000000000000 = [MEMORY[0x277CCACA8] stringWithFormat:@"Allow Interaction for %.f seconds", 0x4014000000000000];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __60__AutomationOverlayViewController__interceptUserInteraction__block_invoke_3;
      v20[3] = &unk_2781D79E8;
      v20[4] = self;
      v16 = [v14 actionWithTitle:0x4014000000000000 style:0 handler:v20];
      [v7 addAction:v16];
    }

    v17 = MEMORY[0x277D750F8];
    v18 = _WBSLocalizedString();
    v19 = [v17 actionWithTitle:v18 style:1 handler:&__block_literal_global_14];
    [v7 addAction:v19];

    [(AutomationOverlayViewController *)self presentViewController:v7 animated:1 completion:0];
  }
}

uint64_t __60__AutomationOverlayViewController__interceptUserInteraction__block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(*(a1 + 32) + 992);

    return [v3 automationOverlayControllerDidDisableAutomation:?];
  }

  return result;
}

uint64_t __60__AutomationOverlayViewController__interceptUserInteraction__block_invoke_2(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(*(a1 + 32) + 992);

    return [v3 automationOverlayControllerDidCancelAutomation:?];
  }

  return result;
}

- (void)_toggleAllowsUserInteractionTemporarily:(BOOL)temporarily
{
  objc_initWeak(&location, self);
  allowsUserInteraction = self->_allowsUserInteraction;
  resetTemporaryUserInteractionAllowedBlock = self->_resetTemporaryUserInteractionAllowedBlock;
  if (resetTemporaryUserInteractionAllowedBlock)
  {
    dispatch_block_cancel(resetTemporaryUserInteractionAllowedBlock);
    v7 = self->_resetTemporaryUserInteractionAllowedBlock;
    self->_resetTemporaryUserInteractionAllowedBlock = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__AutomationOverlayViewController__toggleAllowsUserInteractionTemporarily___block_invoke;
  v8[3] = &unk_2781D7A38;
  temporarilyCopy = temporarily;
  objc_copyWeak(&v9, &location);
  v11 = allowsUserInteraction;
  [(AutomationOverlayViewController *)self _setAllowsUserInteraction:!allowsUserInteraction completionHandler:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __75__AutomationOverlayViewController__toggleAllowsUserInteractionTemporarily___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v11 = v1;
    v12 = v2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __75__AutomationOverlayViewController__toggleAllowsUserInteractionTemporarily___block_invoke_2;
      v8[3] = &unk_2781D7A10;
      objc_copyWeak(&v9, (a1 + 32));
      v10 = *(a1 + 41);
      v5 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, v8);
      v6 = WeakRetained[126];
      WeakRetained[126] = v5;

      v7 = dispatch_time(0, 5000000000);
      dispatch_after(v7, MEMORY[0x277D85CD0], WeakRetained[126]);
      objc_destroyWeak(&v9);
    }
  }
}

void __75__AutomationOverlayViewController__toggleAllowsUserInteractionTemporarily___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setAllowsUserInteraction:*(a1 + 40) completionHandler:0];
}

- (void)_setAllowsUserInteraction:(BOOL)interaction completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = MEMORY[0x277D75D18];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__AutomationOverlayViewController__setAllowsUserInteraction_completionHandler___block_invoke;
  v12[3] = &unk_2781D51B8;
  v12[4] = self;
  interactionCopy = interaction;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__AutomationOverlayViewController__setAllowsUserInteraction_completionHandler___block_invoke_2;
  v9[3] = &unk_2781D7A60;
  interactionCopy2 = interaction;
  v9[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [v7 animateWithDuration:v12 animations:v9 completion:0.5];
}

void __79__AutomationOverlayViewController__setAllowsUserInteraction_completionHandler___block_invoke(uint64_t a1)
{
  v1 = (*(a1 + 40) ^ 1u);
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:v1];
}

uint64_t __79__AutomationOverlayViewController__setAllowsUserInteraction_completionHandler___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 1000) = *(a1 + 48);
  if (objc_opt_respondsToSelector())
  {
    [*(*(a1 + 32) + 992) automationOverlayController:*(a1 + 32) didChangeAllowsUserInteraction:*(*(a1 + 32) + 1000)];
  }

  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

@end