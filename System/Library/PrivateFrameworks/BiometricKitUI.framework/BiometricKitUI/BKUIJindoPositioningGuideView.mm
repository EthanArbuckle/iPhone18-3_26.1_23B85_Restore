@interface BKUIJindoPositioningGuideView
- (double)_edgeDistanceHeightDifference;
- (double)_squareLayoutOpenValue;
- (id)_roundedRectMaskForMaskDistance:(double)a3 portalCenter:(CGPoint)a4 cornerRadius:(double)a5;
- (void)_startAnimationWithDuration:(double)a3 completion:(id)a4;
- (void)_updateChildrenValuesForDisplayTickProgress:(double)a3;
- (void)_updateTargetValuesForAnimation:(int64_t)a3 animationCurve:(int64_t)a4;
- (void)drawRect:(CGRect)a3;
- (void)resetValuesToStart;
@end

@implementation BKUIJindoPositioningGuideView

- (void)resetValuesToStart
{
  [(BKUIPearlPositioningGuideView *)self setLineWidth:4.33333333];
  [(BKUIJindoPositioningGuideView *)self _squareLayoutOpenValue];
  [(BKUIPearlPositioningGuideView *)self setEdgeDistance:?];
  [(BKUIJindoPositioningGuideView *)self _squareLayoutOpenValue];
  [(BKUIPearlPositioningGuideView *)self setTargetEdgeDistance:?];
  [(BKUIJindoPositioningGuideView *)self _edgeDistanceHeightDifference];
  [(BKUIJindoPositioningGuideView *)self setLineYpositionDifference:?];
  [(BKUIPearlPositioningGuideView *)self setCornerRadius:17.6666667];
  [(BKUIPearlPositioningGuideView *)self setPostCornerLength:19.0];
  [(BKUIPearlPositioningGuideView *)self setLineAlpha:0.0];
  [(BKUIJindoPositioningGuideView *)self center];
  [(BKUIPearlPositioningGuideView *)self setPortalCenter:?];

  [(BKUIJindoPositioningGuideView *)self setNeedsDisplay];
}

- (void)drawRect:(CGRect)a3
{
  [(BKUIPearlPositioningGuideView *)self portalCenter:a3.origin.x];
  v5 = v4;
  v35 = v4;
  v7 = v6;
  v40 = [MEMORY[0x277D75208] bezierPath];
  [(BKUIPearlPositioningGuideView *)self edgeDistance];
  v9 = v8;
  [(BKUIPearlPositioningGuideView *)self cornerRadius];
  v11 = v10;
  [(BKUIPearlPositioningGuideView *)self postCornerLength];
  v13 = v12;
  [(BKUIJindoPositioningGuideView *)self lineYpositionDifference];
  v15 = v14;
  [(BKUIPearlPositioningGuideView *)self lineWidth];
  v38 = v5 + v9;
  v39 = v16;
  v17 = v7;
  v34 = v7;
  [v40 moveToPoint:{v38, v7 + v9 - v11 - v13 + v15}];
  v18 = v13 + v7 + v9 - v11 - v13 + v15;
  [v40 addLineToPoint:{v38, v18}];
  [v40 addArcWithCenter:1 radius:v38 - v11 startAngle:v18 endAngle:v11 clockwise:0.0];
  v19 = v17 + v9;
  v20 = v17 + v9 + v15;
  v37 = v38 - v11 - v13;
  [v40 addLineToPoint:?];
  v21 = v35 - v9;
  v22 = v35 - v9 + v11;
  v36 = v22 + v13;
  [v40 moveToPoint:?];
  [v40 addLineToPoint:{v22, v20}];
  v23 = v19 - v11;
  [v40 addArcWithCenter:1 radius:v22 startAngle:v23 + v15 endAngle:v11 clockwise:{1.57079633, 3.14159265}];
  [v40 addLineToPoint:{v21, v23 - v13 + v15}];
  v24 = v34 - v9;
  v25 = v34 - v9 + v11;
  v26 = v25 + v13 - v15;
  [v40 moveToPoint:{v21, v26}];
  v27 = v25 - v15;
  [v40 addLineToPoint:{v21, v27}];
  [v40 addArcWithCenter:1 radius:v22 startAngle:v27 endAngle:v11 clockwise:{3.14159265, 4.71238898}];
  [v40 addLineToPoint:{v36, v24 - v15}];
  [v40 moveToPoint:{v37, v24 - v15}];
  [v40 addLineToPoint:{v38 - v11, v24 - v15}];
  [v40 addArcWithCenter:1 radius:v38 - v11 startAngle:v27 endAngle:v11 clockwise:{4.71238898, 0.0}];
  [v40 addLineToPoint:{v38, v26}];
  [v40 setLineCapStyle:1];
  [v40 setLineWidth:v39 + 1.0];
  v28 = MEMORY[0x277D75348];
  [(BKUIPearlPositioningGuideView *)self lineAlpha];
  v30 = [v28 colorWithWhite:0.0 alpha:v29 * 0.25];
  [v30 setStroke];

  [v40 stroke];
  [v40 setLineWidth:v39];
  v31 = MEMORY[0x277D75348];
  [(BKUIPearlPositioningGuideView *)self lineAlpha];
  v33 = [v31 colorWithWhite:1.0 alpha:v32];
  [v33 setStroke];

  [v40 stroke];
}

