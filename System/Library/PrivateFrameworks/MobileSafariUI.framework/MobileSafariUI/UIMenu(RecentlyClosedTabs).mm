@interface UIMenu(RecentlyClosedTabs)
+ (id)safari_menuElementForRecentlyClosedTabItem:()RecentlyClosedTabs tabGroupUUID:favicon:;
+ (id)safari_recentlyClosedTabsMenuForProfile:()RecentlyClosedTabs showProfileTitle:displayInline:openInTabGroupWithUUID:image:;
+ (id)safari_recentlyClosedTabsMenuItemsForProfile:()RecentlyClosedTabs;
@end

@implementation UIMenu(RecentlyClosedTabs)

+ (id)safari_recentlyClosedTabsMenuForProfile:()RecentlyClosedTabs showProfileTitle:displayInline:openInTabGroupWithUUID:image:
{
  v31[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a6;
  v13 = a7;
  v14 = _WBSLocalizedString();
  if (a4)
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = _WBSLocalizedString();
    title = [v11 title];
    v18 = [v15 stringWithFormat:v16, title];

    v14 = v18;
  }

  if (a5)
  {
    v19 = 9;
  }

  else
  {
    v19 = 8;
  }

  v20 = [MEMORY[0x277D75710] safari_recentlyClosedTabsMenuItemsForProfile:v11];
  v21 = [v20 count];
  v22 = MEMORY[0x277D75710];
  if (v21)
  {
    v23 = MEMORY[0x277D753F0];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __130__UIMenu_RecentlyClosedTabs__safari_recentlyClosedTabsMenuForProfile_showProfileTitle_displayInline_openInTabGroupWithUUID_image___block_invoke;
    v28[3] = &unk_2781D5FA0;
    v29 = v20;
    v30 = v12;
    v24 = [v23 elementWithUncachedProvider:v28];
    v31[0] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    v26 = [v22 menuWithTitle:v14 image:v13 identifier:0 options:v19 children:v25];
  }

  else
  {
    v26 = [MEMORY[0x277D75710] menuWithTitle:v14 image:v13 identifier:0 options:v19 children:MEMORY[0x277CBEBF8]];
  }

  return v26;
}

+ (id)safari_menuElementForRecentlyClosedTabItem:()RecentlyClosedTabs tabGroupUUID:favicon:
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  payload = [v9 payload];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  uUIDString = [payload UUIDString];
  [dictionary setObject:uUIDString forKeyedSubscript:*MEMORY[0x277D28FB0]];

  uUIDString2 = [v8 UUIDString];

  [dictionary setObject:uUIDString2 forKeyedSubscript:*MEMORY[0x277D28FA8]];
  v14 = MEMORY[0x277D75370];
  title = [v9 title];
  v16 = [v14 commandWithTitle:title image:v7 action:sel_openRecentlyClosedTab_ propertyList:dictionary];

  subtitle = [v9 subtitle];

  [v16 setDiscoverabilityTitle:subtitle];
  [v16 setAccessibilityIdentifier:@"RecentlyClosedTabsMenuItem"];

  return v16;
}

+ (id)safari_recentlyClosedTabsMenuItemsForProfile:()RecentlyClosedTabs
{
  v3 = MEMORY[0x277D28F00];
  v4 = a3;
  sharedBrowserSavedState = [v3 sharedBrowserSavedState];
  identifier = [v4 identifier];

  v7 = [sharedBrowserSavedState recentlyClosedTabsForProfileWithIdentifier:identifier];

  v8 = [v7 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_6];

  return v8;
}

@end