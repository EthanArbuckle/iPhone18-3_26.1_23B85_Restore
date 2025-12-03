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
+ (id)browsingRootIdentifierForSourceIdentifier:(id)identifier;
+ (id)groupByMenuItemForGrouping:(id)grouping;
+ (id)groupBySectionToggleIdentifier:(id)identifier sectionIdentifier:(id)sectionIdentifier expanded:(BOOL)expanded;
+ (id)itemCollectionMenuButtonShowing:(id)showing;
+ (id)searchMenuButtonShowing:(id)showing;
+ (id)sizeSettingMenuItemForSize:(id)size;
+ (id)sortByHeaderButtonForSortIdentifier:(id)identifier ascending:(BOOL)ascending active:(BOOL)active;
+ (id)sortByMenuButtonForSortIdentifier:(id)identifier ascending:(BOOL)ascending active:(BOOL)active;
+ (id)sortByMenuItemForSortMode:(id)mode;
@end

@implementation DOCAXIdentifier

+ (NSString)browsingModeTabBar
{
  idBase = [self idBase];
  v3 = composedID(idBase, @"browsingModeTabBar");

  return v3;
}

+ (NSString)browsingRoot
{
  idBase = [self idBase];
  v3 = composedID(idBase, @"browsingRoot");

  return v3;
}

+ (id)browsingRootIdentifierForSourceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = MEMORY[0x277CBEB18];
  browsingRoot = [self browsingRoot];
  v7 = [v5 arrayWithObject:browsingRoot];

  if ([identifierCopy length])
  {
    [v7 addObject:identifierCopy];
  }

  v8 = [v7 componentsJoinedByString:@" "];

  return v8;
}

+ (id)searchMenuButtonShowing:(id)showing
{
  showingCopy = showing;
  idBase = [self idBase];
  v6 = composedID(idBase, @"searchMenuButton");

  if (showingCopy)
  {
    v7 = composedID(v6, showingCopy);

    v6 = v7;
  }

  return v6;
}

+ (id)itemCollectionMenuButtonShowing:(id)showing
{
  showingCopy = showing;
  idBase = [self idBase];
  v6 = composedID(idBase, @"itemCollectionMenuButton");
  v7 = composedID(v6, showingCopy);

  return v7;
}

+ (id)sortByHeaderButtonForSortIdentifier:(id)identifier ascending:(BOOL)ascending active:(BOOL)active
{
  activeCopy = active;
  ascendingCopy = ascending;
  v8 = [MEMORY[0x277CBEB18] arrayWithObject:identifier];
  v9 = v8;
  if (activeCopy)
  {
    if (ascendingCopy)
    {
      v10 = @"ascending";
    }

    else
    {
      v10 = @"descending";
    }

    [v8 addObject:v10];
  }

  idBase = [self idBase];
  v12 = composedID(idBase, @"sortHeaderButton");
  v13 = [v9 componentsJoinedByString:@"."];
  v14 = composedID(v12, v13);

  return v14;
}

+ (id)sortByMenuButtonForSortIdentifier:(id)identifier ascending:(BOOL)ascending active:(BOOL)active
{
  activeCopy = active;
  ascendingCopy = ascending;
  v8 = [MEMORY[0x277CBEB18] arrayWithObject:identifier];
  v9 = v8;
  if (activeCopy)
  {
    if (ascendingCopy)
    {
      v10 = @"ascending";
    }

    else
    {
      v10 = @"descending";
    }

    [v8 addObject:v10];
  }

  idBase = [self idBase];
  v12 = composedID(idBase, @"sortMenuButton");
  v13 = [v9 componentsJoinedByString:@"."];
  v14 = composedID(v12, v13);

  return v14;
}

+ (NSString)sizeSettingMenuButton
{
  sizeSettingPrefix = [self sizeSettingPrefix];
  v3 = composedID(@"DOCMenuPresentingButton", sizeSettingPrefix);

  return v3;
}

+ (NSString)sizeSettingSlider
{
  sizeSettingPrefix = [self sizeSettingPrefix];
  v3 = composedID(@"DOCSizeSettingSlider", sizeSettingPrefix);

  return v3;
}

+ (id)sizeSettingMenuItemForSize:(id)size
{
  sizeCopy = size;
  idBase = [self idBase];
  v6 = composedID(idBase, @"sizeSettingMenuItemButton");
  v7 = composedID(v6, sizeCopy);

  return v7;
}

+ (NSString)groupByMenuButton
{
  groupByPrefix = [self groupByPrefix];
  v3 = composedID(@"DOCMenuPresentingButton", groupByPrefix);

  return v3;
}

+ (id)groupByMenuItemForGrouping:(id)grouping
{
  groupingCopy = grouping;
  idBase = [self idBase];
  v6 = composedID(idBase, @"groupMenuItemButton");
  v7 = composedID(v6, groupingCopy);

  return v7;
}

+ (id)groupBySectionToggleIdentifier:(id)identifier sectionIdentifier:(id)sectionIdentifier expanded:(BOOL)expanded
{
  expandedCopy = expanded;
  v7 = [MEMORY[0x277CBEB18] arrayWithObjects:{identifier, sectionIdentifier, 0}];
  v8 = v7;
  if (expandedCopy)
  {
    v9 = @"expanded";
  }

  else
  {
    v9 = @"collapsed";
  }

  [v7 addObject:v9];
  idBase = [self idBase];
  v11 = composedID(idBase, @"groupByExpansionToggle");
  v12 = [v8 componentsJoinedByString:@"."];
  v13 = composedID(v11, v12);

  return v13;
}

+ (NSString)sortByMenuButton
{
  sortByPrefix = [self sortByPrefix];
  v3 = composedID(@"DOCMenuPresentingButton", sortByPrefix);

  return v3;
}

+ (id)sortByMenuItemForSortMode:(id)mode
{
  modeCopy = mode;
  idBase = [self idBase];
  v6 = composedID(idBase, @"sortMenuItemButton");
  v7 = composedID(v6, modeCopy);

  return v7;
}

+ (NSString)inlineRenameField
{
  idBase = [self idBase];
  v3 = composedID(idBase, @"inlineRenameField");

  return v3;
}

+ (NSString)itemInfoNavigationRoot
{
  idBase = [self idBase];
  v3 = composedID(idBase, @"itemInfoNavigationRoot");

  return v3;
}

+ (NSString)tagEditorContainer
{
  idBase = [self idBase];
  v3 = composedID(idBase, @"tagEditorContainer");

  return v3;
}

+ (NSString)viewOptionsRoot
{
  idBase = [self idBase];
  v3 = composedID(idBase, @"viewOptionsRoot");

  return v3;
}

@end