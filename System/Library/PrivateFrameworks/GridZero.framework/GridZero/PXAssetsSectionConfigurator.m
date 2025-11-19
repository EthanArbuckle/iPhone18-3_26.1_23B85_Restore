@interface PXAssetsSectionConfigurator
- (CGRect)containerFrameForAssetSectionLayout:(id)a3;
- (CGSize)estimatedSizeOfSectionForAssetCollection:(id)a3 isCurated:(BOOL)a4 numberOfAssets:(int64_t)a5 referenceSize:(CGSize)a6;
- (PXAssetsSectionConfigurator)init;
- (PXAssetsSectionConfigurator)initWithExtendedTraitCollection:(id)a3 assetsSectionLayoutSpec:(id)a4;
- (PXAssetsSectionLayoutSpec)assetsSectionLayoutSpec;
- (UIEdgeInsets)containerInsets;
- (void)configureAssetSectionLayout:(id)a3;
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

- (CGSize)estimatedSizeOfSectionForAssetCollection:(id)a3 isCurated:(BOOL)a4 numberOfAssets:(int64_t)a5 referenceSize:(CGSize)a6
{
  v8 = a3;
  v9 = [MEMORY[0x277CCA890] currentHandler];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [v9 handleFailureInMethod:a2 object:self file:@"PXAssetsSectionConfigurator.m" lineNumber:61 description:{@"Method %s is a responsibility of subclass %@", "-[PXAssetsSectionConfigurator estimatedSizeOfSectionForAssetCollection:isCurated:numberOfAssets:referenceSize:]", v11}];

  abort();
}

- (CGRect)containerFrameForAssetSectionLayout:(id)a3
{
  v4 = a3;
  [v4 contentSize];
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
    [v4 padding];
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

- (void)configureAssetSectionLayout:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXAssetsSectionConfigurator.m" lineNumber:39 description:{@"Method %s is a responsibility of subclass %@", "-[PXAssetsSectionConfigurator configureAssetSectionLayout:]", v8}];

  abort();
}

- (PXAssetsSectionLayoutSpec)assetsSectionLayoutSpec
{
  WeakRetained = objc_loadWeakRetained(&self->_assetsSectionLayoutSpec);
  if (!WeakRetained)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXAssetsSectionConfigurator.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"assetsSectionLayoutSpec != nil"}];
  }

  return WeakRetained;
}

- (PXAssetsSectionConfigurator)initWithExtendedTraitCollection:(id)a3 assetsSectionLayoutSpec:(id)a4
{
  v5 = a4;
  v8.receiver = self;
  v8.super_class = PXAssetsSectionConfigurator;
  v6 = [(PXAssetsSectionConfigurator *)&v8 init];
  if (v6)
  {
    v6->_variant = [v5 variant];
    objc_storeWeak(&v6->_assetsSectionLayoutSpec, v5);
  }

  return v6;
}

- (PXAssetsSectionConfigurator)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXAssetsSectionConfigurator.m" lineNumber:20 description:{@"%s is not available as initializer", "-[PXAssetsSectionConfigurator init]"}];

  abort();
}

@end