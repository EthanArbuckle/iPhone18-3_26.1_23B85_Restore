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
    v7 = [MEMORY[0x277D75348] systemBlueColor];
    v3 = [v6 configurationWithHierarchicalColor:v7];

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
  v4 = [(DSEmergencyResetWelcomeController *)self delegate];
  v5 = [DSUIUtilities setUpBoldButtonForController:self title:v3 target:v4 selector:sel_pushNextPane];

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
  v3 = [(DSEmergencyResetWelcomeController *)self cell];

  if (!v3)
  {
    v4 = [DSPlatterTableView cellWithPresentingViewController:self];
    [(DSEmergencyResetWelcomeController *)self setCell:v4];

    v5 = [(DSEmergencyResetWelcomeController *)self scrollView];
    [v5 addSubview:self->_cell];
  }

  v6 = [(DSEmergencyResetWelcomeController *)self cell];

  if (v6)
  {
    v7 = [(DSEmergencyResetWelcomeController *)self contentView];
    v8 = [v7 topAnchor];
    v9 = [(DSEmergencyResetWelcomeController *)self cell];
    v10 = [v9 bottomAnchor];
    v11 = [v8 constraintEqualToAnchor:v10 constant:16.0];
    [v11 setActive:1];

    v12 = [(DSEmergencyResetWelcomeController *)self cell];
    v13 = [v12 topAnchor];
    v14 = [(DSEmergencyResetWelcomeController *)self headerView];
    v15 = [v14 bottomAnchor];
    v16 = [v13 constraintEqualToAnchor:v15 constant:16.0];
    [v16 setActive:1];

    v17 = [(DSEmergencyResetWelcomeController *)self cell];
    v18 = [v17 leadingAnchor];
    v19 = [(DSEmergencyResetWelcomeController *)self headerView];
    v20 = [v19 leadingAnchor];
    v21 = [v18 constraintEqualToAnchor:v20];
    [v21 setActive:1];

    v22 = [(DSEmergencyResetWelcomeController *)self cell];
    v23 = [v22 widthAnchor];
    v24 = [(DSEmergencyResetWelcomeController *)self headerView];
    v25 = [v24 widthAnchor];
    v26 = [v23 constraintEqualToAnchor:v25];
    [v26 setActive:1];

    v30 = [(DSEmergencyResetWelcomeController *)self cell];
    v27 = [v30 heightAnchor];
    v28 = [(DSEmergencyResetWelcomeController *)self cell];
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