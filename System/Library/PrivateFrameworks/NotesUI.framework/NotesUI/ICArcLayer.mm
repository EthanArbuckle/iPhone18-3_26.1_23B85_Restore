@interface ICArcLayer
- (void)drawInContext:(CGContext *)context;
@end

@implementation ICArcLayer

- (void)drawInContext:(CGContext *)context
{
  [(ICArcLayer *)self bounds];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  v9 = CGRectGetWidth(v20) * 0.5;
  [(ICCircleLayer *)self strokeWidth];
  v11 = v9 - v10;
  CGContextGetCTM(&v19, context);
  CGContextScaleCTM(context, 1.0, -1.0);
  [(ICArcLayer *)self bounds];
  CGContextTranslateCTM(context, 0.0, -v12);
  CGContextSetLineCap(context, kCGLineCapRound);
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
  CGContextAddArc(context, MidX, MidY, v11, v16, v17, [(ICArcLayer *)self drawClockwise]);
  [(ICCircleLayer *)self strokeWidth];
  CGContextSetLineWidth(context, v18);
  CGContextSetStrokeColorWithColor(context, [(ICCircleLayer *)self strokeColor]);
  CGContextStrokePath(context);
}

@end