@interface SUUIScreenshotsViewController
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (SUUIScreenshotsDelegate)delegate;
- (SUUIScreenshotsViewController)initWithTrailers:(id)a3 screenshots:(id)a4 clientContext:(id)a5;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)slideshowViewController:(id)a3 dataConsumerAtIndex:(int64_t)a4;
- (id)slideshowViewController:(id)a3 imageURLAtIndex:(int64_t)a4;
- (id)slideshowViewController:(id)a3 placeholderImageAtIndex:(int64_t)a4;
- (id)slideshowViewController:(id)a3 poppedImageViewAtIndex:(int64_t)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_setImage:(id)a3 forIndex:(int64_t)a4;
- (void)_setTrailerImage:(id)a3 forIndex:(int64_t)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)loadView;
- (void)reloadData;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)slideshowViewController:(id)a3 scrollToImageAtIndex:(int64_t)a4;
@end

@implementation SUUIScreenshotsViewController

- (SUUIScreenshotsViewController)initWithTrailers:(id)a3 screenshots:(id)a4 clientContext:(id)a5
{
  v57 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v55.receiver = self;
  v55.super_class = SUUIScreenshotsViewController;
  v11 = [(SUUIScreenshotsViewController *)&v55 init];
  v12 = v11;
  if (v11)
  {
    v50 = v10;
    objc_storeStrong(&v11->_clientContext, a5);
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    screenshotRawImages = v12->_screenshotRawImages;
    v12->_screenshotRawImages = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    screenshotImages = v12->_screenshotImages;
    v12->_screenshotImages = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    trailerImages = v12->_trailerImages;
    v12->_trailerImages = v17;

    v19 = v9;
    if (!v9)
    {
      v19 = [MEMORY[0x277CBEA60] array];
    }

    objc_storeStrong(&v12->_screenshots, v19);
    if (!v9)
    {
    }

    v20 = v8;
    if (!v8)
    {
      v20 = [MEMORY[0x277CBEA60] array];
    }

    objc_storeStrong(&v12->_trailers, v20);
    if (!v8)
    {
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v21 = v12->_screenshots;
    v22 = [(NSArray *)v21 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v52;
      v25 = 1.0;
      v26 = 1.0;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v52 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [*(*(&v51 + 1) + 8 * i) sizeForVariant:@"low-dpi"];
          v30 = v29 / v28;
          if (v30 <= v26 || v30 <= 1.0)
          {
            v32 = v26;
          }

          else
          {
            v32 = v30;
          }

          if (v30 < 1.0 && v30 < v25)
          {
            v25 = v30;
          }

          else
          {
            v26 = v32;
          }
        }

        v23 = [(NSArray *)v21 countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v23);
    }

    else
    {
      v25 = 1.0;
      v26 = 1.0;
    }

    v33 = SUUIUserInterfaceIdiom(v12->_clientContext);
    if (v33)
    {
      if (v26 == 1.0)
      {
        v34 = v25;
      }

      else
      {
        v34 = v26;
      }

      v12->_screenshotMaxSize.width = 300.0;
      if (v34 >= 1.0)
      {
        v35 = 300.0;
      }

      else
      {
        v35 = v34 * 300.0;
      }

      v12->_screenshotMaxSize.height = v35;
    }

    else
    {
      if (1.0 / v25 <= v26)
      {
        v36 = v26;
      }

      else
      {
        v36 = 1.0 / v25;
      }

      v37 = [MEMORY[0x277D759A0] mainScreen];
      [v37 bounds];
      v39 = dbl_259FCB360[v38 > 480.0];
      v12->_screenshotMaxSize.width = 196.0;
      v12->_screenshotMaxSize.height = v39;

      height = v12->_screenshotMaxSize.height;
      v41 = height / v12->_screenshotMaxSize.width;
      if (v36 < v41)
      {
        v12->_screenshotMaxSize.height = height * (v36 / v41);
      }
    }

    v42 = [SUUIScreenshotDataConsumer consumerWithScreenshotSize:?];
    dataConsumer = v12->_dataConsumer;
    v12->_dataConsumer = v42;

    [(SUUIScreenshotDataConsumer *)v12->_dataConsumer setForcesPortrait:v33 == 0];
    v10 = v50;
    if ([(NSArray *)v12->_trailers count])
    {
      if (v33)
      {
        v44 = 3;
      }

      else
      {
        v44 = 1;
      }

      v45 = +[(SSVURLDataConsumer *)SUUIVideoImageDataConsumer];
      trailerConsumer = v12->_trailerConsumer;
      v12->_trailerConsumer = v45;

      [(SUUIVideoImageDataConsumer *)v12->_trailerConsumer setAllowedOrientations:v44];
      v47 = SUUIUserInterfaceIdiom(v12->_clientContext);
      v48 = v12->_trailerConsumer;
      if (v47 == 1)
      {
        [(SUUIVideoImageDataConsumer *)v48 setLandscapeSize:300.0, 225.0];
        [(SUUIVideoImageDataConsumer *)v12->_trailerConsumer setPortraitSize:225.0, 300.0];
      }

      else
      {
        [(SUUIVideoImageDataConsumer *)v48 setLandscapeSize:348.0, 196.0];
        [(SUUIVideoImageDataConsumer *)v12->_trailerConsumer setPortraitSize:196.0, 348.0];
        v12->_screenshotMaxSize = xmmword_259FCB370;
      }
    }
  }

  return v12;
}

