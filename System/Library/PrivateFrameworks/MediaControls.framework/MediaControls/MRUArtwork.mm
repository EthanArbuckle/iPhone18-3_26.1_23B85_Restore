@interface MRUArtwork
- (BOOL)isEqual:(id)equal;
- (MPArtworkCatalog)animatedCatalog;
- (MRUArtwork)initWithCatalogBlock:(id)block animatedCatalogBlock:(id)catalogBlock;
- (MRUArtwork)initWithImage:(id)image;
- (id)description;
@end

@implementation MRUArtwork

- (MRUArtwork)initWithImage:(id)image
{
  imageCopy = image;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __28__MRUArtwork_initWithImage___block_invoke;
  v8[3] = &unk_1E7663910;
  v9 = imageCopy;
  v5 = imageCopy;
  v6 = [(MRUArtwork *)self initWithCatalogBlock:v8 animatedCatalogBlock:&__block_literal_global_0];

  return v6;
}

- (MRUArtwork)initWithCatalogBlock:(id)block animatedCatalogBlock:(id)catalogBlock
{
  blockCopy = block;
  catalogBlockCopy = catalogBlock;
  v14.receiver = self;
  v14.super_class = MRUArtwork;
  v8 = [(MRUArtwork *)&v14 init];
  if (v8)
  {
    v9 = _Block_copy(blockCopy);
    catalogBlock = v8->_catalogBlock;
    v8->_catalogBlock = v9;

    v11 = _Block_copy(catalogBlockCopy);
    animatedCatalogBlock = v8->_animatedCatalogBlock;
    v8->_animatedCatalogBlock = v11;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  catalog = [(MRUArtwork *)self catalog];
  animatedCatalog = [(MRUArtwork *)self animatedCatalog];
  v7 = [v3 stringWithFormat:@"%@ catalog: %@, animatedCatalog: %@", v4, catalog, animatedCatalog];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      catalog = [(MRUArtwork *)v5 catalog];
      visualIdenticalityIdentifier = [catalog visualIdenticalityIdentifier];
      catalog2 = [(MRUArtwork *)self catalog];
      visualIdenticalityIdentifier2 = [catalog2 visualIdenticalityIdentifier];
      if (visualIdenticalityIdentifier == visualIdenticalityIdentifier2)
      {
        v10 = 1;
      }

      else
      {
        v10 = [visualIdenticalityIdentifier isEqual:visualIdenticalityIdentifier2];
      }

      v12 = _os_feature_enabled_impl() ^ 1;
      v11 = v12 & v10;
      if ((v12 & 1) == 0 && v10)
      {
        animatedCatalog = [(MRUArtwork *)v5 animatedCatalog];
        visualIdenticalityIdentifier3 = [animatedCatalog visualIdenticalityIdentifier];
        animatedCatalog2 = [(MRUArtwork *)self animatedCatalog];
        visualIdenticalityIdentifier4 = [animatedCatalog2 visualIdenticalityIdentifier];
        if (visualIdenticalityIdentifier3 == visualIdenticalityIdentifier4)
        {
          v11 = 1;
        }

        else
        {
          v11 = [visualIdenticalityIdentifier3 isEqual:visualIdenticalityIdentifier4];
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (MPArtworkCatalog)animatedCatalog
{
  if (_os_feature_enabled_impl())
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    [currentDevice userInterfaceIdiom];

    v4 = (*(self->_animatedCatalogBlock + 2))();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end