@interface UIAlertController(HUAdditions)
+ (id)alertControllerForAddingDestinationWithType:()HUAdditions andProceed:;
+ (id)alertControllerForAddingDestinationWithTypeString:()HUAdditions andProceed:;
+ (id)hu_actionSheetWithTitle:()HUAdditions message:anchorView:;
+ (id)hu_alertControllerForAcknowledgementWithTitle:()HUAdditions message:;
+ (id)hu_alertControllerForAddingPersonWithCompletionHandler:()HUAdditions;
+ (id)hu_alertControllerForHH2RequiredToAddPeopleForHome:()HUAdditions updateNowHandler:;
+ (id)hu_alertControllerForUnimplementedFeature:()HUAdditions;
+ (id)hu_alertControllerWithActivityIndicatorAndTitle:()HUAdditions;
- (void)hu_anchorActionSheetIfNeededFrom:()HUAdditions;
@end

@implementation UIAlertController(HUAdditions)

+ (id)alertControllerForAddingDestinationWithType:()HUAdditions andProceed:
{
  v5 = a4;
  if (a3 > 3)
  {
    v9 = 0;
    v7 = 0;
  }

  else
  {
    v6 = off_277DBBA88[a3];
    v7 = _HULocalizedStringWithDefaultValue(off_277DBBA68[a3], off_277DBBA68[a3], 1);
    v8 = _HULocalizedStringWithDefaultValue(v6, v6, 1);
    v9 = v8;
    if (v7)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v11 = [MEMORY[0x277D75110] alertControllerWithTitle:v7 message:v8 preferredStyle:1];
      [v11 addTextFieldWithConfigurationHandler:&__block_literal_global_76];
      v12 = MEMORY[0x277D750F8];
      v13 = _HULocalizedStringWithDefaultValue(@"HUAlertCancel", @"HUAlertCancel", 1);
      v14 = [v12 actionWithTitle:v13 style:1 handler:&__block_literal_global_29];
      [v11 addAction:v14];

      v15 = MEMORY[0x277D750F8];
      v16 = _HULocalizedStringWithDefaultValue(@"HUAlertAdd", @"HUAlertAdd", 1);
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __89__UIAlertController_HUAdditions__alertControllerForAddingDestinationWithType_andProceed___block_invoke_33;
      v23 = &unk_277DBB9F8;
      v17 = v11;
      v24 = v17;
      v25 = v5;
      v18 = [v15 actionWithTitle:v16 style:0 handler:&v20];
      [v17 addAction:{v18, v20, v21, v22, v23}];

      if (v17)
      {
        goto LABEL_10;
      }
    }
  }

  NSLog(&cfstr_Alertcontrolle.isa);
  v17 = 0;
LABEL_10:

  return v17;
}

+ (id)alertControllerForAddingDestinationWithTypeString:()HUAdditions andProceed:
{
  v5 = a4;
  v6 = MEMORY[0x277CCACA8];
  v7 = a3;
  capitalizedString = [v7 capitalizedString];
  v9 = [v6 stringWithFormat:@"Add %@", capitalizedString];

  v10 = MEMORY[0x277CCACA8];
  lowercaseString = [v7 lowercaseString];

  v12 = [v10 stringWithFormat:@"Enter a name for this %@.", lowercaseString];

  v13 = [MEMORY[0x277D75110] alertControllerWithTitle:v9 message:v12 preferredStyle:1];
  [v13 addTextFieldWithConfigurationHandler:&__block_literal_global_46];
  v14 = [MEMORY[0x277D750F8] actionWithTitle:@"Cancel" style:1 handler:&__block_literal_global_51];
  [v13 addAction:v14];

  v15 = MEMORY[0x277D750F8];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __95__UIAlertController_HUAdditions__alertControllerForAddingDestinationWithTypeString_andProceed___block_invoke_55;
  v22[3] = &unk_277DBB9F8;
  v16 = v13;
  v23 = v16;
  v24 = v5;
  v17 = v5;
  v18 = [v15 actionWithTitle:@"Add" style:0 handler:v22];
  [v16 addAction:v18];

  v19 = v24;
  v20 = v16;

  return v16;
}

+ (id)hu_alertControllerForUnimplementedFeature:()HUAdditions
{
  v3 = MEMORY[0x277D75110];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ is not yet implemented.", a3];
  v5 = [v3 alertControllerWithTitle:@"Not Implemented" message:v4 preferredStyle:1];

  v6 = [MEMORY[0x277D750F8] actionWithTitle:@"That's Lame" style:1 handler:&__block_literal_global_66];
  [v5 addAction:v6];

  return v5;
}

+ (id)hu_alertControllerWithActivityIndicatorAndTitle:()HUAdditions
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setText:v3];

  v5 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D76918] traits:2];
  [v4 setFont:v5];

  [v4 setLineBreakMode:2];
  [v4 setAdjustsFontSizeToFitWidth:1];
  [v4 setNeedsDisplayOnBoundsChange:1];
  font = [v4 font];
  [font pointSize];
  [v4 setMinimumScaleFactor:10.0 / v7];

  v8 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [v8 sizeToFit];
  [v8 startAnimating];
  v9 = objc_alloc(MEMORY[0x277D75A68]);
  v18[0] = v8;
  v18[1] = v4;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v11 = [v9 initWithArrangedSubviews:v10];

  [v11 setSpacing:8.0];
  [v11 setDistribution:0];
  [v11 setAlignment:3];
  [v11 setLayoutMarginsRelativeArrangement:1];
  [v11 sizeToFit];
  v12 = objc_opt_new();
  [v12 setView:v11];
  [v11 bounds];
  [v12 setPreferredContentSize:{v13, v14}];
  v15 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:1];
  v16 = [MEMORY[0x277D750F8] _actionWithContentViewController:v12 style:0];
  [v15 addAction:v16];

  return v15;
}

