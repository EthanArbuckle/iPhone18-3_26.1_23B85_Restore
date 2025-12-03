@interface RMAccountsDataclassConfigurationViewController
- (id)specifiers;
- (void)_reloadSpecifiersAndDeleteAccountButton;
- (void)viewDidLoad;
@end

@implementation RMAccountsDataclassConfigurationViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = RMAccountsDataclassConfigurationViewController;
  [(ACUIDataclassConfigurationViewController *)&v3 viewDidLoad];
  if ([(ACUIDataclassConfigurationViewController *)self shouldShowDeleteAccountButton])
  {
    [(ACUIDataclassConfigurationViewController *)self appendDeleteAccountButton];
  }
}

- (void)_reloadSpecifiersAndDeleteAccountButton
{
  [(RMAccountsDataclassConfigurationViewController *)self reloadSpecifiers];
  if ([(ACUIDataclassConfigurationViewController *)self shouldShowDeleteAccountButton])
  {

    [(ACUIDataclassConfigurationViewController *)self appendDeleteAccountButton];
  }
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    specifierForAccountSummaryCell = [(ACUIDataclassConfigurationViewController *)self specifierForAccountSummaryCell];
    v6 = MEMORY[0x277D3FAD8];
    v7 = DMCLocalizedString();
    v8 = [v6 groupSpecifierWithName:v7];

    specifier = [(RMAccountsDataclassConfigurationViewController *)self specifier];
    v10 = [specifier propertyForKey:*MEMORY[0x277CE8540]];

    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:8];
    [v11 addObject:specifierForAccountSummaryCell];
    if ([v10 count])
    {
      [v11 addObject:v8];
      [v11 addObjectsFromArray:v10];
    }

    v12 = [v11 copy];
    v13 = *(&self->super.super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.super.isa + v3) = v12;

    v4 = *(&self->super.super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

@end