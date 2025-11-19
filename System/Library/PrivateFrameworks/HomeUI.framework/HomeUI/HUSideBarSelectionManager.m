@interface HUSideBarSelectionManager
- (HFHomeKitObject)dashboarHomeKitObject;
- (HFItem)currentSelectedItem;
- (HUSideBarSelectionManager)initWithSideBarViewController:(id)a3 sideBarItemManager:(id)a4 delegate:(id)a5;
- (id)initForTest;
- (void)_didUpdateToAutomationTab;
- (void)_didUpdateToDiscoverTab;
- (void)_didUpdateToHomeTab;
- (void)_didUpdateToTabForCategory:(id)a3;
- (void)_didUpdateToTabForRoom:(id)a3;
- (void)_updateAppearanceForSidebar;
- (void)_updateSidebarSelection;
- (void)setCurrentContext:(id)a3;
- (void)setCurrentTabIdentifier:(id)a3;
- (void)updateWithSideBarViewController:(id)a3 sideBarItemManager:(id)a4;
@end

@implementation HUSideBarSelectionManager

- (HUSideBarSelectionManager)initWithSideBarViewController:(id)a3 sideBarItemManager:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = HUSideBarSelectionManager;
  v12 = [(HUSideBarSelectionManager *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sideBarViewController, a3);
    objc_storeStrong(&v13->_sideBarItemManager, a4);
    objc_storeStrong(&v13->_delegate, a5);
    v14 = [MEMORY[0x277D14B30] sharedInstance];
    v15 = [v14 selectedHomeAppTabIdentifier];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
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

- (void)updateWithSideBarViewController:(id)a3 sideBarItemManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  sideBarViewController = self->_sideBarViewController;
  self->_sideBarViewController = v6;
  v9 = v6;

  sideBarItemManager = self->_sideBarItemManager;
  self->_sideBarItemManager = v7;

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
  v3 = [(HUSideBarSelectionManager *)self currentContext];
  v4 = [v3 room];

  v5 = [(HUSideBarSelectionManager *)self currentContext];
  v6 = v5;
  if (v4)
  {
    [v5 room];
  }

  else
  {
    [v5 home];
  }
  v7 = ;

  return v7;
}

- (void)setCurrentTabIdentifier:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_currentTabIdentifier isEqualToString:?])
  {
    objc_storeStrong(&self->_currentTabIdentifier, a3);
    [(HUSideBarSelectionManager *)self _updateSidebarSelection];
  }
}

- (void)setCurrentContext:(id)a3
{
  v5 = a3;
  if (![(HUDashboardContext *)self->_currentContext isEqual:?])
  {
    objc_storeStrong(&self->_currentContext, a3);
    [(HUSideBarSelectionManager *)self _updateSidebarSelection];
  }
}

- (HFItem)currentSelectedItem
{
  v3 = [(HUSideBarSelectionManager *)self currentTabIdentifier];
  v4 = [v3 isEqualToString:*MEMORY[0x277D13940]];

  if (v4)
  {
    v5 = [(HUSideBarSelectionManager *)self sideBarItemManager];
    v6 = [v5 automationItem];
LABEL_5:
    v9 = v6;
    goto LABEL_11;
  }

  v7 = [(HUSideBarSelectionManager *)self currentTabIdentifier];
  v8 = [v7 isEqualToString:*MEMORY[0x277D13930]];

  if (v8)
  {
    v5 = [(HUSideBarSelectionManager *)self sideBarItemManager];
    v6 = [v5 discoverItem];
    goto LABEL_5;
  }

  v10 = [(HUSideBarSelectionManager *)self currentContext];
  v11 = [v10 room];

  if (v11)
  {
    v5 = [(HUSideBarSelectionManager *)self sideBarItemManager];
    v12 = [(HUSideBarSelectionManager *)self currentContext];
    v13 = [v12 room];
    v14 = [v5 roomItemForRoom:v13];
  }

  else
  {
    v15 = [(HUSideBarSelectionManager *)self currentContext];
    v16 = [v15 accessoryTypeGroup];

    v17 = [(HUSideBarSelectionManager *)self sideBarItemManager];
    v5 = v17;
    if (!v16)
    {
      v6 = [v17 homeItem];
      goto LABEL_5;
    }

    v12 = [(HUSideBarSelectionManager *)self currentContext];
    v13 = [v12 accessoryTypeGroup];
    v14 = [v5 categoryItemForCategory:v13];
  }

  v9 = v14;

LABEL_11:

  return v9;
}

