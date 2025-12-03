@interface TabGroupLibraryItemController
- (BOOL)_isPrivateBrowsingAndLocked;
- (BOOL)_sessionContainsLocalTabs:(id)tabs;
- (BOOL)_sessionContainsTabGroup:(id)group;
- (BOOL)isEqual:(id)equal;
- (BOOL)isExpanded;
- (BOOL)isSelected;
- (BOOL)shouldPersistSelection;
- (TabGroupLibraryItemController)initWithConfiguration:(id)configuration tabGroup:(id)group;
- (id)accessibilityIdentifier;
- (id)accessories;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)disclosureAccessory;
- (id)dragItem;
- (id)lockedAccessory;
- (id)subitems;
- (id)swipeActionsConfiguration;
- (id)tabGroupProvider;
- (int64_t)dropIntentForSession:(id)session;
- (unint64_t)dropOperationForSession:(id)session;
- (unint64_t)hash;
- (void)didSelectItem;
- (void)performDropWithProposal:(id)proposal session:(id)session inViewController:(id)controller;
- (void)updateListContentConfiguration:(id)configuration;
- (void)willToggleExpansionState;
@end

@implementation TabGroupLibraryItemController

- (unint64_t)hash
{
  uuid = [(WBTabGroup *)self->_tabGroup uuid];
  v3 = [uuid hash];

  return v3;
}

- (id)subitems
{
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  configuration = [(LibraryItemController *)self configuration];
  tabs = [(WBTabGroup *)self->_tabGroup tabs];
  pinnedTabsManager = [configuration pinnedTabsManager];
  if ([(WBTabGroup *)self->_tabGroup isLocal])
  {
    pinnedTabs = [pinnedTabsManager pinnedTabs];
LABEL_5:
    profileIdentifier = pinnedTabs;
    [orderedSet addObjectsFromArray:pinnedTabs];
LABEL_6:

    goto LABEL_7;
  }

  if ([(WBTabGroup *)self->_tabGroup isPrivateBrowsing])
  {
    pinnedTabs = [pinnedTabsManager privatePinnedTabs];
    goto LABEL_5;
  }

  if ([(WBTabGroup *)self->_tabGroup isUnnamed])
  {
    profileIdentifier = [(WBTabGroup *)self->_tabGroup profileIdentifier];
    v14 = [PinnedTabsContainer containerWithActiveProfileIdentifier:profileIdentifier];
    v15 = [pinnedTabsManager pinnedTabsInContainer:v14];
    [orderedSet addObjectsFromArray:v15];

    goto LABEL_6;
  }

LABEL_7:
  v9 = [tabs safari_partionedArrayUsingCondition:&__block_literal_global_36];

  [orderedSet addObjectsFromArray:v9];
  array = [orderedSet array];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __41__TabGroupLibraryItemController_subitems__block_invoke_2;
  v16[3] = &unk_2781D94E8;
  v17 = configuration;
  selfCopy = self;
  v11 = configuration;
  v12 = [array safari_mapObjectsUsingBlock:v16];

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
    configuration = [(LibraryItemController *)self configuration];
    isTabGroupExpanded = [configuration isTabGroupExpanded];
    v6 = (isTabGroupExpanded)[2](isTabGroupExpanded, self->_tabGroup);
  }

  else
  {
    configuration = [(TabGroupLibraryItemController *)self tabGroupProvider];
    isTabGroupExpanded = [(WBTabGroup *)self->_tabGroup uuid];
    v6 = [configuration isTabGroupUUIDExpanded:isTabGroupExpanded];
  }

  v3 = v6;

  return v3;
}

- (BOOL)_isPrivateBrowsingAndLocked
{
  isPrivateBrowsing = [(WBTabGroup *)self->_tabGroup isPrivateBrowsing];
  if (isPrivateBrowsing)
  {
    v3 = +[Application sharedApplication];
    isPrivateBrowsingLocked = [v3 isPrivateBrowsingLocked];

    LOBYTE(isPrivateBrowsing) = isPrivateBrowsingLocked;
  }

  return isPrivateBrowsing;
}

- (TabGroupLibraryItemController)initWithConfiguration:(id)configuration tabGroup:(id)group
{
  groupCopy = group;
  v12.receiver = self;
  v12.super_class = TabGroupLibraryItemController;
  v8 = [(LibraryItemController *)&v12 initWithConfiguration:configuration];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_tabGroup, group);
    v10 = v9;
  }

  return v9;
}

