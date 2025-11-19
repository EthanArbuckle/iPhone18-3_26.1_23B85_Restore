@interface PXGLayout(PXPhotosSectionedLayout)
- (uint64_t)px_modifyAssetsSectionLayoutGeometry:()PXPhotosSectionedLayout;
@end

@implementation PXGLayout(PXPhotosSectionedLayout)

- (uint64_t)px_modifyAssetsSectionLayoutGeometry:()PXPhotosSectionedLayout
{
  v7 = 0;
  memset(v5, 0, sizeof(v5));
  v6 = 0;
  v4[0] = 0;
  v4[1] = 0;
  return (*(a3 + 16))(a3, 0x7FFFFFFFFFFFFFFFLL, v5, v4, &v7);
}

@end