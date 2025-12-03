@interface HUMenuToolbarManager
+ (BOOL)isValidMenuSelector:(SEL)selector forDashboardContext:(id)context;
+ (BOOL)shouldEnableEditRoomForDashboardContext:(id)context;
- (BOOL)_shouldEnableIdentifier:(id)identifier;
- (HOAppNavigator)appNavigator;
- (HUMenuToolbarManager)initWithAppNavigator:(id)navigator;
- (id)_buildActionForIdentifier:(id)identifier;
- (id)_buildHomeMenu;
- (id)_buildKeyCommandForIdentifier:(id)identifier;
- (id)_buildMenuForIdentifier:(id)identifier;
- (id)_editMenuIdentifiers;
- (id)_fileMenuIdentifiers;
- (id)_helpMenuIdentifiers;
- (id)_imageForActionWithIdentifier:(id)identifier;
- (id)_subViewMenuIdentifiers;
- (id)_viewMenuIdentifiers;
- (void)_automationMenuSelected;
- (void)_discoverMenuSelected;
- (void)_editHomeMenuSelected;
- (void)_editRoomMenuSelected;
- (void)_homeMenuSelected;
- (void)buildMenu;
- (void)home:(id)home didAddAccessory:(id)accessory;
- (void)home:(id)home didAddRoom:(id)room;
- (void)home:(id)home didRemoveAccessory:(id)accessory;
- (void)home:(id)home didRemoveRoom:(id)room;
- (void)home:(id)home didUpdateAccessControlForUser:(id)user;
- (void)homeManager:(id)manager didAddHome:(id)home;
- (void)homeManager:(id)manager didRemoveHome:(id)home;
- (void)refreshEditMenu;
- (void)refreshFileMenu;
- (void)refreshHelpMenu;
- (void)refreshViewMenu;
- (void)refreshViewMenuChildren;
- (void)removeFormatMenu;
- (void)setAppNavigator:(id)navigator;
- (void)setHome:(id)home;
- (void)setMenuBuilder:(id)builder;
- (void)setRoom:(id)room;
@end

@implementation HUMenuToolbarManager

- (HUMenuToolbarManager)initWithAppNavigator:(id)navigator
{
  navigatorCopy = navigator;
  v12.receiver = self;
  v12.super_class = HUMenuToolbarManager;
  v5 = [(HUMenuToolbarManager *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_appNavigator, navigatorCopy);
    mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
    home = [mEMORY[0x277D146E8] home];
    [(HUMenuToolbarManager *)v6 setHome:home];

    mEMORY[0x277D146E8]2 = [MEMORY[0x277D146E8] sharedDispatcher];
    [mEMORY[0x277D146E8]2 addHomeObserver:v6];

    mEMORY[0x277D146E8]3 = [MEMORY[0x277D146E8] sharedDispatcher];
    [mEMORY[0x277D146E8]3 addHomeManagerObserver:v6];
  }

  return v6;
}

