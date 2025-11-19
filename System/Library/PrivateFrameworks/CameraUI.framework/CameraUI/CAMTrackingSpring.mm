@interface CAMTrackingSpring
- ($F24F406B2B787EFB06265DBA3D28CBD5)_secondaryTarget;
- (BOOL)isConverged;
- (CAMTrackingSpring)initWithTension:(double)a3 friction:(double)a4 epsilon:(double)a5;
- (double)convergenceProgress;
- (void)_beginConverging;
- (void)resetToValue:(double)a3 animated:(BOOL)a4;
- (void)setSecondaryTarget:(double)a3 withStrength:(double)a4 animated:(BOOL)a5;
- (void)setTarget:(double)a3 animated:(BOOL)a4;
- (void)updateForTimestamp:(double)a3;
@end

@implementation CAMTrackingSpring

- (CAMTrackingSpring)initWithTension:(double)a3 friction:(double)a4 epsilon:(double)a5
{
  v6.receiver = self;
  v6.super_class = CAMTrackingSpring;
  result = [(CAMSpring *)&v6 initWithTension:a3 friction:a4 epsilon:a5];
  if (result)
  {
    result->112 = CAMTrackingSpringTargetInvalid;
  }

  return result;
}

- (BOOL)isConverged
{
  v3 = [(CAMTrackingSpring *)self _settleProgressSpring];
  if (v3)
  {
    v4 = [(CAMTrackingSpring *)self _settleProgressSpring];
    v5 = [v4 isConverged];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (double)convergenceProgress
{
  v3 = [(CAMTrackingSpring *)self _settleProgressSpring];
  if (v3)
  {
    v4 = [(CAMTrackingSpring *)self _settleProgressSpring];
    [v4 _current];
    v6 = v5;
  }

  else
  {
    v6 = 1.0;
  }

  return v6;
}

- (void)_beginConverging
{
  v3 = [(CAMTrackingSpring *)self _settleProgressSpring];

  if (!v3)
  {
    v4 = [CAMSpring alloc];
    [(CAMSpring *)self tension];
    v6 = v5;
    [(CAMSpring *)self friction];
    v8 = [(CAMSpring *)v4 initWithTension:v6 friction:v7 epsilon:0.001];
    [(CAMTrackingSpring *)self _setSettlingSpring:v8];
  }

  v9 = [(CAMTrackingSpring *)self _settleProgressSpring];
  [v9 setTarget:1.0];

  v10 = [(CAMTrackingSpring *)self _settleProgressSpring];
  [v10 _setCurrent:0.0];

  [(CAMSpring *)self _current];

  [(CAMTrackingSpring *)self _convergenceStartValue:?];
}

- (void)setTarget:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(CAMSpring *)self setTarget:a3];
  if (v4)
  {

    [(CAMTrackingSpring *)self _beginConverging];
  }
}

- (void)setSecondaryTarget:(double)a3 withStrength:(double)a4 animated:(BOOL)a5
{
  v5 = a5;
  [(CAMTrackingSpring *)self _secondaryTarget];
  if (v9 != a3 || v10 != a4)
  {
    v12 = v9;
    [(CAMTrackingSpring *)self _setSecondaryTarget:a3, a4];
    if (v12 != a3 && v5)
    {

      [(CAMTrackingSpring *)self _beginConverging];
    }
  }
}

- (void)resetToValue:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(CAMTrackingSpring *)self removeSecondaryTargetAnimated:0];
  [(CAMSpring *)self setTarget:a3];
  if (v4)
  {

    [(CAMTrackingSpring *)self _beginConverging];
  }

  else
  {
    [(CAMTrackingSpring *)self _setSettlingSpring:0];

    [(CAMSpring *)self _setCurrent:a3];
  }
}

- (void)updateForTimestamp:(double)a3
{
  v9 = [(CAMTrackingSpring *)self _settleProgressSpring];
  [v9 updateForTimestamp:a3];
  [(CAMSpring *)self target];
  v6 = v5;
  if ([(CAMTrackingSpring *)self hasSecondaryTarget])
  {
    [(CAMSpring *)self target];
    [(CAMTrackingSpring *)self _secondaryTarget];
    CEKInterpolate();
    v6 = v7;
  }

  if ([(CAMTrackingSpring *)self isConverged])
  {
    [(CAMTrackingSpring *)self _setSettlingSpring:0];
  }

  else
  {
    [(CAMTrackingSpring *)self convergenceProgress];
    [(CAMTrackingSpring *)self _convergenceStartValue];
    CEKInterpolate();
    v6 = v8;
  }

  [(CAMSpring *)self _setCurrent:v6];
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_secondaryTarget
{
  value = self->value;
  strength = self->strength;
  result.var1 = strength;
  result.var0 = value;
  return result;
}

@end