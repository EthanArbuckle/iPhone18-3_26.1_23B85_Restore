@interface CSContentActionInterpreter
- (UIViewController)digestOnboardingSuggestionViewController;
- (UIViewController)nowPlayingViewController;
- (void)_viewControllerFromAction:(id)action completion:(id)completion;
@end

@implementation CSContentActionInterpreter

- (void)_viewControllerFromAction:(id)action completion:(id)completion
{
  actionCopy = action;
  completionCopy = completion;
  if ([actionCopy type] == 1)
  {
    identifier = [actionCopy identifier];
    v8 = [identifier isEqualToString:*MEMORY[0x277D66D28]];

    if (v8)
    {
      WeakRetained = objc_loadWeakRetained(&self->_nowPlayingViewController);
      completionCopy[2](completionCopy, WeakRetained, 0);
    }

    else
    {
      identifier2 = [actionCopy identifier];
      v11 = [identifier2 isEqualToString:*MEMORY[0x277D66D20]];

      if (v11)
      {
        WeakRetained = objc_loadWeakRetained(&self->_digestOnboardingSuggestionViewController);
        completionCopy[2](completionCopy, WeakRetained, 0);
      }

      else
      {
        WeakRetained = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D67000] code:2 userInfo:0];
        (completionCopy)[2](completionCopy, 0, WeakRetained);
      }
    }
  }

  else
  {
    WeakRetained = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D67000] code:2 userInfo:0];
    (completionCopy)[2](completionCopy, 0, WeakRetained);
  }
}

- (UIViewController)nowPlayingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_nowPlayingViewController);

  return WeakRetained;
}

- (UIViewController)digestOnboardingSuggestionViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_digestOnboardingSuggestionViewController);

  return WeakRetained;
}

@end