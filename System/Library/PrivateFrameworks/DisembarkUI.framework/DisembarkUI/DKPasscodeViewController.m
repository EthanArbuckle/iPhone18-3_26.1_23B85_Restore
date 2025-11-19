@interface DKPasscodeViewController
- (DKPasscodeViewController)init;
- (id)completionButtonTitleForPasscodeViewController:(id)a3;
- (void)passcodeViewController:(id)a3 didEnterPasscode:(id)a4;
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

- (id)completionButtonTitleForPasscodeViewController:(id)a3
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"NEXT" value:&stru_285BC2A70 table:@"Localizable"];

  return v4;
}

- (void)passcodeViewController:(id)a3 didEnterPasscode:(id)a4
{
  v8 = a4;
  v5 = [(DKPasscodeViewController *)self verifyPasscode];
  v6 = (v5)[2](v5, v8);

  if (v6)
  {
    v7 = [(DKPasscodeViewController *)self passcodeVerified];
    (v7)[2](v7, v8, [(DKPasscodeViewController *)self simplePasscodeType]);
  }

  else
  {
    [(OBPasscodeViewController *)self shakePasscodeEntry];
    [(OBPasscodeViewController *)self clearPasscodeEntry];
  }
}

@end