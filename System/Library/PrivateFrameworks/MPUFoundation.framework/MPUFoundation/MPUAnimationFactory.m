@interface MPUAnimationFactory
- (MPUAnimationFactory)init;
- (id)_basicAnimationForView:(id)a3 withKeyPath:(id)a4;
@end

@implementation MPUAnimationFactory

- (MPUAnimationFactory)init
{
  v5.receiver = self;
  v5.super_class = MPUAnimationFactory;
  v2 = [(MPUAnimationFactory *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_fillMode, *MEMORY[0x277CDA240]);
    v3->_removedOnCompletion = 1;
  }

  return v3;
}

- (id)_basicAnimationForView:(id)a3 withKeyPath:(id)a4
{
  v5 = a4;
  v6 = [(MPUAnimationFactory *)self allowedKeyPaths];
  v7 = v6;
  if (v6 && ![v6 containsObject:v5])
  {
    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CD9E10] animationWithKeyPath:v5];
    [v8 setTimeOffset:self->_timeOffset];
    [v8 setFillMode:self->_fillMode];
    [v8 setRemovedOnCompletion:self->_removedOnCompletion];
  }

  return v8;
}

@end