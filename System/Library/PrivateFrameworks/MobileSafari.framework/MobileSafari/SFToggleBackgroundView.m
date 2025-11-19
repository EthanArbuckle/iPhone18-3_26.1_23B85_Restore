@interface SFToggleBackgroundView
- (id)shapeLayer;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)_shapePath;
- (void)_updateShape;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation SFToggleBackgroundView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SFToggleBackgroundView;
  [(SFToggleBackgroundView *)&v3 layoutSubviews];
  [(SFToggleBackgroundView *)self _updateShape];
}

- (void)_setContinuousCornerRadius:(double)a3
{
  [(SFToggleBackgroundView *)self _continuousCornerRadius];
  if (v5 != a3)
  {
    [(SFToggleBackgroundView *)self setNeedsLayout];
  }

  v6.receiver = self;
  v6.super_class = SFToggleBackgroundView;
  [(SFToggleBackgroundView *)&v6 _setContinuousCornerRadius:a3];
}

- (id)shapeLayer
{
  if (a1)
  {
    a1 = [a1 layer];
    v1 = vars8;
  }

  return a1;
}

- (void)_updateShape
{
  if (a1)
  {
    v8 = [(SFToggleBackgroundView *)a1 _shapePath];
    v2 = [a1 layer];
    v3 = v8;
    [v2 setPath:{objc_msgSend(v8, "CGPath")}];
    v4 = [MEMORY[0x1E6979318] animationWithKeyPath:@"path"];
    v5 = [v2 presentationLayer];
    v6 = [v5 valueForKeyPath:@"path"];
    [v4 setFromValue:v6];

    v7 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
    [v4 setTimingFunction:v7];

    [v4 setFillMode:*MEMORY[0x1E69797D8]];
    [v4 setRemovedOnCompletion:1];
    [v2 addAnimation:v4 forKey:@"path"];
  }
}

- (void)_shapePath
{
  v1 = a1;
  if (a1)
  {
    [a1 bounds];
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      v24.origin.x = OUTLINED_FUNCTION_0_2();
      CGRectGetHeight(v24);
      v2 = OUTLINED_FUNCTION_0_2();
      v1 = [v3 bezierPathWithRoundedRect:v2 cornerRadius:?];
    }

    else
    {
      v4 = v1[53] == 0;
      v5 = [v1 _sf_usesLeftToRightLayout];
      [v1 _continuousCornerRadius];
      v7 = *(MEMORY[0x1E695F060] + 8);
      if ((v4 | v5))
      {
        v8 = v6;
      }

      else
      {
        v8 = *(MEMORY[0x1E695F060] + 8);
      }

      if ((v4 | v5))
      {
        v9 = v6;
      }

      else
      {
        v9 = *MEMORY[0x1E695F060];
      }

      v19 = v8;
      v20 = v9;
      if (v4 || (v5 & 1) == 0)
      {
        v7 = v6;
      }

      else
      {
        v6 = *MEMORY[0x1E695F060];
      }

      v21 = v6;
      v22 = v7;
      v25.origin.x = OUTLINED_FUNCTION_0_2();
      MinX = CGRectGetMinX(v25);
      v26.origin.x = OUTLINED_FUNCTION_0_2();
      MinY = CGRectGetMinY(v26);
      v27.origin.x = OUTLINED_FUNCTION_0_2();
      MaxX = CGRectGetMaxX(v27);
      v28.origin.x = OUTLINED_FUNCTION_0_2();
      v12 = CGRectGetMinY(v28);
      v29.origin.x = OUTLINED_FUNCTION_0_2();
      v17 = CGRectGetMaxX(v29);
      v30.origin.x = OUTLINED_FUNCTION_0_2();
      MaxY = CGRectGetMaxY(v30);
      v31.origin.x = OUTLINED_FUNCTION_0_2();
      v18 = CGRectGetMinX(v31);
      v32.origin.x = OUTLINED_FUNCTION_0_2();
      v14 = CGRectGetMaxY(v32);
      v1 = [MEMORY[0x1E69DC728] bezierPath];
      [v1 moveToPoint:{MinX, MinY + v19 * 1.528665}];
      [v1 _addRoundedCornerWithTrueCorner:1 radius:0 corner:MinX clockwise:{MinY, v20, v19}];
      [v1 addLineToPoint:{MaxX - v21 * 1.528665, v12}];
      [v1 _addRoundedCornerWithTrueCorner:2 radius:0 corner:MaxX clockwise:{v12, v21, v22}];
      [v1 addLineToPoint:{v17, MaxY - v22 * 1.528665}];
      [v1 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v17 clockwise:{MaxY, v21, v22}];
      [v1 addLineToPoint:{v18 + v20 * 1.528665, v14}];
      [v1 _addRoundedCornerWithTrueCorner:4 radius:0 corner:v18 clockwise:{v14, v20, v19}];
      [v1 closePath];
    }
  }

  return v1;
}

- (void)tintColorDidChange
{
  v6.receiver = self;
  v6.super_class = SFToggleBackgroundView;
  [(SFToggleBackgroundView *)&v6 tintColorDidChange];
  v3 = [(SFToggleBackgroundView *)self tintColor];
  v4 = [v3 CGColor];
  v5 = [(SFToggleBackgroundView *)self shapeLayer];
  [v5 setFillColor:v4];
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v6.receiver = self;
  v6.super_class = SFToggleBackgroundView;
  [(SFToggleBackgroundView *)&v6 _dynamicUserInterfaceTraitDidChange];
  v3 = [(SFToggleBackgroundView *)self tintColor];
  v4 = [v3 CGColor];
  v5 = [(SFToggleBackgroundView *)self shapeLayer];
  [v5 setFillColor:v4];
}

@end