- (id)swipeActionsConfiguration
{
  tabGroupProvider = [(TabGroupLibraryItemController *)self tabGroupProvider];
  v4 = [tabGroupProvider swipeActionsConfigurationForTabGroup:self->_tabGroup forPickerSheet:0];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uuid = [(WBTabGroup *)self->_tabGroup uuid];
    tabGroup = [equalCopy tabGroup];
    uuid2 = [tabGroup uuid];
    v8 = [uuid isEqualToString:uuid2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)tabGroupProvider
{
  configuration = [(LibraryItemController *)self configuration];
  tabGroupProvider = [configuration tabGroupProvider];

  return tabGroupProvider;
}

- (void)updateListContentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  tabGroupProvider = [(TabGroupLibraryItemController *)self tabGroupProvider];
  v5 = [tabGroupProvider imageForTabGroup:self->_tabGroup];
  [configurationCopy setImage:v5];

  v6 = *MEMORY[0x277CBF3A8];
  v7 = *(MEMORY[0x277CBF3A8] + 8);
  imageProperties = [configurationCopy imageProperties];
  [imageProperties setMaximumSize:{v6, v7}];

  imageProperties2 = [configurationCopy imageProperties];
  [imageProperties2 setReservedLayoutSize:{v6, v7}];

  displayTitle = [(WBTabGroup *)self->_tabGroup displayTitle];
  [configurationCopy setText:displayTitle];

  if (([MEMORY[0x277D49A08] isSolariumEnabled] & 1) == 0 && objc_msgSend(tabGroupProvider, "hasMultipleProfiles") && (-[WBTabGroup isNamed](self->_tabGroup, "isNamed") & 1) == 0 && (-[WBTabGroup isPrivateBrowsing](self->_tabGroup, "isPrivateBrowsing") & 1) == 0)
  {
    activeProfile = [tabGroupProvider activeProfile];
    tabGroup = self->_tabGroup;
    secondaryTextProperties = [configurationCopy secondaryTextProperties];
    resolvedColor = [secondaryTextProperties resolvedColor];
    v15 = [ToolbarItemConfiguration attributedTitleForTabGroup:tabGroup inProfile:activeProfile primaryColor:0 secondaryColor:resolvedColor];
    [configurationCopy setAttributedText:v15];

    symbolImage = [activeProfile symbolImage];
    [configurationCopy setImage:symbolImage];
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

    customView = [(ActionCellAccessory *)self->_lockedAccessory customView];
    [customView setUserInteractionEnabled:0];

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
  tertiaryLabelColor = [MEMORY[0x277D75348] tertiaryLabelColor];
  [v2 setTintColor:tertiaryLabelColor];

  return v2;
}

- (id)accessories
{
  v8[1] = *MEMORY[0x277D85DE8];
  if ([(TabGroupLibraryItemController *)self _isPrivateBrowsingAndLocked])
  {
    lockedAccessory = [(TabGroupLibraryItemController *)self lockedAccessory];
    v8[0] = lockedAccessory;
    v4 = v8;
LABEL_3:
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

    goto LABEL_8;
  }

  if ([MEMORY[0x277D49A08] isEnhancedVerticalTabsEnabled] && -[TabGroupLibraryItemController hasSubitems](self, "hasSubitems"))
  {
    lockedAccessory = [(TabGroupLibraryItemController *)self disclosureAccessory];
    v7 = lockedAccessory;
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
    mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
    v4 = mEMORY[0x277D499B8];
    v5 = 0;
  }

  else
  {
    isPrivateBrowsing = [(WBTabGroup *)self->_tabGroup isPrivateBrowsing];
    mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
    v4 = mEMORY[0x277D499B8];
    if (isPrivateBrowsing)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }
  }

  [mEMORY[0x277D499B8] didUseSidebarAction:v5];

  mEMORY[0x277D499B8]2 = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8]2 didSwitchToTabGroupFromLocation:0];

  tabGroupProvider = [(TabGroupLibraryItemController *)self tabGroupProvider];
  if (([tabGroupProvider scrollTabSwitcherToTabGroupIfShowing:self->_tabGroup] & 1) == 0)
  {
    uuid = [(WBTabGroup *)self->_tabGroup uuid];
    [tabGroupProvider setActiveTabGroupUUID:uuid];
  }
}

- (BOOL)isSelected
{
  if ([MEMORY[0x277D49A08] isEnhancedVerticalTabsEnabled])
  {
    return 0;
  }

  tabGroupProvider = [(TabGroupLibraryItemController *)self tabGroupProvider];
  uuid = [(WBTabGroup *)self->_tabGroup uuid];
  v5 = [tabGroupProvider isTabGroupUUIDExpanded:uuid];

  if (v5)
  {
    return 0;
  }

  tabGroupProvider2 = [(TabGroupLibraryItemController *)self tabGroupProvider];
  activeTabGroupOrTabGroupVisibleInSwitcher = [tabGroupProvider2 activeTabGroupOrTabGroupVisibleInSwitcher];
  v8 = WBSIsEqual();

  if (!v8)
  {
    return 0;
  }

  tabGroupProvider3 = [(TabGroupLibraryItemController *)self tabGroupProvider];
  activeLibraryType = [tabGroupProvider3 activeLibraryType];
  v11 = activeLibraryType == 0;

  return v11;
}

