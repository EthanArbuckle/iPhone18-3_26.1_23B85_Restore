@interface HUAnimationApplier
+ (id)_applierWithAnimationSettings:(id)a3 applyDynamically:(BOOL)a4;
+ (id)_applyAnimationSettings:(id)a3 withApplier:(id)a4 completion:(id)a5 applyDynamically:(BOOL)a6;
- (BOOL)addAlongsideAnimationApplier:(id)a3 relativeStart:(double)a4 relativeDuration:(double)a5;
- (BOOL)cancel;
- (BOOL)complete:(BOOL)a3;
- (BOOL)notifyUponEffectiveProgress:(double)a3 withBlock:(id)a4;
- (BOOL)start;
- (HUAnimationApplier)init;
- (HUAnimationApplier)initWithAnimationSettings:(id)a3;
- (HUAnimationSettings)animationSettings;
- (double)_effectiveDuration;
- (double)_remainingTimeIntervalForEffectiveProgress:(double)a3;
- (double)effectiveProgress;
- (void)_displayLinkTick;
- (void)_invalidateDisplayLinkIfNecessary;
- (void)_startEffectiveProgressTimerForObserver:(id)a3;
- (void)_updateDynamicProgress:(double)a3;
@end

@implementation HUAnimationApplier

+ (id)_applyAnimationSettings:(id)a3 withApplier:(id)a4 completion:(id)a5 applyDynamically:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [a1 _applierWithAnimationSettings:v10 applyDynamically:v6];
  [HUApplier registerStandaloneApplier:v13];
  objc_initWeak(&location, v13);
  [v13 addApplierBlock:v11];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __86__HUAnimationApplier__applyAnimationSettings_withApplier_completion_applyDynamically___block_invoke;
  v16[3] = &unk_277DB7940;
  v14 = v12;
  v17 = v14;
  objc_copyWeak(&v18, &location);
  [v13 addCompletionBlock:v16];
  [v13 start];
  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);

  return v13;
}

void __86__HUAnimationApplier__applyAnimationSettings_withApplier_completion_applyDynamically___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [HUApplier unregisterStandaloneApplier:WeakRetained];
}

+ (id)_applierWithAnimationSettings:(id)a3 applyDynamically:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [[a1 alloc] initWithAnimationSettings:v6];

  [v7 setApplyDynamically:v4];

  return v7;
}

- (HUAnimationApplier)initWithAnimationSettings:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"HUAnimationApplier.m" lineNumber:139 description:{@"Invalid parameter not satisfying: %@", @"settings"}];
  }

  v15.receiver = self;
  v15.super_class = HUAnimationApplier;
  v6 = [(HUApplier *)&v15 init];
  if (v6)
  {
    v7 = [v5 copy];
    animationSettings = v6->_animationSettings;
    v6->_animationSettings = v7;

    v9 = [MEMORY[0x277CBEB58] set];
    relativeAnimations = v6->_relativeAnimations;
    v6->_relativeAnimations = v9;

    v11 = [MEMORY[0x277CBEB58] set];
    effectiveProgressObservers = v6->_effectiveProgressObservers;
    v6->_effectiveProgressObservers = v11;
  }

  return v6;
}

