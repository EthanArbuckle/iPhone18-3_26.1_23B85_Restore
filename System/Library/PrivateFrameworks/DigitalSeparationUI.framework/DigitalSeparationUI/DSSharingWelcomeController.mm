@interface DSSharingWelcomeController
- (DSNavigationDelegate)delegate;
- (DSSharingWelcomeController)init;
- (void)_presentDTOCell;
- (void)viewDidLoad;
@end

@implementation DSSharingWelcomeController

- (DSSharingWelcomeController)init
{
  if (+[DSFeatureFlags isNaturalUIEnabled])
  {
    v3 = DSUILocStringForKey(@"SHARING_ACTIVITY");
    v4 = DSUILocStringForKey(@"SHARING_WELCOME_DETAIL");
    v12.receiver = self;
    v12.super_class = DSSharingWelcomeController;
    v5 = [(DSSharingWelcomeController *)&v12 initWithTitle:v3 detailText:v4 symbolName:@"person.2.badge.gearshape.fill"];
  }

  else
  {
    v6 = MEMORY[0x277D755D0];
    v7 = [MEMORY[0x277D75348] systemBlueColor];
    v3 = [v6 configurationWithHierarchicalColor:v7];

    v4 = DSUILocStringForKey(@"SHARING_ACTIVITY");
    v8 = DSUILocStringForKey(@"SHARING_WELCOME_DETAIL");
    v9 = [MEMORY[0x277D755B8] systemImageNamed:@"person.2.badge.gearshape.fill" withConfiguration:v3];
    v11.receiver = self;
    v11.super_class = DSSharingWelcomeController;
    v5 = [(DSSharingWelcomeController *)&v11 initWithTitle:v4 detailText:v8 icon:v9];
  }

  return v5;
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = DSSharingWelcomeController;
  [(DSOBWelcomeController *)&v15 viewDidLoad];
  v3 = DSUILocStringForKey(@"CONTINUE");
  v4 = [(DSSharingWelcomeController *)self delegate];
  v5 = [DSUIUtilities setUpBoldButtonForController:self title:v3 target:v4 selector:sel_pushNextPane];

  if ([MEMORY[0x277D054D8] shouldShowBioRatchetFlow])
  {
    [(DSSharingWelcomeController *)self _presentDTOCell];
  }

  v6 = DSUILocStringForKey(@"PEOPLE_AND_INFORMATION");
  v7 = DSUILocStringForKey(@"SHARING_PERMISSIONS_DETAIL");
  v8 = [MEMORY[0x277D755B8] systemImageNamed:@"1.circle.fill"];
  [(DSSharingWelcomeController *)self addBulletedListItemWithTitle:v6 description:v7 image:v8];

  v9 = DSUILocStringForKey(@"PRIVACY_PERMISSIONS");
  v10 = DSUILocStringForKey(@"PRIVACY_PERMISSIONS_DETAIL");
  v11 = [MEMORY[0x277D755B8] systemImageNamed:@"2.circle.fill"];
  [(DSSharingWelcomeController *)self addBulletedListItemWithTitle:v9 description:v10 image:v11];

  v12 = DSUILocStringForKey(@"SECURE_PHYSICAL_ACCESS");
  v13 = DSUILocStringForKey(@"SECURE_PHYSICAL_ACCESS_DETAIL");
  v14 = [MEMORY[0x277D755B8] systemImageNamed:@"3.circle.fill"];
  [(DSSharingWelcomeController *)self addBulletedListItemWithTitle:v12 description:v13 image:v14];
}

- (void)_presentDTOCell
{
  v3 = [(DSSharingWelcomeController *)self cell];

  if (!v3)
  {
    v4 = [DSPlatterTableView cellWithPresentingViewController:self];
    [(DSSharingWelcomeController *)self setCell:v4];

    v5 = [(DSSharingWelcomeController *)self scrollView];
    [v5 addSubview:self->_cell];
  }

  v6 = [(DSSharingWelcomeController *)self cell];

  if (v6)
  {
    v7 = [(DSSharingWelcomeController *)self contentView];
    v8 = [v7 topAnchor];
    v9 = [(DSSharingWelcomeController *)self cell];
    v10 = [v9 bottomAnchor];
    v11 = [v8 constraintEqualToAnchor:v10 constant:16.0];
    [v11 setActive:1];

    v12 = [(DSSharingWelcomeController *)self cell];
    v13 = [v12 topAnchor];
    v14 = [(DSSharingWelcomeController *)self headerView];
    v15 = [v14 bottomAnchor];
    v16 = [v13 constraintEqualToAnchor:v15 constant:16.0];
    [v16 setActive:1];

    v17 = [(DSSharingWelcomeController *)self cell];
    v18 = [v17 leadingAnchor];
    v19 = [(DSSharingWelcomeController *)self headerView];
    v20 = [v19 leadingAnchor];
    v21 = [v18 constraintEqualToAnchor:v20];
    [v21 setActive:1];

    v22 = [(DSSharingWelcomeController *)self cell];
    v23 = [v22 widthAnchor];
    v24 = [(DSSharingWelcomeController *)self headerView];
    v25 = [v24 widthAnchor];
    v26 = [v23 constraintEqualToAnchor:v25];
    [v26 setActive:1];

    v30 = [(DSSharingWelcomeController *)self cell];
    v27 = [v30 heightAnchor];
    v28 = [(DSSharingWelcomeController *)self cell];
    [v28 preferredHeight];
    v29 = [v27 constraintEqualToConstant:?];
    [v29 setActive:1];
  }
}

- (DSNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end