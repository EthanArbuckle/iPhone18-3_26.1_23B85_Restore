@interface NUArticleHostViewControllerProvider
- (NUArticleHostViewController)articleHostViewController;
- (NUArticleHostViewControllerProvider)initWithArticleHostViewController:(id)controller;
@end

@implementation NUArticleHostViewControllerProvider

- (NUArticleHostViewControllerProvider)initWithArticleHostViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = NUArticleHostViewControllerProvider;
  v5 = [(NUArticleHostViewControllerProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_articleHostViewController, controllerCopy);
  }

  return v6;
}

- (NUArticleHostViewController)articleHostViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_articleHostViewController);

  return WeakRetained;
}

@end