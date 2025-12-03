@interface SUUIGiftThemePickerViewController
- (BOOL)_isIPadLarge;
- (SUUIGiftThemePickerViewController)initWithGift:(id)gift configuration:(id)configuration;
- (double)_cardHeight:(id)height;
- (double)_cardWidth;
- (double)_collectionViewWidth:(id)width;
- (double)_scrollInsetHorizontal:(id)horizontal;
- (id)_collectionView;
- (id)_flowLayout;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)_backgroundTapAction:(id)action;
- (void)_layoutCollectionViewWithTraits:(id)traits;
- (void)_nextAction:(id)action;
- (void)_setItemImage:(id)image error:(id)error;
- (void)_setSelectedThemeIndex:(int64_t)index animated:(BOOL)animated;
- (void)dealloc;
- (void)giftConfigurationController:(id)controller didLoadImageForTheme:(id)theme;
- (void)loadView;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidScroll:(id)scroll;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation SUUIGiftThemePickerViewController

- (SUUIGiftThemePickerViewController)initWithGift:(id)gift configuration:(id)configuration
{
  configurationCopy = configuration;
  v14.receiver = self;
  v14.super_class = SUUIGiftThemePickerViewController;
  v7 = [(SUUIGiftStepViewController *)&v14 initWithGift:gift configuration:configurationCopy];
  if (v7)
  {
    themes = [configurationCopy themes];
    themes = v7->_themes;
    v7->_themes = themes;

    [configurationCopy addObserver:v7];
    clientContext = [configurationCopy clientContext];
    v11 = clientContext;
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"GIFTING_THEME_TITLE" inTable:@"Gifting"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"GIFTING_THEME_TITLE" inBundles:0 inTable:@"Gifting"];
    }
    v12 = ;
    [(SUUIGiftThemePickerViewController *)v7 setTitle:v12];

    [(SUUIGiftThemePickerViewController *)v7 setEdgesForExtendedLayout:0];
  }

  return v7;
}

- (void)dealloc
{
  [(SUUIGiftThemeCollectionView *)self->_collectionView setDataSource:0];
  [(SUUIGiftThemeCollectionView *)self->_collectionView setDelegate:0];
  [(UITapGestureRecognizer *)self->_tapGestureRecognizer removeTarget:self action:0];
  v3.receiver = self;
  v3.super_class = SUUIGiftThemePickerViewController;
  [(SUUIGiftThemePickerViewController *)&v3 dealloc];
}

