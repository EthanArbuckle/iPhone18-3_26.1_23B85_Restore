@interface MUAMSResultProviderFetchOptions
- (CGSize)artworkSize;
- (MUAMSResultProviderFetchOptions)initWithDisplayScale:(double)a3 artworkSize:(CGSize)a4 source:(int64_t)a5;
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

- (MUAMSResultProviderFetchOptions)initWithDisplayScale:(double)a3 artworkSize:(CGSize)a4 source:(int64_t)a5
{
  height = a4.height;
  width = a4.width;
  v10.receiver = self;
  v10.super_class = MUAMSResultProviderFetchOptions;
  result = [(MUAMSResultProviderFetchOptions *)&v10 init];
  if (result)
  {
    result->_displayScale = a3;
    result->_artworkSize.width = width;
    result->_artworkSize.height = height;
    result->_source = a5;
  }

  return result;
}

@end