@interface HUAnimationApplier
+ (id)_applierWithAnimationSettings:(id)settings applyDynamically:(BOOL)dynamically;
+ (id)_applyAnimationSettings:(id)settings withApplier:(id)applier completion:(id)completion applyDynamically:(BOOL)dynamically;
- (BOOL)addAlongsideAnimationApplier:(id)applier relativeStart:(double)start relativeDuration:(double)duration;
- (BOOL)cancel;
- (BOOL)complete:(BOOL)complete;
- (BOOL)notifyUponEffectiveProgress:(double)progress withBlock:(id)block;
- (BOOL)start;
- (HUAnimationApplier)init;
- (HUAnimationApplier)initWithAnimationSettings:(id)settings;
- (HUAnimationSettings)animationSettings;
- (double)_effectiveDuration;
- (double)_remainingTimeIntervalForEffectiveProgress:(double)progress;
- (double)effectiveProgress;
- (void)_displayLinkTick;
- (void)_invalidateDisplayLinkIfNecessary;
- (void)_startEffectiveProgressTimerForObserver:(id)observer;
- (void)_updateDynamicProgress:(double)progress;
@end

@implementation HUAnimationApplier

+ (id)_applyAnimationSettings:(id)settings withApplier:(id)applier completion:(id)completion applyDynamically:(BOOL)dynamically
{
  dynamicallyCopy = dynamically;
  settingsCopy = settings;
  applierCopy = applier;
  completionCopy = completion;
  v13 = [self _applierWithAnimationSettings:settingsCopy applyDynamically:dynamicallyCopy];
  [HUApplier registerStandaloneApplier:v13];
  objc_initWeak(&location, v13);
  [v13 addApplierBlock:applierCopy];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __86__HUAnimationApplier__applyAnimationSettings_withApplier_completion_applyDynamically___block_invoke;
  v16[3] = &unk_277DB7940;
  v14 = completionCopy;
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

+ (id)_applierWithAnimationSettings:(id)settings applyDynamically:(BOOL)dynamically
{
  dynamicallyCopy = dynamically;
  settingsCopy = settings;
  v7 = [[self alloc] initWithAnimationSettings:settingsCopy];

  [v7 setApplyDynamically:dynamicallyCopy];

  return v7;
}

- (HUAnimationApplier)initWithAnimationSettings:(id)settings
{
  settingsCopy = settings;
  if (!settingsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUAnimationApplier.m" lineNumber:139 description:{@"Invalid parameter not satisfying: %@", @"settings"}];
  }

  v15.receiver = self;
  v15.super_class = HUAnimationApplier;
  v6 = [(HUApplier *)&v15 init];
  if (v6)
  {
    v7 = [settingsCopy copy];
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
  animationSettings = [(HUAnimationApplier *)self animationSettings];
  [animationSettings durationWithSpeed];
  v4 = v3;
  UIAnimationDragCoefficient();
  v6 = v4 * v5;

  return v6;
}

- (BOOL)addAlongsideAnimationApplier:(id)applier relativeStart:(double)start relativeDuration:(double)duration
{
  applierCopy = applier;
  if (-[HUApplier state](self, "state") || [applierCopy state])
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    if (start >= 0.0 && start + duration <= 1.0)
    {
      relativeAnimations = [(HUAnimationApplier *)self relativeAnimations];
      v12 = [[HURelativeAnimation alloc] initWithAnimationApplier:applierCopy relativeStart:start relativeDuration:duration];
      [relativeAnimations addObject:v12];

      v9 = 1;
    }
  }

  return v9;
}

- (double)_remainingTimeIntervalForEffectiveProgress:(double)progress
{
  [(HUAnimationApplier *)self effectiveProgress];
  v6 = v5;
  result = 0.0;
  if (v6 < progress)
  {
    v8 = progress - v6;
    [(HUAnimationApplier *)self _effectiveDuration];
    return v8 * v9;
  }

  return result;
}

- (BOOL)notifyUponEffectiveProgress:(double)progress withBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUAnimationApplier.m" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"notifyBlock"}];
  }

  state = [(HUApplier *)self state];
  if (state != 2)
  {
    v9 = [[HUEffectiveProgressObserver alloc] initWithTargetEffectiveProgress:blockCopy observerBlock:progress];
    effectiveProgressObservers = [(HUAnimationApplier *)self effectiveProgressObservers];
    [effectiveProgressObservers addObject:v9];

    if ([(HUApplier *)self state]== 1 || [(HUApplier *)self state]== 3)
    {
      [(HUAnimationApplier *)self _startEffectiveProgressTimerForObserver:v9];
    }
  }

  return state != 2;
}

