@interface _ML3ArtworkConfigurationMediaArtworkTypeKey
+ (id)keyWithMediaType:(unsigned int)a3 artworkType:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
@end

@implementation _ML3ArtworkConfigurationMediaArtworkTypeKey

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = self == v4 || v4 && self->_mediaType == v4->_mediaType && self->_artworkType == v4->_artworkType;

  return v5;
}

+ (id)keyWithMediaType:(unsigned int)a3 artworkType:(int64_t)a4
{
  v6 = objc_alloc_init(a1);
  v6[2] = a3;
  *(v6 + 2) = a4;

  return v6;
}

@end