@interface UIAlertController(MCUI)
+ (void)MCUIShowAlertForError:()MCUI fromViewController:suggestedTitle:suggestedMessage:completion:;
+ (void)MCUIShowRebootAlertFromViewController:()MCUI;
- (void)MCUIAddActionWithTitle:()MCUI style:completion:;
- (void)MCUIAddCancelActionWithTitle:()MCUI;
@end

@implementation UIAlertController(MCUI)

- (void)MCUIAddActionWithTitle:()MCUI style:completion:
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __67__UIAlertController_MCUI__MCUIAddActionWithTitle_style_completion___block_invoke;
    v13[3] = &unk_279861C90;
    v14 = v9;
    v11 = MEMORY[0x259C799C0](v13);
  }

  else
  {
    v11 = 0;
  }

  v12 = [MEMORY[0x277D750F8] actionWithTitle:v8 style:a4 handler:v11];
  [a1 addAction:v12];
}

- (void)MCUIAddCancelActionWithTitle:()MCUI
{
  v4 = [MEMORY[0x277D750F8] actionWithTitle:a3 style:1 handler:0];
  [a1 addAction:v4];
}

+ (void)MCUIShowRebootAlertFromViewController:()MCUI
{
  v3 = a3;
  if (MCUIForPairedDevice())
  {
    NSLog(&cfstr_ShowingRebootM.isa);
    v4 = MCUILocalizedString(@"REBOOT_SUGGESTED_TITLE_WATCH");
    MCUILocalizedString(@"REBOOT_SUGGESTED_TEXT_WATCH");
  }

  else
  {
    NSLog(&cfstr_ShowingRebootM_0.isa);
    v4 = MCUILocalizedString(@"REBOOT_SUGGESTED_TITLE");
    MCUILocalizedStringByDevice(@"REBOOT_SUGGESTED_TEXT");
  }
  v5 = ;
  v6 = [MEMORY[0x277D75110] alertControllerWithTitle:v4 message:v5 preferredStyle:1];
  v7 = MEMORY[0x277D750F8];
  v8 = MCUILocalizedString(@"REBOOT");
  v9 = [v7 actionWithTitle:v8 style:0 handler:&__block_literal_global_8];
  [v6 addAction:v9];

  v10 = MEMORY[0x277D750F8];
  v11 = MCUILocalizedString(@"NOTNOW");
  v12 = [v10 actionWithTitle:v11 style:0 handler:0];
  [v6 addAction:v12];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__UIAlertController_MCUI__MCUIShowRebootAlertFromViewController___block_invoke_2;
  v15[3] = &unk_279861C40;
  v16 = v3;
  v17 = v6;
  v13 = v6;
  v14 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v15);
}

+ (void)MCUIShowAlertForError:()MCUI fromViewController:suggestedTitle:suggestedMessage:completion:
{
  v23 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  if (!MCUIForPairedDevice())
  {
    goto LABEL_6;
  }

  v15 = [v23 domain];
  v16 = [v15 isEqualToString:@"NSSErrorDomain"];

  if (v16)
  {
    v17 = [v23 userInfo];
    v18 = [v17 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    v19 = [v18 localizedDescription];

    v20 = [v18 localizedRecoverySuggestion];

    v13 = v20;
    v12 = v19;
  }

  if (v12 | v13)
  {
LABEL_6:
    NSLog(&cfstr_McuiPresenting_0.isa, v12, v13, v23);
    v21 = [MEMORY[0x277D75110] alertControllerWithTitle:v12 message:v13 preferredStyle:1];
    v22 = MCUILocalizedString(@"OK");
    [v21 MCUIAddCancelActionWithTitle:v22];

    [v11 dmc_presentAlert:v21 completion:v14];
  }

  else
  {
    NSLog(&cfstr_McuiPresenting.isa, v23);
    [MEMORY[0x277D75110] MCUIShowWatchUnavailableAlertWithCompletion:v14];
  }
}

@end