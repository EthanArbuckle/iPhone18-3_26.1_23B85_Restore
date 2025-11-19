@interface HUSideBarWindowToolbarManager
- (BOOL)shouldUseDarkWindowAppearance;
- (HUSideBarWindowToolbarManager)initWithAppNavigator:(id)a3;
- (HUSideBarWindowToolbarManagerDelegate)delegate;
- (HUWindowTitleProviding)windowTitleProvider;
- (SEL)actionForToolbarItemIdentifier:(id)a3;
- (id)accessibilityLabelForToolbarItemIdentifier:(id)a3;
- (id)currentHome;
- (id)editActionDelegateForNavigationBarButton:(id)a3;
- (id)imageForToolbarItemIdentifier:(id)a3;
- (id)initForTest;
- (id)itemIdentifiersForToolbar;
- (id)navigationBarButtonForToolbarItemIdentifier:(id)a3;
- (id)roomForNavigationBarButton:(id)a3;
- (id)statusItemsForNavigationBarButton:(id)a3 inHome:(id)a4;
- (id)windowTitle;
- (unint64_t)toolbarItemStyleForToolbarItemIdentifier:(id)a3;
- (void)_discoverTabBackButton;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)home:(id)a3 didUpdateNameForRoom:(id)a4;
- (void)homeDidUpdateName:(id)a3;
- (void)homeManager:(id)a3 didAddHome:(id)a4;
- (void)homeManager:(id)a3 didRemoveHome:(id)a4;
- (void)homeManager:(id)a3 didUpdateStateForIncomingInvitations:(id)a4;
- (void)homeManagerDidUpdateCurrentHome:(id)a3;
- (void)setDashboardContext:(id)a3;
- (void)setDashboardStatusItems:(id)a3;
- (void)setDiscoverTabPosition:(unint64_t)a3;
- (void)setDiscoverTabStyle:(unint64_t)a3;
- (void)setTabIdentifier:(id)a3;
- (void)setViewStyle:(unint64_t)a3;
@end

@implementation HUSideBarWindowToolbarManager

- (id)initForTest
{
  v2 = [(HUSideBarWindowToolbarManager *)self initWithAppNavigator:0];
  v3 = sharedToolbarManager;
  sharedToolbarManager = 0;

  return v2;
}

- (HUSideBarWindowToolbarManager)initWithAppNavigator:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = HUSideBarWindowToolbarManager;
  v6 = [(HUSideBarWindowToolbarManager *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appNavigator, a3);
    v8 = [MEMORY[0x277D14B30] sharedInstance];
    v9 = [v8 selectedHomeAppTabIdentifier];
    tabIdentifier = v7->_tabIdentifier;
    v7->_tabIdentifier = v9;

    if (!v7->_tabIdentifier)
    {
      v11 = HFLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_error_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_ERROR, "HUSideBarWindowToolbarManager: missing tab identifier, defaulting to home context", v15, 2u);
      }

      objc_storeStrong(&v7->_tabIdentifier, *MEMORY[0x277D13938]);
    }

    v12 = [MEMORY[0x277D146E8] sharedDispatcher];
    [v12 addHomeManagerObserver:v7];

    v13 = [MEMORY[0x277D146E8] sharedDispatcher];
    [v13 addHomeObserver:v7];

    objc_storeStrong(&sharedToolbarManager, v7);
  }

  return v7;
}

- (id)currentHome
{
  v3 = [(HUSideBarWindowToolbarManager *)self tabIdentifier];
  if ([v3 isEqualToString:*MEMORY[0x277D13938]])
  {

LABEL_4:
    v5 = [(HUSideBarWindowToolbarManager *)self dashboardContext];
    goto LABEL_6;
  }

  v4 = [MEMORY[0x277D14CE8] isInternalTest];

  if (v4)
  {
    goto LABEL_4;
  }

  v5 = [MEMORY[0x277D146E8] sharedDispatcher];
LABEL_6:
  v6 = v5;
  v7 = [v5 home];

  return v7;
}

