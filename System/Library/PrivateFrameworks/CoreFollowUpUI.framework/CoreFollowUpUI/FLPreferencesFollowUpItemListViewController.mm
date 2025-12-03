@interface FLPreferencesFollowUpItemListViewController
- (id)_viewModel;
- (id)followUpItemSpecifiers;
- (id)specifiers;
- (void)_dismissFlowWithError:(id)error;
- (void)_showRadarPromptForItem:(id)item action:(id)action;
- (void)actionTapped:(id)tapped;
- (void)handleURL:(id)l;
- (void)preflightNetworkConnectivityForHandler:(id)handler withCompletionHandler:(id)completionHandler;
- (void)reloadSpecifiers;
- (void)setSpecifier:(id)specifier;
- (void)startPresentingForHandler:(id)handler withRemoteController:(id)controller customPresentationStyle:(BOOL)style;
@end

@implementation FLPreferencesFollowUpItemListViewController

- (id)_viewModel
{
  viewModel = self->_viewModel;
  if (!viewModel)
  {
    specifier = [(FLPreferencesFollowUpItemListViewController *)self specifier];
    v5 = [specifier propertyForKey:*MEMORY[0x277CFE428]];
    v6 = self->_viewModel;
    self->_viewModel = v5;

    objc_initWeak(&location, self);
    v7 = self->_viewModel;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__FLPreferencesFollowUpItemListViewController__viewModel__block_invoke;
    v9[3] = &unk_278E35EA8;
    objc_copyWeak(&v10, &location);
    [(FLViewModel *)v7 setItemChangeHandler:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
    viewModel = self->_viewModel;
  }

  return viewModel;
}

void __57__FLPreferencesFollowUpItemListViewController__viewModel__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained followUpItemSpecifiers];
    v4 = [v3 count];

    v5 = _FLLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = v4;
      _os_log_impl(&dword_245383000, v5, OS_LOG_TYPE_DEFAULT, "FLPreferencesFollowUpItemListViewController: reloading specifiers due to change, specifiers count: %ld", &v9, 0xCu);
    }

    if (v2[183])
    {
      v6 = 0;
    }

    else
    {
      v6 = v4 == 0;
    }

    if (v6)
    {
      v7 = _FLLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_245383000, v7, OS_LOG_TYPE_DEFAULT, "FLPreferencesFollowUpItemListViewController: dismissing, zero specifiers and no action handler", &v9, 2u);
      }

      [v2 _dismissFlowWithError:0];
    }

    else if (v4 >= 1)
    {
      [v2 reloadSpecifiers];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setSpecifier:(id)specifier
{
  v4 = *MEMORY[0x277D40170];
  specifierCopy = specifier;
  v6 = [specifierCopy propertyForKey:v4];
  [(FLPreferencesFollowUpItemListViewController *)self setTitle:v6];

  v7.receiver = self;
  v7.super_class = FLPreferencesFollowUpItemListViewController;
  [(FLPreferencesFollowUpItemListViewController *)&v7 setSpecifier:specifierCopy];
}

- (void)reloadSpecifiers
{
  v2.receiver = self;
  v2.super_class = FLPreferencesFollowUpItemListViewController;
  [(FLPreferencesFollowUpItemListViewController *)&v2 reloadSpecifiers];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    followUpItemSpecifiers = [(FLPreferencesFollowUpItemListViewController *)self followUpItemSpecifiers];
    v6 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = followUpItemSpecifiers;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)handleURL:(id)l
{
  v8 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v4 = _FLLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = lCopy;
    _os_log_impl(&dword_245383000, v4, OS_LOG_TYPE_DEFAULT, "Processing preference URL: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)followUpItemSpecifiers
{
  array = [MEMORY[0x277CBEB18] array];
  _viewModel = [(FLPreferencesFollowUpItemListViewController *)self _viewModel];
  allPendingItems = [_viewModel allPendingItems];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __69__FLPreferencesFollowUpItemListViewController_followUpItemSpecifiers__block_invoke;
  v12 = &unk_278E35C60;
  v13 = array;
  selfCopy = self;
  v6 = array;
  [allPendingItems enumerateObjectsUsingBlock:&v9];

  v7 = [v6 copy];

  return v7;
}

void __69__FLPreferencesFollowUpItemListViewController_followUpItemSpecifiers__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) detailSpecifiersForFollowUpItem:a2];
  [v2 addObjectsFromArray:v3];
}

