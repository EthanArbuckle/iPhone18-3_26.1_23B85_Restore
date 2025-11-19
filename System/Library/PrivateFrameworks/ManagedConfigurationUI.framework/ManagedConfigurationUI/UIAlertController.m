@interface UIAlertController
@end

@implementation UIAlertController

void __67__UIAlertController_MCUI__MCUIAddActionWithTitle_style_completion___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__UIAlertController_MCUI__MCUIAddActionWithTitle_style_completion___block_invoke_2;
  block[3] = &unk_279861B30;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __65__UIAlertController_MCUI__MCUIShowRebootAlertFromViewController___block_invoke()
{
  if (MCUIForPairedDevice())
  {
    NSLog(&cfstr_McuiRebootingW.isa);
    v1 = objc_opt_new();
    [v1 rebootDevice];
  }

  else
  {
    NSLog(&cfstr_McuiRebootingI.isa);
    v1 = [objc_alloc(MEMORY[0x277D0AE10]) initWithReason:@"MCUI reboot iOS device"];
    [v1 setRebootType:1];
    v0 = [MEMORY[0x277D0AE18] sharedService];
    [v0 shutdownWithOptions:v1];
  }
}

@end