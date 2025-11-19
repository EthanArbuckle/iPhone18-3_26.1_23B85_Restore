@interface HUMenuToolbarManager
+ (BOOL)isValidMenuSelector:(SEL)a3 forDashboardContext:(id)a4;
+ (BOOL)shouldEnableEditRoomForDashboardContext:(id)a3;
- (BOOL)_shouldEnableIdentifier:(id)a3;
- (HOAppNavigator)appNavigator;
- (HUMenuToolbarManager)initWithAppNavigator:(id)a3;
- (id)_buildActionForIdentifier:(id)a3;
- (id)_buildHomeMenu;
- (id)_buildKeyCommandForIdentifier:(id)a3;
- (id)_buildMenuForIdentifier:(id)a3;
- (id)_editMenuIdentifiers;
- (id)_fileMenuIdentifiers;
- (id)_helpMenuIdentifiers;
- (id)_imageForActionWithIdentifier:(id)a3;
- (id)_subViewMenuIdentifiers;
- (id)_viewMenuIdentifiers;
- (void)_automationMenuSelected;
- (void)_discoverMenuSelected;
- (void)_editHomeMenuSelected;
- (void)_editRoomMenuSelected;
- (void)_homeMenuSelected;
- (void)buildMenu;
- (void)home:(id)a3 didAddAccessory:(id)a4;
- (void)home:(id)a3 didAddRoom:(id)a4;
- (void)home:(id)a3 didRemoveAccessory:(id)a4;
- (void)home:(id)a3 didRemoveRoom:(id)a4;
- (void)home:(id)a3 didUpdateAccessControlForUser:(id)a4;
- (void)homeManager:(id)a3 didAddHome:(id)a4;
- (void)homeManager:(id)a3 didRemoveHome:(id)a4;
- (void)refreshEditMenu;
- (void)refreshFileMenu;
- (void)refreshHelpMenu;
- (void)refreshViewMenu;
- (void)refreshViewMenuChildren;
- (void)removeFormatMenu;
- (void)setAppNavigator:(id)a3;
- (void)setHome:(id)a3;
- (void)setMenuBuilder:(id)a3;
- (void)setRoom:(id)a3;
@end

@implementation HUMenuToolbarManager

- (HUMenuToolbarManager)initWithAppNavigator:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HUMenuToolbarManager;
  v5 = [(HUMenuToolbarManager *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_appNavigator, v4);
    v7 = [MEMORY[0x277D146E8] sharedDispatcher];
    v8 = [v7 home];
    [(HUMenuToolbarManager *)v6 setHome:v8];

    v9 = [MEMORY[0x277D146E8] sharedDispatcher];
    [v9 addHomeObserver:v6];

    v10 = [MEMORY[0x277D146E8] sharedDispatcher];
    [v10 addHomeManagerObserver:v6];
  }

  return v6;
}