- (void)loadView
{
  v39 = objc_alloc_init(SUUIGiftThemeBackgroundView);
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [(SUUIGiftThemeBackgroundView *)v39 setBackgroundColor:systemBackgroundColor];

  [(SUUIGiftThemeBackgroundView *)v39 setClipsToBounds:1];
  [(SUUIGiftThemePickerViewController *)self setView:v39];
  tapGestureRecognizer = self->_tapGestureRecognizer;
  if (!tapGestureRecognizer)
  {
    v5 = objc_alloc_init(MEMORY[0x277D75B80]);
    v6 = self->_tapGestureRecognizer;
    self->_tapGestureRecognizer = v5;

    [(UITapGestureRecognizer *)self->_tapGestureRecognizer addTarget:self action:sel__backgroundTapAction_];
    tapGestureRecognizer = self->_tapGestureRecognizer;
  }

  [(SUUIGiftThemeBackgroundView *)v39 addGestureRecognizer:tapGestureRecognizer];
  _collectionView = [(SUUIGiftThemePickerViewController *)self _collectionView];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [_collectionView setBackgroundColor:clearColor];

  [(SUUIGiftThemeBackgroundView *)v39 addSubview:_collectionView];
  [(SUUIGiftThemeBackgroundView *)v39 setScrollView:_collectionView];
  if (!self->_pageControl)
  {
    v9 = objc_alloc_init(MEMORY[0x277D757E0]);
    pageControl = self->_pageControl;
    self->_pageControl = v9;

    [(UIPageControl *)self->_pageControl setAutoresizingMask:13];
    v11 = self->_pageControl;
    tintColor = [(UIPageControl *)v11 tintColor];
    [(UIPageControl *)v11 setCurrentPageIndicatorTintColor:tintColor];

    [(UIPageControl *)self->_pageControl setNumberOfPages:[(NSArray *)self->_themes count]];
    v13 = self->_pageControl;
    systemMidGrayColor = [MEMORY[0x277D75348] systemMidGrayColor];
    [(UIPageControl *)v13 setPageIndicatorTintColor:systemMidGrayColor];

    [(UIPageControl *)self->_pageControl sizeToFit];
  }

  [(SUUIGiftThemeBackgroundView *)v39 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [(UIPageControl *)self->_pageControl frame];
  v24 = v23;
  v26 = v25;
  v27 = (v20 - v23) * 0.5;
  v28 = floorf(v27);
  v41.origin.x = v16;
  v41.origin.y = v18;
  v41.size.width = v20;
  v41.size.height = v22;
  MaxY = CGRectGetMaxY(v41);
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v32 = 3.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v32 = 25.0;
  }

  [(UIPageControl *)self->_pageControl setFrame:v28, MaxY - v32 - v26, v24, v26];
  [(SUUIGiftThemeBackgroundView *)v39 addSubview:self->_pageControl];
  giftConfiguration = [(SUUIGiftStepViewController *)self giftConfiguration];
  clientContext = [giftConfiguration clientContext];

  navigationItem = [(SUUIGiftThemePickerViewController *)self navigationItem];
  if (clientContext)
  {
    [clientContext localizedStringForKey:@"GIFTING_BACK_BUTTON" inTable:@"Gifting"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"GIFTING_BACK_BUTTON" inBundles:0 inTable:@"Gifting"];
  }
  v36 = ;
  [navigationItem setBackButtonTitle:v36];

  v37 = objc_alloc_init(MEMORY[0x277D751E0]);
  [v37 setAction:sel__nextAction_];
  [v37 setTarget:self];
  if (clientContext)
  {
    [clientContext localizedStringForKey:@"GIFTING_NEXT_BUTTON" inTable:@"Gifting"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"GIFTING_NEXT_BUTTON" inBundles:0 inTable:@"Gifting"];
  }
  v38 = ;
  [v37 setTitle:v38];

  [navigationItem setRightBarButtonItem:v37];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  gift = [(SUUIGiftStepViewController *)self gift];
  item = [gift item];

  if (item)
  {
    v7 = [SUUIGiftItemView alloc];
    giftConfiguration = [(SUUIGiftStepViewController *)self giftConfiguration];
    clientContext = [giftConfiguration clientContext];
    v10 = [(SUUIGiftItemView *)v7 initWithStyle:1 item:item clientContext:clientContext];

    artworkContext = [(SUUIGiftItemView *)v10 artworkContext];
    v12 = artworkContext;
    if (self->_itemImage)
    {
      v13 = 1;
    }

    else
    {
      v13 = artworkContext == 0;
    }

    if (!v13)
    {
      objc_initWeak(&location, self);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __52__SUUIGiftThemePickerViewController_viewWillAppear___block_invoke;
      v19[3] = &unk_2798F5E28;
      objc_copyWeak(&v20, &location);
      [(SUUIGiftStepViewController *)self loadItemArtworkWithArtworkContext:v12 completionBlock:v19];
      gift2 = [(SUUIGiftStepViewController *)self gift];
      item2 = [gift2 item];
      v16 = [v12 placeholderImageForItem:item2];
      itemImage = self->_itemImage;
      self->_itemImage = v16;

      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }
  }

  v18.receiver = self;
  v18.super_class = SUUIGiftThemePickerViewController;
  [(SUUIGiftThemePickerViewController *)&v18 viewWillAppear:appearCopy];
}

void __52__SUUIGiftThemePickerViewController_viewWillAppear___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setItemImage:v6 error:v5];
}

- (void)viewWillLayoutSubviews
{
  traitCollection = [(SUUIGiftThemePickerViewController *)self traitCollection];
  [(SUUIGiftThemePickerViewController *)self _layoutCollectionViewWithTraits:traitCollection];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  self->_animatingScrollView = 1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __95__SUUIGiftThemePickerViewController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
  v4[3] = &unk_2798F5A88;
  v4[4] = self;
  [coordinator animateAlongsideTransition:0 completion:v4];
}

- (void)giftConfigurationController:(id)controller didLoadImageForTheme:(id)theme
{
  v5 = [(NSArray *)self->_themes indexOfObjectIdenticalTo:theme];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    collectionView = self->_collectionView;
    v7 = [MEMORY[0x277CCAA70] indexPathForItem:v5 inSection:0];
    v8 = [(SUUIGiftThemeCollectionView *)collectionView cellForItemAtIndexPath:v7];

    [v8 reloadThemeHeaderImage];
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"0" forIndexPath:pathCopy];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v7 setBackgroundColor:clearColor];

  giftConfiguration = [(SUUIGiftStepViewController *)self giftConfiguration];
  [v7 setGiftConfiguration:giftConfiguration];

  gift = [(SUUIGiftStepViewController *)self gift];
  [v7 setGift:gift];

  [v7 setItemImage:self->_itemImage];
  themes = self->_themes;
  item = [pathCopy item];

  v13 = [(NSArray *)themes objectAtIndex:item];
  [v7 setTheme:v13];

  return v7;
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  self->_animatingScrollView = 0;
  [decelerating contentOffset];
  v5 = v4;
  [(SUUIGiftThemePickerViewController *)self _cardWidth];

  [(SUUIGiftThemePickerViewController *)self _setSelectedThemeIndex:(v5 / v6) animated:1];
}

