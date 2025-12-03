@interface ISContinuousRoundedRect
- (ISContinuousRoundedRect)init;
- (double)_cornerRadiusForSize:(CGSize)size;
- (id)imageForSize:(CGSize)size scale:(double)scale;
@end

@implementation ISContinuousRoundedRect

- (ISContinuousRoundedRect)init
{
  v3.receiver = self;
  v3.super_class = ISContinuousRoundedRect;
  return [(ISShapeCompositorResource *)&v3 _init];
}

- (double)_cornerRadiusForSize:(CGSize)size
{
  if (size.width >= size.height)
  {
    size.width = size.height;
  }

  return size.width * 0.225;
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

  if (!lineColor2)
  {
    goto LABEL_12;
  }

  [(ISContinuousRoundedRect *)self _cornerRadiusForSize:v5, v6];
  ContinuousRoundedRectCornerRadius = _CGPathCreateContinuousRoundedRectCornerRadius(0.0, 0.0, v5, v6, v11);
  [(ISShapeCompositorResource *)self lineWidth];
  v14 = v13;
  [(ISShapeCompositorResource *)self lineWidth];
  v16 = v15;
  v33.origin.x = 0.0;
  v33.origin.y = 0.0;
  v33.size.width = v5;
  v33.size.height = v6;
  v34 = CGRectInset(v33, v14, v16);
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  [(ISContinuousRoundedRect *)self _cornerRadiusForSize:v34.size.width, v34.size.height];
  v22 = _CGPathCreateContinuousRoundedRectCornerRadius(x, y, width, height, v21);
  Mutable = CGPathCreateMutable();
  CGPathAddPath(Mutable, 0, ContinuousRoundedRectCornerRadius);
  CGPathAddPath(Mutable, 0, v22);
  if (ContinuousRoundedRectCornerRadius && v22 && Mutable)
  {
    [v7 pushState];
    CGContextAddPath([v7 cgContext], Mutable);
    cgContext = [v7 cgContext];
    lineColor3 = [(ISShapeCompositorResource *)self lineColor];
    CGContextSetFillColorWithColor(cgContext, [lineColor3 cgColor]);

    CGContextEOFillPath([v7 cgContext]);
    [v7 popState];
LABEL_7:
    CGPathRelease(ContinuousRoundedRectCornerRadius);
    goto LABEL_8;
  }

  if (ContinuousRoundedRectCornerRadius)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (v22)
  {
    CGPathRelease(v22);
  }

  if (Mutable)
  {
    CGPathRelease(Mutable);
  }

LABEL_12:
  fillColor2 = [(ISShapeCompositorResource *)self fillColor];

  if (fillColor2)
  {
    [(ISContinuousRoundedRect *)self _cornerRadiusForSize:v5, v6];
    v28 = _CGPathCreateContinuousRoundedRectCornerRadius(0.0, 0.0, v5, v6, v27);
    if (v28)
    {
      v29 = v28;
      [v7 fillPath:v28];
      CFRelease(v29);
    }
  }

  image = [v7 image];

  return image;
}

@end