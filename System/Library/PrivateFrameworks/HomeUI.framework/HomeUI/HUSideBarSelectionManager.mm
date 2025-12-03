@interface HUSideBarSelectionManager
- (HFHomeKitObject)dashboarHomeKitObject;
- (HFItem)currentSelectedItem;
- (HUSideBarSelectionManager)initWithSideBarViewController:(id)controller sideBarItemManager:(id)manager delegate:(id)delegate;
- (id)initForTest;
- (void)_didUpdateToAutomationTab;
- (void)_didUpdateToDiscoverTab;
- (void)_didUpdateToHomeTab;
- (void)_didUpdateToTabForCategory:(id)category;
- (void)_didUpdateToTabForRoom:(id)room;
- (void)_updateAppearanceForSidebar;
- (void)_updateSidebarSelection;
- (void)setCurrentContext:(id)context;
- (void)setCurrentTabIdentifier:(id)identifier;
- (void)updateWithSideBarViewController:(id)controller sideBarItemManager:(id)manager;
@end

@implementation HUSideBarSelectionManager

- (HUSideBarSelectionManager)initWithSideBarViewController:(id)controller sideBarItemManager:(id)manager delegate:(id)delegate
{
  controllerCopy = controller;
  managerCopy = manager;
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = HUSideBarSelectionManager;
  v12 = [(HUSideBarSelectionManager *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sideBarViewController, controller);
    objc_storeStrong(&v13->_sideBarItemManager, manager);
    objc_storeStrong(&v13->_delegate, delegate);
    mEMORY[0x277D14B30] = [MEMORY[0x277D14B30] sharedInstance];
    selectedHomeAppTabIdentifier = [mEMORY[0x277D14B30] selectedHomeAppTabIdentifier];
    v16 = selectedHomeAppTabIdentifier;
    if (selectedHomeAppTabIdentifier)
    {
      v17 = selectedHomeAppTabIdentifier;
    }

    else
    {
      v17 = *MEMORY[0x277D13938];
    }

    objc_storeStrong(&v13->_currentTabIdentifier, v17);

    objc_storeStrong(&sharedManager, v13);
  }

  return v13;
}

- (void)updateWithSideBarViewController:(id)controller sideBarItemManager:(id)manager
{
  controllerCopy = controller;
  managerCopy = manager;
  sideBarViewController = self->_sideBarViewController;
  self->_sideBarViewController = controllerCopy;
  v9 = controllerCopy;

  sideBarItemManager = self->_sideBarItemManager;
  self->_sideBarItemManager = managerCopy;

  [(HUSideBarSelectionManager *)self _updateAppearanceForSidebar];
}

- (id)initForTest
{
  v4.receiver = self;
  v4.super_class = HUSideBarSelectionManager;
  v2 = [(HUSideBarSelectionManager *)&v4 init];
  if (v2)
  {
    objc_storeStrong(&sharedManager, v2);
  }

  return v2;
}

- (HFHomeKitObject)dashboarHomeKitObject
{
  currentContext = [(HUSideBarSelectionManager *)self currentContext];
  room = [currentContext room];

  currentContext2 = [(HUSideBarSelectionManager *)self currentContext];
  v6 = currentContext2;
  if (room)
  {
    [currentContext2 room];
  }

  else
  {
    [currentContext2 home];
  }
  v7 = ;

  return v7;
}

- (void)setCurrentTabIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![(NSString *)self->_currentTabIdentifier isEqualToString:?])
  {
    objc_storeStrong(&self->_currentTabIdentifier, identifier);
    [(HUSideBarSelectionManager *)self _updateSidebarSelection];
  }
}

- (void)setCurrentContext:(id)context
{
  contextCopy = context;
  if (![(HUDashboardContext *)self->_currentContext isEqual:?])
  {
    objc_storeStrong(&self->_currentContext, context);
    [(HUSideBarSelectionManager *)self _updateSidebarSelection];
  }
}

- (HFItem)currentSelectedItem
{
  currentTabIdentifier = [(HUSideBarSelectionManager *)self currentTabIdentifier];
  v4 = [currentTabIdentifier isEqualToString:*MEMORY[0x277D13940]];

  if (v4)
  {
    sideBarItemManager = [(HUSideBarSelectionManager *)self sideBarItemManager];
    automationItem = [sideBarItemManager automationItem];
LABEL_5:
    v9 = automationItem;
    goto LABEL_11;
  }

  currentTabIdentifier2 = [(HUSideBarSelectionManager *)self currentTabIdentifier];
  v8 = [currentTabIdentifier2 isEqualToString:*MEMORY[0x277D13930]];

  if (v8)
  {
    sideBarItemManager = [(HUSideBarSelectionManager *)self sideBarItemManager];
    automationItem = [sideBarItemManager discoverItem];
    goto LABEL_5;
  }

  currentContext = [(HUSideBarSelectionManager *)self currentContext];
  room = [currentContext room];

  if (room)
  {
    sideBarItemManager = [(HUSideBarSelectionManager *)self sideBarItemManager];
    currentContext2 = [(HUSideBarSelectionManager *)self currentContext];
    room2 = [currentContext2 room];
    v14 = [sideBarItemManager roomItemForRoom:room2];
  }

  else
  {
    currentContext3 = [(HUSideBarSelectionManager *)self currentContext];
    accessoryTypeGroup = [currentContext3 accessoryTypeGroup];

    sideBarItemManager2 = [(HUSideBarSelectionManager *)self sideBarItemManager];
    sideBarItemManager = sideBarItemManager2;
    if (!accessoryTypeGroup)
    {
      automationItem = [sideBarItemManager2 homeItem];
      goto LABEL_5;
    }

    currentContext2 = [(HUSideBarSelectionManager *)self currentContext];
    room2 = [currentContext2 accessoryTypeGroup];
    v14 = [sideBarItemManager categoryItemForCategory:room2];
  }

  v9 = v14;

LABEL_11:

  return v9;
}

