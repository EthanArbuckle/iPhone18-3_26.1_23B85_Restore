@interface MPCModelGenericAVItemTimedMetadataStreamFields
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation MPCModelGenericAVItemTimedMetadataStreamFields

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (album = self->_album, album != v4->_album) && ![(NSString *)album isEqual:?]|| (title = self->_title, title != v4->_title) && ![(NSString *)title isEqual:?]|| (artist = self->_artist, artist != v4->_artist) && ![(NSString *)artist isEqual:?]|| self->_explicitContent != v4->_explicitContent)
  {
    v9 = 0;
    goto LABEL_14;
  }

  artworkDictionaries = self->_artworkDictionaries;
  if (artworkDictionaries == v4->_artworkDictionaries)
  {
LABEL_13:
    v9 = 1;
    goto LABEL_14;
  }

  v9 = [(NSArray *)artworkDictionaries isEqual:?];
LABEL_14:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_album hash];
  v4 = [(NSString *)self->_artist hash]^ v3;
  explicitContent = self->_explicitContent;
  v6 = v4 ^ explicitContent ^ [(NSString *)self->_title hash];
  return v6 ^ [(NSArray *)self->_artworkDictionaries hash];
}

@end