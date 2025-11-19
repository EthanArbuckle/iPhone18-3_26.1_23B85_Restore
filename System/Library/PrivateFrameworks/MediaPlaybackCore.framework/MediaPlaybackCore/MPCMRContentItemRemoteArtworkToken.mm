@interface MPCMRContentItemRemoteArtworkToken
- (BOOL)isEqual:(id)a3;
- (MPCMRContentItemRemoteArtworkToken)initWithIdentifier:(id)a3 artworkIdentifier:(id)a4 supportedRemoteArtworkFormats:(id)a5 remoteArtworks:(id)a6;
- (id)stringRepresentation;
- (void)setDestinationScale:(double)a3;
- (void)setFittingSize:(CGSize)a3;
@end

@implementation MPCMRContentItemRemoteArtworkToken

- (void)setDestinationScale:(double)a3
{
  v4 = [(MPCMRContentItemRemoteArtworkToken *)self storeArtworkCatalog];
  [v4 setDestinationScale:a3];
}

- (void)setFittingSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(MPCMRContentItemRemoteArtworkToken *)self storeArtworkCatalog];
  [v5 setFittingSize:{width, height}];
}

- (id)stringRepresentation
{
  v2 = [(MPCMRContentItemRemoteArtworkToken *)self artworkIdentifier];
  v3 = [v2 copy];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      identifier = self->_identifier;
      v7 = [(MPCMRContentItemRemoteArtworkToken *)v5 identifier];
      if (identifier == v7 || [(NSString *)identifier isEqual:v7])
      {
        artworkIdentifier = self->_artworkIdentifier;
        v9 = [(MPCMRContentItemRemoteArtworkToken *)v5 artworkIdentifier];
        if (artworkIdentifier == v9 || [(NSString *)artworkIdentifier isEqual:v9])
        {
          supportedRemoteArtworkFormats = self->_supportedRemoteArtworkFormats;
          v11 = [(MPCMRContentItemRemoteArtworkToken *)v5 supportedRemoteArtworkFormats];
          if (supportedRemoteArtworkFormats == v11 || [(NSArray *)supportedRemoteArtworkFormats isEqual:v11])
          {
            remoteArtworks = self->_remoteArtworks;
            v13 = [(MPCMRContentItemRemoteArtworkToken *)v5 remoteArtworks];
            if (remoteArtworks == v13)
            {
              v14 = 1;
            }

            else
            {
              v14 = [(NSDictionary *)remoteArtworks isEqual:v13];
            }
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (MPCMRContentItemRemoteArtworkToken)initWithIdentifier:(id)a3 artworkIdentifier:(id)a4 supportedRemoteArtworkFormats:(id)a5 remoteArtworks:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v37.receiver = self;
  v37.super_class = MPCMRContentItemRemoteArtworkToken;
  v14 = [(MPCMRContentItemRemoteArtworkToken *)&v37 init];
  if (v14)
  {
    v15 = [v10 copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v17 = [v11 copy];
    artworkIdentifier = v14->_artworkIdentifier;
    v14->_artworkIdentifier = v17;

    v19 = [v12 copy];
    supportedRemoteArtworkFormats = v14->_supportedRemoteArtworkFormats;
    v14->_supportedRemoteArtworkFormats = v19;

    objc_storeStrong(&v14->_remoteArtworks, a6);
    v21 = v14->_remoteArtworks;
    if (![(NSDictionary *)v21 count])
    {
      v30 = 0;
LABEL_14:

      storeArtworkCatalog = v14->_storeArtworkCatalog;
      v14->_storeArtworkCatalog = v30;

      goto LABEL_15;
    }

    v22 = [(NSDictionary *)v21 objectForKeyedSubscript:*MEMORY[0x1E6970298]];
    v23 = v22;
    if (!v22)
    {
      goto LABEL_12;
    }

    v24 = [v22 artworkURLTemplateData];

    if (v24)
    {
      v25 = MEMORY[0x1E696ACB0];
      v26 = [v23 artworkURLTemplateData];
      v27 = [v25 JSONObjectWithData:v26 options:0 error:0];

      if (v27)
      {
        v28 = [objc_alloc(MEMORY[0x1E69E45C0]) initWithArtworkResponseDictionary:v27];

        if (v28)
        {
          goto LABEL_10;
        }
      }
    }

    v29 = [v23 artworkURLString];
    v30 = [v29 length];

    if (!v30)
    {
      goto LABEL_13;
    }

    v31 = MEMORY[0x1E695DFF8];
    v32 = [v23 artworkURLString];
    v30 = [v31 URLWithString:v32];

    if (!v30)
    {
      goto LABEL_13;
    }

    v28 = [objc_alloc(MEMORY[0x1E69E45C0]) initWithArtworkURL:v30];

    if (v28)
    {
LABEL_10:
      v36 = [MEMORY[0x1E6970988] tokenWithImageArtworkInfo:v28];
      v33 = [MEMORY[0x1E6970980] sharedStoreArtworkDataSource];
      v30 = [objc_alloc(MEMORY[0x1E69704A0]) initWithToken:v36 dataSource:v33];
    }

    else
    {
LABEL_12:
      v30 = 0;
    }

LABEL_13:

    goto LABEL_14;
  }

LABEL_15:

  return v14;
}

@end