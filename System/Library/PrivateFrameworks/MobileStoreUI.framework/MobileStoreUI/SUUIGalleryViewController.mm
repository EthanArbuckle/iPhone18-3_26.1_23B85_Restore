@interface SUUIGalleryViewController
- (SUUIEmbeddedMediaViewDelegate)embeddedMediaDelegate;
- (SUUIGalleryViewController)initWithGalleryComponent:(id)a3 artworkLoader:(id)a4;
- (SUUIMediaComponent)selectedMediaComponent;
- (id)_newViewControllerWithIndex:(int64_t)a3;
- (id)_newViewWithMediaComponent:(id)a3;
- (id)_selectedViewController;
- (id)pageViewController:(id)a3 viewControllerAfterViewController:(id)a4;
- (id)pageViewController:(id)a3 viewControllerBeforeViewController:(id)a4;
- (void)_finishPaneAnimation;
- (void)_showNextPaneAnimated:(BOOL)a3;
- (void)_startCycleTimer;
- (void)_stopCycleTimer;
- (void)_tapAction:(id)a3;
- (void)artworkRequest:(id)a3 didLoadImage:(id)a4;
- (void)dealloc;
- (void)loadArtworkForChildComponent:(id)a3 reason:(int64_t)a4 constraintWidth:(double)a5;
- (void)loadView;
- (void)pageViewController:(id)a3 didFinishAnimating:(BOOL)a4 previousViewControllers:(id)a5 transitionCompleted:(BOOL)a6;
- (void)performActionForSelectedComponentAnimated:(BOOL)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setEmbeddedMediaDelegate:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SUUIGalleryViewController

- (SUUIGalleryViewController)initWithGalleryComponent:(id)a3 artworkLoader:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SUUIGalleryViewController;
  v9 = [(SUUIGalleryViewController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_artworkLoader, a4);
    v11 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    componentArtworkRequests = v10->_componentArtworkRequests;
    v10->_componentArtworkRequests = v11;

    objc_storeStrong(&v10->_galleryComponent, a3);
  }

  return v10;
}

- (void)dealloc
{
  cycleTimer = self->_cycleTimer;
  if (cycleTimer)
  {
    dispatch_source_cancel(cycleTimer);
  }

  [(UIPageViewController *)self->_pageViewController setDataSource:0];
  [(UIPageViewController *)self->_pageViewController setDelegate:0];
  [(UITapGestureRecognizer *)self->_tapGestureRecognizer removeTarget:self action:0];
  v4.receiver = self;
  v4.super_class = SUUIGalleryViewController;
  [(SUUIGalleryViewController *)&v4 dealloc];
}

- (void)loadArtworkForChildComponent:(id)a3 reason:(int64_t)a4 constraintWidth:(double)a5
{
  v16 = a3;
  v8 = [(NSMapTable *)self->_componentArtworkRequests objectForKey:?];
  v9 = v8;
  if (!v8 || !-[SUUIResourceLoader trySetReason:forRequestWithIdentifier:](self->_artworkLoader, "trySetReason:forRequestWithIdentifier:", a4, [v8 unsignedIntegerValue]))
  {
    v10 = [v16 bestThumbnailArtwork];
    v11 = [v10 URL];
    if (v11)
    {
      v12 = objc_alloc_init(SUUIArtworkRequest);
      v13 = [SUUISizeToFitImageDataConsumer consumerWithConstraintSize:a5, 0.0];
      [(SUUIArtworkRequest *)v12 setDataConsumer:v13];

      [(SUUIArtworkRequest *)v12 setDelegate:self];
      [(SUUIArtworkRequest *)v12 setURL:v11];
      componentArtworkRequests = self->_componentArtworkRequests;
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SUUIResourceRequest requestIdentifier](v12, "requestIdentifier")}];
      [(NSMapTable *)componentArtworkRequests setObject:v15 forKey:v16];

      [(SUUIResourceLoader *)self->_artworkLoader loadResourceWithRequest:v12 reason:a4];
    }
  }
}

- (void)performActionForSelectedComponentAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(SUUIGalleryViewController *)self _selectedViewController];
  v5 = [v4 mediaView];

  [v5 beginPlaybackAnimated:v3];
}

- (SUUIMediaComponent)selectedMediaComponent
{
  v2 = [(SUUIGalleryViewController *)self _selectedViewController];
  v3 = [v2 component];

  return v3;
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = [(SUUIGalleryViewController *)self view];
  [v5 setBackgroundColor:v4];

  v7 = [(SUUIGalleryViewController *)self _selectedViewController];
  v6 = [v7 view];
  [v6 setBackgroundColor:v4];
}

- (void)setEmbeddedMediaDelegate:(id)a3
{
  v4 = a3;
  v5 = [(SUUIGalleryViewController *)self _selectedViewController];
  v6 = [v5 mediaView];

  [v6 setDelegate:v4];
  objc_storeWeak(&self->_embeddedMediaDelegate, v4);
}

