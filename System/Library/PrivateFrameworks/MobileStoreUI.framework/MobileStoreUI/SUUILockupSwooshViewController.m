@interface SUUILockupSwooshViewController
+ (int64_t)_swooshTypeForLockups:(id)a3;
- ($0F9D46A54E891E2DFD6B960C8B4302D3)_lockupSwooshMetrics;
- (CGRect)frameForItemAtIndex:(int64_t)a3;
- (CGRect)seeAllButtonFrame;
- (CGSize)_maximumCellSizeForImageSize:(CGSize)a3;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (NSArray)items;
- (SUUILockupSwooshViewController)initWithItemList:(id)a3;
- (SUUILockupSwooshViewController)initWithSwoosh:(id)a3;
- (SUUIVideoImageDataConsumer)videoImageConsumer;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (id)_newArtworkContextForSwooshType:(int64_t)a3;
- (id)_newLockupComponentWithItem:(id)a3 defaultStyle:(SUUILockupStyle *)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)popImageViewForItemAtIndex:(int64_t)a3;
- (void)_reloadSizes;
- (void)_seeAllAction:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dealloc;
- (void)deselectAllItems;
- (void)loadView;
- (void)setClientContext:(id)a3;
- (void)setColorScheme:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setImage:(id)a3 forItemAtIndex:(int64_t)a4;
- (void)setLockups:(id)a3;
- (void)setSeeAllHidden:(BOOL)a3;
- (void)setVideoThumbnail:(id)a3 forItemAtIndex:(int64_t)a4;
- (void)unhideImages;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SUUILockupSwooshViewController

- (SUUILockupSwooshViewController)initWithItemList:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v33.receiver = self;
  v33.super_class = SUUILockupSwooshViewController;
  v5 = [(SUUILockupSwooshViewController *)&v33 init];
  v6 = v5;
  if (v5)
  {
    p_defaultLockupStyle = &v5->_defaultLockupStyle;
    SUUILockupStyleDefault(&v31);
    v8 = v31;
    v6->_defaultLockupStyle.visibleFields = visibleFields;
    *&p_defaultLockupStyle->artworkSize = v8;
    v9 = [v4 seeAllTitle];
    seeAllTitle = v6->_seeAllTitle;
    v6->_seeAllTitle = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = [v4 items];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v34 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v28;
      do
      {
        v16 = 0;
        do
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v27 + 1) + 8 * v16);
          v18 = *&p_defaultLockupStyle->artworkSize;
          visibleFields = v6->_defaultLockupStyle.visibleFields;
          v31 = v18;
          v19 = [(SUUILockupSwooshViewController *)v6 _newLockupComponentWithItem:v17 defaultStyle:&v31];
          [v11 addObject:v19];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v27 objects:v34 count:16];
      }

      while (v14);
    }

    v20 = [v11 copy];
    lockups = v6->_lockups;
    v6->_lockups = v20;

    v22 = [v4 seeAllURLString];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v22];
      seeAllURL = v6->_seeAllURL;
      v6->_seeAllURL = v23;
    }

    v6->_swooshType = [objc_opt_class() _swooshTypeForLockups:v6->_lockups];
    v25 = [v4 title];
    [(SUUILockupSwooshViewController *)v6 setTitle:v25];
  }

  return v6;
}

- (SUUILockupSwooshViewController)initWithSwoosh:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = SUUILockupSwooshViewController;
  v5 = [(SUUILockupSwooshViewController *)&v28 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = [v4 lockups];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          v13 = [v12 item];
          if (v13)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v9);
    }

    v14 = [v6 copy];
    v15 = *(v5 + 136);
    *(v5 + 136) = v14;

    if (v4)
    {
      [v4 lockupStyle];
    }

    else
    {
      v22 = 0uLL;
      v23 = 0;
    }

    *(v5 + 131) = v23;
    *(v5 + 1032) = v22;
    *(v5 + 156) = [v4 seeAllStyle];
    v16 = [v4 seeAllTitle];
    v17 = *(v5 + 157);
    *(v5 + 157) = v16;

    v18 = [v4 seeAllURL];
    v19 = *(v5 + 158);
    *(v5 + 158) = v18;

    *(v5 + 160) = [objc_opt_class() _swooshTypeForLockups:*(v5 + 136)];
    v20 = [v4 title];
    [v5 setTitle:v20];
  }

  return v5;
}

