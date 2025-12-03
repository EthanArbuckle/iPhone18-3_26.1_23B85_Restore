@interface MPCMRContentItemAnimatedArtworkToken
- (BOOL)isEqual:(id)equal;
- (MPCMRContentItemAnimatedArtworkToken)initWithIdentifier:(id)identifier artworkIdentifier:(id)artworkIdentifier artworkFormat:(id)format;
- (id)stringRepresentation;
@end

@implementation MPCMRContentItemAnimatedArtworkToken

- (id)stringRepresentation
{
  artworkIdentifier = [(MPCMRContentItemAnimatedArtworkToken *)self artworkIdentifier];
  v3 = [artworkIdentifier copy];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = self->_identifier;
      identifier = [(MPCMRContentItemAnimatedArtworkToken *)v5 identifier];
      if (identifier == identifier || [(NSString *)identifier isEqual:identifier])
      {
        artworkIdentifier = self->_artworkIdentifier;
        artworkIdentifier = [(MPCMRContentItemAnimatedArtworkToken *)v5 artworkIdentifier];
        if (artworkIdentifier == artworkIdentifier || [(NSString *)artworkIdentifier isEqual:artworkIdentifier])
        {
          artworkFormat = self->_artworkFormat;
          artworkFormat = [(MPCMRContentItemAnimatedArtworkToken *)v5 artworkFormat];
          if (artworkFormat == artworkFormat)
          {
            v12 = 1;
          }

          else
          {
            v12 = [(NSString *)artworkFormat isEqual:artworkFormat];
          }
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (MPCMRContentItemAnimatedArtworkToken)initWithIdentifier:(id)identifier artworkIdentifier:(id)artworkIdentifier artworkFormat:(id)format
{
  identifierCopy = identifier;
  artworkIdentifierCopy = artworkIdentifier;
  formatCopy = format;
  v15.receiver = self;
  v15.super_class = MPCMRContentItemAnimatedArtworkToken;
  v12 = [(MPCMRContentItemAnimatedArtworkToken *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_artworkIdentifier, artworkIdentifier);
    objc_storeStrong(&v13->_artworkFormat, format);
  }

  return v13;
}

@end