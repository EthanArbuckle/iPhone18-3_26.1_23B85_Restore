@interface ICArcLayer
- (void)drawInContext:(CGContext *)a3;
@end

@implementation ICArcLayer

- (void)drawInContext:(CGContext *)a3
{
  [(ICArcLayer *)self bounds];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  v9 = CGRectGetWidth(v20) * 0.5;
  [(ICCircleLayer *)self strokeWidth];
  v11 = v9 - v10;
  CGContextGetCTM(&v19, a3);
  CGContextScaleCTM(a3, 1.0, -1.0);
  [(ICArcLayer *)self bounds];
  CGContextTranslateCTM(a3, 0.0, -v12);
  CGContextSetLineCap(a3, kCGLineCapRound);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  MidX = CGRectGetMidX(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  MidY = CGRectGetMidY(v22);
  [(ICArcLayer *)self startAngle];
  v16 = v15;
  [(ICArcLayer *)self endAngle];
  CGContextAddArc(a3, MidX, MidY, v11, v16, v17, [(ICArcLayer *)self drawClockwise]);
  [(ICCircleLayer *)self strokeWidth];
  CGContextSetLineWidth(a3, v18);
  CGContextSetStrokeColorWithColor(a3, [(ICCircleLayer *)self strokeColor]);
  CGContextStrokePath(a3);
}

@end