- (void)loadView
{
  v40[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(SUUIGalleryViewController *)self setView:v3];
  v4 = [(SUUIGalleryPageComponent *)self->_galleryComponent childComponents];
  v5 = [v4 count];

  pageIndicator = self->_pageIndicator;
  if (pageIndicator)
  {
    goto LABEL_6;
  }

  if (![(SUUIGalleryPageComponent *)self->_galleryComponent hidesPageIndicator]&& v5 >= 2)
  {
    v7 = objc_alloc_init(MEMORY[0x277D757E0]);
    v8 = self->_pageIndicator;
    self->_pageIndicator = v7;

    [(UIPageControl *)self->_pageIndicator setEnabled:0];
    [(UIPageControl *)self->_pageIndicator setNumberOfPages:v5];
    [(UIPageControl *)self->_pageIndicator sizeToFit];
  }

  pageIndicator = self->_pageIndicator;
  if (pageIndicator)
  {
LABEL_6:
    [(UIPageControl *)pageIndicator bounds];
    [v3 setFrame:?];
  }

  pageViewController = self->_pageViewController;
  if (!pageViewController)
  {
    v10 = [objc_alloc(MEMORY[0x277D757F0]) initWithTransitionStyle:1 navigationOrientation:0 options:0];
    v11 = self->_pageViewController;
    self->_pageViewController = v10;

    [(UIPageViewController *)self->_pageViewController setDataSource:self];
    [(UIPageViewController *)self->_pageViewController setDelegate:self];
    if (v5 >= 1)
    {
      v12 = [(SUUIGalleryViewController *)self _newViewControllerWithIndex:0];
      v40[0] = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];

      [(UIPageViewController *)self->_pageViewController setViewControllers:v13 direction:0 animated:0 completion:0];
    }

    [(SUUIGalleryViewController *)self addChildViewController:self->_pageViewController];
    pageViewController = self->_pageViewController;
  }

  v14 = [(UIPageViewController *)pageViewController view];
  [v14 setAutoresizingMask:18];
  [v3 bounds];
  [v14 setFrame:?];
  [v3 addSubview:v14];
  [v14 subviews];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v15 = v37 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v35;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v34 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v20 setDelegate:self];
          [v20 setScrollsToTop:0];
          goto LABEL_21;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  if (!self->_tapGestureRecognizer)
  {
    v21 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__tapAction_];
    tapGestureRecognizer = self->_tapGestureRecognizer;
    self->_tapGestureRecognizer = v21;

    v23 = [(UIPageViewController *)self->_pageViewController gestureRecognizers];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v24 = [v23 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v31;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v31 != v26)
          {
            objc_enumerationMutation(v23);
          }

          [(UITapGestureRecognizer *)self->_tapGestureRecognizer requireGestureRecognizerToFail:*(*(&v30 + 1) + 8 * j)];
        }

        v25 = [v23 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v25);
    }

    [v14 addGestureRecognizer:self->_tapGestureRecognizer];
  }

  v28 = self->_pageIndicator;
  if (v28)
  {
    [(UIPageControl *)v28 setAutoresizingMask:10];
    v29 = self->_pageIndicator;
    [v3 bounds];
    [(UIPageControl *)v29 setFrame:?];
    [v3 addSubview:self->_pageIndicator];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  [(SUUIGalleryViewController *)self _startCycleTimer];
  v5.receiver = self;
  v5.super_class = SUUIGalleryViewController;
  [(SUUIGalleryViewController *)&v5 viewDidAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(SUUIGalleryViewController *)self _stopCycleTimer];
  v5.receiver = self;
  v5.super_class = SUUIGalleryViewController;
  [(SUUIGalleryViewController *)&v5 viewWillDisappear:v3];
}

- (void)artworkRequest:(id)a3 didLoadImage:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(SUUIGalleryViewController *)self _selectedViewController];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 component];
    v10 = [(NSMapTable *)self->_componentArtworkRequests objectForKey:v9];
    v11 = [v10 unsignedIntegerValue];
    if (v11 == [v13 requestIdentifier])
    {
      v12 = [v8 view];
      [v12 setThumbnailImage:v6];
    }
  }
}

- (id)pageViewController:(id)a3 viewControllerBeforeViewController:(id)a4
{
  v4 = -[SUUIGalleryViewController _newViewControllerWithIndex:](self, "_newViewControllerWithIndex:", [a4 galleryIndex] - 1);

  return v4;
}

- (id)pageViewController:(id)a3 viewControllerAfterViewController:(id)a4
{
  v4 = -[SUUIGalleryViewController _newViewControllerWithIndex:](self, "_newViewControllerWithIndex:", [a4 galleryIndex] + 1);

  return v4;
}

- (void)pageViewController:(id)a3 didFinishAnimating:(BOOL)a4 previousViewControllers:(id)a5 transitionCompleted:(BOOL)a6
{
  v7 = [(SUUIGalleryViewController *)self _selectedViewController:a3];
  -[UIPageControl setCurrentPage:](self->_pageIndicator, "setCurrentPage:", [v7 galleryIndex]);
}

- (void)_tapAction:(id)a3
{
  if ([a3 state] == 3)
  {

    [(SUUIGalleryViewController *)self performActionForSelectedComponentAnimated:1];
  }
}

