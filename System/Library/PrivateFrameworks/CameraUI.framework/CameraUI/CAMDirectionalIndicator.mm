@interface CAMDirectionalIndicator
+ (CGSize)_circleSize;
+ (id)_createCircleImage;
- (CAMDirectionalIndicator)initWithFrame:(CGRect)a3;
- (CGSize)intrinsicContentSize;
- (id)hudItemForAccessibilityHUDManager:(id)a3;
- (void)_updateArrowColorAnimated:(BOOL)a3;
- (void)_updateArrowLineWidth;
- (void)_updateArrowShapeAnimated:(BOOL)a3;
- (void)setDirection:(int64_t)a3 animated:(BOOL)a4;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation CAMDirectionalIndicator

+ (CGSize)_circleSize
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 scale];
  v4 = 1.0 / v3;

  v5 = v4 + 27.0;
  v6 = v4 + 27.0;
  result.height = v6;
  result.width = v5;
  return result;
}

+ (id)_createCircleImage
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  [a1 _circleSize];
  v5 = v4;
  v7 = v6;
  v8 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v8 scale];
  v10 = v9;
  v16.width = v5;
  v16.height = v7;
  UIGraphicsBeginImageContextWithOptions(v16, 0, v10);

  CurrentContext = UIGraphicsGetCurrentContext();
  v12 = +[CAMFullscreenViewfinder lightControlBackgroundColor];
  [v12 setFill];
  v17.origin.x = v2;
  v17.origin.y = v3;
  v17.size.width = v5;
  v17.size.height = v7;
  CGContextFillEllipseInRect(CurrentContext, v17);
  v13 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v13;
}

- (CAMDirectionalIndicator)initWithFrame:(CGRect)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = CAMDirectionalIndicator;
  v3 = [(CAMDirectionalIndicator *)&v18 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69794A0]);
    [v4 setFillColor:0];
    [v4 setLineCap:*MEMORY[0x1E6979E80]];
    [v4 setLineJoin:*MEMORY[0x1E6979E90]];
    objc_storeStrong(&v3->__arrowLayer, v4);
    v5 = [(CAMDirectionalIndicator *)v3 layer];
    [v5 addSublayer:v4];

    v6 = [objc_opt_class() _createCircleImage];
    v7 = [v6 CGImage];
    v8 = [(CAMDirectionalIndicator *)v3 layer];
    [v8 setContents:v7];

    v9 = *MEMORY[0x1E6979DD0];
    v10 = [(CAMDirectionalIndicator *)v3 layer];
    [v10 setContentsGravity:v9];

    v11 = [(CAMDirectionalIndicator *)v3 traitCollection];
    [v11 displayScale];
    v13 = v12;
    v14 = [(CAMDirectionalIndicator *)v3 layer];
    [v14 setContentsScale:v13];

    [(CAMDirectionalIndicator *)v3 _updateArrowColorAnimated:0];
    [(CAMDirectionalIndicator *)v3 _updateArrowLineWidth];
    v19[0] = objc_opt_class();
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v16 = [(CAMDirectionalIndicator *)v3 registerForTraitChanges:v15 withAction:sel__updateArrowLineWidth];
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  v2 = objc_opt_class();

  [v2 _circleSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setDirection:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_direction != a3)
  {
    self->_direction = a3;
    [(CAMDirectionalIndicator *)self _updateArrowShapeAnimated:a4];
  }
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(CAMDirectionalIndicator *)self isSelected];
  v8.receiver = self;
  v8.super_class = CAMDirectionalIndicator;
  [(CAMDirectionalIndicator *)&v8 setSelected:v5];
  if (v7 != v5)
  {
    [(CAMDirectionalIndicator *)self _updateArrowColorAnimated:v4];
  }
}

