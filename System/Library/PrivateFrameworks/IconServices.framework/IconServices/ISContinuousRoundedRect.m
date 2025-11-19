@interface ISContinuousRoundedRect
- (ISContinuousRoundedRect)init;
- (double)_cornerRadiusForSize:(CGSize)a3;
- (id)imageForSize:(CGSize)a3 scale:(double)a4;
@end

@implementation ISContinuousRoundedRect

- (ISContinuousRoundedRect)init
{
  v3.receiver = self;
  v3.super_class = ISContinuousRoundedRect;
  return [(ISShapeCompositorResource *)&v3 _init];
}

- (double)_cornerRadiusForSize:(CGSize)a3
{
  if (a3.width >= a3.height)
  {
    a3.width = a3.height;
  }

  return a3.width * 0.225;
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

  if (!v10)
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
    v24 = [v7 cgContext];
    v25 = [(ISShapeCompositorResource *)self lineColor];
    CGContextSetFillColorWithColor(v24, [v25 cgColor]);

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
  v26 = [(ISShapeCompositorResource *)self fillColor];

  if (v26)
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

  v30 = [v7 image];

  return v30;
}

@end