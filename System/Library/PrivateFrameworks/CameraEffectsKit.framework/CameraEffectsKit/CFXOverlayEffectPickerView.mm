@interface CFXOverlayEffectPickerView
- (JTCollectionView)collectionView;
- (UIView)contentView;
- (void)didResizeCollectionViewToSize:(CGSize)size;
- (void)subviewsDidLoad;
- (void)updateThumbnailColumnSizeForCollectionSize;
@end

@implementation CFXOverlayEffectPickerView

- (void)subviewsDidLoad
{
  v6.receiver = self;
  v6.super_class = CFXOverlayEffectPickerView;
  [(CFXEffectPickerView *)&v6 subviewsDidLoad];
  collectionView = [(CFXOverlayEffectPickerView *)self collectionView];
  [collectionView setContentInset:{9.0, 16.0, 0.0, 16.0}];

  collectionViewLayout = [(CFXOverlayEffectPickerView *)self collectionViewLayout];
  [collectionViewLayout setMinimumLineSpacing:16.0];

  collectionViewLayout2 = [(CFXOverlayEffectPickerView *)self collectionViewLayout];
  [collectionViewLayout2 setMinimumInteritemSpacing:16.0];

  [(CFXOverlayEffectPickerView *)self updateThumbnailColumnSizeForCollectionSize];
}

- (void)updateThumbnailColumnSizeForCollectionSize
{
  window = [(CFXOverlayEffectPickerView *)self window];

  if (window)
  {
    collectionView = [(CFXOverlayEffectPickerView *)self collectionView];
    [collectionView bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    collectionView2 = [(CFXOverlayEffectPickerView *)self collectionView];
    [collectionView2 contentInset];
    v15 = v6 + v14;
    v17 = v8 + v16;
    v19 = v10 - (v14 + v18);
    v21 = v12 - (v16 + v20);

    v28.origin.x = v15;
    v28.origin.y = v17;
    v28.size.width = v19;
    v28.size.height = v21;
    Width = CGRectGetWidth(v28);
    collectionViewLayout = [(CFXOverlayEffectPickerView *)self collectionViewLayout];
    [collectionViewLayout minimumInteritemSpacing];
    v25 = (4.0 + -1.0) * v24;

    v26 = floor((Width - v25) / 4.0);
    if (v26 > 0.0)
    {
      [(CFXEffectPickerView *)self setThumbnailSize:v26, v26];

      [(CFXEffectPickerView *)self setCellSize:v26, v26];
    }
  }
}

- (void)didResizeCollectionViewToSize:(CGSize)size
{
  v4.receiver = self;
  v4.super_class = CFXOverlayEffectPickerView;
  [(CFXEffectPickerView *)&v4 didResizeCollectionViewToSize:size.width, size.height];
  [(CFXOverlayEffectPickerView *)self updateThumbnailColumnSizeForCollectionSize];
}

- (UIView)contentView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentView);

  return WeakRetained;
}

- (JTCollectionView)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

@end