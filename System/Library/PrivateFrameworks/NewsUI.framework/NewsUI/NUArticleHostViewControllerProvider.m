@interface NUArticleHostViewControllerProvider
- (NUArticleHostViewController)articleHostViewController;
- (NUArticleHostViewControllerProvider)initWithArticleHostViewController:(id)a3;
@end

@implementation NUArticleHostViewControllerProvider

- (NUArticleHostViewControllerProvider)initWithArticleHostViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NUArticleHostViewControllerProvider;
  v5 = [(NUArticleHostViewControllerProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_articleHostViewController, v4);
  }

  return v6;
}

- (NUArticleHostViewController)articleHostViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_articleHostViewController);

  return WeakRetained;
}

@end