@interface PXPhotosLayoutState
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PXPhotosLayoutState

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PXPhotosLayoutState);
  v5 = [(PXPhotosLayoutState *)self lens];
  [(PXPhotosLayoutState *)v4 setLens:v5];

  v6 = [(PXPhotosLayoutState *)self bodyProvider];
  [(PXPhotosLayoutState *)v4 setBodyProvider:v6];

  v7 = [(PXPhotosLayoutState *)self headerProvider];
  [(PXPhotosLayoutState *)v4 setHeaderProvider:v7];

  v8 = [(PXPhotosLayoutState *)self anchorAssetReference];
  [(PXPhotosLayoutState *)v4 setAnchorAssetReference:v8];

  return v4;
}

@end