- (void)dealloc
{
  [(UICollectionView *)self->_collectionView setDataSource:0];
  [(UICollectionView *)self->_collectionView setDelegate:0];
  v3 = [(SUUISwooshView *)self->_swooshView chevronTitleControl];
  [v3 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  v4 = [(SUUISwooshView *)self->_swooshView seeAllControl];
  [v4 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  v5.receiver = self;
  v5.super_class = SUUILockupSwooshViewController;
  [(SUUILockupSwooshViewController *)&v5 dealloc];
}

- (NSArray)items
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_lockups;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) item];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (CGRect)seeAllButtonFrame
{
  seeAllStyle = self->_seeAllStyle;
  if (seeAllStyle == 1)
  {
    v3 = [(SUUISwooshView *)self->_swooshView chevronTitleControl];
  }

  else
  {
    if (seeAllStyle)
    {
      v4 = 0;
      goto LABEL_7;
    }

    v3 = [(SUUISwooshView *)self->_swooshView seeAllControl];
  }

  v4 = v3;
LABEL_7:
  [v4 bounds];
  [v4 convertRect:0 toView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)setLockups:(id)a3
{
  v4 = a3;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0x7FFFFFFFFFFFFFFFLL;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__84;
  v27 = __Block_byref_object_dispose__84;
  v28 = 0;
  if ([(NSArray *)self->_lockups count])
  {
    v30[3] = 0;
    v5 = [(NSArray *)self->_lockups objectAtIndex:0];
    v6 = v24[5];
    v24[5] = v5;
  }

  [(UICollectionView *)self->_collectionView numberOfItemsInSection:0];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __45__SUUILockupSwooshViewController_setLockups___block_invoke;
  v17[3] = &unk_2798FCF50;
  v21 = &v23;
  v9 = v8;
  v18 = v9;
  v10 = v7;
  v22 = &v29;
  v19 = v10;
  v20 = self;
  [v4 enumerateObjectsUsingBlock:v17];
  v11 = [v9 copy];
  lockups = self->_lockups;
  self->_lockups = v11;

  if ([v10 count])
  {
    width = self->_maxCellSize.width;
    height = self->_maxCellSize.height;
    self->_swooshType = [objc_opt_class() _swooshTypeForLockups:self->_lockups];
    [(SUUILockupSwooshViewController *)self _reloadSizes];
    collectionView = self->_collectionView;
    if (collectionView)
    {
      if (width == self->_maxCellSize.width && height == self->_maxCellSize.height)
      {
        p_didInitialReload = &self->_didInitialReload;
        if (self->_didInitialReload)
        {
          [(UICollectionView *)collectionView insertItemsAtIndexPaths:v10];
          goto LABEL_11;
        }
      }

      else
      {
        [(UICollectionView *)collectionView frame];
        [(UICollectionView *)self->_collectionView setFrame:?];
        [(SUUISwooshView *)self->_swooshView sizeToFit];
        p_didInitialReload = &self->_didInitialReload;
      }

      *p_didInitialReload = 1;
      [(UICollectionView *)self->_collectionView reloadData];
    }
  }

LABEL_11:

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);
}

void __45__SUUILockupSwooshViewController_setLockups___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 item];
  if (v3)
  {
    v4 = *(*(*(a1 + 56) + 8) + 40);
    if (v4 && (v5 = [v4 itemIdentifier], v5 == objc_msgSend(v11, "itemIdentifier")))
    {
      v6 = ++*(*(*(a1 + 64) + 8) + 24);
      v7 = [*(*(a1 + 48) + 1088) count];
      if (v6 >= v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = [*(*(a1 + 48) + 1088) objectAtIndex:*(*(*(a1 + 64) + 8) + 24)];
      }

      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v8);
      if (v6 >= v7)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v9 = [*(a1 + 32) count];
      v10 = *(a1 + 40);
      v8 = [MEMORY[0x277CCAA70] indexPathForItem:v9 inSection:0];
      [v10 addObject:v8];
    }

