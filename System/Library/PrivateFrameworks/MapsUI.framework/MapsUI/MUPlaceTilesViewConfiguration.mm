@interface MUPlaceTilesViewConfiguration
+ (id)annotatedListConfiguration;
+ (id)configurationFromModuleConfiguration:(id)configuration;
+ (id)hikingTrailsConfiguration;
- (MUPlaceTilesViewConfiguration)init;
@end

@implementation MUPlaceTilesViewConfiguration

- (MUPlaceTilesViewConfiguration)init
{
  v6.receiver = self;
  v6.super_class = MUPlaceTilesViewConfiguration;
  v2 = [(MUPlaceTilesViewConfiguration *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MUPlaceTileCellConfiguration);
    cellConfiguration = v2->_cellConfiguration;
    v2->_cellConfiguration = v3;

    [(MUPlaceTileCellConfiguration *)v2->_cellConfiguration setShowIcon:1];
    [(MUPlaceTileCellConfiguration *)v2->_cellConfiguration setShowCuratedPhoto:1];
    v2->_numberOfRows = 1;
  }

  return v2;
}

+ (id)configurationFromModuleConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = objc_alloc_init(MUPlaceTilesViewConfiguration);
  v5 = v4;
  if (!configurationCopy)
  {
    [(MUPlaceTilesViewConfiguration *)v4 setVertical:0];
    cellConfiguration = [(MUPlaceTilesViewConfiguration *)v5 cellConfiguration];
    [cellConfiguration setShowIcon:1];
    [cellConfiguration setShowCuratedPhoto:1];
    [cellConfiguration setVariant:0];
    goto LABEL_17;
  }

  cellConfiguration = [(MUPlaceTilesViewConfiguration *)v4 cellConfiguration];
  layoutVariant = [configurationCopy layoutVariant];
  v8 = 0;
  v9 = 1;
  v10 = 1;
  if (layoutVariant <= 1)
  {
    if (layoutVariant)
    {
      if (layoutVariant != 1)
      {
        goto LABEL_14;
      }

      v9 = 0;
      v8 = 0;
    }

LABEL_13:
    [cellConfiguration setShowIcon:v9];
    [cellConfiguration setShowCuratedPhoto:v10];
    [cellConfiguration setVariant:v8];
    goto LABEL_14;
  }

  switch(layoutVariant)
  {
    case 2:
      goto LABEL_13;
    case 3:
      v10 = 0;
      v9 = 1;
      goto LABEL_12;
    case 4:
      v9 = 0;
      v10 = 0;
LABEL_12:
      v8 = 1;
      goto LABEL_13;
  }

LABEL_14:
  if ([configurationCopy isVertical])
  {
    [cellConfiguration setVariant:2];
  }

  -[MUPlaceTilesViewConfiguration setVertical:](v5, "setVertical:", [configurationCopy isVertical]);
  -[MUPlaceTilesViewConfiguration setNumberOfRows:](v5, "setNumberOfRows:", [configurationCopy numberOfRows]);
LABEL_17:

  return v5;
}

+ (id)hikingTrailsConfiguration
{
  v2 = objc_alloc_init(MUPlaceTilesViewConfiguration);
  [(MUPlaceTilesViewConfiguration *)v2 setVertical:0];
  cellConfiguration = [(MUPlaceTilesViewConfiguration *)v2 cellConfiguration];
  [cellConfiguration setShowIcon:0];
  [cellConfiguration setShowCuratedPhoto:1];
  [cellConfiguration setVariant:0];

  return v2;
}

+ (id)annotatedListConfiguration
{
  v2 = objc_alloc_init(MUPlaceTilesViewConfiguration);
  [(MUPlaceTilesViewConfiguration *)v2 setVertical:0];
  cellConfiguration = [(MUPlaceTilesViewConfiguration *)v2 cellConfiguration];
  [cellConfiguration setShowIcon:0];
  [cellConfiguration setShowCuratedPhoto:1];
  [cellConfiguration setVariant:0];

  return v2;
}

@end