@interface EMKRippleAnimationCoordinator
- (BOOL)_hasNext;
- (EMKRippleAnimationCoordinator)initWithTextView:(id)a3 animations:(id)a4 foregroundColor:(id)a5 log:(id)a6;
- (void)_completeWithFinished:(BOOL)a3;
- (void)_startAnimationAtIndex:(unint64_t)a3;
- (void)cleanupIncludingFilterEffect:(BOOL)a3;
- (void)startWithCompletionHandler:(id)a3;
- (void)stop;
@end

@implementation EMKRippleAnimationCoordinator

- (EMKRippleAnimationCoordinator)initWithTextView:(id)a3 animations:(id)a4 foregroundColor:(id)a5 log:(id)a6
{
  v19 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = EMKRippleAnimationCoordinator;
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(EMKRippleAnimationCoordinator *)&v16 init];
  [(EMKRippleAnimationCoordinator *)v13 setTextView:v12, v16.receiver, v16.super_class];

  [(EMKRippleAnimationCoordinator *)v13 setRippleAnimations:v11];
  [(EMKRippleAnimationCoordinator *)v13 setForegroundColor:v10];

  [(EMKRippleAnimationCoordinator *)v13 setStartedRippleAnimationsIndex:0x7FFFFFFFFFFFFFFFLL];
  [(EMKRippleAnimationCoordinator *)v13 setStopped:0];
  [(EMKRippleAnimationCoordinator *)v13 setLog:v9];

  v14 = [(EMKRippleAnimationCoordinator *)v13 log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v18 = v13;
    _os_log_impl(&dword_2155E6000, v14, OS_LOG_TYPE_DEFAULT, "created ripple coordinator: %p", buf, 0xCu);
  }

  return v13;
}

- (void)startWithCompletionHandler:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(EMKRippleAnimationCoordinator *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_2155E6000, v5, OS_LOG_TYPE_DEFAULT, "start ripple coordinator", &v11, 2u);
  }

  v6 = [(EMKRippleAnimationCoordinator *)self log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(EMKRippleAnimationCoordinator *)self rippleAnimations];
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&dword_2155E6000, v6, OS_LOG_TYPE_DEFAULT, "ripple animations: %@", &v11, 0xCu);
  }

  [(EMKRippleAnimationCoordinator *)self setCompletionHandler:v4];
  [(EMKRippleAnimationCoordinator *)self setStartedRippleAnimationsIndex:0x7FFFFFFFFFFFFFFFLL];
  [(EMKRippleAnimationCoordinator *)self setStopped:0];
  v8 = [(EMKRippleAnimationCoordinator *)self rippleAnimations];
  v9 = [v8 count];

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
      v12 = self;
      _os_log_impl(&dword_2155E6000, v10, OS_LOG_TYPE_DEFAULT, "was asked to start but no ripple animations specified. %p", &v11, 0xCu);
    }

    [(EMKRippleAnimationCoordinator *)self _completeWithFinished:1];
  }
}

- (void)_startAnimationAtIndex:(unint64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  [(EMKRippleAnimationCoordinator *)self setStartedRippleAnimationsIndex:?];
  v5 = [(EMKRippleAnimationCoordinator *)self rippleAnimations];
  v6 = [v5 objectAtIndexedSubscript:a3];

  v7 = [(EMKRippleAnimationCoordinator *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v16 = a3;
    v17 = 2048;
    v18 = v6;
    _os_log_impl(&dword_2155E6000, v7, OS_LOG_TYPE_DEFAULT, "start ripple at index: %lu - animation: %p", buf, 0x16u);
  }

  v8 = [(EMKRippleAnimationCoordinator *)self textView];
  v9 = [(EMKRippleAnimationCoordinator *)self foregroundColor];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__EMKRippleAnimationCoordinator__startAnimationAtIndex___block_invoke;
  v14[3] = &unk_2781C1F90;
  v14[4] = self;
  v10 = [v8 newRippleAnimatorForAnimation:v6 foregroundColor:v9 notify_emk:v14];

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
    block[5] = a3;
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

- (void)_completeWithFinished:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x277D85DE8];
  v5 = [(EMKRippleAnimationCoordinator *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    v9 = self;
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&dword_2155E6000, v5, OS_LOG_TYPE_DEFAULT, "complete ripple coordinator %p - finished: %{BOOL}d", &v8, 0x12u);
  }

  v6 = [(EMKRippleAnimationCoordinator *)self completionHandler];

  if (v6)
  {
    v7 = [(EMKRippleAnimationCoordinator *)self completionHandler];
    [(EMKRippleAnimationCoordinator *)self setCompletionHandler:0];
    (v7)[2](v7, self, v3);
  }
}

- (void)stop
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [(EMKRippleAnimationCoordinator *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = self;
    _os_log_impl(&dword_2155E6000, v3, OS_LOG_TYPE_DEFAULT, "stop ripple coordinator %p", &v4, 0xCu);
  }

  [(EMKRippleAnimationCoordinator *)self setStopped:1];
}

- (BOOL)_hasNext
{
  v3 = [(EMKRippleAnimationCoordinator *)self startedRippleAnimationsIndex]+ 1;
  v4 = [(EMKRippleAnimationCoordinator *)self rippleAnimations];
  LOBYTE(v3) = v3 < [v4 count];

  return v3;
}

- (void)cleanupIncludingFilterEffect:(BOOL)a3
{
  v3 = a3;
  v20 = *MEMORY[0x277D85DE8];
  v5 = [(EMKRippleAnimationCoordinator *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v19 = self;
    _os_log_impl(&dword_2155E6000, v5, OS_LOG_TYPE_DEFAULT, "cleanup ripple coordinator %p", buf, 0xCu);
  }

  v6 = [(EMKRippleAnimationCoordinator *)self textView];
  v7 = [v6 textStorage];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = [(EMKRippleAnimationCoordinator *)self rippleAnimations];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v8);
        }

        [v7 removeRippleAnimation:*(*(&v13 + 1) + 8 * v12++) includingFilterEffect_emk:v3];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

@end