LABEL_8:
    [*(a1 + 32) addObject:v11];
  }
}

- (void)setSeeAllHidden:(BOOL)a3
{
  if (self->_seeAllHidden != a3)
  {
    v3 = a3;
    self->_seeAllHidden = a3;
    seeAllStyle = self->_seeAllStyle;
    if (seeAllStyle == 1)
    {
      v5 = !a3 && self->_seeAllURL != 0;
      swooshView = self->_swooshView;

      [(SUUISwooshView *)swooshView setShowsChevronForTitle:v5];
    }

    else if (!seeAllStyle)
    {
      v7 = [(SUUISwooshView *)self->_swooshView seeAllControl];
      [v7 setHidden:v3];
    }
  }
}

- (SUUIVideoImageDataConsumer)videoImageConsumer
{
  videoImageConsumer = self->_videoImageConsumer;
  if (!videoImageConsumer)
  {
    v4 = objc_alloc_init(SUUIVideoImageDataConsumer);
    v5 = self->_videoImageConsumer;
    self->_videoImageConsumer = v4;

    [(SUUIVideoImageDataConsumer *)self->_videoImageConsumer setAllowedOrientations:2];
    [(SUUIVideoImageDataConsumer *)self->_videoImageConsumer setLandscapeSize:self->_metrics.videoThumbnailSize.width, self->_metrics.videoThumbnailSize.height];
    v6 = [(SUUISwooshViewController *)self colorScheme];
    v7 = self->_videoImageConsumer;
    v8 = [v6 backgroundColor];
    [(SUUIVideoImageDataConsumer *)v7 setBackgroundColor:v8];

    [(SUUIVideoImageDataConsumer *)self->_videoImageConsumer setColorScheme:v6];
    videoImageConsumer = self->_videoImageConsumer;
  }

  return videoImageConsumer;
}

- (void)deselectAllItems
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(UICollectionView *)self->_collectionView deselectItemAtIndexPath:*(*(&v8 + 1) + 8 * v7++) animated:0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (CGRect)frameForItemAtIndex:(int64_t)a3
{
  collectionView = self->_collectionView;
  v4 = [MEMORY[0x277CCAA70] indexPathForItem:a3 inSection:0];
  v5 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v4];

  [v5 bounds];
  [v5 convertRect:0 toView:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)popImageViewForItemAtIndex:(int64_t)a3
{
  collectionView = self->_collectionView;
  v6 = [MEMORY[0x277CCAA70] indexPathForItem:a3 inSection:0];
  v7 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v6];

  if (v7)
  {
    v8 = [v7 layout];
    v9 = objc_alloc(MEMORY[0x277D755E8]);
    v10 = [v8 iconImage];
    v11 = [v9 initWithImage:v10];

    v12 = [v8 iconImageView];
    v13 = [(SUUILockupSwooshViewController *)self view];
    [v12 frame];
    [v13 convertRect:v7 fromView:?];
    [v11 setFrame:?];

    hiddenIconIndexSet = self->_hiddenIconIndexSet;
    if (!hiddenIconIndexSet)
    {
      v15 = objc_alloc_init(MEMORY[0x277CCAB58]);
      v16 = self->_hiddenIconIndexSet;
      self->_hiddenIconIndexSet = v15;

      hiddenIconIndexSet = self->_hiddenIconIndexSet;
    }

    [(NSMutableIndexSet *)hiddenIconIndexSet addIndex:a3];
    [v8 setIconImageHidden:1];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setClientContext:(id)a3
{
  v5.receiver = self;
  v5.super_class = SUUILockupSwooshViewController;
  [(SUUISwooshViewController *)&v5 setClientContext:a3];
  [(SUUILockupSwooshViewController *)self _lockupSwooshMetrics];
  self->_metrics = v4;
  [(SUUILockupSwooshViewController *)self _reloadSizes];
}

- (void)setColorScheme:(id)a3
{
  v4 = a3;
  v5 = [(SUUISwooshViewController *)self colorScheme];

  if (v5 != v4)
  {
    v8.receiver = self;
    v8.super_class = SUUILockupSwooshViewController;
    [(SUUISwooshViewController *)&v8 setColorScheme:v4];
    [(SUUIItemArtworkContext *)self->_artworkContext setColorScheme:v4];
    [(SUUISwooshView *)self->_swooshView setColoringWithColorScheme:v4];
    videoImageConsumer = self->_videoImageConsumer;
    v7 = [v4 backgroundColor];
    [(SUUIVideoImageDataConsumer *)videoImageConsumer setBackgroundColor:v7];

    [(SUUIVideoImageDataConsumer *)self->_videoImageConsumer setColorScheme:v4];
  }
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  self->_delegateWantsWillDisplay = objc_opt_respondsToSelector() & 1;
  v5.receiver = self;
  v5.super_class = SUUILockupSwooshViewController;
  [(SUUISwooshViewController *)&v5 setDelegate:v4];
}

- (void)setImage:(id)a3 forItemAtIndex:(int64_t)a4
{
  collectionView = self->_collectionView;
  v6 = MEMORY[0x277CCAA70];
  v7 = a3;
  v8 = [v6 indexPathForItem:a4 inSection:0];
  v10 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v8];

  v9 = [v10 layout];
  [v9 setIconImage:v7];
}