- (void)_updateSidebarSelection
{
  [(HUSideBarSelectionManager *)self _updateAppearanceForSidebar];
  v3 = [(HUSideBarSelectionManager *)self delegate];
  [v3 contextDidUpdate];

  v4 = [(HUSideBarSelectionManager *)self currentTabIdentifier];
  v5 = [v4 isEqualToString:*MEMORY[0x277D13940]];

  if (v5)
  {

    [(HUSideBarSelectionManager *)self _didUpdateToAutomationTab];
    return;
  }

  v6 = [(HUSideBarSelectionManager *)self currentTabIdentifier];
  v7 = [v6 isEqualToString:*MEMORY[0x277D13930]];

  if (v7)
  {

    [(HUSideBarSelectionManager *)self _didUpdateToDiscoverTab];
    return;
  }

  v8 = [(HUSideBarSelectionManager *)self currentContext];
  v9 = [v8 accessoryTypeGroup];

  v10 = [(HUSideBarSelectionManager *)self currentContext];
  v13 = v10;
  if (v9)
  {
    v11 = [v10 accessoryTypeGroup];
    [(HUSideBarSelectionManager *)self _didUpdateToTabForCategory:v11];
LABEL_13:

    return;
  }

  v12 = [v10 room];

  if (v12)
  {
    v13 = [(HUSideBarSelectionManager *)self currentContext];
    v11 = [v13 room];
    [(HUSideBarSelectionManager *)self _didUpdateToTabForRoom:v11];
    goto LABEL_13;
  }

  [(HUSideBarSelectionManager *)self _didUpdateToHomeTab];
}

- (void)_didUpdateToHomeTab
{
  v3 = [(HUSideBarSelectionManager *)self sideBarItemManager];
  v5 = [v3 homeItem];

  v4 = [(HUSideBarSelectionManager *)self sideBarViewController];
  [v4 updateSelectionToItem:v5];
}

- (void)_didUpdateToTabForCategory:(id)a3
{
  v4 = a3;
  v5 = [(HUSideBarSelectionManager *)self sideBarItemManager];
  v7 = [v5 categoryItemForCategory:v4];

  v6 = [(HUSideBarSelectionManager *)self sideBarViewController];
  [v6 updateSelectionToItem:v7];
}

- (void)_didUpdateToTabForRoom:(id)a3
{
  v4 = a3;
  v5 = [(HUSideBarSelectionManager *)self sideBarItemManager];
  v7 = [v5 roomItemForRoom:v4];

  v6 = [(HUSideBarSelectionManager *)self sideBarViewController];
  [v6 updateSelectionToItem:v7];
}

- (void)_didUpdateToDiscoverTab
{
  v3 = [(HUSideBarSelectionManager *)self sideBarItemManager];
  v5 = [v3 discoverItem];

  v4 = [(HUSideBarSelectionManager *)self sideBarViewController];
  [v4 updateSelectionToItem:v5];
}

- (void)_didUpdateToAutomationTab
{
  v3 = [(HUSideBarSelectionManager *)self sideBarItemManager];
  v5 = [v3 automationItem];

  v4 = [(HUSideBarSelectionManager *)self sideBarViewController];
  [v4 updateSelectionToItem:v5];
}

- (void)_updateAppearanceForSidebar
{
  v5 = [(HUSideBarSelectionManager *)self currentTabIdentifier];
  v3 = [v5 isEqualToString:*MEMORY[0x277D13938]];
  v4 = [(HUSideBarSelectionManager *)self sideBarViewController];
  [v4 setShouldUseDashboardEffects:v3];
}

@end