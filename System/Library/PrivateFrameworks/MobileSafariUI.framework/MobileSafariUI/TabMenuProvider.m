@interface TabMenuProvider
+ (BOOL)canMoveTabsToNewWindow:(id)a3;
+ (id)_bottomMenuForTab:(id)a3 dataSource:(id)a4 options:(unint64_t)a5;
+ (id)_closeActionForTab:(id)a3 dataSource:(id)a4;
+ (id)_closeActionForTab:(id)a3 inBackgroundTabGroup:(id)a4 dataSource:(id)a5;
+ (id)_closeCommandForMultipleTabSelection;
+ (id)_closeOtherTabsActionForTab:(id)a3 dataSource:(id)a4;
+ (id)_closeOtherTabsActionForTab:(id)a3 inBackgroundTabGroup:(id)a4 dataSource:(id)a5;
+ (id)_copyActionsForTab:(id)a3 options:(unint64_t)a4;
+ (id)_copyCommandForMultipleTabSelection;
+ (id)_copyMenuForTabGroupTab:(id)a3;
+ (id)_duplicateActionForWBTabs:(id)a3 dataSource:(id)a4;
+ (id)_mainMenuForTab:(id)a3 dataSource:(id)a4 options:(unint64_t)a5;
+ (id)_moveMenuForMultipleTabSelection:(id)a3 dataSource:(id)a4;
+ (id)_moveMenuForTabGroupTab:(id)a3 inTabGroup:(id)a4 dataSource:(id)a5;
+ (id)_moveToNewWindowActionForTabs:(id)a3 dataSource:(id)a4;
+ (id)_pinTabActionForTabGroupTab:(id)a3 inTabGroup:(id)a4 dataSource:(id)a5;
+ (id)_readerActionForTabDocument:(id)a3;
+ (id)_sortMenuForTab:(id)a3 dataSource:(id)a4;
+ (id)_stopReloadActionForTabDocument:(id)a3;
+ (id)_toggleVoiceSearchActionForTabDocument:(id)a3;
+ (id)actionProviderForMultipleTabSelection:(id)a3 dataSource:(id)a4;
+ (id)actionProviderForTab:(id)a3 dataSource:(id)a4 options:(unint64_t)a5;
+ (id)actionProviderForTabGroupTab:(id)a3 inTabGroup:(id)a4 dataSource:(id)a5 options:(unint64_t)a6;
+ (id)addressFieldActionProviderForTab:(id)a3 dataSource:(id)a4;
+ (id)bookmarkActionForTabGroup:(id)a3 dataSource:(id)a4;
+ (id)closeAllTabsCommandWithDataSource:(id)a3;
+ (id)copyLinksActionForTabGroup:(id)a3;
+ (id)moveMenuForTab:(id)a3 dataSource:(id)a4 showTitle:(BOOL)a5 dismissHandler:(id)a6;
+ (id)moveMenuForTabGroup:(id)a3 dataSource:(id)a4;
+ (id)pinTabActionForTab:(id)a3 dataSource:(id)a4;
+ (id)sortMenuForTabGroup:(id)a3 dataSource:(id)a4;
+ (id)switchTabGroupMenuWithDataSource:(id)a3;
@end

@implementation TabMenuProvider