- (void)setHome:(id)home
{
  homeCopy = home;
  if (([(HMHome *)self->_home isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_home, home);
    hf_selectedRoom = [homeCopy hf_selectedRoom];
    room = self->_room;
    self->_room = hf_selectedRoom;

    [(HUMenuToolbarManager *)self buildMenu];
  }
}

- (void)setRoom:(id)room
{
  roomCopy = room;
  if (([(HMRoom *)self->_room isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_room, room);
    [(HUMenuToolbarManager *)self refreshViewMenuChildren];
  }
}

- (void)setMenuBuilder:(id)builder
{
  objc_storeStrong(&self->_menuBuilder, builder);

  [(HUMenuToolbarManager *)self buildMenu];
}

- (void)setAppNavigator:(id)navigator
{
  obj = navigator;
  WeakRetained = objc_loadWeakRetained(&self->_appNavigator);
  v5 = [WeakRetained isEqual:obj];

  if ((v5 & 1) == 0)
  {
    objc_storeWeak(&self->_appNavigator, obj);
    [(HUMenuToolbarManager *)self buildMenu];
  }
}

- (void)buildMenu
{
  menuBuilder = [(HUMenuToolbarManager *)self menuBuilder];

  if (menuBuilder)
  {
    [(HUMenuToolbarManager *)self refreshFileMenu];
    [(HUMenuToolbarManager *)self refreshEditMenu];
    [(HUMenuToolbarManager *)self refreshViewMenuChildren];
    [(HUMenuToolbarManager *)self refreshViewMenu];
    [(HUMenuToolbarManager *)self refreshHelpMenu];

    [(HUMenuToolbarManager *)self removeFormatMenu];
  }
}

- (void)refreshHelpMenu
{
  menuBuilder = [(HUMenuToolbarManager *)self menuBuilder];
  v4 = [menuBuilder menuForIdentifier:@"HUMenuToolbarIdentifierHelp"];

  if (!v4)
  {
    _helpMenuIdentifiers = [(HUMenuToolbarManager *)self _helpMenuIdentifiers];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __39__HUMenuToolbarManager_refreshHelpMenu__block_invoke;
    v9[3] = &unk_277DBAC58;
    v9[4] = self;
    v6 = [_helpMenuIdentifiers na_map:v9];

    v7 = [MEMORY[0x277D75710] menuWithTitle:&stru_2823E0EE8 image:0 identifier:@"HUMenuToolbarIdentifierHelp" options:1 children:v6];
    menuBuilder2 = [(HUMenuToolbarManager *)self menuBuilder];
    [menuBuilder2 insertChildMenu:v7 atEndOfMenuForIdentifier:*MEMORY[0x277D76CF8]];
  }
}

- (void)refreshViewMenuChildren
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  _subViewMenuIdentifiers = [(HUMenuToolbarManager *)self _subViewMenuIdentifiers];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__HUMenuToolbarManager_refreshViewMenuChildren__block_invoke;
  v6[3] = &unk_277DBAC80;
  v6[4] = self;
  v6[5] = &v7;
  [_subViewMenuIdentifiers na_each:v6];

  if (*(v8 + 24) == 1)
  {
    menuBuilder = [(HUMenuToolbarManager *)self menuBuilder];
    system = [menuBuilder system];
    [system setNeedsRebuild];
  }

  _Block_object_dispose(&v7, 8);
}

void __47__HUMenuToolbarManager_refreshViewMenuChildren__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) _buildMenuForIdentifier:?];
  if (v3)
  {
    v4 = [*(a1 + 32) menuBuilder];
    v5 = [v4 menuForIdentifier:v7];

    if (v5)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      v6 = [*(a1 + 32) menuBuilder];
      [v6 replaceMenuForIdentifier:v7 withMenu:v3];
    }

    else
    {
      v6 = [*(a1 + 32) menuBuilder];
      [v6 insertChildMenu:v3 atStartOfMenuForIdentifier:*MEMORY[0x277D76D90]];
    }
  }
}

- (void)refreshViewMenu
{
  _viewMenuIdentifiers = [(HUMenuToolbarManager *)self _viewMenuIdentifiers];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __39__HUMenuToolbarManager_refreshViewMenu__block_invoke;
  v11[3] = &unk_277DBAC58;
  v11[4] = self;
  v4 = [_viewMenuIdentifiers na_map:v11];

  v5 = [MEMORY[0x277D75710] menuWithTitle:&stru_2823E0EE8 image:0 identifier:@"HUMenuToolbarIdentifierView" options:1 children:v4];
  menuBuilder = [(HUMenuToolbarManager *)self menuBuilder];
  v7 = [menuBuilder menuForIdentifier:@"HUMenuToolbarIdentifierView"];

  menuBuilder2 = [(HUMenuToolbarManager *)self menuBuilder];
  menuBuilder3 = menuBuilder2;
  if (v7)
  {
    [menuBuilder2 replaceMenuForIdentifier:@"HUMenuToolbarIdentifierView" withMenu:v5];

    menuBuilder3 = [(HUMenuToolbarManager *)self menuBuilder];
    system = [menuBuilder3 system];
    [system setNeedsRebuild];
  }

  else
  {
    [menuBuilder2 insertChildMenu:v5 atStartOfMenuForIdentifier:*MEMORY[0x277D76D90]];
  }
}

