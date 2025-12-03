@interface PXAssetsSectionConfigurator
- (CGRect)containerFrameForAssetSectionLayout:(id)layout;
- (CGSize)estimatedSizeOfSectionForAssetCollection:(id)collection isCurated:(BOOL)curated numberOfAssets:(int64_t)assets referenceSize:(CGSize)size;
- (PXAssetsSectionConfigurator)init;
- (PXAssetsSectionConfigurator)initWithExtendedTraitCollection:(id)collection assetsSectionLayoutSpec:(id)spec;
- (PXAssetsSectionLayoutSpec)assetsSectionLayoutSpec;
- (UIEdgeInsets)containerInsets;
- (void)configureAssetSectionLayout:(id)layout;
@end

@implementation PXAssetsSectionConfigurator

- (UIEdgeInsets)containerInsets
{
  top = self->_containerInsets.top;
  left = self->_containerInsets.left;
  bottom = self->_containerInsets.bottom;
  right = self->_containerInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)estimatedSizeOfSectionForAssetCollection:(id)collection isCurated:(BOOL)curated numberOfAssets:(int64_t)assets referenceSize:(CGSize)size
{
  collectionCopy = collection;
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsSectionConfigurator.m" lineNumber:61 description:{@"Method %s is a responsibility of subclass %@", "-[PXAssetsSectionConfigurator estimatedSizeOfSectionForAssetCollection:isCurated:numberOfAssets:referenceSize:]", v11}];

  abort();
}

- (CGRect)containerFrameForAssetSectionLayout:(id)layout
{
  layoutCopy = layout;
  [layoutCopy contentSize];
  if (v6 == *MEMORY[0x277CBF3A8] && v5 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v9 = *MEMORY[0x277CBF3A0];
    v11 = *(MEMORY[0x277CBF3A0] + 8);
    v13 = *(MEMORY[0x277CBF3A0] + 16);
    v15 = *(MEMORY[0x277CBF3A0] + 24);
  }

  else
  {
    [(PXAssetsSectionConfigurator *)self containerInsets];
    [layoutCopy padding];
    PXEdgeInsetsInsetRect();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)configureAssetSectionLayout:(id)layout
{
  layoutCopy = layout;
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsSectionConfigurator.m" lineNumber:39 description:{@"Method %s is a responsibility of subclass %@", "-[PXAssetsSectionConfigurator configureAssetSectionLayout:]", v8}];

  abort();
}

- (PXAssetsSectionLayoutSpec)assetsSectionLayoutSpec
{
  WeakRetained = objc_loadWeakRetained(&self->_assetsSectionLayoutSpec);
  if (!WeakRetained)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsSectionConfigurator.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"assetsSectionLayoutSpec != nil"}];
  }

  return WeakRetained;
}

- (PXAssetsSectionConfigurator)initWithExtendedTraitCollection:(id)collection assetsSectionLayoutSpec:(id)spec
{
  specCopy = spec;
  v8.receiver = self;
  v8.super_class = PXAssetsSectionConfigurator;
  v6 = [(PXAssetsSectionConfigurator *)&v8 init];
  if (v6)
  {
    v6->_variant = [specCopy variant];
    objc_storeWeak(&v6->_assetsSectionLayoutSpec, specCopy);
  }

  return v6;
}

- (PXAssetsSectionConfigurator)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsSectionConfigurator.m" lineNumber:20 description:{@"%s is not available as initializer", "-[PXAssetsSectionConfigurator init]"}];

  abort();
}

@end