+ (id)actionProviderForTab:(id)a3 dataSource:(id)a4 options:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = [a1 _mainMenuForTab:v8 dataSource:v9 options:a5];
  [v10 safari_addObjectUnlessNil:v11];

  if ((a5 & 0x44) == 4)
  {
    v12 = [MEMORY[0x277D75710] sf_bookmarkMenu];
    [v10 addObject:v12];
  }

  v13 = [a1 _bottomMenuForTab:v8 dataSource:v9 options:a5];
  [v10 safari_addObjectUnlessNil:v13];

  if ([v10 count])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__TabMenuProvider_actionProviderForTab_dataSource_options___block_invoke;
    aBlock[3] = &unk_2781DA500;
    v17 = v10;
    v14 = _Block_copy(aBlock);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)actionProviderForTabGroupTab:(id)a3 inTabGroup:(id)a4 dataSource:(id)a5 options:(unint64_t)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [MEMORY[0x277CBEB18] array];
  v14 = [a1 _copyMenuForTabGroupTab:v10];
  [v13 safari_addObjectUnlessNil:v14];

  if ((v6 & 0x1000) != 0)
  {
    v20 = [a1 _pinTabActionForTabGroupTab:v10 inTabGroup:v11 dataSource:v12];
    [v13 safari_addObjectUnlessNil:v20];

    if ((v6 & 0x10) == 0)
    {
LABEL_3:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v21 = [a1 _moveMenuForTabGroupTab:v10 inTabGroup:v11 dataSource:v12];
  [v13 safari_addObjectUnlessNil:v21];

  if ((v6 & 0x20) == 0)
  {
LABEL_4:
    if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v22 = [a1 sortMenuForTabGroup:v11 dataSource:v12];
  [v13 safari_addObjectUnlessNil:v22];

  if ((v6 & 2) != 0)
  {
LABEL_5:
    v15 = [a1 _closeActionForTab:v10 inBackgroundTabGroup:v11 dataSource:v12];
    [v13 safari_addObjectUnlessNil:v15];

    v16 = [a1 _closeOtherTabsActionForTab:v10 inBackgroundTabGroup:v11 dataSource:v12];
    [v13 safari_addObjectUnlessNil:v16];
  }

LABEL_6:
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__TabMenuProvider_actionProviderForTabGroupTab_inTabGroup_dataSource_options___block_invoke;
  aBlock[3] = &unk_2781DA500;
  v24 = v13;
  v17 = v13;
  v18 = _Block_copy(aBlock);

  return v18;
}

+ (id)bookmarkActionForTabGroup:(id)a3 dataSource:(id)a4
{
  v5 = a4;
  v6 = [a3 unpinnedTabs];
  v7 = [v6 safari_filterObjectsUsingBlock:&__block_literal_global_55];

  v8 = [v7 count];
  if (v8)
  {
    v9 = v8;
    if (v8 == 1)
    {
      v10 = _WBSLocalizedString();
    }

    else
    {
      v12 = MEMORY[0x277CCACA8];
      v13 = _WBSLocalizedString();
      v10 = [v12 localizedStringWithFormat:v13, v9];
    }

    v14 = MEMORY[0x277D750C8];
    v15 = [MEMORY[0x277D755B8] systemImageNamed:@"book.badge.plus"];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __56__TabMenuProvider_bookmarkActionForTabGroup_dataSource___block_invoke_2;
    v17[3] = &unk_2781D9420;
    v18 = v5;
    v19 = v7;
    v11 = [v14 actionWithTitle:v10 image:v15 identifier:0 handler:v17];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)copyLinksActionForTabGroup:(id)a3
{
  v3 = a3;
  v4 = [v3 tabCountForPasteboard];
  if (v4)
  {
    v5 = v4;
    if (v4 == 1)
    {
      v6 = _WBSLocalizedString();
    }

    else
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = _WBSLocalizedString();
      v6 = [v8 localizedStringWithFormat:v9, v5];
    }

    v10 = MEMORY[0x277D750C8];
    v11 = [MEMORY[0x277D755B8] systemImageNamed:@"link"];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __46__TabMenuProvider_copyLinksActionForTabGroup___block_invoke;
    v13[3] = &unk_2781D93D0;
    v14 = v3;
    v7 = [v10 actionWithTitle:v6 image:v11 identifier:0 handler:v13];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __46__TabMenuProvider_copyLinksActionForTabGroup___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75810] generalPasteboard];
  [v2 safari_copyLinksForTabGroup:*(a1 + 32)];
}

+ (id)actionProviderForMultipleTabSelection:(id)a3 dataSource:(id)a4
{
  v6 = MEMORY[0x277CBEB18];
  v7 = a4;
  v8 = a3;
  v9 = [v6 array];
  v10 = [a1 _copyCommandForMultipleTabSelection];
  [v9 addObject:v10];

  v11 = [a1 _duplicateActionForWBTabs:v8 dataSource:v7];
  [v9 safari_addObjectUnlessNil:v11];

  v12 = [a1 _moveToNewWindowActionForTabs:v8 dataSource:v7];
  [v9 safari_addObjectUnlessNil:v12];

  v13 = [a1 _moveMenuForMultipleTabSelection:v8 dataSource:v7];

  [v9 safari_addObjectUnlessNil:v13];
  v14 = [a1 _closeCommandForMultipleTabSelection];
  [v9 addObject:v14];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__TabMenuProvider_actionProviderForMultipleTabSelection_dataSource___block_invoke;
  aBlock[3] = &unk_2781DA500;
  v19 = v9;
  v15 = v9;
  v16 = _Block_copy(aBlock);

  return v16;
}

+ (id)addressFieldActionProviderForTab:(id)a3 dataSource:(id)a4
{
  v6 = MEMORY[0x277CBEB18];
  v7 = a4;
  v8 = a3;
  v9 = [v6 array];
  v10 = [a1 _mainMenuForTab:v8 dataSource:v7 options:10241];
  [v9 addObject:v10];

  v11 = MEMORY[0x277D75710];
  v12 = [MEMORY[0x277CBEB18] array];
  v13 = [a1 switchTabGroupMenuWithDataSource:v7];
  [v12 safari_addObjectUnlessNil:v13];

  v14 = [a1 moveMenuForTab:v8 dataSource:v7];
  [v12 safari_addObjectUnlessNil:v14];

  v15 = [v11 menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:v12];
  [v9 addObject:v15];

  v16 = MEMORY[0x277D75710];
  v17 = [MEMORY[0x277CBEB18] array];
  v18 = [a1 closeAllTabsCommandWithDataSource:v7];
  [v17 safari_addObjectUnlessNil:v18];

  v19 = [a1 _closeActionForTab:v8 dataSource:v7];

  [v17 safari_addObjectUnlessNil:v19];
  v20 = [v16 menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:v17];
  [v9 addObject:v20];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__TabMenuProvider_addressFieldActionProviderForTab_dataSource___block_invoke;
  aBlock[3] = &unk_2781DA500;
  v25 = v9;
  v21 = v9;
  v22 = _Block_copy(aBlock);

  return v22;
}

+ (id)switchTabGroupMenuWithDataSource:(id)a3
{
  v3 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__TabMenuProvider_switchTabGroupMenuWithDataSource___block_invoke;
  v11[3] = &unk_2781D9BD8;
  v12 = v3;
  v4 = v3;
  v5 = [v4 tabGroupsMenuElementsWithOptions:15 newTabGroupName:0 hostTitle:0 descendantCount:0 movingSelectedTabs:0 actionHandler:v11 dismissHandler:&__block_literal_global_30];
  v6 = MEMORY[0x277D75710];
  v7 = _WBSLocalizedString();
  v8 = [MEMORY[0x277D755B8] systemImageNamed:@"square.on.square"];
  v9 = [v6 menuWithTitle:v7 image:v8 identifier:0 options:0 children:v5];

  return v9;
}

void __52__TabMenuProvider_switchTabGroupMenuWithDataSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  [*(a1 + 32) setActiveTabGroupUUID:v3];
}