- (void)refreshFileMenu
{
  home = [(HUMenuToolbarManager *)self home];
  appNavigator = [(HUMenuToolbarManager *)self appNavigator];
  v11 = [HUNavigationMenuFactory addMenuForHome:home room:0 delegate:appNavigator includeDisabledElements:1];

  v5 = [MEMORY[0x277D75710] menuWithTitle:&stru_2823E0EE8 image:0 identifier:@"HUMenuToolbarIdentifierFile" options:1 children:v11];
  menuBuilder = [(HUMenuToolbarManager *)self menuBuilder];
  v7 = [menuBuilder menuForIdentifier:@"HUMenuToolbarIdentifierFile"];

  menuBuilder2 = [(HUMenuToolbarManager *)self menuBuilder];
  menuBuilder3 = menuBuilder2;
  if (v7)
  {
    [menuBuilder2 replaceMenuForIdentifier:@"HUMenuToolbarIdentifierFile" withMenu:v5];

    menuBuilder3 = [(HUMenuToolbarManager *)self menuBuilder];
    system = [menuBuilder3 system];
    [system setNeedsRebuild];
  }

  else
  {
    [menuBuilder2 insertChildMenu:v5 atStartOfMenuForIdentifier:*MEMORY[0x277D76CD8]];
  }
}

- (void)refreshEditMenu
{
  v26[5] = *MEMORY[0x277D85DE8];
  _editMenuIdentifiers = [(HUMenuToolbarManager *)self _editMenuIdentifiers];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __39__HUMenuToolbarManager_refreshEditMenu__block_invoke;
  v24[3] = &unk_277DBAC58;
  v24[4] = self;
  v4 = [_editMenuIdentifiers na_map:v24];

  v5 = [MEMORY[0x277D75710] menuWithTitle:&stru_2823E0EE8 image:0 identifier:@"HUMenuToolbarIdentifierEdit" options:1 children:v4];
  menuBuilder = [(HUMenuToolbarManager *)self menuBuilder];
  v7 = [menuBuilder menuForIdentifier:@"HUMenuToolbarIdentifierEdit"];

  menuBuilder2 = [(HUMenuToolbarManager *)self menuBuilder];
  menuBuilder3 = menuBuilder2;
  if (v7)
  {
    [menuBuilder2 replaceMenuForIdentifier:@"HUMenuToolbarIdentifierEdit" withMenu:v5];

    menuBuilder3 = [(HUMenuToolbarManager *)self menuBuilder];
    system = [menuBuilder3 system];
    [system setNeedsRebuild];
  }

  else
  {
    [menuBuilder2 insertSiblingMenu:v5 afterMenuForIdentifier:*MEMORY[0x277D76D60]];
  }

  v11 = *MEMORY[0x277D76CE0];
  v26[0] = *MEMORY[0x277D76D88];
  v26[1] = v11;
  v12 = *MEMORY[0x277D76D70];
  v26[2] = *MEMORY[0x277D76D28];
  v26[3] = v12;
  v26[4] = *MEMORY[0x277D76D50];
  [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:5];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = v23 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v20 + 1) + 8 * v17);
        menuBuilder4 = [(HUMenuToolbarManager *)self menuBuilder];
        [menuBuilder4 removeMenuForIdentifier:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v15);
  }
}

- (void)removeFormatMenu
{
  menuBuilder = [(HUMenuToolbarManager *)self menuBuilder];
  [menuBuilder removeMenuForIdentifier:*MEMORY[0x277D76CE8]];
}

- (id)_fileMenuIdentifiers
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"HUMenuToolbarIdentifierAddAutomation";
  v4[1] = @"HUMenuToolbarIdentifierAddScene";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

- (id)_editMenuIdentifiers
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"HUMenuToolbarIdentifierEditHome";
  v4[1] = @"HUMenuToolbarIdentifierEditRoom";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

- (id)_helpMenuIdentifiers
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"HUMenuToolbarIdentifierAboutHomeKit";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)_viewMenuIdentifiers
{
  v4[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"HUMenuToolbarIdentifierHome";
  v4[1] = @"HUMenuToolbarIdentifierAutomation";
  v4[2] = @"HUMenuToolbarIdentifierDiscover";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:3];

  return v2;
}

- (id)_subViewMenuIdentifiers
{
  v4[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"HUMenuToolbarIdentifierInvitation";
  v4[1] = @"HUMenuToolbarIdentifierRoomList";
  v4[2] = @"HUMenuToolbarIdentifierHomeList";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:3];

  return v2;
}