- (void)reloadData
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  screenshotRawImages = self->_screenshotRawImages;
  self->_screenshotRawImages = v3;

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  screenshotImages = self->_screenshotImages;
  self->_screenshotImages = v5;

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  trailerImages = self->_trailerImages;
  self->_trailerImages = v7;

  if ([(NSArray *)self->_screenshots count])
  {
    v9 = 0;
    do
    {
      v10 = [(NSArray *)self->_screenshots objectAtIndex:v9];
      v11 = [v10 URLForVariant:@"low-dpi"];
      if (v11)
      {
        v12 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURL:v11];
        v13 = +[(SSVURLDataConsumer *)SUUIImageDataConsumer];
        [v12 setDataConsumer:v13];

        [v12 setITunesStoreRequest:0];
        objc_initWeak(location, self);
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __43__SUUIScreenshotsViewController_reloadData__block_invoke;
        v39[3] = &unk_2798FA6F8;
        objc_copyWeak(v40, location);
        v40[1] = v9;
        [v12 setOutputBlock:v39];
        [(NSOperationQueue *)self->_operationQueue addOperation:v12];
        objc_destroyWeak(v40);
        objc_destroyWeak(location);
      }

      [v10 sizeForVariant:@"low-dpi"];
      v15 = v14;
      v17 = v16;
      dataConsumer = self->_dataConsumer;
      v19 = [MEMORY[0x277D75348] colorWithWhite:0.9 alpha:1.0];
      v20 = [(SUUIScreenshotDataConsumer *)dataConsumer imageForColor:v19 size:v15, v17];

      [(NSMutableArray *)self->_screenshotImages addObject:v20];
      v21 = self->_screenshotRawImages;
      v22 = [MEMORY[0x277CBEB68] null];
      [(NSMutableArray *)v21 addObject:v22];

      ++v9;
    }

    while (v9 < [(NSArray *)self->_screenshots count]);
  }

  if ([(NSArray *)self->_trailers count])
  {
    for (i = 0; i < [(NSArray *)self->_trailers count]; ++i)
    {
      v24 = [(NSArray *)self->_trailers objectAtIndex:i];
      v25 = [v24 artworks];
      v26 = [v25 bestArtworkForScaledSize:{self->_screenshotMaxSize.width, self->_screenshotMaxSize.height}];

      v27 = [v26 URL];

      if (v27)
      {
        v28 = objc_alloc(MEMORY[0x277D69CD8]);
        v29 = [v26 URL];
        v30 = [v28 initWithURL:v29];

        [v30 setDataConsumer:self->_trailerConsumer];
        [v30 setITunesStoreRequest:0];
        objc_initWeak(location, self);
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __43__SUUIScreenshotsViewController_reloadData__block_invoke_3;
        v37[3] = &unk_2798FA6F8;
        objc_copyWeak(v38, location);
        v38[1] = i;
        [v30 setOutputBlock:v37];
        [(NSOperationQueue *)self->_operationQueue addOperation:v30];
        objc_destroyWeak(v38);
        objc_destroyWeak(location);

        if (!v26)
        {
          goto LABEL_13;
        }
      }

      else if (!v26)
      {
        goto LABEL_13;
      }

      if (([(SUUIVideoImageDataConsumer *)self->_trailerConsumer allowedOrientations]& 2) != 0)
      {
        [v26 size];
        if (v32 <= v33)
        {
          v31 = 1;
        }

        else
        {
          v31 = 2;
        }

        goto LABEL_17;
      }

LABEL_13:
      v31 = 1;
LABEL_17:
      trailerConsumer = self->_trailerConsumer;
      v35 = [MEMORY[0x277D75348] colorWithWhite:0.9 alpha:1.0];
      v36 = [(SUUIVideoImageDataConsumer *)trailerConsumer imageForColor:v35 orientation:v31];

      [(NSMutableArray *)self->_trailerImages addObject:v36];
    }
  }

  [(UICollectionView *)self->_collectionView setContentInset:0.0, 8.0, 0.0, 8.0];
  [(UICollectionView *)self->_collectionView reloadData];
}