+ (id)_copyCommandForMultipleTabSelection
{
  v2 = MEMORY[0x277D75370];
  v3 = _WBSLocalizedString();
  v4 = [MEMORY[0x277D755B8] systemImageNamed:@"link"];
  v5 = [v2 commandWithTitle:v3 image:v4 action:sel_copy_ propertyList:0];

  [v5 setAccessibilityIdentifier:@"CopySelectedTabsButton"];
  return v5;
}

+ (id)_moveMenuForMultipleTabSelection:(id)a3 dataSource:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        if ([v12 isPrivateBrowsing] & 1) != 0 || (objc_msgSend(v12, "isPinned"))
        {
          v17 = 0;
          v18 = v7;
          goto LABEL_12;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __63__TabMenuProvider__moveMenuForMultipleTabSelection_dataSource___block_invoke;
  v20[3] = &unk_2781DA550;
  v21 = v7;
  v22 = v6;
  v13 = [v22 tabGroupsMenuElementsWithOptions:23 newTabGroupName:0 hostTitle:0 descendantCount:0 movingSelectedTabs:v21 actionHandler:v20 dismissHandler:&__block_literal_global_50];
  v14 = MEMORY[0x277D75710];
  v15 = _WBSLocalizedString();
  v16 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.up.forward.app"];
  v17 = [v14 menuWithTitle:v15 image:v16 identifier:0 options:0 children:v13];

  v18 = v21;
LABEL_12:

  return v17;
}

void __63__TabMenuProvider__moveMenuForMultipleTabSelection_dataSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x277CBEAC0] safari_dictionaryWithObjectsInFastEnumerationCollection:*(a1 + 32) groupedUsingBlock:&__block_literal_global_47_0];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __63__TabMenuProvider__moveMenuForMultipleTabSelection_dataSource___block_invoke_3;
    v5[3] = &unk_2781DA528;
    v6 = *(a1 + 40);
    v7 = v3;
    [v4 enumerateKeysAndObjectsUsingBlock:v5];
  }
}

void __63__TabMenuProvider__moveMenuForMultipleTabSelection_dataSource___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [a3 reverseObjectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = *(a1 + 32);
        v13 = [*(a1 + 40) uuid];
        [v12 moveTab:v11 fromTabGroupWithUUID:v5 toTabGroupWithUUID:v13 afterTab:0];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

+ (id)_closeCommandForMultipleTabSelection
{
  v2 = MEMORY[0x277D75370];
  v3 = _WBSLocalizedString();
  v4 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark"];
  v5 = [v2 commandWithTitle:v3 image:v4 action:sel_closeSelectedTabs_ propertyList:0];

  [v5 setAttributes:2];
  [v5 setAccessibilityIdentifier:@"CloseSelectedTabsButton"];

  return v5;
}

+ (BOOL)canMoveTabsToNewWindow:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (![*MEMORY[0x277D76620] supportsMultipleScenes])
  {
    goto LABEL_18;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v5)
  {

LABEL_18:
    v13 = 0;
    goto LABEL_19;
  }

  v6 = v5;
  v7 = 0;
  v8 = 0;
  v9 = *v16;
  v10 = 1;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(v4);
      }

      v12 = *(*(&v15 + 1) + 8 * i);
      if (v7)
      {
        v7 = 1;
        if ((v8 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v7 = [*(*(&v15 + 1) + 8 * i) isPinned];
        if ((v8 & 1) == 0)
        {
LABEL_9:
          v8 = [v12 isPrivateBrowsing];
          if ((v10 & 1) == 0)
          {
            goto LABEL_10;
          }

          goto LABEL_13;
        }
      }

      v8 = 1;
      if ((v10 & 1) == 0)
      {
LABEL_10:
        v10 = 0;
        continue;
      }

LABEL_13:
      v10 = [v12 isPrivateBrowsing];
    }

    v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  }

  while (v6);

  v13 = (v7 | v8 ^ v10) ^ 1;
LABEL_19:

  return v13 & 1;
}

