@interface OBSetupAssistantBulletedListController
- (OBSetupAssistantBulletedListController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5;
- (void)addBulletedListItemWithDescription:(id)a3 image:(id)a4;
- (void)viewDidLoad;
@end

@implementation OBSetupAssistantBulletedListController

- (OBSetupAssistantBulletedListController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5
{
  v6.receiver = self;
  v6.super_class = OBSetupAssistantBulletedListController;
  return [(OBWelcomeController *)&v6 initWithTitle:a3 detailText:a4 icon:a5 contentLayout:2];
}

- (void)addBulletedListItemWithDescription:(id)a3 image:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(OBSetupAssistantBulletedListController *)self loadViewIfNeeded];
  [(OBWelcomeController *)self setupBulletedListIfNeeded];
  v8 = [(OBWelcomeController *)self bulletedList];
  [v8 addItemWithDescription:v7 image:v6];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = OBSetupAssistantBulletedListController;
  [(OBWelcomeController *)&v3 viewDidLoad];
  [(OBWelcomeController *)self setTemplateType:2];
}

@end