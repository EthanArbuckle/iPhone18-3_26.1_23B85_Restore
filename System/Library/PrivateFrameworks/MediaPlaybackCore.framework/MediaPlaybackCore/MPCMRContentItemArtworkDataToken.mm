@interface MPCMRContentItemArtworkDataToken
- (BOOL)isEqual:(id)a3;
- (MPCMRContentItemArtworkDataToken)initWithIdentifier:(id)a3 artworkIdentifier:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)stringRepresentation;
@end

@implementation MPCMRContentItemArtworkDataToken

- (id)stringRepresentation
{
  v2 = [(MPCMRContentItemArtworkDataToken *)self artworkIdentifier];
  v3 = [v2 copy];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MPCMRContentItemArtworkDataToken alloc];
  v5 = [(MPCMRContentItemArtworkDataToken *)self identifier];
  v6 = [(MPCMRContentItemArtworkDataToken *)self artworkIdentifier];
  v7 = [(MPCMRContentItemArtworkDataToken *)v4 initWithIdentifier:v5 artworkIdentifier:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([(NSString *)self->_identifier isEqual:v5->_identifier])
      {
        v6 = [(NSString *)self->_artworkIdentifier isEqual:v5->_artworkIdentifier];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (MPCMRContentItemArtworkDataToken)initWithIdentifier:(id)a3 artworkIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MPCMRContentItemArtworkDataToken;
  v8 = [(MPCMRContentItemArtworkDataToken *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [v7 copy];
    artworkIdentifier = v8->_artworkIdentifier;
    v8->_artworkIdentifier = v11;
  }

  return v8;
}

@end