+ (id)_moveToNewWindowActionForTabs:(id)a3 dataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([a1 canMoveTabsToNewWindow:v6])
  {
    if ([v6 count] == 1)
    {
      v8 = _WBSLocalizedString();
    }

    else
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = _WBSLocalizedString();
      v8 = [v10 localizedStringWithFormat:v11, objc_msgSend(v6, "count")];
    }

    v12 = MEMORY[0x277D750C8];
    v13 = [MEMORY[0x277D755B8] systemImageNamed:@"rectangle.badge.plus"];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __60__TabMenuProvider__moveToNewWindowActionForTabs_dataSource___block_invoke;
    v15[3] = &unk_2781D9420;
    v16 = v7;
    v17 = v6;
    v9 = [v12 actionWithTitle:v8 image:v13 identifier:0 handler:v15];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_duplicateActionForWBTabs:(id)a3 dataSource:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 safari_allObjectsPassTest:&__block_literal_global_78_0])
  {
    v7 = 0;
  }

  else
  {
    if ([v5 count] == 1)
    {
      v8 = _WBSLocalizedString();
    }

    else
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = _WBSLocalizedString();
      v8 = [v9 localizedStringWithFormat:v10, objc_msgSend(v5, "count")];
    }

    v11 = MEMORY[0x277D750C8];
    v12 = [MEMORY[0x277D755B8] systemImageNamed:@"plus.square.on.square"];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __56__TabMenuProvider__duplicateActionForWBTabs_dataSource___block_invoke_2;
    v14[3] = &unk_2781D9420;
    v15 = v6;
    v16 = v5;
    v7 = [v11 actionWithTitle:v8 image:v12 identifier:0 handler:v14];
  }

  return v7;
}

+ (id)moveMenuForTabGroup:(id)a3 dataSource:(id)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v6 hasMultipleProfiles] && objc_msgSend(v5, "isNamed"))
  {
    v20[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __50__TabMenuProvider_moveMenuForTabGroup_dataSource___block_invoke;
    v17 = &unk_2781DA578;
    v18 = v6;
    v19 = v5;
    v8 = [v18 profilesMenuElementsWithOptions:3 movingSelectedTabGroups:v7 actionHandler:&v14];

    v9 = MEMORY[0x277D75710];
    v10 = _WBSLocalizedString();
    v11 = [MEMORY[0x277D755B8] systemImageNamed:{@"arrow.up.forward.app", v14, v15, v16, v17}];
    v12 = [v9 menuWithTitle:v10 image:v11 identifier:0 options:0 children:v8];

    [v12 setAccessibilityIdentifier:@"MoveToProfileMenuItem"];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_copyMenuForTabGroupTab:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D75810];
  v4 = a3;
  v5 = [v3 generalPasteboard];
  v6 = [v4 url];

  if (v6)
  {
    v7 = MEMORY[0x277D750C8];
    v8 = _WBSLocalizedString();
    v9 = [MEMORY[0x277D755B8] systemImageNamed:@"doc.on.doc"];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __43__TabMenuProvider__copyMenuForTabGroupTab___block_invoke;
    v18 = &unk_2781D9420;
    v19 = v5;
    v20 = v6;
    v10 = [v7 actionWithTitle:v8 image:v9 identifier:0 handler:&v15];

    [v10 setAccessibilityIdentifier:{@"CopyButton", v15, v16, v17, v18}];
    v11 = MEMORY[0x277D75710];
    v21[0] = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v13 = [v11 menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)_moveMenuForTabGroupTab:(id)a3 inTabGroup:(id)a4 dataSource:(id)a5
{
  v24[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7 || ([v7 isPrivateBrowsing] & 1) != 0 || (objc_msgSend(v7, "isPinned") & 1) != 0)
  {
    v10 = 0;
  }

  else
  {
    v12 = [v7 url];
    v13 = [v12 safari_userVisibleHostWithoutWWWSubdomain];
    if (![v13 length] || (objc_msgSend(v12, "safari_isHTTPFamilyURL") & 1) == 0)
    {
      v14 = [v7 title];

      v13 = v14;
    }

    v24[0] = v7;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __65__TabMenuProvider__moveMenuForTabGroupTab_inTabGroup_dataSource___block_invoke;
    v20[3] = &unk_2781DA5A0;
    v21 = v9;
    v22 = v7;
    v23 = v8;
    v16 = [v21 tabGroupsMenuElementsWithOptions:23 newTabGroupName:0 hostTitle:v13 descendantCount:0 movingSelectedTabs:v15 actionHandler:v20];

    v17 = MEMORY[0x277D75710];
    v18 = _WBSLocalizedString();
    v19 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.up.forward.app"];
    v10 = [v17 menuWithTitle:v18 image:v19 identifier:0 options:0 children:v16];
  }

  return v10;
}

void __65__TabMenuProvider__moveMenuForTabGroupTab_inTabGroup_dataSource___block_invoke(void *a1, void *a2)
{
  if (a2)
  {
    v2 = a1[4];
    v3 = a1[5];
    v4 = a1[6];
    v5 = a2;
    v7 = [v4 uuid];
    v6 = [v5 uuid];

    [v2 moveTab:v3 fromTabGroupWithUUID:v7 toTabGroupWithUUID:v6 afterTab:0];
  }
}

+ (id)sortMenuForTabGroup:(id)a3 dataSource:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 unpinnedTabs];
  if ([v7 count] >= 2)
  {
    v9 = [MEMORY[0x277CBEB18] array];
    v10 = MEMORY[0x277D750C8];
    v11 = _WBSLocalizedString();
    v12 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.up.arrow.down"];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __50__TabMenuProvider_sortMenuForTabGroup_dataSource___block_invoke;
    v30[3] = &unk_2781D9420;
    v13 = v6;
    v31 = v13;
    v14 = v5;
    v32 = v14;
    v15 = [v10 actionWithTitle:v11 image:v12 identifier:0 handler:v30];
    [v9 addObject:v15];

    v16 = MEMORY[0x277D750C8];
    v17 = _WBSLocalizedString();
    v18 = [MEMORY[0x277D755B8] systemImageNamed:@"globe"];
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __50__TabMenuProvider_sortMenuForTabGroup_dataSource___block_invoke_2;
    v27 = &unk_2781D9420;
    v28 = v13;
    v29 = v14;
    v19 = [v16 actionWithTitle:v17 image:v18 identifier:0 handler:&v24];
    [v9 addObject:{v19, v24, v25, v26, v27}];

    v20 = MEMORY[0x277D75710];
    v21 = _WBSLocalizedString();
    v22 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.up.arrow.down"];
    v8 = [v20 menuWithTitle:v21 image:v22 identifier:0 options:0 children:v9];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __50__TabMenuProvider_sortMenuForTabGroup_dataSource___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) uuid];
  [v1 sortTabsInTabGroupWithUUIDString:v2 withSortMode:0];
}

