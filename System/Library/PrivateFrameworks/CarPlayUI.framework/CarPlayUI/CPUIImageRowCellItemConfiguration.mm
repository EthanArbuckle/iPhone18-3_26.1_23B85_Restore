@interface CPUIImageRowCellItemConfiguration
- (BOOL)enabled;
- (CPUIImageRowCellItemConfiguration)initWithArtworkCatalog:(id)catalog title:(id)title subtitle:(id)subtitle;
- (CPUIImageRowCellItemConfiguration)initWithImage:(id)image title:(id)title subtitle:(id)subtitle;
- (CPUIImageRowCellItemConfiguration)initWithImage:(id)image title:(id)title subtitle:(id)subtitle allowsTouches:(BOOL)touches disabledAppearance:(BOOL)appearance;
- (CPUIImageRowCellItemConfiguration)initWithImage:(id)image title:(id)title subtitle:(id)subtitle enabled:(BOOL)enabled;
@end

@implementation CPUIImageRowCellItemConfiguration

- (CPUIImageRowCellItemConfiguration)initWithArtworkCatalog:(id)catalog title:(id)title subtitle:(id)subtitle
{
  catalogCopy = catalog;
  titleCopy = title;
  subtitleCopy = subtitle;
  v19.receiver = self;
  v19.super_class = CPUIImageRowCellItemConfiguration;
  v12 = [(CPUIImageRowCellItemConfiguration *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_artworkCatalog, catalog);
    v14 = [titleCopy copy];
    title = v13->_title;
    v13->_title = v14;

    v16 = [subtitleCopy copy];
    subtitle = v13->_subtitle;
    v13->_subtitle = v16;

    *&v13->_allowsTouches = 1;
  }

  return v13;
}

- (BOOL)enabled
{
  allowsTouches = [(CPUIImageRowCellItemConfiguration *)self allowsTouches];
  if (allowsTouches)
  {
    LOBYTE(allowsTouches) = ![(CPUIImageRowCellItemConfiguration *)self disabledAppearance];
  }

  return allowsTouches;
}

- (CPUIImageRowCellItemConfiguration)initWithImage:(id)image title:(id)title subtitle:(id)subtitle
{
  v8 = MEMORY[0x277CD5D50];
  subtitleCopy = subtitle;
  titleCopy = title;
  v11 = [image copy];
  v12 = [v8 staticArtworkCatalogWithImage:v11];
  v13 = [(CPUIImageRowCellItemConfiguration *)self initWithArtworkCatalog:v12 title:titleCopy subtitle:subtitleCopy];

  return v13;
}

- (CPUIImageRowCellItemConfiguration)initWithImage:(id)image title:(id)title subtitle:(id)subtitle enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  subtitleCopy = subtitle;
  titleCopy = title;
  v12 = [image copy];
  v13 = [(CPUIImageRowCellItemConfiguration *)self initWithImage:v12 title:titleCopy subtitle:subtitleCopy allowsTouches:enabledCopy disabledAppearance:enabledCopy ^ 1];

  return v13;
}

- (CPUIImageRowCellItemConfiguration)initWithImage:(id)image title:(id)title subtitle:(id)subtitle allowsTouches:(BOOL)touches disabledAppearance:(BOOL)appearance
{
  v12 = MEMORY[0x277CD5D50];
  subtitleCopy = subtitle;
  titleCopy = title;
  v15 = [image copy];
  v16 = [v12 staticArtworkCatalogWithImage:v15];
  v17 = [(CPUIImageRowCellItemConfiguration *)self initWithArtworkCatalog:v16 title:titleCopy subtitle:subtitleCopy];

  if (v17)
  {
    v17->_allowsTouches = touches;
    v17->_disabledAppearance = appearance;
  }

  return v17;
}

@end