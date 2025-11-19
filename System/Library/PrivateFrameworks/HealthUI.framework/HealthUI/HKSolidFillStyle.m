@interface HKSolidFillStyle
- (id)copyWithZone:(_NSZone *)a3;
- (void)renderPath:(CGPath *)a3 context:(CGContext *)a4 axisRect:(CGRect)a5 alpha:(double)a6;
@end

@implementation HKSolidFillStyle

- (void)renderPath:(CGPath *)a3 context:(CGContext *)a4 axisRect:(CGRect)a5 alpha:(double)a6
{
  CGContextSaveGState(a4);
  CGContextAddPath(a4, a3);
  CGContextSetAlpha(a4, a6);
  CGContextSetBlendMode(a4, kCGBlendModeNormal);
  v10 = [(HKSolidFillStyle *)self color];
  CGContextSetFillColorWithColor(a4, [v10 CGColor]);

  CGContextFillPath(a4);

  CGContextRestoreGState(a4);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = HKSolidFillStyle;
  v4 = [(HKFillStyle *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 1, self->_color);
  return v4;
}

@end