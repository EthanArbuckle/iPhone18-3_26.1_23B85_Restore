@interface CAMPanoramaPaintingStatus
- (CAMPanoramaPaintingStatus)initWithSpeed:(double)a3 cropRectangle:(CGRect)a4 normalizedBaselineOffset:(double)a5;
- (CGRect)cropRectangle;
@end

@implementation CAMPanoramaPaintingStatus

- (CAMPanoramaPaintingStatus)initWithSpeed:(double)a3 cropRectangle:(CGRect)a4 normalizedBaselineOffset:(double)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v15.receiver = self;
  v15.super_class = CAMPanoramaPaintingStatus;
  v11 = [(CAMPanoramaPaintingStatus *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_cropRectangle.origin.x = x;
    v11->_cropRectangle.origin.y = y;
    v11->_cropRectangle.size.width = width;
    v11->_cropRectangle.size.height = height;
    v11->_speed = a3;
    v11->_normalizedBaselineOffset = a5;
    v13 = v11;
  }

  return v12;
}

- (CGRect)cropRectangle
{
  x = self->_cropRectangle.origin.x;
  y = self->_cropRectangle.origin.y;
  width = self->_cropRectangle.size.width;
  height = self->_cropRectangle.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end