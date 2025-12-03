@interface CUIDesignColor
- (CUIDesignColor)initWithColor:(CGColor *)color blendMode:(int)mode displayGamut:(int64_t)gamut;
- (void)dealloc;
@end

@implementation CUIDesignColor

- (CUIDesignColor)initWithColor:(CGColor *)color blendMode:(int)mode displayGamut:(int64_t)gamut
{
  if (!color)
  {
    return 0;
  }

  v10.receiver = self;
  v10.super_class = CUIDesignColor;
  v8 = [(CUIDesignColor *)&v10 init];
  if (v8)
  {
    v8->_cgColor = CGColorRetain(color);
    v8->_blendMode = mode;
    v8->_displayGamut = gamut;
  }

  return v8;
}

- (void)dealloc
{
  cgColor = self->_cgColor;
  if (cgColor)
  {
    CGColorRelease(cgColor);
  }

  v4.receiver = self;
  v4.super_class = CUIDesignColor;
  [(CUIDesignColor *)&v4 dealloc];
}

@end