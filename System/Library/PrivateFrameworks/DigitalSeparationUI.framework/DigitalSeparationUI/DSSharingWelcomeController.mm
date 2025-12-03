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
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    v3 = [v6 configurationWithHierarchicalColor:systemBlueColor];

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
  delegate = [(DSSharingWelcomeController *)self delegate];
  v5 = [DSUIUtilities setUpBoldButtonForController:self title:v3 target:delegate selector:sel_pushNextPane];

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
  cell = [(DSSharingWelcomeController *)self cell];

  if (!cell)
  {
    v4 = [DSPlatterTableView cellWithPresentingViewController:self];
    [(DSSharingWelcomeController *)self setCell:v4];

    scrollView = [(DSSharingWelcomeController *)self scrollView];
    [scrollView addSubview:self->_cell];
  }

  cell2 = [(DSSharingWelcomeController *)self cell];

  if (cell2)
  {
    contentView = [(DSSharingWelcomeController *)self contentView];
    topAnchor = [contentView topAnchor];
    cell3 = [(DSSharingWelcomeController *)self cell];
    bottomAnchor = [cell3 bottomAnchor];
    v11 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:16.0];
    [v11 setActive:1];

    cell4 = [(DSSharingWelcomeController *)self cell];
    topAnchor2 = [cell4 topAnchor];
    headerView = [(DSSharingWelcomeController *)self headerView];
    bottomAnchor2 = [headerView bottomAnchor];
    v16 = [topAnchor2 constraintEqualToAnchor:bottomAnchor2 constant:16.0];
    [v16 setActive:1];

    cell5 = [(DSSharingWelcomeController *)self cell];
    leadingAnchor = [cell5 leadingAnchor];
    headerView2 = [(DSSharingWelcomeController *)self headerView];
    leadingAnchor2 = [headerView2 leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v21 setActive:1];

    cell6 = [(DSSharingWelcomeController *)self cell];
    widthAnchor = [cell6 widthAnchor];
    headerView3 = [(DSSharingWelcomeController *)self headerView];
    widthAnchor2 = [headerView3 widthAnchor];
    v26 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    [v26 setActive:1];

    cell7 = [(DSSharingWelcomeController *)self cell];
    heightAnchor = [cell7 heightAnchor];
    cell8 = [(DSSharingWelcomeController *)self cell];
    [cell8 preferredHeight];
    v29 = [heightAnchor constraintEqualToConstant:?];
    [v29 setActive:1];
  }
}

- (DSNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end