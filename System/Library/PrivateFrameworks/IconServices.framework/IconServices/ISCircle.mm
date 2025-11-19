@interface ISCircle
- (ISCircle)init;
- (id)imageForSize:(CGSize)a3 scale:(double)a4;
@end

@implementation ISCircle

- (ISCircle)init
{
  v3.receiver = self;
  v3.super_class = ISCircle;
  return [(ISShapeCompositorResource *)&v3 _init];
}

- (id)imageForSize:(CGSize)a3 scale:(double)a4
{
  v5 = ceil(a3.width);
  v6 = ceil(a3.height);
  v7 = [MEMORY[0x1E69A8978] bitmapContextWithSize:0 scale:v5 preset:{v6, a4}];
  [v7 clear];
  v8 = [(ISShapeCompositorResource *)self fillColor];
  [v7 setFillColor:v8];

  v9 = [(ISShapeCompositorResource *)self lineColor];
  [v7 setStrokeColor:v9];

  [(ISShapeCompositorResource *)self lineWidth];
  [v7 setLineWidth:?];
  v10 = [(ISShapeCompositorResource *)self lineColor];

  if (v10)
  {
    [(ISShapeCompositorResource *)self lineWidth];
    v12 = v11 * 0.5;
    [(ISShapeCompositorResource *)self lineWidth];
    v14 = v13 * 0.5;
    v23.origin.x = 0.0;
    v23.origin.y = 0.0;
    v23.size.width = v5;
    v23.size.height = v6;
    v24 = CGRectInset(v23, v12, v14);
    v15 = CGPathCreateWithEllipseInRect(v24, 0);
    if (v15)
    {
      v16 = v15;
      [v7 strokePath:v15];
      CFRelease(v16);
    }
  }

  v17 = [(ISShapeCompositorResource *)self fillColor];

  if (v17)
  {
    v25.origin.x = 0.0;
    v25.origin.y = 0.0;
    v25.size.width = v5;
    v25.size.height = v6;
    v18 = CGPathCreateWithEllipseInRect(v25, 0);
    if (v18)
    {
      v19 = v18;
      [v7 fillPath:v18];
      CFRelease(v19);
    }
  }

  v20 = [v7 image];

  return v20;
}

@end