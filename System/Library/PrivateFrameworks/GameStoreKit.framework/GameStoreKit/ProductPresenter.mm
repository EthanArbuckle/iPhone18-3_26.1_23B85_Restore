@interface ProductPresenter
- (void)restrictionsDidChange:(id)change;
@end

@implementation ProductPresenter

- (void)restrictionsDidChange:(id)change
{

  ProductPresenter.reloadTopLockup()();
}

@end