@interface HUSideBarWindowToolbarManager
- (BOOL)shouldUseDarkWindowAppearance;
- (HUSideBarWindowToolbarManager)initWithAppNavigator:(id)navigator;
- (HUSideBarWindowToolbarManagerDelegate)delegate;
- (HUWindowTitleProviding)windowTitleProvider;
- (SEL)actionForToolbarItemIdentifier:(id)identifier;
- (id)accessibilityLabelForToolbarItemIdentifier:(id)identifier;
- (id)currentHome;
- (id)editActionDelegateForNavigationBarButton:(id)button;
- (id)imageForToolbarItemIdentifier:(id)identifier;
- (id)initForTest;
- (id)itemIdentifiersForToolbar;
- (id)navigationBarButtonForToolbarItemIdentifier:(id)identifier;
- (id)roomForNavigationBarButton:(id)button;
- (id)statusItemsForNavigationBarButton:(id)button inHome:(id)home;
- (id)windowTitle;
- (unint64_t)toolbarItemStyleForToolbarItemIdentifier:(id)identifier;
- (void)_discoverTabBackButton;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)home:(id)home didUpdateNameForRoom:(id)room;
- (void)homeDidUpdateName:(id)name;
- (void)homeManager:(id)manager didAddHome:(id)home;
- (void)homeManager:(id)manager didRemoveHome:(id)home;
- (void)homeManager:(id)manager didUpdateStateForIncomingInvitations:(id)invitations;
- (void)homeManagerDidUpdateCurrentHome:(id)home;
- (void)setDashboardContext:(id)context;
- (void)setDashboardStatusItems:(id)items;
- (void)setDiscoverTabPosition:(unint64_t)position;
- (void)setDiscoverTabStyle:(unint64_t)style;
- (void)setTabIdentifier:(id)identifier;
- (void)setViewStyle:(unint64_t)style;
@end

@implementation HUSideBarWindowToolbarManager

- (id)initForTest
{
  v2 = [(HUSideBarWindowToolbarManager *)self initWithAppNavigator:0];
  v3 = sharedToolbarManager;
  sharedToolbarManager = 0;

  return v2;
}

- (HUSideBarWindowToolbarManager)initWithAppNavigator:(id)navigator
{
  navigatorCopy = navigator;
  v16.receiver = self;
  v16.super_class = HUSideBarWindowToolbarManager;
  v6 = [(HUSideBarWindowToolbarManager *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appNavigator, navigator);
    mEMORY[0x277D14B30] = [MEMORY[0x277D14B30] sharedInstance];
    selectedHomeAppTabIdentifier = [mEMORY[0x277D14B30] selectedHomeAppTabIdentifier];
    tabIdentifier = v7->_tabIdentifier;
    v7->_tabIdentifier = selectedHomeAppTabIdentifier;

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

    mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
    [mEMORY[0x277D146E8] addHomeManagerObserver:v7];

    mEMORY[0x277D146E8]2 = [MEMORY[0x277D146E8] sharedDispatcher];
    [mEMORY[0x277D146E8]2 addHomeObserver:v7];

    objc_storeStrong(&sharedToolbarManager, v7);
  }

  return v7;
}

- (id)currentHome
{
  tabIdentifier = [(HUSideBarWindowToolbarManager *)self tabIdentifier];
  if ([tabIdentifier isEqualToString:*MEMORY[0x277D13938]])
  {

LABEL_4:
    dashboardContext = [(HUSideBarWindowToolbarManager *)self dashboardContext];
    goto LABEL_6;
  }

  isInternalTest = [MEMORY[0x277D14CE8] isInternalTest];

  if (isInternalTest)
  {
    goto LABEL_4;
  }

  dashboardContext = [MEMORY[0x277D146E8] sharedDispatcher];
LABEL_6:
  v6 = dashboardContext;
  home = [dashboardContext home];

  return home;
}

