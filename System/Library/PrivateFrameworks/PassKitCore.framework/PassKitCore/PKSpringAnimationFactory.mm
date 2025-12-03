@interface PKSpringAnimationFactory
+ (double)defaultDuration;
+ (id)createDefaultFactory;
+ (id)highFrameRateSpringAnimationWithKeyPath:(id)path reason:(unsigned __int16)reason;
+ (id)sharedDefaultFactory;
+ (id)springAnimationWithKeyPath:(id)path;
- (PKSpringAnimationFactory)factoryWithInvertedVelocity;
- (PKSpringAnimationFactory)initWithSpringState:(id)state;
- (double)_durationWithReferenceSpring:(uint64_t)spring;
- (id)_createSpringAnimationWithKeyPath:(id)path;
- (id)copy;
- (id)copyWithZone:(_NSZone *)zone;
- (id)highFrameRateSpringAnimationWithKeyPath:(id)path reason:(unsigned __int16)reason;
- (id)springAnimationWithKeyPath:(id)path;
- (void)_createReferenceSpringAnimationWithKeyPath:(double *)path;
- (void)dealloc;
- (void)setDamping:(double)damping;
- (void)setMass:(double)mass;
- (void)setSpeed:(double)speed;
- (void)setStiffness:(double)stiffness;
- (void)setTiming:(id)timing;
- (void)setTiming:(id)timing withDynamicDurationProvider:(id)provider;
- (void)setVelocity:(double)velocity;
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

- (double)_durationWithReferenceSpring:(uint64_t)spring
{
  v3 = a2;
  if (spring)
  {
    if (*(spring + 56))
    {
      *(spring + 56) = 0;
      WeakRetained = objc_loadWeakRetained((spring + 64));
      if (WeakRetained)
      {
        objc_storeWeak((spring + 64), 0);
        objc_storeWeak(WeakRetained + 8, 0);
      }

      if (!v3)
      {
        v3 = [(PKSpringAnimationFactory *)spring _createReferenceSpringAnimationWithKeyPath:?];
      }

      [v3 durationForEpsilon:0.001];
      v6 = v5;
      if (*(spring + 80))
      {
        v7 = *(spring + 48);
        if (v7)
        {
          v6 = fmax((*(v7 + 16))(*(spring + 8), *(spring + 16), *(spring + 24), *(spring + 32), v5), v5);
        }
      }

      *(spring + 40) = v6;
    }

    else
    {
      v6 = *(spring + 40);
    }
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

+ (id)springAnimationWithKeyPath:(id)path
{
  v3 = qword_1ED6D18D8;
  pathCopy = path;
  if (v3 != -1)
  {
    dispatch_once(&qword_1ED6D18D8, &__block_literal_global_42);
  }

  v5 = [_MergedGlobals_202 springAnimationWithKeyPath:pathCopy];

  return v5;
}

+ (id)highFrameRateSpringAnimationWithKeyPath:(id)path reason:(unsigned __int16)reason
{
  reasonCopy = reason;
  v5 = qword_1ED6D18D8;
  pathCopy = path;
  if (v5 != -1)
  {
    dispatch_once(&qword_1ED6D18D8, &__block_literal_global_42);
  }

  v7 = [_MergedGlobals_202 highFrameRateSpringAnimationWithKeyPath:pathCopy reason:reasonCopy];

  return v7;
}

- (PKSpringAnimationFactory)initWithSpringState:(id)state
{
  var3 = state.var3;
  var2 = state.var2;
  var1 = state.var1;
  var0 = state.var0;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithSpringState:", self->_state.mass, self->_state.stiffness, self->_state.damping, self->_state.velocity}];
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
    selfCopy2 = self;
    if (self->_needsDurationUpdate)
    {
      [(PKSpringAnimationFactory *)self _durationWithReferenceSpring:?];
      selfCopy2 = self;
    }

    WeakRetained = objc_loadWeakRetained(&selfCopy2->_invertedFactory);
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
      selfCopy4 = self;
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
      selfCopy4 = self;
    }

    v7 = [(PKSpringAnimationFactory *)selfCopy4 copy];
    [v7 setVelocity:-self->_state.velocity];
    [(PKSpringAnimationFactory *)v7 _durationWithReferenceSpring:?];
    objc_storeWeak(v7 + 8, self);
    objc_storeWeak(&self->_invertedFactory, v7);
    goto LABEL_14;
  }

  return self;
}

- (id)springAnimationWithKeyPath:(id)path
{
  v3 = [(PKSpringAnimationFactory *)self _createSpringAnimationWithKeyPath:path];
  [v3 setAdditive:1];

  return v3;
}

- (id)highFrameRateSpringAnimationWithKeyPath:(id)path reason:(unsigned __int16)reason
{
  reasonCopy = reason;
  v5 = [(PKSpringAnimationFactory *)self springAnimationWithKeyPath:path];
  [v5 setHighFrameRateReason:reasonCopy | 0x210000u];
  LODWORD(v6) = 1117782016;
  LODWORD(v7) = 1123024896;
  LODWORD(v8) = 1123024896;
  [v5 setPreferredFrameRateRange:{v6, v7, v8}];

  return v5;
}

- (void)_createReferenceSpringAnimationWithKeyPath:(double *)path
{
  if (!path)
  {
    return 0;
  }

  v3 = [MEMORY[0x1E69794A8] animationWithKeyPath:a2];
  [v3 setMass:path[1]];
  [v3 setStiffness:path[2]];
  [v3 setDamping:path[3]];
  [v3 setVelocity:path[4]];
  return v3;
}

- (id)_createSpringAnimationWithKeyPath:(id)path
{
  v4 = [(PKSpringAnimationFactory *)self _createReferenceSpringAnimationWithKeyPath:path];
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

- (void)setSpeed:(double)speed
{
  if (self->_speed != speed)
  {
    self->_speed = speed;
  }
}

- (void)setMass:(double)mass
{
  if (self->_state.mass != mass)
  {
    self->_state.mass = mass;
    self->_needsDurationUpdate = 1;
  }
}

- (void)setStiffness:(double)stiffness
{
  if (self->_state.stiffness != stiffness)
  {
    self->_state.stiffness = stiffness;
    self->_needsDurationUpdate = 1;
  }
}

- (void)setDamping:(double)damping
{
  if (self->_state.damping != damping)
  {
    self->_state.damping = damping;
    self->_needsDurationUpdate = 1;
  }
}

- (void)setVelocity:(double)velocity
{
  if (self->_state.velocity != velocity)
  {
    self->_state.velocity = velocity;
    self->_needsDurationUpdate = 1;
  }
}

- (void)setTiming:(id)timing
{
  if (timing)
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

- (void)setTiming:(id)timing withDynamicDurationProvider:(id)provider
{
  timingCopy = timing;
  if (timingCopy)
  {
    v11 = timingCopy;
    objc_storeStrong(&self->_timing, timing);
    providerCopy = provider;
    v9 = _Block_copy(providerCopy);

    dynamicDurationProvider = self->_dynamicDurationProvider;
    self->_dynamicDurationProvider = v9;

    timingCopy = v11;
    self->_needsDurationUpdate = 1;
  }
}

@end