- (void)_updateArrowShapeAnimated:(BOOL)a3
{
  v3 = a3;
  [(CAMDirectionalIndicator *)self bounds];
  UIRectGetCenter();
  CAMPixelWidthForView(self);
  CAMPixelWidthForView(self);
  [(CAMDirectionalIndicator *)self direction];
  CAMPixelWidthForView(self);
  CAMPixelWidthForView(self);
  UIRectCenteredAboutPointScale();
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  MinY = CGRectGetMinY(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  MaxY = CGRectGetMaxY(v26);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  MinX = CGRectGetMinX(v27);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  MidX = CGRectGetMidX(v28);
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  MaxX = CGRectGetMaxX(v29);
  Mutable = CGPathCreateMutable();
  v15 = [(CAMDirectionalIndicator *)self direction];
  if (v15)
  {
    if (v15 != 1)
    {
      goto LABEL_6;
    }

    v16 = MinY;
  }

  else
  {
    v16 = MaxY;
    MaxY = MinY;
  }

  CGPathMoveToPoint(Mutable, 0, MinX, v16);
  CGPathAddLineToPoint(Mutable, 0, MidX, MaxY);
  CGPathAddLineToPoint(Mutable, 0, MaxX, v16);
LABEL_6:
  v23 = [(CAMDirectionalIndicator *)self _arrowLayer];
  if (v3)
  {
    v17 = [MEMORY[0x1E6979318] animationWithKeyPath:@"path"];
    [v17 setAdditive:1];
    [v17 setFromValue:{objc_msgSend(v23, "path")}];
    [v17 setToValue:Mutable];
    LODWORD(v18) = 1045220557;
    LODWORD(v19) = 1041865114;
    LODWORD(v20) = 1.0;
    LODWORD(v21) = 1045220557;
    v22 = [MEMORY[0x1E69793D0] functionWithControlPoints:v18 :v21 :v19 :v20];
    [v17 setTimingFunction:v22];

    [v17 setDuration:0.5];
    [v23 addAnimation:v17 forKey:@"invertDirection"];
  }

  [v23 setPath:Mutable];
  CGPathRelease(Mutable);
}

- (void)_updateArrowLineWidth
{
  v3 = 2.0;
  v4 = 2.0 - CAMPixelWidthForView(self);
  v5 = [(CAMDirectionalIndicator *)self traitCollection];
  v6 = [v5 legibilityWeight];

  if (v6 != 1)
  {
    v3 = v4;
  }

  v7 = [(CAMDirectionalIndicator *)self _arrowLayer];
  [v7 setLineWidth:v3];
}

- (void)_updateArrowColorAnimated:(BOOL)a3
{
  v3 = a3;
  if (([(CAMDirectionalIndicator *)self isSelected]& 1) != 0)
  {
    CAMYellowColor();
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v5 = ;
  v6 = [v5 CGColor];

  v16 = [(CAMDirectionalIndicator *)self _arrowLayer];
  v7 = [v16 presentationLayer];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v16;
  }

  v9 = v8;

  if (v3)
  {
    v10 = [MEMORY[0x1E6979318] animationWithKeyPath:@"strokeColor"];
    [v10 setFromValue:{objc_msgSend(v9, "strokeColor")}];
    [v10 setToValue:v6];
    LODWORD(v11) = 1045220557;
    LODWORD(v12) = 1041865114;
    LODWORD(v13) = 1.0;
    LODWORD(v14) = 1045220557;
    v15 = [MEMORY[0x1E69793D0] functionWithControlPoints:v11 :v14 :v12 :v13];
    [v10 setTimingFunction:v15];

    [v10 setDuration:0.5];
    [v16 addAnimation:v10 forKey:@"selectionColor"];
  }

  [v16 setStrokeColor:v6];
}

- (id)hudItemForAccessibilityHUDManager:(id)a3
{
  v4 = [(CAMDirectionalIndicator *)self direction];
  v5 = @"chevron.down";
  if (v4 != 1)
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"chevron.up";
  }

  v7 = MEMORY[0x1E69DCAB8];
  v8 = [(CAMDirectionalIndicator *)self traitCollection];
  v9 = [v7 systemImageNamed:v6 compatibleWithTraitCollection:v8];

  v10 = objc_alloc(MEMORY[0x1E69DC618]);
  v11 = [v10 initWithTitle:0 image:v9 imageInsets:1 scaleImage:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

  return v11;
}

@end