- (void)setHome:(id)a3
{
  v7 = a3;
  if (([(HMHome *)self->_home isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_home, a3);
    v5 = [v7 hf_selectedRoom];
    room = self->_room;
    self->_room = v5;

    [(HUMenuToolbarManager *)self buildMenu];
  }
}

- (void)setRoom:(id)a3
{
  v5 = a3;
  if (([(HMRoom *)self->_room isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_room, a3);
    [(HUMenuToolbarManager *)self refreshViewMenuChildren];
  }
}

- (void)setMenuBuilder:(id)a3
{
  objc_storeStrong(&self->_menuBuilder, a3);

  [(HUMenuToolbarManager *)self buildMenu];
}

- (void)setAppNavigator:(id)a3
{
  obj = a3;
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
  v3 = [(HUMenuToolbarManager *)self menuBuilder];

  if (v3)
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
  v3 = [(HUMenuToolbarManager *)self menuBuilder];
  v4 = [v3 menuForIdentifier:@"HUMenuToolbarIdentifierHelp"];

  if (!v4)
  {
    v5 = [(HUMenuToolbarManager *)self _helpMenuIdentifiers];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __39__HUMenuToolbarManager_refreshHelpMenu__block_invoke;
    v9[3] = &unk_277DBAC58;
    v9[4] = self;
    v6 = [v5 na_map:v9];

    v7 = [MEMORY[0x277D75710] menuWithTitle:&stru_2823E0EE8 image:0 identifier:@"HUMenuToolbarIdentifierHelp" options:1 children:v6];
    v8 = [(HUMenuToolbarManager *)self menuBuilder];
    [v8 insertChildMenu:v7 atEndOfMenuForIdentifier:*MEMORY[0x277D76CF8]];
  }
}

- (void)refreshViewMenuChildren
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(HUMenuToolbarManager *)self _subViewMenuIdentifiers];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__HUMenuToolbarManager_refreshViewMenuChildren__block_invoke;
  v6[3] = &unk_277DBAC80;
  v6[4] = self;
  v6[5] = &v7;
  [v3 na_each:v6];

  if (*(v8 + 24) == 1)
  {
    v4 = [(HUMenuToolbarManager *)self menuBuilder];
    v5 = [v4 system];
    [v5 setNeedsRebuild];
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
  v3 = [(HUMenuToolbarManager *)self _viewMenuIdentifiers];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __39__HUMenuToolbarManager_refreshViewMenu__block_invoke;
  v11[3] = &unk_277DBAC58;
  v11[4] = self;
  v4 = [v3 na_map:v11];

  v5 = [MEMORY[0x277D75710] menuWithTitle:&stru_2823E0EE8 image:0 identifier:@"HUMenuToolbarIdentifierView" options:1 children:v4];
  v6 = [(HUMenuToolbarManager *)self menuBuilder];
  v7 = [v6 menuForIdentifier:@"HUMenuToolbarIdentifierView"];

  v8 = [(HUMenuToolbarManager *)self menuBuilder];
  v9 = v8;
  if (v7)
  {
    [v8 replaceMenuForIdentifier:@"HUMenuToolbarIdentifierView" withMenu:v5];

    v9 = [(HUMenuToolbarManager *)self menuBuilder];
    v10 = [v9 system];
    [v10 setNeedsRebuild];
  }

  else
  {
    [v8 insertChildMenu:v5 atStartOfMenuForIdentifier:*MEMORY[0x277D76D90]];
  }
}

- (void)refreshFileMenu
{
  v3 = [(HUMenuToolbarManager *)self home];
  v4 = [(HUMenuToolbarManager *)self appNavigator];
  v11 = [HUNavigationMenuFactory addMenuForHome:v3 room:0 delegate:v4 includeDisabledElements:1];

  v5 = [MEMORY[0x277D75710] menuWithTitle:&stru_2823E0EE8 image:0 identifier:@"HUMenuToolbarIdentifierFile" options:1 children:v11];
  v6 = [(HUMenuToolbarManager *)self menuBuilder];
  v7 = [v6 menuForIdentifier:@"HUMenuToolbarIdentifierFile"];

  v8 = [(HUMenuToolbarManager *)self menuBuilder];
  v9 = v8;
  if (v7)
  {
    [v8 replaceMenuForIdentifier:@"HUMenuToolbarIdentifierFile" withMenu:v5];

    v9 = [(HUMenuToolbarManager *)self menuBuilder];
    v10 = [v9 system];
    [v10 setNeedsRebuild];
  }

  else
  {
    [v8 insertChildMenu:v5 atStartOfMenuForIdentifier:*MEMORY[0x277D76CD8]];
  }
}

- (void)refreshEditMenu
{
  v26[5] = *MEMORY[0x277D85DE8];
  v3 = [(HUMenuToolbarManager *)self _editMenuIdentifiers];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __39__HUMenuToolbarManager_refreshEditMenu__block_invoke;
  v24[3] = &unk_277DBAC58;
  v24[4] = self;
  v4 = [v3 na_map:v24];

  v5 = [MEMORY[0x277D75710] menuWithTitle:&stru_2823E0EE8 image:0 identifier:@"HUMenuToolbarIdentifierEdit" options:1 children:v4];
  v6 = [(HUMenuToolbarManager *)self menuBuilder];
  v7 = [v6 menuForIdentifier:@"HUMenuToolbarIdentifierEdit"];

  v8 = [(HUMenuToolbarManager *)self menuBuilder];
  v9 = v8;
  if (v7)
  {
    [v8 replaceMenuForIdentifier:@"HUMenuToolbarIdentifierEdit" withMenu:v5];

    v9 = [(HUMenuToolbarManager *)self menuBuilder];
    v10 = [v9 system];
    [v10 setNeedsRebuild];
  }

  else
  {
    [v8 insertSiblingMenu:v5 afterMenuForIdentifier:*MEMORY[0x277D76D60]];
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
        v19 = [(HUMenuToolbarManager *)self menuBuilder];
        [v19 removeMenuForIdentifier:v18];

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
  v2 = [(HUMenuToolbarManager *)self menuBuilder];
  [v2 removeMenuForIdentifier:*MEMORY[0x277D76CE8]];
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

- (BOOL)_shouldEnableIdentifier:(id)a3
{
  v4 = a3;
  if (![v4 isEqualToString:@"HUMenuToolbarIdentifierAddAutomation"])
  {
    if ([v4 isEqualToString:@"HUMenuToolbarIdentifierAddScene"])
    {
      v5 = [(HUMenuToolbarManager *)self home];
      if ([v5 hf_currentUserIsAdministrator])
      {
        v6 = [(HUMenuToolbarManager *)self home];
        v7 = [v6 hf_containsActionableAccessories];
        goto LABEL_7;
      }

LABEL_25:
      LOBYTE(self) = 0;
      goto LABEL_26;
    }

    if (([v4 isEqualToString:@"HUMenuToolbarIdentifierEditHome"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"HUMenuToolbarIdentifierHome"))
    {
      v5 = [(HUMenuToolbarManager *)self home];
      LOBYTE(self) = v5 != 0;
      goto LABEL_26;
    }

    if (([v4 isEqualToString:@"HUMenuToolbarIdentifierEditRoom"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"HUMenuToolbarIdentifierRoomList"))
    {
      v5 = [(HUMenuToolbarManager *)self home];
      if (!v5)
      {
        goto LABEL_25;
      }

      v6 = [(HUMenuToolbarManager *)self home];
      v8 = [v6 accessories];
      if ([v8 count])
      {
        LOBYTE(self) = 1;
      }

      else
      {
        v9 = [(HUMenuToolbarManager *)self room];
        v10 = [(HUMenuToolbarManager *)self home];
        v11 = [v10 roomForEntireHome];
        LODWORD(self) = [v9 isEqual:v11] ^ 1;
      }
    }

    else
    {
      if ([v4 isEqualToString:@"HUMenuToolbarIdentifierAutomation"])
      {
        v5 = [(HUMenuToolbarManager *)self home];
        if ([v5 hf_hasAnyVisibleTriggers])
        {
          LOBYTE(self) = 1;
          goto LABEL_26;
        }

        v6 = [(HUMenuToolbarManager *)self home];
        if ([v6 hf_userIsAllowedToCreateTrigger])
        {
          LOBYTE(self) = 1;
          goto LABEL_8;
        }

        v7 = HFForceAllowAutomationCreation();
        goto LABEL_7;
      }

      if ([v4 isEqualToString:@"HUMenuToolbarIdentifierDiscover"])
      {
        v5 = [(HUMenuToolbarManager *)self home];
        if (v5)
        {
          v12 = [MEMORY[0x277D14B68] getAvailabilityDictionary];
          LOBYTE(self) = v12 != 0;

          goto LABEL_26;
        }

        goto LABEL_25;
      }

      if ([v4 isEqualToString:@"HUMenuToolbarIdentifierAboutHomeKit"])
      {
        LOBYTE(self) = 1;
        goto LABEL_27;
      }

      if ([v4 isEqualToString:@"HUMenuToolbarIdentifierInvitation"])
      {
        v5 = [MEMORY[0x277D146E8] sharedDispatcher];
        v6 = [v5 homeManager];
        v14 = [v6 incomingHomeInvitations];
      }

      else
      {
        if (![v4 isEqualToString:@"HUMenuToolbarIdentifierHomeList"])
        {
          LOBYTE(self) = 0;
          goto LABEL_27;
        }

        v5 = [MEMORY[0x277D146E8] sharedDispatcher];
        v6 = [v5 homeManager];
        v14 = [v6 homes];
      }

      v8 = v14;
      LOBYTE(self) = [v14 count] != 0;
    }

    goto LABEL_8;
  }

  v5 = [(HUMenuToolbarManager *)self home];
  if (![v5 hf_currentUserIsAdministrator])
  {
    goto LABEL_25;
  }

  v6 = [(HUMenuToolbarManager *)self home];
  v7 = [v6 hf_userCanCreateTrigger];
LABEL_7:
  LOBYTE(self) = v7;
LABEL_8:

LABEL_26:
LABEL_27:

  return self;
}

- (id)_buildMenuForIdentifier:(id)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isEqualToString:@"HUMenuToolbarIdentifierHomeList"] && -[HUMenuToolbarManager _shouldEnableIdentifier:](self, "_shouldEnableIdentifier:", v4))
  {
    v5 = [(HUMenuToolbarManager *)self _buildHomeMenu];
  }

  else if ([v4 isEqualToString:@"HUMenuToolbarIdentifierInvitation"] && -[HUMenuToolbarManager _shouldEnableIdentifier:](self, "_shouldEnableIdentifier:", v4))
  {
    v6 = [MEMORY[0x277D146E8] sharedDispatcher];
    v7 = [v6 homeManager];
    v8 = [v7 incomingHomeInvitations];
    v9 = [v8 count];
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
    v5 = [v18 menuWithTitle:v16 image:0 identifier:v4 options:1 children:v19];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __48__HUMenuToolbarManager__buildMenuForIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appNavigator];
  v1 = [v2 showHomeSettingsForHome:0];
}

- (id)_buildActionForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HUMenuToolbarManager *)self _imageForActionWithIdentifier:v4];
  if ([v4 isEqualToString:@"HUMenuToolbarIdentifierAddAutomation"])
  {
    v6 = MEMORY[0x277D750C8];
    v7 = _HULocalizedStringWithDefaultValue(@"HUMenuToolbarManagerAddAutomation", @"HUMenuToolbarManagerAddAutomation", 1);
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __50__HUMenuToolbarManager__buildActionForIdentifier___block_invoke;
    v19 = &unk_277DB8C50;
    v20 = self;
    v8 = &v16;
LABEL_7:
    v9 = [v6 actionWithTitle:v7 image:v5 identifier:0 handler:{v8, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20}];

    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"HUMenuToolbarIdentifierAddScene"])
  {
    v6 = MEMORY[0x277D750C8];
    v7 = _HULocalizedStringWithDefaultValue(@"HUMenuToolbarManagerAddScene", @"HUMenuToolbarManagerAddScene", 1);
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __50__HUMenuToolbarManager__buildActionForIdentifier___block_invoke_2;
    v14 = &unk_277DB8C50;
    v15 = self;
    v8 = &v11;
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"HUMenuToolbarIdentifierAboutHomeKit"])
  {
    v6 = MEMORY[0x277D750C8];
    v7 = _HULocalizedStringWithDefaultValue(@"HUMenuToolbarManagerAboutHomeKit", @"HUMenuToolbarManagerAboutHomeKit", 1);
    v8 = &__block_literal_global_61;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_8:
  if (![(HUMenuToolbarManager *)self _shouldEnableIdentifier:v4])
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

- (id)_buildKeyCommandForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HUMenuToolbarManager *)self _imageForActionWithIdentifier:v4];
  if ([v4 isEqualToString:@"HUMenuToolbarIdentifierEditHome"])
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

  if ([v4 isEqualToString:@"HUMenuToolbarIdentifierEditRoom"])
  {
    v6 = MEMORY[0x277D75650];
    v7 = _HULocalizedStringWithDefaultValue(@"HUMenuToolbarManagerEditRoom", @"HUMenuToolbarManagerEditRoom", 1);
    v8 = sel__editRoomMenuSelected;
    v9 = @"r";
    goto LABEL_5;
  }

  if ([v4 isEqualToString:@"HUMenuToolbarIdentifierHome"])
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

  if ([v4 isEqualToString:@"HUMenuToolbarIdentifierAutomation"])
  {
    v14 = MEMORY[0x277D75650];
    v7 = _HULocalizedStringWithDefaultValue(@"HUMenuToolbarManagerAutomation", @"HUMenuToolbarManagerAutomation", 1);
    v8 = sel__automationMenuSelected;
    v9 = @"2";
    goto LABEL_12;
  }

  if ([v4 isEqualToString:@"HUMenuToolbarIdentifierDiscover"])
  {
    v14 = MEMORY[0x277D75650];
    v7 = _HULocalizedStringWithDefaultValue(@"HUMenuToolbarManagerDiscover", @"HUMenuToolbarManagerDiscover", 1);
    v8 = sel__discoverMenuSelected;
    v9 = @"3";
    goto LABEL_12;
  }

  v15 = 0;