- (void)setTabIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSString *)self->_tabIdentifier isEqualToString:identifierCopy];
  v6 = identifierCopy;
  if (!v5)
  {
    if (([identifierCopy isEqualToString:*MEMORY[0x277D13938]] & 1) == 0)
    {
      dashboardContext = self->_dashboardContext;
      self->_dashboardContext = 0;
    }

    objc_storeStrong(&self->_tabIdentifier, identifier);
    delegate = [(HUSideBarWindowToolbarManager *)self delegate];
    [delegate resetToolbar];

    delegate2 = [(HUSideBarWindowToolbarManager *)self delegate];
    [delegate2 refreshWindowAppearance];

    v6 = identifierCopy;
  }
}

- (void)setDashboardContext:(id)context
{
  contextCopy = context;
  if (![(HUDashboardContext *)self->_dashboardContext isEqual:?])
  {
    dashboardStatusItems = self->_dashboardStatusItems;
    self->_dashboardStatusItems = 0;

    objc_storeStrong(&self->_dashboardContext, context);
    delegate = [(HUSideBarWindowToolbarManager *)self delegate];
    [delegate resetToolbar];
  }
}

- (void)setDashboardStatusItems:(id)items
{
  itemsCopy = items;
  if (([(NSArray *)self->_dashboardStatusItems isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_dashboardStatusItems, items);
    delegate = [(HUSideBarWindowToolbarManager *)self delegate];
    [delegate resetToolbar];
  }
}

- (void)setDiscoverTabStyle:(unint64_t)style
{
  if (self->_discoverTabStyle != style)
  {
    self->_discoverTabStyle = style;
    delegate = [(HUSideBarWindowToolbarManager *)self delegate];
    [delegate resetToolbar];
  }
}

- (void)setDiscoverTabPosition:(unint64_t)position
{
  if (self->_discoverTabPosition != position)
  {
    self->_discoverTabPosition = position;
    delegate = [(HUSideBarWindowToolbarManager *)self delegate];
    [delegate resetToolbarTitleStyle];
  }
}

- (void)setViewStyle:(unint64_t)style
{
  if (self->_viewStyle != style)
  {
    self->_viewStyle = style;
    delegate = [(HUSideBarWindowToolbarManager *)self delegate];
    [delegate resetToolbar];
  }
}

- (id)itemIdentifiersForToolbar
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(HUSideBarWindowToolbarManager *)self viewStyle]== 1)
  {
    goto LABEL_23;
  }

  dashboardContext = [(HUSideBarWindowToolbarManager *)self dashboardContext];
  room = [dashboardContext room];
  if (room)
  {
  }

  else
  {
    dashboardContext2 = [(HUSideBarWindowToolbarManager *)self dashboardContext];
    overrideDashboardTitle = [dashboardContext2 overrideDashboardTitle];

    if (!overrideDashboardTitle)
    {
      goto LABEL_6;
    }
  }

  [v3 addObject:@"DashboardTabBackButtonToolbarItemIdentifier"];
LABEL_6:
  tabIdentifier = [(HUSideBarWindowToolbarManager *)self tabIdentifier];
  if ([tabIdentifier isEqualToString:*MEMORY[0x277D13930]])
  {
    discoverTabStyle = [(HUSideBarWindowToolbarManager *)self discoverTabStyle];

    if (discoverTabStyle == 2)
    {
      [v3 addObject:@"DiscoverTabBackButtonToolbarItemIdentifier"];
    }
  }

  else
  {
  }

  tabIdentifier2 = [(HUSideBarWindowToolbarManager *)self tabIdentifier];
  v11 = *MEMORY[0x277D13938];
  if ([tabIdentifier2 isEqualToString:*MEMORY[0x277D13938]])
  {

    goto LABEL_13;
  }

  tabIdentifier3 = [(HUSideBarWindowToolbarManager *)self tabIdentifier];
  v13 = [tabIdentifier3 isEqualToString:*MEMORY[0x277D13940]];

  if (v13)
  {
LABEL_13:
    currentHome = [(HUSideBarWindowToolbarManager *)self currentHome];
    if ([currentHome hf_currentUserIsAdministrator])
    {
      dashboardContext3 = [(HUSideBarWindowToolbarManager *)self dashboardContext];
      home = [dashboardContext3 home];
      hf_shouldBlockCurrentUserFromHome = [home hf_shouldBlockCurrentUserFromHome];

      if ((hf_shouldBlockCurrentUserFromHome & 1) == 0)
      {
        [v3 addObject:@"AddMenuToolbarItemIdentifier"];
      }
    }

    else
    {
    }
  }

  tabIdentifier4 = [(HUSideBarWindowToolbarManager *)self tabIdentifier];
  v19 = [tabIdentifier4 isEqualToString:v11];

  if (!v19)
  {
    goto LABEL_23;
  }

  dashboardContext4 = [(HUSideBarWindowToolbarManager *)self dashboardContext];
  room2 = [dashboardContext4 room];

  if (room2)
  {
    v22 = @"RoomMenuToolbarItemIdentifier";
  }

  else
  {
    dashboardContext5 = [(HUSideBarWindowToolbarManager *)self dashboardContext];
    home2 = [dashboardContext5 home];

    if (!home2)
    {
      goto LABEL_23;
    }

    v22 = @"HomeMenuToolbarItemIdentifier";
  }

  [v3 addObject:v22];
