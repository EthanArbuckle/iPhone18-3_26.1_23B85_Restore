@interface SUUIIPhoneSlideshowViewController
- (SUUIIPhoneSlideshowViewController)initWithNibName:(id)name bundle:(id)bundle;
- (SUUISlideshowViewControllerDataSource)dataSource;
- (SUUISlideshowViewControllerDelegate)delegate;
- (id)_imageAtIndex:(int64_t)index;
- (id)_placeholderImageAtIndex:(int64_t)index;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)currentIndex;
- (unint64_t)supportedInterfaceOrientations;
- (void)_doneAction:(id)action;
- (void)_reloadPageControl;
- (void)_reloadSize;
- (void)_setImage:(id)image atIndex:(int64_t)index;
- (void)dealloc;
- (void)loadView;
- (void)reloadData;
- (void)setCurrentIndex:(int64_t)index;
- (void)setDataSource:(id)source;
- (void)viewDidLayoutSubviews;
@end

@implementation SUUIIPhoneSlideshowViewController

- (SUUIIPhoneSlideshowViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v14.receiver = self;
  v14.super_class = SUUIIPhoneSlideshowViewController;
  v4 = [(SUUIIPhoneSlideshowViewController *)&v14 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    images = v4->_images;
    v4->_images = v5;

    v7 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v4->_operationQueue;
    v4->_operationQueue = v7;

    [(NSOperationQueue *)v4->_operationQueue setMaxConcurrentOperationCount:2];
    v9 = objc_alloc_init(MEMORY[0x277CCABD8]);
    placeholderQueue = v4->_placeholderQueue;
    v4->_placeholderQueue = v9;

    [(NSOperationQueue *)v4->_placeholderQueue setMaxConcurrentOperationCount:2];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    placeholderImages = v4->_placeholderImages;
    v4->_placeholderImages = dictionary;

    v4->_indexToScrollToOnLoadView = 0x7FFFFFFFFFFFFFFFLL;
    [(SUUIIPhoneSlideshowViewController *)v4 setModalPresentationStyle:2];
    [(SUUIIPhoneSlideshowViewController *)v4 setEdgesForExtendedLayout:0];
  }

  return v4;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  operations = [(NSOperationQueue *)self->_operationQueue operations];
  v4 = [operations countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(operations);
        }

        [*(*(&v9 + 1) + 8 * v7++) setOutputBlock:0];
      }

      while (v5 != v7);
      v5 = [operations countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSOperationQueue *)self->_operationQueue cancelAllOperations];
  [(NSOperationQueue *)self->_placeholderQueue cancelAllOperations];
  v8.receiver = self;
  v8.super_class = SUUIIPhoneSlideshowViewController;
  [(SUUIIPhoneSlideshowViewController *)&v8 dealloc];
}

