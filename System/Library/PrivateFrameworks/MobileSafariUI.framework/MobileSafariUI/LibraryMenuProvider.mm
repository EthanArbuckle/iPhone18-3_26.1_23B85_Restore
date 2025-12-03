@interface LibraryMenuProvider
+ (id)closeCommandTitleForSelectedItemCount:(unint64_t)count;
+ (id)contextMenuConfigurationForLibraryItems:(id)items dataSource:(id)source;
+ (id)copyCommandTitleForSelectedItemCount:(unint64_t)count;
+ (void)closeLibraryItems:(id)items dataSource:(id)source;
+ (void)copyLibraryItems:(id)items;
@end

@implementation LibraryMenuProvider

+ (id)contextMenuConfigurationForLibraryItems:(id)items dataSource:(id)source
{
  itemsCopy = items;
  sourceCopy = source;
  if ([itemsCopy count] == 1)
  {
    firstObject = [itemsCopy firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    firstObject2 = [itemsCopy firstObject];
    firstObject3 = firstObject2;
    if (isKindOfClass)
    {
      tabGroup2 = [firstObject2 tab];
      tabGroup = [firstObject3 tabGroup];
      v13 = [sourceCopy contextMenuConfigurationForTab:tabGroup2 inTabGroup:tabGroup];

LABEL_9:
      goto LABEL_10;
    }

    objc_opt_class();
    v14 = objc_opt_isKindOfClass();

    if (v14)
    {
      firstObject3 = [itemsCopy firstObject];
      tabGroup2 = [firstObject3 tabGroup];
      v13 = [sourceCopy contextMenuConfigurationForTabGroup:tabGroup2 variant:0];
      goto LABEL_9;
    }
  }

  else if ([itemsCopy count] >= 2 && objc_msgSend(itemsCopy, "indexOfObjectPassingTest:", &__block_literal_global_34) == 0x7FFFFFFFFFFFFFFFLL)
  {
    firstObject3 = [itemsCopy safari_mapObjectsUsingBlock:&__block_literal_global_12];
    v13 = [sourceCopy contextMenuConfigurationForMultipleTabSelection:firstObject3];
LABEL_10:

    goto LABEL_12;
  }

  v13 = 0;
LABEL_12:

  return v13;
}

+ (void)closeLibraryItems:(id)items dataSource:(id)source
{
  itemsCopy = items;
  sourceCopy = source;
  if ([itemsCopy indexOfObjectPassingTest:&__block_literal_global_34] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [itemsCopy safari_mapObjectsUsingBlock:&__block_literal_global_3];
    [sourceCopy closeSelectedTabs:v6];
  }
}

+ (void)copyLibraryItems:(id)items
{
  itemsCopy = items;
  if ([itemsCopy indexOfObjectPassingTest:&__block_literal_global_34] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [itemsCopy safari_mapObjectsUsingBlock:&__block_literal_global_5];
    generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
    [generalPasteboard safari_copyLinksForTabs:v3];
  }
}

+ (id)closeCommandTitleForSelectedItemCount:(unint64_t)count
{
  if (count == 1)
  {
    v3 = _WBSLocalizedString();
  }

  else
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = _WBSLocalizedString();
    v3 = [v5 localizedStringWithFormat:v6, count];
  }

  return v3;
}

+ (id)copyCommandTitleForSelectedItemCount:(unint64_t)count
{
  if (count == 1)
  {
    _WBSLocalizedString();
    return objc_claimAutoreleasedReturnValue();
  }

  else
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = _WBSLocalizedString();
    v3 = [v5 localizedStringWithFormat:v6, count];
  }

  return v3;
}

@end