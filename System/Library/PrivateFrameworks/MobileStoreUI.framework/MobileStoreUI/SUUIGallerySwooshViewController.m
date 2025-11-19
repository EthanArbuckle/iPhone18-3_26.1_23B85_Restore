@interface SUUIGallerySwooshViewController
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (SUUIGallerySwooshViewController)initWithGallerySwoosh:(id)a3;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (id)_newViewWithMediaComponent:(id)a3;
- (id)artworkForItemAtIndex:(int64_t)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)loadView;
- (void)mediaView:(id)a3 playbackStateDidChange:(int64_t)a4;
- (void)performActionForItemAtIndex:(int64_t)a3 animated:(BOOL)a4;
- (void)setColorScheme:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setImage:(id)a3 forItemAtIndex:(int64_t)a4;
@end

@implementation SUUIGallerySwooshViewController

- (SUUIGallerySwooshViewController)initWithGallerySwoosh:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = SUUIGallerySwooshViewController;
  v6 = [(SUUIGallerySwooshViewController *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_gallerySwoosh, a3);
    v8 = [(SUUISwooshPageComponent *)v7->_gallerySwoosh mediaComponents];
    v9 = [v8 count];

    if (v9 >= 1)
    {
      for (i = 0; i != v9; ++i)
      {
        v11 = [(SUUIGallerySwooshViewController *)v7 artworkForItemAtIndex:i];
        itemHeight = v7->_itemHeight;
        v13 = [v11 height];
        if (itemHeight >= v13)
        {
          v13 = itemHeight;
        }

        v7->_itemHeight = v13;
      }
    }

    if ([(SUUISwooshPageComponent *)v7->_gallerySwoosh showsMediaTitles])
    {
      v7->_itemHeight = v7->_itemHeight + 27.0;
    }
  }

  return v7;
}

- (id)artworkForItemAtIndex:(int64_t)a3
{
  v4 = [(SUUISwooshPageComponent *)self->_gallerySwoosh mediaComponents];
  v5 = [v4 objectAtIndex:a3];

  v6 = [v5 bestThumbnailArtwork];

  return v6;
}

- (void)performActionForItemAtIndex:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  collectionView = self->_collectionView;
  v6 = [MEMORY[0x277CCAA70] indexPathForItem:a3 inSection:0];
  v8 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v6];

  v7 = [v8 contentChildView];
  [v7 beginPlaybackAnimated:v4];
}

- (void)setColorScheme:(id)a3
{
  v4 = a3;
  v5 = [(SUUISwooshViewController *)self colorScheme];

  if (v5 != v4)
  {
    v6.receiver = self;
    v6.super_class = SUUIGallerySwooshViewController;
    [(SUUISwooshViewController *)&v6 setColorScheme:v4];
    [(SUUISwooshView *)self->_swooshView setColoringWithColorScheme:v4];
  }
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  self->_delegateWantsWillDisplay = objc_opt_respondsToSelector() & 1;
  v5.receiver = self;
  v5.super_class = SUUIGallerySwooshViewController;
  [(SUUISwooshViewController *)&v5 setDelegate:v4];
}

- (void)setImage:(id)a3 forItemAtIndex:(int64_t)a4
{
  collectionView = self->_collectionView;
  v6 = MEMORY[0x277CCAA70];
  v7 = a3;
  v8 = [v6 indexPathForItem:a4 inSection:0];
  v10 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v8];

  v9 = [v10 contentChildView];
  [v9 setThumbnailImage:v7];
}

