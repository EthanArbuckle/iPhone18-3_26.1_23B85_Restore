@interface TabGroupLibraryItemController
- (BOOL)_isPrivateBrowsingAndLocked;
- (BOOL)_sessionContainsLocalTabs:(id)a3;
- (BOOL)_sessionContainsTabGroup:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isExpanded;
- (BOOL)isSelected;
- (BOOL)shouldPersistSelection;
- (TabGroupLibraryItemController)initWithConfiguration:(id)a3 tabGroup:(id)a4;
- (id)accessibilityIdentifier;
- (id)accessories;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)disclosureAccessory;
- (id)dragItem;
- (id)lockedAccessory;
- (id)subitems;
- (id)swipeActionsConfiguration;
- (id)tabGroupProvider;
- (int64_t)dropIntentForSession:(id)a3;
- (unint64_t)dropOperationForSession:(id)a3;
- (unint64_t)hash;
- (void)didSelectItem;
- (void)performDropWithProposal:(id)a3 session:(id)a4 inViewController:(id)a5;
- (void)updateListContentConfiguration:(id)a3;
- (void)willToggleExpansionState;
@end

@implementation TabGroupLibraryItemController

- (unint64_t)hash
{
  v2 = [(WBTabGroup *)self->_tabGroup uuid];
  v3 = [v2 hash];

  return v3;
}

- (id)subitems
{
  v3 = [MEMORY[0x277CBEB40] orderedSet];
  v4 = [(LibraryItemController *)self configuration];
  v5 = [(WBTabGroup *)self->_tabGroup tabs];
  v6 = [v4 pinnedTabsManager];
  if ([(WBTabGroup *)self->_tabGroup isLocal])
  {
    v7 = [v6 pinnedTabs];
LABEL_5:
    v8 = v7;
    [v3 addObjectsFromArray:v7];
LABEL_6:

    goto LABEL_7;
  }

  if ([(WBTabGroup *)self->_tabGroup isPrivateBrowsing])
  {
    v7 = [v6 privatePinnedTabs];
    goto LABEL_5;
  }

  if ([(WBTabGroup *)self->_tabGroup isUnnamed])
  {
    v8 = [(WBTabGroup *)self->_tabGroup profileIdentifier];
    v14 = [PinnedTabsContainer containerWithActiveProfileIdentifier:v8];
    v15 = [v6 pinnedTabsInContainer:v14];
    [v3 addObjectsFromArray:v15];

    goto LABEL_6;
  }

LABEL_7:
  v9 = [v5 safari_partionedArrayUsingCondition:&__block_literal_global_36];

  [v3 addObjectsFromArray:v9];
  v10 = [v3 array];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __41__TabGroupLibraryItemController_subitems__block_invoke_2;
  v16[3] = &unk_2781D94E8;
  v17 = v4;
  v18 = self;
  v11 = v4;
  v12 = [v10 safari_mapObjectsUsingBlock:v16];

  return v12;
}

TabLibraryItemController *__41__TabGroupLibraryItemController_subitems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[TabLibraryItemController alloc] initWithConfiguration:*(a1 + 32) tabGroup:*(*(a1 + 40) + 96) tab:v3];

  return v4;
}

- (BOOL)isExpanded
{
  if ([(TabGroupLibraryItemController *)self _isPrivateBrowsingAndLocked])
  {
    return 0;
  }

  if ([MEMORY[0x277D49A08] isEnhancedVerticalTabsEnabled])
  {
    v4 = [(LibraryItemController *)self configuration];
    v5 = [v4 isTabGroupExpanded];
    v6 = (v5)[2](v5, self->_tabGroup);
  }

  else
  {
    v4 = [(TabGroupLibraryItemController *)self tabGroupProvider];
    v5 = [(WBTabGroup *)self->_tabGroup uuid];
    v6 = [v4 isTabGroupUUIDExpanded:v5];
  }

  v3 = v6;

  return v3;
}

- (BOOL)_isPrivateBrowsingAndLocked
{
  v2 = [(WBTabGroup *)self->_tabGroup isPrivateBrowsing];
  if (v2)
  {
    v3 = +[Application sharedApplication];
    v4 = [v3 isPrivateBrowsingLocked];

    LOBYTE(v2) = v4;
  }

  return v2;
}

- (TabGroupLibraryItemController)initWithConfiguration:(id)a3 tabGroup:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = TabGroupLibraryItemController;
  v8 = [(LibraryItemController *)&v12 initWithConfiguration:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_tabGroup, a4);
    v10 = v9;
  }

  return v9;
}

