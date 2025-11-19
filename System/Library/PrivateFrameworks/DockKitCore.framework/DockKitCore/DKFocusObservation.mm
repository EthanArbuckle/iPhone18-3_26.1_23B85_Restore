@interface DKFocusObservation
- (CGRect)rect;
- (DKFocusObservation)initWithIdentifier:(int64_t)a3 rect:(CGRect)a4 focusStrong:(BOOL)a5;
- (DKFocusObservation)initWithIdentifier:(int64_t)a3 rect:(CGRect)a4 focusStrong:(BOOL)a5 detectionType:(unint64_t)a6;
@end

@implementation DKFocusObservation

- (DKFocusObservation)initWithIdentifier:(int64_t)a3 rect:(CGRect)a4 focusStrong:(BOOL)a5 detectionType:(unint64_t)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v14.receiver = self;
  v14.super_class = DKFocusObservation;
  result = [(DKFocusObservation *)&v14 init];
  if (result)
  {
    result->_rect.origin.x = x;
    result->_rect.origin.y = y;
    result->_rect.size.width = width;
    result->_rect.size.height = height;
    result->_focusStrong = a5;
    result->_identifier = a3;
    result->_detectionType = a6;
  }

  return result;
}

- (DKFocusObservation)initWithIdentifier:(int64_t)a3 rect:(CGRect)a4 focusStrong:(BOOL)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12.receiver = self;
  v12.super_class = DKFocusObservation;
  result = [(DKFocusObservation *)&v12 init];
  if (result)
  {
    result->_rect.origin.x = x;
    result->_rect.origin.y = y;
    result->_rect.size.width = width;
    result->_rect.size.height = height;
    result->_focusStrong = a5;
    result->_identifier = a3;
    result->_detectionType = 0;
  }

  return result;
}

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end