void __50__TabMenuProvider_sortMenuForTabGroup_dataSource___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) uuid];
  [v1 sortTabsInTabGroupWithUUIDString:v2 withSortMode:1];
}

+ (id)_closeActionForTab:(id)a3 inBackgroundTabGroup:(id)a4 dataSource:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x277D750C8];
  v11 = _WBSLocalizedString();
  v12 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark"];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __70__TabMenuProvider__closeActionForTab_inBackgroundTabGroup_dataSource___block_invoke;
  v18[3] = &unk_2781DA5C8;
  v19 = v9;
  v20 = v7;
  v21 = v8;
  v13 = v8;
  v14 = v7;
  v15 = v9;
  v16 = [v10 actionWithTitle:v11 image:v12 identifier:0 handler:v18];

  [v16 setAttributes:2];

  return v16;
}

void __70__TabMenuProvider__closeActionForTab_inBackgroundTabGroup_dataSource___block_invoke(void *a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D499B8] sharedLogger];
  [v2 didCloseTabWithTrigger:2 tabClosingAction:1 numberOfTabsClosed:1 tabCollectionViewType:1];

  v3 = a1[4];
  v5[0] = a1[5];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [v3 closeTabs:v4 inInactiveTabGroup:a1[6]];
}

+ (id)_closeOtherTabsActionForTab:(id)a3 inBackgroundTabGroup:(id)a4 dataSource:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 isPinned])
  {
    v10 = 0;
  }

  else
  {
    v11 = [v8 unpinnedTabs];
    if ([v11 count] >= 2)
    {
      v12 = MEMORY[0x277D750C8];
      v13 = _WBSLocalizedString();
      v14 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark"];
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __79__TabMenuProvider__closeOtherTabsActionForTab_inBackgroundTabGroup_dataSource___block_invoke;
      v19 = &unk_2781DA5F0;
      v20 = v11;
      v21 = v7;
      v22 = v9;
      v23 = v8;
      v10 = [v12 actionWithTitle:v13 image:v14 identifier:0 handler:&v16];

      [v10 setAttributes:{2, v16, v17, v18, v19}];
      [v10 setAccessibilityIdentifier:@"CloseOtherTabsButton"];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

void __79__TabMenuProvider__closeOtherTabsActionForTab_inBackgroundTabGroup_dataSource___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __79__TabMenuProvider__closeOtherTabsActionForTab_inBackgroundTabGroup_dataSource___block_invoke_2;
  v4[3] = &unk_2781D98D8;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 safari_filterObjectsUsingBlock:v4];
  [*(a1 + 48) closeTabs:v3 inInactiveTabGroup:*(a1 + 56)];
}

uint64_t __79__TabMenuProvider__closeOtherTabsActionForTab_inBackgroundTabGroup_dataSource___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) uuid];
  v5 = [v3 isEqual:v4];

  return v5 ^ 1u;
}

+ (id)_mainMenuForTab:(id)a3 dataSource:(id)a4 options:(unint64_t)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = MEMORY[0x277D75370];
  v10 = _WBSLocalizedString();
  v11 = [MEMORY[0x277D755B8] systemImageNamed:@"square.and.arrow.up"];
  v12 = [v9 commandWithTitle:v10 image:v11 action:sel_shareCurrentPage_ propertyList:0];
  [v8 addObject:v12];

  v13 = [a1 _copyActionsForTab:v7 options:a5];
  [v8 addObjectsFromArray:v13];

  v14 = [MEMORY[0x277D75810] generalPasteboard];
  v15 = v14;
  if (a5)
  {
    v16 = [v14 safari_pasteAndNavigateCommands];
    [v8 addObjectsFromArray:v16];
  }

  if ((~a5 & 0x44) == 0)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = [MEMORY[0x277D75710] sf_bookmarkMenu];
    v18 = [v17 children];

    v19 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [v8 addObject:*(*(&v26 + 1) + 8 * i)];
        }

        v20 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v20);
    }
  }

  if ((a5 & 0x800) != 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [a1 _toggleVoiceSearchActionForTabDocument:v7];
      [v8 safari_addObjectUnlessNil:v23];
    }
  }

  if ([v8 count])
  {
    v24 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:v8];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