- (id)swipeActionsConfiguration
{
  v3 = [(TabGroupLibraryItemController *)self tabGroupProvider];
  v4 = [v3 swipeActionsConfigurationForTabGroup:self->_tabGroup forPickerSheet:0];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(WBTabGroup *)self->_tabGroup uuid];
    v6 = [v4 tabGroup];
    v7 = [v6 uuid];
    v8 = [v5 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)tabGroupProvider
{
  v2 = [(LibraryItemController *)self configuration];
  v3 = [v2 tabGroupProvider];

  return v3;
}

- (void)updateListContentConfiguration:(id)a3
{
  v17 = a3;
  v4 = [(TabGroupLibraryItemController *)self tabGroupProvider];
  v5 = [v4 imageForTabGroup:self->_tabGroup];
  [v17 setImage:v5];

  v6 = *MEMORY[0x277CBF3A8];
  v7 = *(MEMORY[0x277CBF3A8] + 8);
  v8 = [v17 imageProperties];
  [v8 setMaximumSize:{v6, v7}];

  v9 = [v17 imageProperties];
  [v9 setReservedLayoutSize:{v6, v7}];

  v10 = [(WBTabGroup *)self->_tabGroup displayTitle];
  [v17 setText:v10];

  if (([MEMORY[0x277D49A08] isSolariumEnabled] & 1) == 0 && objc_msgSend(v4, "hasMultipleProfiles") && (-[WBTabGroup isNamed](self->_tabGroup, "isNamed") & 1) == 0 && (-[WBTabGroup isPrivateBrowsing](self->_tabGroup, "isPrivateBrowsing") & 1) == 0)
  {
    v11 = [v4 activeProfile];
    tabGroup = self->_tabGroup;
    v13 = [v17 secondaryTextProperties];
    v14 = [v13 resolvedColor];
    v15 = [ToolbarItemConfiguration attributedTitleForTabGroup:tabGroup inProfile:v11 primaryColor:0 secondaryColor:v14];
    [v17 setAttributedText:v15];

    v16 = [v11 symbolImage];
    [v17 setImage:v16];
  }
}

- (id)lockedAccessory
{
  lockedAccessory = self->_lockedAccessory;
  if (!lockedAccessory)
  {
    v4 = [ActionCellAccessory alloc];
    v5 = MEMORY[0x277D750C8];
    v6 = [MEMORY[0x277D755B8] systemImageNamed:@"lock.fill"];
    v7 = [v5 actionWithTitle:&stru_2827BF158 image:v6 identifier:0 handler:&__block_literal_global_49];
    v8 = [(ActionCellAccessory *)v4 initWithAction:v7];
    v9 = self->_lockedAccessory;
    self->_lockedAccessory = v8;

    v10 = [(ActionCellAccessory *)self->_lockedAccessory customView];
    [v10 setUserInteractionEnabled:0];

    v11 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76918] scale:2];
    [(ActionCellAccessory *)self->_lockedAccessory setPreferredSymbolConfiguration:v11];

    lockedAccessory = self->_lockedAccessory;
  }

  v12 = lockedAccessory;

  return v12;
}

- (id)disclosureAccessory
{
  v2 = objc_alloc_init(MEMORY[0x277D75270]);
  [v2 setDisplayedState:0];
  [v2 setStyle:2];
  v3 = [MEMORY[0x277D75348] tertiaryLabelColor];
  [v2 setTintColor:v3];

  return v2;
}

- (id)accessories
{
  v8[1] = *MEMORY[0x277D85DE8];
  if ([(TabGroupLibraryItemController *)self _isPrivateBrowsingAndLocked])
  {
    v3 = [(TabGroupLibraryItemController *)self lockedAccessory];
    v8[0] = v3;
    v4 = v8;
LABEL_3:
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

    goto LABEL_8;
  }

  if ([MEMORY[0x277D49A08] isEnhancedVerticalTabsEnabled] && -[TabGroupLibraryItemController hasSubitems](self, "hasSubitems"))
  {
    v3 = [(TabGroupLibraryItemController *)self disclosureAccessory];
    v7 = v3;
    v4 = &v7;
    goto LABEL_3;
  }

  v5 = MEMORY[0x277CBEBF8];
LABEL_8:

  return v5;
}

