@interface CPUIImageRowCellItemConfiguration
- (BOOL)enabled;
- (CPUIImageRowCellItemConfiguration)initWithArtworkCatalog:(id)a3 title:(id)a4 subtitle:(id)a5;
- (CPUIImageRowCellItemConfiguration)initWithImage:(id)a3 title:(id)a4 subtitle:(id)a5;
- (CPUIImageRowCellItemConfiguration)initWithImage:(id)a3 title:(id)a4 subtitle:(id)a5 allowsTouches:(BOOL)a6 disabledAppearance:(BOOL)a7;
- (CPUIImageRowCellItemConfiguration)initWithImage:(id)a3 title:(id)a4 subtitle:(id)a5 enabled:(BOOL)a6;
@end

@implementation CPUIImageRowCellItemConfiguration

- (CPUIImageRowCellItemConfiguration)initWithArtworkCatalog:(id)a3 title:(id)a4 subtitle:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = CPUIImageRowCellItemConfiguration;
  v12 = [(CPUIImageRowCellItemConfiguration *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_artworkCatalog, a3);
    v14 = [v10 copy];
    title = v13->_title;
    v13->_title = v14;

    v16 = [v11 copy];
    subtitle = v13->_subtitle;
    v13->_subtitle = v16;

    *&v13->_allowsTouches = 1;
  }

  return v13;
}

- (BOOL)enabled
{
  v3 = [(CPUIImageRowCellItemConfiguration *)self allowsTouches];
  if (v3)
  {
    LOBYTE(v3) = ![(CPUIImageRowCellItemConfiguration *)self disabledAppearance];
  }

  return v3;
}

- (CPUIImageRowCellItemConfiguration)initWithImage:(id)a3 title:(id)a4 subtitle:(id)a5
{
  v8 = MEMORY[0x277CD5D50];
  v9 = a5;
  v10 = a4;
  v11 = [a3 copy];
  v12 = [v8 staticArtworkCatalogWithImage:v11];
  v13 = [(CPUIImageRowCellItemConfiguration *)self initWithArtworkCatalog:v12 title:v10 subtitle:v9];

  return v13;
}

- (CPUIImageRowCellItemConfiguration)initWithImage:(id)a3 title:(id)a4 subtitle:(id)a5 enabled:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [a3 copy];
  v13 = [(CPUIImageRowCellItemConfiguration *)self initWithImage:v12 title:v11 subtitle:v10 allowsTouches:v6 disabledAppearance:v6 ^ 1];

  return v13;
}

- (CPUIImageRowCellItemConfiguration)initWithImage:(id)a3 title:(id)a4 subtitle:(id)a5 allowsTouches:(BOOL)a6 disabledAppearance:(BOOL)a7
{
  v12 = MEMORY[0x277CD5D50];
  v13 = a5;
  v14 = a4;
  v15 = [a3 copy];
  v16 = [v12 staticArtworkCatalogWithImage:v15];
  v17 = [(CPUIImageRowCellItemConfiguration *)self initWithArtworkCatalog:v16 title:v14 subtitle:v13];

  if (v17)
  {
    v17->_allowsTouches = a6;
    v17->_disabledAppearance = a7;
  }

  return v17;
}

@end