@interface CAMTrackingSpring
- ($F24F406B2B787EFB06265DBA3D28CBD5)_secondaryTarget;
- (BOOL)isConverged;
- (CAMTrackingSpring)initWithTension:(double)tension friction:(double)friction epsilon:(double)epsilon;
- (double)convergenceProgress;
- (void)_beginConverging;
- (void)resetToValue:(double)value animated:(BOOL)animated;
- (void)setSecondaryTarget:(double)target withStrength:(double)strength animated:(BOOL)animated;
- (void)setTarget:(double)target animated:(BOOL)animated;
- (void)updateForTimestamp:(double)timestamp;
@end

@implementation CAMTrackingSpring

- (CAMTrackingSpring)initWithTension:(double)tension friction:(double)friction epsilon:(double)epsilon
{
  v6.receiver = self;
  v6.super_class = CAMTrackingSpring;
  result = [(CAMSpring *)&v6 initWithTension:tension friction:friction epsilon:epsilon];
  if (result)
  {
    result->112 = CAMTrackingSpringTargetInvalid;
  }

  return result;
}

- (BOOL)isConverged
{
  _settleProgressSpring = [(CAMTrackingSpring *)self _settleProgressSpring];
  if (_settleProgressSpring)
  {
    _settleProgressSpring2 = [(CAMTrackingSpring *)self _settleProgressSpring];
    isConverged = [_settleProgressSpring2 isConverged];
  }

  else
  {
    isConverged = 1;
  }

  return isConverged;
}

- (double)convergenceProgress
{
  _settleProgressSpring = [(CAMTrackingSpring *)self _settleProgressSpring];
  if (_settleProgressSpring)
  {
    _settleProgressSpring2 = [(CAMTrackingSpring *)self _settleProgressSpring];
    [_settleProgressSpring2 _current];
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
  _settleProgressSpring = [(CAMTrackingSpring *)self _settleProgressSpring];

  if (!_settleProgressSpring)
  {
    v4 = [CAMSpring alloc];
    [(CAMSpring *)self tension];
    v6 = v5;
    [(CAMSpring *)self friction];
    v8 = [(CAMSpring *)v4 initWithTension:v6 friction:v7 epsilon:0.001];
    [(CAMTrackingSpring *)self _setSettlingSpring:v8];
  }

  _settleProgressSpring2 = [(CAMTrackingSpring *)self _settleProgressSpring];
  [_settleProgressSpring2 setTarget:1.0];

  _settleProgressSpring3 = [(CAMTrackingSpring *)self _settleProgressSpring];
  [_settleProgressSpring3 _setCurrent:0.0];

  [(CAMSpring *)self _current];

  [(CAMTrackingSpring *)self _convergenceStartValue:?];
}

- (void)setTarget:(double)target animated:(BOOL)animated
{
  animatedCopy = animated;
  [(CAMSpring *)self setTarget:target];
  if (animatedCopy)
  {

    [(CAMTrackingSpring *)self _beginConverging];
  }
}

- (void)setSecondaryTarget:(double)target withStrength:(double)strength animated:(BOOL)animated
{
  animatedCopy = animated;
  [(CAMTrackingSpring *)self _secondaryTarget];
  if (v9 != target || v10 != strength)
  {
    v12 = v9;
    [(CAMTrackingSpring *)self _setSecondaryTarget:target, strength];
    if (v12 != target && animatedCopy)
    {

      [(CAMTrackingSpring *)self _beginConverging];
    }
  }
}

- (void)resetToValue:(double)value animated:(BOOL)animated
{
  animatedCopy = animated;
  [(CAMTrackingSpring *)self removeSecondaryTargetAnimated:0];
  [(CAMSpring *)self setTarget:value];
  if (animatedCopy)
  {

    [(CAMTrackingSpring *)self _beginConverging];
  }

  else
  {
    [(CAMTrackingSpring *)self _setSettlingSpring:0];

    [(CAMSpring *)self _setCurrent:value];
  }
}

- (void)updateForTimestamp:(double)timestamp
{
  _settleProgressSpring = [(CAMTrackingSpring *)self _settleProgressSpring];
  [_settleProgressSpring updateForTimestamp:timestamp];
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