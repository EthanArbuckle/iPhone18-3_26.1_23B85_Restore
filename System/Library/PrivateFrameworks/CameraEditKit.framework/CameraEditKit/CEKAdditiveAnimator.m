@interface CEKAdditiveAnimator
- (BOOL)isAnimating;
- (BOOL)isAnimatingForKey:(id)a3;
- (CEKAdditiveAnimator)init;
- (CEKAdditiveAnimatorDelegate)delegate;
- (double)valueForKey:(id)a3;
- (void)_handleDisplayLinkFired:(id)a3;
- (void)_updateDisplayLink;
- (void)dealloc;
- (void)removeAnimationsForKey:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setValue:(double)a3 forKey:(id)a4;
- (void)setValue:(double)a3 forKey:(id)a4 duration:(double)a5 timingCurve:(id)a6;
@end

@implementation CEKAdditiveAnimator

- (CEKAdditiveAnimator)init
{
  v8.receiver = self;
  v8.super_class = CEKAdditiveAnimator;
  v2 = [(CEKAdditiveAnimator *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    values = v2->__values;
    v2->__values = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    animations = v2->__animations;
    v2->__animations = v5;
  }

  return v2;
}

- (BOOL)isAnimating
{
  v2 = [(CEKAdditiveAnimator *)self _animations];
  v3 = [v2 count] != 0;

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

- (BOOL)isAnimatingForKey:(id)a3
{
  v4 = a3;
  v5 = [(CEKAdditiveAnimator *)self _animations];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6 != 0;
}

- (void)setValue:(double)a3 forKey:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v9 = [v6 numberWithDouble:a3];
  v8 = [(CEKAdditiveAnimator *)self _values];
  [v8 setObject:v9 forKeyedSubscript:v7];
}

- (double)valueForKey:(id)a3
{
  v4 = a3;
  v5 = [(CEKAdditiveAnimator *)self _values];
  v6 = [v5 objectForKeyedSubscript:v4];

  [v6 doubleValue];
  v8 = v7;
  if ([(CEKAdditiveAnimator *)self isAnimatingForKey:v4])
  {
    v9 = [(CEKAdditiveAnimator *)self _animations];
    v10 = [v9 objectForKeyedSubscript:v4];
    [v10 value];
    v8 = v11;
  }

  return v8;
}

- (void)setValue:(double)a3 forKey:(id)a4 duration:(double)a5 timingCurve:(id)a6
{
  v21 = a4;
  v10 = a6;
  v11 = [(CEKAdditiveAnimator *)self _values];
  v12 = [v11 objectForKeyedSubscript:v21];

  if (a5 == 0.0 || !v12)
  {
    [(CEKAdditiveAnimator *)self setValue:v21 forKey:a3];
  }

  else
  {
    [v12 doubleValue];
    if (v13 != a3)
    {
      v14 = [(CEKAdditiveAnimator *)self _animations];
      v15 = [v14 objectForKeyedSubscript:v21];

      if (v15)
      {
        v16 = [CAMAdditiveAnimation animationToValue:v15 fromAnimation:v10 duration:a3 curve:a5];
      }

      else
      {
        [(CEKAdditiveAnimator *)self valueForKey:v21];
        v16 = [CAMAdditiveAnimation animationToValue:v10 fromValue:a3 duration:v17 curve:a5];
      }

      v18 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
      v19 = [(CEKAdditiveAnimator *)self _values];
      [v19 setObject:v18 forKeyedSubscript:v21];

      v20 = [(CEKAdditiveAnimator *)self _animations];
      [v20 setObject:v16 forKeyedSubscript:v21];

      [(CEKAdditiveAnimator *)self _updateDisplayLink];
    }
  }
}

- (void)removeAnimationsForKey:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CEKAdditiveAnimator *)self _animations];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [(CEKAdditiveAnimator *)self _animations];
    [v7 setObject:0 forKeyedSubscript:v4];

    [(CEKAdditiveAnimator *)self _updateDisplayLink];
    v8 = [(CEKAdditiveAnimator *)self delegate];
    v10[0] = v4;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [v8 animator:self didUpdateValuesForKeys:v9];
  }
}

- (void)_updateDisplayLink
{
  v3 = [(CEKAdditiveAnimator *)self isAnimating];
  v4 = [(CEKAdditiveAnimator *)self _displayLink];
  v5 = v4;
  if (v3 && !v4)
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
    v8 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [v5 addToRunLoop:v8 forMode:*MEMORY[0x1E695DA28]];

    [(CEKAdditiveAnimator *)self set_displayLink:v5];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  [v5 setPaused:!v3];
}

void __41__CEKAdditiveAnimator__updateDisplayLink__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDisplayLinkFired:v3];
}

- (void)_handleDisplayLinkFired:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CEKAdditiveAnimator *)self _animations];
  [v4 targetTimestamp];
  v7 = v6;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = [v5 allValues];
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
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
          objc_enumerationMutation(v8);
        }

        [*(*(&v26 + 1) + 8 * i) updateWithTimestamp:v7];
      }

      v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  v13 = [v5 allKeys];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * j);
        v19 = [v5 objectForKeyedSubscript:v18];
        if ([v19 isFinished])
        {
          [v5 setObject:0 forKeyedSubscript:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v15);
  }

  [(CEKAdditiveAnimator *)self _updateDisplayLink];
  v20 = [(CEKAdditiveAnimator *)self delegate];
  [v20 animator:self didUpdateValuesForKeys:v13];

  if (![v5 count] && self->_delegateFlags.respondsToDidFinishAnimationForAllKeys)
  {
    v21 = [(CEKAdditiveAnimator *)self delegate];
    [v21 animator:self didFinishAnimationForAllKeys:v13];
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
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