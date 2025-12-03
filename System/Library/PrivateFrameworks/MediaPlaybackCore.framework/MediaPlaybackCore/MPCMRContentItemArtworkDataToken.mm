@interface MPCMRContentItemArtworkDataToken
- (BOOL)isEqual:(id)equal;
- (MPCMRContentItemArtworkDataToken)initWithIdentifier:(id)identifier artworkIdentifier:(id)artworkIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)stringRepresentation;
@end

@implementation MPCMRContentItemArtworkDataToken

- (id)stringRepresentation
{
  artworkIdentifier = [(MPCMRContentItemArtworkDataToken *)self artworkIdentifier];
  v3 = [artworkIdentifier copy];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MPCMRContentItemArtworkDataToken alloc];
  identifier = [(MPCMRContentItemArtworkDataToken *)self identifier];
  artworkIdentifier = [(MPCMRContentItemArtworkDataToken *)self artworkIdentifier];
  v7 = [(MPCMRContentItemArtworkDataToken *)v4 initWithIdentifier:identifier artworkIdentifier:artworkIdentifier];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (MPCMRContentItemArtworkDataToken)initWithIdentifier:(id)identifier artworkIdentifier:(id)artworkIdentifier
{
  identifierCopy = identifier;
  artworkIdentifierCopy = artworkIdentifier;
  v14.receiver = self;
  v14.super_class = MPCMRContentItemArtworkDataToken;
  v8 = [(MPCMRContentItemArtworkDataToken *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [artworkIdentifierCopy copy];
    artworkIdentifier = v8->_artworkIdentifier;
    v8->_artworkIdentifier = v11;
  }

  return v8;
}

@end