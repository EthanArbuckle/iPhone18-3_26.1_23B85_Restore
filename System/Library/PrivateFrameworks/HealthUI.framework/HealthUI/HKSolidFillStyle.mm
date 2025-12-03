@interface HKSolidFillStyle
- (id)copyWithZone:(_NSZone *)zone;
- (void)renderPath:(CGPath *)path context:(CGContext *)context axisRect:(CGRect)rect alpha:(double)alpha;
@end

@implementation HKSolidFillStyle

- (void)renderPath:(CGPath *)path context:(CGContext *)context axisRect:(CGRect)rect alpha:(double)alpha
{
  CGContextSaveGState(context);
  CGContextAddPath(context, path);
  CGContextSetAlpha(context, alpha);
  CGContextSetBlendMode(context, kCGBlendModeNormal);
  color = [(HKSolidFillStyle *)self color];
  CGContextSetFillColorWithColor(context, [color CGColor]);

  CGContextFillPath(context);

  CGContextRestoreGState(context);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = HKSolidFillStyle;
  v4 = [(HKFillStyle *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 1, self->_color);
  return v4;
}

@end