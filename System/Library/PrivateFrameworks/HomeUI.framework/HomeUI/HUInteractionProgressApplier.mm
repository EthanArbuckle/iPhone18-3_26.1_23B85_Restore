@interface HUInteractionProgressApplier
+ (id)applierWithInteractionProgress:(id)progress;
+ (id)applyInteractionProgress:(id)progress withApplier:(id)applier completion:(id)completion;
- (BOOL)_interactionProgressChangedSignificantly;
- (BOOL)cancel;
- (BOOL)complete:(BOOL)complete;
- (BOOL)start;
- (HUInteractionProgressApplier)init;
- (HUInteractionProgressApplier)initWithInteractionProgress:(id)progress;
- (double)_currentInteractionProgress;
- (void)_completeSuccessfullyIfAnimationsComplete;
- (void)_updateCurrentProgress;
- (void)interactionProgress:(id)progress didEnd:(BOOL)end;
- (void)interactionProgressDidUpdate:(id)update;
@end

@implementation HUInteractionProgressApplier

+ (id)applyInteractionProgress:(id)progress withApplier:(id)applier completion:(id)completion
{
  progressCopy = progress;
  applierCopy = applier;
  completionCopy = completion;
  v11 = [self applierWithInteractionProgress:progressCopy];
  [HUApplier registerStandaloneApplier:v11];
  objc_initWeak(&location, v11);
  [v11 addApplierBlock:applierCopy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__HUInteractionProgressApplier_applyInteractionProgress_withApplier_completion___block_invoke;
  v14[3] = &unk_277DB7940;
  v12 = completionCopy;
  v15 = v12;
  objc_copyWeak(&v16, &location);
  [v11 addCompletionBlock:v14];
  objc_destroyWeak(&v16);

  objc_destroyWeak(&location);

  return v11;
}

void __80__HUInteractionProgressApplier_applyInteractionProgress_withApplier_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [HUApplier unregisterStandaloneApplier:WeakRetained];
}

+ (id)applierWithInteractionProgress:(id)progress
{
  progressCopy = progress;
  v5 = [[self alloc] initWithInteractionProgress:progressCopy];

  return v5;
}

- (HUInteractionProgressApplier)initWithInteractionProgress:(id)progress
{
  progressCopy = progress;
  if (!progressCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUInteractionProgressApplier.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"progress"}];
  }

  v12.receiver = self;
  v12.super_class = HUInteractionProgressApplier;
  v7 = [(HUApplier *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_interactionProgress, progress);
    [(HUInteractionProgressApplier *)v8 setBoundProgressValues:1];
    [(HUInteractionProgressApplier *)v8 setCompletesAtTargetState:1];
    v9 = [HUAnimationSettings settingsWithDuration:3 curve:0.075];
    [(HUInteractionProgressApplier *)v8 setTransitionAnimationSettings:v9];
  }

  return v8;
}