- (void)setTabIdentifier:(id)a3
{
  v10 = a3;
  v5 = [(NSString *)self->_tabIdentifier isEqualToString:v10];
  v6 = v10;
  if (!v5)
  {
    if (([v10 isEqualToString:*MEMORY[0x277D13938]] & 1) == 0)
    {
      dashboardContext = self->_dashboardContext;
      self->_dashboardContext = 0;
    }

    objc_storeStrong(&self->_tabIdentifier, a3);
    v8 = [(HUSideBarWindowToolbarManager *)self delegate];
    [v8 resetToolbar];

    v9 = [(HUSideBarWindowToolbarManager *)self delegate];
    [v9 refreshWindowAppearance];

    v6 = v10;
  }
}

- (void)setDashboardContext:(id)a3
{
  v7 = a3;
  if (![(HUDashboardContext *)self->_dashboardContext isEqual:?])
  {
    dashboardStatusItems = self->_dashboardStatusItems;
    self->_dashboardStatusItems = 0;

    objc_storeStrong(&self->_dashboardContext, a3);
    v6 = [(HUSideBarWindowToolbarManager *)self delegate];
    [v6 resetToolbar];
  }
}

- (void)setDashboardStatusItems:(id)a3
{
  v6 = a3;
  if (([(NSArray *)self->_dashboardStatusItems isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_dashboardStatusItems, a3);
    v5 = [(HUSideBarWindowToolbarManager *)self delegate];
    [v5 resetToolbar];
  }
}

- (void)setDiscoverTabStyle:(unint64_t)a3
{
  if (self->_discoverTabStyle != a3)
  {
    self->_discoverTabStyle = a3;
    v4 = [(HUSideBarWindowToolbarManager *)self delegate];
    [v4 resetToolbar];
  }
}

- (void)setDiscoverTabPosition:(unint64_t)a3
{
  if (self->_discoverTabPosition != a3)
  {
    self->_discoverTabPosition = a3;
    v4 = [(HUSideBarWindowToolbarManager *)self delegate];
    [v4 resetToolbarTitleStyle];
  }
}

- (void)setViewStyle:(unint64_t)a3
{
  if (self->_viewStyle != a3)
  {
    self->_viewStyle = a3;
    v4 = [(HUSideBarWindowToolbarManager *)self delegate];
    [v4 resetToolbar];
  }
}

- (id)itemIdentifiersForToolbar
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(HUSideBarWindowToolbarManager *)self viewStyle]== 1)
  {
    goto LABEL_23;
  }

  v4 = [(HUSideBarWindowToolbarManager *)self dashboardContext];
  v5 = [v4 room];
  if (v5)
  {
  }

  else
  {
    v6 = [(HUSideBarWindowToolbarManager *)self dashboardContext];
    v7 = [v6 overrideDashboardTitle];

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  [v3 addObject:@"DashboardTabBackButtonToolbarItemIdentifier"];
LABEL_6:
  v8 = [(HUSideBarWindowToolbarManager *)self tabIdentifier];
  if ([v8 isEqualToString:*MEMORY[0x277D13930]])
  {
    v9 = [(HUSideBarWindowToolbarManager *)self discoverTabStyle];

    if (v9 == 2)
    {
      [v3 addObject:@"DiscoverTabBackButtonToolbarItemIdentifier"];
    }
  }

  else
  {
  }

  v10 = [(HUSideBarWindowToolbarManager *)self tabIdentifier];
  v11 = *MEMORY[0x277D13938];
  if ([v10 isEqualToString:*MEMORY[0x277D13938]])
  {

    goto LABEL_13;
  }

  v12 = [(HUSideBarWindowToolbarManager *)self tabIdentifier];
  v13 = [v12 isEqualToString:*MEMORY[0x277D13940]];

  if (v13)
  {
LABEL_13:
    v14 = [(HUSideBarWindowToolbarManager *)self currentHome];
    if ([v14 hf_currentUserIsAdministrator])
    {
      v15 = [(HUSideBarWindowToolbarManager *)self dashboardContext];
      v16 = [v15 home];
      v17 = [v16 hf_shouldBlockCurrentUserFromHome];

      if ((v17 & 1) == 0)
      {
        [v3 addObject:@"AddMenuToolbarItemIdentifier"];
      }
    }

    else
    {
    }
  }

  v18 = [(HUSideBarWindowToolbarManager *)self tabIdentifier];
  v19 = [v18 isEqualToString:v11];

  if (!v19)
  {
    goto LABEL_23;
  }

  v20 = [(HUSideBarWindowToolbarManager *)self dashboardContext];
  v21 = [v20 room];

  if (v21)
  {
    v22 = @"RoomMenuToolbarItemIdentifier";
  }

  else
  {
    v23 = [(HUSideBarWindowToolbarManager *)self dashboardContext];
    v24 = [v23 home];

    if (!v24)
    {
      goto LABEL_23;
    }

    v22 = @"HomeMenuToolbarItemIdentifier";
  }

  [v3 addObject:v22];
LABEL_23:

  return v3;
}

