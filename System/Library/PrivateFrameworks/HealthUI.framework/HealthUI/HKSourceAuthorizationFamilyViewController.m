@interface HKSourceAuthorizationFamilyViewController
- (HKSourceAuthorizationFamilyViewController)init;
- (HKSourceAuthorizationFamilyViewController)initWithHealthStore:(id)a3 source:(id)a4;
- (HKSourceAuthorizationFamilyViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (HKSourceAuthorizationFamilyViewController)initWithStyle:(int64_t)a3;
- (id)_createFamilyCell;
- (id)_valueStringForAnyCategoryEnabled:(BOOL)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_reloadAuthorizationSettings;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HKSourceAuthorizationFamilyViewController

- (HKSourceAuthorizationFamilyViewController)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKSourceAuthorizationFamilyViewController)initWithStyle:(int64_t)a3
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The -%@ method is not available on %@", v6, objc_opt_class()}];

  return 0;
}

- (HKSourceAuthorizationFamilyViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D940];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HKSourceAuthorizationFamilyViewController)initWithHealthStore:(id)a3 source:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = HKSourceAuthorizationFamilyViewController;
  v9 = [(HKTableViewController *)&v16 initWithUsingInsetStyling:1];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_healthStore, a3);
    v11 = [v8 copy];
    source = v10->_source;
    v10->_source = v11;

    v13 = [v8 name];
    v14 = [(HKSourceAuthorizationFamilyViewController *)v10 navigationItem];
    [v14 setTitle:v13];
  }

  return v10;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HKSourceAuthorizationFamilyViewController;
  [(HKSourceAuthorizationFamilyViewController *)&v4 viewWillAppear:a3];
  [(HKSourceAuthorizationFamilyViewController *)self _reloadAuthorizationSettings];
}

- (void)_reloadAuthorizationSettings
{
  objc_initWeak(&location, self);
  v3 = [(HKSourceAuthorizationFamilyViewController *)self clinicalAuthorizationController];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73__HKSourceAuthorizationFamilyViewController__reloadAuthorizationSettings__block_invoke;
  v4[3] = &unk_1E81B5738;
  objc_copyWeak(&v5, &location);
  [v3 reloadWithCompletion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __73__HKSourceAuthorizationFamilyViewController__reloadAuthorizationSettings__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained familyControllers];

  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * v7) controller];
        [v8 reload];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 tableView];
  [v10 reloadData];
}

- (id)_createFamilyCell
{
  v2 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"_FamilyCellReuseIdentifier"];
  [v2 setAccessoryType:1];

  return v2;
}

- (id)_valueStringForAnyCategoryEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = v4;
  if (v3)
  {
    v6 = @"AUTHORIZATION_ANY_CATEGORY_ON";
  }

  else
  {
    v6 = @"AUTHORIZATION_ALL_CATEGORIES_OFF";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v7;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(HKSourceAuthorizationFamilyViewController *)self familyControllers:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"_FamilyCellReuseIdentifier"];
  if (!v7)
  {
    v7 = [(HKSourceAuthorizationFamilyViewController *)self _createFamilyCell];
  }

  v8 = [(HKSourceAuthorizationFamilyViewController *)self familyControllers];
  v9 = [v6 row];

  v10 = [v8 objectAtIndexedSubscript:v9];

  v11 = [v10 controller];
  v12 = [v11 titleText];
  v13 = [v7 textLabel];
  [v13 setText:v12];

  v14 = -[HKSourceAuthorizationFamilyViewController _valueStringForAnyCategoryEnabled:](self, "_valueStringForAnyCategoryEnabled:", [v11 anyTypeEnabled]);
  v15 = [v7 detailTextLabel];
  [v15 setText:v14];

  v16 = [v11 iconImage];
  v17 = [v7 imageView];
  [v17 setImage:v16];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HKSourceAuthorizationFamilyViewController *)self familyControllers];
  v15 = [v8 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

  v9 = [v15 viewController];
  v10 = [v7 cellForRowAtIndexPath:v6];

  v11 = [v10 textLabel];
  v12 = [v11 text];
  v13 = [v9 navigationItem];
  [v13 setTitle:v12];

  v14 = [(HKSourceAuthorizationFamilyViewController *)self navigationController];
  [v14 hk_showViewController:v9 animated:1];
}

@end