- (void)setVideoThumbnail:(id)a3 forItemAtIndex:(int64_t)a4
{
  collectionView = self->_collectionView;
  v6 = MEMORY[0x277CCAA70];
  v7 = a3;
  v8 = [v6 indexPathForItem:a4 inSection:0];
  v10 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v8];

  v9 = [v10 layout];
  [v9 setVideoThumbnailImage:v7];
}

- (void)unhideImages
{
  hiddenIconIndexSet = self->_hiddenIconIndexSet;
  if (hiddenIconIndexSet)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __46__SUUILockupSwooshViewController_unhideImages__block_invoke;
    v5[3] = &unk_2798F6230;
    v5[4] = self;
    [(NSMutableIndexSet *)hiddenIconIndexSet enumerateIndexesWithOptions:0 usingBlock:v5];
    v4 = self->_hiddenIconIndexSet;
    self->_hiddenIconIndexSet = 0;
  }
}

void __46__SUUILockupSwooshViewController_unhideImages__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 1024);
  v3 = [MEMORY[0x277CCAA70] indexPathForRow:a2 inSection:0];
  v5 = [v2 cellForItemAtIndexPath:v3];

  v4 = [v5 layout];
  [v4 setIconImageHidden:0];
}

- (void)loadView
{
  if (!self->_swooshView)
  {
    v3 = objc_alloc_init(SUUISwooshView);
    swooshView = self->_swooshView;
    self->_swooshView = v3;

    seeAllStyle = self->_seeAllStyle;
    if (seeAllStyle == 1)
    {
      v8 = [(SUUISwooshView *)self->_swooshView chevronTitleControl];
      [v8 addTarget:self action:sel__seeAllAction_ forControlEvents:64];

      v9 = !self->_seeAllHidden && self->_seeAllURL != 0;
      [(SUUISwooshView *)self->_swooshView setShowsChevronForTitle:v9];
    }

    else if (!seeAllStyle)
    {
      v6 = [(SUUISwooshView *)self->_swooshView seeAllControl];
      [v6 addTarget:self action:sel__seeAllAction_ forControlEvents:64];

      v7 = [(SUUISwooshView *)self->_swooshView seeAllControl];
      [v7 setHidden:self->_seeAllHidden];
    }

    v10 = self->_swooshView;
    v11 = [(SUUISwooshViewController *)self colorScheme];
    [(SUUISwooshView *)v10 setColoringWithColorScheme:v11];

    [(SUUISwooshView *)self->_swooshView contentInsets];
    [(SUUISwooshView *)self->_swooshView setCollectionViewInsets:-5.0, -v12, 2.0, -v13];
  }

  if (self->_seeAllStyle || !self->_seeAllURL)
  {
    v14 = 0;
  }

  else
  {
    seeAllTitle = self->_seeAllTitle;
    if (seeAllTitle)
    {
      v14 = seeAllTitle;
    }

    else
    {
      v28 = [(SUUISwooshViewController *)self clientContext];
      v29 = v28;
      if (v28)
      {
        [v28 localizedStringForKey:@"SWOOSH_SEE_ALL_TITLE"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"SWOOSH_SEE_ALL_TITLE" inBundles:0];
      }
      v31 = ;

      v14 = v31;
    }
  }

  v30 = v14;
  [(SUUISwooshView *)self->_swooshView setSeeAllTitle:v14];
  collectionView = self->_collectionView;
  if (!collectionView)
  {
    v16 = objc_alloc_init(SUUISwooshCollectionViewLayout);
    v17 = [(SUUISwooshView *)self->_swooshView backgroundColor];
    [(SUUISwooshCollectionViewLayout *)v16 setBackgroundColor:v17];

    [(SUUISwooshCollectionViewLayout *)v16 setSnapsToItemBoundaries:1];
    if ((self->_defaultLockupStyle.visibleFields & 0x400) != 0)
    {
      p_interItemSpacingVideoLockup = &self->_metrics.interItemSpacingVideoLockup;
    }

    else if (self->_swooshType == 2)
    {
      p_interItemSpacingVideoLockup = &self->_metrics.interItemSpacingNewsstand;
    }

    else
    {
      p_interItemSpacingVideoLockup = &self->_metrics.interItemSpacingMixed;
    }

    [(UICollectionViewFlowLayout *)v16 setMinimumInteritemSpacing:*p_interItemSpacingVideoLockup];
    [(UICollectionViewFlowLayout *)v16 setMinimumLineSpacing:*p_interItemSpacingVideoLockup];
    v20 = [objc_alloc(MEMORY[0x277D752A0]) initWithFrame:v16 collectionViewLayout:{0.0, 0.0, 0.0, self->_maxCellSize.height}];
    v21 = self->_collectionView;
    self->_collectionView = v20;

    [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"0"];
    [(UICollectionView *)self->_collectionView setAlwaysBounceHorizontal:1];
    v22 = self->_collectionView;
    v23 = [(SUUISwooshView *)self->_swooshView backgroundColor];
    [(UICollectionView *)v22 setBackgroundColor:v23];

    [(UICollectionView *)self->_collectionView setDataSource:self];
    v24 = self->_collectionView;
    +[SUUISwooshCollectionViewLayout snapToBoundariesDecelerationRate];
    [(UICollectionView *)v24 setDecelerationRate:v25];
    [(UICollectionView *)self->_collectionView setDelegate:self];
    [(UICollectionView *)self->_collectionView setScrollsToTop:0];
    [(UICollectionView *)self->_collectionView setShowsHorizontalScrollIndicator:0];
    [(UICollectionView *)self->_collectionView setPrefetchingEnabled:0];

    collectionView = self->_collectionView;
  }

  [(SUUISwooshView *)self->_swooshView setCollectionView:collectionView];
  v26 = self->_swooshView;
  v27 = [(SUUILockupSwooshViewController *)self title];
  [(SUUISwooshView *)v26 setTitle:v27];

  [(SUUISwooshView *)self->_swooshView sizeToFit];
  [(SUUILockupSwooshViewController *)self setView:self->_swooshView];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  if (!self->_didInitialReload)
  {
    self->_didInitialReload = 1;
    [(UICollectionView *)self->_collectionView reloadData];
  }

  v5 = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(UICollectionView *)self->_collectionView deselectItemAtIndexPath:*(*(&v11 + 1) + 8 * i) animated:v3];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10.receiver = self;
  v10.super_class = SUUILockupSwooshViewController;
  [(SUUILockupSwooshViewController *)&v10 viewWillAppear:v3];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"0" forIndexPath:v6];
  v8 = [(SUUISwooshViewController *)self clientContext];
  v9 = [v7 layout];
  [v9 setClientContext:v8];
  v10 = [v6 item];

  v11 = [(NSArray *)self->_lockups objectAtIndex:v10];
  v12 = [v11 item];
  [v7 configureForItem:v12 clientContext:v8];

  v13 = [(SUUISwooshViewController *)self colorScheme];
  [v9 setColoringWithColorScheme:v13];

  [v9 setIconImageHidden:{-[NSMutableIndexSet containsIndex:](self->_hiddenIconIndexSet, "containsIndex:", v10)}];
  [v9 setMaxImageSize:{self->_maxImageSize.width, self->_maxImageSize.height}];
  [v9 setVideoSize:{self->_metrics.videoThumbnailSize.width, self->_metrics.videoThumbnailSize.height}];
  if (v11)
  {
    [v11 lockupStyle];
    v14 = v24;
  }

  else
  {
    v14 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
  }

  [v9 setVisibleFields:v14];
  v15 = [(SUUISwooshViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v16 = [v15 swoosh:self imageForCellAtIndex:v10];
  }

  else
  {
    v16 = 0;
  }

  [v9 setIconImage:v16];
  if (v11)
  {
    [v11 lockupStyle];
    if (v21 & 0x400) != 0 && (objc_opt_respondsToSelector())
    {
      v17 = [v15 swoosh:self videoThumbnailForCellAtIndex:v10];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
  }

  [v9 setVideoThumbnailImage:{v17, v19, v20, v21, v22, v23, v24}];
  if (self->_delegateWantsWillDisplay)
  {
    [v15 swoosh:self willDisplayCellAtIndex:v10];
  }

  return v7;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a4;
  v5 = [(SUUISwooshViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 swoosh:self didSelectCellAtIndex:{objc_msgSend(v6, "item")}];
  }
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  if ((self->_defaultLockupStyle.visibleFields & 0x400) != 0)
  {
    horizontalPadding = self->_metrics.horizontalPadding;
  }

  else
  {
    horizontalPadding = self->_metrics.horizontalPadding - floor((self->_maxCellSize.width - self->_maxImageSize.width) * 0.5);
  }

  v6 = 0.0;
  v7 = 0.0;
  v8 = horizontalPadding;
  result.right = v8;
  result.bottom = v7;
  result.left = horizontalPadding;
  result.top = v6;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = a5;
  v7 = objc_alloc_init(SUUILockupSwooshCollectionViewCell);
  v8 = [(SUUILockupSwooshCollectionViewCell *)v7 layout];
  lockups = self->_lockups;
  v10 = [v6 item];

  v11 = [(NSArray *)lockups objectAtIndex:v10];
  [v8 setMaxImageSize:{self->_maxImageSize.width, self->_maxImageSize.height}];
  [v8 setVideoSize:{self->_metrics.videoThumbnailSize.width, self->_metrics.videoThumbnailSize.height}];
  if (v11)
  {
    [v11 lockupStyle];
    v12 = v24;
  }

  else
  {
    v12 = 0;
  }

  [v8 setVisibleFields:v12];
  artworkContext = self->_artworkContext;
  v14 = [v11 item];
  [(SUUIItemArtworkContext *)artworkContext imageSizeForItem:v14];
  v16 = v15;
  v18 = v17;

  [v8 cellSizeForImageOfSize:{v16, v18}];
  v20 = v19;
  height = self->_maxCellSize.height;

  v22 = v20;
  v23 = height;
  result.height = v23;
  result.width = v22;
  return result;
}

- (void)_seeAllAction:(id)a3
{
  v4 = [(SUUISwooshViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 swooshDidSelectSeeAll:self];
  }
}

- (CGSize)_maximumCellSizeForImageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v34 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CBF3A8];
  v7 = *(MEMORY[0x277CBF3A8] + 8);
  v8 = self->_metrics.videoThumbnailSize.width;
  v9 = self->_metrics.videoThumbnailSize.height;
  v10 = objc_alloc_init(SUUILockupSwooshCollectionViewCell);
  v11 = [(SUUILockupSwooshCollectionViewCell *)v10 layout];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = self->_lockups;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
  v14 = v7;
  v15 = v6;
  if (v13)
  {
    v16 = v13;
    v17 = *v30;
    v14 = v7;
    v15 = v6;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v29 + 1) + 8 * i);
        [v11 setVideoSize:{v8, v9}];
        if (v19)
        {
          [v19 lockupStyle];
          v20 = v28;
        }

        else
        {
          v20 = 0;
          v28 = 0;
        }

        [v11 setVisibleFields:v20];
        [v11 cellSizeForImageOfSize:{width, height}];
        if (v22 >= v14)
        {
          v14 = v22;
        }

        if (v21 >= v15)
        {
          v15 = v21;
        }
      }

      v16 = [(NSArray *)v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v16);
  }

  if (v15 == v6 && v14 == v7)
  {
    [v11 setVideoSize:{v8, v9}];
    [v11 setVisibleFields:self->_defaultLockupStyle.visibleFields];
    [v11 cellSizeForImageOfSize:{width, height}];
    v15 = v24;
    v14 = v25;
  }

  v26 = v15;
  v27 = v14;
  result.height = v27;
  result.width = v26;
  return result;
}

