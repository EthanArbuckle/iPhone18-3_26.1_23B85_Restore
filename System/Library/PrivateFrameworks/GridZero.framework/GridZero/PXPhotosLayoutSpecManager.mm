@interface PXPhotosLayoutSpecManager
- (BOOL)shouldUpdateSpecForExtendedTraitCollection:(id)collection change:(unint64_t)change;
- (Class)specClass;
- (PXPhotosLayoutSpecManager)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options enableSectionHeaders:(BOOL)headers;
- (double)dynamicHeaderHeightForReferenceSize:(CGSize)size;
- (id)createSpec;
- (void)setBackgroundStyle:(int64_t)style;
- (void)setGridStyle:(int64_t)style;
- (void)setOverrideDefaultNumberOfColumns:(int64_t)columns;
- (void)setShouldMakeSpaceForLeadingChrome:(BOOL)chrome;
- (void)setWantsToggleSidebarButton:(BOOL)button;
@end

@implementation PXPhotosLayoutSpecManager

- (double)dynamicHeaderHeightForReferenceSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  dynamicHeaderHeightCallback = [(PXPhotosLayoutSpecManager *)self dynamicHeaderHeightCallback];
  v6 = dynamicHeaderHeightCallback;
  if (dynamicHeaderHeightCallback)
  {
    v7 = (*(dynamicHeaderHeightCallback + 16))(dynamicHeaderHeightCallback, width, height);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (BOOL)shouldUpdateSpecForExtendedTraitCollection:(id)collection change:(unint64_t)change
{
  collectionCopy = collection;
  if (([(PXFeatureSpecManager *)self options]& 2) != 0)
  {
    v7 = (([(PXFeatureSpecManager *)self defaultChangesToUpdateFor]& 0xFFFFFFFFFFFF5CFFLL | 0xA000) & change) != 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PXPhotosLayoutSpecManager;
    v7 = [(PXFeatureSpecManager *)&v9 shouldUpdateSpecForExtendedTraitCollection:collectionCopy change:change];
  }

  return v7;
}

- (void)setOverrideDefaultNumberOfColumns:(int64_t)columns
{
  if (self->_overrideDefaultNumberOfColumns != columns)
  {
    self->_overrideDefaultNumberOfColumns = columns;
    [(PXFeatureSpecManager *)self invalidateSpec];
  }
}

- (void)setShouldMakeSpaceForLeadingChrome:(BOOL)chrome
{
  if (self->_shouldMakeSpaceForLeadingChrome != chrome)
  {
    self->_shouldMakeSpaceForLeadingChrome = chrome;
    [(PXFeatureSpecManager *)self invalidateSpec];
  }
}

- (void)setWantsToggleSidebarButton:(BOOL)button
{
  if (self->_wantsToggleSidebarButton != button)
  {
    self->_wantsToggleSidebarButton = button;
    [(PXFeatureSpecManager *)self invalidateSpec];
  }
}

- (void)setBackgroundStyle:(int64_t)style
{
  if (self->_backgroundStyle != style)
  {
    self->_backgroundStyle = style;
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

- (id)createSpec
{
  extendedTraitCollection = [(PXFeatureSpecManager *)self extendedTraitCollection];
  options = [(PXFeatureSpecManager *)self options];
  [extendedTraitCollection layoutReferenceSize];
  [(PXPhotosLayoutSpecManager *)self dynamicHeaderHeightForReferenceSize:?];
  v6 = v5;
  v7 = objc_alloc([(PXPhotosLayoutSpecManager *)self specClass]);
  gridStyle = [(PXPhotosLayoutSpecManager *)self gridStyle];
  backgroundStyle = [(PXPhotosLayoutSpecManager *)self backgroundStyle];
  wantsToggleSidebarButton = [(PXPhotosLayoutSpecManager *)self wantsToggleSidebarButton];
  shouldMakeSpaceForLeadingChrome = [(PXPhotosLayoutSpecManager *)self shouldMakeSpaceForLeadingChrome];
  LOBYTE(v14) = [(PXPhotosLayoutSpecManager *)self hasPhysicalHomeButton];
  v12 = [v7 initWithExtendedTraitCollection:extendedTraitCollection options:options gridStyle:gridStyle backgroundStyle:backgroundStyle wantsToggleSidebarButton:wantsToggleSidebarButton shouldMakeSpaceForLeadingChrome:shouldMakeSpaceForLeadingChrome hasPhysicalHomeButton:v6 dynamicHeaderHeight:v14 overrideDefaultNumberOfColumns:{-[PXPhotosLayoutSpecManager overrideDefaultNumberOfColumns](self, "overrideDefaultNumberOfColumns")}];

  return v12;
}

- (Class)specClass
{
  [(PXPhotosLayoutSpecManager *)self sectionHeadersEnabled];
  v2 = objc_opt_class();

  return v2;
}

- (PXPhotosLayoutSpecManager)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options enableSectionHeaders:(BOOL)headers
{
  collectionCopy = collection;
  v14.receiver = self;
  v14.super_class = PXPhotosLayoutSpecManager;
  v9 = [(PXFeatureSpecManager *)&v14 initWithExtendedTraitCollection:collectionCopy options:options];
  v10 = v9;
  if (v9)
  {
    v9->_sectionHeadersEnabled = headers;
    headerCustomizationModel = [collectionCopy headerCustomizationModel];
    headerCustomizationModel = v10->_headerCustomizationModel;
    v10->_headerCustomizationModel = headerCustomizationModel;
  }

  return v10;
}

@end