@interface DKScreenTimePasscodeViewController
- (BOOL)passcodeViewController:(id)controller shouldEnableCompletionButtonForPasscode:(id)passcode;
- (DKScreenTimePasscodeViewController)initWithDeviceName:(id)name;
- (void)passcodeViewController:(id)controller didEnterPasscode:(id)passcode;
@end

@implementation DKScreenTimePasscodeViewController

- (DKScreenTimePasscodeViewController)initWithDeviceName:(id)name
{
  v4 = MEMORY[0x277CCA8D8];
  nameCopy = name;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"SCREEN_TIME_PASSCODE_TITLE" value:&stru_285BC2A70 table:@"Localizable"];

  v8 = MEMORY[0x277CCACA8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"SCREEN_TIME_PASSCODE_DETAIL" value:&stru_285BC2A70 table:@"Localizable"];
  nameCopy = [v8 stringWithFormat:v10, nameCopy];

  v15.receiver = self;
  v15.super_class = DKScreenTimePasscodeViewController;
  v12 = [(DKScreenTimePasscodeViewController *)&v15 initWithTitle:v7 detailText:nameCopy icon:0 contentLayout:2];
  v13 = v12;
  if (v12)
  {
    [(OBPasscodeViewController *)v12 setDelegate:v12];
    [(OBPasscodeViewController *)v13 configureForPasscodeEntry:0 length:4];
  }

  return v13;
}

- (void)passcodeViewController:(id)controller didEnterPasscode:(id)passcode
{
  passcodeCopy = passcode;
  verifyPasscode = [(DKScreenTimePasscodeViewController *)self verifyPasscode];
  v7 = (verifyPasscode)[2](verifyPasscode, passcodeCopy);

  if (v7)
  {
    passcodeVerified = [(DKScreenTimePasscodeViewController *)self passcodeVerified];
    passcodeVerified[2]();
  }

  else
  {
    [(OBPasscodeViewController *)self shakePasscodeEntry];

    [(OBPasscodeViewController *)self clearPasscodeEntry];
  }
}

- (BOOL)passcodeViewController:(id)controller shouldEnableCompletionButtonForPasscode:(id)passcode
{
  controllerCopy = controller;
  passcodeCopy = passcode;
  __assert_rtn("[DKScreenTimePasscodeViewController passcodeViewController:shouldEnableCompletionButtonForPasscode:]", "DKScreenTimePasscodeViewController.m", 53, "0");
}

@end