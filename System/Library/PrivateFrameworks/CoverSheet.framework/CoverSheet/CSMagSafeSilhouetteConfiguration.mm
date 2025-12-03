@interface CSMagSafeSilhouetteConfiguration
- (CGSize)size;
- (CSMagSafeSilhouetteConfiguration)initWithSize:(CGSize)size bottomOffset:(double)offset cornerRadius:(double)radius roundedCorners:(unint64_t)corners;
- (unint64_t)roundedCornersMaskForOrientation:(int64_t)orientation;
@end

@implementation CSMagSafeSilhouetteConfiguration

- (CSMagSafeSilhouetteConfiguration)initWithSize:(CGSize)size bottomOffset:(double)offset cornerRadius:(double)radius roundedCorners:(unint64_t)corners
{
  height = size.height;
  width = size.width;
  v12.receiver = self;
  v12.super_class = CSMagSafeSilhouetteConfiguration;
  result = [(CSMagSafeSilhouetteConfiguration *)&v12 init];
  if (result)
  {
    result->_size.width = width;
    result->_size.height = height;
    result->_bottomOffset = offset;
    result->_cornerRadius = radius;
    result->_roundedCorners = corners;
  }

  return result;
}

- (unint64_t)roundedCornersMaskForOrientation:(int64_t)orientation
{
  v3 = 3;
  v4 = 10;
  if (orientation == 3)
  {
    v4 = 5;
  }

  if (orientation >= 3)
  {
    v3 = v4;
  }

  if (orientation)
  {
    return v3;
  }

  else
  {
    return 15;
  }
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end