@interface VCPGeometryUtils
+ (CGPoint)pointFromNormalizedPoint:(CGPoint)point inBounds:(CGRect)bounds;
+ (CGRect)normalizedRectForRect:(CGRect)rect inBounds:(CGRect)bounds;
+ (CGRect)normalizedRectForRect:(CGRect)rect inBoundsOfSize:(CGSize)size;
+ (CGRect)rectFromMappingNormalizedRect:(CGRect)rect toBounds:(CGRect)bounds;
+ (CGRect)rectFromMappingNormalizedRect:(CGRect)rect toBoundsOfSize:(CGSize)size;
@end

@implementation VCPGeometryUtils

+ (CGRect)normalizedRectForRect:(CGRect)rect inBoundsOfSize:(CGSize)size
{
  [self normalizedRectForRect:rect.origin.x inBounds:{rect.origin.y, rect.size.width, rect.size.height, 0.0, 0.0, size.width, size.height}];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (CGRect)normalizedRectForRect:(CGRect)rect inBounds:(CGRect)bounds
{
  if (bounds.size.width <= 0.0)
  {
    v14 = *MEMORY[0x1E695F050];
    v15 = *(MEMORY[0x1E695F050] + 8);
    v12 = *(MEMORY[0x1E695F050] + 16);
    v13 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    height = bounds.size.height;
    if (bounds.size.height > 0.0 && (width = bounds.size.width, y = bounds.origin.y, x = bounds.origin.x, v8 = rect.size.height, v9 = rect.size.width, v10 = rect.origin.y, v11 = rect.origin.x, v18.origin.x = v11, v18.origin.y = v10, v18.size.width = v9, v18.size.height = v8, CGRectContainsRect(bounds, v18)))
    {
      v12 = v9 / width;
      v13 = v8 / height;
      v14 = (v11 - x) / width;
      v15 = (v10 - y) / height;
    }

    else
    {
      v14 = *MEMORY[0x1E695F050];
      v15 = *(MEMORY[0x1E695F050] + 8);
      v12 = *(MEMORY[0x1E695F050] + 16);
      v13 = *(MEMORY[0x1E695F050] + 24);
    }
  }

  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

+ (CGRect)rectFromMappingNormalizedRect:(CGRect)rect toBoundsOfSize:(CGSize)size
{
  [self rectFromMappingNormalizedRect:rect.origin.x toBounds:{rect.origin.y, rect.size.width, rect.size.height, 0.0, 0.0, size.width, size.height}];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (CGRect)rectFromMappingNormalizedRect:(CGRect)rect toBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = rect.size.height;
  v9 = rect.size.width;
  v10 = rect.origin.y;
  v11 = rect.origin.x;
  if (CGRectIsNull(bounds) || (v16.origin.x = x, v16.origin.y = y, v16.size.width = width, v16.size.height = height, CGRectIsInfinite(v16)) || width <= 0.0 || height <= 0.0)
  {
    v12 = *MEMORY[0x1E695F050];
    v13 = *(MEMORY[0x1E695F050] + 8);
    v14 = *(MEMORY[0x1E695F050] + 16);
    v15 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    v14 = v9 * width;
    v12 = x + v11 * width;
    v15 = v8 * height;
    v13 = y + v10 * height;
  }

  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

+ (CGPoint)pointFromNormalizedPoint:(CGPoint)point inBounds:(CGRect)bounds
{
  v4 = bounds.origin.x + point.x * bounds.size.width;
  v5 = bounds.origin.y + point.y * bounds.size.height;
  result.y = v5;
  result.x = v4;
  return result;
}

@end