- (void)_startEffectiveProgressTimerForObserver:(id)observer
{
  observerCopy = observer;
  [observerCopy targetEffectiveProgress];
  [(HUAnimationApplier *)self _remainingTimeIntervalForEffectiveProgress:?];
  v6 = v5;
  if (v5 <= 0.00000011920929)
  {
    observerBlock = [observerCopy observerBlock];
    observerBlock[2]();

    effectiveProgressObservers = [(HUAnimationApplier *)self effectiveProgressObservers];
    [effectiveProgressObservers removeObject:observerCopy];
  }

  else
  {
    objc_initWeak(&location, self);
    mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__HUAnimationApplier__startEffectiveProgressTimerForObserver___block_invoke;
    v12[3] = &unk_277DBA860;
    objc_copyWeak(&v14, &location);
    v8 = observerCopy;
    v13 = v8;
    v9 = [mainThreadScheduler afterDelay:v12 performBlock:v6];

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
  start = [(HUApplier *)&v56 start];
  if (start)
  {
    [(HUAnimationApplier *)self setStartTime:CACurrentMediaTime()];
    if ([(HUAnimationApplier *)self applyDynamically])
    {
      [(HUAnimationApplier *)self _effectiveDuration];
      if (v4 >= 0.00000011920929)
      {
        v13 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__displayLinkTick];
        [(HUAnimationApplier *)self setDisplayLink:v13];

        displayLink = [(HUAnimationApplier *)self displayLink];
        mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
        [displayLink addToRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];

        displayLink2 = [(HUAnimationApplier *)self displayLink];
        v60 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
        [displayLink2 setPreferredFrameRateRange:{*&v60.minimum, *&v60.maximum, *&v60.preferred}];

        displayLink3 = [(HUAnimationApplier *)self displayLink];
        [displayLink3 setHighFrameRateReason:1769473];

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
      animationSettings = [(HUAnimationApplier *)self animationSettings];
      [animationSettings duration];
      v8 = v7;
      animationSettings2 = [(HUAnimationApplier *)self animationSettings];
      [animationSettings2 delay];
      v11 = v10;
      animationSettings3 = [(HUAnimationApplier *)self animationSettings];
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
      [v5 _animateWithDuration:393798 delay:animationSettings3 options:v55 factory:v54 animations:v8 completion:v11];
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    relativeAnimations = [(HUAnimationApplier *)self relativeAnimations];
    v19 = [relativeAnimations countByEnumeratingWithState:&v50 objects:v58 count:16];
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
            objc_enumerationMutation(relativeAnimations);
          }

          v23 = *(*(&v50 + 1) + 8 * i);
          applier = [v23 applier];
          animationSettings4 = [applier animationSettings];

          [v23 relativeStart];
          v27 = v26;
          animationSettings5 = [(HUAnimationApplier *)self animationSettings];
          [animationSettings5 durationWithSpeed];
          [animationSettings4 setDelay:v27 * v29];

          [v23 relativeDuration];
          v31 = v30;
          animationSettings6 = [(HUAnimationApplier *)self animationSettings];
          [animationSettings6 durationWithSpeed];
          v34 = v31 * v33;

          [animationSettings4 durationWithSpeed];
          v36 = v35 / v34;
          [animationSettings4 speed];
          [animationSettings4 setSpeed:v37 * v36];
          applier2 = [v23 applier];
          [applier2 setAnimationSettings:animationSettings4];

          applier3 = [v23 applier];
          [applier3 start];
        }

        v20 = [relativeAnimations countByEnumeratingWithState:&v50 objects:v58 count:16];
      }

      while (v20);
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    effectiveProgressObservers = [(HUAnimationApplier *)self effectiveProgressObservers];
    v41 = [effectiveProgressObservers countByEnumeratingWithState:&v46 objects:v57 count:16];
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
            objc_enumerationMutation(effectiveProgressObservers);
          }

          [(HUAnimationApplier *)self _startEffectiveProgressTimerForObserver:*(*(&v46 + 1) + 8 * j)];
        }

        v42 = [effectiveProgressObservers countByEnumeratingWithState:&v46 objects:v57 count:16];
      }

      while (v42);
    }
  }

  return start;
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

- (void)_updateDynamicProgress:(double)progress
{
  v4 = fmin(fmax(progress, 0.0), 1.0);
  if (v4 + -1.0 >= -0.00000011920929)
  {
    [(HUApplier *)self updateProgress:1.0];

    [(HUAnimationApplier *)self complete:1];
  }

  else
  {
    animationSettings = [(HUAnimationApplier *)self animationSettings];
    [animationSettings interpolatedProgressForProgress:v4];
    v7 = v6;

    [(HUApplier *)self updateProgress:v7];
  }
}

- (void)_displayLinkTick
{
  v3 = CACurrentMediaTime();
  [(HUAnimationApplier *)self startTime];
  v5 = v3 - v4;
  animationSettings = [(HUAnimationApplier *)self animationSettings];
  [animationSettings delay];
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
  displayLink = [(HUAnimationApplier *)self displayLink];
  [displayLink invalidate];

  [(HUAnimationApplier *)self setDisplayLink:0];
}

- (BOOL)cancel
{
  v28 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = HUAnimationApplier;
  cancel = [(HUApplier *)&v25 cancel];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  relativeAnimations = [(HUAnimationApplier *)self relativeAnimations];
  v5 = [relativeAnimations countByEnumeratingWithState:&v21 objects:v27 count:16];
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
          objc_enumerationMutation(relativeAnimations);
        }

        applier = [*(*(&v21 + 1) + 8 * v8) applier];
        [applier cancel];

        ++v8;
      }

      while (v6 != v8);
      v6 = [relativeAnimations countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v6);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  effectiveProgressObservers = [(HUAnimationApplier *)self effectiveProgressObservers];
  v11 = [effectiveProgressObservers countByEnumeratingWithState:&v17 objects:v26 count:16];
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
          objc_enumerationMutation(effectiveProgressObservers);
        }

        timerCancellationToken = [*(*(&v17 + 1) + 8 * v14) timerCancellationToken];
        [timerCancellationToken cancel];

        ++v14;
      }

      while (v12 != v14);
      v12 = [effectiveProgressObservers countByEnumeratingWithState:&v17 objects:v26 count:16];
    }

    while (v12);
  }

  return cancel;
}

- (BOOL)complete:(BOOL)complete
{
  v6.receiver = self;
  v6.super_class = HUAnimationApplier;
  v4 = [(HUApplier *)&v6 complete:complete];
  if (v4)
  {
    [(HUAnimationApplier *)self _invalidateDisplayLinkIfNecessary];
  }

  return v4;
}

@end