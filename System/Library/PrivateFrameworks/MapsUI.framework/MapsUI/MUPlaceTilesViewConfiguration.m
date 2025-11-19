@interface MUPlaceTilesViewConfiguration
+ (id)annotatedListConfiguration;
+ (id)configurationFromModuleConfiguration:(id)a3;
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

+ (id)configurationFromModuleConfiguration:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MUPlaceTilesViewConfiguration);
  v5 = v4;
  if (!v3)
  {
    [(MUPlaceTilesViewConfiguration *)v4 setVertical:0];
    v6 = [(MUPlaceTilesViewConfiguration *)v5 cellConfiguration];
    [v6 setShowIcon:1];
    [v6 setShowCuratedPhoto:1];
    [v6 setVariant:0];
    goto LABEL_17;
  }

  v6 = [(MUPlaceTilesViewConfiguration *)v4 cellConfiguration];
  v7 = [v3 layoutVariant];
  v8 = 0;
  v9 = 1;
  v10 = 1;
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_14;
      }

      v9 = 0;
      v8 = 0;
    }

LABEL_13:
    [v6 setShowIcon:v9];
    [v6 setShowCuratedPhoto:v10];
    [v6 setVariant:v8];
    goto LABEL_14;
  }

  switch(v7)
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
  if ([v3 isVertical])
  {
    [v6 setVariant:2];
  }

  -[MUPlaceTilesViewConfiguration setVertical:](v5, "setVertical:", [v3 isVertical]);
  -[MUPlaceTilesViewConfiguration setNumberOfRows:](v5, "setNumberOfRows:", [v3 numberOfRows]);
LABEL_17:

  return v5;
}

+ (id)hikingTrailsConfiguration
{
  v2 = objc_alloc_init(MUPlaceTilesViewConfiguration);
  [(MUPlaceTilesViewConfiguration *)v2 setVertical:0];
  v3 = [(MUPlaceTilesViewConfiguration *)v2 cellConfiguration];
  [v3 setShowIcon:0];
  [v3 setShowCuratedPhoto:1];
  [v3 setVariant:0];

  return v2;
}

+ (id)annotatedListConfiguration
{
  v2 = objc_alloc_init(MUPlaceTilesViewConfiguration);
  [(MUPlaceTilesViewConfiguration *)v2 setVertical:0];
  v3 = [(MUPlaceTilesViewConfiguration *)v2 cellConfiguration];
  [v3 setShowIcon:0];
  [v3 setShowCuratedPhoto:1];
  [v3 setVariant:0];

  return v2;
}

@end