- (void)_finishPaneAnimation
{
  v3 = [(SUUIGalleryViewController *)self _selectedViewController];
  -[UIPageControl setCurrentPage:](self->_pageIndicator, "setCurrentPage:", [v3 galleryIndex]);
  [(SUUIGalleryViewController *)self _startCycleTimer];
}

- (id)_newViewControllerWithIndex:(int64_t)a3
{
  v5 = [(SUUIGalleryPageComponent *)self->_galleryComponent childComponents];
  v6 = a3 % [v5 count];
  v7 = [v5 objectAtIndex:v6];
  v8 = [[SUUIGalleryPaneViewController alloc] initWithMediaComponent:v7 galleryIndex:v6];
  v9 = [(NSMapTable *)self->_componentArtworkRequests objectForKey:v7];
  v10 = v9;
  if (v9)
  {
    v11 = -[SUUIResourceLoader cachedResourceForRequestIdentifier:](self->_artworkLoader, "cachedResourceForRequestIdentifier:", [v9 unsignedIntegerValue]);
  }

  else
  {
    v11 = 0;
  }

  v12 = [(SUUIGalleryViewController *)self _newViewWithMediaComponent:v7];
  [v12 setAutoresizingMask:18];
  v13 = [(SUUIGalleryViewController *)self view];
  v14 = [v13 backgroundColor];
  [v12 setBackgroundColor:v14];

  [v12 setThumbnailImage:v11];
  [(SUUIGalleryPaneViewController *)v8 setView:v12];

  return v8;
}

- (id)_newViewWithMediaComponent:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SUUIEmbeddedMediaView);
  v6 = [v4 accessibilityLabel];
  [(SUUIEmbeddedMediaView *)v5 setAccessibilityLabel:v6];

  WeakRetained = objc_loadWeakRetained(&self->_embeddedMediaDelegate);
  [(SUUIEmbeddedMediaView *)v5 setDelegate:WeakRetained];

  -[SUUIEmbeddedMediaView setMediaType:](v5, "setMediaType:", [v4 mediaType]);
  v8 = [v4 mediaURLString];

  [(SUUIEmbeddedMediaView *)v5 setMediaURLString:v8];
  return v5;
}

- (id)_selectedViewController
{
  v2 = [(UIPageViewController *)self->_pageViewController viewControllers];
  if ([v2 count])
  {
    v3 = [v2 objectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_showNextPaneAnimated:(BOOL)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = [(SUUIGalleryViewController *)self view];
  v5 = [v4 isUserInteractionEnabled];
  [v4 setUserInteractionEnabled:0];
  [(SUUIGalleryViewController *)self _stopCycleTimer];
  v6 = [(SUUIGalleryViewController *)self _selectedViewController];
  v7 = -[SUUIGalleryViewController _newViewControllerWithIndex:](self, "_newViewControllerWithIndex:", [v6 galleryIndex] + 1);
  objc_initWeak(&location, self);
  pageViewController = self->_pageViewController;
  v14[0] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__SUUIGalleryViewController__showNextPaneAnimated___block_invoke;
  v10[3] = &unk_2798FBE60;
  objc_copyWeak(&v11, &location);
  v12 = v5;
  [(UIPageViewController *)pageViewController setViewControllers:v9 direction:0 animated:1 completion:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __51__SUUIGalleryViewController__showNextPaneAnimated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained view];
  [v3 setUserInteractionEnabled:*(a1 + 40)];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 _finishPaneAnimation];
}

- (void)_startCycleTimer
{
  [(SUUIGalleryPageComponent *)self->_galleryComponent cycleInterval];
  if (v3 > 0.0)
  {
    v4 = v3;
    cycleTimer = self->_cycleTimer;
    if (cycleTimer)
    {
      v6 = dispatch_time(0, (v3 * 1000000000.0));

      dispatch_source_set_timer(cycleTimer, v6, 0, 0);
    }

    else
    {
      objc_initWeak(&location, self);
      v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
      v8 = self->_cycleTimer;
      self->_cycleTimer = v7;

      v9 = self->_cycleTimer;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __45__SUUIGalleryViewController__startCycleTimer__block_invoke;
      v12[3] = &unk_2798F67A0;
      objc_copyWeak(&v13, &location);
      dispatch_source_set_event_handler(v9, v12);
      v10 = self->_cycleTimer;
      v11 = dispatch_time(0, (v4 * 1000000000.0));
      dispatch_source_set_timer(v10, v11, 0, 0);
      dispatch_resume(self->_cycleTimer);
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }
}

void __45__SUUIGalleryViewController__startCycleTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showNextPaneAnimated:1];
}

- (void)_stopCycleTimer
{
  cycleTimer = self->_cycleTimer;
  if (cycleTimer)
  {
    dispatch_source_cancel(cycleTimer);
    v4 = self->_cycleTimer;
    self->_cycleTimer = 0;
  }
}

- (SUUIEmbeddedMediaViewDelegate)embeddedMediaDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_embeddedMediaDelegate);

  return WeakRetained;
}

@end