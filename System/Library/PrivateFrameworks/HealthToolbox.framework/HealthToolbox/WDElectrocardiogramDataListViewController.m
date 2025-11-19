@interface WDElectrocardiogramDataListViewController
- (BOOL)isEditEnabled;
@end

@implementation WDElectrocardiogramDataListViewController

- (BOOL)isEditEnabled
{
  v5.receiver = self;
  v5.super_class = WDElectrocardiogramDataListViewController;
  v3 = [(WDDataListViewController *)&v5 isEditEnabled];
  if (v3)
  {
    LOBYTE(v3) = self->_mode == 0;
  }

  return v3;
}

@end