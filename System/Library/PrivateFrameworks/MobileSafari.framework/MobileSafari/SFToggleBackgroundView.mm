@interface SFToggleBackgroundView
- (id)shapeLayer;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_setContinuousCornerRadius:(double)radius;
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

- (void)_setContinuousCornerRadius:(double)radius
{
  [(SFToggleBackgroundView *)self _continuousCornerRadius];
  if (v5 != radius)
  {
    [(SFToggleBackgroundView *)self setNeedsLayout];
  }

  v6.receiver = self;
  v6.super_class = SFToggleBackgroundView;
  [(SFToggleBackgroundView *)&v6 _setContinuousCornerRadius:radius];
}

- (id)shapeLayer
{
  if (self)
  {
    self = [self layer];
    v1 = vars8;
  }

  return self;
}

- (void)_updateShape
{
  if (self)
  {
    _shapePath = [(SFToggleBackgroundView *)self _shapePath];
    layer = [self layer];
    v3 = _shapePath;
    [layer setPath:{objc_msgSend(_shapePath, "CGPath")}];
    v4 = [MEMORY[0x1E6979318] animationWithKeyPath:@"path"];
    presentationLayer = [layer presentationLayer];
    v6 = [presentationLayer valueForKeyPath:@"path"];
    [v4 setFromValue:v6];

    v7 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
    [v4 setTimingFunction:v7];

    [v4 setFillMode:*MEMORY[0x1E69797D8]];
    [v4 setRemovedOnCompletion:1];
    [layer addAnimation:v4 forKey:@"path"];
  }
}

- (void)_shapePath
{
  selfCopy = self;
  if (self)
  {
    [self bounds];
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      v24.origin.x = OUTLINED_FUNCTION_0_2();
      CGRectGetHeight(v24);
      v2 = OUTLINED_FUNCTION_0_2();
      selfCopy = [v3 bezierPathWithRoundedRect:v2 cornerRadius:?];
    }

    else
    {
      v4 = selfCopy[53] == 0;
      _sf_usesLeftToRightLayout = [selfCopy _sf_usesLeftToRightLayout];
      [selfCopy _continuousCornerRadius];
      v7 = *(MEMORY[0x1E695F060] + 8);
      if ((v4 | _sf_usesLeftToRightLayout))
      {
        v8 = v6;
      }

      else
      {
        v8 = *(MEMORY[0x1E695F060] + 8);
      }

      if ((v4 | _sf_usesLeftToRightLayout))
      {
        v9 = v6;
      }

      else
      {
        v9 = *MEMORY[0x1E695F060];
      }

      v19 = v8;
      v20 = v9;
      if (v4 || (_sf_usesLeftToRightLayout & 1) == 0)
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
      selfCopy = [MEMORY[0x1E69DC728] bezierPath];
      [selfCopy moveToPoint:{MinX, MinY + v19 * 1.528665}];
      [selfCopy _addRoundedCornerWithTrueCorner:1 radius:0 corner:MinX clockwise:{MinY, v20, v19}];
      [selfCopy addLineToPoint:{MaxX - v21 * 1.528665, v12}];
      [selfCopy _addRoundedCornerWithTrueCorner:2 radius:0 corner:MaxX clockwise:{v12, v21, v22}];
      [selfCopy addLineToPoint:{v17, MaxY - v22 * 1.528665}];
      [selfCopy _addRoundedCornerWithTrueCorner:8 radius:0 corner:v17 clockwise:{MaxY, v21, v22}];
      [selfCopy addLineToPoint:{v18 + v20 * 1.528665, v14}];
      [selfCopy _addRoundedCornerWithTrueCorner:4 radius:0 corner:v18 clockwise:{v14, v20, v19}];
      [selfCopy closePath];
    }
  }

  return selfCopy;
}

- (void)tintColorDidChange
{
  v6.receiver = self;
  v6.super_class = SFToggleBackgroundView;
  [(SFToggleBackgroundView *)&v6 tintColorDidChange];
  tintColor = [(SFToggleBackgroundView *)self tintColor];
  cGColor = [tintColor CGColor];
  shapeLayer = [(SFToggleBackgroundView *)self shapeLayer];
  [shapeLayer setFillColor:cGColor];
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v6.receiver = self;
  v6.super_class = SFToggleBackgroundView;
  [(SFToggleBackgroundView *)&v6 _dynamicUserInterfaceTraitDidChange];
  tintColor = [(SFToggleBackgroundView *)self tintColor];
  cGColor = [tintColor CGColor];
  shapeLayer = [(SFToggleBackgroundView *)self shapeLayer];
  [shapeLayer setFillColor:cGColor];
}

@end