LABEL_14:
  if (![(HUMenuToolbarManager *)self _shouldEnableIdentifier:v4])
  {
    [v15 setAttributes:1];
  }

  return v15;
}

- (id)_imageForActionWithIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"HUMenuToolbarIdentifierAddAutomation"])
  {
    v4 = 1;
LABEL_15:
    v5 = [HUNavigationMenuFactory systemImageForActionType:v4];
    goto LABEL_16;
  }

  if ([v3 isEqualToString:@"HUMenuToolbarIdentifierAddScene"])
  {
    v4 = 2;
    goto LABEL_15;
  }

  if ([v3 isEqualToString:@"HUMenuToolbarIdentifierEditHome"])
  {
    v4 = 7;
    goto LABEL_15;
  }

  if ([v3 isEqualToString:@"HUMenuToolbarIdentifierEditRoom"])
  {
    v4 = 6;
    goto LABEL_15;
  }

  if ([v3 isEqualToString:@"HUMenuToolbarIdentifierHome"])
  {
    v4 = 10;
    goto LABEL_15;
  }

  if ([v3 isEqualToString:@"HUMenuToolbarIdentifierAutomation"])
  {
    v4 = 12;
    goto LABEL_15;
  }

  if ([v3 isEqualToString:@"HUMenuToolbarIdentifierDiscover"])
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
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = MEMORY[0x277D750C8];
  v5 = _HULocalizedStringWithDefaultValue(@"HUMenuToolbarManagerHomes", @"HUMenuToolbarManagerHomes", 1);
  v6 = [v4 actionWithTitle:v5 image:0 identifier:0 handler:&__block_literal_global_195];

  [v6 setAttributes:1];
  v26 = v3;
  v24 = v6;
  [v3 addObject:v6];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [MEMORY[0x277D146E8] sharedDispatcher];
  v8 = [v7 homeManager];
  v9 = [v8 homes];

  obj = v9;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
        v16 = [v14 name];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __38__HUMenuToolbarManager__buildHomeMenu__block_invoke_2;
        v27[3] = &unk_277DBACC8;
        v27[4] = self;
        v27[5] = v14;
        v17 = [v15 actionWithTitle:v16 image:0 identifier:0 handler:v27];

        v18 = [(HUMenuToolbarManager *)self home];
        v19 = [v18 uniqueIdentifier];
        v20 = [v14 uniqueIdentifier];
        v21 = [v19 isEqual:v20];

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
  v3 = [(HUMenuToolbarManager *)self appNavigator];
  v2 = [v3 showHomeEditor];
}

