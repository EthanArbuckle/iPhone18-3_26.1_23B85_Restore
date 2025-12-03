@interface HUWallpaperPhotoCollectionFlowLayout
- (HUWallpaperPhotoCollectionFlowLayout)initWithAssetCollectionSubtype:(int64_t)subtype;
- (void)prepareLayout;
@end

@implementation HUWallpaperPhotoCollectionFlowLayout

- (HUWallpaperPhotoCollectionFlowLayout)initWithAssetCollectionSubtype:(int64_t)subtype
{
  v7.receiver = self;
  v7.super_class = HUWallpaperPhotoCollectionFlowLayout;
  v4 = [(UICollectionViewFlowLayout *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_assetCollectionSubtype = subtype;
    [(UICollectionViewFlowLayout *)v4 setMinimumInteritemSpacing:1.0];
  }

  return v5;
}

- (void)prepareLayout
{
  v13.receiver = self;
  v13.super_class = HUWallpaperPhotoCollectionFlowLayout;
  [(UICollectionViewFlowLayout *)&v13 prepareLayout];
  collectionView = [(HUWallpaperPhotoCollectionFlowLayout *)self collectionView];
  [collectionView bounds];
  v5 = v4;
  [(UICollectionViewFlowLayout *)self minimumInteritemSpacing];
  v7 = (v5 + v6 * -3.0) * 0.25;

  assetCollectionSubtype = [(HUWallpaperPhotoCollectionFlowLayout *)self assetCollectionSubtype];
  v9 = 1.0;
  v10 = v7;
  if (assetCollectionSubtype == 201)
  {
    collectionView2 = [(HUWallpaperPhotoCollectionFlowLayout *)self collectionView];
    [collectionView2 bounds];
    v10 = v12 + -16.0;

    v9 = 8.0;
  }

  [(UICollectionViewFlowLayout *)self setMinimumLineSpacing:v9];
  [(UICollectionViewFlowLayout *)self setItemSize:v10, v7];
}

@end