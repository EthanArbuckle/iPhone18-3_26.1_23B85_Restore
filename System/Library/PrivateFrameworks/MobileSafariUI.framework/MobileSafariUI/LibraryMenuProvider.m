@interface LibraryMenuProvider
+ (id)closeCommandTitleForSelectedItemCount:(unint64_t)a3;
+ (id)contextMenuConfigurationForLibraryItems:(id)a3 dataSource:(id)a4;
+ (id)copyCommandTitleForSelectedItemCount:(unint64_t)a3;
+ (void)closeLibraryItems:(id)a3 dataSource:(id)a4;
+ (void)copyLibraryItems:(id)a3;
@end

@implementation LibraryMenuProvider

+ (id)contextMenuConfigurationForLibraryItems:(id)a3 dataSource:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count] == 1)
  {
    v7 = [v5 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v9 = [v5 firstObject];
    v10 = v9;
    if (isKindOfClass)
    {
      v11 = [v9 tab];
      v12 = [v10 tabGroup];
      v13 = [v6 contextMenuConfigurationForTab:v11 inTabGroup:v12];

LABEL_9:
      goto LABEL_10;
    }

    objc_opt_class();
    v14 = objc_opt_isKindOfClass();

    if (v14)
    {
      v10 = [v5 firstObject];
      v11 = [v10 tabGroup];
      v13 = [v6 contextMenuConfigurationForTabGroup:v11 variant:0];
      goto LABEL_9;
    }
  }

  else if ([v5 count] >= 2 && objc_msgSend(v5, "indexOfObjectPassingTest:", &__block_literal_global_34) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [v5 safari_mapObjectsUsingBlock:&__block_literal_global_12];
    v13 = [v6 contextMenuConfigurationForMultipleTabSelection:v10];
LABEL_10:

    goto LABEL_12;
  }

  v13 = 0;
LABEL_12:

  return v13;
}

+ (void)closeLibraryItems:(id)a3 dataSource:(id)a4
{
  v7 = a3;
  v5 = a4;
  if ([v7 indexOfObjectPassingTest:&__block_literal_global_34] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [v7 safari_mapObjectsUsingBlock:&__block_literal_global_3];
    [v5 closeSelectedTabs:v6];
  }
}

+ (void)copyLibraryItems:(id)a3
{
  v5 = a3;
  if ([v5 indexOfObjectPassingTest:&__block_literal_global_34] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [v5 safari_mapObjectsUsingBlock:&__block_literal_global_5];
    v4 = [MEMORY[0x277D75810] generalPasteboard];
    [v4 safari_copyLinksForTabs:v3];
  }
}

+ (id)closeCommandTitleForSelectedItemCount:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = _WBSLocalizedString();
  }

  else
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = _WBSLocalizedString();
    v3 = [v5 localizedStringWithFormat:v6, a3];
  }

  return v3;
}

+ (id)copyCommandTitleForSelectedItemCount:(unint64_t)a3
{
  if (a3 == 1)
  {
    _WBSLocalizedString();
    return objc_claimAutoreleasedReturnValue();
  }

  else
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = _WBSLocalizedString();
    v3 = [v5 localizedStringWithFormat:v6, a3];
  }

  return v3;
}

@end