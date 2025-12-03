@interface DSEmergencyResetWelcomeController
- (DSEmergencyResetWelcomeController)init;
- (DSNavigationDelegate)delegate;
- (void)_presentDTOCell;
- (void)viewDidLoad;
@end

@implementation DSEmergencyResetWelcomeController

- (DSEmergencyResetWelcomeController)init
{
  if (+[DSFeatureFlags isNaturalUIEnabled])
  {
    v3 = DSUILocStringForKey(@"SAFETY_RESET");
    v4 = DSUILocStringForKey(@"SAFETY_RESET_DETAIL");
    v12.receiver = self;
    v12.super_class = DSEmergencyResetWelcomeController;
    v5 = [(DSEmergencyResetWelcomeController *)&v12 initWithTitle:v3 detailText:v4 symbolName:@"person.2.gobackward"];
  }

  else
  {
    v6 = MEMORY[0x277D755D0];
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    v3 = [v6 configurationWithHierarchicalColor:systemBlueColor];

    v4 = DSUILocStringForKey(@"SAFETY_RESET");
    v8 = DSUILocStringForKey(@"SAFETY_RESET_DETAIL");
    v9 = [MEMORY[0x277D755B8] systemImageNamed:@"person.2.gobackward" withConfiguration:v3];
    v11.receiver = self;
    v11.super_class = DSEmergencyResetWelcomeController;
    v5 = [(DSEmergencyResetWelcomeController *)&v11 initWithTitle:v4 detailText:v8 icon:v9];
  }

  return v5;
}

- (void)viewDidLoad
{
  v26.receiver = self;
  v26.super_class = DSEmergencyResetWelcomeController;
  [(DSOBWelcomeController *)&v26 viewDidLoad];
  v3 = DSUILocStringForKey(@"START_EMERGENCY_RESET");
  delegate = [(DSEmergencyResetWelcomeController *)self delegate];
  v5 = [DSUIUtilities setUpBoldButtonForController:self title:v3 target:delegate selector:sel_pushNextPane];

  if ([MEMORY[0x277D054D8] shouldShowBioRatchetFlow])
  {
    [(DSEmergencyResetWelcomeController *)self _presentDTOCell];
    v6 = DSUILocStringForKey(@"EMERGENCY_RESET_1");
    v7 = DSUILocStringForKey(@"EMERGENCY_RESET_1_DETAIL");
    v8 = [MEMORY[0x277D755B8] systemImageNamed:@"1.circle.fill"];
    [(DSEmergencyResetWelcomeController *)self addBulletedListItemWithTitle:v6 description:v7 image:v8];

    v9 = DSUILocStringForKey(@"EMERGENCY_RESET_3");
    v10 = DSUILocStringForKey(@"EMERGENCY_RESET_3_DETAIL");
    v11 = [MEMORY[0x277D755B8] systemImageNamed:@"2.circle.fill"];
    [(DSEmergencyResetWelcomeController *)self addBulletedListItemWithTitle:v9 description:v10 image:v11];

    v12 = DSUIDTOLocStringForKey(@"EMERGENCY_RESET_BULLET_DEVICES");
    v13 = DSUIDTOLocStringForKey(@"EMERGENCY_RESET_BULLET_DEVICES_DETAIL");
    v14 = [MEMORY[0x277D755B8] systemImageNamed:@"3.circle.fill"];
    [(DSEmergencyResetWelcomeController *)self addBulletedListItemWithTitle:v12 description:v13 image:v14];

    v15 = DSUIDTOLocStringForKey(@"EMERGENCY_RESET_BULLET_ACCOUNT");
    v16 = DSUIDTOLocStringForKey(@"EMERGENCY_RESET_BULLET_ACCOUNT_DETAIL");
    v17 = MEMORY[0x277D755B8];
    v18 = @"4.circle.fill";
  }

  else
  {
    v19 = DSUILocStringForKey(@"EMERGENCY_RESET_1");
    v20 = DSUILocStringForKey(@"EMERGENCY_RESET_1_DETAIL");
    v21 = [MEMORY[0x277D755B8] systemImageNamed:@"1.circle.fill"];
    [(DSEmergencyResetWelcomeController *)self addBulletedListItemWithTitle:v19 description:v20 image:v21];

    v22 = DSUILocStringForKey(@"EMERGENCY_RESET_2");
    v23 = DSUILocStringForKey(@"EMERGENCY_RESET_2_DETAIL");
    v24 = [MEMORY[0x277D755B8] systemImageNamed:@"2.circle.fill"];
    [(DSEmergencyResetWelcomeController *)self addBulletedListItemWithTitle:v22 description:v23 image:v24];

    v15 = DSUILocStringForKey(@"EMERGENCY_RESET_3");
    v16 = DSUILocStringForKey(@"EMERGENCY_RESET_3_DETAIL");
    v17 = MEMORY[0x277D755B8];
    v18 = @"3.circle.fill";
  }

  v25 = [v17 systemImageNamed:v18];
  [(DSEmergencyResetWelcomeController *)self addBulletedListItemWithTitle:v15 description:v16 image:v25];
}

- (void)_presentDTOCell
{
  cell = [(DSEmergencyResetWelcomeController *)self cell];

  if (!cell)
  {
    v4 = [DSPlatterTableView cellWithPresentingViewController:self];
    [(DSEmergencyResetWelcomeController *)self setCell:v4];

    scrollView = [(DSEmergencyResetWelcomeController *)self scrollView];
    [scrollView addSubview:self->_cell];
  }

  cell2 = [(DSEmergencyResetWelcomeController *)self cell];

  if (cell2)
  {
    contentView = [(DSEmergencyResetWelcomeController *)self contentView];
    topAnchor = [contentView topAnchor];
    cell3 = [(DSEmergencyResetWelcomeController *)self cell];
    bottomAnchor = [cell3 bottomAnchor];
    v11 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:16.0];
    [v11 setActive:1];

    cell4 = [(DSEmergencyResetWelcomeController *)self cell];
    topAnchor2 = [cell4 topAnchor];
    headerView = [(DSEmergencyResetWelcomeController *)self headerView];
    bottomAnchor2 = [headerView bottomAnchor];
    v16 = [topAnchor2 constraintEqualToAnchor:bottomAnchor2 constant:16.0];
    [v16 setActive:1];

    cell5 = [(DSEmergencyResetWelcomeController *)self cell];
    leadingAnchor = [cell5 leadingAnchor];
    headerView2 = [(DSEmergencyResetWelcomeController *)self headerView];
    leadingAnchor2 = [headerView2 leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v21 setActive:1];

    cell6 = [(DSEmergencyResetWelcomeController *)self cell];
    widthAnchor = [cell6 widthAnchor];
    headerView3 = [(DSEmergencyResetWelcomeController *)self headerView];
    widthAnchor2 = [headerView3 widthAnchor];
    v26 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    [v26 setActive:1];

    cell7 = [(DSEmergencyResetWelcomeController *)self cell];
    heightAnchor = [cell7 heightAnchor];
    cell8 = [(DSEmergencyResetWelcomeController *)self cell];
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