- (id)_newArtworkContextForSwooshType:(int64_t)a3
{
  v5 = objc_alloc_init(SUUIItemArtworkContext);
  v6 = [(SUUISwooshViewController *)self colorScheme];
  [(SUUIItemArtworkContext *)v5 setColorScheme:v6];

  p_metrics = &self->_metrics;
  if ((self->_defaultLockupStyle.visibleFields & 0x400) != 0)
  {
    p_videoLockupIconSize = &self->_metrics.videoLockupIconSize;
    width = self->_metrics.videoLockupIconSize.width;
    p_height = &p_videoLockupIconSize->height;
    v13 = [SUUIProductImageDataConsumer consumerWithSize:width, p_videoLockupIconSize->height];
    [(SUUIItemArtworkContext *)v5 setGeneralConsumer:v13];

    v14 = [SUUIStyledImageDataConsumer appIconConsumerWithSize:p_videoLockupIconSize->width, p_videoLockupIconSize->height];
    [(SUUIItemArtworkContext *)v5 setIconConsumer:v14];
  }

  else
  {
    v8 = [SUUIProductImageDataConsumer consumerWithSize:self->_metrics.newsstandSize.width, self->_metrics.newsstandSize.height];
    [(SUUIItemArtworkContext *)v5 setGeneralConsumer:v8];

    v9 = [SUUIStyledImageDataConsumer appIconConsumerWithSize:p_metrics->iconSize.width, p_metrics->iconSize.height];
    [(SUUIItemArtworkContext *)v5 setIconConsumer:v9];

    if (a3)
    {
      p_height = &p_metrics->newsstandSwooshSize.height;
    }

    else
    {
      p_height = &p_metrics->newsstandSize.height;
    }

    if (a3)
    {
      p_videoLockupIconSize = &p_metrics->newsstandSwooshSize;
    }

    else
    {
      p_videoLockupIconSize = &p_metrics->newsstandSize;
    }
  }

  v15 = [SUUIStyledImageDataConsumer productImageConsumerWithSize:p_videoLockupIconSize->width, *p_height];
  [(SUUIItemArtworkContext *)v5 setNewsstandConsumer:v15];

  return v5;
}