- (BOOL)_shouldEnableIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![identifierCopy isEqualToString:@"HUMenuToolbarIdentifierAddAutomation"])
  {
    if ([identifierCopy isEqualToString:@"HUMenuToolbarIdentifierAddScene"])
    {
      home = [(HUMenuToolbarManager *)self home];
      if ([home hf_currentUserIsAdministrator])
      {
        home2 = [(HUMenuToolbarManager *)self home];
        hf_containsActionableAccessories = [home2 hf_containsActionableAccessories];
        goto LABEL_7;
      }

LABEL_25:
      LOBYTE(self) = 0;
      goto LABEL_26;
    }

    if (([identifierCopy isEqualToString:@"HUMenuToolbarIdentifierEditHome"] & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", @"HUMenuToolbarIdentifierHome"))
    {
      home = [(HUMenuToolbarManager *)self home];
      LOBYTE(self) = home != 0;
      goto LABEL_26;
    }

    if (([identifierCopy isEqualToString:@"HUMenuToolbarIdentifierEditRoom"] & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", @"HUMenuToolbarIdentifierRoomList"))
    {
      home = [(HUMenuToolbarManager *)self home];
      if (!home)
      {
        goto LABEL_25;
      }

      home2 = [(HUMenuToolbarManager *)self home];
      accessories = [home2 accessories];
      if ([accessories count])
      {
        LOBYTE(self) = 1;
      }

      else
      {
        room = [(HUMenuToolbarManager *)self room];
        home3 = [(HUMenuToolbarManager *)self home];
        roomForEntireHome = [home3 roomForEntireHome];
        LODWORD(self) = [room isEqual:roomForEntireHome] ^ 1;
      }
    }

    else
    {
      if ([identifierCopy isEqualToString:@"HUMenuToolbarIdentifierAutomation"])
      {
        home = [(HUMenuToolbarManager *)self home];
        if ([home hf_hasAnyVisibleTriggers])
        {
          LOBYTE(self) = 1;
          goto LABEL_26;
        }

        home2 = [(HUMenuToolbarManager *)self home];
        if ([home2 hf_userIsAllowedToCreateTrigger])
        {
          LOBYTE(self) = 1;
          goto LABEL_8;
        }

        hf_containsActionableAccessories = HFForceAllowAutomationCreation();
        goto LABEL_7;
      }

      if ([identifierCopy isEqualToString:@"HUMenuToolbarIdentifierDiscover"])
      {
        home = [(HUMenuToolbarManager *)self home];
        if (home)
        {
          getAvailabilityDictionary = [MEMORY[0x277D14B68] getAvailabilityDictionary];
          LOBYTE(self) = getAvailabilityDictionary != 0;

          goto LABEL_26;
        }

        goto LABEL_25;
      }

      if ([identifierCopy isEqualToString:@"HUMenuToolbarIdentifierAboutHomeKit"])
      {
        LOBYTE(self) = 1;
        goto LABEL_27;
      }

      if ([identifierCopy isEqualToString:@"HUMenuToolbarIdentifierInvitation"])
      {
        home = [MEMORY[0x277D146E8] sharedDispatcher];
        home2 = [home homeManager];
        incomingHomeInvitations = [home2 incomingHomeInvitations];
      }

      else
      {
        if (![identifierCopy isEqualToString:@"HUMenuToolbarIdentifierHomeList"])
        {
          LOBYTE(self) = 0;
          goto LABEL_27;
        }

        home = [MEMORY[0x277D146E8] sharedDispatcher];
        home2 = [home homeManager];
        incomingHomeInvitations = [home2 homes];
      }

      accessories = incomingHomeInvitations;
      LOBYTE(self) = [incomingHomeInvitations count] != 0;
    }

    goto LABEL_8;
  }

  home = [(HUMenuToolbarManager *)self home];
  if (![home hf_currentUserIsAdministrator])
  {
    goto LABEL_25;
  }

  home2 = [(HUMenuToolbarManager *)self home];
  hf_containsActionableAccessories = [home2 hf_userCanCreateTrigger];
LABEL_7:
  LOBYTE(self) = hf_containsActionableAccessories;
LABEL_8:

LABEL_26:
LABEL_27:

  return self;
}

- (id)_buildMenuForIdentifier:(id)identifier
{
  v22[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"HUMenuToolbarIdentifierHomeList"] && -[HUMenuToolbarManager _shouldEnableIdentifier:](self, "_shouldEnableIdentifier:", identifierCopy))
  {
    _buildHomeMenu = [(HUMenuToolbarManager *)self _buildHomeMenu];
  }

  else if ([identifierCopy isEqualToString:@"HUMenuToolbarIdentifierInvitation"] && -[HUMenuToolbarManager _shouldEnableIdentifier:](self, "_shouldEnableIdentifier:", identifierCopy))
  {
    mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
    homeManager = [mEMORY[0x277D146E8] homeManager];
    incomingHomeInvitations = [homeManager incomingHomeInvitations];
    v9 = [incomingHomeInvitations count];
    v16 = HULocalizedStringWithFormat(@"HULocationInvitationCount", @"%lu", v10, v11, v12, v13, v14, v15, v9);

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __48__HUMenuToolbarManager__buildMenuForIdentifier___block_invoke;
    v21[3] = &unk_277DB8C50;
    v21[4] = self;
    v17 = [MEMORY[0x277D750C8] actionWithTitle:v16 image:0 identifier:0 handler:v21];
    v18 = MEMORY[0x277D75710];
    v22[0] = v17;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    _buildHomeMenu = [v18 menuWithTitle:v16 image:0 identifier:identifierCopy options:1 children:v19];
  }

  else
  {
    _buildHomeMenu = 0;
  }

  return _buildHomeMenu;
}

void __48__HUMenuToolbarManager__buildMenuForIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appNavigator];
  v1 = [v2 showHomeSettingsForHome:0];
}

