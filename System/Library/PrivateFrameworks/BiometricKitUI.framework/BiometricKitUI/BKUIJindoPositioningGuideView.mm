@interface BKUIJindoPositioningGuideView
- (double)_edgeDistanceHeightDifference;
- (double)_squareLayoutOpenValue;
- (id)_roundedRectMaskForMaskDistance:(double)distance portalCenter:(CGPoint)center cornerRadius:(double)radius;
- (void)_startAnimationWithDuration:(double)duration completion:(id)completion;
- (void)_updateChildrenValuesForDisplayTickProgress:(double)progress;
- (void)_updateTargetValuesForAnimation:(int64_t)animation animationCurve:(int64_t)curve;
- (void)drawRect:(CGRect)rect;
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

- (void)drawRect:(CGRect)rect
{
  [(BKUIPearlPositioningGuideView *)self portalCenter:rect.origin.x];
  v5 = v4;
  v35 = v4;
  v7 = v6;
  bezierPath = [MEMORY[0x277D75208] bezierPath];
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
  [bezierPath moveToPoint:{v38, v7 + v9 - v11 - v13 + v15}];
  v18 = v13 + v7 + v9 - v11 - v13 + v15;
  [bezierPath addLineToPoint:{v38, v18}];
  [bezierPath addArcWithCenter:1 radius:v38 - v11 startAngle:v18 endAngle:v11 clockwise:0.0];
  v19 = v17 + v9;
  v20 = v17 + v9 + v15;
  v37 = v38 - v11 - v13;
  [bezierPath addLineToPoint:?];
  v21 = v35 - v9;
  v22 = v35 - v9 + v11;
  v36 = v22 + v13;
  [bezierPath moveToPoint:?];
  [bezierPath addLineToPoint:{v22, v20}];
  v23 = v19 - v11;
  [bezierPath addArcWithCenter:1 radius:v22 startAngle:v23 + v15 endAngle:v11 clockwise:{1.57079633, 3.14159265}];
  [bezierPath addLineToPoint:{v21, v23 - v13 + v15}];
  v24 = v34 - v9;
  v25 = v34 - v9 + v11;
  v26 = v25 + v13 - v15;
  [bezierPath moveToPoint:{v21, v26}];
  v27 = v25 - v15;
  [bezierPath addLineToPoint:{v21, v27}];
  [bezierPath addArcWithCenter:1 radius:v22 startAngle:v27 endAngle:v11 clockwise:{3.14159265, 4.71238898}];
  [bezierPath addLineToPoint:{v36, v24 - v15}];
  [bezierPath moveToPoint:{v37, v24 - v15}];
  [bezierPath addLineToPoint:{v38 - v11, v24 - v15}];
  [bezierPath addArcWithCenter:1 radius:v38 - v11 startAngle:v27 endAngle:v11 clockwise:{4.71238898, 0.0}];
  [bezierPath addLineToPoint:{v38, v26}];
  [bezierPath setLineCapStyle:1];
  [bezierPath setLineWidth:v39 + 1.0];
  v28 = MEMORY[0x277D75348];
  [(BKUIPearlPositioningGuideView *)self lineAlpha];
  v30 = [v28 colorWithWhite:0.0 alpha:v29 * 0.25];
  [v30 setStroke];

  [bezierPath stroke];
  [bezierPath setLineWidth:v39];
  v31 = MEMORY[0x277D75348];
  [(BKUIPearlPositioningGuideView *)self lineAlpha];
  v33 = [v31 colorWithWhite:1.0 alpha:v32];
  [v33 setStroke];

  [bezierPath stroke];
}

- (double)_squareLayoutOpenValue
{
  v3 = +[BKUIDevice sharedInstance];
  isZoomEnabled = [v3 isZoomEnabled];

  if (isZoomEnabled)
  {
    v5 = +[BKUIDevice sharedInstance];
    mainScreenClass = [v5 mainScreenClass];

    if (mainScreenClass == 39)
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
  mainScreenClass = [v2 mainScreenClass];

  if (mainScreenClass != 31)
  {
    return 26.5;
  }

  v4 = +[BKUIDevice sharedInstance];
  isZoomEnabled = [v4 isZoomEnabled];

  result = 30.0;
  if (isZoomEnabled)
  {
    return 7.5;
  }

  return result;
}

- (void)_updateTargetValuesForAnimation:(int64_t)animation animationCurve:(int64_t)curve
{
  if (animation >= 3)
  {
    if (animation == 3)
    {
      [(BKUIPearlPositioningGuideView *)self setTargetLineWidth:3, curve, 3.5];
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

    [(BKUIPearlPositioningGuideView *)self setAnimationCurve:curve];
  }
}

- (void)_updateChildrenValuesForDisplayTickProgress:(double)progress
{
  targetLineYposition = self->_targetLineYposition;
  [(BKUIJindoPositioningGuideView *)self lineYpositionDifference];
  [(BKUIPearlPositioningGuideView *)self _updatedFloatWithTarget:targetLineYposition current:v6 start:self->_startLineYposition progress:progress];

  [(BKUIJindoPositioningGuideView *)self setLineYpositionDifference:?];
}

- (id)_roundedRectMaskForMaskDistance:(double)distance portalCenter:(CGPoint)center cornerRadius:(double)radius
{
  y = center.y;
  x = center.x;
  [(BKUIJindoPositioningGuideView *)self bounds];
  v14 = [MEMORY[0x277D75208] bezierPathWithRect:{v10 + -1.0, v11 + -1.0, v12 + 2.0, v13 + 2.0}];
  [(BKUIJindoPositioningGuideView *)self lineYpositionDifference];
  v16 = y - distance - v15;
  [(BKUIJindoPositioningGuideView *)self lineYpositionDifference];
  v18 = [MEMORY[0x277D75208] _bezierPathWithArcRoundedRect:x - distance cornerRadius:{v16, distance + distance, v17 + v17 + distance * 2.0, radius}];
  [v14 appendPath:v18];

  return v14;
}

- (void)_startAnimationWithDuration:(double)duration completion:(id)completion
{
  completionCopy = completion;
  if (([(BKUIJindoPositioningGuideView *)self isHidden]& 1) == 0 && !UIAccessibilityIsReduceMotionEnabled())
  {
    self->_startLineYposition = self->_lineYpositionDifference;
  }

  v7.receiver = self;
  v7.super_class = BKUIJindoPositioningGuideView;
  [(BKUIPearlPositioningGuideView *)&v7 _startAnimationWithDuration:completionCopy completion:duration];
}

@end