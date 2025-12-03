@interface CAShapeLayer(HealthUI)
+ (id)horizontalLineLayerWithLength:()HealthUI lineWidth:;
+ (id)verticalLineLayerWithLength:()HealthUI lineWidth:;
@end

@implementation CAShapeLayer(HealthUI)

+ (id)horizontalLineLayerWithLength:()HealthUI lineWidth:
{
  v5 = objc_alloc_init(self);
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, 0.0, a3 * -0.5);
  CGPathAddLineToPoint(Mutable, 0, a2, a3 * -0.5);
  [v5 setPath:Mutable];
  CGPathRelease(Mutable);
  [v5 setLineWidth:a3];

  return v5;
}

+ (id)verticalLineLayerWithLength:()HealthUI lineWidth:
{
  v5 = objc_alloc_init(self);
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, a3 * -0.5, -a3);
  CGPathAddLineToPoint(Mutable, 0, a3 * -0.5, a2);
  [v5 setPath:Mutable];
  CGPathRelease(Mutable);
  [v5 setLineWidth:a3];

  return v5;
}

@end