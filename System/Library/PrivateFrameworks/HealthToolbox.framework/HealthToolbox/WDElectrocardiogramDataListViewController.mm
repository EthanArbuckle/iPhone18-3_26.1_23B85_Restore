@interface WDElectrocardiogramDataListViewController
- (BOOL)isEditEnabled;
@end

@implementation WDElectrocardiogramDataListViewController

- (BOOL)isEditEnabled
{
  v5.receiver = self;
  v5.super_class = WDElectrocardiogramDataListViewController;
  isEditEnabled = [(WDDataListViewController *)&v5 isEditEnabled];
  if (isEditEnabled)
  {
    LOBYTE(isEditEnabled) = self->_mode == 0;
  }

  return isEditEnabled;
}

@end