+ (id)_copyActionsForTab:(id)a3 options:(unint64_t)a4
{
  v4 = a4;
  v40[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 urlForSharing];
  if (v6)
  {
    v7 = [MEMORY[0x277D75810] generalPasteboard];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v5;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = v9;
    if ((v4 & 0x2000) != 0)
    {
      v12 = [v9 currentSearchQuery];
      v31 = v12 != 0;
    }

    else
    {
      v31 = 0;
    }

    v13 = _WBSLocalizedString();
    v14 = [v10 currentSearchQuery];
    v15 = [v14 safari_wordCount];

    if (v15 >= 2)
    {
      v16 = _WBSLocalizedString();

      v13 = v16;
    }

    v17 = MEMORY[0x277D750C8];
    v18 = [MEMORY[0x277D755B8] systemImageNamed:@"doc.on.doc"];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __46__TabMenuProvider__copyActionsForTab_options___block_invoke;
    v36[3] = &unk_2781D9420;
    v19 = v7;
    v37 = v19;
    v20 = v10;
    v38 = v20;
    v21 = [v17 actionWithTitle:v13 image:v18 identifier:0 handler:v36];

    [v21 setAccessibilityIdentifier:@"CopySearchTermsButton"];
    v22 = _WBSLocalizedString();
    v23 = MEMORY[0x277D750C8];
    v24 = [MEMORY[0x277D755B8] systemImageNamed:@"link"];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __46__TabMenuProvider__copyActionsForTab_options___block_invoke_2;
    v32[3] = &unk_2781DA5C8;
    v33 = v5;
    v34 = v6;
    v25 = v19;
    v35 = v25;
    v26 = [v23 actionWithTitle:v22 image:v24 identifier:0 handler:v32];

    [v26 setAccessibilityIdentifier:@"CopyButton"];
    if (v31)
    {
      v40[0] = v21;
      v40[1] = v26;
      v27 = MEMORY[0x277CBEA60];
      v28 = v40;
      v29 = 2;
    }

    else
    {
      v39 = v26;
      v27 = MEMORY[0x277CBEA60];
      v28 = &v39;
      v29 = 1;
    }

    v11 = [v27 arrayWithObjects:v28 count:v29];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

void __46__TabMenuProvider__copyActionsForTab_options___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) currentSearchQuery];
  [*(a1 + 32) setString:v2];
}

void __46__TabMenuProvider__copyActionsForTab_options___block_invoke_2(id *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CCAA88]);
  v3 = [a1[4] linkMetadataForSharing];
  if (v3)
  {
    [v2 safari_registerLinkMetadata:v3];
  }

  [v2 registerObject:a1[5] visibility:0];
  v4 = [a1[5] absoluteString];
  [v2 registerObject:v4 visibility:0];

  v6[0] = v2;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [a1[6] setItemProviders:v5];
}

+ (id)_bottomMenuForTab:(id)a3 dataSource:(id)a4 options:(unint64_t)a5
{
  v5 = a5;
  v27[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277CBEB18] array];
  if ((v5 & 0x1000) != 0)
  {
    v11 = [a1 pinTabActionForTab:v8 dataSource:v9];
    [v10 safari_addObjectUnlessNil:v11];
  }

  if ((v5 & 0x4000) != 0)
  {
    v17 = [v8 wbTab];
    v27[0] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    v19 = [a1 _duplicateActionForWBTabs:v18 dataSource:v9];
    [v10 safari_addObjectUnlessNil:v19];

    if ((v5 & 0x8000) == 0)
    {
LABEL_5:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    }
  }

  else if ((v5 & 0x8000) == 0)
  {
    goto LABEL_5;
  }

  v20 = [v8 wbTab];
  v26 = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  v22 = [a1 _moveToNewWindowActionForTabs:v21 dataSource:v9];
  [v10 safari_addObjectUnlessNil:v22];

  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_20:
    v24 = [a1 _sortMenuForTab:v8 dataSource:v9];
    [v10 safari_addObjectUnlessNil:v24];

    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_19:
  v23 = [a1 moveMenuForTab:v8 dataSource:v9];
  [v10 safari_addObjectUnlessNil:v23];

  if ((v5 & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  if ((v5 & 2) != 0)
  {
LABEL_8:
    v12 = [a1 _closeActionForTab:v8 dataSource:v9];
    [v10 safari_addObjectUnlessNil:v12];

    v13 = [a1 _closeOtherTabsActionForTab:v8 dataSource:v9];
    [v10 safari_addObjectUnlessNil:v13];
  }

LABEL_9:
  if ((v5 & 0x80) != 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [a1 _stopReloadActionForTabDocument:v8];
      [v10 safari_addObjectUnlessNil:v14];
    }
  }

  if ((v5 & 0x100) != 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [a1 _readerActionForTabDocument:v8];
      [v10 safari_addObjectUnlessNil:v15];
    }
  }

  if ([v10 count])
  {
    v16 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:v10];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)_toggleVoiceSearchActionForTabDocument:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D28EB8] sharedManager];
  v5 = [v4 availability];

  if (v5)
  {
    v6 = MEMORY[0x277D750C8];
    v7 = _WBSLocalizedString();
    v8 = [MEMORY[0x277D755B8] systemImageNamed:@"mic"];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__TabMenuProvider__toggleVoiceSearchActionForTabDocument___block_invoke;
    v10[3] = &unk_2781D93D0;
    v11 = v3;
    v5 = [v6 actionWithTitle:v7 image:v8 identifier:0 handler:v10];
  }

  return v5;
}

void __58__TabMenuProvider__toggleVoiceSearchActionForTabDocument___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) browserController];
  [v1 toggleVoiceSearch];
}

