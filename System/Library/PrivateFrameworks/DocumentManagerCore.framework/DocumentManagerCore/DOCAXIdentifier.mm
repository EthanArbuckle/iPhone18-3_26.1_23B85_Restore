@interface DOCAXIdentifier
+ (NSString)browsingModeTabBar;
+ (NSString)browsingRoot;
+ (NSString)groupByMenuButton;
+ (NSString)inlineRenameField;
+ (NSString)itemInfoNavigationRoot;
+ (NSString)sizeSettingMenuButton;
+ (NSString)sizeSettingSlider;
+ (NSString)sortByMenuButton;
+ (NSString)tagEditorContainer;
+ (NSString)viewOptionsRoot;
+ (id)browsingRootIdentifierForSourceIdentifier:(id)a3;
+ (id)groupByMenuItemForGrouping:(id)a3;
+ (id)groupBySectionToggleIdentifier:(id)a3 sectionIdentifier:(id)a4 expanded:(BOOL)a5;
+ (id)itemCollectionMenuButtonShowing:(id)a3;
+ (id)searchMenuButtonShowing:(id)a3;
+ (id)sizeSettingMenuItemForSize:(id)a3;
+ (id)sortByHeaderButtonForSortIdentifier:(id)a3 ascending:(BOOL)a4 active:(BOOL)a5;
+ (id)sortByMenuButtonForSortIdentifier:(id)a3 ascending:(BOOL)a4 active:(BOOL)a5;
+ (id)sortByMenuItemForSortMode:(id)a3;
@end

@implementation DOCAXIdentifier

+ (NSString)browsingModeTabBar
{
  v2 = [a1 idBase];
  v3 = composedID(v2, @"browsingModeTabBar");

  return v3;
}

+ (NSString)browsingRoot
{
  v2 = [a1 idBase];
  v3 = composedID(v2, @"browsingRoot");

  return v3;
}

+ (id)browsingRootIdentifierForSourceIdentifier:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEB18];
  v6 = [a1 browsingRoot];
  v7 = [v5 arrayWithObject:v6];

  if ([v4 length])
  {
    [v7 addObject:v4];
  }

  v8 = [v7 componentsJoinedByString:@" "];

  return v8;
}

+ (id)searchMenuButtonShowing:(id)a3
{
  v4 = a3;
  v5 = [a1 idBase];
  v6 = composedID(v5, @"searchMenuButton");

  if (v4)
  {
    v7 = composedID(v6, v4);

    v6 = v7;
  }

  return v6;
}

+ (id)itemCollectionMenuButtonShowing:(id)a3
{
  v4 = a3;
  v5 = [a1 idBase];
  v6 = composedID(v5, @"itemCollectionMenuButton");
  v7 = composedID(v6, v4);

  return v7;
}

+ (id)sortByHeaderButtonForSortIdentifier:(id)a3 ascending:(BOOL)a4 active:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = [MEMORY[0x277CBEB18] arrayWithObject:a3];
  v9 = v8;
  if (v5)
  {
    if (v6)
    {
      v10 = @"ascending";
    }

    else
    {
      v10 = @"descending";
    }

    [v8 addObject:v10];
  }

  v11 = [a1 idBase];
  v12 = composedID(v11, @"sortHeaderButton");
  v13 = [v9 componentsJoinedByString:@"."];
  v14 = composedID(v12, v13);

  return v14;
}

+ (id)sortByMenuButtonForSortIdentifier:(id)a3 ascending:(BOOL)a4 active:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = [MEMORY[0x277CBEB18] arrayWithObject:a3];
  v9 = v8;
  if (v5)
  {
    if (v6)
    {
      v10 = @"ascending";
    }

    else
    {
      v10 = @"descending";
    }

    [v8 addObject:v10];
  }

  v11 = [a1 idBase];
  v12 = composedID(v11, @"sortMenuButton");
  v13 = [v9 componentsJoinedByString:@"."];
  v14 = composedID(v12, v13);

  return v14;
}

+ (NSString)sizeSettingMenuButton
{
  v2 = [a1 sizeSettingPrefix];
  v3 = composedID(@"DOCMenuPresentingButton", v2);

  return v3;
}

+ (NSString)sizeSettingSlider
{
  v2 = [a1 sizeSettingPrefix];
  v3 = composedID(@"DOCSizeSettingSlider", v2);

  return v3;
}

+ (id)sizeSettingMenuItemForSize:(id)a3
{
  v4 = a3;
  v5 = [a1 idBase];
  v6 = composedID(v5, @"sizeSettingMenuItemButton");
  v7 = composedID(v6, v4);

  return v7;
}

+ (NSString)groupByMenuButton
{
  v2 = [a1 groupByPrefix];
  v3 = composedID(@"DOCMenuPresentingButton", v2);

  return v3;
}

+ (id)groupByMenuItemForGrouping:(id)a3
{
  v4 = a3;
  v5 = [a1 idBase];
  v6 = composedID(v5, @"groupMenuItemButton");
  v7 = composedID(v6, v4);

  return v7;
}

+ (id)groupBySectionToggleIdentifier:(id)a3 sectionIdentifier:(id)a4 expanded:(BOOL)a5
{
  v5 = a5;
  v7 = [MEMORY[0x277CBEB18] arrayWithObjects:{a3, a4, 0}];
  v8 = v7;
  if (v5)
  {
    v9 = @"expanded";
  }

  else
  {
    v9 = @"collapsed";
  }

  [v7 addObject:v9];
  v10 = [a1 idBase];
  v11 = composedID(v10, @"groupByExpansionToggle");
  v12 = [v8 componentsJoinedByString:@"."];
  v13 = composedID(v11, v12);

  return v13;
}

+ (NSString)sortByMenuButton
{
  v2 = [a1 sortByPrefix];
  v3 = composedID(@"DOCMenuPresentingButton", v2);

  return v3;
}

+ (id)sortByMenuItemForSortMode:(id)a3
{
  v4 = a3;
  v5 = [a1 idBase];
  v6 = composedID(v5, @"sortMenuItemButton");
  v7 = composedID(v6, v4);

  return v7;
}

+ (NSString)inlineRenameField
{
  v2 = [a1 idBase];
  v3 = composedID(v2, @"inlineRenameField");

  return v3;
}

+ (NSString)itemInfoNavigationRoot
{
  v2 = [a1 idBase];
  v3 = composedID(v2, @"itemInfoNavigationRoot");

  return v3;
}

+ (NSString)tagEditorContainer
{
  v2 = [a1 idBase];
  v3 = composedID(v2, @"tagEditorContainer");

  return v3;
}

+ (NSString)viewOptionsRoot
{
  v2 = [a1 idBase];
  v3 = composedID(v2, @"viewOptionsRoot");

  return v3;
}

@end