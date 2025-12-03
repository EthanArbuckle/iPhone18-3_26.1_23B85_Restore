@interface CFXNonTransformedLiveCaptureContainerViewController
- (void)prepareForSegue:(id)segue sender:(id)sender;
- (void)viewDidLoad;
@end

@implementation CFXNonTransformedLiveCaptureContainerViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = CFXNonTransformedLiveCaptureContainerViewController;
  [(CFXNonTransformedLiveCaptureContainerViewController *)&v2 viewDidLoad];
}

- (void)prepareForSegue:(id)segue sender:(id)sender
{
  segueCopy = segue;
  destinationViewController = [segueCopy destinationViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    destinationViewController2 = [segueCopy destinationViewController];
    liveCaptureViewController = self->_liveCaptureViewController;
    self->_liveCaptureViewController = destinationViewController2;
  }
}

@end