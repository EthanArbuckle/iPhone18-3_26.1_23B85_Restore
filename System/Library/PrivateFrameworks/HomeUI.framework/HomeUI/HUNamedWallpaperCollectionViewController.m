@interface HUNamedWallpaperCollectionViewController
- (HUNamedWallpaperCollectionViewController)initWithCollectionType:(int64_t)a3 horizontalInset:(double)a4 delegate:(id)a5;
- (HUNamedWallpaperCollectionViewControllerDelegate)delegate;
- (UIEdgeInsets)edgeInsets;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation HUNamedWallpaperCollectionViewController

- (HUNamedWallpaperCollectionViewController)initWithCollectionType:(int64_t)a3 horizontalInset:(double)a4 delegate:(id)a5
{
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x277D752F0]);
  [v9 setScrollDirection:1];
  [v9 setMinimumLineSpacing:8.0];
  v10 = [MEMORY[0x277D759A0] mainScreen];
  [v10 bounds];
  v12 = v11;
  v13 = [MEMORY[0x277D759A0] mainScreen];
  [v13 bounds];
  v15 = v12 / v14;

  [v9 setItemSize:ceil(v15 * 200.0)];
  v29.receiver = self;
  v29.super_class = HUNamedWallpaperCollectionViewController;
  v16 = [(HUNamedWallpaperCollectionViewController *)&v29 initWithCollectionViewLayout:v9];
  v17 = v16;
  if (v16)
  {
    v16->_collectionType = a3;
    objc_storeWeak(&v16->_delegate, v8);
    v17->_edgeInsets.top = 0.0;
    v17->_edgeInsets.left = a4;
    v17->_edgeInsets.bottom = 0.0;
    v17->_edgeInsets.right = a4;
    v18 = [MEMORY[0x277D14D18] sharedInstance];
    v19 = [v18 allNamedWallpapersForWallpaperCollectionType:a3];
    wallpapers = v17->_wallpapers;
    v17->_wallpapers = v19;

    v21 = [MEMORY[0x277D14D18] sharedInstance];
    v22 = [v21 allNamedWallpaperThumbnailsForWallpaperCollectionType:a3];
    wallpaperThumbnails = v17->_wallpaperThumbnails;
    v17->_wallpaperThumbnails = v22;

    v24 = [MEMORY[0x277CBEB38] dictionary];
    wallpaperThumbnailCache = v17->_wallpaperThumbnailCache;
    v17->_wallpaperThumbnailCache = v24;

    v26 = [MEMORY[0x277CBEB38] dictionary];
    wallpaperImageCache = v17->_wallpaperImageCache;
    v17->_wallpaperImageCache = v26;

    [(HUNamedWallpaperCollectionViewController *)v17 setPreferredContentSize:0.0, 232.0];
  }

  return v17;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = HUNamedWallpaperCollectionViewController;
  [(HUNamedWallpaperCollectionViewController *)&v12 viewDidLoad];
  v3 = [(HUNamedWallpaperCollectionViewController *)self collectionView];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 registerClass:v4 forCellWithReuseIdentifier:v6];

  v7 = [MEMORY[0x277D75348] clearColor];
  v8 = [(HUNamedWallpaperCollectionViewController *)self collectionView];
  [v8 setBackgroundColor:v7];

  v9 = [(HUNamedWallpaperCollectionViewController *)self collectionView];
  [v9 setShowsVerticalScrollIndicator:0];

  v10 = [(HUNamedWallpaperCollectionViewController *)self collectionView];
  [v10 setAlwaysBounceVertical:0];

  v11 = [(HUNamedWallpaperCollectionViewController *)self collectionView];
  [v11 setContentInset:{16.0, 16.0, 16.0, 16.0}];
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(HUNamedWallpaperCollectionViewController *)self wallpaperThumbnails:a3];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HUNamedWallpaperCollectionViewController *)self wallpaperThumbnails];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v6, "item")}];

  v10 = [(HUNamedWallpaperCollectionViewController *)self wallpaperThumbnailCache];
  v11 = [v9 assetIdentifier];
  v12 = [v10 objectForKeyedSubscript:v11];

  if (!v12)
  {
    v13 = [MEMORY[0x277D14D18] sharedInstance];
    v12 = [v13 wallpaperImageForWallpaper:v9 variant:0];

    v14 = [(HUNamedWallpaperCollectionViewController *)self wallpaperThumbnailCache];
    v15 = [v9 assetIdentifier];
    [v14 setObject:v12 forKeyedSubscript:v15];
  }

  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = [v7 dequeueReusableCellWithReuseIdentifier:v17 forIndexPath:v6];

  [v18 setImage:v12];
  [v18 setContentMode:{2 * (objc_msgSend(v9, "type") != 2)}];

  return v18;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectItemAtIndexPath:v6 animated:1];
  v7 = [(HUNamedWallpaperCollectionViewController *)self wallpapers];
  v8 = [v6 item];

  v14 = [v7 objectAtIndexedSubscript:v8];

  v9 = [(HUNamedWallpaperCollectionViewController *)self wallpaperImageCache];
  v10 = [v14 assetIdentifier];
  v11 = [v9 objectForKeyedSubscript:v10];

  if (!v11)
  {
    v12 = [MEMORY[0x277D14D18] sharedInstance];
    v11 = [v12 wallpaperImageForWallpaper:v14 variant:0];
  }

  v13 = [(HUNamedWallpaperCollectionViewController *)self delegate];
  [v13 namedWallpaperController:self didChooseWallpaper:v14 image:v11];
}

- (HUNamedWallpaperCollectionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end