@interface CSMagSafeSilhouetteConfiguration
- (CGSize)size;
- (CSMagSafeSilhouetteConfiguration)initWithSize:(CGSize)a3 bottomOffset:(double)a4 cornerRadius:(double)a5 roundedCorners:(unint64_t)a6;
- (unint64_t)roundedCornersMaskForOrientation:(int64_t)a3;
@end

@implementation CSMagSafeSilhouetteConfiguration

- (CSMagSafeSilhouetteConfiguration)initWithSize:(CGSize)a3 bottomOffset:(double)a4 cornerRadius:(double)a5 roundedCorners:(unint64_t)a6
{
  height = a3.height;
  width = a3.width;
  v12.receiver = self;
  v12.super_class = CSMagSafeSilhouetteConfiguration;
  result = [(CSMagSafeSilhouetteConfiguration *)&v12 init];
  if (result)
  {
    result->_size.width = width;
    result->_size.height = height;
    result->_bottomOffset = a4;
    result->_cornerRadius = a5;
    result->_roundedCorners = a6;
  }

  return result;
}

- (unint64_t)roundedCornersMaskForOrientation:(int64_t)a3
{
  v3 = 3;
  v4 = 10;
  if (a3 == 3)
  {
    v4 = 5;
  }

  if (a3 >= 3)
  {
    v3 = v4;
  }

  if (a3)
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