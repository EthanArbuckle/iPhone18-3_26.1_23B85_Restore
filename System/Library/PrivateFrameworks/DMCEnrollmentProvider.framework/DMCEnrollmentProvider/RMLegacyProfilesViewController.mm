@interface RMLegacyProfilesViewController
- (RMLegacyProfilesViewController)init;
- (id)_processUserInfoDictionary;
- (void)viewDidLoad;
@end

@implementation RMLegacyProfilesViewController

- (RMLegacyProfilesViewController)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6.receiver = self;
  v6.super_class = RMLegacyProfilesViewController;
  v4 = [(RMLegacyProfilesViewController *)&v6 initWithNibName:0 bundle:v3];

  return v4;
}

- (void)viewDidLoad
{
  v3 = [(RMLegacyProfilesViewController *)self _processUserInfoDictionary];
  v20.receiver = self;
  v20.super_class = RMLegacyProfilesViewController;
  [(RMLegacyProfilesViewController *)&v20 viewDidLoad];
  v4 = [MEMORY[0x277D262A0] sharedConnection];
  v5 = [v3 profileIdentifier];
  v6 = [v4 installedProfileWithIdentifier:v5];

  v7 = [[DMCProfileViewController alloc] initWithProfile:v6 viewMode:0];
  [(RMLegacyProfilesViewController *)self addChildViewController:v7];
  v8 = [(RMLegacyProfilesViewController *)self view];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(DMCProfileViewController *)v7 view];
  [v17 setFrame:{v10, v12, v14, v16}];

  v18 = [(RMLegacyProfilesViewController *)self view];
  v19 = [(DMCProfileViewController *)v7 view];
  [v18 addSubview:v19];

  [(DMCProfileViewController *)v7 didMoveToParentViewController:self];
}

- (id)_processUserInfoDictionary
{
  v2 = [*(&self->super.super.super.super.isa + *MEMORY[0x277D3FD20]) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"RMConfigurationViewModelKey"];

  return v3;
}

@end