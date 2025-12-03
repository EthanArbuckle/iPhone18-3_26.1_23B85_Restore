@interface termAssertionObserver
- (void)assertionTargetProcessDidExit:(id)exit;
@end

@implementation termAssertionObserver

- (void)assertionTargetProcessDidExit:(id)exit
{
  completionSem = [(termAssertionObserver *)self completionSem];

  if (completionSem)
  {
    completionSem2 = [(termAssertionObserver *)self completionSem];
    dispatch_semaphore_signal(completionSem2);
  }
}

@end