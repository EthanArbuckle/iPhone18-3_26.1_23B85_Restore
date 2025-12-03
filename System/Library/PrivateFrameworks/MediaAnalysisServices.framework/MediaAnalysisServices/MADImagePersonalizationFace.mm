@interface MADImagePersonalizationFace
- (CGRect)normalizedCropRect;
- (MADImagePersonalizationFace)initWithCoder:(id)coder;
- (MADImagePersonalizationFace)initWithNormalizedCropRect:(CGRect)rect;
- (id)description;
@end

@implementation MADImagePersonalizationFace

- (MADImagePersonalizationFace)initWithNormalizedCropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8.receiver = self;
  v8.super_class = MADImagePersonalizationFace;
  result = [(MADImagePersonalizationFace *)&v8 init];
  if (result)
  {
    result->_normalizedCropRect.origin.x = x;
    result->_normalizedCropRect.origin.y = y;
    result->_normalizedCropRect.size.width = width;
    result->_normalizedCropRect.size.height = height;
  }

  return result;
}

- (MADImagePersonalizationFace)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MADImagePersonalizationFace;
  v5 = [(MADImagePersonalizationFace *)&v11 init];
  if (v5)
  {
    [coderCopy decodeRectForKey:@"NormalizedCropRect"];
    v5->_normalizedCropRect.origin.x = v6;
    v5->_normalizedCropRect.origin.y = v7;
    v5->_normalizedCropRect.size.width = v8;
    v5->_normalizedCropRect.size.height = v9;
  }

  return v5;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"normalizedCropRect: (%0.3f, %0.3f) to (%0.3f, %0.3f)>", *&self->_normalizedCropRect.origin.x, *&self->_normalizedCropRect.origin.y, self->_normalizedCropRect.origin.x + self->_normalizedCropRect.size.width, self->_normalizedCropRect.origin.y + self->_normalizedCropRect.size.height];

  return string;
}

- (CGRect)normalizedCropRect
{
  x = self->_normalizedCropRect.origin.x;
  y = self->_normalizedCropRect.origin.y;
  width = self->_normalizedCropRect.size.width;
  height = self->_normalizedCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end