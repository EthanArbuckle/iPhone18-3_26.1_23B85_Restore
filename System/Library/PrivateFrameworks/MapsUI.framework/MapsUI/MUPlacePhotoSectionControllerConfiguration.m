@interface MUPlacePhotoSectionControllerConfiguration
- (UIViewController)presentingViewController;
@end

@implementation MUPlacePhotoSectionControllerConfiguration

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end