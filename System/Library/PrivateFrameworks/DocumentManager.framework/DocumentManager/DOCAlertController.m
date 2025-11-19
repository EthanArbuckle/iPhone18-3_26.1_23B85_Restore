@interface DOCAlertController
- (DOCAlertController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation DOCAlertController

- (DOCAlertController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5.receiver = self;
  v5.super_class = DOCAlertController;
  return [(DOCAlertController *)&v5 initWithNibName:a3 bundle:a4];
}

@end