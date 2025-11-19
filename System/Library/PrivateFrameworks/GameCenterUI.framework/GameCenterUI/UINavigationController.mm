@interface UINavigationController
@end

@implementation UINavigationController

void __72__UINavigationController_GameControllerSupport__pressesEnded_withEvent___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  if ([a2 type] == 5)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v5 = GKOSLoggers();
    }

    v6 = *MEMORY[0x277D0C2C8];
    if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_24DE53000, v6, OS_LOG_TYPE_INFO, "GameController: UIPressTypeMenu is pressed -> return to previous screen", v8, 2u);
    }

    v7 = [*(a1 + 32) _gkExtensionViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 logOnceGameControllerUsedInGameLayer];
    }

    [*(a1 + 32) returnToPreviousScreen];
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void __85__UINavigationController_GameControllerSupport__logOnceGameControllerUsedInGameLayer__block_invoke()
{
  v4 = [MEMORY[0x277D0C1F8] reporter];
  v0 = *MEMORY[0x277D0BE68];
  v1 = *MEMORY[0x277D0BED0];
  v2 = [MEMORY[0x277D0C048] currentGame];
  v3 = [v2 bundleIdentifier];
  [v4 reportEvent:v0 type:v1 bundleID:v3];
}

@end