- (void)_editRoomMenuSelected
{
  v3 = [(HUMenuToolbarManager *)self appNavigator];
  v2 = [v3 showRoomEditor];
}

- (void)_homeMenuSelected
{
  v3 = [(HUMenuToolbarManager *)self appNavigator];
  v2 = [v3 showHomeTab];
}

- (void)_automationMenuSelected
{
  v3 = [(HUMenuToolbarManager *)self appNavigator];
  v2 = [v3 showAutomationTab];
}

- (void)_discoverMenuSelected
{
  v3 = [(HUMenuToolbarManager *)self appNavigator];
  v2 = [v3 showDiscoverTab];
}

+ (BOOL)isValidMenuSelector:(SEL)a3 forDashboardContext:(id)a4
{
  v5 = a4;
  v6 = [HUMenuToolbarManager isValidMenuSelector:a3];
  if (v6 && sel__editRoomMenuSelected == a3)
  {
    LOBYTE(v6) = [HUMenuToolbarManager shouldEnableEditRoomForDashboardContext:v5];
  }

  return v6;
}

+ (BOOL)shouldEnableEditRoomForDashboardContext:(id)a3
{
  v3 = [a3 room];
  v4 = v3 != 0;

  return v4;
}

- (void)home:(id)a3 didAddAccessory:(id)a4
{
  [(HUMenuToolbarManager *)self refreshFileMenu:a3];
  [(HUMenuToolbarManager *)self refreshEditMenu];

  [(HUMenuToolbarManager *)self refreshViewMenu];
}

