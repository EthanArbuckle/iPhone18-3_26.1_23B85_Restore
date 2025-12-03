@interface PXPhotosLayoutState
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PXPhotosLayoutState

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PXPhotosLayoutState);
  lens = [(PXPhotosLayoutState *)self lens];
  [(PXPhotosLayoutState *)v4 setLens:lens];

  bodyProvider = [(PXPhotosLayoutState *)self bodyProvider];
  [(PXPhotosLayoutState *)v4 setBodyProvider:bodyProvider];

  headerProvider = [(PXPhotosLayoutState *)self headerProvider];
  [(PXPhotosLayoutState *)v4 setHeaderProvider:headerProvider];

  anchorAssetReference = [(PXPhotosLayoutState *)self anchorAssetReference];
  [(PXPhotosLayoutState *)v4 setAnchorAssetReference:anchorAssetReference];

  return v4;
}

@end