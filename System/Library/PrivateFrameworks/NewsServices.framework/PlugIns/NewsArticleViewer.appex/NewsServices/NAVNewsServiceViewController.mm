@interface NAVNewsServiceViewController
- (void)articleViewServiceProviderShouldLoadArticlesForArticleIDs:(id)ds;
- (void)dealloc;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation NAVNewsServiceViewController

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = NAVNewsServiceViewController;
  [(NAVNewsServiceViewController *)&v15 viewDidLoad];
  view = [(NAVNewsServiceViewController *)self view];
  v4 = +[UIColor whiteColor];
  [view setBackgroundColor:v4];

  extensionContext = [(NAVNewsServiceViewController *)self extensionContext];
  v6 = [NAVContainer sharedContainerForExtension:extensionContext hostViewController:self];
  resolver = [v6 resolver];

  v8 = [resolver resolveClass:objc_opt_class()];
  [(NAVNewsServiceViewController *)self setArticleContainerViewController:v8];

  articleContainerViewController = [(NAVNewsServiceViewController *)self articleContainerViewController];
  [articleContainerViewController setDelegate:self];

  articleContainerViewController2 = [(NAVNewsServiceViewController *)self articleContainerViewController];
  [(NAVNewsServiceViewController *)self addChildViewController:articleContainerViewController2];

  view2 = [(NAVNewsServiceViewController *)self view];
  articleContainerViewController3 = [(NAVNewsServiceViewController *)self articleContainerViewController];
  view3 = [articleContainerViewController3 view];
  [view2 addSubview:view3];

  articleContainerViewController4 = [(NAVNewsServiceViewController *)self articleContainerViewController];
  [articleContainerViewController4 didMoveToParentViewController:self];
}

- (void)dealloc
{
  articleContainerViewController = [(NAVNewsServiceViewController *)self articleContainerViewController];
  [articleContainerViewController willMoveToParentViewController:0];

  articleContainerViewController2 = [(NAVNewsServiceViewController *)self articleContainerViewController];
  view = [articleContainerViewController2 view];
  [view removeFromSuperview];

  articleContainerViewController3 = [(NAVNewsServiceViewController *)self articleContainerViewController];
  [articleContainerViewController3 removeFromParentViewController];

  v7.receiver = self;
  v7.super_class = NAVNewsServiceViewController;
  [(NAVNewsServiceViewController *)&v7 dealloc];
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = NAVNewsServiceViewController;
  [(NAVNewsServiceViewController *)&v14 viewDidLayoutSubviews];
  view = [(NAVNewsServiceViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  articleContainerViewController = [(NAVNewsServiceViewController *)self articleContainerViewController];
  view2 = [articleContainerViewController view];
  [view2 setFrame:{v5, v7, v9, v11}];
}

- (void)articleViewServiceProviderShouldLoadArticlesForArticleIDs:(id)ds
{
  dsCopy = ds;
  articleContainerViewController = [(NAVNewsServiceViewController *)self articleContainerViewController];
  [articleContainerViewController loadWithArticleIDs:dsCopy];
}

@end