- (void)home:(id)a3 didRemoveAccessory:(id)a4
{
  [(HUMenuToolbarManager *)self refreshFileMenu:a3];
  [(HUMenuToolbarManager *)self refreshEditMenu];

  [(HUMenuToolbarManager *)self refreshViewMenu];
}

- (void)home:(id)a3 didAddRoom:(id)a4
{
  [(HUMenuToolbarManager *)self refreshEditMenu:a3];
  [(HUMenuToolbarManager *)self refreshViewMenu];

  [(HUMenuToolbarManager *)self refreshViewMenuChildren];
}

- (void)home:(id)a3 didRemoveRoom:(id)a4
{
  [(HUMenuToolbarManager *)self refreshEditMenu:a3];
  [(HUMenuToolbarManager *)self refreshViewMenu];

  [(HUMenuToolbarManager *)self refreshViewMenuChildren];
}

- (void)home:(id)a3 didUpdateAccessControlForUser:(id)a4
{
  [(HUMenuToolbarManager *)self refreshEditMenu:a3];
  [(HUMenuToolbarManager *)self refreshViewMenu];

  [(HUMenuToolbarManager *)self refreshViewMenuChildren];
}

- (void)homeManager:(id)a3 didAddHome:(id)a4
{
  [(HUMenuToolbarManager *)self refreshEditMenu:a3];
  [(HUMenuToolbarManager *)self refreshViewMenu];

  [(HUMenuToolbarManager *)self refreshViewMenuChildren];
}

- (void)homeManager:(id)a3 didRemoveHome:(id)a4
{
  [(HUMenuToolbarManager *)self refreshEditMenu:a3];
  [(HUMenuToolbarManager *)self refreshViewMenu];

  [(HUMenuToolbarManager *)self refreshViewMenuChildren];
}

- (HOAppNavigator)appNavigator
{
  WeakRetained = objc_loadWeakRetained(&self->_appNavigator);

  return WeakRetained;
}

@end