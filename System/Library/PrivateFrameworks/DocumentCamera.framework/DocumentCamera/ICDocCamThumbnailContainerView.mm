@interface ICDocCamThumbnailContainerView
- (BOOL)accessibilityElementsHidden;
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrame;
- (UICollectionView)collectionView;
- (id)accessibilityHint;
- (id)accessibilityLabel;
@end

@implementation ICDocCamThumbnailContainerView

- (BOOL)isAccessibilityElement
{
  v3 = objc_opt_class();
  collectionView = [(ICDocCamThumbnailContainerView *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  v6 = DCDynamicCast(v3, collectionViewLayout);

  collectionView2 = [(ICDocCamThumbnailContainerView *)self collectionView];
  dataSource = [collectionView2 dataSource];
  collectionView3 = [(ICDocCamThumbnailContainerView *)self collectionView];
  v10 = [dataSource collectionView:collectionView3 numberOfItemsInSection:0];

  compactLayout = [v6 compactLayout];
  if (v10)
  {
    v12 = compactLayout;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)accessibilityElementsHidden
{
  collectionView = [(ICDocCamThumbnailContainerView *)self collectionView];
  dataSource = [collectionView dataSource];
  collectionView2 = [(ICDocCamThumbnailContainerView *)self collectionView];
  v6 = [dataSource collectionView:collectionView2 numberOfItemsInSection:0];

  return v6 == 0;
}

- (id)accessibilityLabel
{
  collectionView = [(ICDocCamThumbnailContainerView *)self collectionView];
  dataSource = [collectionView dataSource];
  collectionView2 = [(ICDocCamThumbnailContainerView *)self collectionView];
  v6 = [dataSource collectionView:collectionView2 numberOfItemsInSection:0];

  v7 = [DCLocalization localizedStringForKey:@"%lu_SCANNED_IMAGE_THUMBNAILS" value:@"%lu_SCANNED_IMAGE_THUMBNAILS" table:@"Localizable"];
  v8 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v7, v6];

  return v8;
}

- (id)accessibilityHint
{
  if ([(ICDocCamThumbnailContainerView *)self isAccessibilityElement])
  {
    collectionView = [(ICDocCamThumbnailContainerView *)self collectionView];
    dataSource = [collectionView dataSource];
    collectionView2 = [(ICDocCamThumbnailContainerView *)self collectionView];
    v6 = [dataSource collectionView:collectionView2 numberOfItemsInSection:0];

    v7 = [DCLocalization localizedStringForKey:@"Double-tap to preview %lu scanned images" value:@"Double-tap to preview %lu scanned images" table:@"Localizable"];
    v8 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v7, v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGRect)accessibilityFrame
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBF3A0];
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  collectionView = [(ICDocCamThumbnailContainerView *)self collectionView];
  visibleCells = [collectionView visibleCells];

  v9 = [visibleCells countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = *v26;
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(visibleCells);
        }

        v12 = *(*(&v25 + 1) + 8 * v11);
        v31.origin.x = v3;
        v31.origin.y = v4;
        v31.size.width = v5;
        v31.size.height = v6;
        if (CGRectEqualToRect(v31, *v2))
        {
          [v12 accessibilityFrame];
        }

        else
        {
          [v12 accessibilityFrame];
          v34.origin.x = v17;
          v34.origin.y = v18;
          v34.size.width = v19;
          v34.size.height = v20;
          v32.origin.x = v3;
          v32.origin.y = v4;
          v32.size.width = v5;
          v32.size.height = v6;
          *&v13 = CGRectUnion(v32, v34);
        }

        v3 = v13;
        v4 = v14;
        v5 = v15;
        v6 = v16;
        ++v11;
      }

      while (v9 != v11);
      v9 = [visibleCells countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  v21 = v3;
  v22 = v4;
  v23 = v5;
  v24 = v6;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (UICollectionView)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

@end