- (void)didSelectItem
{
  if ([(WBTabGroup *)self->_tabGroup isLocal])
  {
    v3 = [MEMORY[0x277D499B8] sharedLogger];
    v4 = v3;
    v5 = 0;
  }

  else
  {
    v6 = [(WBTabGroup *)self->_tabGroup isPrivateBrowsing];
    v3 = [MEMORY[0x277D499B8] sharedLogger];
    v4 = v3;
    if (v6)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }
  }

  [v3 didUseSidebarAction:v5];

  v7 = [MEMORY[0x277D499B8] sharedLogger];
  [v7 didSwitchToTabGroupFromLocation:0];

  v9 = [(TabGroupLibraryItemController *)self tabGroupProvider];
  if (([v9 scrollTabSwitcherToTabGroupIfShowing:self->_tabGroup] & 1) == 0)
  {
    v8 = [(WBTabGroup *)self->_tabGroup uuid];
    [v9 setActiveTabGroupUUID:v8];
  }
}

- (BOOL)isSelected
{
  if ([MEMORY[0x277D49A08] isEnhancedVerticalTabsEnabled])
  {
    return 0;
  }

  v3 = [(TabGroupLibraryItemController *)self tabGroupProvider];
  v4 = [(WBTabGroup *)self->_tabGroup uuid];
  v5 = [v3 isTabGroupUUIDExpanded:v4];

  if (v5)
  {
    return 0;
  }

  v6 = [(TabGroupLibraryItemController *)self tabGroupProvider];
  v7 = [v6 activeTabGroupOrTabGroupVisibleInSwitcher];
  v8 = WBSIsEqual();

  if (!v8)
  {
    return 0;
  }

  v9 = [(TabGroupLibraryItemController *)self tabGroupProvider];
  v10 = [v9 activeLibraryType];
  v11 = v10 == 0;

  return v11;
}

- (BOOL)shouldPersistSelection
{
  if ([MEMORY[0x277D49A08] isEnhancedVerticalTabsEnabled])
  {
    v3 = [(LibraryItemController *)self configuration];
    v4 = [v3 isTabGroupExpanded];
    v5 = (v4)[2](v4, self->_tabGroup);
  }

  else
  {
    v3 = [(TabGroupLibraryItemController *)self tabGroupProvider];
    v4 = [(WBTabGroup *)self->_tabGroup uuid];
    v5 = [v3 isTabGroupUUIDExpanded:v4];
  }

  v6 = v5;

  return v6 ^ 1;
}

- (id)accessibilityIdentifier
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"isSyncable";
  if ([(WBTabGroup *)self->_tabGroup isSyncable])
  {
    v3 = @"true";
  }

  else
  {
    v3 = @"false";
  }

  v8[1] = @"isPrivate";
  v9[0] = v3;
  if ([(WBTabGroup *)self->_tabGroup isPrivateBrowsing])
  {
    v4 = @"true";
  }

  else
  {
    v4 = @"false";
  }

  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v6 = WBSMakeAccessibilityIdentifier();

  return v6;
}

- (void)willToggleExpansionState
{
  if ([MEMORY[0x277D49A08] isEnhancedVerticalTabsEnabled])
  {
    v4 = [(LibraryItemController *)self configuration];
    v3 = [v4 setTabGroupExpanded];
    (v3)[2](v3, self->_tabGroup, [(TabGroupLibraryItemController *)self isExpanded]^ 1);
  }

  else
  {
    v4 = [(TabGroupLibraryItemController *)self tabGroupProvider];
    v3 = [(WBTabGroup *)self->_tabGroup uuid];
    [v4 toggleTabGroupUUIDExpanded:v3];
  }
}

- (id)dragItem
{
  if ([(TabGroupLibraryItemController *)self _isPrivateBrowsingAndLocked])
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277D75470] _sf_itemWithTabGroup:self->_tabGroup];
  }

  return v3;
}

- (unint64_t)dropOperationForSession:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(TabGroupLibraryItemController *)self _isPrivateBrowsingAndLocked])
  {
    v5 = 1;
  }

  else
  {
    [v4 items];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = v23 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v5 = 0;
      v9 = *v21;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          if ([(TabGroupLibraryItemController *)self isTabGroupSynced])
          {
            v12 = [v11 _sf_localTabGroup];

            if (v12)
            {
              v5 = 3;
              goto LABEL_25;
            }
          }

          v13 = [v11 _sf_localBookmark];

          if (v13)
          {
            v5 = 2;
          }

          else
          {
            v14 = [v11 safari_localWBTab];
            v15 = v14;
            if (v14)
            {
              if (([v14 isPinned] & 1) != 0 || (v16 = objc_msgSend(v15, "isPrivateBrowsing"), v16 != -[WBTabGroup isPrivateBrowsing](self->_tabGroup, "isPrivateBrowsing")))
              {

                goto LABEL_24;
              }

              v5 = 3;
            }

            else
            {
              v17 = [v11 itemProvider];
              v18 = [v17 canLoadObjectOfClass:objc_opt_class()];

              if (v18)
              {
                v5 = 2;
              }
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
LABEL_24:
      v5 = 0;
    }

LABEL_25:
  }

  return v5;
}

