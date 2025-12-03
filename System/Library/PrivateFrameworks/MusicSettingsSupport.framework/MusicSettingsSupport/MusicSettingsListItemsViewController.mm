@interface MusicSettingsListItemsViewController
- (id)itemsFromParent;
- (id)loadSpecifiersFromPlistName:(id)name target:(id)target bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)listItemSelected:(id)selected;
@end

@implementation MusicSettingsListItemsViewController

- (id)itemsFromParent
{
  v17.receiver = self;
  v17.super_class = MusicSettingsListItemsViewController;
  itemsFromParent = [(PSListItemsController *)&v17 itemsFromParent];
  v4 = *MEMORY[0x277D3FD20];
  properties = [*(&self->super.super.super.super.super.super.isa + v4) properties];
  v6 = [properties objectForKeyedSubscript:@"musicValidDetails"];

  properties2 = [*(&self->super.super.super.super.super.super.isa + v4) properties];
  v8 = [properties2 objectForKeyedSubscript:@"musicShouldSelectAction"];

  v16 = itemsFromParent;
  v9 = [itemsFromParent subarrayWithRange:{1, objc_msgSend(itemsFromParent, "count") - 1}];
  if ([v9 count])
  {
    v10 = 0;
    v11 = *MEMORY[0x277D3FE58];
    do
    {
      v12 = [v9 objectAtIndexedSubscript:v10];
      if (v10 < [v6 count])
      {
        [v12 setProperty:objc_opt_class() forKey:v11];
        v13 = [v6 objectAtIndexedSubscript:v10];
        [v12 setProperty:v13 forKey:@"musicDetail"];
      }

      if (v10 < [v8 count])
      {
        v14 = [v8 objectAtIndexedSubscript:v10];
        if ([v14 length])
        {
          [v12 setProperty:v14 forKey:@"musicShouldSelectAction"];
        }
      }

      ++v10;
    }

    while (v10 < [v9 count]);
  }

  return v16;
}

- (void)listItemSelected:(id)selected
{
  selectedCopy = selected;
  v5 = [(MusicSettingsListItemsViewController *)self specifierAtIndexPath:selectedCopy];
  v6 = [v5 propertyForKey:@"cellObject"];
  if (([v6 isChecked] & 1) == 0)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __57__MusicSettingsListItemsViewController_listItemSelected___block_invoke;
    v15[3] = &unk_2799261E8;
    v16 = selectedCopy;
    selfCopy = self;
    v7 = v5;
    v18 = v7;
    v8 = MEMORY[0x25F856670](v15);
    v9 = [v7 propertyForKey:@"musicShouldSelectAction"];
    v10 = NSSelectorFromString(v9);

    if (v10)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __57__MusicSettingsListItemsViewController_listItemSelected___block_invoke_2;
      v13[3] = &unk_2799262B0;
      v14 = v8;
      v11 = MEMORY[0x25F856670](v13);
      v12 = MusicSettingsPerformSelector2(v10, self, v7, v11);
    }

    else
    {
      v8[2](v8);
    }
  }
}

void __57__MusicSettingsListItemsViewController_listItemSelected___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6.receiver = *(a1 + 40);
  v6.super_class = MusicSettingsListItemsViewController;
  objc_msgSendSuper2(&v6, sel_listItemSelected_, v2);
  v3 = [*(a1 + 48) propertyForKey:@"musicDidSelectAction"];
  v4 = NSSelectorFromString(v3);

  if (v4)
  {
    v5 = MusicSettingsPerformSelector2(v4, *(a1 + 40), *(a1 + 48), 0);
  }
}

uint64_t __57__MusicSettingsListItemsViewController_listItemSelected___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(MusicSettingsListItemsViewController *)self specifierAtIndexPath:pathCopy];
  v16.receiver = self;
  v16.super_class = MusicSettingsListItemsViewController;
  v9 = [(PSListItemsController *)&v16 tableView:viewCopy cellForRowAtIndexPath:pathCopy];

  v10 = [v8 propertyForKey:@"musicDetail"];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  stringsTable = [(MusicSettingsListItemsViewController *)self stringsTable];
  v13 = [v11 localizedStringForKey:v10 value:&stru_286C31160 table:stringsTable];

  detailTextLabel = [v9 detailTextLabel];
  [detailTextLabel setText:v13];

  return v9;
}

- (id)loadSpecifiersFromPlistName:(id)name target:(id)target bundle:(id)bundle
{
  objc_storeStrong(&self->_stringsTable, name);
  nameCopy = name;
  bundleCopy = bundle;
  targetCopy = target;
  v14.receiver = self;
  v14.super_class = MusicSettingsListItemsViewController;
  v12 = [(MusicSettingsListItemsViewController *)&v14 loadSpecifiersFromPlistName:nameCopy target:targetCopy bundle:bundleCopy];

  return v12;
}

@end