@interface SUUISlideshowViewController
- (SUUISlideshowViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (SUUISlideshowViewControllerDataSource)dataSource;
- (SUUISlideshowViewControllerDelegate)delegate;
- (id)_itemViewControllerForIndex:(int64_t)a3;
- (id)animatorForDismissedController:(id)a3;
- (id)animatorForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)currentItemViewController;
- (id)pageViewController:(id)a3 viewControllerAfterViewController:(id)a4;
- (id)pageViewController:(id)a3 viewControllerBeforeViewController:(id)a4;
- (void)_contentViewTapped:(id)a3;
- (void)_doneButtonTapped:(id)a3;
- (void)_fadeOutOverlayAfterDelay:(unint64_t)a3;
- (void)_restoreStatusBarAppearanceState;
- (void)_saveStatusBarAppearanceState;
- (void)_setOverlayVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)_toggleFadeOverlay;
- (void)_updateTitleWithIndex:(int64_t)a3;
- (void)dealloc;
- (void)loadView;
- (void)pageViewController:(id)a3 didFinishAnimating:(BOOL)a4 previousViewControllers:(id)a5 transitionCompleted:(BOOL)a6;
- (void)setCurrentIndex:(int64_t)a3;
- (void)slideshowItemViewControllerDidDismissWithPinchGesture:(id)a3 ratio:(double)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
@end

@implementation SUUISlideshowViewController

- (SUUISlideshowViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v15.receiver = self;
  v15.super_class = SUUISlideshowViewController;
  v4 = [(SUUISlideshowViewController *)&v15 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    v4->_currentIndex = 0;
    v6 = objc_alloc_init(MEMORY[0x277CCABD8]);
    remoteLoadQueue = v5->_remoteLoadQueue;
    v5->_remoteLoadQueue = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    itemViewControllersCache = v5->_itemViewControllersCache;
    v5->_itemViewControllersCache = v8;

    v10 = [objc_alloc(MEMORY[0x277D757F0]) initWithTransitionStyle:1 navigationOrientation:0 options:0];
    pageViewController = v5->_pageViewController;
    v5->_pageViewController = v10;

    [(UIPageViewController *)v5->_pageViewController setDataSource:v5];
    [(UIPageViewController *)v5->_pageViewController setDelegate:v5];
    [(SUUISlideshowViewController *)v5 addChildViewController:v5->_pageViewController];
    v5->_shouldCancelDelayedOverlayVisibilityChange = 0;
    v5->_overlayVisibilityWillChangeWithDelay = 0;
    v5->_lockOverlayControlsVisible = 0;
    v12 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v5 action:sel__doneButtonTapped_];
    v13 = [(SUUISlideshowViewController *)v5 navigationItem];
    [v13 setRightBarButtonItem:v12];
  }

  return v5;
}

- (void)dealloc
{
  [(UIPageViewController *)self->_pageViewController setDataSource:0];
  [(UIPageViewController *)self->_pageViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUISlideshowViewController;
  [(SUUISlideshowViewController *)&v3 dealloc];
}

- (id)animatorForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v6 = objc_alloc_init(SUUISlideshowAnimator);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    v10 = [v9 slideshowViewController:self poppedImageViewAtIndex:self->_currentIndex];

    [(SUUISlideshowAnimator *)v6 setImageView:v10];
  }

  return v6;
}

- (id)animatorForDismissedController:(id)a3
{
  v4 = objc_alloc_init(SUUISlideshowDismissalAnimator);
  v5 = [(SUUISlideshowViewController *)self currentItemViewController];
  v6 = [v5 imageScrollView];
  v7 = [v6 imageView];

  v8 = [v7 image];

  v9 = [(SUUISlideshowViewController *)self view];
  v10 = v9;
  if (v8)
  {
    [v7 frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [v7 superview];
    [v10 convertRect:v19 fromView:{v12, v14, v16, v18}];
    [(SUUISlideshowDismissalAnimator *)v4 setImageRect:?];
  }

  else
  {
    [v9 bounds];
    [(SUUISlideshowDismissalAnimator *)v4 setImageRect:?];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    v22 = objc_loadWeakRetained(&self->_delegate);
    [v22 slideshowViewController:self scrollToImageAtIndex:self->_currentIndex];
  }

  v23 = objc_loadWeakRetained(&self->_delegate);
  v24 = objc_opt_respondsToSelector();

  if (v24)
  {
    v25 = objc_loadWeakRetained(&self->_delegate);
    v26 = [v25 slideshowViewController:self poppedImageViewAtIndex:self->_currentIndex];

    [(SUUISlideshowDismissalAnimator *)v4 setImageView:v26];
  }

  return v4;
}

- (void)setCurrentIndex:(int64_t)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v5 = [(SUUISlideshowViewController *)self _itemViewControllerForIndex:?];
  pageViewController = self->_pageViewController;
  v8[0] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [(UIPageViewController *)pageViewController setViewControllers:v7 direction:0 animated:0 completion:0];

  self->_currentIndex = a3;
  [(SUUISlideshowViewController *)self _updateCurrentIndex];
}

