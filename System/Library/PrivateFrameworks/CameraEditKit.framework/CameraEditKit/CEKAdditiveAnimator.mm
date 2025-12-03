@interface CEKAdditiveAnimator
- (BOOL)isAnimating;
- (BOOL)isAnimatingForKey:(id)key;
- (CEKAdditiveAnimator)init;
- (CEKAdditiveAnimatorDelegate)delegate;
- (double)valueForKey:(id)key;
- (void)_handleDisplayLinkFired:(id)fired;
- (void)_updateDisplayLink;
- (void)dealloc;
- (void)removeAnimationsForKey:(id)key;
- (void)setDelegate:(id)delegate;
- (void)setValue:(double)value forKey:(id)key;
- (void)setValue:(double)value forKey:(id)key duration:(double)duration timingCurve:(id)curve;
@end

@implementation CEKAdditiveAnimator

- (CEKAdditiveAnimator)init
{
  v8.receiver = self;
  v8.super_class = CEKAdditiveAnimator;
  v2 = [(CEKAdditiveAnimator *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    values = v2->__values;
    v2->__values = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    animations = v2->__animations;
    v2->__animations = dictionary2;
  }

  return v2;
}

- (BOOL)isAnimating
{
  _animations = [(CEKAdditiveAnimator *)self _animations];
  v3 = [_animations count] != 0;

  return v3;
}

- (void)dealloc
{
  [(CADisplayLink *)self->__displayLink invalidate];
  displayLink = self->__displayLink;
  self->__displayLink = 0;

  v4.receiver = self;
  v4.super_class = CEKAdditiveAnimator;
  [(CEKAdditiveAnimator *)&v4 dealloc];
}

- (BOOL)isAnimatingForKey:(id)key
{
  keyCopy = key;
  _animations = [(CEKAdditiveAnimator *)self _animations];
  v6 = [_animations objectForKeyedSubscript:keyCopy];

  return v6 != 0;
}

- (void)setValue:(double)value forKey:(id)key
{
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  v9 = [v6 numberWithDouble:value];
  _values = [(CEKAdditiveAnimator *)self _values];
  [_values setObject:v9 forKeyedSubscript:keyCopy];
}

- (double)valueForKey:(id)key
{
  keyCopy = key;
  _values = [(CEKAdditiveAnimator *)self _values];
  v6 = [_values objectForKeyedSubscript:keyCopy];

  [v6 doubleValue];
  v8 = v7;
  if ([(CEKAdditiveAnimator *)self isAnimatingForKey:keyCopy])
  {
    _animations = [(CEKAdditiveAnimator *)self _animations];
    v10 = [_animations objectForKeyedSubscript:keyCopy];
    [v10 value];
    v8 = v11;
  }

  return v8;
}

- (void)setValue:(double)value forKey:(id)key duration:(double)duration timingCurve:(id)curve
{
  keyCopy = key;
  curveCopy = curve;
  _values = [(CEKAdditiveAnimator *)self _values];
  v12 = [_values objectForKeyedSubscript:keyCopy];

  if (duration == 0.0 || !v12)
  {
    [(CEKAdditiveAnimator *)self setValue:keyCopy forKey:value];
  }

  else
  {
    [v12 doubleValue];
    if (v13 != value)
    {
      _animations = [(CEKAdditiveAnimator *)self _animations];
      v15 = [_animations objectForKeyedSubscript:keyCopy];

      if (v15)
      {
        v16 = [CAMAdditiveAnimation animationToValue:v15 fromAnimation:curveCopy duration:value curve:duration];
      }

      else
      {
        [(CEKAdditiveAnimator *)self valueForKey:keyCopy];
        v16 = [CAMAdditiveAnimation animationToValue:curveCopy fromValue:value duration:v17 curve:duration];
      }

      v18 = [MEMORY[0x1E696AD98] numberWithDouble:value];
      _values2 = [(CEKAdditiveAnimator *)self _values];
      [_values2 setObject:v18 forKeyedSubscript:keyCopy];

      _animations2 = [(CEKAdditiveAnimator *)self _animations];
      [_animations2 setObject:v16 forKeyedSubscript:keyCopy];

      [(CEKAdditiveAnimator *)self _updateDisplayLink];
    }
  }
}

- (void)removeAnimationsForKey:(id)key
{
  v10[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  _animations = [(CEKAdditiveAnimator *)self _animations];
  v6 = [_animations objectForKeyedSubscript:keyCopy];

  if (v6)
  {
    _animations2 = [(CEKAdditiveAnimator *)self _animations];
    [_animations2 setObject:0 forKeyedSubscript:keyCopy];

    [(CEKAdditiveAnimator *)self _updateDisplayLink];
    delegate = [(CEKAdditiveAnimator *)self delegate];
    v10[0] = keyCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [delegate animator:self didUpdateValuesForKeys:v9];
  }
}

- (void)_updateDisplayLink
{
  isAnimating = [(CEKAdditiveAnimator *)self isAnimating];
  _displayLink = [(CEKAdditiveAnimator *)self _displayLink];
  v5 = _displayLink;
  if (isAnimating && !_displayLink)
  {
    objc_initWeak(&location, self);
    v6 = [CEKDisplayLinkTarget alloc];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __41__CEKAdditiveAnimator__updateDisplayLink__block_invoke;
    v12 = &unk_1E7CC6B60;
    objc_copyWeak(&v13, &location);
    v7 = [(CEKDisplayLinkTarget *)v6 initWithHandler:&v9];
    v5 = [MEMORY[0x1E6979330] displayLinkWithTarget:v7 selector:{sel_displayLinkDidFire_, v9, v10, v11, v12}];
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [v5 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

    [(CEKAdditiveAnimator *)self set_displayLink:v5];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  [v5 setPaused:!isAnimating];
}

void __41__CEKAdditiveAnimator__updateDisplayLink__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDisplayLinkFired:v3];
}

- (void)_handleDisplayLinkFired:(id)fired
{
  v32 = *MEMORY[0x1E69E9840];
  firedCopy = fired;
  _animations = [(CEKAdditiveAnimator *)self _animations];
  [firedCopy targetTimestamp];
  v7 = v6;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  allValues = [_animations allValues];
  v9 = [allValues countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v26 + 1) + 8 * i) updateWithTimestamp:v7];
      }

      v10 = [allValues countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  allKeys = [_animations allKeys];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = [allKeys countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(allKeys);
        }

        v18 = *(*(&v22 + 1) + 8 * j);
        v19 = [_animations objectForKeyedSubscript:v18];
        if ([v19 isFinished])
        {
          [_animations setObject:0 forKeyedSubscript:v18];
        }
      }

      v15 = [allKeys countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v15);
  }

  [(CEKAdditiveAnimator *)self _updateDisplayLink];
  delegate = [(CEKAdditiveAnimator *)self delegate];
  [delegate animator:self didUpdateValuesForKeys:allKeys];

  if (![_animations count] && self->_delegateFlags.respondsToDidFinishAnimationForAllKeys)
  {
    delegate2 = [(CEKAdditiveAnimator *)self delegate];
    [delegate2 animator:self didFinishAnimationForAllKeys:allKeys];
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateFlags.respondsToDidFinishAnimationForAllKeys = objc_opt_respondsToSelector() & 1;
  }
}

- (CEKAdditiveAnimatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end