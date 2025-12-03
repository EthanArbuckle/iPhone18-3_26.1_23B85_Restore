@interface BWDockKitFocusDetection
- (BWDockKitFocusDetection)initWithIdentifier:(int64_t)identifier rect:(CGRect)rect userFocusStrong:(BOOL)strong;
- (CGRect)rect;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation BWDockKitFocusDetection

- (BWDockKitFocusDetection)initWithIdentifier:(int64_t)identifier rect:(CGRect)rect userFocusStrong:(BOOL)strong
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v12.receiver = self;
  v12.super_class = BWDockKitFocusDetection;
  result = [(BWDockKitFocusDetection *)&v12 init];
  if (result)
  {
    result->_identifier = identifier;
    result->_rect.origin.x = x;
    result->_rect.origin.y = y;
    result->_rect.size.width = width;
    result->_rect.size.height = height;
    result->_userFocusStrong = strong;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  identifier = [(BWDockKitFocusDetection *)self identifier];
  [(BWDockKitFocusDetection *)self rect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  userFocusStrong = [(BWDockKitFocusDetection *)self userFocusStrong];

  return [v4 initWithIdentifier:identifier rect:userFocusStrong userFocusStrong:{v7, v9, v11, v13}];
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