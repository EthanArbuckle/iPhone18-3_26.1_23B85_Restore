@interface CAMSlashMaskView
- (CAMSlashMaskView)initWithFrame:(CGRect)frame;
- (CGRect)slashBounds;
- (void)_updateShapeLayerAnimated:(BOOL)animated;
- (void)setSlashBounds:(CGRect)bounds animated:(BOOL)animated;
@end

@implementation CAMSlashMaskView

- (CAMSlashMaskView)initWithFrame:(CGRect)frame
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = CAMSlashMaskView;
  v3 = [(CAMSlashMaskView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    _shapeLayer = [(CAMSlashMaskView *)v3 _shapeLayer];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [_shapeLayer setFillColor:{objc_msgSend(whiteColor, "CGColor")}];

    [_shapeLayer setFillRule:*MEMORY[0x1E69797F8]];
    v11[0] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v8 = [(CAMSlashMaskView *)v4 registerForTraitChanges:v7 withAction:sel__legibilityWeightChanged];
  }

  return v4;
}

- (void)setSlashBounds:(CGRect)bounds animated:(BOOL)animated
{
  animatedCopy = animated;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  p_slashBounds = &self->_slashBounds;
  if (!CGRectEqualToRect(bounds, self->_slashBounds))
  {
    p_slashBounds->origin.x = x;
    p_slashBounds->origin.y = y;
    p_slashBounds->size.width = width;
    p_slashBounds->size.height = height;

    [(CAMSlashMaskView *)self _updateShapeLayerAnimated:animatedCopy];
  }
}

- (void)_updateShapeLayerAnimated:(BOOL)animated
{
  _shapeLayer = [(CAMSlashMaskView *)self _shapeLayer];
  [(CAMSlashMaskView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(CAMSlashMaskView *)self slashBounds];
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;
  MaxX = CGRectGetMaxX(v38);
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  MaxY = CGRectGetMaxY(v39);
  v18 = [MEMORY[0x1E69DC728] bezierPathWithRect:{v6, v8, v10, v12}];
  traitCollection = [(CAMSlashMaskView *)self traitCollection];
  legibilityWeight = [traitCollection legibilityWeight];

  if (legibilityWeight == 1)
  {
    v21 = 2.0;
  }

  else
  {
    v21 = 1.2;
  }

  [v18 moveToPoint:{x - v21, y + v21, *&MaxX}];
  [v18 addLineToPoint:{x + v21, y - v21}];
  [v18 addLineToPoint:{v35 + v21, MaxY - v21}];
  [v18 addLineToPoint:{v35 - v21, MaxY + v21}];
  v22 = [_shapeLayer animationForKey:@"slashMask"];
  v27 = v22;
  if (animated || v22)
  {
    LODWORD(v23) = 1045220557;
    LODWORD(v25) = 1041865114;
    LODWORD(v26) = 1.0;
    LODWORD(v24) = 1045220557;
    v28 = [MEMORY[0x1E69793D0] functionWithControlPoints:v23 :v24 :v25 :v26];
    presentationLayer = [_shapeLayer presentationLayer];
    v30 = presentationLayer;
    if (!presentationLayer)
    {
      if (v27)
      {
        fromValue = [v27 fromValue];
        goto LABEL_10;
      }

      presentationLayer = _shapeLayer;
    }

    fromValue = [presentationLayer path];
LABEL_10:
    v32 = fromValue;
    v33 = [MEMORY[0x1E6979318] animationWithKeyPath:@"path"];
    [v33 setFromValue:v32];
    [v33 setToValue:{objc_msgSend(v18, "CGPath")}];
    [v33 setTimingFunction:v28];
    [v33 setDuration:0.4];
    [_shapeLayer addAnimation:v33 forKey:@"slashMask"];
  }

  [_shapeLayer setPath:{objc_msgSend(v18, "CGPath")}];
}

- (CGRect)slashBounds
{
  x = self->_slashBounds.origin.x;
  y = self->_slashBounds.origin.y;
  width = self->_slashBounds.size.width;
  height = self->_slashBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end