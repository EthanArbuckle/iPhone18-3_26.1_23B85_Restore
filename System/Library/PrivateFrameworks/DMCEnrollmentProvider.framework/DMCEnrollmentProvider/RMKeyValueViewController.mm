@interface RMKeyValueViewController
- (id)_keyValueDetailValue:(id)value;
- (id)_specifiersForKeyValues;
- (id)specifiers;
- (void)_processUserInfoDictionary;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation RMKeyValueViewController

- (void)viewDidLoad
{
  [(RMKeyValueViewController *)self _processUserInfoDictionary];
  v6.receiver = self;
  v6.super_class = RMKeyValueViewController;
  [(RMKeyValueViewController *)&v6 viewDidLoad];
  navigationItem = [(RMKeyValueViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:0];

  navigationItem2 = [(RMKeyValueViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:0];

  navigationItem3 = [(RMKeyValueViewController *)self navigationItem];
  DMCSendNavUIUpdatedNotification(navigationItem3);
}

- (void)_processUserInfoDictionary
{
  userInfo = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"RMConfigurationViewModelKey"];
  [(RMKeyValueViewController *)self setViewModel:v3];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = RMKeyValueViewController;
  [(RMKeyValueViewController *)&v4 viewWillAppear:appear];
  if (([(RMKeyValueViewController *)self isMovingToParentViewController]& 1) == 0)
  {
    [(RMKeyValueViewController *)self reloadSpecifiers];
  }
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    _specifiersForKeyValues = [(RMKeyValueViewController *)self _specifiersForKeyValues];
    v6 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = _specifiersForKeyValues;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)_specifiersForKeyValues
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  viewModel = [(RMKeyValueViewController *)self viewModel];
  detailViewModels = [viewModel detailViewModels];
  v6 = [v3 initWithCapacity:{objc_msgSend(detailViewModels, "count")}];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  viewModel2 = [(RMKeyValueViewController *)self viewModel];
  detailViewModels2 = [viewModel2 detailViewModels];

  obj = detailViewModels2;
  v9 = [detailViewModels2 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = MEMORY[0x277D3FAD8];
        title = [v13 title];
        v16 = [v14 preferenceSpecifierNamed:title target:self set:0 get:sel__keyValueDetailValue_ detail:0 cell:4 edit:0];

        [v16 setUserInfo:v13];
        [v6 addObject:v16];
      }

      v10 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  return v6;
}

- (id)_keyValueDetailValue:(id)value
{
  userInfo = [value userInfo];
  value = [userInfo value];

  return value;
}

@end