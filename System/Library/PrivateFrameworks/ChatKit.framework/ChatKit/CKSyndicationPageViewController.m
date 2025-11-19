@interface CKSyndicationPageViewController
- (CKSyndicationOnboardingPageViewControllerDelegate)delegate;
- (id)pageViewController:(id)a3 viewControllerAfterViewController:(id)a4;
- (id)pageViewController:(id)a3 viewControllerBeforeViewController:(id)a4;
- (id)viewControllerAtIndex:(unint64_t)a3;
- (unint64_t)indexOfViewController:(id)a3;
- (void)createContentPages;
- (void)pageControlChanged:(id)a3;
- (void)pageViewController:(id)a3 didFinishAnimating:(BOOL)a4 previousViewControllers:(id)a5 transitionCompleted:(BOOL)a6;
- (void)pageViewController:(id)a3 willTransitionToViewControllers:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CKSyndicationPageViewController

- (void)createContentPages
{
  v3 = [MEMORY[0x1E695DF70] array];
  pageContent = self->_pageContent;
  self->_pageContent = v3;

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
  v10 = [(CKSyndicationPageViewController *)self pageViewController];
  [v10 setViewControllers:v9 direction:0 animated:0 completion:0];

  v11 = [(CKSyndicationPageViewController *)self pageViewController];
  [(CKSyndicationPageViewController *)self addChildViewController:v11];

  v12 = [(CKSyndicationPageViewController *)self view];
  v13 = [(CKSyndicationPageViewController *)self pageViewController];
  v14 = [v13 view];
  [v12 addSubview:v14];

  v15 = [(CKSyndicationPageViewController *)self pageViewController];
  [v15 didMoveToParentViewController:self];

  v16 = objc_alloc_init(MEMORY[0x1E69DCD10]);
  v17 = MEMORY[0x1E69DC888];
  v18 = [MEMORY[0x1E69DC888] lightGrayColor];
  v19 = [MEMORY[0x1E69DC888] darkGrayColor];
  v20 = [v17 dynamicColorWithLightColor:v18 darkColor:v19];
  [v16 setPageIndicatorTintColor:v20];

  v21 = MEMORY[0x1E69DC888];
  v22 = [MEMORY[0x1E69DC888] darkGrayColor];
  v23 = [MEMORY[0x1E69DC888] lightGrayColor];
  v24 = [v21 dynamicColorWithLightColor:v22 darkColor:v23];
  [v16 setCurrentPageIndicatorTintColor:v24];

  v25 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v16 setBackgroundColor:v25];

  [v16 addTarget:self action:sel_pageControlChanged_ forControlEvents:4096];
  [v16 setNumberOfPages:3];
  [(CKSyndicationPageViewController *)self setPageControl:v16];
  v26 = [(CKSyndicationPageViewController *)self view];
  [v26 addSubview:v16];
}

- (void)viewDidLayoutSubviews
{
  v40.receiver = self;
  v40.super_class = CKSyndicationPageViewController;
  [(CKSyndicationPageViewController *)&v40 viewDidLayoutSubviews];
  v3 = [(CKSyndicationPageViewController *)self pageControl];

  if (v3)
  {
    v4 = [(CKSyndicationPageViewController *)self view];
    [v4 bounds];
    v6 = v5;
    v8 = v7;

    v9 = [(CKSyndicationPageViewController *)self delegate];
    v10 = [v9 getButtonTray];

    if (v10)
    {
      v11 = [(CKSyndicationPageViewController *)self delegate];
      v12 = [v11 getButtonTray];
      [v12 frame];
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
    v19 = [(CKSyndicationPageViewController *)self pageViewController];
    v20 = [v19 view];
    [v20 setFrame:{0.0, 0.0, v6, v18}];

    v21 = [(CKSyndicationPageViewController *)self pageViewController];
    v22 = [v21 view];
    [v22 frame];
    v24 = v17 * 0.5 + v23;
    v25 = [(CKSyndicationPageViewController *)self pageViewController];
    v26 = [v25 view];
    [v26 frame];
    v28 = v27;
    v29 = [(CKSyndicationPageViewController *)self pageControl];
    [v29 setFrame:{0.0, v24, v28, v17}];

    if (CKIsRunningInMacCatalyst())
    {
      v30 = [(CKSyndicationPageViewController *)self pageViewController];
      v31 = [v30 view];
      [v31 frame];
      v33 = v32;
      v34 = [(CKSyndicationPageViewController *)self pageViewController];
      v35 = [v34 view];
      [v35 frame];
      v37 = v36;
      v38 = [(CKSyndicationPageViewController *)self pageControl];
      [v38 setFrame:{0.0, v33, v37, v17}];
    }

    v39 = [(CKSyndicationPageViewController *)self pageControl];
    [v39 setAutoresizingMask:8];
  }
}

- (void)pageControlChanged:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = [a3 currentPage];
  v5 = [(CKSyndicationPageViewController *)self pageContent];
  v6 = [(CKSyndicationPageViewController *)self pageViewController];
  v7 = [v6 viewControllers];
  v8 = [v7 firstObject];
  v9 = [v5 indexOfObject:v8];

  v10 = v4 < v9;
  v11 = [(CKSyndicationPageViewController *)self viewControllerAtIndex:v4];
  v14[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v13 = [(CKSyndicationPageViewController *)self pageViewController];
  [v13 setViewControllers:v12 direction:v10 animated:1 completion:0];
}

- (id)viewControllerAtIndex:(unint64_t)a3
{
  v5 = [(CKSyndicationPageViewController *)self pageContent];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(NSMutableArray *)self->_pageContent objectAtIndexedSubscript:a3];
  }

  return v7;
}

- (unint64_t)indexOfViewController:(id)a3
{
  v4 = a3;
  v5 = [(CKSyndicationPageViewController *)self pageContent];
  v6 = [v5 indexOfObject:v4];

  return v6;
}

- (id)pageViewController:(id)a3 viewControllerBeforeViewController:(id)a4
{
  v5 = [(CKSyndicationPageViewController *)self indexOfViewController:a4];
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

- (id)pageViewController:(id)a3 viewControllerAfterViewController:(id)a4
{
  v5 = [(CKSyndicationPageViewController *)self indexOfViewController:a4];
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

- (void)pageViewController:(id)a3 willTransitionToViewControllers:(id)a4
{
  v5 = [a4 objectAtIndex:0];
  if (v5)
  {
    v8 = v5;
    v6 = [(CKSyndicationPageViewController *)self indexOfViewController:v5];
    v7 = [(CKSyndicationPageViewController *)self pageControl];
    [v7 setCurrentPage:v6];

    v5 = v8;
  }
}

- (void)pageViewController:(id)a3 didFinishAnimating:(BOOL)a4 previousViewControllers:(id)a5 transitionCompleted:(BOOL)a6
{
  if (!a6)
  {
    v9 = [a5 objectAtIndex:{0, a4}];
    v8 = [(CKSyndicationPageViewController *)self pageControl];
    [v8 setCurrentPage:{-[CKSyndicationPageViewController indexOfViewController:](self, "indexOfViewController:", v9)}];
  }
}

- (CKSyndicationOnboardingPageViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end