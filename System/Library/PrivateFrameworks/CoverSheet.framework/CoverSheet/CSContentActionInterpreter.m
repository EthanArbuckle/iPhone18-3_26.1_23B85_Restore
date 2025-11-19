@interface CSContentActionInterpreter
- (UIViewController)digestOnboardingSuggestionViewController;
- (UIViewController)nowPlayingViewController;
- (void)_viewControllerFromAction:(id)a3 completion:(id)a4;
@end

@implementation CSContentActionInterpreter

- (void)_viewControllerFromAction:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  if ([v12 type] == 1)
  {
    v7 = [v12 identifier];
    v8 = [v7 isEqualToString:*MEMORY[0x277D66D28]];

    if (v8)
    {
      WeakRetained = objc_loadWeakRetained(&self->_nowPlayingViewController);
      v6[2](v6, WeakRetained, 0);
    }

    else
    {
      v10 = [v12 identifier];
      v11 = [v10 isEqualToString:*MEMORY[0x277D66D20]];

      if (v11)
      {
        WeakRetained = objc_loadWeakRetained(&self->_digestOnboardingSuggestionViewController);
        v6[2](v6, WeakRetained, 0);
      }

      else
      {
        WeakRetained = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D67000] code:2 userInfo:0];
        (v6)[2](v6, 0, WeakRetained);
      }
    }
  }

  else
  {
    WeakRetained = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D67000] code:2 userInfo:0];
    (v6)[2](v6, 0, WeakRetained);
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