- (SEL)actionForToolbarItemIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"DiscoverTabBackButtonToolbarItemIdentifier"])
  {
    v4 = sel__discoverTabBackButton;
  }

  else if ([v3 isEqualToString:@"DashboardTabBackButtonToolbarItemIdentifier"])
  {
    v4 = sel__dashboardTabBackButton;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)imageForToolbarItemIdentifier:(id)a3
{
  v3 = a3;
  if (([v3 isEqualToString:@"DiscoverTabBackButtonToolbarItemIdentifier"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"DashboardTabBackButtonToolbarItemIdentifier"))
  {
    v4 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.left"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)navigationBarButtonForToolbarItemIdentifier:(id)a3
{
  v4 = a3;
  if (([v4 isEqualToString:@"HomeMenuToolbarItemIdentifier"] & 1) == 0 && !objc_msgSend(v4, "isEqualToString:", @"RoomMenuToolbarItemIdentifier"))
  {
    if (![v4 isEqualToString:@"AddMenuToolbarItemIdentifier"])
    {
      v13 = [(HUSideBarWindowToolbarManager *)self imageForToolbarItemIdentifier:v4];
      v14 = [(HUSideBarWindowToolbarManager *)self actionForToolbarItemIdentifier:v4];
      if (v14)
      {
        v15 = self;
      }

      else
      {
        v15 = 0;
      }

      v16 = MEMORY[0x277D751E0];
      v17 = v15;
      v12 = [[v16 alloc] initWithImage:v13 style:0 target:v17 action:v14];

      goto LABEL_17;
    }

    v8 = [HUNavigationBarButton addButtonWithOwner:self];
    goto LABEL_10;
  }

  v5 = [(HUSideBarWindowToolbarManager *)self dashboardContext];

  if (!v5)
  {
    v9 = HFLogForCategory();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v20 = 0;
    v10 = "stop home button creation due to no dashboard context found";
    v11 = &v20;
LABEL_21:
    _os_log_error_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_ERROR, v10, v11, 2u);
    goto LABEL_12;
  }

  v6 = [(HUSideBarWindowToolbarManager *)self dashboardContext];
  v7 = [v6 home];

  if (v7)
  {
    v8 = [HUNavigationBarButton homeButtonWithOwner:self];
LABEL_10:
    v12 = v8;
    goto LABEL_17;
  }

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v19 = 0;
    v10 = "stop home button creation due to no home found on dashboard context";
    v11 = &v19;
    goto LABEL_21;
  }

LABEL_12:

  v12 = 0;
LABEL_17:

  return v12;
}

- (BOOL)shouldUseDarkWindowAppearance
{
  v2 = [(HUSideBarWindowToolbarManager *)self tabIdentifier];
  v3 = [v2 isEqualToString:*MEMORY[0x277D13938]];

  return v3;
}

- (id)accessibilityLabelForToolbarItemIdentifier:(id)a3
{
  v3 = a3;
  if (([v3 isEqualToString:@"HomeMenuToolbarItemIdentifier"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"RoomMenuToolbarItemIdentifier") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"AddMenuToolbarItemIdentifier") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"DiscoverTabBackButtonToolbarItemIdentifier") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"DashboardTabBackButtonToolbarItemIdentifier"))
  {
    v4 = HFLocalizedString();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)windowTitle
{
  if ([(HUSideBarWindowToolbarManager *)self viewStyle]== 1)
  {
    v3 = 0;
    goto LABEL_9;
  }

  v4 = [(HUSideBarWindowToolbarManager *)self windowTitleProvider];
  v5 = [(HUSideBarWindowToolbarManager *)self tabIdentifier];
  v6 = [(HUSideBarWindowToolbarManager *)self dashboardContext];
  v7 = [v4 windowTitleForTabIdentifier:v5 dashboardContext:v6];

  v8 = [(HUSideBarWindowToolbarManager *)self tabIdentifier];
  if (![v8 isEqualToString:*MEMORY[0x277D13930]])
  {

    goto LABEL_7;
  }

  v9 = [(HUSideBarWindowToolbarManager *)self discoverTabStyle];

  if (!v9)
  {
LABEL_7:
    v3 = v7;
    goto LABEL_8;
  }

  v3 = 0;
LABEL_8:

LABEL_9:

  return v3;
}