- (HUAnimationApplier)init
{
  [(HUAnimationApplier *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (HUAnimationSettings)animationSettings
{
  v2 = [(HUAnimationSettings *)self->_animationSettings copy];

  return v2;
}

- (double)effectiveProgress
{
  if ([(HUApplier *)self state]== 1)
  {
    v3 = CACurrentMediaTime();
    [(HUAnimationApplier *)self startTime];
    v5 = v3 - v4;
    [(HUAnimationApplier *)self _effectiveDuration];
    return v5 / v6;
  }

  else
  {

    [(HUApplier *)self progress];
  }

  return result;
}

- (double)_effectiveDuration
{
  v2 = [(HUAnimationApplier *)self animationSettings];
  [v2 durationWithSpeed];
  v4 = v3;
  UIAnimationDragCoefficient();
  v6 = v4 * v5;

  return v6;
}

- (BOOL)addAlongsideAnimationApplier:(id)a3 relativeStart:(double)a4 relativeDuration:(double)a5
{
  v8 = a3;
  if (-[HUApplier state](self, "state") || [v8 state])
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    if (a4 >= 0.0 && a4 + a5 <= 1.0)
    {
      v11 = [(HUAnimationApplier *)self relativeAnimations];
      v12 = [[HURelativeAnimation alloc] initWithAnimationApplier:v8 relativeStart:a4 relativeDuration:a5];
      [v11 addObject:v12];

      v9 = 1;
    }
  }

  return v9;
}

- (double)_remainingTimeIntervalForEffectiveProgress:(double)a3
{
  [(HUAnimationApplier *)self effectiveProgress];
  v6 = v5;
  result = 0.0;
  if (v6 < a3)
  {
    v8 = a3 - v6;
    [(HUAnimationApplier *)self _effectiveDuration];
    return v8 * v9;
  }

  return result;
}

- (BOOL)notifyUponEffectiveProgress:(double)a3 withBlock:(id)a4
{
  v7 = a4;
  if (!v7)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"HUAnimationApplier.m" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"notifyBlock"}];
  }

  v8 = [(HUApplier *)self state];
  if (v8 != 2)
  {
    v9 = [[HUEffectiveProgressObserver alloc] initWithTargetEffectiveProgress:v7 observerBlock:a3];
    v10 = [(HUAnimationApplier *)self effectiveProgressObservers];
    [v10 addObject:v9];

    if ([(HUApplier *)self state]== 1 || [(HUApplier *)self state]== 3)
    {
      [(HUAnimationApplier *)self _startEffectiveProgressTimerForObserver:v9];
    }
  }

  return v8 != 2;
}

- (void)_startEffectiveProgressTimerForObserver:(id)a3
{
  v4 = a3;
  [v4 targetEffectiveProgress];
  [(HUAnimationApplier *)self _remainingTimeIntervalForEffectiveProgress:?];
  v6 = v5;
  if (v5 <= 0.00000011920929)
  {
    v10 = [v4 observerBlock];
    v10[2]();

    v11 = [(HUAnimationApplier *)self effectiveProgressObservers];
    [v11 removeObject:v4];
  }

  else
  {
    objc_initWeak(&location, self);
    v7 = [MEMORY[0x277D2C938] mainThreadScheduler];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__HUAnimationApplier__startEffectiveProgressTimerForObserver___block_invoke;
    v12[3] = &unk_277DBA860;
    objc_copyWeak(&v14, &location);
    v8 = v4;
    v13 = v8;
    v9 = [v7 afterDelay:v12 performBlock:v6];

    [v8 setTimerCancellationToken:v9];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __62__HUAnimationApplier__startEffectiveProgressTimerForObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [*(a1 + 32) observerBlock];
    v3[2]();

    v4 = [v5 effectiveProgressObservers];
    [v4 removeObject:*(a1 + 32)];

    WeakRetained = v5;
  }
}

