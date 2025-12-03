@interface CKSyndicationPageViewController
- (CKSyndicationOnboardingPageViewControllerDelegate)delegate;
- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController;
- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController;
- (id)viewControllerAtIndex:(unint64_t)index;
- (unint64_t)indexOfViewController:(id)controller;
- (void)createContentPages;
- (void)pageControlChanged:(id)changed;
- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed;
- (void)pageViewController:(id)controller willTransitionToViewControllers:(id)controllers;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CKSyndicationPageViewController

- (void)createContentPages
{
  array = [MEMORY[0x1E695DF70] array];
  pageContent = self->_pageContent;
  self->_pageContent = array;

  for (i = 0; i != 3; ++i)
  {
    v6 = [[CKSyndicationContentViewController alloc] initWithIndex:i];
    [(NSMutableArray *)self->_pageContent addObject:v6];
  }
}

- (void)viewDidLoad
{
  v27.receiver = self;
  v27.super_class = CKSyndicationPageViewController;
  [(CKSyndicationPageViewController *)&v27 viewDidLoad];
  [(CKSyndicationPageViewController *)self createContentPages];
  v3 = MEMORY[0x1E695DF20];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:1];
  v5 = [v3 dictionaryWithObject:v4 forKey:*MEMORY[0x1E69DE268]];

  v6 = [objc_alloc(MEMORY[0x1E69DCD20]) initWithTransitionStyle:1 navigationOrientation:0 options:v5];
  pageViewController = self->_pageViewController;
  self->_pageViewController = v6;

  [(UIPageViewController *)self->_pageViewController setDataSource:self];
  [(UIPageViewController *)self->_pageViewController setDelegate:self];
  v8 = [(CKSyndicationPageViewController *)self viewControllerAtIndex:0];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObject:v8];
  pageViewController = [(CKSyndicationPageViewController *)self pageViewController];
  [pageViewController setViewControllers:v9 direction:0 animated:0 completion:0];

  pageViewController2 = [(CKSyndicationPageViewController *)self pageViewController];
  [(CKSyndicationPageViewController *)self addChildViewController:pageViewController2];

  view = [(CKSyndicationPageViewController *)self view];
  pageViewController3 = [(CKSyndicationPageViewController *)self pageViewController];
  view2 = [pageViewController3 view];
  [view addSubview:view2];

  pageViewController4 = [(CKSyndicationPageViewController *)self pageViewController];
  [pageViewController4 didMoveToParentViewController:self];

  v16 = objc_alloc_init(MEMORY[0x1E69DCD10]);
  v17 = MEMORY[0x1E69DC888];
  lightGrayColor = [MEMORY[0x1E69DC888] lightGrayColor];
  darkGrayColor = [MEMORY[0x1E69DC888] darkGrayColor];
  v20 = [v17 dynamicColorWithLightColor:lightGrayColor darkColor:darkGrayColor];
  [v16 setPageIndicatorTintColor:v20];

  v21 = MEMORY[0x1E69DC888];
  darkGrayColor2 = [MEMORY[0x1E69DC888] darkGrayColor];
  lightGrayColor2 = [MEMORY[0x1E69DC888] lightGrayColor];
  v24 = [v21 dynamicColorWithLightColor:darkGrayColor2 darkColor:lightGrayColor2];
  [v16 setCurrentPageIndicatorTintColor:v24];

  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v16 setBackgroundColor:systemBackgroundColor];

  [v16 addTarget:self action:sel_pageControlChanged_ forControlEvents:4096];
  [v16 setNumberOfPages:3];
  [(CKSyndicationPageViewController *)self setPageControl:v16];
  view3 = [(CKSyndicationPageViewController *)self view];
  [view3 addSubview:v16];
}

