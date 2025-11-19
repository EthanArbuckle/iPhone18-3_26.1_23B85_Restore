@interface UIAlertController(MobileSafariFrameworkExtras)
+ (id)safari_closeAllTabsConfirmationWithCloseAllLabel:()MobileSafariFrameworkExtras closeHandler:;
@end

@implementation UIAlertController(MobileSafariFrameworkExtras)

+ (id)safari_closeAllTabsConfirmationWithCloseAllLabel:()MobileSafariFrameworkExtras closeHandler:
{
  v5 = a4;
  v6 = MEMORY[0x1E69DC650];
  v7 = a3;
  v8 = _WBSLocalizedString();
  v9 = [v6 alertControllerWithTitle:v8 message:0 preferredStyle:0];

  v10 = [v9 view];
  [v10 setAccessibilityIdentifier:@"ConfirmCloseAllTabsAlert"];

  v11 = MEMORY[0x1E69DC648];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __112__UIAlertController_MobileSafariFrameworkExtras__safari_closeAllTabsConfirmationWithCloseAllLabel_closeHandler___block_invoke;
  v20[3] = &unk_1E721E8A0;
  v21 = v5;
  v12 = v5;
  v13 = [v11 actionWithTitle:v7 style:2 handler:v20];

  [v9 addAction:v13];
  v14 = [v9 actions];
  v15 = [v14 firstObject];
  [v15 setAccessibilityIdentifier:@"CloseAllTabsButton"];

  v16 = MEMORY[0x1E69DC648];
  v17 = _WBSLocalizedString();
  v18 = [v16 actionWithTitle:v17 style:1 handler:0];
  [v9 addAction:v18];

  return v9;
}

@end