+ (id)_stopReloadActionForTabDocument:(id)a3
{
  v3 = a3;
  if ([v3 isBlank])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 canStopLoading];
    if (v5)
    {
      v6 = @"xmark";
    }

    else
    {
      v6 = @"arrow.clockwise";
    }

    v7 = _WBSLocalizedString();
    v8 = [MEMORY[0x277D755B8] systemImageNamed:v6];
    v9 = MEMORY[0x277D750C8];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __51__TabMenuProvider__stopReloadActionForTabDocument___block_invoke;
    v11[3] = &unk_2781D9B88;
    v13 = v5;
    v12 = v3;
    v4 = [v9 actionWithTitle:v7 image:v8 identifier:0 handler:v11];
  }

  return v4;
}

uint64_t __51__TabMenuProvider__stopReloadActionForTabDocument___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 == 1)
  {
    return [v2 stopLoading];
  }

  else
  {
    return [v2 reload];
  }
}

+ (id)_readerActionForTabDocument:(id)a3
{
  v3 = a3;
  if ([v3 isReaderAvailable])
  {
    [v3 isShowingReader];
    v5 = _WBSLocalizedString();
    v6 = MEMORY[0x277D755B8];
    if ([v3 isShowingReader])
    {
      v8 = @"doc.plaintext.fill";
    }

    else
    {
      v8 = @"doc.plaintext";
    }

    v9 = [v6 systemImageNamed:v8];
    v10 = MEMORY[0x277D750C8];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __47__TabMenuProvider__readerActionForTabDocument___block_invoke;
    v12[3] = &unk_2781D93D0;
    v13 = v3;
    v4 = [v10 actionWithTitle:v5 image:v9 identifier:0 handler:v12];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __47__TabMenuProvider__readerActionForTabDocument___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) browserController];
  [v2 setShowingReader:objc_msgSend(*(a1 + 32) animated:"isShowingReader") ^ 1 forTabDocument:{1, *(a1 + 32)}];
}

+ (id)moveMenuForTab:(id)a3 dataSource:(id)a4 showTitle:(BOOL)a5 dismissHandler:(id)a6
{
  v7 = a5;
  v28[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if ([v9 isPrivateBrowsingEnabled] & 1) != 0 || (objc_msgSend(v9, "isPinned"))
  {
    v12 = 0;
  }

  else
  {
    v13 = [v9 url];
    v14 = [v13 safari_userVisibleHostWithoutWWWSubdomain];
    if (![v14 length] || (objc_msgSend(v13, "safari_isHTTPFamilyURL") & 1) == 0)
    {
      v15 = [v9 title];

      v14 = v15;
    }

    v16 = [v9 wbTab];
    v17 = v16;
    if (v16)
    {
      v28[0] = v16;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    }

    else
    {
      v18 = 0;
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __70__TabMenuProvider_moveMenuForTab_dataSource_showTitle_dismissHandler___block_invoke;
    v25[3] = &unk_2781DA550;
    v26 = v10;
    v27 = v9;
    v19 = [v26 tabGroupsMenuElementsWithOptions:23 newTabGroupName:0 hostTitle:v14 descendantCount:0 movingSelectedTabs:v18 actionHandler:v25 dismissHandler:v11];
    v24 = v13;
    if (v7)
    {
      v20 = _WBSLocalizedString();
    }

    else
    {
      v20 = &stru_2827BF158;
    }

    v21 = MEMORY[0x277D75710];
    v22 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.up.forward.app"];
    v12 = [v21 menuWithTitle:v20 image:v22 identifier:0 options:0 children:v19];
  }

  return v12;
}

void __70__TabMenuProvider_moveMenuForTab_dataSource_showTitle_dismissHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = [a2 uuid];
    [v2 moveTab:v3 toTabGroupWithUUID:v4];
  }
}

+ (id)pinTabActionForTab:(id)a3 dataSource:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 canSetPinned] && ((v7 = objc_msgSend(v5, "isPinned"), objc_msgSend(v5, "wbTab"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v6, "isTabPinnable:", v8), v8, (v9 & 1) != 0) || v7))
  {
    if (v7)
    {
      v11 = @"pin.slash";
    }

    else
    {
      v11 = @"pin";
    }

    v12 = _WBSLocalizedString();
    v13 = [MEMORY[0x277D755B8] systemImageNamed:v11];
    v14 = MEMORY[0x277D750C8];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __49__TabMenuProvider_pinTabActionForTab_dataSource___block_invoke;
    v21 = &unk_2781D9420;
    v22 = v6;
    v15 = v5;
    v23 = v15;
    v10 = [v14 actionWithTitle:v12 image:v13 identifier:0 handler:&v18];
    if ([v15 isPinnedTab])
    {
      v16 = @"UnpinTabButton";
    }

    else
    {
      v16 = @"PinTabButton";
    }

    [v10 setAccessibilityIdentifier:v16];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __49__TabMenuProvider_pinTabActionForTab_dataSource___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 isPinned] ^ 1;

  return [v1 setTab:v2 isPinned:v3];
}