- (void)viewDidLayoutSubviews
{
  v40.receiver = self;
  v40.super_class = CKSyndicationPageViewController;
  [(CKSyndicationPageViewController *)&v40 viewDidLayoutSubviews];
  pageControl = [(CKSyndicationPageViewController *)self pageControl];

  if (pageControl)
  {
    view = [(CKSyndicationPageViewController *)self view];
    [view bounds];
    v6 = v5;
    v8 = v7;

    delegate = [(CKSyndicationPageViewController *)self delegate];
    getButtonTray = [delegate getButtonTray];

    if (getButtonTray)
    {
      delegate2 = [(CKSyndicationPageViewController *)self delegate];
      getButtonTray2 = [delegate2 getButtonTray];
      [getButtonTray2 frame];
      v14 = v13;
    }

    else
    {
      v14 = 150.0;
    }

    v15 = CKIsRunningInMacCatalyst();
    v16 = 0.125;
    if (v15)
    {
      v16 = 0.5;
    }

    v17 = v14 * v16;
    v18 = v8 - v14 * v16 - v14;
    pageViewController = [(CKSyndicationPageViewController *)self pageViewController];
    view2 = [pageViewController view];
    [view2 setFrame:{0.0, 0.0, v6, v18}];

    pageViewController2 = [(CKSyndicationPageViewController *)self pageViewController];
    view3 = [pageViewController2 view];
    [view3 frame];
    v24 = v17 * 0.5 + v23;
    pageViewController3 = [(CKSyndicationPageViewController *)self pageViewController];
    view4 = [pageViewController3 view];
    [view4 frame];
    v28 = v27;
    pageControl2 = [(CKSyndicationPageViewController *)self pageControl];
    [pageControl2 setFrame:{0.0, v24, v28, v17}];

    if (CKIsRunningInMacCatalyst())
    {
      pageViewController4 = [(CKSyndicationPageViewController *)self pageViewController];
      view5 = [pageViewController4 view];
      [view5 frame];
      v33 = v32;
      pageViewController5 = [(CKSyndicationPageViewController *)self pageViewController];
      view6 = [pageViewController5 view];
      [view6 frame];
      v37 = v36;
      pageControl3 = [(CKSyndicationPageViewController *)self pageControl];
      [pageControl3 setFrame:{0.0, v33, v37, v17}];
    }

    pageControl4 = [(CKSyndicationPageViewController *)self pageControl];
    [pageControl4 setAutoresizingMask:8];
  }
}

- (void)pageControlChanged:(id)changed
{
  v14[1] = *MEMORY[0x1E69E9840];
  currentPage = [changed currentPage];
  pageContent = [(CKSyndicationPageViewController *)self pageContent];
  pageViewController = [(CKSyndicationPageViewController *)self pageViewController];
  viewControllers = [pageViewController viewControllers];
  firstObject = [viewControllers firstObject];
  v9 = [pageContent indexOfObject:firstObject];

  v10 = currentPage < v9;
  v11 = [(CKSyndicationPageViewController *)self viewControllerAtIndex:currentPage];
  v14[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  pageViewController2 = [(CKSyndicationPageViewController *)self pageViewController];
  [pageViewController2 setViewControllers:v12 direction:v10 animated:1 completion:0];
}

- (id)viewControllerAtIndex:(unint64_t)index
{
  pageContent = [(CKSyndicationPageViewController *)self pageContent];
  v6 = [pageContent count];

  if (v6 <= index)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(NSMutableArray *)self->_pageContent objectAtIndexedSubscript:index];
  }

  return v7;
}

- (unint64_t)indexOfViewController:(id)controller
{
  controllerCopy = controller;
  pageContent = [(CKSyndicationPageViewController *)self pageContent];
  v6 = [pageContent indexOfObject:controllerCopy];

  return v6;
}

- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController
{
  v5 = [(CKSyndicationPageViewController *)self indexOfViewController:viewController];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(CKSyndicationPageViewController *)self viewControllerAtIndex:v5 - 1];
  }

  return v6;
}

- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController
{
  v5 = [(CKSyndicationPageViewController *)self indexOfViewController:viewController];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(CKSyndicationPageViewController *)self viewControllerAtIndex:v5 + 1];
  }

  return v6;
}

- (void)pageViewController:(id)controller willTransitionToViewControllers:(id)controllers
{
  v5 = [controllers objectAtIndex:0];
  if (v5)
  {
    v8 = v5;
    v6 = [(CKSyndicationPageViewController *)self indexOfViewController:v5];
    pageControl = [(CKSyndicationPageViewController *)self pageControl];
    [pageControl setCurrentPage:v6];

    v5 = v8;
  }
}

- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed
{
  if (!completed)
  {
    v9 = [controllers objectAtIndex:{0, animating}];
    pageControl = [(CKSyndicationPageViewController *)self pageControl];
    [pageControl setCurrentPage:{-[CKSyndicationPageViewController indexOfViewController:](self, "indexOfViewController:", v9)}];
  }
}

- (CKSyndicationOnboardingPageViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end