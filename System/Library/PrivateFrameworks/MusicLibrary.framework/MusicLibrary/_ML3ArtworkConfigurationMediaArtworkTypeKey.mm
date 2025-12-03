@interface _ML3ArtworkConfigurationMediaArtworkTypeKey
+ (id)keyWithMediaType:(unsigned int)type artworkType:(int64_t)artworkType;
- (BOOL)isEqual:(id)equal;
@end

@implementation _ML3ArtworkConfigurationMediaArtworkTypeKey

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = self == equalCopy || equalCopy && self->_mediaType == equalCopy->_mediaType && self->_artworkType == equalCopy->_artworkType;

  return v5;
}

+ (id)keyWithMediaType:(unsigned int)type artworkType:(int64_t)artworkType
{
  v6 = objc_alloc_init(self);
  v6[2] = type;
  *(v6 + 2) = artworkType;

  return v6;
}

@end