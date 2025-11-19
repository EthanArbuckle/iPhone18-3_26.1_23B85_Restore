@interface CAMSpring
- (CAMSpring)initWithTension:(double)a3 friction:(double)a4 epsilon:(double)a5 boundedBetween:(double)a6 and:(double)a7;
- (double)_currentForce;
- (double)value;
- (void)_updateConverged;
- (void)_updateWithForce:(double)a3 timestamp:(double)a4;
- (void)converge;
- (void)resetToValue:(double)a3;
- (void)updateForTimestamp:(double)a3;
@end

@implementation CAMSpring

- (CAMSpring)initWithTension:(double)a3 friction:(double)a4 epsilon:(double)a5 boundedBetween:(double)a6 and:(double)a7
{
  v16.receiver = self;
  v16.super_class = CAMSpring;
  v12 = [(CAMSpring *)&v16 init];
  v13 = v12;
  if (v12)
  {
    *(v12 + 2) = a3;
    *(v12 + 3) = a4;
    *(v12 + 6) = a5;
    *(v12 + 10) = fmin(a6, a7);
    *(v12 + 11) = fmax(a6, a7);
    *(v12 + 56) = xmmword_1A3A689C0;
    v12[8] = 1;
    v14 = v12;
  }

  return v13;
}

- (double)value
{
  [(CAMSpring *)self _upperBound];
  v4 = v3;
  [(CAMSpring *)self _current];
  v6 = fmin(v4, v5);
  [(CAMSpring *)self _lowerBound];
  v8 = fmax(v6, v7);
  [(CAMSpring *)self epsilon];
  v10 = fabs(v8) < v9;
  result = 0.0;
  if (!v10)
  {
    return v8;
  }

  return result;
}

- (void)resetToValue:(double)a3
{
  self->_target = a3;
  self->__current = a3;
  self->_velocity = 0.0;
  [(CAMSpring *)self _setConverged:1];
  Current = CFAbsoluteTimeGetCurrent();

  [(CAMSpring *)self _setLastTimestamp:Current];
}

- (void)updateForTimestamp:(double)a3
{
  [(CAMSpring *)self _currentForce];

  [CAMSpring _updateWithForce:"_updateWithForce:timestamp:" timestamp:?];
}

- (void)converge
{
  [(CAMSpring *)self target];

  [(CAMSpring *)self resetToValue:?];
}

- (void)_updateConverged
{
  [(CAMSpring *)self target];
  v4 = v3;
  [(CAMSpring *)self _current];
  v6 = vabdd_f64(v4, v5);
  [(CAMSpring *)self epsilon];
  v8 = v7;
  [(CAMSpring *)self velocity];
  v10 = fabs(v9) < v8 && v6 < v8;

  [(CAMSpring *)self _setConverged:v10];
}

- (double)_currentForce
{
  [(CAMSpring *)self tension];
  v4 = v3;
  [(CAMSpring *)self target];
  v6 = v5;
  [(CAMSpring *)self _current];
  v8 = v6 - v7;
  [(CAMSpring *)self friction];
  v10 = v9;
  [(CAMSpring *)self velocity];
  return v4 * v8 - v10 * v11;
}

- (void)_updateWithForce:(double)a3 timestamp:(double)a4
{
  [(CAMSpring *)self _lastTimestamp];
  v8 = v7;
  [(CAMSpring *)self _setLastTimestamp:a4];
  if (v8 != 0.0 && ![(CAMSpring *)self isConverged])
  {
    [(CAMSpring *)self _updateConverged];
    if ([(CAMSpring *)self isConverged])
    {
      [(CAMSpring *)self target];
    }

    else
    {
      v10 = vabdd_f64(a4, v8);
      [(CAMSpring *)self maximumTimeDelta];
      if (v10 >= v11)
      {
        v10 = v11;
      }

      [(CAMSpring *)self velocity];
      [(CAMSpring *)self setVelocity:v12 + a3 * v10];
      [(CAMSpring *)self velocity];
      v14 = v13;
      [(CAMSpring *)self _current];
      v9 = v15 + v14 * v10;
    }

    [(CAMSpring *)self _setCurrent:v9];
  }
}

@end