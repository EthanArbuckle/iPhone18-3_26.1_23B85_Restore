@interface CKPresentationControllerRootViewController
- (unint64_t)supportedInterfaceOrientations;
@end

@implementation CKPresentationControllerRootViewController

- (unint64_t)supportedInterfaceOrientations
{
  if ([(CKPresentationControllerRootViewController *)self restrictedToPortraitOrientation])
  {
    return 2;
  }

  v4.receiver = self;
  v4.super_class = CKPresentationControllerRootViewController;
  return [(CKPresentationControllerRootViewController *)&v4 supportedInterfaceOrientations];
}

@end