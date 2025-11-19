@interface HKOnboardingManager
- (HKOnboardingManager)initWithOnboardingType:(int64_t)a3 isFirstTimeOnboarding:(BOOL)a4 healthStore:(id)a5 dateCache:(id)a6;
- (HKOnboardingManager)initWithOnboardingType:(int64_t)a3 isFirstTimeOnboarding:(BOOL)a4 healthStore:(id)a5 dateCache:(id)a6 navigationController:(id)a7;
- (HKOnboardingManagerDataSource)dataSource;
- (HKOnboardingManagerDelegate)delegate;
- (HKOnboardingSequence)currentSequence;
- (NSArray)steps;
- (id)onboardingNavigationController;
- (id)viewControllerForPage:(id)a3;
- (int64_t)upgradingFromAlgorithmVersionForOnboardingType:(int64_t)a3;
- (void)_didStepBackward;
- (void)currentSequence;
- (void)dismissOnboarding;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)onboardingCancelled;
- (void)pushPageAnimated:(BOOL)a3;
- (void)setCurrentStepIndex:(int64_t)a3;
- (void)stepForward;
- (void)stepToNextPage;
- (void)stepToNextState;
@end

@implementation HKOnboardingManager

- (HKOnboardingManager)initWithOnboardingType:(int64_t)a3 isFirstTimeOnboarding:(BOOL)a4 healthStore:(id)a5 dateCache:(id)a6
{
  v7 = a4;
  v10 = MEMORY[0x1E69DCCD8];
  v11 = a6;
  v12 = a5;
  v13 = objc_alloc_init(v10);
  v14 = [(HKOnboardingManager *)self initWithOnboardingType:a3 isFirstTimeOnboarding:v7 healthStore:v12 dateCache:v11 navigationController:v13];

  return v14;
}

- (HKOnboardingManager)initWithOnboardingType:(int64_t)a3 isFirstTimeOnboarding:(BOOL)a4 healthStore:(id)a5 dateCache:(id)a6 navigationController:(id)a7
{
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v21.receiver = self;
  v21.super_class = HKOnboardingManager;
  v16 = [(HKOnboardingManager *)&v21 init];
  v17 = v16;
  if (v16)
  {
    v16->_onboardingType = a3;
    v16->_firstTimeOnboarding = a4;
    objc_storeStrong(&v16->_healthStore, a5);
    objc_storeStrong(&v17->_dateCache, a6);
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    userInfo = v17->_userInfo;
    v17->_userInfo = v18;

    objc_storeStrong(&v17->_navigationController, a7);
    [(UINavigationController *)v17->_navigationController setDelegate:v17];
    v17->_currentStepIndex = 0;
    v17->_currentPageIndex = 0;
    v17->_presentedPagesCount = 0;
  }

  return v17;
}

- (NSArray)steps
{
  if (!self->_steps)
  {
    v3 = [(HKOnboardingManager *)self dataSource];

    if (v3)
    {
      v4 = [(HKOnboardingManager *)self dataSource];
      v5 = [v4 availableOnboardingStepsForOnboardingManager:self];
      steps = self->_steps;
      self->_steps = v5;
    }

    else
    {
      v4 = self->_steps;
      self->_steps = MEMORY[0x1E695E0F0];
    }
  }

  v7 = self->_steps;

  return v7;
}

- (void)setCurrentStepIndex:(int64_t)a3
{
  if (self->_currentStepIndex != a3)
  {
    currentSequence = self->_currentSequence;
    self->_currentSequence = 0;
    self->_currentStepIndex = a3;

    self->_currentPageIndex = 0;
  }
}

- (HKOnboardingSequence)currentSequence
{
  currentSequence = self->_currentSequence;
  if (!currentSequence)
  {
    v5 = [(HKOnboardingManager *)self dataSource];

    if (v5)
    {
      v6 = [(HKOnboardingManager *)self steps];
      v7 = [v6 objectAtIndexedSubscript:{-[HKOnboardingManager currentStepIndex](self, "currentStepIndex")}];
      v8 = [v7 integerValue];

      v9 = [(HKOnboardingManager *)self dataSource];
      v10 = [v9 onboardingManager:self sequenceForStep:v8 onboardingType:{-[HKOnboardingManager onboardingType](self, "onboardingType")}];
      v11 = self->_currentSequence;
      self->_currentSequence = v10;
    }

    else
    {
      v9 = self->_currentSequence;
      self->_currentSequence = 0;
    }

    currentSequence = self->_currentSequence;
    if (!currentSequence)
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x1E696B940];
      if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_ERROR))
      {
        [(HKOnboardingManager *)self currentSequence];
      }

      currentSequence = self->_currentSequence;
    }
  }

  return currentSequence;
}

- (id)onboardingNavigationController
{
  v3 = [(HKOnboardingManager *)self currentSequence];
  v4 = [v3 pages];
  v5 = [v4 count];

  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(HKOnboardingManager *)self setUserInfo:v6];

    v7 = [(HKOnboardingManager *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(HKOnboardingManager *)self delegate];
      [v9 didBeginOnboardingForOnboardingManager:self];
    }

    [(HKOnboardingManager *)self pushPageAnimated:0];
    v10 = [(HKOnboardingManager *)self navigationController];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)dismissOnboarding
{
  [(HKOnboardingManager *)self setCurrentStepIndex:0];
  v3 = [(HKOnboardingManager *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(HKOnboardingManager *)self delegate];
    [v5 didCompleteOnboardingForOnboardingManager:self];
  }

  else
  {
    v5 = [(HKOnboardingManager *)self navigationController];
    [v5 dismissViewControllerAnimated:1 completion:0];
  }
}

