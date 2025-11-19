@interface CKScrollViewAnimationProperties
+ (id)animatedWithDuration:(double)a3 animationCurve:(int64_t)a4;
+ (id)inheritedAnimation;
+ (id)springAnimationWithMass:(double)a3 stiffness:(double)a4 damping:(double)a5 duration:(double)a6;
+ (id)systemDefaultScrollAnimation;
+ (id)unanimated;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAnimationProperties:(id)a3;
- (CABasicAnimation)caBasicAnimation;
- (CKScrollViewAnimationProperties)initWithAnimationType:(int64_t)a3 duration:(double)a4 animationCurve:(int64_t)a5 springMass:(double)a6 springStiffness:(double)a7 springDamping:(double)a8;
- (UIViewPropertyAnimator)propertyAnimator;
- (id)description;
- (unint64_t)hash;
- (void)performAnimationBlock:(id)a3;
@end

@implementation CKScrollViewAnimationProperties

- (id)description
{
  animationType = self->_animationType;
  if (animationType == 2)
  {
    v4 = @"inheritedAnimation";
  }

  else if (animationType == 1)
  {
    springMass = self->_springMass;
    if (springMass == 0.0)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"<animated, duration=%.2f, curve=%ld>", *&self->_duration, self->_animationCurve, v7];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"<animated, mass=%.4f, stiffness=%.4f, damping=%.4f>", *&springMass, *&self->_springStiffness, *&self->_springDamping];
    }
    v4 = ;
  }

  else
  {
    if (animationType)
    {
      v4 = 0;
    }

    else
    {
      v4 = @"unanimated";
    }
  }

  return v4;
}

- (unint64_t)hash
{
  animationType = self->_animationType;
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_duration];
  v5 = [v4 hash] ^ animationType ^ self->_animationCurve;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_springMass];
  v7 = [v6 hash];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_springStiffness];
  v9 = v5 ^ v7 ^ [v8 hash];
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_springDamping];
  v11 = [v10 hash];

  return v9 ^ v11;
}

- (UIViewPropertyAnimator)propertyAnimator
{
  if (self->_animationType != 1)
  {
    v7 = 0;
    goto LABEL_9;
  }

  if (self->_springMass <= 0.0)
  {
    animationCurve = self->_animationCurve;
    if (animationCurve != UIViewAnimationCurveForCKAnimationCurve(103))
    {
      v12 = self->_animationCurve;
      if ((UIViewAnimationCurveForCKAnimationCurve(7) & v12) != 0)
      {
        v9 = objc_alloc_init(MEMORY[0x1E69DCF88]);
      }

      else
      {
        v9 = [objc_alloc(MEMORY[0x1E69DC908]) initWithAnimationCurve:self->_animationCurve];
      }

      goto LABEL_8;
    }

    v3 = objc_alloc(MEMORY[0x1E69DCF88]);
    springStiffness = 333.34153;
    springDamping = 36.51529;
    springMass = 1.0;
  }

  else
  {
    v3 = objc_alloc(MEMORY[0x1E69DCF88]);
    springMass = self->_springMass;
    springStiffness = self->_springStiffness;
    springDamping = self->_springDamping;
  }

  v9 = [v3 initWithMass:springMass stiffness:springStiffness damping:springDamping initialVelocity:{0.0, 0.0}];
LABEL_8:
  v10 = v9;
  v7 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:v9 timingParameters:self->_duration];

LABEL_9:

  return v7;
}

