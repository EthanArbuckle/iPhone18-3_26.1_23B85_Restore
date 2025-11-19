@interface DSAccessResetController
- (DSAccessResetController)init;
- (DSNavigationDelegate)delegate;
- (void)finishFlow;
- (void)goToSafetyCheck;
- (void)viewDidLoad;
@end

@implementation DSAccessResetController

- (DSAccessResetController)init
{
  v3 = MEMORY[0x277D755D0];
  v4 = [MEMORY[0x277D75348] systemBlueColor];
  v5 = [v3 configurationWithHierarchicalColor:v4];

  if (+[DSFeatureFlags isNaturalUIEnabled])
  {
    [MEMORY[0x277D755B8] systemImageNamed:@"person.crop.circle.badge.checkmark"];
  }

  else
  {
    [MEMORY[0x277D755B8] systemImageNamed:@"person.crop.circle.badge.checkmark" withConfiguration:v5];
  }
  v6 = ;
  v7 = DSUILocStringForKey(@"ACCESS_RESET");
  v8 = DSUILocStringForKey(@"ACCESS_RESET_DETAIL");
  v12.receiver = self;
  v12.super_class = DSAccessResetController;
  v9 = [(DSAccessResetController *)&v12 initWithTitle:v7 detailText:v8 icon:v6];

  if (v9)
  {
    v10 = +[DSAlternateDeviceAccessManager sharedManager];
    [(DSAccessResetController *)v9 setAccessManager:v10];
  }

  return v9;
}

- (void)viewDidLoad
{
  v30.receiver = self;
  v30.super_class = DSAccessResetController;
  [(DSOBWelcomeController *)&v30 viewDidLoad];
  v3 = DSUILocStringForKey(@"DONE");
  v4 = [DSUIUtilities setUpBoldButtonForController:self title:v3 target:self selector:sel_finishFlow];

  v5 = DSUILocStringForKey(@"GO_TO_SAFETY_CHECK");
  v6 = [DSUIUtilities setUpLinkButtonForController:self title:v5 target:self selector:sel_goToSafetyCheck];

  v7 = [(DSAccessResetController *)self accessManager];
  v8 = [v7 mirroringDevices];
  v9 = [v8 count];

  if (v9)
  {
    v10 = DSUILocStringForKey(@"ACCESS_RESET_BULLET_MIRRORING");
    v11 = DSUILocStringForKey(@"ACCESS_RESET_BULLET_MIRRORING_DETAIL");
    v12 = [(DSAccessResetController *)self _checklistImage];
    [(DSAccessResetController *)self addBulletedListItemWithTitle:v10 description:v11 image:v12];
  }

  v13 = [(DSAccessResetController *)self accessManager];
  v14 = [v13 syncingDevices];
  v15 = [v14 count];

  if (v15)
  {
    v16 = DSUILocStringForKey(@"ACCESS_RESET_BULLET_PAIRING");
    v17 = DSUILocStringForKey(@"ACCESS_RESET_BULLET_PAIRING_DETAIL");
    v18 = [(DSAccessResetController *)self _checklistImage];
    [(DSAccessResetController *)self addBulletedListItemWithTitle:v16 description:v17 image:v18];
  }

  v19 = [(DSAccessResetController *)self accessManager];
  v20 = [v19 hasAlternateFaceID];

  if (v20)
  {
    v21 = @"ACCESS_RESET_BULLET_ALT_FACEID_DETAIL";
LABEL_9:
    v24 = DSUILocStringForKey(@"ACCESS_RESET_BULLET_ALT_BIO");
    v25 = DSUILocStringForKey(v21);
    v26 = [(DSAccessResetController *)self _checklistImage];
    [(DSAccessResetController *)self addBulletedListItemWithTitle:v24 description:v25 image:v26];

    goto LABEL_10;
  }

  v22 = [(DSAccessResetController *)self accessManager];
  v23 = [v22 hasAlternateTouchID];

  if (v23)
  {
    v21 = @"ACCESS_RESET_BULLET_ALT_TOUCHID_DETAIL";
    goto LABEL_9;
  }

LABEL_10:
  v27 = DSUILocStringForKey(@"ACCESS_RESET_BULLET_PASSCODE");
  v28 = DSUILocStringForKey(@"ACCESS_RESET_BULLET_PASSCODE_DETAIL");
  v29 = [(DSAccessResetController *)self _checklistImage];
  [(DSAccessResetController *)self addBulletedListItemWithTitle:v27 description:v28 image:v29];
}

- (void)goToSafetyCheck
{
  v3 = [(DSAccessResetController *)self accessManager];
  [v3 sendSummaryAnalyticsWithReviewAction:1 resetAction:1 exit:1];

  v4 = [(DSAccessResetController *)self delegate];
  [v4 goToCustomizeSharing];
}

- (void)finishFlow
{
  v3 = [(DSAccessResetController *)self accessManager];
  [v3 sendSummaryAnalyticsWithReviewAction:1 resetAction:1 exit:0];

  v4 = [(DSAccessResetController *)self presentingViewController];
  [v4 dismissViewControllerAnimated:1 completion:0];
}

- (DSNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end