- (HUInteractionProgressApplier)init
{
  [(HUInteractionProgressApplier *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (BOOL)start
{
  v7.receiver = self;
  v7.super_class = HUInteractionProgressApplier;
  start = [(HUApplier *)&v7 start];
  if (start)
  {
    interactionProgress = [(HUInteractionProgressApplier *)self interactionProgress];
    [interactionProgress addProgressObserver:self];

    [(HUInteractionProgressApplier *)self _currentInteractionProgress];
    if (v5 >= 1.0)
    {
      [(HUInteractionProgressApplier *)self _updateCurrentProgress];
      [(HUInteractionProgressApplier *)self _completeSuccessfullyIfAnimationsComplete];
    }
  }

  return start;
}

- (double)_currentInteractionProgress
{
  interactionProgress = [(HUInteractionProgressApplier *)self interactionProgress];
  [interactionProgress percentComplete];
  v5 = v4;

  boundProgressValues = [(HUInteractionProgressApplier *)self boundProgressValues];
  result = fmax(fmin(v5, 1.0), 0.0);
  if (!boundProgressValues)
  {
    return v5;
  }

  return result;
}

- (BOOL)_interactionProgressChangedSignificantly
{
  [(HUInteractionProgressApplier *)self _currentInteractionProgress];
  v4 = v3;
  [(HUInteractionProgressApplier *)self previousInteractionProgress];
  return vabdd_f64(v4, v5) > 0.6;
}

- (void)_updateCurrentProgress
{
  transitionAnimationSettings = [(HUInteractionProgressApplier *)self transitionAnimationSettings];
  significantProgressChangeAnimationSettings = [(HUInteractionProgressApplier *)self significantProgressChangeAnimationSettings];
  if (significantProgressChangeAnimationSettings)
  {
    v5 = significantProgressChangeAnimationSettings;
    _interactionProgressChangedSignificantly = [(HUInteractionProgressApplier *)self _interactionProgressChangedSignificantly];

    if (_interactionProgressChangedSignificantly)
    {
      significantProgressChangeAnimationSettings2 = [(HUInteractionProgressApplier *)self significantProgressChangeAnimationSettings];

      transitionAnimationSettings = significantProgressChangeAnimationSettings2;
    }
  }

  if (transitionAnimationSettings)
  {
    [(HUInteractionProgressApplier *)self animationFromProgress];
    v9 = v8;
    [(HUInteractionProgressApplier *)self animationToProgress];
    v11 = v10;
    [(HUInteractionProgressApplier *)self animationFromProgress];
    v13 = v11 - v12;
    inFlightAnimation = [(HUInteractionProgressApplier *)self inFlightAnimation];
    [inFlightAnimation progress];
    v16 = v9 + v13 * v15;

    inFlightAnimation2 = [(HUInteractionProgressApplier *)self inFlightAnimation];
    [inFlightAnimation2 cancel];

    [(HUInteractionProgressApplier *)self setAnimationFromProgress:v16];
    [(HUInteractionProgressApplier *)self _currentInteractionProgress];
    [(HUInteractionProgressApplier *)self setAnimationToProgress:?];
    v18 = [HUAnimationApplier dynamicApplierWithAnimationSettings:transitionAnimationSettings];
    [(HUInteractionProgressApplier *)self setInFlightAnimation:v18];

    objc_initWeak(&location, self);
    inFlightAnimation3 = [(HUInteractionProgressApplier *)self inFlightAnimation];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __54__HUInteractionProgressApplier__updateCurrentProgress__block_invoke;
    v25[3] = &unk_277DB7968;
    objc_copyWeak(&v26, &location);
    [inFlightAnimation3 addApplierBlock:v25];

    inFlightAnimation4 = [(HUInteractionProgressApplier *)self inFlightAnimation];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __54__HUInteractionProgressApplier__updateCurrentProgress__block_invoke_2;
    v23[3] = &unk_277DB7990;
    objc_copyWeak(&v24, &location);
    [inFlightAnimation4 addCompletionBlock:v23];

    inFlightAnimation5 = [(HUInteractionProgressApplier *)self inFlightAnimation];
    [inFlightAnimation5 start];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  else
  {
    inFlightAnimation6 = [(HUInteractionProgressApplier *)self inFlightAnimation];
    [inFlightAnimation6 cancel];

    [(HUInteractionProgressApplier *)self setInFlightAnimation:0];
    [(HUInteractionProgressApplier *)self _currentInteractionProgress];
    [(HUApplier *)self updateProgress:?];
  }

  [(HUInteractionProgressApplier *)self _currentInteractionProgress];
  [(HUInteractionProgressApplier *)self setPreviousInteractionProgress:?];
}

void __54__HUInteractionProgressApplier__updateCurrentProgress__block_invoke(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained animationFromProgress];
  v4 = v3;
  [WeakRetained animationToProgress];
  v6 = v5;
  [WeakRetained animationFromProgress];
  [WeakRetained updateProgress:v4 + (v6 - v7) * a2];
}

void __54__HUInteractionProgressApplier__updateCurrentProgress__block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained waitingOnAnimationToComplete])
  {
    [WeakRetained setWaitingOnAnimationToComplete:0];
    [WeakRetained complete:a2];
  }
}

- (void)interactionProgressDidUpdate:(id)update
{
  if (![(HUInteractionProgressApplier *)self waitingOnAnimationToComplete])
  {

    [(HUInteractionProgressApplier *)self _updateCurrentProgress];
  }
}

- (void)interactionProgress:(id)progress didEnd:(BOOL)end
{
  endCopy = end;
  if ([(HUInteractionProgressApplier *)self completesAtTargetState])
  {
    if (endCopy)
    {

      [(HUInteractionProgressApplier *)self _completeSuccessfullyIfAnimationsComplete];
    }

    else
    {

      [(HUInteractionProgressApplier *)self complete:0];
    }
  }
}

- (void)_completeSuccessfullyIfAnimationsComplete
{
  inFlightAnimation = [(HUInteractionProgressApplier *)self inFlightAnimation];

  if (inFlightAnimation)
  {

    [(HUInteractionProgressApplier *)self setWaitingOnAnimationToComplete:1];
  }

  else
  {

    [(HUInteractionProgressApplier *)self complete:1];
  }
}

- (BOOL)complete:(BOOL)complete
{
  v7.receiver = self;
  v7.super_class = HUInteractionProgressApplier;
  v4 = [(HUApplier *)&v7 complete:complete];
  if (v4)
  {
    [(HUInteractionProgressApplier *)self setWaitingOnAnimationToComplete:0];
    interactionProgress = [(HUInteractionProgressApplier *)self interactionProgress];
    [interactionProgress removeProgressObserver:self];
  }

  return v4;
}

- (BOOL)cancel
{
  v6.receiver = self;
  v6.super_class = HUInteractionProgressApplier;
  cancel = [(HUApplier *)&v6 cancel];
  inFlightAnimation = [(HUInteractionProgressApplier *)self inFlightAnimation];
  [inFlightAnimation cancel];

  [(HUInteractionProgressApplier *)self setInFlightAnimation:0];
  return cancel;
}

@end