- (CABasicAnimation)caBasicAnimation
{
  if (self->_animationType == 1)
  {
    if (self->_springMass <= 0.0)
    {
      animationCurve = self->_animationCurve;
      if (animationCurve == UIViewAnimationCurveForCKAnimationCurve(103))
      {
        v3 = objc_alloc_init(MEMORY[0x1E69794A8]);
        [v3 setDuration:self->_duration];
        [v3 setMass:1.0];
        [v3 setStiffness:333.34153];
        [v3 setDamping:36.51529];
      }

      else
      {
        v6 = self->_animationCurve;
        if ((UIViewAnimationCurveForCKAnimationCurve(7) & v6) != 0)
        {
          v3 = objc_alloc_init(MEMORY[0x1E69794A8]);
          [v3 setDuration:self->_duration];
          v7 = objc_alloc_init(MEMORY[0x1E69DCF88]);
          [v7 mass];
          [v3 setMass:?];
          [v7 stiffness];
          [v3 setStiffness:?];
          [v7 damping];
          [v3 setDamping:?];
        }

        else
        {
          v3 = objc_alloc_init(MEMORY[0x1E6979318]);
          [v3 setDuration:self->_duration];
          v7 = _CKGetAnimationCurveSpline(self->_animationCurve, v8, v9, v10, v11);
          [v3 setTimingFunction:v7];
        }
      }
    }

    else
    {
      v3 = objc_alloc_init(MEMORY[0x1E69794A8]);
      [v3 setMass:self->_springMass];
      [v3 setStiffness:self->_springStiffness];
      [v3 setDamping:self->_springDamping];
      [v3 setDuration:self->_duration];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)unanimated
{
  v2 = [[CKScrollViewAnimationProperties alloc] initWithAnimationType:0 duration:3 animationCurve:0.0 springMass:0.0 springStiffness:0.0 springDamping:0.0];

  return v2;
}

- (CKScrollViewAnimationProperties)initWithAnimationType:(int64_t)a3 duration:(double)a4 animationCurve:(int64_t)a5 springMass:(double)a6 springStiffness:(double)a7 springDamping:(double)a8
{
  v15.receiver = self;
  v15.super_class = CKScrollViewAnimationProperties;
  result = [(CKScrollViewAnimationProperties *)&v15 init];
  if (result)
  {
    result->_animationType = a3;
    result->_duration = a4;
    result->_animationCurve = a5;
    result->_springMass = a6;
    result->_springStiffness = a7;
    result->_springDamping = a8;
  }

  return result;
}

+ (id)inheritedAnimation
{
  v2 = [[CKScrollViewAnimationProperties alloc] initWithAnimationType:2 duration:3 animationCurve:0.0 springMass:0.0 springStiffness:0.0 springDamping:0.0];

  return v2;
}

+ (id)animatedWithDuration:(double)a3 animationCurve:(int64_t)a4
{
  v4 = [[CKScrollViewAnimationProperties alloc] initWithAnimationType:1 duration:a4 animationCurve:a3 springMass:0.0 springStiffness:0.0 springDamping:0.0];

  return v4;
}

+ (id)springAnimationWithMass:(double)a3 stiffness:(double)a4 damping:(double)a5 duration:(double)a6
{
  v6 = [[CKScrollViewAnimationProperties alloc] initWithAnimationType:1 duration:3 animationCurve:a6 springMass:a3 springStiffness:a4 springDamping:a5];

  return v6;
}

+ (id)systemDefaultScrollAnimation
{
  v2 = [[CKScrollViewAnimationProperties alloc] initWithAnimationType:1 duration:0 animationCurve:0.3 springMass:0.0 springStiffness:0.0 springDamping:0.0];

  return v2;
}

- (BOOL)isEqualToAnimationProperties:(id)a3
{
  v4 = a3;
  v5 = self->_animationType == *(v4 + 1) && self->_duration == v4[2] && self->_animationCurve == *(v4 + 3) && self->_springMass == v4[4] && self->_springStiffness == v4[5] && self->_springDamping == v4[6];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CKScrollViewAnimationProperties *)self isEqualToAnimationProperties:v4];

  return v5;
}

- (void)performAnimationBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  animationType = self->_animationType;
  if (animationType == 2)
  {
    v8 = v4;
    (*(v4 + 2))(v4);
  }

  else if (animationType == 1)
  {
    v8 = v4;
    v7 = [(CKScrollViewAnimationProperties *)self propertyAnimator];
    [v7 addAnimations:v8];
    [v7 startAnimation];
  }

  else
  {
    if (animationType)
    {
      goto LABEL_8;
    }

    v8 = v4;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v4];
  }

  v5 = v8;
LABEL_8:
}

@end