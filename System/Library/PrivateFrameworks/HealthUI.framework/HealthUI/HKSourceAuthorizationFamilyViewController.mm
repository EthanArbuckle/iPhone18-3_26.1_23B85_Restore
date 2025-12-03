@interface HKSourceAuthorizationFamilyViewController
- (HKSourceAuthorizationFamilyViewController)init;
- (HKSourceAuthorizationFamilyViewController)initWithHealthStore:(id)store source:(id)source;
- (HKSourceAuthorizationFamilyViewController)initWithNibName:(id)name bundle:(id)bundle;
- (HKSourceAuthorizationFamilyViewController)initWithStyle:(int64_t)style;
- (id)_createFamilyCell;
- (id)_valueStringForAnyCategoryEnabled:(BOOL)enabled;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_reloadAuthorizationSettings;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
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

- (HKSourceAuthorizationFamilyViewController)initWithStyle:(int64_t)style
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The -%@ method is not available on %@", v6, objc_opt_class()}];

  return 0;
}

- (HKSourceAuthorizationFamilyViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D940];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HKSourceAuthorizationFamilyViewController)initWithHealthStore:(id)store source:(id)source
{
  storeCopy = store;
  sourceCopy = source;
  v16.receiver = self;
  v16.super_class = HKSourceAuthorizationFamilyViewController;
  v9 = [(HKTableViewController *)&v16 initWithUsingInsetStyling:1];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_healthStore, store);
    v11 = [sourceCopy copy];
    source = v10->_source;
    v10->_source = v11;

    name = [sourceCopy name];
    navigationItem = [(HKSourceAuthorizationFamilyViewController *)v10 navigationItem];
    [navigationItem setTitle:name];
  }

  return v10;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = HKSourceAuthorizationFamilyViewController;
  [(HKSourceAuthorizationFamilyViewController *)&v4 viewWillAppear:appear];
  [(HKSourceAuthorizationFamilyViewController *)self _reloadAuthorizationSettings];
}

- (void)_reloadAuthorizationSettings
{
  objc_initWeak(&location, self);
  clinicalAuthorizationController = [(HKSourceAuthorizationFamilyViewController *)self clinicalAuthorizationController];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73__HKSourceAuthorizationFamilyViewController__reloadAuthorizationSettings__block_invoke;
  v4[3] = &unk_1E81B5738;
  objc_copyWeak(&v5, &location);
  [clinicalAuthorizationController reloadWithCompletion:v4];

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

- (id)_valueStringForAnyCategoryEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = v4;
  if (enabledCopy)
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(HKSourceAuthorizationFamilyViewController *)self familyControllers:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  _createFamilyCell = [view dequeueReusableCellWithIdentifier:@"_FamilyCellReuseIdentifier"];
  if (!_createFamilyCell)
  {
    _createFamilyCell = [(HKSourceAuthorizationFamilyViewController *)self _createFamilyCell];
  }

  familyControllers = [(HKSourceAuthorizationFamilyViewController *)self familyControllers];
  v9 = [pathCopy row];

  v10 = [familyControllers objectAtIndexedSubscript:v9];

  controller = [v10 controller];
  titleText = [controller titleText];
  textLabel = [_createFamilyCell textLabel];
  [textLabel setText:titleText];

  v14 = -[HKSourceAuthorizationFamilyViewController _valueStringForAnyCategoryEnabled:](self, "_valueStringForAnyCategoryEnabled:", [controller anyTypeEnabled]);
  detailTextLabel = [_createFamilyCell detailTextLabel];
  [detailTextLabel setText:v14];

  iconImage = [controller iconImage];
  imageView = [_createFamilyCell imageView];
  [imageView setImage:iconImage];

  return _createFamilyCell;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  familyControllers = [(HKSourceAuthorizationFamilyViewController *)self familyControllers];
  v15 = [familyControllers objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  viewController = [v15 viewController];
  v10 = [viewCopy cellForRowAtIndexPath:pathCopy];

  textLabel = [v10 textLabel];
  text = [textLabel text];
  navigationItem = [viewController navigationItem];
  [navigationItem setTitle:text];

  navigationController = [(HKSourceAuthorizationFamilyViewController *)self navigationController];
  [navigationController hk_showViewController:viewController animated:1];
}

@end