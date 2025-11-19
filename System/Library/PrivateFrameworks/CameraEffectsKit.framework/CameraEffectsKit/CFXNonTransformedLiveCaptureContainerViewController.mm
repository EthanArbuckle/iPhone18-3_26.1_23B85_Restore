@interface CFXNonTransformedLiveCaptureContainerViewController
- (void)prepareForSegue:(id)a3 sender:(id)a4;
- (void)viewDidLoad;
@end

@implementation CFXNonTransformedLiveCaptureContainerViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = CFXNonTransformedLiveCaptureContainerViewController;
  [(CFXNonTransformedLiveCaptureContainerViewController *)&v2 viewDidLoad];
}

- (void)prepareForSegue:(id)a3 sender:(id)a4
{
  v9 = a3;
  v5 = [v9 destinationViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v9 destinationViewController];
    liveCaptureViewController = self->_liveCaptureViewController;
    self->_liveCaptureViewController = v7;
  }
}

@end