- (id)currentItemViewController
{
  v3 = [(UIPageViewController *)self->_pageViewController viewControllers];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(UIPageViewController *)self->_pageViewController viewControllers];
    v6 = [v5 objectAtIndexedSubscript:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 bounds];
  v10 = [v3 initWithFrame:?];

  v5 = [MEMORY[0x277D75348] clearColor];
  [v10 setBackgroundColor:v5];

  v6 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2020];
  [v6 setAutoresizingMask:18];
  [v10 addSubview:v6];
  v7 = [(UIPageViewController *)self->_pageViewController view];
  [v10 bounds];
  [v7 setFrame:?];
  [v10 addSubview:v7];
  v8 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__contentViewTapped_];
  [v8 setNumberOfTapsRequired:2];
  [v7 addGestureRecognizer:v8];
  v9 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__contentViewTapped_];
  [v9 requireGestureRecognizerToFail:v8];
  [v7 addGestureRecognizer:v9];
  [(SUUISlideshowViewController *)self setView:v10];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SUUISlideshowViewController;
  [(SUUISlideshowViewController *)&v3 viewDidLoad];
  [(SUUISlideshowViewController *)self setCurrentIndex:self->_currentIndex];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SUUISlideshowViewController;
  [(SUUISlideshowViewController *)&v4 viewWillAppear:a3];
  [(SUUISlideshowViewController *)self _saveStatusBarAppearanceState];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SUUISlideshowViewController;
  [(SUUISlideshowViewController *)&v4 viewWillDisappear:a3];
  [(SUUISlideshowViewController *)self _restoreStatusBarAppearanceState];
  self->_shouldCancelDelayedOverlayVisibilityChange = 1;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SUUISlideshowViewController;
  [(SUUISlideshowViewController *)&v4 viewDidAppear:a3];
  [(SUUISlideshowViewController *)self _setOverlayVisible:1 animated:1];
  [(SUUISlideshowViewController *)self _fadeOutOverlayAfterDelay:2];
}

- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  if (!self->_overlayVisible)
  {
    v7 = [MEMORY[0x277D75128] sharedApplication];
    [v7 setStatusBarHidden:0];
  }

  v8.receiver = self;
  v8.super_class = SUUISlideshowViewController;
  [(SUUISlideshowViewController *)&v8 willRotateToInterfaceOrientation:a3 duration:a4];
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  if (!self->_overlayVisible)
  {
    v7 = [MEMORY[0x277D75128] sharedApplication];
    [v7 setStatusBarHidden:1];
  }

  v8.receiver = self;
  v8.super_class = SUUISlideshowViewController;
  [(SUUISlideshowViewController *)&v8 willAnimateRotationToInterfaceOrientation:a3 duration:a4];
}

- (id)pageViewController:(id)a3 viewControllerAfterViewController:(id)a4
{
  v5 = [a4 indexInCollection] + 1;

  return [(SUUISlideshowViewController *)self _itemViewControllerForIndex:v5];
}

- (id)pageViewController:(id)a3 viewControllerBeforeViewController:(id)a4
{
  v5 = [a4 indexInCollection] - 1;

  return [(SUUISlideshowViewController *)self _itemViewControllerForIndex:v5];
}

