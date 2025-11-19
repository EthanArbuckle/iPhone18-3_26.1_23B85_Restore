@interface PXGScrollLayout(PXPhotosSectionedLayout)
- (id)px_assetsSectionLayout;
- (void)px_modifyAssetsSectionLayoutGeometry:()PXPhotosSectionedLayout;
@end

@implementation PXGScrollLayout(PXPhotosSectionedLayout)

- (void)px_modifyAssetsSectionLayoutGeometry:()PXPhotosSectionedLayout
{
  v4 = a3;
  v5 = [a1 sublayoutDataStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__PXGScrollLayout_PXPhotosSectionedLayout__px_modifyAssetsSectionLayoutGeometry___block_invoke;
  v7[3] = &unk_2782989C0;
  v8 = v4;
  v6 = v4;
  [v5 enumerateSublayoutGeometriesUsingBlock:v7];
}

- (id)px_assetsSectionLayout
{
  v1 = [a1 contentLayout];
  v2 = [v1 px_assetsSectionLayout];

  return v2;
}

@end