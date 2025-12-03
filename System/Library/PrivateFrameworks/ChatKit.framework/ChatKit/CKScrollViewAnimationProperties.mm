@interface CKScrollViewAnimationProperties
+ (id)animatedWithDuration:(double)duration animationCurve:(int64_t)curve;
+ (id)inheritedAnimation;
+ (id)springAnimationWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping duration:(double)duration;
+ (id)systemDefaultScrollAnimation;
+ (id)unanimated;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAnimationProperties:(id)properties;
- (CABasicAnimation)caBasicAnimation;
- (CKScrollViewAnimationProperties)initWithAnimationType:(int64_t)type duration:(double)duration animationCurve:(int64_t)curve springMass:(double)mass springStiffness:(double)stiffness springDamping:(double)damping;
- (UIViewPropertyAnimator)propertyAnimator;
- (id)description;
- (unint64_t)hash;
- (void)performAnimationBlock:(id)block;
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

- (CKScrollViewAnimationProperties)initWithAnimationType:(int64_t)type duration:(double)duration animationCurve:(int64_t)curve springMass:(double)mass springStiffness:(double)stiffness springDamping:(double)damping
{
  v15.receiver = self;
  v15.super_class = CKScrollViewAnimationProperties;
  result = [(CKScrollViewAnimationProperties *)&v15 init];
  if (result)
  {
    result->_animationType = type;
    result->_duration = duration;
    result->_animationCurve = curve;
    result->_springMass = mass;
    result->_springStiffness = stiffness;
    result->_springDamping = damping;
  }

  return result;
}

+ (id)inheritedAnimation
{
  v2 = [[CKScrollViewAnimationProperties alloc] initWithAnimationType:2 duration:3 animationCurve:0.0 springMass:0.0 springStiffness:0.0 springDamping:0.0];

  return v2;
}

+ (id)animatedWithDuration:(double)duration animationCurve:(int64_t)curve
{
  v4 = [[CKScrollViewAnimationProperties alloc] initWithAnimationType:1 duration:curve animationCurve:duration springMass:0.0 springStiffness:0.0 springDamping:0.0];

  return v4;
}

+ (id)springAnimationWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping duration:(double)duration
{
  v6 = [[CKScrollViewAnimationProperties alloc] initWithAnimationType:1 duration:3 animationCurve:duration springMass:mass springStiffness:stiffness springDamping:damping];

  return v6;
}

+ (id)systemDefaultScrollAnimation
{
  v2 = [[CKScrollViewAnimationProperties alloc] initWithAnimationType:1 duration:0 animationCurve:0.3 springMass:0.0 springStiffness:0.0 springDamping:0.0];

  return v2;
}

- (BOOL)isEqualToAnimationProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = self->_animationType == *(propertiesCopy + 1) && self->_duration == propertiesCopy[2] && self->_animationCurve == *(propertiesCopy + 3) && self->_springMass == propertiesCopy[4] && self->_springStiffness == propertiesCopy[5] && self->_springDamping == propertiesCopy[6];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CKScrollViewAnimationProperties *)self isEqualToAnimationProperties:equalCopy];

  return v5;
}

- (void)performAnimationBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  animationType = self->_animationType;
  if (animationType == 2)
  {
    v8 = blockCopy;
    (*(blockCopy + 2))(blockCopy);
  }

  else if (animationType == 1)
  {
    v8 = blockCopy;
    propertyAnimator = [(CKScrollViewAnimationProperties *)self propertyAnimator];
    [propertyAnimator addAnimations:v8];
    [propertyAnimator startAnimation];
  }

  else
  {
    if (animationType)
    {
      goto LABEL_8;
    }

    v8 = blockCopy;
    [MEMORY[0x1E69DD250] performWithoutAnimation:blockCopy];
  }

  v5 = v8;
LABEL_8:
}

@end