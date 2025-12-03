@interface HUNamedWallpaperCollectionViewController
- (HUNamedWallpaperCollectionViewController)initWithCollectionType:(int64_t)type horizontalInset:(double)inset delegate:(id)delegate;
- (HUNamedWallpaperCollectionViewControllerDelegate)delegate;
- (UIEdgeInsets)edgeInsets;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation HUNamedWallpaperCollectionViewController

- (HUNamedWallpaperCollectionViewController)initWithCollectionType:(int64_t)type horizontalInset:(double)inset delegate:(id)delegate
{
  delegateCopy = delegate;
  v9 = objc_alloc_init(MEMORY[0x277D752F0]);
  [v9 setScrollDirection:1];
  [v9 setMinimumLineSpacing:8.0];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v12 = v11;
  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 bounds];
  v15 = v12 / v14;

  [v9 setItemSize:ceil(v15 * 200.0)];
  v29.receiver = self;
  v29.super_class = HUNamedWallpaperCollectionViewController;
  v16 = [(HUNamedWallpaperCollectionViewController *)&v29 initWithCollectionViewLayout:v9];
  v17 = v16;
  if (v16)
  {
    v16->_collectionType = type;
    objc_storeWeak(&v16->_delegate, delegateCopy);
    v17->_edgeInsets.top = 0.0;
    v17->_edgeInsets.left = inset;
    v17->_edgeInsets.bottom = 0.0;
    v17->_edgeInsets.right = inset;
    mEMORY[0x277D14D18] = [MEMORY[0x277D14D18] sharedInstance];
    v19 = [mEMORY[0x277D14D18] allNamedWallpapersForWallpaperCollectionType:type];
    wallpapers = v17->_wallpapers;
    v17->_wallpapers = v19;

    mEMORY[0x277D14D18]2 = [MEMORY[0x277D14D18] sharedInstance];
    v22 = [mEMORY[0x277D14D18]2 allNamedWallpaperThumbnailsForWallpaperCollectionType:type];
    wallpaperThumbnails = v17->_wallpaperThumbnails;
    v17->_wallpaperThumbnails = v22;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    wallpaperThumbnailCache = v17->_wallpaperThumbnailCache;
    v17->_wallpaperThumbnailCache = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    wallpaperImageCache = v17->_wallpaperImageCache;
    v17->_wallpaperImageCache = dictionary2;

    [(HUNamedWallpaperCollectionViewController *)v17 setPreferredContentSize:0.0, 232.0];
  }

  return v17;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = HUNamedWallpaperCollectionViewController;
  [(HUNamedWallpaperCollectionViewController *)&v12 viewDidLoad];
  collectionView = [(HUNamedWallpaperCollectionViewController *)self collectionView];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [collectionView registerClass:v4 forCellWithReuseIdentifier:v6];

  clearColor = [MEMORY[0x277D75348] clearColor];
  collectionView2 = [(HUNamedWallpaperCollectionViewController *)self collectionView];
  [collectionView2 setBackgroundColor:clearColor];

  collectionView3 = [(HUNamedWallpaperCollectionViewController *)self collectionView];
  [collectionView3 setShowsVerticalScrollIndicator:0];

  collectionView4 = [(HUNamedWallpaperCollectionViewController *)self collectionView];
  [collectionView4 setAlwaysBounceVertical:0];

  collectionView5 = [(HUNamedWallpaperCollectionViewController *)self collectionView];
  [collectionView5 setContentInset:{16.0, 16.0, 16.0, 16.0}];
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(HUNamedWallpaperCollectionViewController *)self wallpaperThumbnails:view];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  wallpaperThumbnails = [(HUNamedWallpaperCollectionViewController *)self wallpaperThumbnails];
  v9 = [wallpaperThumbnails objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];

  wallpaperThumbnailCache = [(HUNamedWallpaperCollectionViewController *)self wallpaperThumbnailCache];
  assetIdentifier = [v9 assetIdentifier];
  v12 = [wallpaperThumbnailCache objectForKeyedSubscript:assetIdentifier];

  if (!v12)
  {
    mEMORY[0x277D14D18] = [MEMORY[0x277D14D18] sharedInstance];
    v12 = [mEMORY[0x277D14D18] wallpaperImageForWallpaper:v9 variant:0];

    wallpaperThumbnailCache2 = [(HUNamedWallpaperCollectionViewController *)self wallpaperThumbnailCache];
    assetIdentifier2 = [v9 assetIdentifier];
    [wallpaperThumbnailCache2 setObject:v12 forKeyedSubscript:assetIdentifier2];
  }

  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = [viewCopy dequeueReusableCellWithReuseIdentifier:v17 forIndexPath:pathCopy];

  [v18 setImage:v12];
  [v18 setContentMode:{2 * (objc_msgSend(v9, "type") != 2)}];

  return v18;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectItemAtIndexPath:pathCopy animated:1];
  wallpapers = [(HUNamedWallpaperCollectionViewController *)self wallpapers];
  item = [pathCopy item];

  v14 = [wallpapers objectAtIndexedSubscript:item];

  wallpaperImageCache = [(HUNamedWallpaperCollectionViewController *)self wallpaperImageCache];
  assetIdentifier = [v14 assetIdentifier];
  v11 = [wallpaperImageCache objectForKeyedSubscript:assetIdentifier];

  if (!v11)
  {
    mEMORY[0x277D14D18] = [MEMORY[0x277D14D18] sharedInstance];
    v11 = [mEMORY[0x277D14D18] wallpaperImageForWallpaper:v14 variant:0];
  }

  delegate = [(HUNamedWallpaperCollectionViewController *)self delegate];
  [delegate namedWallpaperController:self didChooseWallpaper:v14 image:v11];
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