void __43__SUUIScreenshotsViewController_reloadData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SUUIScreenshotsViewController_reloadData__block_invoke_2;
  block[3] = &unk_2798FA9C0;
  objc_copyWeak(v8, (a1 + 32));
  v4 = *(a1 + 40);
  v7 = v3;
  v8[1] = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(v8);
}

void __43__SUUIScreenshotsViewController_reloadData__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setImage:*(a1 + 32) forIndex:*(a1 + 48)];
}

void __43__SUUIScreenshotsViewController_reloadData__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SUUIScreenshotsViewController_reloadData__block_invoke_4;
  block[3] = &unk_2798FA9C0;
  objc_copyWeak(v8, (a1 + 32));
  v4 = *(a1 + 40);
  v7 = v3;
  v8[1] = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(v8);
}

void __43__SUUIScreenshotsViewController_reloadData__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setTrailerImage:*(a1 + 32) forIndex:*(a1 + 48)];
}

- (void)loadView
{
  v11 = [[SUUIScreenshotsView alloc] initWithFrame:0.0, 0.0, 1.0, self->_screenshotMaxSize.height + 30.0];
  [(SUUIScreenshotsViewController *)self setView:v11];
  v3 = objc_alloc_init(SUUISwooshCollectionViewLayout);
  [(SUUISwooshCollectionViewLayout *)v3 setSnapsToItemBoundaries:1];
  [(UICollectionViewFlowLayout *)v3 setMinimumLineSpacing:0.0];
  [(UICollectionViewFlowLayout *)v3 setMinimumInteritemSpacing:0.0];
  [(UICollectionViewFlowLayout *)v3 setScrollDirection:1];
  v4 = objc_alloc(MEMORY[0x277D752A0]);
  [(SUUIScreenshotsView *)v11 bounds];
  v5 = [v4 initWithFrame:v3 collectionViewLayout:?];
  collectionView = self->_collectionView;
  self->_collectionView = v5;

  v7 = self->_collectionView;
  v8 = [MEMORY[0x277D75348] clearColor];
  [(UICollectionView *)v7 setBackgroundColor:v8];

  [(UICollectionView *)self->_collectionView setAutoresizingMask:0];
  [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"a"];
  [(UICollectionView *)self->_collectionView setDelegate:self];
  [(UICollectionView *)self->_collectionView setDataSource:self];
  [(UICollectionView *)self->_collectionView setAlwaysBounceHorizontal:1];
  [(UICollectionView *)self->_collectionView setShowsVerticalScrollIndicator:0];
  [(UICollectionView *)self->_collectionView setShowsHorizontalScrollIndicator:0];
  [(UICollectionView *)self->_collectionView setClipsToBounds:0];
  [(UICollectionView *)self->_collectionView setPrefetchingEnabled:0];
  v9 = self->_collectionView;
  +[SUUISwooshCollectionViewLayout snapToBoundariesDecelerationRate];
  [(UICollectionView *)v9 setDecelerationRate:v10];
  [(SUUIScreenshotsView *)v11 setPrimaryView:self->_collectionView];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v12 = a4;
  if ([v12 section])
  {
    if ([v12 section] != 1)
    {
      goto LABEL_11;
    }

    v5 = [MEMORY[0x277D75418] currentDevice];
    v6 = [v5 userInterfaceIdiom];

    if ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v7 = objc_alloc_init(SUUISlideshowViewController);
      [(SUUISlideshowViewController *)v7 setClientContext:self->_clientContext];
      [(SUUISlideshowViewController *)v7 setDataSource:self];
      [(SUUISlideshowViewController *)v7 setDelegate:self];
      -[SUUISlideshowViewController setCurrentIndex:](v7, "setCurrentIndex:", [v12 item]);
      v8 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v7];
      [(SUUIPlayableAsset *)v8 setTransitioningDelegate:v7];
      v9 = v8;
    }

    else
    {
      v7 = objc_alloc_init(SUUIIPhoneSlideshowViewController);
      [(SUUISlideshowViewController *)v7 setClientContext:self->_clientContext];
      [(SUUISlideshowViewController *)v7 setDataSource:self];
      -[SUUISlideshowViewController setCurrentIndex:](v7, "setCurrentIndex:", [v12 item]);
      v9 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v7];
      v8 = v9;
    }

    [(SUUIPlayableAsset *)v9 setModalPresentationStyle:17];
    [(SUUIScreenshotsViewController *)self presentViewController:v8 animated:1 completion:0];
    goto LABEL_9;
  }

  v7 = -[NSArray objectAtIndex:](self->_trailers, "objectAtIndex:", [v12 item]);
  if (v7)
  {
    v8 = [[SUUIPlayableAsset alloc] initWithVideo:v7];
    v10 = [(SUUIScreenshotsViewController *)self clientContext];
    v11 = SUUIVideoPreviewPlayPlayableAsset(v8, v10);

    [(SUUIScreenshotsViewController *)self presentViewController:v11 animated:1 completion:0];
LABEL_9:
  }