- (void)loadView
{
  v3 = [SUUIScrollForwardingView alloc];
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v42 = [(SUUIScrollForwardingView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], v5, v6, v7];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(SUUIScrollForwardingView *)v42 setBackgroundColor:clearColor];

  [(SUUIIPhoneSlideshowViewController *)self setView:v42];
  v9 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:10060];
  [v9 setAutoresizingMask:18];
  [(SUUIScrollForwardingView *)v42 bounds];
  [v9 setFrame:?];
  [(SUUIScrollForwardingView *)v42 addSubview:v9];
  v10 = objc_alloc_init(SUUIItemGridCollectionViewLayout);
  clearColor2 = [MEMORY[0x277D75348] clearColor];
  [(SUUIItemGridCollectionViewLayout *)v10 setOddRowBackgroundColor:clearColor2];

  clearColor3 = [MEMORY[0x277D75348] clearColor];
  [(SUUIItemGridCollectionViewLayout *)v10 setEvenRowBackgroundColor:clearColor3];

  [(UICollectionViewFlowLayout *)v10 setScrollDirection:1];
  [(UICollectionViewFlowLayout *)v10 setMinimumLineSpacing:0.0];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v15 = v14 + -54.0;
  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 bounds];
  [(UICollectionViewFlowLayout *)v10 setItemSize:v15, v17 + -64.0];

  v18 = [[SUUIGiftThemeCollectionView alloc] initWithFrame:v10 collectionViewLayout:v4, v5, v6, v7];
  collectionView = self->_collectionView;
  self->_collectionView = v18;

  v20 = self->_collectionView;
  clearColor4 = [MEMORY[0x277D75348] clearColor];
  [(SUUIGiftThemeCollectionView *)v20 setBackgroundColor:clearColor4];

  [(SUUIGiftThemeCollectionView *)self->_collectionView setVisibleBoundsInsets:0.0, -27.0, 0.0, -27.0];
  [(SUUIGiftThemeCollectionView *)self->_collectionView setDataSource:self];
  [(SUUIGiftThemeCollectionView *)self->_collectionView setDelegate:self];
  [(SUUIGiftThemeCollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"a"];
  [(SUUIGiftThemeCollectionView *)self->_collectionView setAlwaysBounceHorizontal:1];
  [(SUUIGiftThemeCollectionView *)self->_collectionView setShowsVerticalScrollIndicator:0];
  [(SUUIGiftThemeCollectionView *)self->_collectionView setShowsHorizontalScrollIndicator:0];
  [(SUUIGiftThemeCollectionView *)self->_collectionView setClipsToBounds:0];
  [(SUUIGiftThemeCollectionView *)self->_collectionView setPagingEnabled:1];
  v22 = self->_collectionView;
  mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen3 bounds];
  v25 = v24 + -54.0;
  mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen4 bounds];
  [(SUUIGiftThemeCollectionView *)v22 setFrame:27.0, 0.0, v25, v27 + -64.0];

  [(SUUIScrollForwardingView *)v42 addSubview:self->_collectionView];
  [(SUUIScrollForwardingView *)v42 setScrollView:self->_collectionView];
  v28 = objc_alloc_init(MEMORY[0x277D757E0]);
  pageControl = self->_pageControl;
  self->_pageControl = v28;

  v30 = self->_pageControl;
  tintColor = [(UIPageControl *)v30 tintColor];
  [(UIPageControl *)v30 setCurrentPageIndicatorTintColor:tintColor];

  v32 = self->_pageControl;
  v33 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.3];
  [(UIPageControl *)v32 setPageIndicatorTintColor:v33];

  v34 = self->_pageControl;
  [(SUUIScrollForwardingView *)v42 bounds];
  [(UIPageControl *)v34 setFrame:0.0, -25.0];
  [(UIPageControl *)self->_pageControl setAutoresizingMask:10];
  [(UIPageControl *)self->_pageControl setUserInteractionEnabled:0];
  [(SUUIScrollForwardingView *)v42 addSubview:self->_pageControl];
  [(SUUIIPhoneSlideshowViewController *)self _reloadPageControl];
  navigationItem = [(SUUIIPhoneSlideshowViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1];
  v36 = objc_alloc_init(MEMORY[0x277D751E0]);
  [v36 setAction:sel__doneAction_];
  [v36 setTarget:self];
  clientContext = self->_clientContext;
  if (clientContext)
  {
    [(SUUIClientContext *)clientContext localizedStringForKey:@"SCREENSHOTS_BUTTON_DONE"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"SCREENSHOTS_BUTTON_DONE" inBundles:0];
  }
  v38 = ;
  [v36 setTitle:v38];

  [v36 setStyle:2];
  [navigationItem setRightBarButtonItem:v36];
  title = [(SUUIIPhoneSlideshowViewController *)self title];

  if (!title)
  {
    v40 = self->_clientContext;
    if (v40)
    {
      [(SUUIClientContext *)v40 localizedStringForKey:@"SCREENSHOTS_TITLE"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"SCREENSHOTS_TITLE" inBundles:0];
    }
    v41 = ;
    [(SUUIIPhoneSlideshowViewController *)self setTitle:v41];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  if (SUUIUserInterfaceIdiom(self->_clientContext) == 1)
  {
    return 30;
  }

  if (SUUIAllowsLandscapePhone())
  {
    return 26;
  }

  return 2;
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SUUIIPhoneSlideshowViewController;
  [(SUUIIPhoneSlideshowViewController *)&v3 viewDidLayoutSubviews];
  [(SUUIIPhoneSlideshowViewController *)self _reloadSize];
}

- (int64_t)currentIndex
{
  collectionView = self->_collectionView;
  if (collectionView)
  {
    return SUUIPageForCollectionView(collectionView);
  }

  indexToScrollToOnLoadView = self->_indexToScrollToOnLoadView;
  if (indexToScrollToOnLoadView == 0x7FFFFFFFFFFFFFFFLL)
  {
    return SUUIPageForCollectionView(collectionView);
  }

  else
  {
    return indexToScrollToOnLoadView;
  }
}

- (void)reloadData
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v5 = [WeakRetained numberOfItemsInSlideshowViewController:self];

  [(NSMutableArray *)self->_images removeAllObjects];
  [(NSOperationQueue *)self->_operationQueue cancelAllOperations];
  [(NSOperationQueue *)self->_placeholderQueue cancelAllOperations];
  if (v5 >= 1)
  {
    for (i = 0; v5 != i; ++i)
    {
      v7 = objc_loadWeakRetained(&self->_dataSource);
      v8 = [v7 slideshowViewController:self imageURLAtIndex:i];

      v9 = objc_loadWeakRetained(&self->_dataSource);
      v10 = [v9 slideshowViewController:self dataConsumerAtIndex:i];

      [v10 imageSize];
      v12 = v11;
      v14 = v13;
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      v17 = userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL;
      v18 = 250.0;
      if (v17 != 1)
      {
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen bounds];
        v18 = v19 + -70.0;
      }

      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 bounds];
      v22 = v21;

      if (v17 != 1)
      {
      }

      v23 = v22 + -125.0;
      if (v12 > v18 || v14 > v23)
      {
        forcesPortrait = [v10 forcesPortrait];
        v25 = v12 > v14;
        if ((forcesPortrait & v25) != 0)
        {
          v26 = v14;
        }

        else
        {
          v26 = v12;
        }

        if ((forcesPortrait & v25) != 0)
        {
          v27 = v12;
        }

        else
        {
          v27 = v14;
        }

        v28 = fmin(v18 / v26, v23 / v27);
        [v10 setImageSize:{floor(v26 * v28), floor(v27 * v28)}];
        if (!v8)
        {
          goto LABEL_19;
        }
      }

      else if (!v8)
      {
        goto LABEL_19;
      }

      v29 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURL:v8];
      [v29 setDataConsumer:v10];
      [v29 setITunesStoreRequest:0];
      objc_initWeak(&location, self);
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __47__SUUIIPhoneSlideshowViewController_reloadData__block_invoke;
      v32[3] = &unk_2798FA6F8;
      objc_copyWeak(v33, &location);
      v33[1] = i;
      [v29 setOutputBlock:v32];
      [(NSOperationQueue *)self->_operationQueue addOperation:v29];
      objc_destroyWeak(v33);
      objc_destroyWeak(&location);

