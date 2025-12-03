@interface BWTrackedFace
- (CGRect)detectionRect;
- (CGRect)trackingRect;
- (void)dealloc;
- (void)initWithDetectionID:(void *)d;
- (void)setDetectionRect:(CGRect)rect;
- (void)setTrackingDistance:(float)distance;
@end

@implementation BWTrackedFace

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWTrackedFace;
  [(BWTrackedFace *)&v3 dealloc];
}

- (CGRect)detectionRect
{
  x = self->_detectionRect.origin.x;
  y = self->_detectionRect.origin.y;
  width = self->_detectionRect.size.width;
  height = self->_detectionRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setDetectionRect:(CGRect)rect
{
  self->_detectionRect = rect;
  if (rect.size.width <= rect.size.height)
  {
    height = rect.size.height;
  }

  else
  {
    height = rect.size.width;
  }

  v4 = height;
  v5 = self->_sizeToDistanceMultiplier / v4;
  self->_size = v4;
  self->_distance = v5;
}

- (void)setTrackingDistance:(float)distance
{
  self->_trackingDistance = distance;
  self->_distance = distance;
  size = self->_size;
  if (size != 0.0)
  {
    self->_sizeToDistanceMultiplier = size * distance;
  }
}

- (CGRect)trackingRect
{
  x = self->_trackingRect.origin.x;
  y = self->_trackingRect.origin.y;
  width = self->_trackingRect.size.width;
  height = self->_trackingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)initWithDetectionID:(void *)d
{
  if (!d)
  {
    return 0;
  }

  v5.receiver = d;
  v5.super_class = BWTrackedFace;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  if (v3)
  {
    v3[7] = a2;
    *(v3 + 24) = 1095761920;
  }

  return v3;
}

@end