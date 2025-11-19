@interface CSFocusActivityManager
- (BOOL)isFocusActivityIndicatorVisible;
- (CSFocusActivityDelegate)delegate;
- (CSFocusActivityManager)initWithItemDestination:(id)a3;
- (id)_activityForDisplayInIndicator;
- (void)_addOrUpdateFocusActivityIndicatorItemIfNecessary;
- (void)_updateFocusActivityIndicator;
- (void)activeActivityDidChangeForManager:(id)a3;
- (void)availableActivitiesDidChangeForManager:(id)a3;
- (void)focusActivityViewIndicatorDidChangeToVisible:(BOOL)a3;
@end

@implementation CSFocusActivityManager

- (CSFocusActivityManager)initWithItemDestination:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = CSFocusActivityManager;
  v6 = [(CSFocusActivityManager *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_itemDestination, a3);
    v8 = objc_alloc_init(CSFocusActivityViewController);
    focusActivityViewController = v7->_focusActivityViewController;
    v7->_focusActivityViewController = v8;

    [(CSFocusActivityViewController *)v7->_focusActivityViewController setDelegate:v7];
    [(CSFocusActivityManager *)v7 _addOrUpdateFocusActivityIndicatorItemIfNecessary];
    Serial = BSDispatchQueueCreateSerial();
    activityManagerQueue = v7->_activityManagerQueue;
    v7->_activityManagerQueue = Serial;

    v12 = [MEMORY[0x277D0A9E8] sharedActivityManager];
    activityManager = v7->_activityManager;
    v7->_activityManager = v12;

    [(FCActivityManager *)v7->_activityManager addObserver:v7];
    [(CSFocusActivityManager *)v7 _updateFocusActivityIndicator];
  }

  return v7;
}

- (void)focusActivityViewIndicatorDidChangeToVisible:(BOOL)a3
{
  v3 = a3;
  v7 = [(CSFocusActivityManager *)self delegate];
  v5 = [(CSFocusActivityManager *)self _activityForDisplayInIndicator];

  if (!v5)
  {
    [(CSItemDestination *)self->_itemDestination removeItemForIdentifier:@"focus activity identifier"];
    focusActivityItem = self->_focusActivityItem;
    self->_focusActivityItem = 0;
  }

  [v7 focusActivityIndicatorDidChangeToVisible:v3];
}

- (void)activeActivityDidChangeForManager:(id)a3
{
  if (self->_activityManager == a3)
  {
    v8 = v3;
    v9 = v4;
    v6 = SBLogDashBoard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "Active focus activity did change...", v7, 2u);
    }

    [(CSFocusActivityManager *)self _addOrUpdateFocusActivityIndicatorItemIfNecessary];
    [(CSFocusActivityManager *)self _updateFocusActivityIndicator];
  }
}

- (void)availableActivitiesDidChangeForManager:(id)a3
{
  if (self->_activityManager == a3)
  {
    v8 = v3;
    v9 = v4;
    v6 = SBLogDashBoard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "Available focus activities did change...", v7, 2u);
    }

    [(CSFocusActivityManager *)self _updateFocusActivityIndicator];
  }
}

- (BOOL)isFocusActivityIndicatorVisible
{
  if (CSAutobahnEnabledForPlatform())
  {
    return 0;
  }

  focusActivityViewController = self->_focusActivityViewController;

  return [(CSFocusActivityViewController *)focusActivityViewController isActivityIndicatorVisible];
}

- (void)_addOrUpdateFocusActivityIndicatorItemIfNecessary
{
  v3 = [(CSFocusActivityManager *)self _activityForDisplayInIndicator];

  if (v3)
  {
    focusActivityItem = self->_focusActivityItem;
    if (!focusActivityItem)
    {
      v5 = [[CSAdjunctListItem alloc] initWithIdentifier:@"focus activity identifier"];
      [(CSAdjunctListItem *)v5 setAnimatePresentation:0];
      [(CSAdjunctListItem *)v5 setContentHost:self->_focusActivityViewController];
      v6 = self->_focusActivityItem;
      self->_focusActivityItem = v5;

      focusActivityItem = self->_focusActivityItem;
    }

    itemDestination = self->_itemDestination;

    [(CSItemDestination *)itemDestination addOrUpdateItem:focusActivityItem];
  }
}

- (id)_activityForDisplayInIndicator
{
  if (CSAutobahnEnabledForPlatform())
  {
    v3 = 0;
  }

  else
  {
    v3 = [(FCActivityManager *)self->_activityManager activeActivity];
  }

  return v3;
}

- (void)_updateFocusActivityIndicator
{
  activityManagerQueue = self->_activityManagerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__CSFocusActivityManager__updateFocusActivityIndicator__block_invoke;
  block[3] = &unk_27838B770;
  block[4] = self;
  dispatch_async(activityManagerQueue, block);
}

void __55__CSFocusActivityManager__updateFocusActivityIndicator__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _activityForDisplayInIndicator];
  v3 = SBLogDashBoard();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v2;
    _os_log_impl(&dword_21EB05000, v3, OS_LOG_TYPE_DEFAULT, "Setting focus activity: %@", buf, 0xCu);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__CSFocusActivityManager__updateFocusActivityIndicator__block_invoke_6;
  v5[3] = &unk_27838B838;
  v5[4] = *(a1 + 32);
  v6 = v2;
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __55__CSFocusActivityManager__updateFocusActivityIndicator__block_invoke_6(uint64_t a1)
{
  [*(*(a1 + 32) + 40) setActivity:*(a1 + 40)];
  v2 = [*(a1 + 32) delegate];
  [v2 focusActivityIndicatorDidChangeToVisible:{objc_msgSend(*(a1 + 32), "isFocusActivityIndicatorVisible")}];
}

- (CSFocusActivityDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end