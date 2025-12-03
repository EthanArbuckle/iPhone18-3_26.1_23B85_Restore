@interface DOCAlertController
- (DOCAlertController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation DOCAlertController

- (DOCAlertController)initWithNibName:(id)name bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = DOCAlertController;
  return [(DOCAlertController *)&v5 initWithNibName:name bundle:bundle];
}

@end