@interface PXZoomablePhotosLayoutSpecManager
- (BOOL)shouldUpdateSpecForExtendedTraitCollection:(id)collection change:(unint64_t)change;
- (PXZoomablePhotosLayoutSpecManager)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options;
- (UIEdgeInsets)additionalAspectFitEdgeMargins;
- (id)createSpec;
- (void)setAdditionalAspectFitEdgeMargins:(UIEdgeInsets)margins;
- (void)setAvailableThumbnailSizes:(id)sizes;
- (void)setForceSaliency:(BOOL)saliency;
- (void)setGridStyle:(int64_t)style;
- (void)setItemAspectRatio:(double)ratio;
- (void)setPreferredUserInterfaceStyleForInlineAddButton:(int64_t)button;
- (void)setUserDefaults:(id)defaults;
@end

@implementation PXZoomablePhotosLayoutSpecManager

- (id)createSpec
{
  v3 = [PXZoomablePhotosLayoutSpec alloc];
  extendedTraitCollection = [(PXFeatureSpecManager *)self extendedTraitCollection];
  options = [(PXFeatureSpecManager *)self options];
  availableThumbnailSizes = [(PXZoomablePhotosLayoutSpecManager *)self availableThumbnailSizes];
  gridStyle = [(PXZoomablePhotosLayoutSpecManager *)self gridStyle];
  [(PXZoomablePhotosLayoutSpecManager *)self itemAspectRatio];
  v9 = v8;
  userDefaults = [(PXZoomablePhotosLayoutSpecManager *)self userDefaults];
  forceSaliency = [(PXZoomablePhotosLayoutSpecManager *)self forceSaliency];
  preferredUserInterfaceStyle = [(PXZoomablePhotosLayoutSpecManager *)self preferredUserInterfaceStyle];
  [(PXZoomablePhotosLayoutSpecManager *)self additionalAspectFitEdgeMargins];
  v17 = [(PXZoomablePhotosLayoutSpec *)v3 initWithExtendedTraitCollection:extendedTraitCollection options:options availableThumbnailSizes:availableThumbnailSizes gridStyle:gridStyle itemAspectRatio:userDefaults userDefaults:forceSaliency forceSaliency:v9 preferredUserInterfaceStyle:v13 additionalAspectFitEdgeMargins:v14 overrideDefaultNumberOfColumns:v15, v16, preferredUserInterfaceStyle, [(PXZoomablePhotosLayoutSpecManager *)self overrideDefaultNumberOfColumns]];

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

- (void)setAdditionalAspectFitEdgeMargins:(UIEdgeInsets)margins
{
  right = margins.right;
  bottom = margins.bottom;
  left = margins.left;
  top = margins.top;
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

- (void)setForceSaliency:(BOOL)saliency
{
  if (self->_forceSaliency != saliency)
  {
    self->_forceSaliency = saliency;
    [(PXFeatureSpecManager *)self invalidateSpec];
  }
}

- (void)setItemAspectRatio:(double)ratio
{
  if (self->_itemAspectRatio != ratio)
  {
    self->_itemAspectRatio = ratio;
    [(PXFeatureSpecManager *)self invalidateSpec];
  }
}

- (void)setPreferredUserInterfaceStyleForInlineAddButton:(int64_t)button
{
  if (self->_preferredUserInterfaceStyle != button)
  {
    self->_preferredUserInterfaceStyle = button;
    [(PXFeatureSpecManager *)self invalidateSpec];
  }
}

- (void)setGridStyle:(int64_t)style
{
  if (self->_gridStyle != style)
  {
    self->_gridStyle = style;
    [(PXFeatureSpecManager *)self invalidateSpec];
  }
}

- (void)setUserDefaults:(id)defaults
{
  defaultsCopy = defaults;
  if (self->_userDefaults != defaultsCopy)
  {
    v6 = defaultsCopy;
    objc_storeStrong(&self->_userDefaults, defaults);
    [(PXFeatureSpecManager *)self invalidateSpec];
    defaultsCopy = v6;
  }
}

- (void)setAvailableThumbnailSizes:(id)sizes
{
  obj = [sizes sortedArrayUsingComparator:&__block_literal_global_1028];
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

- (BOOL)shouldUpdateSpecForExtendedTraitCollection:(id)collection change:(unint64_t)change
{
  changeCopy = change;
  collectionCopy = collection;
  v6 = collectionCopy;
  v7 = (changeCopy & 0x10) != 0 && [collectionCopy layoutSizeClass] == 2 || (changeCopy & 0xBC12) != 0;

  return v7;
}

- (PXZoomablePhotosLayoutSpecManager)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options
{
  v5.receiver = self;
  v5.super_class = PXZoomablePhotosLayoutSpecManager;
  result = [(PXFeatureSpecManager *)&v5 initWithExtendedTraitCollection:collection options:options];
  if (result)
  {
    result->_itemAspectRatio = 1.0;
  }

  return result;
}

@end