LABEL_11:
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = a5;
  if ([v6 section])
  {
    if ([v6 section] != 1)
    {
      v10 = *MEMORY[0x277CBF3A8];
      goto LABEL_7;
    }

    v7 = &OBJC_IVAR___SUUIScreenshotsViewController__screenshotImages;
  }

  else
  {
    v7 = &OBJC_IVAR___SUUIScreenshotsViewController__trailerImages;
  }

  v8 = [*(&self->super.super.super.isa + *v7) objectAtIndex:{objc_msgSend(v6, "item")}];
  [v8 size];
  v10 = v9 + 15.0;

LABEL_7:
  v11 = self->_screenshotMaxSize.height + 30.0;

  v12 = v10;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4)
  {
    if (a4 != 1)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v7 = &OBJC_IVAR___SUUIScreenshotsViewController__screenshotImages;
  }

  else
  {
    v7 = &OBJC_IVAR___SUUIScreenshotsViewController__trailerImages;
  }

  v8 = [*(&self->super.super.super.isa + *v7) count];
LABEL_7:

  return v8;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v5 = a4;
  if ([v5 section])
  {
    if ([v5 section] == 1)
    {
      v6 = [(UICollectionView *)self->_collectionView dequeueReusableCellWithReuseIdentifier:@"a" forIndexPath:v5];
      v7 = -[NSMutableArray objectAtIndex:](self->_screenshotImages, "objectAtIndex:", [v5 row]);
      [v6 setImage:v7];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = [(UICollectionView *)self->_collectionView dequeueReusableCellWithReuseIdentifier:@"a" forIndexPath:v5];
    v8 = -[NSMutableArray objectAtIndex:](self->_trailerImages, "objectAtIndex:", [v5 row]);
    [v6 setImage:v8];

    [v6 setVideo:1];
  }

  return v6;
}

- (id)slideshowViewController:(id)a3 placeholderImageAtIndex:(int64_t)a4
{
  v6 = [(NSMutableArray *)self->_screenshotRawImages count];
  v7 = 0;
  if ((a4 & 0x8000000000000000) == 0 && v6 > a4)
  {
    v8 = [(NSMutableArray *)self->_screenshotRawImages objectAtIndex:a4];
    v9 = [MEMORY[0x277CBEB68] null];
    if (v8 == v9)
    {
      v7 = 0;
    }

    else
    {
      v7 = [(NSMutableArray *)self->_screenshotRawImages objectAtIndex:a4];
    }
  }

  return v7;
}

