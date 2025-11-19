@interface UIAlertController(DisembarkUI)
+ (id)dkui_unknownFailureAlertControllerWithCompletion:()DisembarkUI;
@end

@implementation UIAlertController(DisembarkUI)

+ (id)dkui_unknownFailureAlertControllerWithCompletion:()DisembarkUI
{
  v3 = a3;
  v4 = MEMORY[0x277D75110];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"UNKNOWN_FAILURE_TITLE" value:&stru_285BC2A70 table:@"Localizable"];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"UNKNOWN_FAILURE_MESSAGE" value:&stru_285BC2A70 table:@"Localizable"];
  v9 = [v4 alertControllerWithTitle:v6 message:v8 preferredStyle:1];

  v10 = MEMORY[0x277D750F8];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"UNKNOWN_FAILURE_BUTTON_TITLE" value:&stru_285BC2A70 table:@"Localizable"];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __83__UIAlertController_DisembarkUI__dkui_unknownFailureAlertControllerWithCompletion___block_invoke;
  v16[3] = &unk_278F7D9C0;
  v17 = v3;
  v13 = v3;
  v14 = [v10 actionWithTitle:v12 style:0 handler:v16];
  [v9 addAction:v14];

  return v9;
}

@end