@interface CAMAdditiveAnimation
+ (id)animationToValue:(double)a3 fromAnimation:(id)a4 duration:(double)a5 curve:(id)a6;
+ (id)animationToValue:(double)a3 fromValue:(double)a4 duration:(double)a5 curve:(id)a6;
- (BOOL)isFinished;
- (double)value;
- (id)description;
- (void)updateWithTimestamp:(double)a3;
@end

@implementation CAMAdditiveAnimation

+ (id)animationToValue:(double)a3 fromValue:(double)a4 duration:(double)a5 curve:(id)a6
{
  v10 = a6;
  v11 = objc_alloc_init(a1);
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v12 = *(v11 + 4);
  *(v11 + 4) = v10;

  v11[6] = CACurrentMediaTime();

  return v11;
}

+ (id)animationToValue:(double)a3 fromAnimation:(id)a4 duration:(double)a5 curve:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = objc_alloc_init(a1);
  v12[1] = a3;
  v13 = *(v12 + 5);
  *(v12 + 5) = v10;
  v14 = v10;

  v12[3] = a5;
  v15 = *(v12 + 4);
  *(v12 + 4) = v11;

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

- (void)updateWithTimestamp:(double)a3
{
  [(CAMAdditiveAnimation *)self _setLastTime:?];
  v5 = [(CAMAdditiveAnimation *)self _fromAnimation];
  [v5 updateWithTimestamp:a3];
  if ([v5 isFinished])
  {
    [v5 _toValue];
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
    v4 = [(CAMAdditiveAnimation *)self _fromAnimation];
    v5 = v4;
    if (v4)
    {
      [v4 value];
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
    v16 = [(CAMAdditiveAnimation *)self _curve];
    if (v16)
    {
      v17 = [(CAMAdditiveAnimation *)self _curve];
      *&v18 = v15;
      [v17 _solveForInput:v18];
      v15 = v19;
    }

    v20 = CEKInterpolate(v7, v9, v15);
    return v20;
  }

  return result;
}

- (id)description
{
  v3 = [(CAMAdditiveAnimation *)self _fromAnimation];

  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [(CAMAdditiveAnimation *)self value];
  v8 = v7;
  if (v3)
  {
    [(CAMAdditiveAnimation *)self _toValue];
    v10 = v9;
    [(CAMAdditiveAnimation *)self _duration];
    v12 = v11;
    [(CAMAdditiveAnimation *)self _startTime];
    v14 = v13;
    [(CAMAdditiveAnimation *)self _lastTime];
    v16 = v15;
    v17 = [(CAMAdditiveAnimation *)self _fromAnimation];
    v18 = [v4 stringWithFormat:@"<%@: %p value = %.2f; toValue = %.2f; duration = %.2f; startTime = %.2f; lastTime = %.2f> base animation:\n%@", v6, self, v8, v10, v12, v14, v16, v17];;
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