- (id)_newLockupComponentWithItem:(id)a3 defaultStyle:(SUUILockupStyle *)a4
{
  v5 = a3;
  if ([v5 itemKind] == 17)
  {
    a4->visibleFields = 150;
  }

  v6 = [SUUILockupComponent alloc];
  v9 = *&a4->artworkSize;
  visibleFields = a4->visibleFields;
  v7 = [(SUUILockupComponent *)v6 initWithItem:v5 style:&v9];

  return v7;
}

- (void)_reloadSizes
{
  v3 = [(SUUILockupSwooshViewController *)self _newArtworkContextForSwooshType:self->_swooshType];
  artworkContext = self->_artworkContext;
  self->_artworkContext = v3;

  if ([(NSArray *)self->_lockups count]|| (self->_expectedImageSize.width == *MEMORY[0x277CBF3A8] ? (v5 = self->_expectedImageSize.height == *(MEMORY[0x277CBF3A8] + 8)) : (v5 = 0), v5))
  {
    [(SUUIItemArtworkContext *)self->_artworkContext largestImageSizeForLockups:self->_lockups];
    self->_maxImageSize.width = width;
    self->_maxImageSize.height = height;
  }

  else
  {
    self->_maxImageSize = self->_expectedImageSize;
    width = self->_maxImageSize.width;
    height = self->_maxImageSize.height;
  }

  [(SUUILockupSwooshViewController *)self _maximumCellSizeForImageSize:width, height];
  self->_maxCellSize.width = v8;
  self->_maxCellSize.height = v9;
}