- (id)slideshowViewController:(id)a3 imageURLAtIndex:(int64_t)a4
{
  v4 = [(NSArray *)self->_screenshots objectAtIndex:a4];
  v5 = [v4 URLForVariant:@"high-dpi"];

  return v5;
}

- (id)slideshowViewController:(id)a3 dataConsumerAtIndex:(int64_t)a4
{
  v4 = [(NSArray *)self->_screenshots objectAtIndex:a4];
  [v4 sizeForVariant:@"high-dpi"];
  v5 = [SUUIScreenshotDataConsumer consumerWithScreenshotSize:?];
  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if ((v7 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    [v5 setForcesPortrait:1];
  }

  return v5;
}

- (void)slideshowViewController:(id)a3 scrollToImageAtIndex:(int64_t)a4
{
  v7 = [MEMORY[0x277CCAA70] indexPathForItem:a4 inSection:1];
  v5 = [(UICollectionView *)self->_collectionView indexPathsForVisibleItems];
  v6 = [v5 containsObject:v7];

  if ((v6 & 1) == 0)
  {
    [(UICollectionView *)self->_collectionView scrollToItemAtIndexPath:v7 atScrollPosition:8 animated:0];
  }
}

- (id)slideshowViewController:(id)a3 poppedImageViewAtIndex:(int64_t)a4
{
  v5 = [MEMORY[0x277CCAA70] indexPathForItem:a4 inSection:1];
  v6 = [(UICollectionView *)self->_collectionView collectionViewLayout];
  v7 = [v6 layoutAttributesForItemAtIndexPath:v5];

  if (v7)
  {
    v8 = objc_alloc_init(SUUIIPhoneSlideshowCell);
    [v7 frame];
    [(SUUIIPhoneSlideshowCell *)v8 setFrame:?];
    v9 = -[NSMutableArray objectAtIndex:](self->_screenshotImages, "objectAtIndex:", [v5 item]);
    [(SUUIIPhoneSlideshowCell *)v8 setImage:v9];

    [(SUUIIPhoneSlideshowCell *)v8 layoutSubviews];
    [(UICollectionView *)self->_collectionView addSubview:v8];
    v10 = [(SUUIScreenshotsViewController *)self view];
    [(SUUIIPhoneSlideshowCell *)v8 imageFrame];
    [v10 convertRect:v8 fromView:?];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    [(SUUIIPhoneSlideshowCell *)v8 removeFromSuperview];
    v19 = -[NSMutableArray objectAtIndex:](self->_screenshotImages, "objectAtIndex:", [v5 item]);
    v20 = [MEMORY[0x277CBEB68] null];

    if (v19 == v20)
    {
      v21 = objc_alloc_init(MEMORY[0x277D755E8]);
    }

    else
    {
      v21 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v19];
    }

    v22 = v21;
    v23 = [MEMORY[0x277D75348] clearColor];
    [v22 setBackgroundColor:v23];

    [v22 setFrame:{v12, v14, v16, v18}];
    [v22 setContentMode:1];
    v24 = [(SUUIScreenshotsViewController *)self view];
    [v24 addSubview:v22];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 screenshotsWillBeginDragging:self];
    }
  }
}

- (void)_setImage:(id)a3 forIndex:(int64_t)a4
{
  if (a3)
  {
    dataConsumer = self->_dataConsumer;
    v7 = a3;
    v11 = [(SUUIScreenshotDataConsumer *)dataConsumer imageForImage:v7];
    [(NSMutableArray *)self->_screenshotRawImages replaceObjectAtIndex:a4 withObject:v7];

    [(NSMutableArray *)self->_screenshotImages replaceObjectAtIndex:a4 withObject:v11];
    collectionView = self->_collectionView;
    v9 = [MEMORY[0x277CCAA70] indexPathForItem:a4 inSection:1];
    v10 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v9];

    [v10 setImage:v11];
  }
}

- (void)_setTrailerImage:(id)a3 forIndex:(int64_t)a4
{
  if (a3)
  {
    trailerImages = self->_trailerImages;
    v7 = a3;
    [(NSMutableArray *)trailerImages replaceObjectAtIndex:a4 withObject:v7];
    collectionView = self->_collectionView;
    v9 = [MEMORY[0x277CCAA70] indexPathForItem:a4 inSection:0];
    v10 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v9];

    [v10 setImage:v7];
  }
}

- (SUUIScreenshotsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end