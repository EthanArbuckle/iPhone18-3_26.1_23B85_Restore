@interface HKPropertyAnimationApplier
- (HKPropertyAnimationApplier)init;
- (void)_applyAnimations;
- (void)_cleanupCompletedAnimations;
- (void)_displayLinkFired:(id)fired;
- (void)_startDisplayLinkIfNecessary;
- (void)_stopDisplayLinkIfNecessary;
- (void)applyAnimation:(id)animation;
- (void)cancelAnimationsForProperty:(id)property;
@end

@implementation HKPropertyAnimationApplier

- (HKPropertyAnimationApplier)init
{
  v6.receiver = self;
  v6.super_class = HKPropertyAnimationApplier;
  v2 = [(HKPropertyAnimationApplier *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    animations = v2->_animations;
    v2->_animations = v3;
  }

  return v2;
}

- (void)applyAnimation:(id)animation
{
  animationCopy = animation;
  [animationCopy _validate];
  v8 = [animationCopy copy];

  date = [MEMORY[0x1E695DF00] date];
  [v8 setAppliedDate:date];

  animations = self->_animations;
  property = [v8 property];
  [(NSMutableDictionary *)animations setObject:v8 forKeyedSubscript:property];

  [(HKPropertyAnimationApplier *)self _startDisplayLinkIfNecessary];
}

- (void)cancelAnimationsForProperty:(id)property
{
  animations = self->_animations;
  propertyCopy = property;
  v6 = [(NSMutableDictionary *)animations objectForKey:propertyCopy];
  [v6 _finishCancelled:1];
  [(NSMutableDictionary *)self->_animations removeObjectForKey:propertyCopy];

  [(HKPropertyAnimationApplier *)self _stopDisplayLinkIfNecessary];
}

- (void)_startDisplayLinkIfNecessary
{
  if (!self->_displayLink)
  {
    v4 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__displayLinkFired_];
    displayLink = self->_displayLink;
    self->_displayLink = v4;

    v6 = self->_displayLink;
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v6 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];
  }
}

- (void)_stopDisplayLinkIfNecessary
{
  if (![(NSMutableDictionary *)self->_animations count])
  {
    [(CADisplayLink *)self->_displayLink invalidate];
    displayLink = self->_displayLink;
    self->_displayLink = 0;
  }
}

- (void)_displayLinkFired:(id)fired
{
  [(HKPropertyAnimationApplier *)self _applyAnimations];
  [(HKPropertyAnimationApplier *)self _cleanupCompletedAnimations];

  [(HKPropertyAnimationApplier *)self _stopDisplayLinkIfNecessary];
}

- (void)_applyAnimations
{
  v14 = *MEMORY[0x1E69E9840];
  date = [MEMORY[0x1E695DF00] date];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allValues = [(NSMutableDictionary *)self->_animations allValues];
  v5 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v9 + 1) + 8 * v8++) _applyWithCurrentDate:date];
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_cleanupCompletedAnimations
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [(NSMutableDictionary *)self->_animations allValues];
  v4 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 _isCompleted])
        {
          date = [MEMORY[0x1E695DF00] date];
          [v8 _applyWithCurrentDate:date];

          [v8 _finishCancelled:0];
          animations = self->_animations;
          property = [v8 property];
          [(NSMutableDictionary *)animations removeObjectForKey:property];
        }
      }

      v5 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

@end