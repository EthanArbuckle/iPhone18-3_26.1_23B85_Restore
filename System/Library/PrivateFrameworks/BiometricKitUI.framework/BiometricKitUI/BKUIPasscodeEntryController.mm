@interface BKUIPasscodeEntryController
+ (BOOL)isDevicePasscodeSet;
- (BKUIPasscodeEntryController)initWithVerifiedPasscodeAction:(id)action;
- (BOOL)verifyPasscode:(id)passcode;
- (id)completionButtonTitleForPasscodeViewController:(id)controller;
- (int)simplePasscodeType;
- (int)unlockType;
- (void)cancelPasscodeEntry;
- (void)passcodeViewController:(id)controller didEnterPasscode:(id)passcode;
- (void)setUnlockScreenType:(int)type simplePasscodeType:(int)passcodeType;
- (void)viewDidLoad;
@end

@implementation BKUIPasscodeEntryController

- (BKUIPasscodeEntryController)initWithVerifiedPasscodeAction:(id)action
{
  actionCopy = action;
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
    v12 = [actionCopy copy];
    passcodeEntryAction = v11->_passcodeEntryAction;
    v11->_passcodeEntryAction = v12;
  }

  return v11;
}

+ (BOOL)isDevicePasscodeSet
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isPasscodeSet = [mEMORY[0x277D262A0] isPasscodeSet];

  return isPasscodeSet;
}

- (int)unlockType
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  unlockScreenType = [mEMORY[0x277D262A0] unlockScreenType];

  return unlockScreenType;
}

- (int)simplePasscodeType
{
  v4 = 0;
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] unlockScreenTypeWithOutSimplePasscodeType:&v4];

  return v4;
}

- (BOOL)verifyPasscode:(id)passcode
{
  v3 = MEMORY[0x277D262A0];
  passcodeCopy = passcode;
  sharedConnection = [v3 sharedConnection];
  v10 = 0;
  v6 = [sharedConnection unlockDeviceWithPasscode:passcodeCopy outError:&v10];

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

- (void)setUnlockScreenType:(int)type simplePasscodeType:(int)passcodeType
{
  if (type == 2)
  {
    v4 = 0;
    v5 = 1;
  }

  else
  {
    if (!type)
    {
      switch(passcodeType)
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

  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v6];
}

- (void)cancelPasscodeEntry
{
  passcodeEntryAction = [(BKUIPasscodeEntryController *)self passcodeEntryAction];
  passcodeEntryAction[2](passcodeEntryAction, 0);
}

- (id)completionButtonTitleForPasscodeViewController:(id)controller
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"NEXT" value:&stru_2853BB280 table:@"Pearl-periocular"];

  return v4;
}

- (void)passcodeViewController:(id)controller didEnterPasscode:(id)passcode
{
  passcodeCopy = passcode;
  if ([(BKUIPasscodeEntryController *)self verifyPasscode:?])
  {
    passcodeEntryAction = [(BKUIPasscodeEntryController *)self passcodeEntryAction];
    (passcodeEntryAction)[2](passcodeEntryAction, passcodeCopy);
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