@interface MOSuggestionAssetPhotoCropRect
- (CGRect)cgRect;
- (MOSuggestionAssetPhotoCropRect)initWithCGRect:(CGRect)rect;
- (MOSuggestionAssetPhotoCropRect)initWithCoder:(id)coder;
- (double)aspectRatio;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOSuggestionAssetPhotoCropRect

- (MOSuggestionAssetPhotoCropRect)initWithCGRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8.receiver = self;
  v8.super_class = MOSuggestionAssetPhotoCropRect;
  result = [(MOSuggestionAssetPhotoCropRect *)&v8 init];
  if (result)
  {
    result->_x = x;
    result->_y = y;
    result->_width = width;
    result->_height = height;
  }

  return result;
}

- (CGRect)cgRect
{
  x = self->_x;
  y = self->_y;
  width = self->_width;
  height = self->_height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (double)aspectRatio
{
  height = self->_height;
  result = 0.0;
  if (height > 0.0)
  {
    return self->_width / height;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  x = self->_x;
  coderCopy = coder;
  [coderCopy encodeDouble:@"kCoderKeyPhotoCropRectX" forKey:x];
  [coderCopy encodeDouble:@"kCoderKeyPhotoCropRectY" forKey:self->_y];
  [coderCopy encodeDouble:@"kCoderKeyPhotoCropRectWidth" forKey:self->_width];
  [coderCopy encodeDouble:@"kCoderKeyPhotoCropRectHeight" forKey:self->_height];
}

- (MOSuggestionAssetPhotoCropRect)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MOSuggestionAssetPhotoCropRect;
  v5 = [(MOSuggestionAssetPhotoCropRect *)&v11 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"kCoderKeyPhotoCropRectX"];
    v5->_x = v6;
    [coderCopy decodeDoubleForKey:@"kCoderKeyPhotoCropRectY"];
    v5->_y = v7;
    [coderCopy decodeDoubleForKey:@"kCoderKeyPhotoCropRectWidth"];
    v5->_width = v8;
    [coderCopy decodeDoubleForKey:@"kCoderKeyPhotoCropRectHeight"];
    v5->_height = v9;
  }

  return v5;
}

@end