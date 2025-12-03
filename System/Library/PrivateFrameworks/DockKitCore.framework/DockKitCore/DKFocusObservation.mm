@interface DKFocusObservation
- (CGRect)rect;
- (DKFocusObservation)initWithIdentifier:(int64_t)identifier rect:(CGRect)rect focusStrong:(BOOL)strong;
- (DKFocusObservation)initWithIdentifier:(int64_t)identifier rect:(CGRect)rect focusStrong:(BOOL)strong detectionType:(unint64_t)type;
@end

@implementation DKFocusObservation

- (DKFocusObservation)initWithIdentifier:(int64_t)identifier rect:(CGRect)rect focusStrong:(BOOL)strong detectionType:(unint64_t)type
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v14.receiver = self;
  v14.super_class = DKFocusObservation;
  result = [(DKFocusObservation *)&v14 init];
  if (result)
  {
    result->_rect.origin.x = x;
    result->_rect.origin.y = y;
    result->_rect.size.width = width;
    result->_rect.size.height = height;
    result->_focusStrong = strong;
    result->_identifier = identifier;
    result->_detectionType = type;
  }

  return result;
}

- (DKFocusObservation)initWithIdentifier:(int64_t)identifier rect:(CGRect)rect focusStrong:(BOOL)strong
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v12.receiver = self;
  v12.super_class = DKFocusObservation;
  result = [(DKFocusObservation *)&v12 init];
  if (result)
  {
    result->_rect.origin.x = x;
    result->_rect.origin.y = y;
    result->_rect.size.width = width;
    result->_rect.size.height = height;
    result->_focusStrong = strong;
    result->_identifier = identifier;
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