- (void)pageViewController:(id)a3 didFinishAnimating:(BOOL)a4 previousViewControllers:(id)a5 transitionCompleted:(BOOL)a6
{
  if (a6)
  {
    v7 = [a3 viewControllers];
    v8 = [v7 objectAtIndexedSubscript:0];

    self->_currentIndex = [v8 indexInCollection];
    [(SUUISlideshowViewController *)self _updateCurrentIndex];
  }
}

- (void)slideshowItemViewControllerDidDismissWithPinchGesture:(id)a3 ratio:(double)a4
{
  if (a4 > 0.0)
  {
    v6 = [(SUUISlideshowViewController *)self delegate];
    [(SUUISlideshowViewController *)self _restoreStatusBarAppearanceState];
    if (objc_opt_respondsToSelector())
    {
      [v6 slideshowViewControllerDidFinish:self];
    }

    else
    {
      [(SUUISlideshowViewController *)self dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (id)_itemViewControllerForIndex:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = WeakRetained;
  if (a3 < 0 || !WeakRetained)
  {

    goto LABEL_11;
  }

  v7 = objc_loadWeakRetained(&self->_dataSource);
  v8 = [v7 numberOfItemsInSlideshowViewController:self];

  if (v8 <= a3)
  {
LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  itemViewControllersCache = self->_itemViewControllersCache;
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v11 = [(NSMutableDictionary *)itemViewControllersCache objectForKeyedSubscript:v10];

  if (!v11)
  {
    v11 = objc_alloc_init(SUUISlideshowItemViewController);
    [(SUUISlideshowItemViewController *)v11 setClientContext:self->_clientContext];
    [(SUUISlideshowItemViewController *)v11 setIndexInCollection:a3];
    [(SUUISlideshowItemViewController *)v11 setDelegate:self];
    v12 = objc_loadWeakRetained(&self->_dataSource);
    v13 = [v12 slideshowViewController:self placeholderImageAtIndex:a3];

    if (v13)
    {
      [(SUUISlideshowItemViewController *)v11 setItemImage:v13];
    }

    v14 = objc_loadWeakRetained(&self->_dataSource);
    v15 = [v14 slideshowViewController:self dataConsumerAtIndex:a3];

    v16 = objc_loadWeakRetained(&self->_dataSource);
    v17 = [v16 slideshowViewController:self imageURLAtIndex:a3];

    if (v17)
    {
      v18 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURL:v17];
      [v18 setITunesStoreRequest:0];
      [v18 setDataConsumer:v15];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __59__SUUISlideshowViewController__itemViewControllerForIndex___block_invoke;
      v22[3] = &unk_2798F78A8;
      v23 = v11;
      [v18 setOutputBlock:v22];
      [(NSOperationQueue *)self->_remoteLoadQueue addOperation:v18];
    }

    v19 = self->_itemViewControllersCache;
    v20 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [(NSMutableDictionary *)v19 setObject:v11 forKeyedSubscript:v20];
  }

LABEL_12:

  return v11;
}

void __59__SUUISlideshowViewController__itemViewControllerForIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__SUUISlideshowViewController__itemViewControllerForIndex___block_invoke_2;
  v5[3] = &unk_2798F5AF8;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

- (void)_updateTitleWithIndex:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  if (WeakRetained)
  {
    v15 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v15 setNumberStyle:1];
    v6 = MEMORY[0x277CCABB0];
    v7 = objc_loadWeakRetained(&self->_dataSource);
    v8 = [v6 numberWithInteger:{objc_msgSend(v7, "numberOfItemsInSlideshowViewController:", self)}];
    v9 = [v15 stringFromNumber:v8];

    v10 = [MEMORY[0x277CCABB0] numberWithInteger:a3 + 1];
    v11 = [v15 stringFromNumber:v10];

    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SUUIClientContext *)clientContext localizedStringForKey:@"SCREENSHOTS_INDEX_STRING"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"SCREENSHOTS_INDEX_STRING" inBundles:0];
    }
    v13 = ;
    v14 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v13 validFormatSpecifiers:@"%@%@" error:0, v11, v9];
    [(SUUISlideshowViewController *)self setTitle:v14];
  }

  else
  {

    [(SUUISlideshowViewController *)self setTitle:0];
  }
}

