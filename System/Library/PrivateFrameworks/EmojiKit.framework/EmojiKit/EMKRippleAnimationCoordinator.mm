@interface EMKRippleAnimationCoordinator
- (BOOL)_hasNext;
- (EMKRippleAnimationCoordinator)initWithTextView:(id)view animations:(id)animations foregroundColor:(id)color log:(id)log;
- (void)_completeWithFinished:(BOOL)finished;
- (void)_startAnimationAtIndex:(unint64_t)index;
- (void)cleanupIncludingFilterEffect:(BOOL)effect;
- (void)startWithCompletionHandler:(id)handler;
- (void)stop;
@end

@implementation EMKRippleAnimationCoordinator

- (EMKRippleAnimationCoordinator)initWithTextView:(id)view animations:(id)animations foregroundColor:(id)color log:(id)log
{
  v19 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = EMKRippleAnimationCoordinator;
  logCopy = log;
  colorCopy = color;
  animationsCopy = animations;
  viewCopy = view;
  v13 = [(EMKRippleAnimationCoordinator *)&v16 init];
  [(EMKRippleAnimationCoordinator *)v13 setTextView:viewCopy, v16.receiver, v16.super_class];

  [(EMKRippleAnimationCoordinator *)v13 setRippleAnimations:animationsCopy];
  [(EMKRippleAnimationCoordinator *)v13 setForegroundColor:colorCopy];

  [(EMKRippleAnimationCoordinator *)v13 setStartedRippleAnimationsIndex:0x7FFFFFFFFFFFFFFFLL];
  [(EMKRippleAnimationCoordinator *)v13 setStopped:0];
  [(EMKRippleAnimationCoordinator *)v13 setLog:logCopy];

  v14 = [(EMKRippleAnimationCoordinator *)v13 log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v18 = v13;
    _os_log_impl(&dword_2155E6000, v14, OS_LOG_TYPE_DEFAULT, "created ripple coordinator: %p", buf, 0xCu);
  }

  return v13;
}

- (void)startWithCompletionHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = [(EMKRippleAnimationCoordinator *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_2155E6000, v5, OS_LOG_TYPE_DEFAULT, "start ripple coordinator", &v11, 2u);
  }

  v6 = [(EMKRippleAnimationCoordinator *)self log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    rippleAnimations = [(EMKRippleAnimationCoordinator *)self rippleAnimations];
    v11 = 138412290;
    selfCopy = rippleAnimations;
    _os_log_impl(&dword_2155E6000, v6, OS_LOG_TYPE_DEFAULT, "ripple animations: %@", &v11, 0xCu);
  }

  [(EMKRippleAnimationCoordinator *)self setCompletionHandler:handlerCopy];
  [(EMKRippleAnimationCoordinator *)self setStartedRippleAnimationsIndex:0x7FFFFFFFFFFFFFFFLL];
  [(EMKRippleAnimationCoordinator *)self setStopped:0];
  rippleAnimations2 = [(EMKRippleAnimationCoordinator *)self rippleAnimations];
  v9 = [rippleAnimations2 count];

  if (v9)
  {
    [(EMKRippleAnimationCoordinator *)self _startAnimationAtIndex:0];
  }

  else
  {
    v10 = [(EMKRippleAnimationCoordinator *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_2155E6000, v10, OS_LOG_TYPE_DEFAULT, "was asked to start but no ripple animations specified. %p", &v11, 0xCu);
    }

    [(EMKRippleAnimationCoordinator *)self _completeWithFinished:1];
  }
}

