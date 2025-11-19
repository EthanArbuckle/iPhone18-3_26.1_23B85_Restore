@interface UIMenu(MobileSafariExtras)
+ (id)safari_menuWithTitle:()MobileSafariExtras image:identifier:options:cachedChildrenProvider:;
+ (id)safari_menuWithTitle:()MobileSafariExtras image:identifier:options:uncachedChildrenProvider:;
+ (id)sf_bookmarkMenuChildrenProvider;
+ (id)sf_tabMenuWithAdditionalChildrenProvider:()MobileSafariExtras;
@end

@implementation UIMenu(MobileSafariExtras)

+ (id)safari_menuWithTitle:()MobileSafariExtras image:identifier:options:uncachedChildrenProvider:
{
  v24[1] = *MEMORY[0x1E69E9840];
  v11 = a7;
  v12 = MEMORY[0x1E69DC928];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __101__UIMenu_MobileSafariExtras__safari_menuWithTitle_image_identifier_options_uncachedChildrenProvider___block_invoke;
  v22[3] = &unk_1E721FE50;
  v23 = v11;
  v13 = v11;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [v12 elementWithUncachedProvider:v22];
  v18 = MEMORY[0x1E69DCC60];
  v24[0] = v17;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v20 = [v18 menuWithTitle:v16 image:v15 identifier:v14 options:a6 children:v19];

  return v20;
}

+ (id)safari_menuWithTitle:()MobileSafariExtras image:identifier:options:cachedChildrenProvider:
{
  v24[1] = *MEMORY[0x1E69E9840];
  v11 = a7;
  v12 = MEMORY[0x1E69DC928];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __99__UIMenu_MobileSafariExtras__safari_menuWithTitle_image_identifier_options_cachedChildrenProvider___block_invoke;
  v22[3] = &unk_1E721FE50;
  v23 = v11;
  v13 = v11;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [v12 elementWithProvider:v22];
  v18 = MEMORY[0x1E69DCC60];
  v24[0] = v17;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v20 = [v18 menuWithTitle:v16 image:v15 identifier:v14 options:a6 children:v19];

  return v20;
}

+ (id)sf_bookmarkMenuChildrenProvider
{
  v14[3] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E69DC8B0];
  v13 = _WBSLocalizedString();
  v1 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"eyeglasses"];
  v2 = [v0 commandWithTitle:v13 image:v1 action:sel_addToReadingList_ propertyList:0];
  v14[0] = v2;
  v3 = MEMORY[0x1E69DC8B0];
  v4 = _WBSLocalizedString();
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"book"];
  v6 = [v3 commandWithTitle:v4 image:v5 action:sel_addToBookmarks_ propertyList:0];
  v14[1] = v6;
  v7 = MEMORY[0x1E69DC8B0];
  v8 = _WBSLocalizedString();
  v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"book"];
  v10 = [v7 commandWithTitle:v8 image:v9 action:sel_addAllTabsToBookmarks_ propertyList:0];
  v14[2] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];

  return v11;
}

+ (id)sf_tabMenuWithAdditionalChildrenProvider:()MobileSafariExtras
{
  v3 = a3;
  v4 = MEMORY[0x1E69DCC60];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__UIMenu_MobileSafariExtras__sf_tabMenuWithAdditionalChildrenProvider___block_invoke;
  v8[3] = &unk_1E721FE98;
  v9 = v3;
  v5 = v3;
  v6 = [v4 safari_menuWithTitle:&stru_1EFF36230 image:0 identifier:0 options:1 cachedChildrenProvider:v8];

  return v6;
}

@end