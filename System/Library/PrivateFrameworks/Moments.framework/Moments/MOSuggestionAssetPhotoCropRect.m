@interface MOSuggestionAssetPhotoCropRect
- (CGRect)cgRect;
- (MOSuggestionAssetPhotoCropRect)initWithCGRect:(CGRect)a3;
- (MOSuggestionAssetPhotoCropRect)initWithCoder:(id)a3;
- (double)aspectRatio;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOSuggestionAssetPhotoCropRect

- (MOSuggestionAssetPhotoCropRect)initWithCGRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)encodeWithCoder:(id)a3
{
  x = self->_x;
  v5 = a3;
  [v5 encodeDouble:@"kCoderKeyPhotoCropRectX" forKey:x];
  [v5 encodeDouble:@"kCoderKeyPhotoCropRectY" forKey:self->_y];
  [v5 encodeDouble:@"kCoderKeyPhotoCropRectWidth" forKey:self->_width];
  [v5 encodeDouble:@"kCoderKeyPhotoCropRectHeight" forKey:self->_height];
}

- (MOSuggestionAssetPhotoCropRect)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MOSuggestionAssetPhotoCropRect;
  v5 = [(MOSuggestionAssetPhotoCropRect *)&v11 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"kCoderKeyPhotoCropRectX"];
    v5->_x = v6;
    [v4 decodeDoubleForKey:@"kCoderKeyPhotoCropRectY"];
    v5->_y = v7;
    [v4 decodeDoubleForKey:@"kCoderKeyPhotoCropRectWidth"];
    v5->_width = v8;
    [v4 decodeDoubleForKey:@"kCoderKeyPhotoCropRectHeight"];
    v5->_height = v9;
  }

  return v5;
}

@end