- (id)_buildActionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(HUMenuToolbarManager *)self _imageForActionWithIdentifier:identifierCopy];
  if ([identifierCopy isEqualToString:@"HUMenuToolbarIdentifierAddAutomation"])
  {
    v6 = MEMORY[0x277D750C8];
    v7 = _HULocalizedStringWithDefaultValue(@"HUMenuToolbarManagerAddAutomation", @"HUMenuToolbarManagerAddAutomation", 1);
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __50__HUMenuToolbarManager__buildActionForIdentifier___block_invoke;
    v19 = &unk_277DB8C50;
    selfCopy = self;
    v8 = &v16;
LABEL_7:
    v9 = [v6 actionWithTitle:v7 image:v5 identifier:0 handler:{v8, v11, v12, v13, v14, selfCopy2, v16, v17, v18, v19, selfCopy}];

    goto LABEL_8;
  }

  if ([identifierCopy isEqualToString:@"HUMenuToolbarIdentifierAddScene"])
  {
    v6 = MEMORY[0x277D750C8];
    v7 = _HULocalizedStringWithDefaultValue(@"HUMenuToolbarManagerAddScene", @"HUMenuToolbarManagerAddScene", 1);
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __50__HUMenuToolbarManager__buildActionForIdentifier___block_invoke_2;
    v14 = &unk_277DB8C50;
    selfCopy2 = self;
    v8 = &v11;
    goto LABEL_7;
  }

  if ([identifierCopy isEqualToString:@"HUMenuToolbarIdentifierAboutHomeKit"])
  {
    v6 = MEMORY[0x277D750C8];
    v7 = _HULocalizedStringWithDefaultValue(@"HUMenuToolbarManagerAboutHomeKit", @"HUMenuToolbarManagerAboutHomeKit", 1);
    v8 = &__block_literal_global_61;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_8:
  if (![(HUMenuToolbarManager *)self _shouldEnableIdentifier:identifierCopy])
  {
    [v9 setAttributes:1];
  }

  return v9;
}

void __50__HUMenuToolbarManager__buildActionForIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appNavigator];
  v1 = [v2 showAddAutomationFlow];
}

void __50__HUMenuToolbarManager__buildActionForIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appNavigator];
  v1 = [v2 showAddSceneFlowOnHomeTab];
}

void __50__HUMenuToolbarManager__buildActionForIdentifier___block_invoke_3()
{
  v2 = [MEMORY[0x277D148E8] sharedInstance];
  v0 = +[HUStoreUtilities accessoryStoreURL];
  v1 = [v2 openURL:v0];
}

