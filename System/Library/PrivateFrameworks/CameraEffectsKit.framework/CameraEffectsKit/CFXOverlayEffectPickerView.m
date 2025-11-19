@interface CFXOverlayEffectPickerView
- (JTCollectionView)collectionView;
- (UIView)contentView;
- (void)didResizeCollectionViewToSize:(CGSize)a3;
- (void)subviewsDidLoad;
- (void)updateThumbnailColumnSizeForCollectionSize;
@end

@implementation CFXOverlayEffectPickerView

- (void)subviewsDidLoad
{
  v6.receiver = self;
  v6.super_class = CFXOverlayEffectPickerView;
  [(CFXEffectPickerView *)&v6 subviewsDidLoad];
  v3 = [(CFXOverlayEffectPickerView *)self collectionView];
  [v3 setContentInset:{9.0, 16.0, 0.0, 16.0}];

  v4 = [(CFXOverlayEffectPickerView *)self collectionViewLayout];
  [v4 setMinimumLineSpacing:16.0];

  v5 = [(CFXOverlayEffectPickerView *)self collectionViewLayout];
  [v5 setMinimumInteritemSpacing:16.0];

  [(CFXOverlayEffectPickerView *)self updateThumbnailColumnSizeForCollectionSize];
}

- (void)updateThumbnailColumnSizeForCollectionSize
{
  v3 = [(CFXOverlayEffectPickerView *)self window];

  if (v3)
  {
    v4 = [(CFXOverlayEffectPickerView *)self collectionView];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(CFXOverlayEffectPickerView *)self collectionView];
    [v13 contentInset];
    v15 = v6 + v14;
    v17 = v8 + v16;
    v19 = v10 - (v14 + v18);
    v21 = v12 - (v16 + v20);

    v28.origin.x = v15;
    v28.origin.y = v17;
    v28.size.width = v19;
    v28.size.height = v21;
    Width = CGRectGetWidth(v28);
    v23 = [(CFXOverlayEffectPickerView *)self collectionViewLayout];
    [v23 minimumInteritemSpacing];
    v25 = (4.0 + -1.0) * v24;

    v26 = floor((Width - v25) / 4.0);
    if (v26 > 0.0)
    {
      [(CFXEffectPickerView *)self setThumbnailSize:v26, v26];

      [(CFXEffectPickerView *)self setCellSize:v26, v26];
    }
  }
}

- (void)didResizeCollectionViewToSize:(CGSize)a3
{
  v4.receiver = self;
  v4.super_class = CFXOverlayEffectPickerView;
  [(CFXEffectPickerView *)&v4 didResizeCollectionViewToSize:a3.width, a3.height];
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