- (void)_contentViewTapped:(id)a3
{
  v7 = a3;
  if ([v7 numberOfTapsRequired] == 1)
  {
    if ([v7 numberOfTouches] == 1)
    {
      if (self->_overlayVisible)
      {
        if (self->_overlayVisibilityWillChangeWithDelay)
        {
          self->_shouldCancelDelayedOverlayVisibilityChange = 1;
        }
      }

      else
      {
        [(SUUISlideshowViewController *)self _fadeOutOverlayAfterDelay:4];
      }

      [(SUUISlideshowViewController *)self _toggleFadeOverlay];
    }
  }

  else if ([v7 numberOfTapsRequired] == 2)
  {
    v4 = [(UIPageViewController *)self->_pageViewController viewControllers];
    v5 = [v4 objectAtIndexedSubscript:0];

    v6 = [v5 imageScrollView];
    [v7 locationInView:v6];
    [v6 zoomIntoPoint:?];
  }
}

- (void)_doneButtonTapped:(id)a3
{
  v4 = [(SUUISlideshowViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 slideshowViewControllerDidFinish:self];
  }

  else
  {
    [(SUUISlideshowViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_toggleFadeOverlay
{
  v3 = [(SUUISlideshowViewController *)self navigationController];

  if (v3)
  {
    v4 = !self->_overlayVisible;

    [(SUUISlideshowViewController *)self _setOverlayVisible:v4 animated:1];
  }
}

- (void)_fadeOutOverlayAfterDelay:(unint64_t)a3
{
  if (!self->_overlayVisibilityWillChangeWithDelay)
  {
    self->_overlayVisibilityWillChangeWithDelay = 1;
    objc_initWeak(&location, self);
    v4 = dispatch_time(0, 1000000000 * a3);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__SUUISlideshowViewController__fadeOutOverlayAfterDelay___block_invoke;
    block[3] = &unk_2798F72B0;
    objc_copyWeak(v6, &location);
    v6[1] = a3;
    dispatch_after(v4, MEMORY[0x277D85CD0], block);
    objc_destroyWeak(v6);
    objc_destroyWeak(&location);
  }
}

void __57__SUUISlideshowViewController__fadeOutOverlayAfterDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[1026] = 0;
    if (WeakRetained[1027] == 1)
    {
      v3 = WeakRetained;
      [WeakRetained _fadeOutOverlayAfterDelay:*(a1 + 40)];
      WeakRetained = v3;
    }

    else
    {
      if ((WeakRetained[1025] & 1) == 0)
      {
        v4 = WeakRetained;
        [WeakRetained _setOverlayVisible:0 animated:1];
        WeakRetained = v4;
      }

      WeakRetained[1025] = 0;
    }
  }
}

- (void)_setOverlayVisible:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_overlayVisible != a3)
  {
    v4 = a4;
    v5 = a3;
    v7 = [MEMORY[0x277D75128] sharedApplication];
    [v7 setStatusBarHidden:!v5 withAnimation:1];

    v8 = [(SUUISlideshowViewController *)self navigationController];
    v9 = [v8 navigationBar];

    v10 = 0.0;
    if (v5)
    {
      v11 = 1.0;
    }

    else
    {
      v11 = 0.0;
    }

    [v9 setAlpha:!v5];
    v12 = MEMORY[0x277D75D18];
    if (v4)
    {
      v10 = 0.349999994;
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __59__SUUISlideshowViewController__setOverlayVisible_animated___block_invoke;
    v14[3] = &unk_2798F6C18;
    v15 = v9;
    v16 = v11;
    v13 = v9;
    [v12 animateWithDuration:2 delay:v14 options:0 animations:v10 completion:0.0];
    self->_overlayVisible = v5;
  }
}

- (void)_saveStatusBarAppearanceState
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  self = (self + 1032);
  *&self->super.super._responderFlags = [v3 isStatusBarHidden];
  self->super.super.super.isa = [v3 statusBarStyle];
}

- (void)_restoreStatusBarAppearanceState
{
  v4 = [MEMORY[0x277D75128] sharedApplication];
  p_savedStatusBarState = &self->_savedStatusBarState;
  if (p_savedStatusBarState->hidden != [v4 isStatusBarHidden])
  {
    [v4 setStatusBarHidden:?];
  }

  if ([v4 statusBarStyle] != p_savedStatusBarState->style)
  {
    [v4 setStatusBarStyle:?];
  }
}

- (SUUISlideshowViewControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (SUUISlideshowViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end