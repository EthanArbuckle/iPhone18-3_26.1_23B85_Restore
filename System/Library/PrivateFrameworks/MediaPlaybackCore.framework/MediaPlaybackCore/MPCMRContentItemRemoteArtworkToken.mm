@interface MPCMRContentItemRemoteArtworkToken
- (BOOL)isEqual:(id)equal;
- (MPCMRContentItemRemoteArtworkToken)initWithIdentifier:(id)identifier artworkIdentifier:(id)artworkIdentifier supportedRemoteArtworkFormats:(id)formats remoteArtworks:(id)artworks;
- (id)stringRepresentation;
- (void)setDestinationScale:(double)scale;
- (void)setFittingSize:(CGSize)size;
@end

@implementation MPCMRContentItemRemoteArtworkToken

- (void)setDestinationScale:(double)scale
{
  storeArtworkCatalog = [(MPCMRContentItemRemoteArtworkToken *)self storeArtworkCatalog];
  [storeArtworkCatalog setDestinationScale:scale];
}

- (void)setFittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  storeArtworkCatalog = [(MPCMRContentItemRemoteArtworkToken *)self storeArtworkCatalog];
  [storeArtworkCatalog setFittingSize:{width, height}];
}

- (id)stringRepresentation
{
  artworkIdentifier = [(MPCMRContentItemRemoteArtworkToken *)self artworkIdentifier];
  v3 = [artworkIdentifier copy];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = self->_identifier;
      identifier = [(MPCMRContentItemRemoteArtworkToken *)v5 identifier];
      if (identifier == identifier || [(NSString *)identifier isEqual:identifier])
      {
        artworkIdentifier = self->_artworkIdentifier;
        artworkIdentifier = [(MPCMRContentItemRemoteArtworkToken *)v5 artworkIdentifier];
        if (artworkIdentifier == artworkIdentifier || [(NSString *)artworkIdentifier isEqual:artworkIdentifier])
        {
          supportedRemoteArtworkFormats = self->_supportedRemoteArtworkFormats;
          supportedRemoteArtworkFormats = [(MPCMRContentItemRemoteArtworkToken *)v5 supportedRemoteArtworkFormats];
          if (supportedRemoteArtworkFormats == supportedRemoteArtworkFormats || [(NSArray *)supportedRemoteArtworkFormats isEqual:supportedRemoteArtworkFormats])
          {
            remoteArtworks = self->_remoteArtworks;
            remoteArtworks = [(MPCMRContentItemRemoteArtworkToken *)v5 remoteArtworks];
            if (remoteArtworks == remoteArtworks)
            {
              v14 = 1;
            }

            else
            {
              v14 = [(NSDictionary *)remoteArtworks isEqual:remoteArtworks];
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

- (MPCMRContentItemRemoteArtworkToken)initWithIdentifier:(id)identifier artworkIdentifier:(id)artworkIdentifier supportedRemoteArtworkFormats:(id)formats remoteArtworks:(id)artworks
{
  identifierCopy = identifier;
  artworkIdentifierCopy = artworkIdentifier;
  formatsCopy = formats;
  artworksCopy = artworks;
  v37.receiver = self;
  v37.super_class = MPCMRContentItemRemoteArtworkToken;
  v14 = [(MPCMRContentItemRemoteArtworkToken *)&v37 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v17 = [artworkIdentifierCopy copy];
    artworkIdentifier = v14->_artworkIdentifier;
    v14->_artworkIdentifier = v17;

    v19 = [formatsCopy copy];
    supportedRemoteArtworkFormats = v14->_supportedRemoteArtworkFormats;
    v14->_supportedRemoteArtworkFormats = v19;

    objc_storeStrong(&v14->_remoteArtworks, artworks);
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

    artworkURLTemplateData = [v22 artworkURLTemplateData];

    if (artworkURLTemplateData)
    {
      v25 = MEMORY[0x1E696ACB0];
      artworkURLTemplateData2 = [v23 artworkURLTemplateData];
      v27 = [v25 JSONObjectWithData:artworkURLTemplateData2 options:0 error:0];

      if (v27)
      {
        v28 = [objc_alloc(MEMORY[0x1E69E45C0]) initWithArtworkResponseDictionary:v27];

        if (v28)
        {
          goto LABEL_10;
        }
      }
    }

    artworkURLString = [v23 artworkURLString];
    v30 = [artworkURLString length];

    if (!v30)
    {
      goto LABEL_13;
    }

    v31 = MEMORY[0x1E695DFF8];
    artworkURLString2 = [v23 artworkURLString];
    v30 = [v31 URLWithString:artworkURLString2];

    if (!v30)
    {
      goto LABEL_13;
    }

    v28 = [objc_alloc(MEMORY[0x1E69E45C0]) initWithArtworkURL:v30];

    if (v28)
    {
LABEL_10:
      v36 = [MEMORY[0x1E6970988] tokenWithImageArtworkInfo:v28];
      mEMORY[0x1E6970980] = [MEMORY[0x1E6970980] sharedStoreArtworkDataSource];
      v30 = [objc_alloc(MEMORY[0x1E69704A0]) initWithToken:v36 dataSource:mEMORY[0x1E6970980]];
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