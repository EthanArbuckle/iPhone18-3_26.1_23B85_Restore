@interface PKSpringAnimationFactory
+ (double)defaultDuration;
+ (id)createDefaultFactory;
+ (id)highFrameRateSpringAnimationWithKeyPath:(id)a3 reason:(unsigned __int16)a4;
+ (id)sharedDefaultFactory;
+ (id)springAnimationWithKeyPath:(id)a3;
- (PKSpringAnimationFactory)factoryWithInvertedVelocity;
- (PKSpringAnimationFactory)initWithSpringState:(id)a3;
- (double)_durationWithReferenceSpring:(uint64_t)a1;
- (id)_createSpringAnimationWithKeyPath:(id)a3;
- (id)copy;
- (id)copyWithZone:(_NSZone *)a3;
- (id)highFrameRateSpringAnimationWithKeyPath:(id)a3 reason:(unsigned __int16)a4;
- (id)springAnimationWithKeyPath:(id)a3;
- (void)_createReferenceSpringAnimationWithKeyPath:(double *)a1;
- (void)dealloc;
- (void)setDamping:(double)a3;
- (void)setMass:(double)a3;
- (void)setSpeed:(double)a3;
- (void)setStiffness:(double)a3;
- (void)setTiming:(id)a3;
- (void)setTiming:(id)a3 withDynamicDurationProvider:(id)a4;
- (void)setVelocity:(double)a3;
@end

@implementation PKSpringAnimationFactory

+ (id)createDefaultFactory
{
  v2 = [objc_alloc(objc_opt_class()) initWithMass:2.0 stiffness:300.0 damping:400.0];
  v3 = PKMagicCurve();
  [v2 setTiming:v3];

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKSpringAnimationFactory;
  [(PKSpringAnimationFactory *)&v2 dealloc];
}

+ (id)sharedDefaultFactory
{
  if (qword_1ED6D18D8 != -1)
  {
    dispatch_once(&qword_1ED6D18D8, &__block_literal_global_42);
  }

  v3 = _MergedGlobals_202;

  return v3;
}

+ (double)defaultDuration
{
  if (qword_1ED6D18D8 != -1)
  {
    dispatch_once(&qword_1ED6D18D8, &__block_literal_global_42);
  }

  v3 = _MergedGlobals_202;

  return [(PKSpringAnimationFactory *)v3 _durationWithReferenceSpring:?];
}

- (double)_durationWithReferenceSpring:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    if (*(a1 + 56))
    {
      *(a1 + 56) = 0;
      WeakRetained = objc_loadWeakRetained((a1 + 64));
      if (WeakRetained)
      {
        objc_storeWeak((a1 + 64), 0);
        objc_storeWeak(WeakRetained + 8, 0);
      }

      if (!v3)
      {
        v3 = [(PKSpringAnimationFactory *)a1 _createReferenceSpringAnimationWithKeyPath:?];
      }

      [v3 durationForEpsilon:0.001];
      v6 = v5;
      if (*(a1 + 80))
      {
        v7 = *(a1 + 48);
        if (v7)
        {
          v6 = fmax((*(v7 + 16))(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), v5), v5);
        }
      }

      *(a1 + 40) = v6;
    }

    else
    {
      v6 = *(a1 + 40);
    }
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

+ (id)springAnimationWithKeyPath:(id)a3
{
  v3 = qword_1ED6D18D8;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_1ED6D18D8, &__block_literal_global_42);
  }

  v5 = [_MergedGlobals_202 springAnimationWithKeyPath:v4];

  return v5;
}

+ (id)highFrameRateSpringAnimationWithKeyPath:(id)a3 reason:(unsigned __int16)a4
{
  v4 = a4;
  v5 = qword_1ED6D18D8;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&qword_1ED6D18D8, &__block_literal_global_42);
  }

  v7 = [_MergedGlobals_202 highFrameRateSpringAnimationWithKeyPath:v6 reason:v4];

  return v7;
}

- (PKSpringAnimationFactory)initWithSpringState:(id)a3
{
  var3 = a3.var3;
  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
  v8.receiver = self;
  v8.super_class = PKSpringAnimationFactory;
  result = [(PKSpringAnimationFactory *)&v8 init];
  if (result)
  {
    result->_speed = 1.0;
    result->_state.mass = var0;
    result->_state.stiffness = var1;
    result->_state.damping = var2;
    result->_state.velocity = var3;
    result->_needsDurationUpdate = 1;
  }

  return result;
}

- (id)copy
{
  v3.receiver = self;
  v3.super_class = PKSpringAnimationFactory;
  return [(PKSpringAnimationFactory *)&v3 copy];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithSpringState:", self->_state.mass, self->_state.stiffness, self->_state.damping, self->_state.velocity}];
  [v4 setSpeed:self->_speed];
  timing = self->_timing;
  if (timing)
  {
    [v4 setTiming:timing withDynamicDurationProvider:self->_dynamicDurationProvider];
  }

  WeakRetained = objc_loadWeakRetained(&self->_invertedFactory);
  if (WeakRetained)
  {
    [(PKSpringAnimationFactory *)v4 _durationWithReferenceSpring:?];
    objc_storeWeak(v4 + 8, WeakRetained);
  }

  return v4;
}