- (int64_t)dropIntentForSession:(id)a3
{
  if ([(TabGroupLibraryItemController *)self _sessionContainsTabGroup:a3])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)performDropWithProposal:(id)a3 session:(id)a4 inViewController:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [a4 items];
  v6 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    v9 = 0x277CBE000uLL;
    v10 = &OBJC_IVAR___SFHistoryViewDataSource__filteringQueue;
    do
    {
      v11 = 0;
      do
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v33 + 1) + 8 * v11);
        v13 = [v12 _sf_localTabGroup];
        if (v13)
        {
          v28 = v13;
          v29 = [(TabGroupLibraryItemController *)self tabGroupProvider];
          [v29 moveTabGroup:v28 beforeOrAfterTabGroup:*(&self->super.super.isa + v10[918])];

          v30 = [MEMORY[0x277D499B8] sharedLogger];
          [v30 didUseSidebarAction:17];

          goto LABEL_20;
        }

        v14 = [v12 _sf_localBookmark];
        if (v14)
        {
          v15 = v14;
          v16 = [(TabGroupLibraryItemController *)self tabGroupProvider];
          [v16 openBookmark:v15 inTabGroup:*(&self->super.super.isa + v10[918])];

          v17 = [MEMORY[0x277D499B8] sharedLogger];
          [v17 didUseSidebarAction:19];
LABEL_11:

          goto LABEL_12;
        }

        v15 = [v12 safari_localWBTab];
        if (v15)
        {
          v17 = [(TabGroupLibraryItemController *)self tabGroupProvider];
          v18 = [v15 tabGroupUUID];
          [*(&self->super.super.isa + v10[918]) uuid];
          v20 = v19 = v9;
          [v17 moveTab:v15 fromTabGroupWithUUID:v18 toTabGroupWithUUID:v20 afterTab:0];

          v9 = v19;
          v10 = &OBJC_IVAR___SFHistoryViewDataSource__filteringQueue;

          goto LABEL_11;
        }

        v21 = [v12 itemProvider];
        v22 = v9;
        v23 = [v21 canLoadObjectOfClass:objc_opt_class()];

        if (v23)
        {
          v24 = *(v22 + 3008);
          v37 = v12;
          v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = __82__TabGroupLibraryItemController_performDropWithProposal_session_inViewController___block_invoke;
          v32[3] = &unk_2781D4FA0;
          v32[4] = self;
          [v24 _sf_urlsFromDragItems:v25 completionHandler:v32];

          v26 = [MEMORY[0x277D499B8] sharedLogger];
          [v26 didUseSidebarAction:19];
        }

        v9 = v22;
        v10 = &OBJC_IVAR___SFHistoryViewDataSource__filteringQueue;
LABEL_12:

        ++v11;
      }

      while (v7 != v11);
      v27 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
      v7 = v27;
    }

    while (v27);
  }

LABEL_20:
}

void __82__TabGroupLibraryItemController_performDropWithProposal_session_inViewController___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = [*(a1 + 32) tabGroupProvider];
        [v9 openURL:v8 inTabGroup:*(*(a1 + 32) + 96)];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (BOOL)_sessionContainsLocalTabs:(id)a3
{
  v3 = [a3 items];
  v4 = [v3 safari_containsObjectPassingTest:&__block_literal_global_44_1];

  return v4;
}

BOOL __59__TabGroupLibraryItemController__sessionContainsLocalTabs___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 safari_localWBTab];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [v2 safari_localTab];
    v4 = v5 != 0;
  }

  return v4;
}

- (BOOL)_sessionContainsTabGroup:(id)a3
{
  v3 = [a3 items];
  v4 = [v3 safari_containsObjectPassingTest:&__block_literal_global_46];

  return v4;
}

BOOL __58__TabGroupLibraryItemController__sessionContainsTabGroup___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _sf_localTabGroup];
  v3 = v2 != 0;

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p tabGroup = %@>", v5, self, self->_tabGroup];;

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TabGroupLibraryItemController alloc];
  v5 = [(LibraryItemController *)self configuration];
  v6 = [(TabGroupLibraryItemController *)v4 initWithConfiguration:v5 tabGroup:self->_tabGroup];

  return v6;
}

@end