- (double)_squareLayoutOpenValue
{
  v3 = +[BKUIDevice sharedInstance];
  v4 = [v3 isZoomEnabled];

  if (v4)
  {
    v5 = +[BKUIDevice sharedInstance];
    v6 = [v5 mainScreenClass];

    if (v6 == 39)
    {
      v7 = 45.0;
    }

    else
    {
      v10 = +[BKUIDevice sharedInstance];
      if ([v10 mainScreenClass] == 31)
      {
        v11 = 40;
      }

      else
      {
        v11 = 30;
      }

      v7 = v11;
    }

    [(BKUIJindoPositioningGuideView *)self bounds];
    v9 = v12 + v7 * -2.0;
  }

  else
  {
    [(BKUIJindoPositioningGuideView *)self bounds];
    v9 = v8 + -90.0;
  }

  return v9 * 0.5;
}

- (double)_edgeDistanceHeightDifference
{
  v2 = +[BKUIDevice sharedInstance];
  v3 = [v2 mainScreenClass];

  if (v3 != 31)
  {
    return 26.5;
  }

  v4 = +[BKUIDevice sharedInstance];
  v5 = [v4 isZoomEnabled];

  result = 30.0;
  if (v5)
  {
    return 7.5;
  }

  return result;
}

- (void)_updateTargetValuesForAnimation:(int64_t)a3 animationCurve:(int64_t)a4
{
  if (a3 >= 3)
  {
    if (a3 == 3)
    {
      [(BKUIPearlPositioningGuideView *)self setTargetLineWidth:3, a4, 3.5];
      [(BKUIPearlPositioningGuideView *)self ringRadius];
      v7 = v6;
      [(BKUIPearlPositioningGuideView *)self targetLineWidth];
      [(BKUIPearlPositioningGuideView *)self setTargetEdgeDistance:v7 + v8 * 0.5];
      [(BKUIPearlPositioningGuideView *)self targetEdgeDistance];
      [(BKUIPearlPositioningGuideView *)self setTargetCornerRadius:?];
      [(BKUIPearlPositioningGuideView *)self setTargetPostCornerLength:0.0];
      [(BKUIJindoPositioningGuideView *)self setTargetLineYposition:0.0];

      [(BKUIPearlPositioningGuideView *)self setTargetLineAlpha:0.85];
    }
  }

  else
  {
    [(BKUIPearlPositioningGuideView *)self setTargetLineWidth:4.33333333];
    [(BKUIJindoPositioningGuideView *)self _squareLayoutOpenValue];
    [(BKUIPearlPositioningGuideView *)self setTargetEdgeDistance:?];
    [(BKUIPearlPositioningGuideView *)self setTargetCornerRadius:17.0];
    [(BKUIPearlPositioningGuideView *)self setTargetPostCornerLength:24.0];
    [(BKUIJindoPositioningGuideView *)self _edgeDistanceHeightDifference];
    [(BKUIJindoPositioningGuideView *)self setTargetLineYposition:?];
    [(BKUIPearlPositioningGuideView *)self setTargetLineAlpha:1.0];
    [(BKUIJindoPositioningGuideView *)self center];
    [(BKUIPearlPositioningGuideView *)self setTargetPortalCenter:?];

    [(BKUIPearlPositioningGuideView *)self setAnimationCurve:a4];
  }
}

- (void)_updateChildrenValuesForDisplayTickProgress:(double)a3
{
  targetLineYposition = self->_targetLineYposition;
  [(BKUIJindoPositioningGuideView *)self lineYpositionDifference];
  [(BKUIPearlPositioningGuideView *)self _updatedFloatWithTarget:targetLineYposition current:v6 start:self->_startLineYposition progress:a3];

  [(BKUIJindoPositioningGuideView *)self setLineYpositionDifference:?];
}

- (id)_roundedRectMaskForMaskDistance:(double)a3 portalCenter:(CGPoint)a4 cornerRadius:(double)a5
{
  y = a4.y;
  x = a4.x;
  [(BKUIJindoPositioningGuideView *)self bounds];
  v14 = [MEMORY[0x277D75208] bezierPathWithRect:{v10 + -1.0, v11 + -1.0, v12 + 2.0, v13 + 2.0}];
  [(BKUIJindoPositioningGuideView *)self lineYpositionDifference];
  v16 = y - a3 - v15;
  [(BKUIJindoPositioningGuideView *)self lineYpositionDifference];
  v18 = [MEMORY[0x277D75208] _bezierPathWithArcRoundedRect:x - a3 cornerRadius:{v16, a3 + a3, v17 + v17 + a3 * 2.0, a5}];
  [v14 appendPath:v18];

  return v14;
}

- (void)_startAnimationWithDuration:(double)a3 completion:(id)a4
{
  v6 = a4;
  if (([(BKUIJindoPositioningGuideView *)self isHidden]& 1) == 0 && !UIAccessibilityIsReduceMotionEnabled())
  {
    self->_startLineYposition = self->_lineYpositionDifference;
  }

  v7.receiver = self;
  v7.super_class = BKUIJindoPositioningGuideView;
  [(BKUIPearlPositioningGuideView *)&v7 _startAnimationWithDuration:v6 completion:a3];
}

@end