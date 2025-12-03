@interface CAMAdditiveAnimation
+ (id)animationToValue:(double)value fromAnimation:(id)animation duration:(double)duration curve:(id)curve;
+ (id)animationToValue:(double)value fromValue:(double)fromValue duration:(double)duration curve:(id)curve;
- (BOOL)isFinished;
- (double)value;
- (id)description;
- (void)updateWithTimestamp:(double)timestamp;
@end

@implementation CAMAdditiveAnimation

+ (id)animationToValue:(double)value fromValue:(double)fromValue duration:(double)duration curve:(id)curve
{
  curveCopy = curve;
  v11 = objc_alloc_init(self);
  v11[1] = value;
  v11[2] = fromValue;
  v11[3] = duration;
  v12 = *(v11 + 4);
  *(v11 + 4) = curveCopy;

  v11[6] = CACurrentMediaTime();

  return v11;
}

+ (id)animationToValue:(double)value fromAnimation:(id)animation duration:(double)duration curve:(id)curve
{
  animationCopy = animation;
  curveCopy = curve;
  v12 = objc_alloc_init(self);
  v12[1] = value;
  v13 = *(v12 + 5);
  *(v12 + 5) = animationCopy;
  v14 = animationCopy;

  v12[3] = duration;
  v15 = *(v12 + 4);
  *(v12 + 4) = curveCopy;

  v12[6] = CACurrentMediaTime();

  return v12;
}

- (BOOL)isFinished
{
  [(CAMAdditiveAnimation *)self _lastTime];
  v4 = v3;
  [(CAMAdditiveAnimation *)self _startTime];
  v6 = v4 - v5;
  [(CAMAdditiveAnimation *)self _duration];
  return v6 > v7;
}

- (void)updateWithTimestamp:(double)timestamp
{
  [(CAMAdditiveAnimation *)self _setLastTime:?];
  _fromAnimation = [(CAMAdditiveAnimation *)self _fromAnimation];
  [_fromAnimation updateWithTimestamp:timestamp];
  if ([_fromAnimation isFinished])
  {
    [_fromAnimation _toValue];
    [(CAMAdditiveAnimation *)self set_fromValue:?];
    [(CAMAdditiveAnimation *)self set_fromAnimation:0];
  }
}

- (double)value
{
  if ([(CAMAdditiveAnimation *)self isFinished])
  {

    [(CAMAdditiveAnimation *)self _toValue];
  }

  else
  {
    _fromAnimation = [(CAMAdditiveAnimation *)self _fromAnimation];
    v5 = _fromAnimation;
    if (_fromAnimation)
    {
      [_fromAnimation value];
    }

    else
    {
      [(CAMAdditiveAnimation *)self _fromValue];
    }

    v7 = v6;
    [(CAMAdditiveAnimation *)self _toValue];
    v9 = v8;
    [(CAMAdditiveAnimation *)self _lastTime];
    v11 = v10;
    [(CAMAdditiveAnimation *)self _startTime];
    v13 = v11 - v12;
    [(CAMAdditiveAnimation *)self _duration];
    v15 = v13 / v14;
    _curve = [(CAMAdditiveAnimation *)self _curve];
    if (_curve)
    {
      _curve2 = [(CAMAdditiveAnimation *)self _curve];
      *&v18 = v15;
      [_curve2 _solveForInput:v18];
      v15 = v19;
    }

    v20 = CEKInterpolate(v7, v9, v15);
    return v20;
  }

  return result;
}

- (id)description
{
  _fromAnimation = [(CAMAdditiveAnimation *)self _fromAnimation];

  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [(CAMAdditiveAnimation *)self value];
  v8 = v7;
  if (_fromAnimation)
  {
    [(CAMAdditiveAnimation *)self _toValue];
    v10 = v9;
    [(CAMAdditiveAnimation *)self _duration];
    v12 = v11;
    [(CAMAdditiveAnimation *)self _startTime];
    v14 = v13;
    [(CAMAdditiveAnimation *)self _lastTime];
    v16 = v15;
    _fromAnimation2 = [(CAMAdditiveAnimation *)self _fromAnimation];
    v18 = [v4 stringWithFormat:@"<%@: %p value = %.2f; toValue = %.2f; duration = %.2f; startTime = %.2f; lastTime = %.2f> base animation:\n%@", v6, self, v8, v10, v12, v14, v16, _fromAnimation2];;
  }

  else
  {
    [(CAMAdditiveAnimation *)self _fromValue];
    v20 = v19;
    [(CAMAdditiveAnimation *)self _toValue];
    v22 = v21;
    [(CAMAdditiveAnimation *)self _duration];
    v24 = v23;
    [(CAMAdditiveAnimation *)self _startTime];
    v26 = v25;
    [(CAMAdditiveAnimation *)self _lastTime];
    v18 = [v4 stringWithFormat:@"<%@: %p value = %.2f; fromValue = %.2f; toValue = %.2f; duration = %.2f; startTime = %.2f; lastTime = %.2f>", v6, self, v8, v20, v22, v24, v26, v27];;
  }

  return v18;
}

@end