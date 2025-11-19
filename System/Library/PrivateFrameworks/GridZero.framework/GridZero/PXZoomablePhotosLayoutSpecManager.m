@interface PXZoomablePhotosLayoutSpecManager
- (BOOL)shouldUpdateSpecForExtendedTraitCollection:(id)a3 change:(unint64_t)a4;
- (PXZoomablePhotosLayoutSpecManager)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4;
- (UIEdgeInsets)additionalAspectFitEdgeMargins;
- (id)createSpec;
- (void)setAdditionalAspectFitEdgeMargins:(UIEdgeInsets)a3;
- (void)setAvailableThumbnailSizes:(id)a3;
- (void)setForceSaliency:(BOOL)a3;
- (void)setGridStyle:(int64_t)a3;
- (void)setItemAspectRatio:(double)a3;
- (void)setPreferredUserInterfaceStyleForInlineAddButton:(int64_t)a3;
- (void)setUserDefaults:(id)a3;
@end

@implementation PXZoomablePhotosLayoutSpecManager

- (id)createSpec
{
  v3 = [PXZoomablePhotosLayoutSpec alloc];
  v4 = [(PXFeatureSpecManager *)self extendedTraitCollection];
  v5 = [(PXFeatureSpecManager *)self options];
  v6 = [(PXZoomablePhotosLayoutSpecManager *)self availableThumbnailSizes];
  v7 = [(PXZoomablePhotosLayoutSpecManager *)self gridStyle];
  [(PXZoomablePhotosLayoutSpecManager *)self itemAspectRatio];
  v9 = v8;
  v10 = [(PXZoomablePhotosLayoutSpecManager *)self userDefaults];
  v11 = [(PXZoomablePhotosLayoutSpecManager *)self forceSaliency];
  v12 = [(PXZoomablePhotosLayoutSpecManager *)self preferredUserInterfaceStyle];
  [(PXZoomablePhotosLayoutSpecManager *)self additionalAspectFitEdgeMargins];
  v17 = [(PXZoomablePhotosLayoutSpec *)v3 initWithExtendedTraitCollection:v4 options:v5 availableThumbnailSizes:v6 gridStyle:v7 itemAspectRatio:v10 userDefaults:v11 forceSaliency:v9 preferredUserInterfaceStyle:v13 additionalAspectFitEdgeMargins:v14 overrideDefaultNumberOfColumns:v15, v16, v12, [(PXZoomablePhotosLayoutSpecManager *)self overrideDefaultNumberOfColumns]];

  return v17;
}

- (UIEdgeInsets)additionalAspectFitEdgeMargins
{
  top = self->_additionalAspectFitEdgeMargins.top;
  left = self->_additionalAspectFitEdgeMargins.left;
  bottom = self->_additionalAspectFitEdgeMargins.bottom;
  right = self->_additionalAspectFitEdgeMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)setAdditionalAspectFitEdgeMargins:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  p_additionalAspectFitEdgeMargins = &self->_additionalAspectFitEdgeMargins;
  if ((PXEdgeInsetsEqualToEdgeInsets() & 1) == 0)
  {
    p_additionalAspectFitEdgeMargins->top = top;
    p_additionalAspectFitEdgeMargins->left = left;
    p_additionalAspectFitEdgeMargins->bottom = bottom;
    p_additionalAspectFitEdgeMargins->right = right;

    [(PXFeatureSpecManager *)self invalidateSpec];
  }
}

- (void)setForceSaliency:(BOOL)a3
{
  if (self->_forceSaliency != a3)
  {
    self->_forceSaliency = a3;
    [(PXFeatureSpecManager *)self invalidateSpec];
  }
}

- (void)setItemAspectRatio:(double)a3
{
  if (self->_itemAspectRatio != a3)
  {
    self->_itemAspectRatio = a3;
    [(PXFeatureSpecManager *)self invalidateSpec];
  }
}

- (void)setPreferredUserInterfaceStyleForInlineAddButton:(int64_t)a3
{
  if (self->_preferredUserInterfaceStyle != a3)
  {
    self->_preferredUserInterfaceStyle = a3;
    [(PXFeatureSpecManager *)self invalidateSpec];
  }
}

- (void)setGridStyle:(int64_t)a3
{
  if (self->_gridStyle != a3)
  {
    self->_gridStyle = a3;
    [(PXFeatureSpecManager *)self invalidateSpec];
  }
}

- (void)setUserDefaults:(id)a3
{
  v5 = a3;
  if (self->_userDefaults != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_userDefaults, a3);
    [(PXFeatureSpecManager *)self invalidateSpec];
    v5 = v6;
  }
}

- (void)setAvailableThumbnailSizes:(id)a3
{
  obj = [a3 sortedArrayUsingComparator:&__block_literal_global_1028];
  v4 = self->_availableThumbnailSizes;
  v5 = v4;
  if (v4 == obj)
  {
  }

  else
  {
    v6 = [(NSArray *)v4 isEqual:obj];

    if ((v6 & 1) == 0)
    {
      objc_storeStrong(&self->_availableThumbnailSizes, obj);
      [(PXFeatureSpecManager *)self invalidateSpec];
    }
  }
}

uint64_t __64__PXZoomablePhotosLayoutSpecManager_setAvailableThumbnailSizes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 CGSizeValue];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 CGSizeValue];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

- (BOOL)shouldUpdateSpecForExtendedTraitCollection:(id)a3 change:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  v7 = (v4 & 0x10) != 0 && [v5 layoutSizeClass] == 2 || (v4 & 0xBC12) != 0;

  return v7;
}

- (PXZoomablePhotosLayoutSpecManager)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4
{
  v5.receiver = self;
  v5.super_class = PXZoomablePhotosLayoutSpecManager;
  result = [(PXFeatureSpecManager *)&v5 initWithExtendedTraitCollection:a3 options:a4];
  if (result)
  {
    result->_itemAspectRatio = 1.0;
  }

  return result;
}

@end