- (id)_buildKeyCommandForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(HUMenuToolbarManager *)self _imageForActionWithIdentifier:identifierCopy];
  if ([identifierCopy isEqualToString:@"HUMenuToolbarIdentifierEditHome"])
  {
    v6 = MEMORY[0x277D75650];
    v7 = _HULocalizedStringWithDefaultValue(@"HUMenuToolbarManagerEditHome", @"HUMenuToolbarManagerEditHome", 1);
    v8 = sel__editHomeMenuSelected;
    v9 = @"h";
LABEL_5:
    v10 = v6;
    v11 = v7;
    v12 = v5;
    v13 = 1179648;
LABEL_13:
    v15 = [v10 commandWithTitle:v11 image:v12 action:v8 input:v9 modifierFlags:v13 propertyList:0];

    goto LABEL_14;
  }

  if ([identifierCopy isEqualToString:@"HUMenuToolbarIdentifierEditRoom"])
  {
    v6 = MEMORY[0x277D75650];
    v7 = _HULocalizedStringWithDefaultValue(@"HUMenuToolbarManagerEditRoom", @"HUMenuToolbarManagerEditRoom", 1);
    v8 = sel__editRoomMenuSelected;
    v9 = @"r";
    goto LABEL_5;
  }

  if ([identifierCopy isEqualToString:@"HUMenuToolbarIdentifierHome"])
  {
    v14 = MEMORY[0x277D75650];
    v7 = _HULocalizedStringWithDefaultValue(@"HUMenuToolbarManagerHome", @"HUMenuToolbarManagerHome", 1);
    v8 = sel__homeMenuSelected;
    v9 = @"1";
LABEL_12:
    v10 = v14;
    v11 = v7;
    v12 = v5;
    v13 = 0x100000;
    goto LABEL_13;
  }

  if ([identifierCopy isEqualToString:@"HUMenuToolbarIdentifierAutomation"])
  {
    v14 = MEMORY[0x277D75650];
    v7 = _HULocalizedStringWithDefaultValue(@"HUMenuToolbarManagerAutomation", @"HUMenuToolbarManagerAutomation", 1);
    v8 = sel__automationMenuSelected;
    v9 = @"2";
    goto LABEL_12;
  }

  if ([identifierCopy isEqualToString:@"HUMenuToolbarIdentifierDiscover"])
  {
    v14 = MEMORY[0x277D75650];
    v7 = _HULocalizedStringWithDefaultValue(@"HUMenuToolbarManagerDiscover", @"HUMenuToolbarManagerDiscover", 1);
    v8 = sel__discoverMenuSelected;
    v9 = @"3";
    goto LABEL_12;
  }

  v15 = 0;
LABEL_14:
  if (![(HUMenuToolbarManager *)self _shouldEnableIdentifier:identifierCopy])
  {
    [v15 setAttributes:1];
  }

  return v15;
}

- (id)_imageForActionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"HUMenuToolbarIdentifierAddAutomation"])
  {
    v4 = 1;
LABEL_15:
    v5 = [HUNavigationMenuFactory systemImageForActionType:v4];
    goto LABEL_16;
  }

  if ([identifierCopy isEqualToString:@"HUMenuToolbarIdentifierAddScene"])
  {
    v4 = 2;
    goto LABEL_15;
  }

  if ([identifierCopy isEqualToString:@"HUMenuToolbarIdentifierEditHome"])
  {
    v4 = 7;
    goto LABEL_15;
  }

  if ([identifierCopy isEqualToString:@"HUMenuToolbarIdentifierEditRoom"])
  {
    v4 = 6;
    goto LABEL_15;
  }

  if ([identifierCopy isEqualToString:@"HUMenuToolbarIdentifierHome"])
  {
    v4 = 10;
    goto LABEL_15;
  }

  if ([identifierCopy isEqualToString:@"HUMenuToolbarIdentifierAutomation"])
  {
    v4 = 12;
    goto LABEL_15;
  }

  if ([identifierCopy isEqualToString:@"HUMenuToolbarIdentifierDiscover"])
  {
    v4 = 11;
    goto LABEL_15;
  }

  v5 = 0;
LABEL_16:

  return v5;
}

- (id)_buildHomeMenu
{
  v33 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v4 = MEMORY[0x277D750C8];
  v5 = _HULocalizedStringWithDefaultValue(@"HUMenuToolbarManagerHomes", @"HUMenuToolbarManagerHomes", 1);
  v6 = [v4 actionWithTitle:v5 image:0 identifier:0 handler:&__block_literal_global_195];

  [v6 setAttributes:1];
  v26 = array;
  v24 = v6;
  [array addObject:v6];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  homeManager = [mEMORY[0x277D146E8] homeManager];
  homes = [homeManager homes];

  obj = homes;
  v10 = [homes countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        v15 = MEMORY[0x277D750C8];
        name = [v14 name];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __38__HUMenuToolbarManager__buildHomeMenu__block_invoke_2;
        v27[3] = &unk_277DBACC8;
        v27[4] = self;
        v27[5] = v14;
        v17 = [v15 actionWithTitle:name image:0 identifier:0 handler:v27];

        home = [(HUMenuToolbarManager *)self home];
        uniqueIdentifier = [home uniqueIdentifier];
        uniqueIdentifier2 = [v14 uniqueIdentifier];
        v21 = [uniqueIdentifier isEqual:uniqueIdentifier2];

        [v17 setState:v21];
        [v26 addObject:v17];
      }

      v11 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v11);
  }

  v22 = [MEMORY[0x277D75710] menuWithTitle:&stru_2823E0EE8 image:0 identifier:@"HUMenuToolbarIdentifierHomeList" options:1 children:v26];

  return v22;
}