+ (int64_t)_swooshTypeForLockups:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) item];
        v11 = [v10 isNewsstandApp];

        v6 |= v11 ^ 1;
        v7 |= v11;
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
    if (v7)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    if ((v7 & 1 & v6) != 0)
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- ($0F9D46A54E891E2DFD6B960C8B4302D3)_lockupSwooshMetrics
{
  *&retstr->var5 = 0u;
  *&retstr->var7 = 0u;
  retstr->var3 = 0u;
  retstr->var4 = 0u;
  retstr->var1 = 0u;
  retstr->var2 = 0u;
  retstr->var0 = 0u;
  v4 = [(SUUISwooshViewController *)self clientContext];
  v5 = SUUIUserInterfaceIdiom(v4);

  if (v5 == 1)
  {
    retstr->var0 = vdupq_n_s64(0x4056800000000000uLL);
    retstr->var1 = xmmword_259FCBAA0;
    retstr->var2 = xmmword_259FCBAD0;
    retstr->var3 = vdupq_n_s64(0x4046000000000000uLL);
    retstr->var4 = xmmword_259FCBAE0;
    *&retstr->var5 = xmmword_259FCBAF0;
    __asm { FMOV            V0.2D, #30.0 }

    *&retstr->var7 = _Q0;
  }

  else
  {
    v12 = [MEMORY[0x277D759A0] mainScreen];
    [v12 bounds];
    v14 = v13;

    if (v14 <= 375.0)
    {
      v16 = [MEMORY[0x277D759A0] mainScreen];
      [v16 bounds];
      v18 = v17;

      if (v18 <= 320.0)
      {
        retstr->var0 = vdupq_n_s64(0x4052000000000000uLL);
        retstr->var1 = xmmword_259FCBA40;
        retstr->var2 = xmmword_259FCBA50;
        retstr->var3 = vdupq_n_s64(0x4046000000000000uLL);
        v15 = xmmword_259FCBA60;
      }

      else
      {
        retstr->var0 = vdupq_n_s64(0x4057C00000000000uLL);
        retstr->var1 = xmmword_259FCBA70;
        retstr->var2 = xmmword_259FCBA80;
        retstr->var3 = vdupq_n_s64(0x4046000000000000uLL);
        v15 = xmmword_259FCBA90;
      }
    }

    else
    {
      retstr->var0 = vdupq_n_s64(0x4054000000000000uLL);
      retstr->var1 = xmmword_259FCBAA0;
      retstr->var2 = xmmword_259FCBAB0;
      retstr->var3 = vdupq_n_s64(0x4046000000000000uLL);
      v15 = xmmword_259FCBAC0;
    }

    __asm { FMOV            V1.2D, #15.0 }

    retstr->var4 = v15;
    *&retstr->var5 = _Q1;
    *&retstr->var7 = _Q1;
  }

  return result;
}

@end