@interface HKFillStyle
- (id)copyWithZone:(_NSZone *)zone;
- (void)renderPath:(CGPath *)path context:(CGContext *)context axisRect:(CGRect)rect alpha:(double)alpha;
@end

@implementation HKFillStyle

- (void)renderPath:(CGPath *)path context:(CGContext *)context axisRect:(CGRect)rect alpha:(double)alpha
{
  CGContextSaveGState(context);
  CGContextAddPath(context, path);
  CGContextSetAlpha(context, alpha);
  CGContextSetBlendMode(context, kCGBlendModeNormal);
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  CGContextSetFillColorWithColor(context, [blackColor CGColor]);

  CGContextFillPath(context);

  CGContextRestoreGState(context);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

  return [v3 init];
}

@end