- (int64_t)upgradingFromAlgorithmVersionForOnboardingType:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = self;
    v4 = [self dataSource];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [v3 dataSource];
      v7 = [v6 upgradingFromAlgorithmVersionForOnboardingManager:v3];

      return v7;
    }

    return *MEMORY[0x1E696C690];
  }

  if (!a3)
  {
    return *MEMORY[0x1E696C690];
  }

  return self;
}

- (id)viewControllerForPage:(id)a3
{
  v4 = a3;
  v5 = [(HKOnboardingManager *)self dataSource];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0 || (-[HKOnboardingManager dataSource](self, "dataSource"), v7 = objc_claimAutoreleasedReturnValue(), [v7 onboardingManager:self customViewControllerForPage:v4], v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    v8 = [objc_alloc(objc_msgSend(v4 "viewControllerClass"))];
  }

  [v8 setDelegate:self];

  return v8;
}

- (void)stepForward
{
  v3 = [(HKOnboardingManager *)self currentPageIndex];
  v4 = [(HKOnboardingManager *)self currentSequence];
  v5 = [v4 pages];
  v6 = [v5 count] - 1;

  if (v3 == v6)
  {
    v7 = [(HKOnboardingManager *)self currentStepIndex];
    v8 = [(HKOnboardingManager *)self steps];
    v9 = [v8 count] - 1;

    if (v7 == v9)
    {
      [(HKOnboardingManager *)self dismissOnboarding];
    }

    else
    {
      [(HKOnboardingManager *)self stepToNextState];
    }
  }

  else
  {
    [(HKOnboardingManager *)self stepToNextPage];
  }

  [(HKOnboardingManager *)self pushPageAnimated:1];
}

- (void)stepToNextState
{
  v3 = [(HKOnboardingManager *)self currentStepIndex];
  v4 = [(HKOnboardingManager *)self steps];
  v5 = [v4 count] - 1;

  if (v3 < v5)
  {
    v6 = [(HKOnboardingManager *)self currentStepIndex]+ 1;

    [(HKOnboardingManager *)self setCurrentStepIndex:v6];
  }
}

- (void)stepToNextPage
{
  v3 = [(HKOnboardingManager *)self currentPageIndex];
  v4 = [(HKOnboardingManager *)self currentSequence];
  v5 = [v4 pages];
  v6 = [v5 count] - 1;

  if (v3 < v6)
  {
    v7 = [(HKOnboardingManager *)self currentPageIndex]+ 1;

    [(HKOnboardingManager *)self setCurrentPageIndex:v7];
  }
}

- (void)pushPageAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(HKOnboardingManager *)self currentSequence];
  v6 = [v5 pages];
  v11 = [v6 objectAtIndexedSubscript:{-[HKOnboardingManager currentPageIndex](self, "currentPageIndex")}];

  v7 = [(HKOnboardingManager *)self delegate];
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    v8 = [(HKOnboardingManager *)self delegate];
    [v8 onboardingManager:self willMoveToPage:v11];
  }

  v9 = [(HKOnboardingManager *)self viewControllerForPage:v11];
  v10 = [(HKOnboardingManager *)self navigationController];
  [v10 pushViewController:v9 animated:v3];
}

- (void)onboardingCancelled
{
  v3 = [(HKOnboardingManager *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(HKOnboardingManager *)self delegate];
    [v5 didCancelOnboardingForOnboardingManager:self];
  }
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  v10 = a3;
  v6 = [v10 viewControllers];
  v7 = [v6 count];
  v8 = [(HKOnboardingManager *)self presentedPagesCount];

  if (v7 < v8)
  {
    [(HKOnboardingManager *)self _didStepBackward];
  }

  v9 = [v10 viewControllers];
  -[HKOnboardingManager setPresentedPagesCount:](self, "setPresentedPagesCount:", [v9 count]);
}

- (void)_didStepBackward
{
  if ([(HKOnboardingManager *)self currentPageIndex])
  {
    v3 = [(HKOnboardingManager *)self currentPageIndex]- 1;

    [(HKOnboardingManager *)self setCurrentPageIndex:v3];
  }

  else if ([(HKOnboardingManager *)self currentStepIndex])
  {
    [(HKOnboardingManager *)self setCurrentStepIndex:[(HKOnboardingManager *)self currentStepIndex]- 1];
    v5 = [(HKOnboardingManager *)self currentSequence];
    v4 = [v5 pages];
    -[HKOnboardingManager setCurrentPageIndex:](self, "setCurrentPageIndex:", [v4 count] - 1);
  }

  else
  {

    [(HKOnboardingManager *)self dismissOnboarding];
  }
}

- (HKOnboardingManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (HKOnboardingManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)currentSequence
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = NSStringFromSelector(a3);
  v7 = 138544130;
  v8 = a1;
  v9 = 2114;
  v10 = v6;
  v11 = 1024;
  v12 = [a1 currentStepIndex];
  v13 = 1024;
  v14 = [a1 onboardingType];
  _os_log_error_impl(&dword_1C3942000, v5, OS_LOG_TYPE_ERROR, "[%{public}@ %{public}@] Current sequence is nil for step index: %d, onboarding type: %d.", &v7, 0x22u);
}

@end