- (unint64_t)toolbarItemStyleForToolbarItemIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"HomeMenuToolbarItemIdentifier"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"RoomMenuToolbarItemIdentifier"))
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"DiscoverTabBackButtonToolbarItemIdentifier"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"DashboardTabBackButtonToolbarItemIdentifier"];
  }

  return v4;
}

- (void)_discoverTabBackButton
{
  [(HUSideBarWindowToolbarManager *)self setDiscoverTabStyle:1];
  v5 = objc_alloc_init(MEMORY[0x277CDA000]);
  [v5 setDuration:0.5];
  [v5 setType:*MEMORY[0x277CDA958]];
  [v5 setSubtype:*MEMORY[0x277CDA938]];
  v3 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v5 setTimingFunction:v3];

  [v5 setDelegate:self];
  v4 = [(HUSideBarWindowToolbarManager *)self delegate];
  [v4 dismissViewControllerWithAnimation:v5];
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  if (a4)
  {
    [(HUSideBarWindowToolbarManager *)self setDiscoverTabStyle:0];
  }
}

- (id)roomForNavigationBarButton:(id)a3
{
  v3 = [(HUSideBarWindowToolbarManager *)self dashboardContext];
  v4 = [v3 room];

  return v4;
}

- (id)statusItemsForNavigationBarButton:(id)a3 inHome:(id)a4
{
  v4 = [(HUSideBarWindowToolbarManager *)self dashboardStatusItems:a3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = v6;

  return v6;
}

- (id)editActionDelegateForNavigationBarButton:(id)a3
{
  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    objc_opt_class();
    v4 = [(HUSideBarWindowToolbarManager *)self appNavigator];
    v5 = [v4 rootViewController];
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    objc_opt_class();
    v8 = [v7 selectedViewController];
  }

  else
  {
    objc_opt_class();
    v9 = [(HUSideBarWindowToolbarManager *)self appNavigator];
    v10 = [v9 rootViewController];
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v7 = v11;

    objc_opt_class();
    v8 = [v7 viewControllerForColumn:2];
  }

  v12 = v8;

  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

- (void)homeManager:(id)a3 didAddHome:(id)a4
{
  v4 = [(HUSideBarWindowToolbarManager *)self delegate:a3];
  [v4 resetToolbarItemMenuForItemIdentifier:@"HomeMenuToolbarItemIdentifier"];
}

- (void)homeManager:(id)a3 didRemoveHome:(id)a4
{
  v4 = [(HUSideBarWindowToolbarManager *)self delegate:a3];
  [v4 resetToolbarItemMenuForItemIdentifier:@"HomeMenuToolbarItemIdentifier"];
}

- (void)homeManagerDidUpdateCurrentHome:(id)a3
{
  v3 = [(HUSideBarWindowToolbarManager *)self delegate];
  [v3 resetToolbarItemMenuForItemIdentifier:@"HomeMenuToolbarItemIdentifier"];
}

- (void)homeDidUpdateName:(id)a3
{
  v4 = [(HUSideBarWindowToolbarManager *)self delegate];
  [v4 resetToolbarItemMenuForItemIdentifier:@"HomeMenuToolbarItemIdentifier"];

  v5 = [(HUSideBarWindowToolbarManager *)self delegate];
  [v5 resetToolbarTitle];
}

- (void)homeManager:(id)a3 didUpdateStateForIncomingInvitations:(id)a4
{
  v4 = [(HUSideBarWindowToolbarManager *)self delegate:a3];
  [v4 resetToolbarItemMenuForItemIdentifier:@"HomeMenuToolbarItemIdentifier"];
}

- (void)home:(id)a3 didUpdateNameForRoom:(id)a4
{
  v4 = [(HUSideBarWindowToolbarManager *)self delegate:a3];
  [v4 resetToolbarTitle];
}

- (HUSideBarWindowToolbarManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HUWindowTitleProviding)windowTitleProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_windowTitleProvider);

  return WeakRetained;
}

@end