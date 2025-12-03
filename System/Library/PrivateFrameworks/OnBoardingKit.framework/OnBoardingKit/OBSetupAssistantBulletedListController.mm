@interface OBSetupAssistantBulletedListController
- (OBSetupAssistantBulletedListController)initWithTitle:(id)title detailText:(id)text icon:(id)icon;
- (void)addBulletedListItemWithDescription:(id)description image:(id)image;
- (void)viewDidLoad;
@end

@implementation OBSetupAssistantBulletedListController

- (OBSetupAssistantBulletedListController)initWithTitle:(id)title detailText:(id)text icon:(id)icon
{
  v6.receiver = self;
  v6.super_class = OBSetupAssistantBulletedListController;
  return [(OBWelcomeController *)&v6 initWithTitle:title detailText:text icon:icon contentLayout:2];
}

- (void)addBulletedListItemWithDescription:(id)description image:(id)image
{
  imageCopy = image;
  descriptionCopy = description;
  [(OBSetupAssistantBulletedListController *)self loadViewIfNeeded];
  [(OBWelcomeController *)self setupBulletedListIfNeeded];
  bulletedList = [(OBWelcomeController *)self bulletedList];
  [bulletedList addItemWithDescription:descriptionCopy image:imageCopy];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = OBSetupAssistantBulletedListController;
  [(OBWelcomeController *)&v3 viewDidLoad];
  [(OBWelcomeController *)self setTemplateType:2];
}

@end