@interface CSSIntegralSize
+ (CSSIntegralSize)zeroSize;
- (BOOL)isEqual:(id)a3;
- (CSSIntegralSize)initWithWidth:(unint64_t)a3 height:(unint64_t)a4;
- (CSSIntegralSize)rotatedSize;
- (id)sizeScaledByFactor:(unint64_t)a3;
@end

@implementation CSSIntegralSize

+ (CSSIntegralSize)zeroSize
{
  v2 = objc_opt_new();

  return v2;
}

- (CSSIntegralSize)initWithWidth:(unint64_t)a3 height:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = CSSIntegralSize;
  result = [(CSSIntegralSize *)&v7 init];
  if (result)
  {
    result->_width = a3;
    result->_height = a4;
  }

  return result;
}

- (id)sizeScaledByFactor:(unint64_t)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithWidth:-[CSSIntegralSize width](self height:{"width") * a3, -[CSSIntegralSize height](self, "height") * a3}];

  return v3;
}

- (CSSIntegralSize)rotatedSize
{
  v2 = [objc_alloc(objc_opt_class()) initWithWidth:-[CSSIntegralSize height](self height:{"height"), -[CSSIntegralSize width](self, "width")}];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(CSSIntegralSize *)self width];
    if (v6 == [v5 width])
    {
      v7 = [(CSSIntegralSize *)self height];
      v8 = v7 == [v5 height];
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