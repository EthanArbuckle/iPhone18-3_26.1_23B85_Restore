@interface MSDContactsViewController
- (MSDContactsViewController)init;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)viewDidLoad;
@end

@implementation MSDContactsViewController

- (MSDContactsViewController)init
{
  v22 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = MSDContactsViewController;
  v2 = [(MSDContactsViewController *)&v20 init];
  if (v2)
  {
    v3 = +[MSDStoreContactsModel sharedInstance];
    [(MSDContactsViewController *)v2 setContactsModel:v3];

    v4 = objc_opt_new();
    [(MSDContactsViewController *)v2 setRegions:v4];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [(MSDContactsViewController *)v2 contactsModel];
    v6 = [v5 regionToCountryCode];

    v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * v10);
          v12 = [(MSDContactsViewController *)v2 regions];
          [v12 addObject:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v8);
    }

    v13 = [MSDSetupUILocalization localizedStringForKey:@"CONTACT_NUMBER_HEADER"];
    [(MSDContactsViewController *)v2 setTitle:v13];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)viewDidLoad
{
  v29[4] = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = MSDContactsViewController;
  [(MSDContactsViewController *)&v28 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v4 setDataSource:self];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(MSDContactsViewController *)self view];
  [v5 addSubview:v4];

  v26 = [v4 topAnchor];
  v27 = [(MSDContactsViewController *)self view];
  v25 = [v27 safeAreaLayoutGuide];
  v24 = [v25 topAnchor];
  v23 = [v26 constraintEqualToAnchor:v24];
  v29[0] = v23;
  v21 = [v4 bottomAnchor];
  v22 = [(MSDContactsViewController *)self view];
  v20 = [v22 safeAreaLayoutGuide];
  v19 = [v20 bottomAnchor];
  v18 = [v21 constraintEqualToAnchor:v19];
  v29[1] = v18;
  v16 = [v4 leftAnchor];
  v6 = [(MSDContactsViewController *)self view];
  v7 = [v6 safeAreaLayoutGuide];
  v8 = [v7 leftAnchor];
  v9 = [v16 constraintEqualToAnchor:v8];
  v29[2] = v9;
  v10 = [v4 rightAnchor];
  v11 = [(MSDContactsViewController *)self view];
  v12 = [v11 safeAreaLayoutGuide];
  v13 = [v12 rightAnchor];
  v14 = [v10 constraintEqualToAnchor:v13];
  v29[3] = v14;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v17];
  [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"ContactsViewTableCell"];

  v15 = *MEMORY[0x277D85DE8];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(MSDContactsViewController *)self regions];
  v4 = [v3 count];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(MSDContactsViewController *)self regions];
  v7 = [v6 count];

  if (v7 <= a4)
  {
    return 0;
  }

  v8 = [(MSDContactsViewController *)self regions];
  v9 = [v8 objectAtIndex:a4];

  v10 = [(MSDContactsViewController *)self contactsModel];
  v11 = [v10 regionToCountryCode];
  v12 = [v11 objectForKey:v9];

  v13 = [v12 count];
  return v13;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 section];
  v7 = [(MSDContactsViewController *)self regions];
  v8 = [v7 count];

  if (v6 >= v8)
  {
    v20 = 0;
  }

  else
  {
    v9 = [(MSDContactsViewController *)self regions];
    v10 = [v9 objectAtIndex:{objc_msgSend(v5, "section")}];

    v11 = [(MSDContactsViewController *)self contactsModel];
    v12 = [v11 regionToCountryCode];
    v13 = [v12 objectForKey:v10];

    v14 = [v5 row];
    if (v14 >= [v13 count])
    {
      v20 = 0;
    }

    else
    {
      v15 = [v13 objectAtIndex:{objc_msgSend(v5, "row")}];
      v16 = [(MSDContactsViewController *)self contactsModel];
      v17 = [v16 contactNumberForCountryCode:v15];

      v18 = [MEMORY[0x277CBEAF8] currentLocale];
      v19 = [v18 localizedStringForCountryCode:v15];

      v20 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"ContactsViewTableCell"];
      v21 = [v20 defaultContentConfiguration];
      [v21 setText:v19];
      [v21 setSecondaryText:v17];
      [v20 setContentConfiguration:v21];
    }
  }

  return v20;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = [(MSDContactsViewController *)self regions];
  v7 = [v6 count];

  if (v7 <= a4)
  {
    v9 = 0;
  }

  else
  {
    v8 = [(MSDContactsViewController *)self regions];
    v9 = [v8 objectAtIndex:a4];
  }

  return v9;
}

@end