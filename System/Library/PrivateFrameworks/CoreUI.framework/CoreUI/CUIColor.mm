@interface CUIColor
+ (id)colorWithCGColor:(CGColor *)color;
- (CUIColor)initWithCGColor:(CGColor *)color;
- (id)colorUsingCGColorSpace:(CGColorSpace *)space;
- (id)description;
- (void)dealloc;
@end

@implementation CUIColor

+ (id)colorWithCGColor:(CGColor *)color
{
  v3 = [[self alloc] initWithCGColor:color];

  return v3;
}

- (CUIColor)initWithCGColor:(CGColor *)color
{
  v6.receiver = self;
  v6.super_class = CUIColor;
  v4 = [(CUIColor *)&v6 init];
  if (v4)
  {
    v4->_cgColor = CGColorRetain(color);
  }

  return v4;
}

- (void)dealloc
{
  CGColorRelease(self->_cgColor);
  v3.receiver = self;
  v3.super_class = CUIColor;
  [(CUIColor *)&v3 dealloc];
}

- (id)description
{
  v3 = CFCopyDescription(self->_cgColor);
  if (v3)
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = [NSString stringWithFormat:@"<%@: %@>", NSStringFromClass(v5), v4];
    CFRelease(v4);
    return v6;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CUIColor;
    return [(CUIColor *)&v8 description];
  }
}

- (id)colorUsingCGColorSpace:(CGColorSpace *)space
{
  v3 = MEMORY[0x193AC52E0](space, 0);
  if (v3)
  {
    v4 = CGColorTransformConvertColor();
    CGColorTransformRelease();
    if (v4)
    {
      v3 = [CUIColor colorWithCGColor:v4];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  CGColorRelease(v4);
  return v3;
}

@end