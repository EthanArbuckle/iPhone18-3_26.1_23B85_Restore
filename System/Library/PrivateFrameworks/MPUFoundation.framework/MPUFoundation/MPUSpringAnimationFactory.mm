@interface MPUSpringAnimationFactory
+ (void)animateUsingSpringWithDamping:(double)damping mass:(double)mass stiffness:(double)stiffness velocity:(double)velocity animations:(id)animations options:(unint64_t)options completion:(id)completion;
- (double)durationForEpsilon:(double)epsilon;
- (id)_basicAnimationForView:(id)view withKeyPath:(id)path;
- (id)_newSpringAnimationForKeyPath:(id)path;
@end

@implementation MPUSpringAnimationFactory

+ (void)animateUsingSpringWithDamping:(double)damping mass:(double)mass stiffness:(double)stiffness velocity:(double)velocity animations:(id)animations options:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
  animationsCopy = animations;
  v18 = objc_alloc_init(MPUSpringAnimationFactory);
  [(MPUSpringAnimationFactory *)v18 setMass:mass];
  [(MPUSpringAnimationFactory *)v18 setStiffness:stiffness];
  [(MPUSpringAnimationFactory *)v18 setDamping:damping];
  [(MPUSpringAnimationFactory *)v18 setVelocity:velocity];
  [(MPUSpringAnimationFactory *)v18 durationForEpsilon:0.001];
  [MEMORY[0x277D75D18] _animateWithDuration:options | 0x30000 delay:v18 options:animationsCopy factory:completionCopy animations:fmin(v17 completion:{1.0), 0.0}];
}

- (id)_basicAnimationForView:(id)view withKeyPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  allowedKeyPaths = [(MPUAnimationFactory *)self allowedKeyPaths];
  v9 = allowedKeyPaths;
  if (allowedKeyPaths && ![allowedKeyPaths containsObject:pathCopy])
  {
    v13.receiver = self;
    v13.super_class = MPUSpringAnimationFactory;
    v10 = [(MPUAnimationFactory *)&v13 _basicAnimationForView:viewCopy withKeyPath:pathCopy];
  }

  else
  {
    v10 = [(MPUSpringAnimationFactory *)self _newSpringAnimationForKeyPath:pathCopy];
  }

  v11 = v10;

  return v11;
}

- (double)durationForEpsilon:(double)epsilon
{
  v4 = [(MPUSpringAnimationFactory *)self _newSpringAnimationForKeyPath:0];
  [v4 durationForEpsilon:epsilon];
  v6 = v5;

  return v6;
}

- (id)_newSpringAnimationForKeyPath:(id)path
{
  v4 = [MEMORY[0x277CD9FA0] animationWithKeyPath:path];
  [v4 setMass:self->_mass];
  [v4 setStiffness:self->_stiffness];
  [v4 setDamping:self->_damping];
  [v4 setVelocity:self->_velocity];
  fillMode = [(MPUAnimationFactory *)self fillMode];
  [v4 setFillMode:fillMode];

  [v4 setRemovedOnCompletion:{-[MPUAnimationFactory isRemovedOnCompletion](self, "isRemovedOnCompletion")}];
  [(MPUAnimationFactory *)self timeOffset];
  [v4 setTimeOffset:?];
  return v4;
}

@end