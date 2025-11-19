@interface UIMenu
@end

@implementation UIMenu

void __101__UIMenu_MobileSafariExtras__safari_menuWithTitle_image_identifier_options_uncachedChildrenProvider___block_invoke(uint64_t a1, void (**a2)(void, void))
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v5 = a2;
  v6 = v4(v3);
  (a2)[2](v5, v6);
}

void __99__UIMenu_MobileSafariExtras__safari_menuWithTitle_image_identifier_options_cachedChildrenProvider___block_invoke(uint64_t a1, void (**a2)(void, void))
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v5 = a2;
  v6 = v4(v3);
  (a2)[2](v5, v6);
}

id __71__UIMenu_MobileSafariExtras__sf_tabMenuWithAdditionalChildrenProvider___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E69DC8B0];
  v2 = _WBSLocalizedString();
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark"];
  v4 = [v1 commandWithTitle:v2 image:v3 action:sel_closeAllTabsMatchingSearch_ propertyList:0];

  [v4 setAttributes:2];
  v5 = MEMORY[0x1E69DC8B0];
  v6 = _WBSLocalizedString();
  v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark"];
  v8 = [v5 commandWithTitle:v6 image:v7 action:sel_closeAllTabs_ propertyList:0];

  [v8 setAttributes:2];
  v9 = MEMORY[0x1E69DC8B0];
  v10 = _WBSLocalizedString();
  v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark"];
  v12 = [v9 commandWithTitle:v10 image:v11 action:sel_closeActiveTab_ propertyList:0];

  [v12 setAttributes:2];
  v13 = [MEMORY[0x1E695DF70] array];
  v14 = MEMORY[0x1E69DC8B0];
  v15 = _WBSLocalizedString();
  v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus.square.on.square"];
  v17 = [v14 commandWithTitle:v15 image:v16 action:sel_openNewNormalTab_ propertyList:0];
  [v13 addObject:v17];

  v18 = MEMORY[0x1E69DC8B0];
  v19 = _WBSLocalizedString();
  v20 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus.square.fill.on.square.fill"];
  v21 = [v18 commandWithTitle:v19 image:v20 action:sel_openNewPrivateTab_ propertyList:0];
  [v13 addObject:v21];

  v22 = MEMORY[0x1E69DC8B0];
  v23 = _WBSLocalizedString();
  v24 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus.square"];
  v25 = [v22 commandWithTitle:v23 image:v24 action:sel_openNewWindow_ propertyList:0];
  [v13 addObject:v25];

  v26 = MEMORY[0x1E69DC8B0];
  v27 = _WBSLocalizedString();
  v28 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus.square.fill"];
  v29 = [v26 commandWithTitle:v27 image:v28 action:sel_openNewPrivateWindow_ propertyList:0];
  [v13 addObject:v29];

  v30 = MEMORY[0x1E69DC8B0];
  v31 = _WBSLocalizedString();
  v32 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.merge"];
  v33 = [v30 commandWithTitle:v31 image:v32 action:sel_mergeAllWindows_ propertyList:0];
  [v13 addObject:v33];

  v34 = *(a1 + 32);
  if (v34)
  {
    v35 = (*(v34 + 16))();
    if ([v35 count])
    {
      [v13 addObjectsFromArray:v35];
    }
  }

  [v13 addObject:v12];
  [v13 addObject:v8];
  [v13 addObject:v4];

  return v13;
}

@end