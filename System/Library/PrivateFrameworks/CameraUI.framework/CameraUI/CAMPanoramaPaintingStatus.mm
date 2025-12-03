@interface CAMPanoramaPaintingStatus
- (CAMPanoramaPaintingStatus)initWithSpeed:(double)speed cropRectangle:(CGRect)rectangle normalizedBaselineOffset:(double)offset;
- (CGRect)cropRectangle;
@end

@implementation CAMPanoramaPaintingStatus

- (CAMPanoramaPaintingStatus)initWithSpeed:(double)speed cropRectangle:(CGRect)rectangle normalizedBaselineOffset:(double)offset
{
  height = rectangle.size.height;
  width = rectangle.size.width;
  y = rectangle.origin.y;
  x = rectangle.origin.x;
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
    v11->_speed = speed;
    v11->_normalizedBaselineOffset = offset;
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