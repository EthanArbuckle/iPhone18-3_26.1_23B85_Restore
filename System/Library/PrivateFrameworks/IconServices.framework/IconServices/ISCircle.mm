@interface ISCircle
- (ISCircle)init;
- (id)imageForSize:(CGSize)size scale:(double)scale;
@end

@implementation ISCircle

- (ISCircle)init
{
  v3.receiver = self;
  v3.super_class = ISCircle;
  return [(ISShapeCompositorResource *)&v3 _init];
}

- (id)imageForSize:(CGSize)size scale:(double)scale
{
  v5 = ceil(size.width);
  v6 = ceil(size.height);
  v7 = [MEMORY[0x1E69A8978] bitmapContextWithSize:0 scale:v5 preset:{v6, scale}];
  [v7 clear];
  fillColor = [(ISShapeCompositorResource *)self fillColor];
  [v7 setFillColor:fillColor];

  lineColor = [(ISShapeCompositorResource *)self lineColor];
  [v7 setStrokeColor:lineColor];

  [(ISShapeCompositorResource *)self lineWidth];
  [v7 setLineWidth:?];
  lineColor2 = [(ISShapeCompositorResource *)self lineColor];

  if (lineColor2)
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

  fillColor2 = [(ISShapeCompositorResource *)self fillColor];

  if (fillColor2)
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

  image = [v7 image];

  return image;
}

@end