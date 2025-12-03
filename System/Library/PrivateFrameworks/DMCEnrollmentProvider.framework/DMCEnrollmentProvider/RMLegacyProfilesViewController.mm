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
  _processUserInfoDictionary = [(RMLegacyProfilesViewController *)self _processUserInfoDictionary];
  v20.receiver = self;
  v20.super_class = RMLegacyProfilesViewController;
  [(RMLegacyProfilesViewController *)&v20 viewDidLoad];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  profileIdentifier = [_processUserInfoDictionary profileIdentifier];
  v6 = [mEMORY[0x277D262A0] installedProfileWithIdentifier:profileIdentifier];

  v7 = [[DMCProfileViewController alloc] initWithProfile:v6 viewMode:0];
  [(RMLegacyProfilesViewController *)self addChildViewController:v7];
  view = [(RMLegacyProfilesViewController *)self view];
  [view bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  view2 = [(DMCProfileViewController *)v7 view];
  [view2 setFrame:{v10, v12, v14, v16}];

  view3 = [(RMLegacyProfilesViewController *)self view];
  view4 = [(DMCProfileViewController *)v7 view];
  [view3 addSubview:view4];

  [(DMCProfileViewController *)v7 didMoveToParentViewController:self];
}

- (id)_processUserInfoDictionary
{
  userInfo = [*(&self->super.super.super.super.isa + *MEMORY[0x277D3FD20]) userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"RMConfigurationViewModelKey"];

  return v3;
}

@end