void __38__HUMenuToolbarManager__buildHomeMenu__block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) appNavigator];
  v2 = [v3 showHome:*(a1 + 40)];
}

- (void)_editHomeMenuSelected
{
  appNavigator = [(HUMenuToolbarManager *)self appNavigator];
  showHomeEditor = [appNavigator showHomeEditor];
}

- (void)_editRoomMenuSelected
{
  appNavigator = [(HUMenuToolbarManager *)self appNavigator];
  showRoomEditor = [appNavigator showRoomEditor];
}

- (void)_homeMenuSelected
{
  appNavigator = [(HUMenuToolbarManager *)self appNavigator];
  showHomeTab = [appNavigator showHomeTab];
}

- (void)_automationMenuSelected
{
  appNavigator = [(HUMenuToolbarManager *)self appNavigator];
  showAutomationTab = [appNavigator showAutomationTab];
}

- (void)_discoverMenuSelected
{
  appNavigator = [(HUMenuToolbarManager *)self appNavigator];
  showDiscoverTab = [appNavigator showDiscoverTab];
}

+ (BOOL)isValidMenuSelector:(SEL)selector forDashboardContext:(id)context
{
  contextCopy = context;
  v6 = [HUMenuToolbarManager isValidMenuSelector:selector];
  if (v6 && sel__editRoomMenuSelected == selector)
  {
    LOBYTE(v6) = [HUMenuToolbarManager shouldEnableEditRoomForDashboardContext:contextCopy];
  }

  return v6;
}

+ (BOOL)shouldEnableEditRoomForDashboardContext:(id)context
{
  room = [context room];
  v4 = room != 0;

  return v4;
}

- (void)home:(id)home didAddAccessory:(id)accessory
{
  [(HUMenuToolbarManager *)self refreshFileMenu:home];
  [(HUMenuToolbarManager *)self refreshEditMenu];

  [(HUMenuToolbarManager *)self refreshViewMenu];
}

- (void)home:(id)home didRemoveAccessory:(id)accessory
{
  [(HUMenuToolbarManager *)self refreshFileMenu:home];
  [(HUMenuToolbarManager *)self refreshEditMenu];

  [(HUMenuToolbarManager *)self refreshViewMenu];
}

- (void)home:(id)home didAddRoom:(id)room
{
  [(HUMenuToolbarManager *)self refreshEditMenu:home];
  [(HUMenuToolbarManager *)self refreshViewMenu];

  [(HUMenuToolbarManager *)self refreshViewMenuChildren];
}

- (void)home:(id)home didRemoveRoom:(id)room
{
  [(HUMenuToolbarManager *)self refreshEditMenu:home];
  [(HUMenuToolbarManager *)self refreshViewMenu];

  [(HUMenuToolbarManager *)self refreshViewMenuChildren];
}

- (void)home:(id)home didUpdateAccessControlForUser:(id)user
{
  [(HUMenuToolbarManager *)self refreshEditMenu:home];
  [(HUMenuToolbarManager *)self refreshViewMenu];

  [(HUMenuToolbarManager *)self refreshViewMenuChildren];
}

- (void)homeManager:(id)manager didAddHome:(id)home
{
  [(HUMenuToolbarManager *)self refreshEditMenu:manager];
  [(HUMenuToolbarManager *)self refreshViewMenu];

  [(HUMenuToolbarManager *)self refreshViewMenuChildren];
}

- (void)homeManager:(id)manager didRemoveHome:(id)home
{
  [(HUMenuToolbarManager *)self refreshEditMenu:manager];
  [(HUMenuToolbarManager *)self refreshViewMenu];

  [(HUMenuToolbarManager *)self refreshViewMenuChildren];
}

- (HOAppNavigator)appNavigator
{
  WeakRetained = objc_loadWeakRetained(&self->_appNavigator);

  return WeakRetained;
}

@end