LABEL_19:
      images = self->_images;
      null = [MEMORY[0x277CBEB68] null];
      [(NSMutableArray *)images addObject:null];
    }
  }

  [(SUUIGiftThemeCollectionView *)self->_collectionView reloadData];
  [(SUUIIPhoneSlideshowViewController *)self _reloadPageControl];
}

void __47__SUUIIPhoneSlideshowViewController_reloadData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SUUIIPhoneSlideshowViewController_reloadData__block_invoke_2;
  block[3] = &unk_2798FA9C0;
  objc_copyWeak(v8, (a1 + 32));
  v4 = *(a1 + 40);
  v7 = v3;
  v8[1] = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(v8);
}

void __47__SUUIIPhoneSlideshowViewController_reloadData__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setImage:*(a1 + 32) atIndex:*(a1 + 48)];
}

- (void)setCurrentIndex:(int64_t)index
{
  collectionView = self->_collectionView;
  if (collectionView)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v7 = (v6 + -54.0) * index;
    [(SUUIGiftThemeCollectionView *)self->_collectionView contentOffset];
    [(SUUIGiftThemeCollectionView *)collectionView setContentOffset:v7];
  }

  else
  {
    self->_indexToScrollToOnLoadView = index;
  }
}

- (void)setDataSource:(id)source
{
  obj = source;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    [(SUUIIPhoneSlideshowViewController *)self reloadData];
    v5 = obj;
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  collectionView = self->_collectionView;
  pathCopy = path;
  v7 = [(SUUIGiftThemeCollectionView *)collectionView dequeueReusableCellWithReuseIdentifier:@"a" forIndexPath:pathCopy];
  [v7 setImageSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  v8 = [pathCopy row];

  v9 = [(SUUIIPhoneSlideshowViewController *)self _imageAtIndex:v8];
  [v7 setImage:v9];

  return v7;
}

- (void)_doneAction:(id)action
{
  delegate = [(SUUIIPhoneSlideshowViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate slideshowViewControllerDidFinish:self];
  }

  else
  {
    [(SUUIIPhoneSlideshowViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (id)_imageAtIndex:(int64_t)index
{
  v5 = [(NSMutableArray *)self->_images objectAtIndex:?];
  null = [MEMORY[0x277CBEB68] null];

  if (v5 == null)
  {
    v7 = [(SUUIIPhoneSlideshowViewController *)self _placeholderImageAtIndex:index];

    v5 = v7;
  }

  return v5;
}

- (id)_placeholderImageAtIndex:(int64_t)index
{
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained slideshowViewController:self dataConsumerAtIndex:index];

  v7 = objc_loadWeakRetained(&self->_dataSource);
  v8 = [v7 slideshowViewController:self placeholderImageAtIndex:index];

  if (v8)
  {
    v9 = MEMORY[0x277CCA8C8];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __62__SUUIIPhoneSlideshowViewController__placeholderImageAtIndex___block_invoke;
    v21 = &unk_2798FC3F8;
    v22 = v6;
    v23 = v8;
    selfCopy = self;
    v25[1] = index;
    objc_copyWeak(v25, &location);
    v10 = [v9 blockOperationWithBlock:&v18];
    [(NSOperationQueue *)self->_placeholderQueue addOperation:v10, v18, v19, v20, v21];

    objc_destroyWeak(v25);
  }

  placeholderImages = self->_placeholderImages;
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:index];
  v13 = [(NSMutableDictionary *)placeholderImages objectForKey:v12];

  if (!v13)
  {
    v14 = [MEMORY[0x277D75348] colorWithWhite:0.8 alpha:1.0];
    v13 = [v6 imageForColor:v14];

    v15 = self->_placeholderImages;
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:index];
    [(NSMutableDictionary *)v15 setObject:v13 forKey:v16];
  }

  objc_destroyWeak(&location);

  return v13;
}

void __62__SUUIIPhoneSlideshowViewController__placeholderImageAtIndex___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) imageForImage:*(a1 + 40)];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__SUUIIPhoneSlideshowViewController__placeholderImageAtIndex___block_invoke_2;
  v5[3] = &unk_2798FC3D0;
  v3 = *(a1 + 48);
  v6 = v2;
  v7 = v3;
  v8[1] = *(a1 + 64);
  v4 = v2;
  objc_copyWeak(v8, (a1 + 56));
  dispatch_async(MEMORY[0x277D85CD0], v5);
  objc_destroyWeak(v8);
}