- (void)_startAnimationAtIndex:(unint64_t)index
{
  v19 = *MEMORY[0x277D85DE8];
  [(EMKRippleAnimationCoordinator *)self setStartedRippleAnimationsIndex:?];
  rippleAnimations = [(EMKRippleAnimationCoordinator *)self rippleAnimations];
  v6 = [rippleAnimations objectAtIndexedSubscript:index];

  v7 = [(EMKRippleAnimationCoordinator *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    indexCopy = index;
    v17 = 2048;
    v18 = v6;
    _os_log_impl(&dword_2155E6000, v7, OS_LOG_TYPE_DEFAULT, "start ripple at index: %lu - animation: %p", buf, 0x16u);
  }

  textView = [(EMKRippleAnimationCoordinator *)self textView];
  foregroundColor = [(EMKRippleAnimationCoordinator *)self foregroundColor];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__EMKRippleAnimationCoordinator__startAnimationAtIndex___block_invoke;
  v14[3] = &unk_2781C1F90;
  v14[4] = self;
  v10 = [textView newRippleAnimatorForAnimation:v6 foregroundColor:foregroundColor notify_emk:v14];

  [v10 start];
  if ([(EMKRippleAnimationCoordinator *)self _hasNext])
  {
    [v10 nextAnimationTriggerDelay];
    v12 = dispatch_time(0, (v11 * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__EMKRippleAnimationCoordinator__startAnimationAtIndex___block_invoke_1;
    block[3] = &unk_2781C1FB8;
    block[4] = self;
    block[5] = index;
    dispatch_after(v12, MEMORY[0x277D85CD0], block);
  }
}

void __56__EMKRippleAnimationCoordinator__startAnimationAtIndex___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 animation];
    v15 = 134217984;
    v16 = v5;
    _os_log_impl(&dword_2155E6000, v4, OS_LOG_TYPE_DEFAULT, "animator state change for animation %p", &v15, 0xCu);
  }

  if ([v3 state] == 1)
  {
    v6 = [*(a1 + 32) rippleAnimations];
    v7 = [v6 lastObject];
    v8 = [v3 animation];

    v9 = [*(a1 + 32) log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 67109120;
      LODWORD(v16) = v7 == v8;
      _os_log_impl(&dword_2155E6000, v9, OS_LOG_TYPE_DEFAULT, "idle ripple animator - is last: %{BOOL}d", &v15, 8u);
    }

    v10 = [*(a1 + 32) log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 32) rippleAnimations];
      v12 = [v11 lastObject];
      v15 = 134217984;
      v16 = v12;
      _os_log_impl(&dword_2155E6000, v10, OS_LOG_TYPE_DEFAULT, "last ripple animation: %p", &v15, 0xCu);
    }

    v13 = [*(a1 + 32) log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v3 animation];
      v15 = 134217984;
      v16 = v14;
      _os_log_impl(&dword_2155E6000, v13, OS_LOG_TYPE_DEFAULT, "finished ripple animation: %p", &v15, 0xCu);
    }

    if (v7 == v8)
    {
      [*(a1 + 32) _completeWithFinished:1];
    }
  }
}

uint64_t __56__EMKRippleAnimationCoordinator__startAnimationAtIndex___block_invoke_1(uint64_t a1)
{
  v2 = [*(a1 + 32) isStopped];
  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 _completeWithFinished:0];
  }

  else
  {
    v5 = *(a1 + 40) + 1;

    return [v3 _startAnimationAtIndex:v5];
  }
}

- (void)_completeWithFinished:(BOOL)finished
{
  finishedCopy = finished;
  v12 = *MEMORY[0x277D85DE8];
  v5 = [(EMKRippleAnimationCoordinator *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    selfCopy = self;
    v10 = 1024;
    v11 = finishedCopy;
    _os_log_impl(&dword_2155E6000, v5, OS_LOG_TYPE_DEFAULT, "complete ripple coordinator %p - finished: %{BOOL}d", &v8, 0x12u);
  }

  completionHandler = [(EMKRippleAnimationCoordinator *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(EMKRippleAnimationCoordinator *)self completionHandler];
    [(EMKRippleAnimationCoordinator *)self setCompletionHandler:0];
    (completionHandler2)[2](completionHandler2, self, finishedCopy);
  }
}

- (void)stop
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [(EMKRippleAnimationCoordinator *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_2155E6000, v3, OS_LOG_TYPE_DEFAULT, "stop ripple coordinator %p", &v4, 0xCu);
  }

  [(EMKRippleAnimationCoordinator *)self setStopped:1];
}

- (BOOL)_hasNext
{
  v3 = [(EMKRippleAnimationCoordinator *)self startedRippleAnimationsIndex]+ 1;
  rippleAnimations = [(EMKRippleAnimationCoordinator *)self rippleAnimations];
  LOBYTE(v3) = v3 < [rippleAnimations count];

  return v3;
}

- (void)cleanupIncludingFilterEffect:(BOOL)effect
{
  effectCopy = effect;
  v20 = *MEMORY[0x277D85DE8];
  v5 = [(EMKRippleAnimationCoordinator *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_2155E6000, v5, OS_LOG_TYPE_DEFAULT, "cleanup ripple coordinator %p", buf, 0xCu);
  }

  textView = [(EMKRippleAnimationCoordinator *)self textView];
  textStorage = [textView textStorage];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  rippleAnimations = [(EMKRippleAnimationCoordinator *)self rippleAnimations];
  v9 = [rippleAnimations countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(rippleAnimations);
        }

        [textStorage removeRippleAnimation:*(*(&v13 + 1) + 8 * v12++) includingFilterEffect_emk:effectCopy];
      }

      while (v10 != v12);
      v10 = [rippleAnimations countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

@end