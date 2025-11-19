@interface MRUArtwork
- (BOOL)isEqual:(id)a3;
- (MPArtworkCatalog)animatedCatalog;
- (MRUArtwork)initWithCatalogBlock:(id)a3 animatedCatalogBlock:(id)a4;
- (MRUArtwork)initWithImage:(id)a3;
- (id)description;
@end

@implementation MRUArtwork

- (MRUArtwork)initWithImage:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __28__MRUArtwork_initWithImage___block_invoke;
  v8[3] = &unk_1E7663910;
  v9 = v4;
  v5 = v4;
  v6 = [(MRUArtwork *)self initWithCatalogBlock:v8 animatedCatalogBlock:&__block_literal_global_0];

  return v6;
}

- (MRUArtwork)initWithCatalogBlock:(id)a3 animatedCatalogBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MRUArtwork;
  v8 = [(MRUArtwork *)&v14 init];
  if (v8)
  {
    v9 = _Block_copy(v6);
    catalogBlock = v8->_catalogBlock;
    v8->_catalogBlock = v9;

    v11 = _Block_copy(v7);
    animatedCatalogBlock = v8->_animatedCatalogBlock;
    v8->_animatedCatalogBlock = v11;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MRUArtwork *)self catalog];
  v6 = [(MRUArtwork *)self animatedCatalog];
  v7 = [v3 stringWithFormat:@"%@ catalog: %@, animatedCatalog: %@", v4, v5, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MRUArtwork *)v5 catalog];
      v7 = [v6 visualIdenticalityIdentifier];
      v8 = [(MRUArtwork *)self catalog];
      v9 = [v8 visualIdenticalityIdentifier];
      if (v7 == v9)
      {
        v10 = 1;
      }

      else
      {
        v10 = [v7 isEqual:v9];
      }

      v12 = _os_feature_enabled_impl() ^ 1;
      v11 = v12 & v10;
      if ((v12 & 1) == 0 && v10)
      {
        v13 = [(MRUArtwork *)v5 animatedCatalog];
        v14 = [v13 visualIdenticalityIdentifier];
        v15 = [(MRUArtwork *)self animatedCatalog];
        v16 = [v15 visualIdenticalityIdentifier];
        if (v14 == v16)
        {
          v11 = 1;
        }

        else
        {
          v11 = [v14 isEqual:v16];
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
    v3 = [MEMORY[0x1E69DC938] currentDevice];
    [v3 userInterfaceIdiom];

    v4 = (*(self->_animatedCatalogBlock + 2))();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end