@interface CNFFaceTimeSettingsController
- (CNFFaceTimeSettingsController)init;
@end

@implementation CNFFaceTimeSettingsController

- (CNFFaceTimeSettingsController)init
{
  v3 = [CNFRegController controllerForServiceType:0];
  [v3 connect:1];
  v6.receiver = self;
  v6.super_class = CNFFaceTimeSettingsController;
  v4 = [(CNFRegListController *)&v6 initWithRegController:v3];

  return v4;
}

@end