- (void)scrollViewDidScroll:(id)scroll
{
  if (!self->_animatingScrollView)
  {
    [scroll contentOffset];
    v6 = v5;
    [(SUUIGiftThemePickerViewController *)self _cardWidth];
    *&v7 = v7 * 0.5;
    v8 = v6 + floorf(*&v7);
    if (v8 <= 0.00000011920929)
    {
      v12 = 0;
    }

    else
    {
      [(SUUIGiftThemePickerViewController *)self _cardWidth];
      v10 = (v8 / v9);
      v11 = [(NSArray *)self->_themes count];
      if (v11 - 1 >= v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = v11 - 1;
      }
    }

    [(SUUIGiftThemePickerViewController *)self _setSelectedThemeIndex:v12 animated:1];
  }
}

- (void)_backgroundTapAction:(id)action
{
  actionCopy = action;
  if ([actionCopy state] == 3)
  {
    [(SUUIGiftThemeCollectionView *)self->_collectionView frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    selectedThemeIndex = self->_selectedThemeIndex;
    view = [(SUUIGiftThemePickerViewController *)self view];
    [actionCopy locationInView:view];
    v15 = v14;

    if (v15 >= v5)
    {
      v22.origin.x = v5;
      v22.origin.y = v7;
      v22.size.width = v9;
      v22.size.height = v11;
      if (v15 > CGRectGetMaxX(v22) && selectedThemeIndex < [(NSArray *)self->_themes count]- 1)
      {
        ++selectedThemeIndex;
      }
    }

    else
    {
      selectedThemeIndex -= selectedThemeIndex > 0;
    }

    if (selectedThemeIndex != self->_selectedThemeIndex)
    {
      [(SUUIGiftThemeCollectionView *)self->_collectionView contentOffset];
      v17 = v16;
      [(SUUIGiftThemePickerViewController *)self _cardWidth];
      v19 = v18 * selectedThemeIndex;
      [(SUUIGiftThemePickerViewController *)self _setSelectedThemeIndex:selectedThemeIndex animated:1];
      self->_animatingScrollView = 1;
      [(SUUIGiftThemeCollectionView *)self->_collectionView setContentOffset:1 animated:v19, v17];
    }
  }
}

- (void)_nextAction:(id)action
{
  gift = [(SUUIGiftStepViewController *)self gift];
  v4 = [(NSArray *)self->_themes objectAtIndex:self->_selectedThemeIndex];
  [gift setTheme:v4];
  v5 = [SUUIGiftConfirmViewController alloc];
  giftConfiguration = [(SUUIGiftStepViewController *)self giftConfiguration];
  v7 = [(SUUIGiftConfirmViewController *)v5 initWithGift:gift configuration:giftConfiguration];

  operationQueue = [(SUUIGiftStepViewController *)self operationQueue];
  [(SUUIGiftStepViewController *)v7 setOperationQueue:operationQueue];

  navigationController = [(SUUIGiftThemePickerViewController *)self navigationController];
  [navigationController pushViewController:v7 animated:1];
}

- (double)_cardHeight:(id)height
{
  heightCopy = height;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    if ([(SUUIGiftThemePickerViewController *)self _isIPadLarge])
    {
      v7 = 684.0;
    }

    else
    {
      v7 = 440.0;
    }
  }

  else if ([heightCopy userInterfaceIdiom] || objc_msgSend(heightCopy, "verticalSizeClass") != 1)
  {
    view = [(SUUIGiftThemePickerViewController *)self view];
    [view bounds];
    v7 = v9 + -63.0;
  }

  else
  {
    v7 = 284.0;
  }

  return v7;
}

- (double)_cardWidth
{
  _isIPadLarge = [(SUUIGiftThemePickerViewController *)self _isIPadLarge];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v5 = 5.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v5 = 25.0;
  }

  v6 = (v5 * 2.0) + 397.0;
  v7 = (v5 * 2.0) + 262.0;
  if (_isIPadLarge)
  {
    return v6;
  }

  return v7;
}