- (PKSpringAnimationFactory)factoryWithInvertedVelocity
{
  if (self->_state.velocity != 0.0)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    if (self->_needsDurationUpdate)
    {
      [(PKSpringAnimationFactory *)self _durationWithReferenceSpring:?];
      v5 = self;
    }

    WeakRetained = objc_loadWeakRetained(&v5->_invertedFactory);
    if (WeakRetained)
    {
      v7 = WeakRetained;
      if ((WeakRetained[7] & 1) == 0)
      {
        objc_autoreleasePoolPop(v4);
        goto LABEL_14;
      }

      [(PKSpringAnimationFactory *)WeakRetained _durationWithReferenceSpring:?];
      v8 = objc_loadWeakRetained(&self->_invertedFactory);

      objc_autoreleasePoolPop(v4);
      v9 = self;
      v7 = v8;
      if (v8)
      {
LABEL_14:
        v10 = v7;

        return v10;
      }
    }

    else
    {
      objc_autoreleasePoolPop(v4);
      v9 = self;
    }

    v7 = [(PKSpringAnimationFactory *)v9 copy];
    [v7 setVelocity:-self->_state.velocity];
    [(PKSpringAnimationFactory *)v7 _durationWithReferenceSpring:?];
    objc_storeWeak(v7 + 8, self);
    objc_storeWeak(&self->_invertedFactory, v7);
    goto LABEL_14;
  }

  return self;
}

- (id)springAnimationWithKeyPath:(id)a3
{
  v3 = [(PKSpringAnimationFactory *)self _createSpringAnimationWithKeyPath:a3];
  [v3 setAdditive:1];

  return v3;
}

- (id)highFrameRateSpringAnimationWithKeyPath:(id)a3 reason:(unsigned __int16)a4
{
  v4 = a4;
  v5 = [(PKSpringAnimationFactory *)self springAnimationWithKeyPath:a3];
  [v5 setHighFrameRateReason:v4 | 0x210000u];
  LODWORD(v6) = 1117782016;
  LODWORD(v7) = 1123024896;
  LODWORD(v8) = 1123024896;
  [v5 setPreferredFrameRateRange:{v6, v7, v8}];

  return v5;
}

- (void)_createReferenceSpringAnimationWithKeyPath:(double *)a1
{
  if (!a1)
  {
    return 0;
  }

  v3 = [MEMORY[0x1E69794A8] animationWithKeyPath:a2];
  [v3 setMass:a1[1]];
  [v3 setStiffness:a1[2]];
  [v3 setDamping:a1[3]];
  [v3 setVelocity:a1[4]];
  return v3;
}

- (id)_createSpringAnimationWithKeyPath:(id)a3
{
  v4 = [(PKSpringAnimationFactory *)self _createReferenceSpringAnimationWithKeyPath:a3];
  v5 = [(PKSpringAnimationFactory *)self _durationWithReferenceSpring:v4];
  speed = self->_speed;
  *&speed = speed;
  [v4 setSpeed:speed];
  [v4 setTimingFunction:self->_timing];
  [v4 setDuration:v5];
  [v4 setFillMode:*MEMORY[0x1E69797E0]];
  [v4 setBeginTimeMode:*MEMORY[0x1E69795C0]];
  return v4;
}

- (void)setSpeed:(double)a3
{
  if (self->_speed != a3)
  {
    self->_speed = a3;
  }
}

- (void)setMass:(double)a3
{
  if (self->_state.mass != a3)
  {
    self->_state.mass = a3;
    self->_needsDurationUpdate = 1;
  }
}

- (void)setStiffness:(double)a3
{
  if (self->_state.stiffness != a3)
  {
    self->_state.stiffness = a3;
    self->_needsDurationUpdate = 1;
  }
}

- (void)setDamping:(double)a3
{
  if (self->_state.damping != a3)
  {
    self->_state.damping = a3;
    self->_needsDurationUpdate = 1;
  }
}

- (void)setVelocity:(double)a3
{
  if (self->_state.velocity != a3)
  {
    self->_state.velocity = a3;
    self->_needsDurationUpdate = 1;
  }
}

- (void)setTiming:(id)a3
{
  if (a3)
  {

    [PKSpringAnimationFactory setTiming:"setTiming:withDynamicDurationProvider:" withDynamicDurationProvider:?];
  }

  else if (self)
  {
    timing = self->_timing;
    if (timing)
    {
      self->_timing = 0;

      dynamicDurationProvider = self->_dynamicDurationProvider;
      self->_dynamicDurationProvider = 0;

      self->_needsDurationUpdate = 1;
    }
  }
}

- (void)setTiming:(id)a3 withDynamicDurationProvider:(id)a4
{
  v7 = a3;
  if (v7)
  {
    v11 = v7;
    objc_storeStrong(&self->_timing, a3);
    v8 = a4;
    v9 = _Block_copy(v8);

    dynamicDurationProvider = self->_dynamicDurationProvider;
    self->_dynamicDurationProvider = v9;

    v7 = v11;
    self->_needsDurationUpdate = 1;
  }
}

@end