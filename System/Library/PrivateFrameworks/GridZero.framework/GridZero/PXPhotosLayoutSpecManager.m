@interface PXPhotosLayoutSpecManager
- (BOOL)shouldUpdateSpecForExtendedTraitCollection:(id)a3 change:(unint64_t)a4;
- (Class)specClass;
- (PXPhotosLayoutSpecManager)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 enableSectionHeaders:(BOOL)a5;
- (double)dynamicHeaderHeightForReferenceSize:(CGSize)a3;
- (id)createSpec;
- (void)setBackgroundStyle:(int64_t)a3;
- (void)setGridStyle:(int64_t)a3;
- (void)setOverrideDefaultNumberOfColumns:(int64_t)a3;
- (void)setShouldMakeSpaceForLeadingChrome:(BOOL)a3;
- (void)setWantsToggleSidebarButton:(BOOL)a3;
@end

@implementation PXPhotosLayoutSpecManager

- (double)dynamicHeaderHeightForReferenceSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(PXPhotosLayoutSpecManager *)self dynamicHeaderHeightCallback];
  v6 = v5;
  if (v5)
  {
    v7 = (*(v5 + 16))(v5, width, height);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (BOOL)shouldUpdateSpecForExtendedTraitCollection:(id)a3 change:(unint64_t)a4
{
  v6 = a3;
  if (([(PXFeatureSpecManager *)self options]& 2) != 0)
  {
    v7 = (([(PXFeatureSpecManager *)self defaultChangesToUpdateFor]& 0xFFFFFFFFFFFF5CFFLL | 0xA000) & a4) != 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PXPhotosLayoutSpecManager;
    v7 = [(PXFeatureSpecManager *)&v9 shouldUpdateSpecForExtendedTraitCollection:v6 change:a4];
  }

  return v7;
}

- (void)setOverrideDefaultNumberOfColumns:(int64_t)a3
{
  if (self->_overrideDefaultNumberOfColumns != a3)
  {
    self->_overrideDefaultNumberOfColumns = a3;
    [(PXFeatureSpecManager *)self invalidateSpec];
  }
}

- (void)setShouldMakeSpaceForLeadingChrome:(BOOL)a3
{
  if (self->_shouldMakeSpaceForLeadingChrome != a3)
  {
    self->_shouldMakeSpaceForLeadingChrome = a3;
    [(PXFeatureSpecManager *)self invalidateSpec];
  }
}

- (void)setWantsToggleSidebarButton:(BOOL)a3
{
  if (self->_wantsToggleSidebarButton != a3)
  {
    self->_wantsToggleSidebarButton = a3;
    [(PXFeatureSpecManager *)self invalidateSpec];
  }
}

- (void)setBackgroundStyle:(int64_t)a3
{
  if (self->_backgroundStyle != a3)
  {
    self->_backgroundStyle = a3;
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

- (id)createSpec
{
  v3 = [(PXFeatureSpecManager *)self extendedTraitCollection];
  v4 = [(PXFeatureSpecManager *)self options];
  [v3 layoutReferenceSize];
  [(PXPhotosLayoutSpecManager *)self dynamicHeaderHeightForReferenceSize:?];
  v6 = v5;
  v7 = objc_alloc([(PXPhotosLayoutSpecManager *)self specClass]);
  v8 = [(PXPhotosLayoutSpecManager *)self gridStyle];
  v9 = [(PXPhotosLayoutSpecManager *)self backgroundStyle];
  v10 = [(PXPhotosLayoutSpecManager *)self wantsToggleSidebarButton];
  v11 = [(PXPhotosLayoutSpecManager *)self shouldMakeSpaceForLeadingChrome];
  LOBYTE(v14) = [(PXPhotosLayoutSpecManager *)self hasPhysicalHomeButton];
  v12 = [v7 initWithExtendedTraitCollection:v3 options:v4 gridStyle:v8 backgroundStyle:v9 wantsToggleSidebarButton:v10 shouldMakeSpaceForLeadingChrome:v11 hasPhysicalHomeButton:v6 dynamicHeaderHeight:v14 overrideDefaultNumberOfColumns:{-[PXPhotosLayoutSpecManager overrideDefaultNumberOfColumns](self, "overrideDefaultNumberOfColumns")}];

  return v12;
}

- (Class)specClass
{
  [(PXPhotosLayoutSpecManager *)self sectionHeadersEnabled];
  v2 = objc_opt_class();

  return v2;
}

- (PXPhotosLayoutSpecManager)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 enableSectionHeaders:(BOOL)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = PXPhotosLayoutSpecManager;
  v9 = [(PXFeatureSpecManager *)&v14 initWithExtendedTraitCollection:v8 options:a4];
  v10 = v9;
  if (v9)
  {
    v9->_sectionHeadersEnabled = a5;
    v11 = [v8 headerCustomizationModel];
    headerCustomizationModel = v10->_headerCustomizationModel;
    v10->_headerCustomizationModel = v11;
  }

  return v10;
}

@end