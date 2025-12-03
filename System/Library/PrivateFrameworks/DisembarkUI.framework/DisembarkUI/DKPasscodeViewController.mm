@interface DKPasscodeViewController
- (DKPasscodeViewController)init;
- (id)completionButtonTitleForPasscodeViewController:(id)controller;
- (void)passcodeViewController:(id)controller didEnterPasscode:(id)passcode;
@end

@implementation DKPasscodeViewController

- (DKPasscodeViewController)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PASSCODE_TITLE" value:&stru_285BC2A70 table:@"Localizable"];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"PASSCODE_DETAIL" value:&stru_285BC2A70 table:@"Localizable"];

  v10.receiver = self;
  v10.super_class = DKPasscodeViewController;
  v7 = [(DKPasscodeViewController *)&v10 initWithTitle:v4 detailText:v6 icon:0 contentLayout:2];
  v8 = v7;
  if (v7)
  {
    [(OBPasscodeViewController *)v7 setDelegate:v7];
  }

  return v8;
}

- (id)completionButtonTitleForPasscodeViewController:(id)controller
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"NEXT" value:&stru_285BC2A70 table:@"Localizable"];

  return v4;
}

- (void)passcodeViewController:(id)controller didEnterPasscode:(id)passcode
{
  passcodeCopy = passcode;
  verifyPasscode = [(DKPasscodeViewController *)self verifyPasscode];
  v6 = (verifyPasscode)[2](verifyPasscode, passcodeCopy);

  if (v6)
  {
    passcodeVerified = [(DKPasscodeViewController *)self passcodeVerified];
    (passcodeVerified)[2](passcodeVerified, passcodeCopy, [(DKPasscodeViewController *)self simplePasscodeType]);
  }

  else
  {
    [(OBPasscodeViewController *)self shakePasscodeEntry];
    [(OBPasscodeViewController *)self clearPasscodeEntry];
  }
}

@end