@interface DSSharingAdditionalConsiderationsController
- (DSNavigationDelegate)delegate;
- (DSSharingAdditionalConsiderationsController)init;
- (void)back;
- (void)viewDidLoad;
@end

@implementation DSSharingAdditionalConsiderationsController

- (DSSharingAdditionalConsiderationsController)init
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D755D0];
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  v29 = [v2 configurationWithHierarchicalColor:systemBlueColor];

  v4 = objc_alloc_init(MEMORY[0x277D054C8]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  sources = [v4 sources];
  v7 = [sources countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    do
    {
      v10 = 0;
      do
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(sources);
        }

        v11 = MEMORY[0x277D054C0];
        name = [*(*(&v32 + 1) + 8 * v10) name];
        v13 = [v11 sourceDescriptorForSource:name];
        localizedAppName = [v13 localizedAppName];

        [v5 addObject:localizedAppName];
        ++v10;
      }

      while (v8 != v10);
      v8 = [sources countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v8);
  }

  v15 = MEMORY[0x277CCAAF0];
  allObjects = [v5 allObjects];
  v17 = [v15 localizedStringByJoiningStrings:allObjects];

  v18 = MEMORY[0x277CCACA8];
  v19 = DSUILocStringForKey(@"ADDITIONAL_CONSIDERATIONS_DETAIL");
  v20 = [v18 localizedStringWithFormat:v19, v17];

  v21 = +[DSFeatureFlags isNaturalUIEnabled];
  v22 = DSUILocStringForKey(@"ADDITIONAL_CONSIDERATIONS");
  if (v21)
  {
    v31.receiver = self;
    v31.super_class = DSSharingAdditionalConsiderationsController;
    v23 = [(DSSharingAdditionalConsiderationsController *)&v31 initWithTitle:v22 detailText:v20 symbolName:@"checklist"];
    v24 = v29;
  }

  else
  {
    v24 = v29;
    v25 = [MEMORY[0x277D755B8] systemImageNamed:@"checklist" withConfiguration:v29];
    v30.receiver = self;
    v30.super_class = DSSharingAdditionalConsiderationsController;
    v23 = [(DSSharingAdditionalConsiderationsController *)&v30 initWithTitle:v22 detailText:v20 icon:v25];
  }

  v26 = *MEMORY[0x277D85DE8];
  return v23;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = DSSharingAdditionalConsiderationsController;
  [(DSOBWelcomeController *)&v8 viewDidLoad];
  v3 = DSUILocStringForKey(@"CONTINUE");
  delegate = [(DSSharingAdditionalConsiderationsController *)self delegate];
  v5 = [DSUIUtilities setUpBoldButtonForController:self title:v3 target:delegate selector:sel_pushNextPane];

  v6 = DSUILocStringForKey(@"REVIEW_MORE_PEOPLE");
  v7 = [DSUIUtilities setUpLinkButtonForController:self title:v6 target:self selector:sel_back];
}

- (void)back
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  navigationController = [(DSSharingAdditionalConsiderationsController *)self navigationController];
  viewControllers = [navigationController viewControllers];

  v4 = [viewControllers countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(viewControllers);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = MEMORY[0x277CBEA60];
        v10 = objc_opt_class();
        v11 = objc_opt_class();
        v12 = [v9 arrayWithObjects:{v10, v11, objc_opt_class(), 0}];
        if (([v12 containsObject:objc_opt_class()] & 1) == 0)
        {
          [v18 addObject:v8];
        }
      }

      v5 = [viewControllers countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  navigationController2 = [(DSSharingAdditionalConsiderationsController *)self navigationController];
  [navigationController2 setViewControllers:v18];

  navigationController3 = [(DSSharingAdditionalConsiderationsController *)self navigationController];
  v15 = [navigationController3 popViewControllerAnimated:1];

  v16 = *MEMORY[0x277D85DE8];
}

- (DSNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end