+ (id)hu_alertControllerForAcknowledgementWithTitle:()HUAdditions message:
{
  v4 = [MEMORY[0x277D75110] alertControllerWithTitle:a3 message:a4 preferredStyle:1];
  v5 = _HULocalizedStringWithDefaultValue(@"HUOkTitle", @"HUOkTitle", 1);
  v6 = [MEMORY[0x277D750F8] actionWithTitle:v5 style:0 handler:&__block_literal_global_77];
  [v4 addAction:v6];

  return v4;
}

+ (id)hu_alertControllerForAddingPersonWithCompletionHandler:()HUAdditions
{
  v3 = a3;
  v4 = MEMORY[0x277D75110];
  v5 = _HULocalizedStringWithDefaultValue(@"HUUsersHH2InviteAlertTitle", @"HUUsersHH2InviteAlertTitle", 1);
  v6 = _HULocalizedStringWithDefaultValue(@"HUUsersHH2InviteAlertMessage", @"HUUsersHH2InviteAlertMessage", 1);
  v7 = [v4 alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v8 = MEMORY[0x277D750F8];
  v9 = _HULocalizedStringWithDefaultValue(@"HUUsersHH2InviteAlertConfirmTitle", @"HUUsersHH2InviteAlertConfirmTitle", 1);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __89__UIAlertController_HUAdditions__hu_alertControllerForAddingPersonWithCompletionHandler___block_invoke;
  v22[3] = &unk_277DBBA20;
  v10 = v3;
  v23 = v10;
  v11 = [v8 actionWithTitle:v9 style:0 handler:v22];

  [v7 addAction:v11];
  v12 = MEMORY[0x277D750F8];
  v13 = _HULocalizedStringWithDefaultValue(@"HUUsersHH2InviteAlertIgnoreTitle", @"HUUsersHH2InviteAlertIgnoreTitle", 1);
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __89__UIAlertController_HUAdditions__hu_alertControllerForAddingPersonWithCompletionHandler___block_invoke_90;
  v20 = &unk_277DBBA20;
  v21 = v10;
  v14 = v10;
  v15 = [v12 actionWithTitle:v13 style:0 handler:&v17];

  [v7 addAction:{v15, v17, v18, v19, v20}];

  return v7;
}

+ (id)hu_actionSheetWithTitle:()HUAdditions message:anchorView:
{
  v7 = MEMORY[0x277D75110];
  v8 = a5;
  v9 = [v7 alertControllerWithTitle:a3 message:a4 preferredStyle:0];
  [v9 hu_anchorActionSheetIfNeededFrom:v8];

  return v9;
}

- (void)hu_anchorActionSheetIfNeededFrom:()HUAdditions
{
  v6 = a3;
  if (v6)
  {
    popoverPresentationController = [self popoverPresentationController];

    if (popoverPresentationController)
    {
      popoverPresentationController2 = [self popoverPresentationController];
      [popoverPresentationController2 setSourceView:v6];
    }
  }
}

+ (id)hu_alertControllerForHH2RequiredToAddPeopleForHome:()HUAdditions updateNowHandler:
{
  v5 = a3;
  v6 = a4;
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  homeManager = [mEMORY[0x277D146E8] homeManager];
  hasOptedToHH2 = [homeManager hasOptedToHH2];

  if (hasOptedToHH2)
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "[alertForHH2RequiredToAddPeopleForHome:] User's account is in HH2, so alert is not populated.", buf, 2u);
    }

    v11 = 0;
  }

  else
  {
    v12 = MEMORY[0x277D75110];
    v13 = _HULocalizedStringWithDefaultValue(@"HUUsersHH2InviteAlertTitle", @"HUUsersHH2InviteAlertTitle", 1);
    v14 = _HULocalizedStringWithDefaultValue(@"HUUsersHH2RequiredToInviteAlertMessage", @"HUUsersHH2RequiredToInviteAlertMessage", 1);
    v11 = [v12 alertControllerWithTitle:v13 message:v14 preferredStyle:1];

    v15 = MEMORY[0x277D750F8];
    v16 = _HULocalizedStringWithDefaultValue(@"HUUsersHH2InviteAlertConfirmTitle", @"HUUsersHH2InviteAlertConfirmTitle", 1);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __102__UIAlertController_HUAdditions__hu_alertControllerForHH2RequiredToAddPeopleForHome_updateNowHandler___block_invoke;
    v25[3] = &unk_277DBBA48;
    v27 = v6;
    v17 = v5;
    v26 = v17;
    v18 = [v15 actionWithTitle:v16 style:0 handler:v25];

    [v11 addAction:v18];
    v19 = MEMORY[0x277D750F8];
    v20 = _HULocalizedStringWithDefaultValue(@"HUCancelTitle", @"HUCancelTitle", 1);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __102__UIAlertController_HUAdditions__hu_alertControllerForHH2RequiredToAddPeopleForHome_updateNowHandler___block_invoke_98;
    v23[3] = &unk_277DB7600;
    v24 = v17;
    v21 = [v19 actionWithTitle:v20 style:1 handler:v23];

    [v11 addAction:v21];
    v10 = v27;
  }

  return v11;
}

@end