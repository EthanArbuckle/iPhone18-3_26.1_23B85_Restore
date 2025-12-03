@interface MUAMSResultProviderFetchOptions
- (CGSize)artworkSize;
- (MUAMSResultProviderFetchOptions)initWithDisplayScale:(double)scale artworkSize:(CGSize)size source:(int64_t)source;
@end

@implementation MUAMSResultProviderFetchOptions

- (CGSize)artworkSize
{
  width = self->_artworkSize.width;
  height = self->_artworkSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (MUAMSResultProviderFetchOptions)initWithDisplayScale:(double)scale artworkSize:(CGSize)size source:(int64_t)source
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = MUAMSResultProviderFetchOptions;
  result = [(MUAMSResultProviderFetchOptions *)&v10 init];
  if (result)
  {
    result->_displayScale = scale;
    result->_artworkSize.width = width;
    result->_artworkSize.height = height;
    result->_source = source;
  }

  return result;
}

@end