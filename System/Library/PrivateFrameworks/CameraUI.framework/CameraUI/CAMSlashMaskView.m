@interface CAMSlashMaskView
- (CAMSlashMaskView)initWithFrame:(CGRect)a3;
- (CGRect)slashBounds;
- (void)_updateShapeLayerAnimated:(BOOL)a3;
- (void)setSlashBounds:(CGRect)a3 animated:(BOOL)a4;
@end

@implementation CAMSlashMaskView

- (CAMSlashMaskView)initWithFrame:(CGRect)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = CAMSlashMaskView;
  v3 = [(CAMSlashMaskView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(CAMSlashMaskView *)v3 _shapeLayer];
    v6 = [MEMORY[0x1E69DC888] whiteColor];
    [v5 setFillColor:{objc_msgSend(v6, "CGColor")}];

    [v5 setFillRule:*MEMORY[0x1E69797F8]];
    v11[0] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v8 = [(CAMSlashMaskView *)v4 registerForTraitChanges:v7 withAction:sel__legibilityWeightChanged];
  }

  return v4;
}

- (void)setSlashBounds:(CGRect)a3 animated:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_slashBounds = &self->_slashBounds;
  if (!CGRectEqualToRect(a3, self->_slashBounds))
  {
    p_slashBounds->origin.x = x;
    p_slashBounds->origin.y = y;
    p_slashBounds->size.width = width;
    p_slashBounds->size.height = height;

    [(CAMSlashMaskView *)self _updateShapeLayerAnimated:v4];
  }
}

- (void)_updateShapeLayerAnimated:(BOOL)a3
{
  v36 = [(CAMSlashMaskView *)self _shapeLayer];
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
  v19 = [(CAMSlashMaskView *)self traitCollection];
  v20 = [v19 legibilityWeight];

  if (v20 == 1)
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
  v22 = [v36 animationForKey:@"slashMask"];
  v27 = v22;
  if (a3 || v22)
  {
    LODWORD(v23) = 1045220557;
    LODWORD(v25) = 1041865114;
    LODWORD(v26) = 1.0;
    LODWORD(v24) = 1045220557;
    v28 = [MEMORY[0x1E69793D0] functionWithControlPoints:v23 :v24 :v25 :v26];
    v29 = [v36 presentationLayer];
    v30 = v29;
    if (!v29)
    {
      if (v27)
      {
        v31 = [v27 fromValue];
        goto LABEL_10;
      }

      v29 = v36;
    }

    v31 = [v29 path];
LABEL_10:
    v32 = v31;
    v33 = [MEMORY[0x1E6979318] animationWithKeyPath:@"path"];
    [v33 setFromValue:v32];
    [v33 setToValue:{objc_msgSend(v18, "CGPath")}];
    [v33 setTimingFunction:v28];
    [v33 setDuration:0.4];
    [v36 addAnimation:v33 forKey:@"slashMask"];
  }

  [v36 setPath:{objc_msgSend(v18, "CGPath")}];
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