- (void)_updateSidebarSelection
{
  [(HUSideBarSelectionManager *)self _updateAppearanceForSidebar];
  delegate = [(HUSideBarSelectionManager *)self delegate];
  [delegate contextDidUpdate];

  currentTabIdentifier = [(HUSideBarSelectionManager *)self currentTabIdentifier];
  v5 = [currentTabIdentifier isEqualToString:*MEMORY[0x277D13940]];

  if (v5)
  {

    [(HUSideBarSelectionManager *)self _didUpdateToAutomationTab];
    return;
  }

  currentTabIdentifier2 = [(HUSideBarSelectionManager *)self currentTabIdentifier];
  v7 = [currentTabIdentifier2 isEqualToString:*MEMORY[0x277D13930]];

  if (v7)
  {

    [(HUSideBarSelectionManager *)self _didUpdateToDiscoverTab];
    return;
  }

  currentContext = [(HUSideBarSelectionManager *)self currentContext];
  accessoryTypeGroup = [currentContext accessoryTypeGroup];

  currentContext2 = [(HUSideBarSelectionManager *)self currentContext];
  currentContext3 = currentContext2;
  if (accessoryTypeGroup)
  {
    accessoryTypeGroup2 = [currentContext2 accessoryTypeGroup];
    [(HUSideBarSelectionManager *)self _didUpdateToTabForCategory:accessoryTypeGroup2];
LABEL_13:

    return;
  }

  room = [currentContext2 room];

  if (room)
  {
    currentContext3 = [(HUSideBarSelectionManager *)self currentContext];
    accessoryTypeGroup2 = [currentContext3 room];
    [(HUSideBarSelectionManager *)self _didUpdateToTabForRoom:accessoryTypeGroup2];
    goto LABEL_13;
  }

  [(HUSideBarSelectionManager *)self _didUpdateToHomeTab];
}

- (void)_didUpdateToHomeTab
{
  sideBarItemManager = [(HUSideBarSelectionManager *)self sideBarItemManager];
  homeItem = [sideBarItemManager homeItem];

  sideBarViewController = [(HUSideBarSelectionManager *)self sideBarViewController];
  [sideBarViewController updateSelectionToItem:homeItem];
}

- (void)_didUpdateToTabForCategory:(id)category
{
  categoryCopy = category;
  sideBarItemManager = [(HUSideBarSelectionManager *)self sideBarItemManager];
  v7 = [sideBarItemManager categoryItemForCategory:categoryCopy];

  sideBarViewController = [(HUSideBarSelectionManager *)self sideBarViewController];
  [sideBarViewController updateSelectionToItem:v7];
}

- (void)_didUpdateToTabForRoom:(id)room
{
  roomCopy = room;
  sideBarItemManager = [(HUSideBarSelectionManager *)self sideBarItemManager];
  v7 = [sideBarItemManager roomItemForRoom:roomCopy];

  sideBarViewController = [(HUSideBarSelectionManager *)self sideBarViewController];
  [sideBarViewController updateSelectionToItem:v7];
}

- (void)_didUpdateToDiscoverTab
{
  sideBarItemManager = [(HUSideBarSelectionManager *)self sideBarItemManager];
  discoverItem = [sideBarItemManager discoverItem];

  sideBarViewController = [(HUSideBarSelectionManager *)self sideBarViewController];
  [sideBarViewController updateSelectionToItem:discoverItem];
}

- (void)_didUpdateToAutomationTab
{
  sideBarItemManager = [(HUSideBarSelectionManager *)self sideBarItemManager];
  automationItem = [sideBarItemManager automationItem];

  sideBarViewController = [(HUSideBarSelectionManager *)self sideBarViewController];
  [sideBarViewController updateSelectionToItem:automationItem];
}

- (void)_updateAppearanceForSidebar
{
  currentTabIdentifier = [(HUSideBarSelectionManager *)self currentTabIdentifier];
  v3 = [currentTabIdentifier isEqualToString:*MEMORY[0x277D13938]];
  sideBarViewController = [(HUSideBarSelectionManager *)self sideBarViewController];
  [sideBarViewController setShouldUseDashboardEffects:v3];
}

@end