- (void)actionTapped:(id)tapped
{
  v14 = *MEMORY[0x277D85DE8];
  tappedCopy = tapped;
  v5 = _FLLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = tappedCopy;
    _os_log_impl(&dword_245383000, v5, OS_LOG_TYPE_DEFAULT, "FLPreferencesFollowUpItemListViewController: action tapped, %@, handling it", buf, 0xCu);
  }

  if (!self->_actionHandler)
  {
    v6 = objc_alloc_init(FLSpecifierTapHandler);
    actionHandler = self->_actionHandler;
    self->_actionHandler = v6;

    [(FLSpecifierTapHandler *)self->_actionHandler setDelegate:self];
    v8 = self->_actionHandler;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __60__FLPreferencesFollowUpItemListViewController_actionTapped___block_invoke;
    v10[3] = &unk_278E35C88;
    v10[4] = self;
    v11 = tappedCopy;
    [(FLSpecifierTapHandler *)v8 actionTapped:v11 eventSource:4 withCompletionHandler:v10];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __60__FLPreferencesFollowUpItemListViewController_actionTapped___block_invoke(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _FLLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"SUCCESS";
    }

    v14 = 138412290;
    v15 = v7;
    _os_log_impl(&dword_245383000, v6, OS_LOG_TYPE_DEFAULT, "FLPreferencesFollowUpItemListViewController: action handler success? %@", &v14, 0xCu);
  }

  if ((a2 & 1) == 0)
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) propertyForKey:*MEMORY[0x277CFE418]];
    v10 = [*(a1 + 40) propertyForKey:*MEMORY[0x277CFE410]];
    [v8 _showRadarPromptForItem:v9 action:v10];
  }

  [*(a1 + 32) _dismissFlowWithError:v5];
  v11 = *(a1 + 32);
  v12 = *(v11 + 1464);
  *(v11 + 1464) = 0;

  v13 = *MEMORY[0x277D85DE8];
}

- (void)startPresentingForHandler:(id)handler withRemoteController:(id)controller customPresentationStyle:(BOOL)style
{
  if (self->_presentationContext)
  {
    self = self->_presentationContext;
  }

  [(FLPreferencesFollowUpItemListViewController *)self presentViewController:controller animated:1 completion:0];
}

- (void)preflightNetworkConnectivityForHandler:(id)handler withCompletionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  v6 = [FLNetworkStatePrompter alloc];
  if (self->_presentationContext)
  {
    presentationContext = self->_presentationContext;
  }

  else
  {
    presentationContext = self;
  }

  v8 = [(FLNetworkStatePrompter *)v6 initWithPresenter:presentationContext];
  [(FLNetworkStatePrompter *)v8 preflightNetworkStateWithCompletionHandler:completionHandlerCopy];
}

- (void)_showRadarPromptForItem:(id)item action:(id)action
{
  v19[2] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  actionCopy = action;
  currentEnvironment = [MEMORY[0x277CFE4F0] currentEnvironment];
  isInternal = [currentEnvironment isInternal];

  if (isInternal)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __78__FLPreferencesFollowUpItemListViewController__showRadarPromptForItem_action___block_invoke;
    v16[3] = &unk_278E35ED0;
    v17 = actionCopy;
    v18 = itemCopy;
    v10 = [FLAlertControllerAction actionWithTitle:@"Tap-To-Radar" style:1 handler:v16];
    v19[0] = v10;
    v11 = [FLAlertControllerAction actionWithTitle:@"Dismiss" style:0 handler:0];
    v19[1] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Follow Up Error [INTERNAL]"];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Did you notice an error? If so, file a radar."];
    [FLAlertControllerHelper presentAlertWithTitle:v13 message:v14 actions:v12 presentingController:self];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __78__FLPreferencesFollowUpItemListViewController__showRadarPromptForItem_action___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) label];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"We failed to handle a CFU action [%@]", v7];
  v3 = MEMORY[0x277CFE540];
  v4 = MEMORY[0x277CCACA8];
  v5 = [*(a1 + 40) extensionIdentifier];
  v6 = [v4 stringWithFormat:@"CFU extension failure: [%@]", v5];
  [v3 tapToRadarWithTitle:v6 initialMessage:v2];
}

- (void)_dismissFlowWithError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  followUpItemSpecifiers = [(FLPreferencesFollowUpItemListViewController *)self followUpItemSpecifiers];
  v6 = [followUpItemSpecifiers count];

  v7 = _FLLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = errorCopy;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_245383000, v7, OS_LOG_TYPE_DEFAULT, "FLPreferencesFollowUpItemListViewController: Checking dismiss flow with error %@, specifiers count: %ld", &v9, 0x16u);
  }

  if (v6)
  {
    [(FLPreferencesFollowUpItemListViewController *)self reloadSpecifiers];
  }

  else
  {
    [(FLPreferencesFollowUpItemListViewController *)self popRecursivelyToRootController];
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end