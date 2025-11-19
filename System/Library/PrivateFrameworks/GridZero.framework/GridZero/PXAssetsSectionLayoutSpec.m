@interface PXAssetsSectionLayoutSpec
- (BOOL)allowsPositionDependentHeaderContentOpacityInZoomLevel:(int64_t)a3;
- (BOOL)supportsGridAspectRatioToggle;
- (NSShadow)shadow;
- (PXAssetsSectionLayoutSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 variant:(int64_t)a5 itemCornerRadius:(double)a6 zoomableSpec:(id)a7;
- (PXAssetsSectionLayoutSpecConfiguratorSource)configuratorSource;
- (UIEdgeInsets)padding;
- (id)_sectionConfiguratorForType:(int64_t)a3;
- (id)sectionConfiguratorForAssetCollection:(id)a3 inZoomLevel:(int64_t)a4;
- (int64_t)numberOfGridZoomStepsWithDataSource:(id)a3;
@end

@implementation PXAssetsSectionLayoutSpec

- (PXAssetsSectionLayoutSpecConfiguratorSource)configuratorSource
{
  WeakRetained = objc_loadWeakRetained(&self->_configuratorSource);

  return WeakRetained;
}

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (BOOL)allowsPositionDependentHeaderContentOpacityInZoomLevel:(int64_t)a3
{
  if (([(PXAssetsSectionLayoutSpec *)self options]& 4) != 0)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    if (a3 >= 5)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"PXAssetsSectionLayoutSpec.m" lineNumber:112 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v6 = 0x18u >> a3;
  }

  return v6 & 1;
}

- (id)_sectionConfiguratorForType:(int64_t)a3
{
  if ([(PXAssetsSectionLayoutSpec *)self disableConfigurators])
  {
    v5 = 0;
  }

  else
  {
    configuratorByType = self->_configuratorByType;
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v5 = [(NSMutableDictionary *)configuratorByType objectForKeyedSubscript:v7];

    if (!v5)
    {
      v8 = [(PXAssetsSectionLayoutSpec *)self configuratorSource];
      v5 = [v8 assetsSectionLayoutSpec:self createSectionConfiguratorForType:a3];

      v9 = self->_configuratorByType;
      v10 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
      [(NSMutableDictionary *)v9 setObject:v5 forKeyedSubscript:v10];
    }
  }

  return v5;
}

- (id)sectionConfiguratorForAssetCollection:(id)a3 inZoomLevel:(int64_t)a4
{
  v7 = a3;
  if ([(PXAssetsSectionLayoutSpec *)self disableConfigurators])
  {
    v8 = 0;
    goto LABEL_13;
  }

  if (a4 > 2)
  {
    if (a4 != 4)
    {
      if (a4 == 3)
      {
        v13 = [MEMORY[0x277CCA890] currentHandler];
        v14 = v13;
        v15 = @"Unexpected access to removed days section configurator";
        v16 = a2;
        v17 = self;
        v18 = 77;
        goto LABEL_19;
      }

LABEL_18:
      v13 = [MEMORY[0x277CCA890] currentHandler];
      v14 = v13;
      v15 = @"Code which should be unreachable has been reached";
      v16 = a2;
      v17 = self;
      v18 = 82;
LABEL_19:
      [v13 handleFailureInMethod:v16 object:v17 file:@"PXAssetsSectionLayoutSpec.m" lineNumber:v18 description:v15];

      abort();
    }

    v11 = 0;
  }

  else
  {
    if (a4 != 1)
    {
      if (a4 == 2)
      {
        v9 = [(PXAssetsSectionLayoutSpec *)self configuratorSource];
        v10 = [v9 assetsSectionLayoutSpec:self collectionRepresentsMonthsChapter:v7];

        if (v10)
        {
          v11 = 2;
        }

        else
        {
          v11 = 1;
        }

        goto LABEL_12;
      }

      goto LABEL_18;
    }

    v11 = 3;
  }

LABEL_12:
  v8 = [(PXAssetsSectionLayoutSpec *)self _sectionConfiguratorForType:v11];
LABEL_13:

  return v8;
}

- (NSShadow)shadow
{
  shadow = self->_shadow;
  if (!shadow)
  {
    v4 = objc_alloc_init(MEMORY[0x277D74258]);
    v5 = self->_shadow;
    self->_shadow = v4;

    v6 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.15];
    [(NSShadow *)self->_shadow setShadowColor:v6];

    [(NSShadow *)self->_shadow setShadowBlurRadius:30.0];
    [(NSShadow *)self->_shadow setShadowOffset:0.0, 10.0];
    self->_shadowCornerRadius = 10.0;
    shadow = self->_shadow;
  }

  return shadow;
}

- (PXAssetsSectionLayoutSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 variant:(int64_t)a5 itemCornerRadius:(double)a6 zoomableSpec:(id)a7
{
  v12 = a3;
  v13 = a7;
  v23.receiver = self;
  v23.super_class = PXAssetsSectionLayoutSpec;
  v14 = [(PXAssetsSectionLayoutSpec *)&v23 initWithExtendedTraitCollection:v12 options:a4];
  v15 = v14;
  if (v14)
  {
    v14->_variant = a5;
    v14->_disableConfigurators = ([(PXAssetsSectionLayoutSpec *)v14 options]& 2) != 0;
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    configuratorByType = v15->_configuratorByType;
    v15->_configuratorByType = v16;

    if (!v15->_disableConfigurators)
    {
      objc_storeStrong(&v15->_zoomableSpec, a7);
      v15->_userInterfaceStyleAllowsShadow = [v12 userInterfaceStyle] != 2;
    }

    [(PXAssetsSectionLayoutSpec *)v15 curatedLibraryEdgeToEdgeContentDefaultPadding];
    v15->_padding.top = v18;
    v15->_padding.left = v19;
    v15->_padding.bottom = v20;
    v15->_padding.right = v21;
    v15->_itemCornerRadius = a6;
    v15->_preferredUserInterfaceStyle = (a4 >> 2) & 2;
  }

  return v15;
}

- (int64_t)numberOfGridZoomStepsWithDataSource:(id)a3
{
  v4 = a3;
  v5 = [(PXAssetsSectionLayoutSpec *)self gridConfigurator];
  v6 = [v5 numberOfZoomStepsWithDataSource:v4];

  return v6;
}

- (BOOL)supportsGridAspectRatioToggle
{
  v2 = [(PXAssetsSectionLayoutSpec *)self gridConfigurator];
  v3 = [v2 supportsAspectRatioToggle];

  return v3;
}

@end