@interface MusicSettingsListItemsViewController
- (id)itemsFromParent;
- (id)loadSpecifiersFromPlistName:(id)a3 target:(id)a4 bundle:(id)a5;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)listItemSelected:(id)a3;
@end

@implementation MusicSettingsListItemsViewController

- (id)itemsFromParent
{
  v17.receiver = self;
  v17.super_class = MusicSettingsListItemsViewController;
  v3 = [(PSListItemsController *)&v17 itemsFromParent];
  v4 = *MEMORY[0x277D3FD20];
  v5 = [*(&self->super.super.super.super.super.super.isa + v4) properties];
  v6 = [v5 objectForKeyedSubscript:@"musicValidDetails"];

  v7 = [*(&self->super.super.super.super.super.super.isa + v4) properties];
  v8 = [v7 objectForKeyedSubscript:@"musicShouldSelectAction"];

  v16 = v3;
  v9 = [v3 subarrayWithRange:{1, objc_msgSend(v3, "count") - 1}];
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

- (void)listItemSelected:(id)a3
{
  v4 = a3;
  v5 = [(MusicSettingsListItemsViewController *)self specifierAtIndexPath:v4];
  v6 = [v5 propertyForKey:@"cellObject"];
  if (([v6 isChecked] & 1) == 0)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __57__MusicSettingsListItemsViewController_listItemSelected___block_invoke;
    v15[3] = &unk_2799261E8;
    v16 = v4;
    v17 = self;
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MusicSettingsListItemsViewController *)self specifierAtIndexPath:v6];
  v16.receiver = self;
  v16.super_class = MusicSettingsListItemsViewController;
  v9 = [(PSListItemsController *)&v16 tableView:v7 cellForRowAtIndexPath:v6];

  v10 = [v8 propertyForKey:@"musicDetail"];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [(MusicSettingsListItemsViewController *)self stringsTable];
  v13 = [v11 localizedStringForKey:v10 value:&stru_286C31160 table:v12];

  v14 = [v9 detailTextLabel];
  [v14 setText:v13];

  return v9;
}

- (id)loadSpecifiersFromPlistName:(id)a3 target:(id)a4 bundle:(id)a5
{
  objc_storeStrong(&self->_stringsTable, a3);
  v9 = a3;
  v10 = a5;
  v11 = a4;
  v14.receiver = self;
  v14.super_class = MusicSettingsListItemsViewController;
  v12 = [(MusicSettingsListItemsViewController *)&v14 loadSpecifiersFromPlistName:v9 target:v11 bundle:v10];

  return v12;
}

@end