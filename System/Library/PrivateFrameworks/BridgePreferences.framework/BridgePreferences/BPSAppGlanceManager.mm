@interface BPSAppGlanceManager
- (PSListController)listControllerDelegate;
@end

@implementation BPSAppGlanceManager

- (PSListController)listControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_listControllerDelegate);

  return WeakRetained;
}

@end