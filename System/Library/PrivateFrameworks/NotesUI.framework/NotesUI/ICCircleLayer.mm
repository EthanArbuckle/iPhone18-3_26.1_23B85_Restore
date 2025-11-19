@interface ICCircleLayer
- (void)drawInContext:(CGContext *)a3;
@end

@implementation ICCircleLayer

- (void)drawInContext:(CGContext *)a3
{
  [(ICCircleLayer *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(ICCircleLayer *)self strokeWidth];
  v14 = v13;
  [(ICCircleLayer *)self strokeWidth];
  v16 = v15;
  v28.origin.x = v6;
  v28.origin.y = v8;
  v28.size.width = v10;
  v28.size.height = v12;
  v29 = CGRectInset(v28, v14, v16);
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  [(ICCircleLayer *)self strokeWidth];
  if (v21 > 0.0 && [(ICCircleLayer *)self strokeColor])
  {
    [(ICCircleLayer *)self strokeWidth];
    CGContextSetLineWidth(a3, v22);
    CGContextSetStrokeColorWithColor(a3, [(ICCircleLayer *)self strokeColor]);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    CGContextStrokeEllipseInRect(a3, v30);
  }

  if ([(ICCircleLayer *)self fillColor])
  {
    CGContextSetFillColorWithColor(a3, [(ICCircleLayer *)self fillColor]);
    v23 = x;
    v24 = y;
    v25 = width;
    v26 = height;

    CGContextFillEllipseInRect(a3, *&v23);
  }
}

@end