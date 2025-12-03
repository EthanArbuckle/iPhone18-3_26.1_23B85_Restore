@interface HKOnboardingManager
- (HKOnboardingManager)initWithOnboardingType:(int64_t)type isFirstTimeOnboarding:(BOOL)onboarding healthStore:(id)store dateCache:(id)cache;
- (HKOnboardingManager)initWithOnboardingType:(int64_t)type isFirstTimeOnboarding:(BOOL)onboarding healthStore:(id)store dateCache:(id)cache navigationController:(id)controller;
- (HKOnboardingManagerDataSource)dataSource;
- (HKOnboardingManagerDelegate)delegate;
- (HKOnboardingSequence)currentSequence;
- (NSArray)steps;
- (id)onboardingNavigationController;
- (id)viewControllerForPage:(id)page;
- (int64_t)upgradingFromAlgorithmVersionForOnboardingType:(int64_t)type;
- (void)_didStepBackward;
- (void)currentSequence;
- (void)dismissOnboarding;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)onboardingCancelled;
- (void)pushPageAnimated:(BOOL)animated;
- (void)setCurrentStepIndex:(int64_t)index;
- (void)stepForward;
- (void)stepToNextPage;
- (void)stepToNextState;
@end

@implementation HKOnboardingManager

- (HKOnboardingManager)initWithOnboardingType:(int64_t)type isFirstTimeOnboarding:(BOOL)onboarding healthStore:(id)store dateCache:(id)cache
{
  onboardingCopy = onboarding;
  v10 = MEMORY[0x1E69DCCD8];
  cacheCopy = cache;
  storeCopy = store;
  v13 = objc_alloc_init(v10);
  v14 = [(HKOnboardingManager *)self initWithOnboardingType:type isFirstTimeOnboarding:onboardingCopy healthStore:storeCopy dateCache:cacheCopy navigationController:v13];

  return v14;
}

- (HKOnboardingManager)initWithOnboardingType:(int64_t)type isFirstTimeOnboarding:(BOOL)onboarding healthStore:(id)store dateCache:(id)cache navigationController:(id)controller
{
  storeCopy = store;
  cacheCopy = cache;
  controllerCopy = controller;
  v21.receiver = self;
  v21.super_class = HKOnboardingManager;
  v16 = [(HKOnboardingManager *)&v21 init];
  v17 = v16;
  if (v16)
  {
    v16->_onboardingType = type;
    v16->_firstTimeOnboarding = onboarding;
    objc_storeStrong(&v16->_healthStore, store);
    objc_storeStrong(&v17->_dateCache, cache);
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    userInfo = v17->_userInfo;
    v17->_userInfo = v18;

    objc_storeStrong(&v17->_navigationController, controller);
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
    dataSource = [(HKOnboardingManager *)self dataSource];

    if (dataSource)
    {
      dataSource2 = [(HKOnboardingManager *)self dataSource];
      v5 = [dataSource2 availableOnboardingStepsForOnboardingManager:self];
      steps = self->_steps;
      self->_steps = v5;
    }

    else
    {
      dataSource2 = self->_steps;
      self->_steps = MEMORY[0x1E695E0F0];
    }
  }

  v7 = self->_steps;

  return v7;
}

- (void)setCurrentStepIndex:(int64_t)index
{
  if (self->_currentStepIndex != index)
  {
    currentSequence = self->_currentSequence;
    self->_currentSequence = 0;
    self->_currentStepIndex = index;

    self->_currentPageIndex = 0;
  }
}

- (HKOnboardingSequence)currentSequence
{
  currentSequence = self->_currentSequence;
  if (!currentSequence)
  {
    dataSource = [(HKOnboardingManager *)self dataSource];

    if (dataSource)
    {
      steps = [(HKOnboardingManager *)self steps];
      v7 = [steps objectAtIndexedSubscript:{-[HKOnboardingManager currentStepIndex](self, "currentStepIndex")}];
      integerValue = [v7 integerValue];

      dataSource2 = [(HKOnboardingManager *)self dataSource];
      v10 = [dataSource2 onboardingManager:self sequenceForStep:integerValue onboardingType:{-[HKOnboardingManager onboardingType](self, "onboardingType")}];
      v11 = self->_currentSequence;
      self->_currentSequence = v10;
    }

    else
    {
      dataSource2 = self->_currentSequence;
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
  currentSequence = [(HKOnboardingManager *)self currentSequence];
  pages = [currentSequence pages];
  v5 = [pages count];

  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(HKOnboardingManager *)self setUserInfo:v6];

    delegate = [(HKOnboardingManager *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(HKOnboardingManager *)self delegate];
      [delegate2 didBeginOnboardingForOnboardingManager:self];
    }

    [(HKOnboardingManager *)self pushPageAnimated:0];
    navigationController = [(HKOnboardingManager *)self navigationController];
  }

  else
  {
    navigationController = 0;
  }

  return navigationController;
}

