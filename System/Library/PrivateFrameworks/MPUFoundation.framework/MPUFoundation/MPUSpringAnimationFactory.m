@interface MPUSpringAnimationFactory
+ (void)animateUsingSpringWithDamping:(double)a3 mass:(double)a4 stiffness:(double)a5 velocity:(double)a6 animations:(id)a7 options:(unint64_t)a8 completion:(id)a9;
- (double)durationForEpsilon:(double)a3;
- (id)_basicAnimationForView:(id)a3 withKeyPath:(id)a4;
- (id)_newSpringAnimationForKeyPath:(id)a3;
@end

@implementation MPUSpringAnimationFactory

+ (void)animateUsingSpringWithDamping:(double)a3 mass:(double)a4 stiffness:(double)a5 velocity:(double)a6 animations:(id)a7 options:(unint64_t)a8 completion:(id)a9
{
  v15 = a9;
  v16 = a7;
  v18 = objc_alloc_init(MPUSpringAnimationFactory);
  [(MPUSpringAnimationFactory *)v18 setMass:a4];
  [(MPUSpringAnimationFactory *)v18 setStiffness:a5];
  [(MPUSpringAnimationFactory *)v18 setDamping:a3];
  [(MPUSpringAnimationFactory *)v18 setVelocity:a6];
  [(MPUSpringAnimationFactory *)v18 durationForEpsilon:0.001];
  [MEMORY[0x277D75D18] _animateWithDuration:a8 | 0x30000 delay:v18 options:v16 factory:v15 animations:fmin(v17 completion:{1.0), 0.0}];
}

- (id)_basicAnimationForView:(id)a3 withKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MPUAnimationFactory *)self allowedKeyPaths];
  v9 = v8;
  if (v8 && ![v8 containsObject:v7])
  {
    v13.receiver = self;
    v13.super_class = MPUSpringAnimationFactory;
    v10 = [(MPUAnimationFactory *)&v13 _basicAnimationForView:v6 withKeyPath:v7];
  }

  else
  {
    v10 = [(MPUSpringAnimationFactory *)self _newSpringAnimationForKeyPath:v7];
  }

  v11 = v10;

  return v11;
}

- (double)durationForEpsilon:(double)a3
{
  v4 = [(MPUSpringAnimationFactory *)self _newSpringAnimationForKeyPath:0];
  [v4 durationForEpsilon:a3];
  v6 = v5;

  return v6;
}

- (id)_newSpringAnimationForKeyPath:(id)a3
{
  v4 = [MEMORY[0x277CD9FA0] animationWithKeyPath:a3];
  [v4 setMass:self->_mass];
  [v4 setStiffness:self->_stiffness];
  [v4 setDamping:self->_damping];
  [v4 setVelocity:self->_velocity];
  v5 = [(MPUAnimationFactory *)self fillMode];
  [v4 setFillMode:v5];

  [v4 setRemovedOnCompletion:{-[MPUAnimationFactory isRemovedOnCompletion](self, "isRemovedOnCompletion")}];
  [(MPUAnimationFactory *)self timeOffset];
  [v4 setTimeOffset:?];
  return v4;
}

@end