- (id)_collectionView
{
  collectionView = self->_collectionView;
  if (!collectionView)
  {
    v4 = [SUUIGiftThemeCollectionView alloc];
    _flowLayout = [(SUUIGiftThemePickerViewController *)self _flowLayout];
    v6 = [(SUUIGiftThemeCollectionView *)v4 initWithFrame:_flowLayout collectionViewLayout:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v7 = self->_collectionView;
    self->_collectionView = v6;

    [(SUUIGiftThemeCollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"0"];
    [(SUUIGiftThemeCollectionView *)self->_collectionView setAlwaysBounceHorizontal:1];
    [(SUUIGiftThemeCollectionView *)self->_collectionView setClipsToBounds:0];
    [(SUUIGiftThemeCollectionView *)self->_collectionView setDataSource:self];
    [(SUUIGiftThemeCollectionView *)self->_collectionView setDelegate:self];
    [(SUUIGiftThemeCollectionView *)self->_collectionView setPagingEnabled:1];
    [(SUUIGiftThemeCollectionView *)self->_collectionView setShowsHorizontalScrollIndicator:0];
    collectionView = self->_collectionView;
  }

  return collectionView;
}

- (double)_collectionViewWidth:(id)width
{
  widthCopy = width;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    if ([(SUUIGiftThemePickerViewController *)self _isIPadLarge])
    {
      v7 = 784.0;
    }

    else
    {
      v7 = 540.0;
    }
  }

  else if ([widthCopy userInterfaceIdiom] || objc_msgSend(widthCopy, "verticalSizeClass") != 1)
  {
    view = [(SUUIGiftThemePickerViewController *)self view];
    [view bounds];
    v7 = v9;
  }

  else
  {
    v7 = 414.0;
  }

  return v7;
}

- (id)_flowLayout
{
  flowLayout = self->_flowLayout;
  if (!flowLayout)
  {
    v4 = objc_alloc_init(SUUIGiftThemePickerFlowLayout);
    v5 = self->_flowLayout;
    self->_flowLayout = v4;

    [(UICollectionViewFlowLayout *)self->_flowLayout setMinimumInteritemSpacing:0.0];
    [(UICollectionViewFlowLayout *)self->_flowLayout setMinimumLineSpacing:0.0];
    [(UICollectionViewFlowLayout *)self->_flowLayout setScrollDirection:1];
    flowLayout = self->_flowLayout;
  }

  return flowLayout;
}

- (BOOL)_isIPadLarge
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return 0;
  }

  keyWindow = [MEMORY[0x277D75DA0] keyWindow];
  [keyWindow bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v14.origin.x = v6;
  v14.origin.y = v8;
  v14.size.width = v10;
  v14.size.height = v12;
  if (CGRectGetWidth(v14) < 1024.0)
  {
    return 0;
  }

  v15.origin.x = v6;
  v15.origin.y = v8;
  v15.size.width = v10;
  v15.size.height = v12;
  return CGRectGetHeight(v15) >= 1024.0;
}

- (void)_layoutCollectionViewWithTraits:(id)traits
{
  traitsCopy = traits;
  [(SUUIGiftThemePickerViewController *)self _scrollInsetHorizontal:traitsCopy];
  v6 = v5;
  [(SUUIGiftThemePickerViewController *)self _cardHeight:traitsCopy];
  v8 = v7;
  _flowLayout = [(SUUIGiftThemePickerViewController *)self _flowLayout];
  [(SUUIGiftThemePickerViewController *)self _cardWidth];
  [_flowLayout setItemSize:?];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v12 = 52.0;
  }

  else
  {
    v12 = 22.0;
  }

  [(SUUIGiftThemePickerViewController *)self _collectionViewWidth:traitsCopy];
  v14 = v13;

  _collectionView = [(SUUIGiftThemePickerViewController *)self _collectionView];
  [_collectionView setFrame:{v6, v12, v14 + v6 * -2.0, v8}];

  _collectionView2 = [(SUUIGiftThemePickerViewController *)self _collectionView];
  [_collectionView2 setVisibleBoundsInsets:{0.0, -v6, 0.0, -v6}];
}

- (double)_scrollInsetHorizontal:(id)horizontal
{
  [(SUUIGiftThemePickerViewController *)self _collectionViewWidth:horizontal];
  v5 = v4;
  [(SUUIGiftThemePickerViewController *)self _cardWidth];
  return (v5 - v6) * 0.5;
}

- (void)_setItemImage:(id)image error:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  if (imageCopy)
  {
    visibleCells = [(SUUIGiftThemeCollectionView *)self->_collectionView visibleCells];
    objc_storeStrong(&self->_itemImage, image);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = visibleCells;
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v13 + 1) + 8 * v12++) setItemImage:{self->_itemImage, v13}];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

- (void)_setSelectedThemeIndex:(int64_t)index animated:(BOOL)animated
{
  self->_selectedThemeIndex = index;
  [(SUUIGiftThemePickerFlowLayout *)self->_flowLayout setCurrentPage:?];
  pageControl = self->_pageControl;

  [(UIPageControl *)pageControl setCurrentPage:index];
}

@end