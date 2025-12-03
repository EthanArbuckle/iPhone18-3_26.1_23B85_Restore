@interface MPNowPlayingContentItemLegacyRemoteArtworkToken
- (BOOL)isEqual:(id)equal;
- (MPNowPlayingContentItemLegacyRemoteArtworkToken)initWithIdentifier:(id)identifier artworkProperties:(id)properties artworkIdentifier:(id)artworkIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)stringRepresentation;
@end

@implementation MPNowPlayingContentItemLegacyRemoteArtworkToken

- (id)stringRepresentation
{
  artworkIdentifier = [(MPNowPlayingContentItemLegacyRemoteArtworkToken *)self artworkIdentifier];
  v3 = [artworkIdentifier copy];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MPNowPlayingContentItemLegacyRemoteArtworkToken alloc];
  identifier = [(MPNowPlayingContentItemLegacyRemoteArtworkToken *)self identifier];
  artworkProperties = [(MPNowPlayingContentItemLegacyRemoteArtworkToken *)self artworkProperties];
  artworkIdentifier = [(MPNowPlayingContentItemLegacyRemoteArtworkToken *)self artworkIdentifier];
  v8 = [(MPNowPlayingContentItemLegacyRemoteArtworkToken *)v4 initWithIdentifier:identifier artworkProperties:artworkProperties artworkIdentifier:artworkIdentifier];

  return v8;
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
      v6 = [(NSString *)self->_identifier isEqualToString:v5->_identifier]&& [(MPExportableArtworkProperties *)self->_artworkProperties isEqual:v5->_artworkProperties]&& [(NSString *)self->_artworkIdentifier isEqualToString:v5->_artworkIdentifier];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (MPNowPlayingContentItemLegacyRemoteArtworkToken)initWithIdentifier:(id)identifier artworkProperties:(id)properties artworkIdentifier:(id)artworkIdentifier
{
  identifierCopy = identifier;
  propertiesCopy = properties;
  artworkIdentifierCopy = artworkIdentifier;
  v19.receiver = self;
  v19.super_class = MPNowPlayingContentItemLegacyRemoteArtworkToken;
  v11 = [(MPNowPlayingContentItemLegacyRemoteArtworkToken *)&v19 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [propertiesCopy copy];
    artworkProperties = v11->_artworkProperties;
    v11->_artworkProperties = v14;

    v16 = [artworkIdentifierCopy copy];
    artworkIdentifier = v11->_artworkIdentifier;
    v11->_artworkIdentifier = v16;
  }

  return v11;
}

@end