- (void)dismissOnboarding
{
  [(HKOnboardingManager *)self setCurrentStepIndex:0];
  delegate = [(HKOnboardingManager *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(HKOnboardingManager *)self delegate];
    [delegate2 didCompleteOnboardingForOnboardingManager:self];
  }

  else
  {
    delegate2 = [(HKOnboardingManager *)self navigationController];
    [delegate2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (int64_t)upgradingFromAlgorithmVersionForOnboardingType:(int64_t)type
{
  if (type == 1)
  {
    selfCopy = self;
    dataSource = [self dataSource];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      dataSource2 = [selfCopy dataSource];
      v7 = [dataSource2 upgradingFromAlgorithmVersionForOnboardingManager:selfCopy];

      return v7;
    }

    return *MEMORY[0x1E696C690];
  }

  if (!type)
  {
    return *MEMORY[0x1E696C690];
  }

  return self;
}

- (id)viewControllerForPage:(id)page
{
  pageCopy = page;
  dataSource = [(HKOnboardingManager *)self dataSource];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0 || (-[HKOnboardingManager dataSource](self, "dataSource"), v7 = objc_claimAutoreleasedReturnValue(), [v7 onboardingManager:self customViewControllerForPage:pageCopy], v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    v8 = [objc_alloc(objc_msgSend(pageCopy "viewControllerClass"))];
  }

  [v8 setDelegate:self];

  return v8;
}

- (void)stepForward
{
  currentPageIndex = [(HKOnboardingManager *)self currentPageIndex];
  currentSequence = [(HKOnboardingManager *)self currentSequence];
  pages = [currentSequence pages];
  v6 = [pages count] - 1;

  if (currentPageIndex == v6)
  {
    currentStepIndex = [(HKOnboardingManager *)self currentStepIndex];
    steps = [(HKOnboardingManager *)self steps];
    v9 = [steps count] - 1;

    if (currentStepIndex == v9)
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
  currentStepIndex = [(HKOnboardingManager *)self currentStepIndex];
  steps = [(HKOnboardingManager *)self steps];
  v5 = [steps count] - 1;

  if (currentStepIndex < v5)
  {
    v6 = [(HKOnboardingManager *)self currentStepIndex]+ 1;

    [(HKOnboardingManager *)self setCurrentStepIndex:v6];
  }
}

- (void)stepToNextPage
{
  currentPageIndex = [(HKOnboardingManager *)self currentPageIndex];
  currentSequence = [(HKOnboardingManager *)self currentSequence];
  pages = [currentSequence pages];
  v6 = [pages count] - 1;

  if (currentPageIndex < v6)
  {
    v7 = [(HKOnboardingManager *)self currentPageIndex]+ 1;

    [(HKOnboardingManager *)self setCurrentPageIndex:v7];
  }
}

- (void)pushPageAnimated:(BOOL)animated
{
  animatedCopy = animated;
  currentSequence = [(HKOnboardingManager *)self currentSequence];
  pages = [currentSequence pages];
  v11 = [pages objectAtIndexedSubscript:{-[HKOnboardingManager currentPageIndex](self, "currentPageIndex")}];

  delegate = [(HKOnboardingManager *)self delegate];
  LOBYTE(pages) = objc_opt_respondsToSelector();

  if (pages)
  {
    delegate2 = [(HKOnboardingManager *)self delegate];
    [delegate2 onboardingManager:self willMoveToPage:v11];
  }

  v9 = [(HKOnboardingManager *)self viewControllerForPage:v11];
  navigationController = [(HKOnboardingManager *)self navigationController];
  [navigationController pushViewController:v9 animated:animatedCopy];
}

- (void)onboardingCancelled
{
  delegate = [(HKOnboardingManager *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(HKOnboardingManager *)self delegate];
    [delegate2 didCancelOnboardingForOnboardingManager:self];
  }
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllers = [controllerCopy viewControllers];
  v7 = [viewControllers count];
  presentedPagesCount = [(HKOnboardingManager *)self presentedPagesCount];

  if (v7 < presentedPagesCount)
  {
    [(HKOnboardingManager *)self _didStepBackward];
  }

  viewControllers2 = [controllerCopy viewControllers];
  -[HKOnboardingManager setPresentedPagesCount:](self, "setPresentedPagesCount:", [viewControllers2 count]);
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
    currentSequence = [(HKOnboardingManager *)self currentSequence];
    pages = [currentSequence pages];
    -[HKOnboardingManager setCurrentPageIndex:](self, "setCurrentPageIndex:", [pages count] - 1);
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
  selfCopy = self;
  v9 = 2114;
  v10 = v6;
  v11 = 1024;
  currentStepIndex = [self currentStepIndex];
  v13 = 1024;
  onboardingType = [self onboardingType];
  _os_log_error_impl(&dword_1C3942000, v5, OS_LOG_TYPE_ERROR, "[%{public}@ %{public}@] Current sequence is nil for step index: %d, onboarding type: %d.", &v7, 0x22u);
}

@end