@interface CSSIntegralSize
+ (CSSIntegralSize)zeroSize;
- (BOOL)isEqual:(id)equal;
- (CSSIntegralSize)initWithWidth:(unint64_t)width height:(unint64_t)height;
- (CSSIntegralSize)rotatedSize;
- (id)sizeScaledByFactor:(unint64_t)factor;
@end

@implementation CSSIntegralSize

+ (CSSIntegralSize)zeroSize
{
  v2 = objc_opt_new();

  return v2;
}

- (CSSIntegralSize)initWithWidth:(unint64_t)width height:(unint64_t)height
{
  v7.receiver = self;
  v7.super_class = CSSIntegralSize;
  result = [(CSSIntegralSize *)&v7 init];
  if (result)
  {
    result->_width = width;
    result->_height = height;
  }

  return result;
}

- (id)sizeScaledByFactor:(unint64_t)factor
{
  v3 = [objc_alloc(objc_opt_class()) initWithWidth:-[CSSIntegralSize width](self height:{"width") * factor, -[CSSIntegralSize height](self, "height") * factor}];

  return v3;
}

- (CSSIntegralSize)rotatedSize
{
  v2 = [objc_alloc(objc_opt_class()) initWithWidth:-[CSSIntegralSize height](self height:{"height"), -[CSSIntegralSize width](self, "width")}];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    width = [(CSSIntegralSize *)self width];
    if (width == [v5 width])
    {
      height = [(CSSIntegralSize *)self height];
      v8 = height == [v5 height];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end