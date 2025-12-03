@interface DSSafetyResetCompletedController
- (DSNavigationDelegate)delegate;
- (DSSafetyResetCompletedController)init;
- (void)viewDidLoad;
@end

@implementation DSSafetyResetCompletedController

- (DSSafetyResetCompletedController)init
{
  v3 = +[DSFeatureFlags isNaturalUIEnabled];
  v4 = DSUILocStringForKey(@"SAFETY_RESET_COMPLETED");
  v5 = DSUILocStringForKey(@"SAFETY_RESET_COMPLETED_DETAIL");
  if (v3)
  {
    v10.receiver = self;
    v10.super_class = DSSafetyResetCompletedController;
    v6 = [(DSSafetyResetCompletedController *)&v10 initWithTitle:v4 detailText:v5 symbolName:@"checklist"];
  }

  else
  {
    v7 = [MEMORY[0x277D755B8] systemImageNamed:@"checklist"];
    v9.receiver = self;
    v9.super_class = DSSafetyResetCompletedController;
    v6 = [(DSSafetyResetCompletedController *)&v9 initWithTitle:v4 detailText:v5 icon:v7];
  }

  return v6;
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = DSSafetyResetCompletedController;
  [(DSOBWelcomeController *)&v14 viewDidLoad];
  v3 = DSUILocStringForKey(@"CONTINUE");
  delegate = [(DSSafetyResetCompletedController *)self delegate];
  v5 = [DSUIUtilities setUpBoldButtonForController:self title:v3 target:delegate selector:sel_pushNextPane];

  v6 = DSUILocStringForKey(@"SKIP");
  v7 = [DSUIUtilities setUpLinkButtonForController:self title:v6 target:self selector:sel_skip];

  v8 = DSUILocStringForKey(@"EMERGENCY_CONTACTS");
  v9 = DSUILocStringForKey(@"EMERGENCY_CONTACTS_DETAIL");
  v10 = [MEMORY[0x277D755B8] systemImageNamed:@"1.circle.fill"];
  [(DSSafetyResetCompletedController *)self addBulletedListItemWithTitle:v8 description:v9 image:v10];

  v11 = DSUILocStringForKey(@"DEVICE_ACCESS");
  v12 = DSUILocStringForKey(@"DEVICE_ACCESS_DETAIL");
  v13 = [MEMORY[0x277D755B8] systemImageNamed:@"2.circle.fill"];
  [(DSSafetyResetCompletedController *)self addBulletedListItemWithTitle:v11 description:v12 image:v13];
}

- (DSNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end