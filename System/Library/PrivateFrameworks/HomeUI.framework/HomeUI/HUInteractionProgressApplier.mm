@interface HUInteractionProgressApplier
+ (id)applierWithInteractionProgress:(id)a3;
+ (id)applyInteractionProgress:(id)a3 withApplier:(id)a4 completion:(id)a5;
- (BOOL)_interactionProgressChangedSignificantly;
- (BOOL)cancel;
- (BOOL)complete:(BOOL)a3;
- (BOOL)start;
- (HUInteractionProgressApplier)init;
- (HUInteractionProgressApplier)initWithInteractionProgress:(id)a3;
- (double)_currentInteractionProgress;
- (void)_completeSuccessfullyIfAnimationsComplete;
- (void)_updateCurrentProgress;
- (void)interactionProgress:(id)a3 didEnd:(BOOL)a4;
- (void)interactionProgressDidUpdate:(id)a3;
@end

@implementation HUInteractionProgressApplier

+ (id)applyInteractionProgress:(id)a3 withApplier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [a1 applierWithInteractionProgress:v8];
  [HUApplier registerStandaloneApplier:v11];
  objc_initWeak(&location, v11);
  [v11 addApplierBlock:v9];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__HUInteractionProgressApplier_applyInteractionProgress_withApplier_completion___block_invoke;
  v14[3] = &unk_277DB7940;
  v12 = v10;
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

+ (id)applierWithInteractionProgress:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithInteractionProgress:v4];

  return v5;
}

- (HUInteractionProgressApplier)initWithInteractionProgress:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"HUInteractionProgressApplier.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"progress"}];
  }

  v12.receiver = self;
  v12.super_class = HUInteractionProgressApplier;
  v7 = [(HUApplier *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_interactionProgress, a3);
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
  v3 = [(HUApplier *)&v7 start];
  if (v3)
  {
    v4 = [(HUInteractionProgressApplier *)self interactionProgress];
    [v4 addProgressObserver:self];

    [(HUInteractionProgressApplier *)self _currentInteractionProgress];
    if (v5 >= 1.0)
    {
      [(HUInteractionProgressApplier *)self _updateCurrentProgress];
      [(HUInteractionProgressApplier *)self _completeSuccessfullyIfAnimationsComplete];
    }
  }

  return v3;
}

- (double)_currentInteractionProgress
{
  v3 = [(HUInteractionProgressApplier *)self interactionProgress];
  [v3 percentComplete];
  v5 = v4;

  v6 = [(HUInteractionProgressApplier *)self boundProgressValues];
  result = fmax(fmin(v5, 1.0), 0.0);
  if (!v6)
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
  v3 = [(HUInteractionProgressApplier *)self transitionAnimationSettings];
  v4 = [(HUInteractionProgressApplier *)self significantProgressChangeAnimationSettings];
  if (v4)
  {
    v5 = v4;
    v6 = [(HUInteractionProgressApplier *)self _interactionProgressChangedSignificantly];

    if (v6)
    {
      v7 = [(HUInteractionProgressApplier *)self significantProgressChangeAnimationSettings];

      v3 = v7;
    }
  }

  if (v3)
  {
    [(HUInteractionProgressApplier *)self animationFromProgress];
    v9 = v8;
    [(HUInteractionProgressApplier *)self animationToProgress];
    v11 = v10;
    [(HUInteractionProgressApplier *)self animationFromProgress];
    v13 = v11 - v12;
    v14 = [(HUInteractionProgressApplier *)self inFlightAnimation];
    [v14 progress];
    v16 = v9 + v13 * v15;

    v17 = [(HUInteractionProgressApplier *)self inFlightAnimation];
    [v17 cancel];

    [(HUInteractionProgressApplier *)self setAnimationFromProgress:v16];
    [(HUInteractionProgressApplier *)self _currentInteractionProgress];
    [(HUInteractionProgressApplier *)self setAnimationToProgress:?];
    v18 = [HUAnimationApplier dynamicApplierWithAnimationSettings:v3];
    [(HUInteractionProgressApplier *)self setInFlightAnimation:v18];

    objc_initWeak(&location, self);
    v19 = [(HUInteractionProgressApplier *)self inFlightAnimation];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __54__HUInteractionProgressApplier__updateCurrentProgress__block_invoke;
    v25[3] = &unk_277DB7968;
    objc_copyWeak(&v26, &location);
    [v19 addApplierBlock:v25];

    v20 = [(HUInteractionProgressApplier *)self inFlightAnimation];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __54__HUInteractionProgressApplier__updateCurrentProgress__block_invoke_2;
    v23[3] = &unk_277DB7990;
    objc_copyWeak(&v24, &location);
    [v20 addCompletionBlock:v23];

    v21 = [(HUInteractionProgressApplier *)self inFlightAnimation];
    [v21 start];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  else
  {
    v22 = [(HUInteractionProgressApplier *)self inFlightAnimation];
    [v22 cancel];

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

- (void)interactionProgressDidUpdate:(id)a3
{
  if (![(HUInteractionProgressApplier *)self waitingOnAnimationToComplete])
  {

    [(HUInteractionProgressApplier *)self _updateCurrentProgress];
  }
}

- (void)interactionProgress:(id)a3 didEnd:(BOOL)a4
{
  v4 = a4;
  if ([(HUInteractionProgressApplier *)self completesAtTargetState])
  {
    if (v4)
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
  v3 = [(HUInteractionProgressApplier *)self inFlightAnimation];

  if (v3)
  {

    [(HUInteractionProgressApplier *)self setWaitingOnAnimationToComplete:1];
  }

  else
  {

    [(HUInteractionProgressApplier *)self complete:1];
  }
}

- (BOOL)complete:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = HUInteractionProgressApplier;
  v4 = [(HUApplier *)&v7 complete:a3];
  if (v4)
  {
    [(HUInteractionProgressApplier *)self setWaitingOnAnimationToComplete:0];
    v5 = [(HUInteractionProgressApplier *)self interactionProgress];
    [v5 removeProgressObserver:self];
  }

  return v4;
}

- (BOOL)cancel
{
  v6.receiver = self;
  v6.super_class = HUInteractionProgressApplier;
  v3 = [(HUApplier *)&v6 cancel];
  v4 = [(HUInteractionProgressApplier *)self inFlightAnimation];
  [v4 cancel];

  [(HUInteractionProgressApplier *)self setInFlightAnimation:0];
  return v3;
}

@end