- (void)loadView
{
  if (!self->_swooshView)
  {
    v3 = objc_alloc_init(SUUISwooshView);
    swooshView = self->_swooshView;
    self->_swooshView = v3;

    v5 = self->_swooshView;
    v6 = [(SUUISwooshViewController *)self colorScheme];
    [(SUUISwooshView *)v5 setColoringWithColorScheme:v6];

    v7 = self->_swooshView;
    v8 = [(SUUISwooshPageComponent *)self->_gallerySwoosh title];
    [(SUUISwooshView *)v7 setTitle:v8];

    [(SUUISwooshView *)self->_swooshView contentInsets];
    [(SUUISwooshView *)self->_swooshView setCollectionViewInsets:0.0, -v9, 0.0, -v10];
  }

  collectionView = self->_collectionView;
  if (!collectionView)
  {
    v12 = objc_alloc_init(SUUISwooshCollectionViewLayout);
    [(UICollectionViewFlowLayout *)v12 setMinimumInteritemSpacing:20.0];
    [(UICollectionViewFlowLayout *)v12 setMinimumLineSpacing:20.0];
    [(UICollectionViewFlowLayout *)v12 setScrollDirection:1];
    [(SUUISwooshCollectionViewLayout *)v12 setSnapsToItemBoundaries:1];
    v13 = [objc_alloc(MEMORY[0x277D752A0]) initWithFrame:v12 collectionViewLayout:{0.0, 0.0, 0.0, self->_itemHeight}];
    v14 = self->_collectionView;
    self->_collectionView = v13;

    [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"0"];
    [(UICollectionView *)self->_collectionView setAlwaysBounceHorizontal:1];
    v15 = self->_collectionView;
    v16 = [(SUUISwooshView *)self->_swooshView backgroundColor];
    [(UICollectionView *)v15 setBackgroundColor:v16];

    [(UICollectionView *)self->_collectionView setDataSource:self];
    v17 = self->_collectionView;
    +[SUUISwooshCollectionViewLayout snapToBoundariesDecelerationRate];
    [(UICollectionView *)v17 setDecelerationRate:v18];
    [(UICollectionView *)self->_collectionView setDelegate:self];
    [(UICollectionView *)self->_collectionView setScrollsToTop:0];
    [(UICollectionView *)self->_collectionView setShowsHorizontalScrollIndicator:0];
    [(UICollectionView *)self->_collectionView setPrefetchingEnabled:0];

    collectionView = self->_collectionView;
  }

  [(SUUISwooshView *)self->_swooshView setCollectionView:collectionView];
  [(SUUISwooshView *)self->_swooshView sizeToFit];
  v19 = self->_swooshView;

  [(SUUIGallerySwooshViewController *)self setView:v19];
}

- (void)mediaView:(id)a3 playbackStateDidChange:(int64_t)a4
{
  v9 = a3;
  v6 = [(SUUISwooshViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v9 bounds];
    [v9 convertRect:self->_collectionView toView:?];
    v7 = [(UICollectionView *)self->_collectionView indexPathForItemAtPoint:?];
    v8 = v7;
    if (v7)
    {
      [v6 swoosh:self didChangePlaybackState:a4 forItemAtIndex:{objc_msgSend(v7, "item")}];
    }
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 dequeueReusableCellWithReuseIdentifier:@"0" forIndexPath:v6];
  v9 = [v7 backgroundColor];

  [v8 setBackgroundColor:v9];
  v10 = [v6 item];

  v11 = [(SUUISwooshPageComponent *)self->_gallerySwoosh mediaComponents];
  v12 = [v11 objectAtIndex:v10];

  v13 = [(SUUISwooshViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v14 = [v13 swoosh:self imageForCellAtIndex:v10];
  }

  else
  {
    v14 = 0;
  }

  v15 = [v12 bestThumbnailArtwork];
  v16 = [(SUUIGallerySwooshViewController *)self _newViewWithMediaComponent:v12];
  [v16 setThumbnailImage:v14];
  [v16 frame];
  v18 = v17;
  v20 = v19;
  v21 = [v15 width];
  v22 = [v15 height];
  v23 = [MEMORY[0x277D75348] blackColor];
  [v16 setBackgroundColor:v23];

  [v16 setFrame:{v18, v20, v21, v22}];
  [v8 setContentChildView:v16];
  if ([(SUUISwooshPageComponent *)self->_gallerySwoosh showsMediaTitles])
  {
    v24 = [(SUUISwooshViewController *)self colorScheme];
    [v8 setColoringWithColorScheme:v24];

    v25 = [v12 title];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = &stru_286AECDE0;
    }

    [v8 setTitle:v27];
  }

  if (self->_delegateWantsWillDisplay)
  {
    [v13 swoosh:self willDisplayCellAtIndex:v10];
  }

  return v8;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(SUUISwooshPageComponent *)self->_gallerySwoosh mediaComponents:a3];
  v5 = [v4 count];

  return v5;
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
  v5 = 0.0;
  v6 = 15.0;
  v7 = 0.0;
  v8 = 15.0;
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  itemHeight = self->_itemHeight;
  v6 = -[SUUIGallerySwooshViewController artworkForItemAtIndex:](self, "artworkForItemAtIndex:", [a5 item]);
  v7 = [v6 width];

  v8 = v7;
  v9 = itemHeight;
  result.height = v9;
  result.width = v8;
  return result;
}

- (id)_newViewWithMediaComponent:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SUUIEmbeddedMediaView);
  v6 = [v4 accessibilityLabel];
  [(SUUIEmbeddedMediaView *)v5 setAccessibilityLabel:v6];

  [(SUUIEmbeddedMediaView *)v5 setDelegate:self];
  -[SUUIEmbeddedMediaView setMediaType:](v5, "setMediaType:", [v4 mediaType]);
  v7 = [v4 mediaURLString];

  [(SUUIEmbeddedMediaView *)v5 setMediaURLString:v7];
  return v5;
}

@end