- (BOOL)shouldPersistSelection
{
  if ([MEMORY[0x277D49A08] isEnhancedVerticalTabsEnabled])
  {
    configuration = [(LibraryItemController *)self configuration];
    isTabGroupExpanded = [configuration isTabGroupExpanded];
    v5 = (isTabGroupExpanded)[2](isTabGroupExpanded, self->_tabGroup);
  }

  else
  {
    configuration = [(TabGroupLibraryItemController *)self tabGroupProvider];
    isTabGroupExpanded = [(WBTabGroup *)self->_tabGroup uuid];
    v5 = [configuration isTabGroupUUIDExpanded:isTabGroupExpanded];
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
    configuration = [(LibraryItemController *)self configuration];
    setTabGroupExpanded = [configuration setTabGroupExpanded];
    (setTabGroupExpanded)[2](setTabGroupExpanded, self->_tabGroup, [(TabGroupLibraryItemController *)self isExpanded]^ 1);
  }

  else
  {
    configuration = [(TabGroupLibraryItemController *)self tabGroupProvider];
    setTabGroupExpanded = [(WBTabGroup *)self->_tabGroup uuid];
    [configuration toggleTabGroupUUIDExpanded:setTabGroupExpanded];
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

- (unint64_t)dropOperationForSession:(id)session
{
  v25 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  if ([(TabGroupLibraryItemController *)self _isPrivateBrowsingAndLocked])
  {
    v5 = 1;
  }

  else
  {
    [sessionCopy items];
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
            _sf_localTabGroup = [v11 _sf_localTabGroup];

            if (_sf_localTabGroup)
            {
              v5 = 3;
              goto LABEL_25;
            }
          }

          _sf_localBookmark = [v11 _sf_localBookmark];

          if (_sf_localBookmark)
          {
            v5 = 2;
          }

          else
          {
            safari_localWBTab = [v11 safari_localWBTab];
            v15 = safari_localWBTab;
            if (safari_localWBTab)
            {
              if (([safari_localWBTab isPinned] & 1) != 0 || (v16 = objc_msgSend(v15, "isPrivateBrowsing"), v16 != -[WBTabGroup isPrivateBrowsing](self->_tabGroup, "isPrivateBrowsing")))
              {

                goto LABEL_24;
              }

              v5 = 3;
            }

            else
            {
              itemProvider = [v11 itemProvider];
              v18 = [itemProvider canLoadObjectOfClass:objc_opt_class()];

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

- (int64_t)dropIntentForSession:(id)session
{
  if ([(TabGroupLibraryItemController *)self _sessionContainsTabGroup:session])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)performDropWithProposal:(id)proposal session:(id)session inViewController:(id)controller
{
  v39 = *MEMORY[0x277D85DE8];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [session items];
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
        _sf_localTabGroup = [v12 _sf_localTabGroup];
        if (_sf_localTabGroup)
        {
          v28 = _sf_localTabGroup;
          tabGroupProvider = [(TabGroupLibraryItemController *)self tabGroupProvider];
          [tabGroupProvider moveTabGroup:v28 beforeOrAfterTabGroup:*(&self->super.super.isa + v10[918])];

          mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
          [mEMORY[0x277D499B8] didUseSidebarAction:17];

          goto LABEL_20;
        }

        _sf_localBookmark = [v12 _sf_localBookmark];
        if (_sf_localBookmark)
        {
          safari_localWBTab = _sf_localBookmark;
          tabGroupProvider2 = [(TabGroupLibraryItemController *)self tabGroupProvider];
          [tabGroupProvider2 openBookmark:safari_localWBTab inTabGroup:*(&self->super.super.isa + v10[918])];

          mEMORY[0x277D499B8]2 = [MEMORY[0x277D499B8] sharedLogger];
          [mEMORY[0x277D499B8]2 didUseSidebarAction:19];
LABEL_11:

          goto LABEL_12;
        }

        safari_localWBTab = [v12 safari_localWBTab];
        if (safari_localWBTab)
        {
          mEMORY[0x277D499B8]2 = [(TabGroupLibraryItemController *)self tabGroupProvider];
          tabGroupUUID = [safari_localWBTab tabGroupUUID];
          [*(&self->super.super.isa + v10[918]) uuid];
          v20 = v19 = v9;
          [mEMORY[0x277D499B8]2 moveTab:safari_localWBTab fromTabGroupWithUUID:tabGroupUUID toTabGroupWithUUID:v20 afterTab:0];

          v9 = v19;
          v10 = &OBJC_IVAR___SFHistoryViewDataSource__filteringQueue;

          goto LABEL_11;
        }

        itemProvider = [v12 itemProvider];
        v22 = v9;
        v23 = [itemProvider canLoadObjectOfClass:objc_opt_class()];

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

          mEMORY[0x277D499B8]3 = [MEMORY[0x277D499B8] sharedLogger];
          [mEMORY[0x277D499B8]3 didUseSidebarAction:19];
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

- (BOOL)_sessionContainsLocalTabs:(id)tabs
{
  items = [tabs items];
  v4 = [items safari_containsObjectPassingTest:&__block_literal_global_44_1];

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

- (BOOL)_sessionContainsTabGroup:(id)group
{
  items = [group items];
  v4 = [items safari_containsObjectPassingTest:&__block_literal_global_46];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TabGroupLibraryItemController alloc];
  configuration = [(LibraryItemController *)self configuration];
  v6 = [(TabGroupLibraryItemController *)v4 initWithConfiguration:configuration tabGroup:self->_tabGroup];

  return v6;
}

@end