@interface UINavigationController(GameControllerSupport)
- (void)logOnceGameControllerUsedInGameLayer;
- (void)pressesEnded:()GameControllerSupport withEvent:;
- (void)returnToPreviousScreen;
@end

@implementation UINavigationController(GameControllerSupport)

- (void)pressesEnded:()GameControllerSupport withEvent:
{
  v6 = a3;
  v7 = a4;
  [self logOnceGameControllerUsedInGameLayer];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__UINavigationController_GameControllerSupport__pressesEnded_withEvent___block_invoke;
  v9[3] = &unk_27966DB70;
  v9[4] = self;
  v9[5] = &v10;
  [v6 enumerateObjectsUsingBlock:v9];
  if ((v11[3] & 1) == 0)
  {
    v8.receiver = self;
    v8.super_class = UINavigationController_0;
    objc_msgSendSuper2(&v8, sel_pressesEnded_withEvent_, v6, v7);
  }

  _Block_object_dispose(&v10, 8);
}

- (void)logOnceGameControllerUsedInGameLayer
{
  if (logOnceGameControllerUsedInGameLayer_onceToken_250[0] != -1)
  {
    [UINavigationController(GameControllerSupport) logOnceGameControllerUsedInGameLayer];
  }
}

- (void)returnToPreviousScreen
{
  v2 = [self popViewControllerAnimated:1];
  if (v2)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v3 = GKOSLoggers();
    }

    v4 = *MEMORY[0x277D0C2C8];
    if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24DE53000, v4, OS_LOG_TYPE_INFO, "GameController: Popped to previous screen", buf, 2u);
    }
  }

  else
  {
    presentingViewController = [self presentingViewController];
    v6 = presentingViewController;
    if (presentingViewController)
    {
      [presentingViewController dismissViewControllerAnimated:1 completion:0];
      if (!*MEMORY[0x277D0C2A0])
      {
        v7 = GKOSLoggers();
      }

      v8 = *MEMORY[0x277D0C2C8];
      if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_24DE53000, v8, OS_LOG_TYPE_INFO, "GameController: Dismissed the modal to previous screen", v12, 2u);
      }
    }

    else
    {
      _gkExtensionViewController = [self _gkExtensionViewController];
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        _gkExtensionViewController2 = [self _gkExtensionViewController];
        [_gkExtensionViewController2 dismissWithGameController];
      }
    }
  }
}

@end