+ (id)_pinTabActionForTabGroupTab:(id)a3 inTabGroup:(id)a4 dataSource:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 canSetPinned])
  {
    if ([v7 isPinned])
    {
      v10 = @"pin.slash";
      v11 = @"UnpinTabButton";
LABEL_6:
      v12 = _WBSLocalizedString();
      v13 = [MEMORY[0x277D755B8] systemImageNamed:v10];
      v14 = MEMORY[0x277D750C8];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __69__TabMenuProvider__pinTabActionForTabGroupTab_inTabGroup_dataSource___block_invoke;
      v17[3] = &unk_2781DA5C8;
      v18 = v9;
      v19 = v7;
      v20 = v8;
      v15 = [v14 actionWithTitle:v12 image:v13 identifier:0 handler:v17];
      [v15 setAccessibilityIdentifier:v11];

      goto LABEL_8;
    }

    if ([v8 isTabPinnable:v7])
    {
      v10 = @"pin";
      v11 = @"PinTabButton";
      goto LABEL_6;
    }
  }

  v15 = 0;
LABEL_8:

  return v15;
}

+ (id)_sortMenuForTab:(id)a3 dataSource:(id)a4
{
  v4 = a4;
  v5 = [v4 currentTabs];
  v6 = [v5 count];

  if (v6 >= 2)
  {
    v8 = [MEMORY[0x277CBEB18] array];
    v9 = MEMORY[0x277D750C8];
    v10 = _WBSLocalizedString();
    v11 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.up.arrow.down"];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __46__TabMenuProvider__sortMenuForTab_dataSource___block_invoke;
    v27[3] = &unk_2781D93D0;
    v12 = v4;
    v28 = v12;
    v13 = [v9 actionWithTitle:v10 image:v11 identifier:0 handler:v27];
    [v8 addObject:v13];

    v14 = MEMORY[0x277D750C8];
    v15 = _WBSLocalizedString();
    v16 = [MEMORY[0x277D755B8] systemImageNamed:@"globe"];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __46__TabMenuProvider__sortMenuForTab_dataSource___block_invoke_2;
    v25 = &unk_2781D93D0;
    v26 = v12;
    v17 = [v14 actionWithTitle:v15 image:v16 identifier:0 handler:&v22];
    [v8 addObject:{v17, v22, v23, v24, v25}];

    v18 = MEMORY[0x277D75710];
    v19 = _WBSLocalizedString();
    v20 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.up.arrow.down"];
    v7 = [v18 menuWithTitle:v19 image:v20 identifier:0 options:0 children:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_closeActionForTab:(id)a3 dataSource:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 uuid];
  v8 = [v6 canCloseTabWithUUID:v7];

  if (v8)
  {
    v9 = MEMORY[0x277D750C8];
    v10 = _WBSLocalizedString();
    v11 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark"];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __49__TabMenuProvider__closeActionForTab_dataSource___block_invoke;
    v17 = &unk_2781D9420;
    v18 = v6;
    v19 = v5;
    v12 = [v9 actionWithTitle:v10 image:v11 identifier:0 handler:&v14];

    [v12 setAttributes:{2, v14, v15, v16, v17}];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t __49__TabMenuProvider__closeActionForTab_dataSource___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D499B8] sharedLogger];
  [v2 didCloseTabWithTrigger:2 tabClosingAction:1 numberOfTabsClosed:1 tabCollectionViewType:1];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 closeTab:v4 animated:1];
}

+ (id)closeAllTabsCommandWithDataSource:(id)a3
{
  v3 = [a3 unpinnedTabs];
  v4 = [v3 count];

  if (v4 >= 2)
  {
    v6 = MEMORY[0x277D75370];
    v7 = _WBSLocalizedString();
    v8 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark"];
    v5 = [v6 commandWithTitle:v7 image:v8 action:sel_closeAllTabs_ propertyList:0];

    [v5 setAttributes:2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_closeOtherTabsActionForTab:(id)a3 dataSource:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isPinned])
  {
    v7 = 0;
  }

  else
  {
    v8 = [v6 unpinnedTabs];
    if ([v8 count] >= 2)
    {
      v9 = MEMORY[0x277D750C8];
      v10 = _WBSLocalizedString();
      v11 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark"];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __58__TabMenuProvider__closeOtherTabsActionForTab_dataSource___block_invoke;
      v13[3] = &unk_2781DA5C8;
      v14 = v8;
      v15 = v5;
      v16 = v6;
      v7 = [v9 actionWithTitle:v10 image:v11 identifier:0 handler:v13];

      [v7 setAttributes:2];
      [v7 setAccessibilityIdentifier:@"CloseOtherTabsButton"];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

void __58__TabMenuProvider__closeOtherTabsActionForTab_dataSource___block_invoke(uint64_t a1)
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__TabMenuProvider__closeOtherTabsActionForTab_dataSource___block_invoke_2;
  v11[3] = &unk_2781D5BC8;
  v2 = *(a1 + 32);
  v12 = *(a1 + 40);
  v3 = [v2 safari_filterObjectsUsingBlock:v11];
  v4 = [MEMORY[0x277D499B8] sharedLogger];
  [v4 didCloseTabWithTrigger:2 tabClosingAction:2 numberOfTabsClosed:objc_msgSend(v3 tabCollectionViewType:{"count"), 1}];

  v5 = *(a1 + 48);
  v6 = _WBSLocalizedString();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__TabMenuProvider__closeOtherTabsActionForTab_dataSource___block_invoke_3;
  v8[3] = &unk_2781D4C88;
  v9 = *(a1 + 48);
  v10 = v3;
  v7 = v3;
  [v5 registerUndoWithName:v6 actions:v8];
}

uint64_t __58__TabMenuProvider__closeOtherTabsActionForTab_dataSource___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) uuid];
  v5 = [v3 isEqual:v4];

  return v5 ^ 1u;
}

@end