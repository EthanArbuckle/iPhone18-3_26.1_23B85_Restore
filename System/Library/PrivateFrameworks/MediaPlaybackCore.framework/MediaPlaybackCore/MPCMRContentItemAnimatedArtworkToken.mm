@interface MPCMRContentItemAnimatedArtworkToken
- (BOOL)isEqual:(id)a3;
- (MPCMRContentItemAnimatedArtworkToken)initWithIdentifier:(id)a3 artworkIdentifier:(id)a4 artworkFormat:(id)a5;
- (id)stringRepresentation;
@end

@implementation MPCMRContentItemAnimatedArtworkToken

- (id)stringRepresentation
{
  v2 = [(MPCMRContentItemAnimatedArtworkToken *)self artworkIdentifier];
  v3 = [v2 copy];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      identifier = self->_identifier;
      v7 = [(MPCMRContentItemAnimatedArtworkToken *)v5 identifier];
      if (identifier == v7 || [(NSString *)identifier isEqual:v7])
      {
        artworkIdentifier = self->_artworkIdentifier;
        v9 = [(MPCMRContentItemAnimatedArtworkToken *)v5 artworkIdentifier];
        if (artworkIdentifier == v9 || [(NSString *)artworkIdentifier isEqual:v9])
        {
          artworkFormat = self->_artworkFormat;
          v11 = [(MPCMRContentItemAnimatedArtworkToken *)v5 artworkFormat];
          if (artworkFormat == v11)
          {
            v12 = 1;
          }

          else
          {
            v12 = [(NSString *)artworkFormat isEqual:v11];
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

- (MPCMRContentItemAnimatedArtworkToken)initWithIdentifier:(id)a3 artworkIdentifier:(id)a4 artworkFormat:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MPCMRContentItemAnimatedArtworkToken;
  v12 = [(MPCMRContentItemAnimatedArtworkToken *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
    objc_storeStrong(&v13->_artworkIdentifier, a4);
    objc_storeStrong(&v13->_artworkFormat, a5);
  }

  return v13;
}

@end