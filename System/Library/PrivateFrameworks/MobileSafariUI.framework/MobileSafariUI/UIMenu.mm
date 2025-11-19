@interface UIMenu
@end

@implementation UIMenu

void __130__UIMenu_RecentlyClosedTabs__safari_recentlyClosedTabsMenuForProfile_showProfileTitle_displayInline_openInTabGroupWithUUID_image___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = dispatch_group_create();
  v6 = *(a1 + 32);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __130__UIMenu_RecentlyClosedTabs__safari_recentlyClosedTabsMenuForProfile_showProfileTitle_displayInline_openInTabGroupWithUUID_image___block_invoke_2;
  v15[3] = &unk_2781D5F78;
  v16 = v5;
  v7 = v4;
  v17 = v7;
  v18 = *(a1 + 40);
  v8 = v5;
  [v6 enumerateObjectsUsingBlock:v15];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __130__UIMenu_RecentlyClosedTabs__safari_recentlyClosedTabsMenuForProfile_showProfileTitle_displayInline_openInTabGroupWithUUID_image___block_invoke_4;
  v11[3] = &unk_2781D53E0;
  v12 = *(a1 + 32);
  v13 = v7;
  v14 = v3;
  v9 = v3;
  v10 = v7;
  dispatch_group_notify(v8, MEMORY[0x277D85CD0], v11);
}

void __130__UIMenu_RecentlyClosedTabs__safari_recentlyClosedTabsMenuForProfile_showProfileTitle_displayInline_openInTabGroupWithUUID_image___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  dispatch_group_enter(*(a1 + 32));
  v6 = MEMORY[0x277CBEBC0];
  v7 = [v5 payload];
  v8 = [v7 url];
  v9 = [v6 safari_URLWithDataAsString:v8];

  v10 = objc_alloc(MEMORY[0x277D4A730]);
  v11 = [v10 initWithURL:v9 iconSize:1 fallbackType:{*MEMORY[0x277D4A8E8], *(MEMORY[0x277D4A8E8] + 8)}];
  v12 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __130__UIMenu_RecentlyClosedTabs__safari_recentlyClosedTabsMenuForProfile_showProfileTitle_displayInline_openInTabGroupWithUUID_image___block_invoke_3;
  v16[3] = &unk_2781D5F50;
  v13 = *(a1 + 40);
  v21 = a3;
  v17 = v13;
  v18 = v5;
  v19 = *(a1 + 48);
  v20 = *(a1 + 32);
  v14 = v5;
  v15 = [v12 registerOneTimeRequest:v11 priority:2 responseHandler:v16];
}

void __130__UIMenu_RecentlyClosedTabs__safari_recentlyClosedTabsMenuForProfile_showProfileTitle_displayInline_openInTabGroupWithUUID_image___block_invoke_3(void *a1, void *a2)
{
  v3 = MEMORY[0x277D75710];
  v4 = a1[5];
  v5 = a1[6];
  v6 = [a2 favicon];
  v7 = [v3 safari_menuElementForRecentlyClosedTabItem:v4 tabGroupUUID:v5 favicon:v6];
  v8 = a1[4];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[8]];
  [v8 setObject:v7 forKeyedSubscript:v9];

  v10 = a1[7];

  dispatch_group_leave(v10);
}

void __130__UIMenu_RecentlyClosedTabs__safari_recentlyClosedTabsMenuForProfile_showProfileTitle_displayInline_openInTabGroupWithUUID_image___block_invoke_4(uint64_t a1)
{
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  if ([*(a1 + 32) count])
  {
    v2 = 0;
    do
    {
      v3 = *(a1 + 40);
      v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v2];
      v5 = [v3 objectForKeyedSubscript:v4];
      [v6 safari_addObjectUnlessNil:v5];

      ++v2;
    }

    while (v2 < [*(a1 + 32) count]);
  }

  (*(*(a1 + 48) + 16))();
}

MenuItemModel *__75__UIMenu_RecentlyClosedTabs__safari_recentlyClosedTabsMenuItemsForProfile___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 title];
  v4 = MEMORY[0x277CBEBC0];
  v5 = [v2 url];
  v6 = [v4 safari_URLWithDataAsString:v5];
  v7 = [v6 safari_stringForListDisplay];

  if ([v3 length] || objc_msgSend(v7, "length"))
  {
    v8 = [MenuItemModel alloc];
    if ([v3 length])
    {
      v9 = v3;
    }

    else
    {
      v9 = v7;
    }

    if ([v3 length])
    {
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }

    v11 = [(MenuItemModel *)v8 initWithTitle:v9 subtitle:v10 payload:v2];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end