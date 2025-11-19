@interface SUUIGiftThemePickerViewController
- (BOOL)_isIPadLarge;
- (SUUIGiftThemePickerViewController)initWithGift:(id)a3 configuration:(id)a4;
- (double)_cardHeight:(id)a3;
- (double)_cardWidth;
- (double)_collectionViewWidth:(id)a3;
- (double)_scrollInsetHorizontal:(id)a3;
- (id)_collectionView;
- (id)_flowLayout;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)_backgroundTapAction:(id)a3;
- (void)_layoutCollectionViewWithTraits:(id)a3;
- (void)_nextAction:(id)a3;
- (void)_setItemImage:(id)a3 error:(id)a4;
- (void)_setSelectedThemeIndex:(int64_t)a3 animated:(BOOL)a4;
- (void)dealloc;
- (void)giftConfigurationController:(id)a3 didLoadImageForTheme:(id)a4;
- (void)loadView;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SUUIGiftThemePickerViewController

- (SUUIGiftThemePickerViewController)initWithGift:(id)a3 configuration:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = SUUIGiftThemePickerViewController;
  v7 = [(SUUIGiftStepViewController *)&v14 initWithGift:a3 configuration:v6];
  if (v7)
  {
    v8 = [v6 themes];
    themes = v7->_themes;
    v7->_themes = v8;

    [v6 addObserver:v7];
    v10 = [v6 clientContext];
    v11 = v10;
    if (v10)
    {
      [v10 localizedStringForKey:@"GIFTING_THEME_TITLE" inTable:@"Gifting"];
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
  v3 = [MEMORY[0x277D75348] systemBackgroundColor];
  [(SUUIGiftThemeBackgroundView *)v39 setBackgroundColor:v3];

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
  v7 = [(SUUIGiftThemePickerViewController *)self _collectionView];
  v8 = [MEMORY[0x277D75348] clearColor];
  [v7 setBackgroundColor:v8];

  [(SUUIGiftThemeBackgroundView *)v39 addSubview:v7];
  [(SUUIGiftThemeBackgroundView *)v39 setScrollView:v7];
  if (!self->_pageControl)
  {
    v9 = objc_alloc_init(MEMORY[0x277D757E0]);
    pageControl = self->_pageControl;
    self->_pageControl = v9;

    [(UIPageControl *)self->_pageControl setAutoresizingMask:13];
    v11 = self->_pageControl;
    v12 = [(UIPageControl *)v11 tintColor];
    [(UIPageControl *)v11 setCurrentPageIndicatorTintColor:v12];

    [(UIPageControl *)self->_pageControl setNumberOfPages:[(NSArray *)self->_themes count]];
    v13 = self->_pageControl;
    v14 = [MEMORY[0x277D75348] systemMidGrayColor];
    [(UIPageControl *)v13 setPageIndicatorTintColor:v14];

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
  v30 = [MEMORY[0x277D75418] currentDevice];
  v31 = [v30 userInterfaceIdiom];

  v32 = 3.0;
  if ((v31 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v32 = 25.0;
  }

  [(UIPageControl *)self->_pageControl setFrame:v28, MaxY - v32 - v26, v24, v26];
  [(SUUIGiftThemeBackgroundView *)v39 addSubview:self->_pageControl];
  v33 = [(SUUIGiftStepViewController *)self giftConfiguration];
  v34 = [v33 clientContext];

  v35 = [(SUUIGiftThemePickerViewController *)self navigationItem];
  if (v34)
  {
    [v34 localizedStringForKey:@"GIFTING_BACK_BUTTON" inTable:@"Gifting"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"GIFTING_BACK_BUTTON" inBundles:0 inTable:@"Gifting"];
  }
  v36 = ;
  [v35 setBackButtonTitle:v36];

  v37 = objc_alloc_init(MEMORY[0x277D751E0]);
  [v37 setAction:sel__nextAction_];
  [v37 setTarget:self];
  if (v34)
  {
    [v34 localizedStringForKey:@"GIFTING_NEXT_BUTTON" inTable:@"Gifting"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"GIFTING_NEXT_BUTTON" inBundles:0 inTable:@"Gifting"];
  }
  v38 = ;
  [v37 setTitle:v38];

  [v35 setRightBarButtonItem:v37];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(SUUIGiftStepViewController *)self gift];
  v6 = [v5 item];

  if (v6)
  {
    v7 = [SUUIGiftItemView alloc];
    v8 = [(SUUIGiftStepViewController *)self giftConfiguration];
    v9 = [v8 clientContext];
    v10 = [(SUUIGiftItemView *)v7 initWithStyle:1 item:v6 clientContext:v9];

    v11 = [(SUUIGiftItemView *)v10 artworkContext];
    v12 = v11;
    if (self->_itemImage)
    {
      v13 = 1;
    }

    else
    {
      v13 = v11 == 0;
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
      v14 = [(SUUIGiftStepViewController *)self gift];
      v15 = [v14 item];
      v16 = [v12 placeholderImageForItem:v15];
      itemImage = self->_itemImage;
      self->_itemImage = v16;

      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }
  }

  v18.receiver = self;
  v18.super_class = SUUIGiftThemePickerViewController;
  [(SUUIGiftThemePickerViewController *)&v18 viewWillAppear:v3];
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
  v3 = [(SUUIGiftThemePickerViewController *)self traitCollection];
  [(SUUIGiftThemePickerViewController *)self _layoutCollectionViewWithTraits:v3];
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  self->_animatingScrollView = 1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __95__SUUIGiftThemePickerViewController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
  v4[3] = &unk_2798F5A88;
  v4[4] = self;
  [a4 animateAlongsideTransition:0 completion:v4];
}

- (void)giftConfigurationController:(id)a3 didLoadImageForTheme:(id)a4
{
  v5 = [(NSArray *)self->_themes indexOfObjectIdenticalTo:a4];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    collectionView = self->_collectionView;
    v7 = [MEMORY[0x277CCAA70] indexPathForItem:v5 inSection:0];
    v8 = [(SUUIGiftThemeCollectionView *)collectionView cellForItemAtIndexPath:v7];

    [v8 reloadThemeHeaderImage];
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"0" forIndexPath:v6];
  v8 = [MEMORY[0x277D75348] clearColor];
  [v7 setBackgroundColor:v8];

  v9 = [(SUUIGiftStepViewController *)self giftConfiguration];
  [v7 setGiftConfiguration:v9];

  v10 = [(SUUIGiftStepViewController *)self gift];
  [v7 setGift:v10];

  [v7 setItemImage:self->_itemImage];
  themes = self->_themes;
  v12 = [v6 item];

  v13 = [(NSArray *)themes objectAtIndex:v12];
  [v7 setTheme:v13];

  return v7;
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  self->_animatingScrollView = 0;
  [a3 contentOffset];
  v5 = v4;
  [(SUUIGiftThemePickerViewController *)self _cardWidth];

  [(SUUIGiftThemePickerViewController *)self _setSelectedThemeIndex:(v5 / v6) animated:1];
}

- (void)scrollViewDidScroll:(id)a3
{
  if (!self->_animatingScrollView)
  {
    [a3 contentOffset];
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

- (void)_backgroundTapAction:(id)a3
{
  v20 = a3;
  if ([v20 state] == 3)
  {
    [(SUUIGiftThemeCollectionView *)self->_collectionView frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    selectedThemeIndex = self->_selectedThemeIndex;
    v13 = [(SUUIGiftThemePickerViewController *)self view];
    [v20 locationInView:v13];
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

- (void)_nextAction:(id)a3
{
  v10 = [(SUUIGiftStepViewController *)self gift];
  v4 = [(NSArray *)self->_themes objectAtIndex:self->_selectedThemeIndex];
  [v10 setTheme:v4];
  v5 = [SUUIGiftConfirmViewController alloc];
  v6 = [(SUUIGiftStepViewController *)self giftConfiguration];
  v7 = [(SUUIGiftConfirmViewController *)v5 initWithGift:v10 configuration:v6];

  v8 = [(SUUIGiftStepViewController *)self operationQueue];
  [(SUUIGiftStepViewController *)v7 setOperationQueue:v8];

  v9 = [(SUUIGiftThemePickerViewController *)self navigationController];
  [v9 pushViewController:v7 animated:1];
}

- (double)_cardHeight:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
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

  else if ([v4 userInterfaceIdiom] || objc_msgSend(v4, "verticalSizeClass") != 1)
  {
    v8 = [(SUUIGiftThemePickerViewController *)self view];
    [v8 bounds];
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
  v2 = [(SUUIGiftThemePickerViewController *)self _isIPadLarge];
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = 5.0;
  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v5 = 25.0;
  }

  v6 = (v5 * 2.0) + 397.0;
  v7 = (v5 * 2.0) + 262.0;
  if (v2)
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
    v5 = [(SUUIGiftThemePickerViewController *)self _flowLayout];
    v6 = [(SUUIGiftThemeCollectionView *)v4 initWithFrame:v5 collectionViewLayout:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
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

- (double)_collectionViewWidth:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
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

  else if ([v4 userInterfaceIdiom] || objc_msgSend(v4, "verticalSizeClass") != 1)
  {
    v8 = [(SUUIGiftThemePickerViewController *)self view];
    [v8 bounds];
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
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return 0;
  }

  v4 = [MEMORY[0x277D75DA0] keyWindow];
  [v4 bounds];
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

- (void)_layoutCollectionViewWithTraits:(id)a3
{
  v4 = a3;
  [(SUUIGiftThemePickerViewController *)self _scrollInsetHorizontal:v4];
  v6 = v5;
  [(SUUIGiftThemePickerViewController *)self _cardHeight:v4];
  v8 = v7;
  v9 = [(SUUIGiftThemePickerViewController *)self _flowLayout];
  [(SUUIGiftThemePickerViewController *)self _cardWidth];
  [v9 setItemSize:?];

  v10 = [MEMORY[0x277D75418] currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if ((v11 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v12 = 52.0;
  }

  else
  {
    v12 = 22.0;
  }

  [(SUUIGiftThemePickerViewController *)self _collectionViewWidth:v4];
  v14 = v13;

  v15 = [(SUUIGiftThemePickerViewController *)self _collectionView];
  [v15 setFrame:{v6, v12, v14 + v6 * -2.0, v8}];

  v16 = [(SUUIGiftThemePickerViewController *)self _collectionView];
  [v16 setVisibleBoundsInsets:{0.0, -v6, 0.0, -v6}];
}

- (double)_scrollInsetHorizontal:(id)a3
{
  [(SUUIGiftThemePickerViewController *)self _collectionViewWidth:a3];
  v5 = v4;
  [(SUUIGiftThemePickerViewController *)self _cardWidth];
  return (v5 - v6) * 0.5;
}

- (void)_setItemImage:(id)a3 error:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    v7 = [(SUUIGiftThemeCollectionView *)self->_collectionView visibleCells];
    objc_storeStrong(&self->_itemImage, a3);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = v7;
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

- (void)_setSelectedThemeIndex:(int64_t)a3 animated:(BOOL)a4
{
  self->_selectedThemeIndex = a3;
  [(SUUIGiftThemePickerFlowLayout *)self->_flowLayout setCurrentPage:?];
  pageControl = self->_pageControl;

  [(UIPageControl *)pageControl setCurrentPage:a3];
}

@end