LABEL_23:

  return v3;
}

- (SEL)actionForToolbarItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"DiscoverTabBackButtonToolbarItemIdentifier"])
  {
    v4 = sel__discoverTabBackButton;
  }

  else if ([identifierCopy isEqualToString:@"DashboardTabBackButtonToolbarItemIdentifier"])
  {
    v4 = sel__dashboardTabBackButton;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)imageForToolbarItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (([identifierCopy isEqualToString:@"DiscoverTabBackButtonToolbarItemIdentifier"] & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", @"DashboardTabBackButtonToolbarItemIdentifier"))
  {
    v4 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.left"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)navigationBarButtonForToolbarItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (([identifierCopy isEqualToString:@"HomeMenuToolbarItemIdentifier"] & 1) == 0 && !objc_msgSend(identifierCopy, "isEqualToString:", @"RoomMenuToolbarItemIdentifier"))
  {
    if (![identifierCopy isEqualToString:@"AddMenuToolbarItemIdentifier"])
    {
      v13 = [(HUSideBarWindowToolbarManager *)self imageForToolbarItemIdentifier:identifierCopy];
      v14 = [(HUSideBarWindowToolbarManager *)self actionForToolbarItemIdentifier:identifierCopy];
      if (v14)
      {
        selfCopy = self;
      }

      else
      {
        selfCopy = 0;
      }

      v16 = MEMORY[0x277D751E0];
      v17 = selfCopy;
      v12 = [[v16 alloc] initWithImage:v13 style:0 target:v17 action:v14];

      goto LABEL_17;
    }

    v8 = [HUNavigationBarButton addButtonWithOwner:self];
    goto LABEL_10;
  }

  dashboardContext = [(HUSideBarWindowToolbarManager *)self dashboardContext];

  if (!dashboardContext)
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

  dashboardContext2 = [(HUSideBarWindowToolbarManager *)self dashboardContext];
  home = [dashboardContext2 home];

  if (home)
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
  tabIdentifier = [(HUSideBarWindowToolbarManager *)self tabIdentifier];
  v3 = [tabIdentifier isEqualToString:*MEMORY[0x277D13938]];

  return v3;
}

- (id)accessibilityLabelForToolbarItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (([identifierCopy isEqualToString:@"HomeMenuToolbarItemIdentifier"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"RoomMenuToolbarItemIdentifier") & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"AddMenuToolbarItemIdentifier") & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"DiscoverTabBackButtonToolbarItemIdentifier") & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", @"DashboardTabBackButtonToolbarItemIdentifier"))
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

  windowTitleProvider = [(HUSideBarWindowToolbarManager *)self windowTitleProvider];
  tabIdentifier = [(HUSideBarWindowToolbarManager *)self tabIdentifier];
  dashboardContext = [(HUSideBarWindowToolbarManager *)self dashboardContext];
  v7 = [windowTitleProvider windowTitleForTabIdentifier:tabIdentifier dashboardContext:dashboardContext];

  tabIdentifier2 = [(HUSideBarWindowToolbarManager *)self tabIdentifier];
  if (![tabIdentifier2 isEqualToString:*MEMORY[0x277D13930]])
  {

    goto LABEL_7;
  }

  discoverTabStyle = [(HUSideBarWindowToolbarManager *)self discoverTabStyle];

  if (!discoverTabStyle)
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

- (unint64_t)toolbarItemStyleForToolbarItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"HomeMenuToolbarItemIdentifier"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"RoomMenuToolbarItemIdentifier"))
  {
    v4 = 0;
  }

  else if ([identifierCopy isEqualToString:@"DiscoverTabBackButtonToolbarItemIdentifier"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [identifierCopy isEqualToString:@"DashboardTabBackButtonToolbarItemIdentifier"];
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
  delegate = [(HUSideBarWindowToolbarManager *)self delegate];
  [delegate dismissViewControllerWithAnimation:v5];
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  if (finished)
  {
    [(HUSideBarWindowToolbarManager *)self setDiscoverTabStyle:0];
  }
}

- (id)roomForNavigationBarButton:(id)button
{
  dashboardContext = [(HUSideBarWindowToolbarManager *)self dashboardContext];
  room = [dashboardContext room];

  return room;
}

- (id)statusItemsForNavigationBarButton:(id)button inHome:(id)home
{
  v4 = [(HUSideBarWindowToolbarManager *)self dashboardStatusItems:button];
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

- (id)editActionDelegateForNavigationBarButton:(id)button
{
  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    objc_opt_class();
    appNavigator = [(HUSideBarWindowToolbarManager *)self appNavigator];
    rootViewController = [appNavigator rootViewController];
    if (objc_opt_isKindOfClass())
    {
      v6 = rootViewController;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    objc_opt_class();
    selectedViewController = [v7 selectedViewController];
  }

  else
  {
    objc_opt_class();
    appNavigator2 = [(HUSideBarWindowToolbarManager *)self appNavigator];
    rootViewController2 = [appNavigator2 rootViewController];
    if (objc_opt_isKindOfClass())
    {
      v11 = rootViewController2;
    }

    else
    {
      v11 = 0;
    }

    v7 = v11;

    objc_opt_class();
    selectedViewController = [v7 viewControllerForColumn:2];
  }

  v12 = selectedViewController;

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

- (void)homeManager:(id)manager didAddHome:(id)home
{
  v4 = [(HUSideBarWindowToolbarManager *)self delegate:manager];
  [v4 resetToolbarItemMenuForItemIdentifier:@"HomeMenuToolbarItemIdentifier"];
}

- (void)homeManager:(id)manager didRemoveHome:(id)home
{
  v4 = [(HUSideBarWindowToolbarManager *)self delegate:manager];
  [v4 resetToolbarItemMenuForItemIdentifier:@"HomeMenuToolbarItemIdentifier"];
}

- (void)homeManagerDidUpdateCurrentHome:(id)home
{
  delegate = [(HUSideBarWindowToolbarManager *)self delegate];
  [delegate resetToolbarItemMenuForItemIdentifier:@"HomeMenuToolbarItemIdentifier"];
}

- (void)homeDidUpdateName:(id)name
{
  delegate = [(HUSideBarWindowToolbarManager *)self delegate];
  [delegate resetToolbarItemMenuForItemIdentifier:@"HomeMenuToolbarItemIdentifier"];

  delegate2 = [(HUSideBarWindowToolbarManager *)self delegate];
  [delegate2 resetToolbarTitle];
}

- (void)homeManager:(id)manager didUpdateStateForIncomingInvitations:(id)invitations
{
  v4 = [(HUSideBarWindowToolbarManager *)self delegate:manager];
  [v4 resetToolbarItemMenuForItemIdentifier:@"HomeMenuToolbarItemIdentifier"];
}

- (void)home:(id)home didUpdateNameForRoom:(id)room
{
  v4 = [(HUSideBarWindowToolbarManager *)self delegate:home];
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