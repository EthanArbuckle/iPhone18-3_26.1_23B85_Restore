@interface BWDockKitFocusDetection
- (BWDockKitFocusDetection)initWithIdentifier:(int64_t)a3 rect:(CGRect)a4 userFocusStrong:(BOOL)a5;
- (CGRect)rect;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation BWDockKitFocusDetection

- (BWDockKitFocusDetection)initWithIdentifier:(int64_t)a3 rect:(CGRect)a4 userFocusStrong:(BOOL)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12.receiver = self;
  v12.super_class = BWDockKitFocusDetection;
  result = [(BWDockKitFocusDetection *)&v12 init];
  if (result)
  {
    result->_identifier = a3;
    result->_rect.origin.x = x;
    result->_rect.origin.y = y;
    result->_rect.size.width = width;
    result->_rect.size.height = height;
    result->_userFocusStrong = a5;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(BWDockKitFocusDetection *)self identifier];
  [(BWDockKitFocusDetection *)self rect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(BWDockKitFocusDetection *)self userFocusStrong];

  return [v4 initWithIdentifier:v5 rect:v14 userFocusStrong:{v7, v9, v11, v13}];
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