- (BOOL)start
{
  v59 = *MEMORY[0x277D85DE8];
  v56.receiver = self;
  v56.super_class = HUAnimationApplier;
  v3 = [(HUApplier *)&v56 start];
  if (v3)
  {
    [(HUAnimationApplier *)self setStartTime:CACurrentMediaTime()];
    if ([(HUAnimationApplier *)self applyDynamically])
    {
      [(HUAnimationApplier *)self _effectiveDuration];
      if (v4 >= 0.00000011920929)
      {
        v13 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__displayLinkTick];
        [(HUAnimationApplier *)self setDisplayLink:v13];

        v14 = [(HUAnimationApplier *)self displayLink];
        v15 = [MEMORY[0x277CBEB88] mainRunLoop];
        [v14 addToRunLoop:v15 forMode:*MEMORY[0x277CBE738]];

        v16 = [(HUAnimationApplier *)self displayLink];
        v60 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
        [v16 setPreferredFrameRateRange:{*&v60.minimum, *&v60.maximum, *&v60.preferred}];

        v17 = [(HUAnimationApplier *)self displayLink];
        [v17 setHighFrameRateReason:1769473];

        [(HUAnimationApplier *)self _displayLinkTick];
      }

      else
      {
        [(HUAnimationApplier *)self _updateDynamicProgress:1.0];
      }
    }

    else
    {
      v5 = MEMORY[0x277D75D18];
      v6 = [(HUAnimationApplier *)self animationSettings];
      [v6 duration];
      v8 = v7;
      v9 = [(HUAnimationApplier *)self animationSettings];
      [v9 delay];
      v11 = v10;
      v12 = [(HUAnimationApplier *)self animationSettings];
      v54[4] = self;
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __27__HUAnimationApplier_start__block_invoke;
      v55[3] = &unk_277DB8488;
      v55[4] = self;
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __27__HUAnimationApplier_start__block_invoke_3;
      v54[3] = &unk_277DB8C28;
      [v5 _animateWithDuration:393798 delay:v12 options:v55 factory:v54 animations:v8 completion:v11];
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v18 = [(HUAnimationApplier *)self relativeAnimations];
    v19 = [v18 countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v51;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v51 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v50 + 1) + 8 * i);
          v24 = [v23 applier];
          v25 = [v24 animationSettings];

          [v23 relativeStart];
          v27 = v26;
          v28 = [(HUAnimationApplier *)self animationSettings];
          [v28 durationWithSpeed];
          [v25 setDelay:v27 * v29];

          [v23 relativeDuration];
          v31 = v30;
          v32 = [(HUAnimationApplier *)self animationSettings];
          [v32 durationWithSpeed];
          v34 = v31 * v33;

          [v25 durationWithSpeed];
          v36 = v35 / v34;
          [v25 speed];
          [v25 setSpeed:v37 * v36];
          v38 = [v23 applier];
          [v38 setAnimationSettings:v25];

          v39 = [v23 applier];
          [v39 start];
        }

        v20 = [v18 countByEnumeratingWithState:&v50 objects:v58 count:16];
      }

      while (v20);
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v40 = [(HUAnimationApplier *)self effectiveProgressObservers];
    v41 = [v40 countByEnumeratingWithState:&v46 objects:v57 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v47;
      do
      {
        for (j = 0; j != v42; ++j)
        {
          if (*v47 != v43)
          {
            objc_enumerationMutation(v40);
          }

          [(HUAnimationApplier *)self _startEffectiveProgressTimerForObserver:*(*(&v46 + 1) + 8 * j)];
        }

        v42 = [v40 countByEnumeratingWithState:&v46 objects:v57 count:16];
      }

      while (v42);
    }
  }

  return v3;
}

uint64_t __27__HUAnimationApplier_start__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__HUAnimationApplier_start__block_invoke_2;
  v4[3] = &unk_277DB8488;
  v4[4] = *(a1 + 32);
  return [v2 _modifyAnimationsWithPreferredFrameRateRange:1769473 updateReason:v4 animations:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

- (void)_updateDynamicProgress:(double)a3
{
  v4 = fmin(fmax(a3, 0.0), 1.0);
  if (v4 + -1.0 >= -0.00000011920929)
  {
    [(HUApplier *)self updateProgress:1.0];

    [(HUAnimationApplier *)self complete:1];
  }

  else
  {
    v5 = [(HUAnimationApplier *)self animationSettings];
    [v5 interpolatedProgressForProgress:v4];
    v7 = v6;

    [(HUApplier *)self updateProgress:v7];
  }
}

- (void)_displayLinkTick
{
  v3 = CACurrentMediaTime();
  [(HUAnimationApplier *)self startTime];
  v5 = v3 - v4;
  v6 = [(HUAnimationApplier *)self animationSettings];
  [v6 delay];
  v8 = v5 - v7;

  if (v8 >= 0.0)
  {
    [(HUAnimationApplier *)self _effectiveDuration];
    v10 = v8 / v9;

    [(HUAnimationApplier *)self _updateDynamicProgress:v10];
  }
}

- (void)_invalidateDisplayLinkIfNecessary
{
  v3 = [(HUAnimationApplier *)self displayLink];
  [v3 invalidate];

  [(HUAnimationApplier *)self setDisplayLink:0];
}

- (BOOL)cancel
{
  v28 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = HUAnimationApplier;
  v3 = [(HUApplier *)&v25 cancel];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [(HUAnimationApplier *)self relativeAnimations];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v21 + 1) + 8 * v8) applier];
        [v9 cancel];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v6);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [(HUAnimationApplier *)self effectiveProgressObservers];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v17 + 1) + 8 * v14) timerCancellationToken];
        [v15 cancel];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v26 count:16];
    }

    while (v12);
  }

  return v3;
}

- (BOOL)complete:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = HUAnimationApplier;
  v4 = [(HUApplier *)&v6 complete:a3];
  if (v4)
  {
    [(HUAnimationApplier *)self _invalidateDisplayLinkIfNecessary];
  }

  return v4;
}

@end