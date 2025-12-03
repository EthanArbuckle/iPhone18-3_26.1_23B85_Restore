@interface MPUAnimationFactory
- (MPUAnimationFactory)init;
- (id)_basicAnimationForView:(id)view withKeyPath:(id)path;
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

- (id)_basicAnimationForView:(id)view withKeyPath:(id)path
{
  pathCopy = path;
  allowedKeyPaths = [(MPUAnimationFactory *)self allowedKeyPaths];
  v7 = allowedKeyPaths;
  if (allowedKeyPaths && ![allowedKeyPaths containsObject:pathCopy])
  {
    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CD9E10] animationWithKeyPath:pathCopy];
    [v8 setTimeOffset:self->_timeOffset];
    [v8 setFillMode:self->_fillMode];
    [v8 setRemovedOnCompletion:self->_removedOnCompletion];
  }

  return v8;
}

@end