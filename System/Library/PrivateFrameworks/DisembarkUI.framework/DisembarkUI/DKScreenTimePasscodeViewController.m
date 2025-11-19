@interface DKScreenTimePasscodeViewController
- (BOOL)passcodeViewController:(id)a3 shouldEnableCompletionButtonForPasscode:(id)a4;
- (DKScreenTimePasscodeViewController)initWithDeviceName:(id)a3;
- (void)passcodeViewController:(id)a3 didEnterPasscode:(id)a4;
@end

@implementation DKScreenTimePasscodeViewController

- (DKScreenTimePasscodeViewController)initWithDeviceName:(id)a3
{
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"SCREEN_TIME_PASSCODE_TITLE" value:&stru_285BC2A70 table:@"Localizable"];

  v8 = MEMORY[0x277CCACA8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"SCREEN_TIME_PASSCODE_DETAIL" value:&stru_285BC2A70 table:@"Localizable"];
  v11 = [v8 stringWithFormat:v10, v5];

  v15.receiver = self;
  v15.super_class = DKScreenTimePasscodeViewController;
  v12 = [(DKScreenTimePasscodeViewController *)&v15 initWithTitle:v7 detailText:v11 icon:0 contentLayout:2];
  v13 = v12;
  if (v12)
  {
    [(OBPasscodeViewController *)v12 setDelegate:v12];
    [(OBPasscodeViewController *)v13 configureForPasscodeEntry:0 length:4];
  }

  return v13;
}

- (void)passcodeViewController:(id)a3 didEnterPasscode:(id)a4
{
  v5 = a4;
  v6 = [(DKScreenTimePasscodeViewController *)self verifyPasscode];
  v7 = (v6)[2](v6, v5);

  if (v7)
  {
    v8 = [(DKScreenTimePasscodeViewController *)self passcodeVerified];
    v8[2]();
  }

  else
  {
    [(OBPasscodeViewController *)self shakePasscodeEntry];

    [(OBPasscodeViewController *)self clearPasscodeEntry];
  }
}

- (BOOL)passcodeViewController:(id)a3 shouldEnableCompletionButtonForPasscode:(id)a4
{
  v5 = a3;
  v6 = a4;
  __assert_rtn("[DKScreenTimePasscodeViewController passcodeViewController:shouldEnableCompletionButtonForPasscode:]", "DKScreenTimePasscodeViewController.m", 53, "0");
}

@end