void __62__SUUIIPhoneSlideshowViewController__placeholderImageAtIndex___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(*(a1 + 40) + 1048) objectAtIndex:*(a1 + 56)];
    v3 = [MEMORY[0x277CBEB68] null];

    if (v2 == v3)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      [WeakRetained _setImage:*(a1 + 32) atIndex:*(a1 + 56)];
    }
  }
}

- (void)_setImage:(id)image atIndex:(int64_t)index
{
  if (image)
  {
    images = self->_images;
    imageCopy = image;
    [(NSMutableArray *)images replaceObjectAtIndex:index withObject:imageCopy];
    collectionView = self->_collectionView;
    v9 = [MEMORY[0x277CCAA70] indexPathForItem:index inSection:0];
    v10 = [(SUUIGiftThemeCollectionView *)collectionView cellForItemAtIndexPath:v9];

    [v10 setImage:imageCopy];
  }
}

- (void)_reloadPageControl
{
  [(UIPageControl *)self->_pageControl setNumberOfPages:[(NSMutableArray *)self->_images count]];
  pageControl = self->_pageControl;
  v4 = SUUIPageForCollectionView(self->_collectionView);

  [(UIPageControl *)pageControl setCurrentPage:v4];
}

- (void)_reloadSize
{
  view = [(SUUIIPhoneSlideshowViewController *)self view];
  [view frame];
  v5 = v4 + -54.0;

  view2 = [(SUUIIPhoneSlideshowViewController *)self view];
  [view2 frame];
  v8 = v7 + -64.0;

  collectionViewLayout = [(SUUIGiftThemeCollectionView *)self->_collectionView collectionViewLayout];
  [collectionViewLayout setItemSize:{v5, v8}];

  [(SUUIGiftThemeCollectionView *)self->_collectionView setFrame:27.0, 32.0, v5, v8];
  indexToScrollToOnLoadView = self->_indexToScrollToOnLoadView;
  collectionView = self->_collectionView;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v14 = v13 + -54.0;
  if (indexToScrollToOnLoadView == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SUUIGiftThemeCollectionView *)collectionView setContentOffset:v14 * SUUIPageForCollectionView(self->_collectionView), 0.0];
  }

  else
  {
    [(SUUIGiftThemeCollectionView *)collectionView setContentOffset:v14 * self->_indexToScrollToOnLoadView, 0.0];

    self->_indexToScrollToOnLoadView = 0x7FFFFFFFFFFFFFFFLL;
  }

  v15 = self->_collectionView;

  [(SUUIGiftThemeCollectionView *)v15 reloadData];
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