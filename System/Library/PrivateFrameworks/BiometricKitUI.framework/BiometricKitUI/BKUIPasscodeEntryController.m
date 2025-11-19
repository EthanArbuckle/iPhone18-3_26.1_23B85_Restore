@interface BKUIPasscodeEntryController
+ (BOOL)isDevicePasscodeSet;
- (BKUIPasscodeEntryController)initWithVerifiedPasscodeAction:(id)a3;
- (BOOL)verifyPasscode:(id)a3;
- (id)completionButtonTitleForPasscodeViewController:(id)a3;
- (int)simplePasscodeType;
- (int)unlockType;
- (void)cancelPasscodeEntry;
- (void)passcodeViewController:(id)a3 didEnterPasscode:(id)a4;
- (void)setUnlockScreenType:(int)a3 simplePasscodeType:(int)a4;
- (void)viewDidLoad;
@end

@implementation BKUIPasscodeEntryController

- (BKUIPasscodeEntryController)initWithVerifiedPasscodeAction:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"PASSCODE_TITLE"];
  v7 = [v5 localizedStringForKey:v6 value:&stru_2853BB280 table:@"Pearl-periocular"];

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"PASSCODE_DETAIL"];
  v10 = [v8 localizedStringForKey:v9 value:&stru_2853BB280 table:@"Pearl-periocular"];

  v15.receiver = self;
  v15.super_class = BKUIPasscodeEntryController;
  v11 = [(BKUIPasscodeEntryController *)&v15 initWithTitle:v7 detailText:v10 icon:0];
  if (v11)
  {
    v12 = [v4 copy];
    passcodeEntryAction = v11->_passcodeEntryAction;
    v11->_passcodeEntryAction = v12;
  }

  return v11;
}

+ (BOOL)isDevicePasscodeSet
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isPasscodeSet];

  return v3;
}

- (int)unlockType
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 unlockScreenType];

  return v3;
}

- (int)simplePasscodeType
{
  v4 = 0;
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  [v2 unlockScreenTypeWithOutSimplePasscodeType:&v4];

  return v4;
}

- (BOOL)verifyPasscode:(id)a3
{
  v3 = MEMORY[0x277D262A0];
  v4 = a3;
  v5 = [v3 sharedConnection];
  v10 = 0;
  v6 = [v5 unlockDeviceWithPasscode:v4 outError:&v10];

  v7 = v10;
  if ((v6 & 1) == 0)
  {
    v8 = _BKUILoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(BKUIPasscodeEntryController *)v7 verifyPasscode:v8];
    }
  }

  return v6;
}

- (void)setUnlockScreenType:(int)a3 simplePasscodeType:(int)a4
{
  if (a3 == 2)
  {
    v4 = 0;
    v5 = 1;
  }

  else
  {
    if (!a3)
    {
      switch(a4)
      {
        case 0:
          v5 = 0;
          v4 = 4;
          goto LABEL_10;
        case 1:
          v5 = 0;
          v4 = 6;
          goto LABEL_10;
        case -1:
          [BKUIPasscodeEntryController setUnlockScreenType:simplePasscodeType:];
      }
    }

    v4 = 0;
    v5 = 0;
  }

LABEL_10:
  v6.receiver = self;
  v6.super_class = BKUIPasscodeEntryController;
  [(OBPasscodeViewController *)&v6 configureForPasscodeEntry:v5 length:v4];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = BKUIPasscodeEntryController;
  [(OBPasscodeViewController *)&v8 viewDidLoad];
  [(OBPasscodeViewController *)self setDelegate:self];
  [(BKUIPasscodeEntryController *)self setUnlockScreenType:[(BKUIPasscodeEntryController *)self unlockType] simplePasscodeType:[(BKUIPasscodeEntryController *)self simplePasscodeType]];
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CANCEL" value:&stru_2853BB280 table:@"Pearl-periocular"];
  v6 = [v3 initWithTitle:v5 style:0 target:self action:sel_cancelPasscodeEntry];

  v7 = [(OBBaseWelcomeController *)self navigationItem];
  [v7 setLeftBarButtonItem:v6];
}

- (void)cancelPasscodeEntry
{
  v2 = [(BKUIPasscodeEntryController *)self passcodeEntryAction];
  v2[2](v2, 0);
}

- (id)completionButtonTitleForPasscodeViewController:(id)a3
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"NEXT" value:&stru_2853BB280 table:@"Pearl-periocular"];

  return v4;
}

- (void)passcodeViewController:(id)a3 didEnterPasscode:(id)a4
{
  v6 = a4;
  if ([(BKUIPasscodeEntryController *)self verifyPasscode:?])
  {
    v5 = [(BKUIPasscodeEntryController *)self passcodeEntryAction];
    (v5)[2](v5, v6);
  }

  else
  {
    [(OBPasscodeViewController *)self shakePasscodeEntry];
    [(OBPasscodeViewController *)self clearPasscodeEntry];
  }
}

- (void)verifyPasscode:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_241B0A000, a2, OS_LOG_TYPE_ERROR, "Failed to verify passcode %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end