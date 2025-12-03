@interface UIViewController(HUCommonAlertController)
+ (void)hu_presentingLockLimitAlertIfNeededFromViewController:()HUCommonAlertController home:user:accessory:include:continueActionBlock:cancelActionBlock:;
- (void)hu_presentNotificationAlertForNotificationCapableObjects:()HUCommonAlertController notificationsEnabled:mainActionBlock:notNowActionBlock:;
@end

@implementation UIViewController(HUCommonAlertController)

- (void)hu_presentNotificationAlertForNotificationCapableObjects:()HUCommonAlertController notificationsEnabled:mainActionBlock:notNowActionBlock:
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if (a4)
  {
    v12 = @"On";
  }

  else
  {
    v12 = @"Off";
  }

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"HUNotificationAlert_Title_%@", v12];
  v14 = _HULocalizedStringWithDefaultValue(v13, v13, 1);

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"HUNotificationAlert_Message_%@", v12];
  v16 = _HULocalizedStringWithDefaultValue(v15, v15, 1);

  v17 = [MEMORY[0x277D75110] alertControllerWithTitle:v14 message:v16 preferredStyle:1];
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"HUNotificationAlert_Option_Turn%@", v12];
  v19 = _HULocalizedStringWithDefaultValue(v18, v18, 1);

  v20 = MEMORY[0x277D750F8];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __157__UIViewController_HUCommonAlertController__hu_presentNotificationAlertForNotificationCapableObjects_notificationsEnabled_mainActionBlock_notNowActionBlock___block_invoke;
  v31[3] = &unk_277DBD8B0;
  v34 = a4;
  v32 = v9;
  v33 = v10;
  v21 = v10;
  v22 = v9;
  v23 = [v20 actionWithTitle:v19 style:0 handler:v31];
  [v23 setAccessibilityIdentifier:@"Home.Guest.Categories.Notifications.Alert.TurnOnOffNotificationButton"];
  [v17 addAction:v23];
  v24 = MEMORY[0x277D750F8];
  v25 = _HULocalizedStringWithDefaultValue(@"HUNotNowTitle", @"HUNotNowTitle", 1);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __157__UIViewController_HUCommonAlertController__hu_presentNotificationAlertForNotificationCapableObjects_notificationsEnabled_mainActionBlock_notNowActionBlock___block_invoke_2;
  v29[3] = &unk_277DBBA20;
  v30 = v11;
  v26 = v11;
  v27 = [v24 actionWithTitle:v25 style:0 handler:v29];

  [v27 setAccessibilityIdentifier:@"Home.Guest.Categories.Notifications.Alert.NotNowButton"];
  [v17 addAction:v27];
  [self presentViewController:v17 animated:1 completion:0];
}

+ (void)hu_presentingLockLimitAlertIfNeededFromViewController:()HUCommonAlertController home:user:accessory:include:continueActionBlock:cancelActionBlock:
{
  v74[2] = *MEMORY[0x277D85DE8];
  v56 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v57 = a8;
  v17 = v14;
  v54 = a9;
  v58 = v15;
  v18 = [v14 homeAccessControlForUser:v15];
  restrictedGuestAccessSettings = [v18 restrictedGuestAccessSettings];
  v20 = [restrictedGuestAccessSettings mutableCopy];

  accessAllowedToAccessories = [v20 accessAllowedToAccessories];
  v22 = [accessAllowedToAccessories mutableCopy];

  if (a7)
  {
    [v22 na_safeAddObject:v16];
  }

  else if ([v22 na_safeContainsObject:v16])
  {
    [v22 removeObject:v16];
  }

  v23 = [v22 copy];
  [v20 setAccessAllowedToAccessories:v23];

  locksWithReducedFunctionalityDueToSchedule = [v20 locksWithReducedFunctionalityDueToSchedule];
  v55 = v16;
  v25 = [locksWithReducedFunctionalityDueToSchedule na_safeContainsObject:v16] & a7;

  v26 = HFLogForCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    hf_prettyDescription = [v15 hf_prettyDescription];
    *buf = 136315906;
    v71 = "+[UIViewController(HUCommonAlertController) hu_presentingLockLimitAlertIfNeededFromViewController:home:user:accessory:include:continueActionBlock:cancelActionBlock:]";
    v72 = 1024;
    *v73 = v25;
    *&v73[4] = 1024;
    *&v73[6] = a7;
    LOWORD(v74[0]) = 2112;
    *(v74 + 2) = hf_prettyDescription;
    _os_log_impl(&dword_20CEB6000, v26, OS_LOG_TYPE_DEFAULT, "(%s) displayLimitAlert = %{BOOL}d | isOn = %{BOOL}d | user %@", buf, 0x22u);
  }

  v28 = HFLogForCategory();
  v53 = v22;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = MEMORY[0x277CD1650];
    locksWithReducedFunctionalityDueToSchedule2 = [v20 locksWithReducedFunctionalityDueToSchedule];
    allObjects = [locksWithReducedFunctionalityDueToSchedule2 allObjects];
    v32 = [v29 hf_minimumDescriptionsOfAccessories:allObjects];
    v33 = MEMORY[0x277CD1650];
    [v20 accessAllowedToAccessories];
    v51 = v25;
    v35 = v34 = v17;
    allObjects2 = [v35 allObjects];
    v37 = [v33 hf_minimumDescriptionsOfAccessories:allObjects2];
    *buf = 136315650;
    v71 = "+[UIViewController(HUCommonAlertController) hu_presentingLockLimitAlertIfNeededFromViewController:home:user:accessory:include:continueActionBlock:cancelActionBlock:]";
    v72 = 2112;
    *v73 = v32;
    *&v73[8] = 2112;
    v74[0] = v37;
    _os_log_impl(&dword_20CEB6000, v28, OS_LOG_TYPE_DEFAULT, "(%s) ... locksWithReducedFunct = %@ | allowedAccessories = %@", buf, 0x20u);

    v17 = v34;
    v25 = v51;

    v22 = v53;
  }

  if (v25)
  {
    v52 = _HULocalizedStringWithDefaultValue(@"HURestrictedGuest_LocksWithReducedFunctionalityDueToSchedule_Alert_SingleGuest_SingleLock", @"HURestrictedGuest_LocksWithReducedFunctionalityDueToSchedule_Alert_SingleGuest_SingleLock", 1);
    v38 = [MEMORY[0x277D75110] alertControllerWithTitle:&stru_2823E0EE8 message:v52 preferredStyle:1];
    v39 = MEMORY[0x277D750F8];
    v40 = _HULocalizedStringWithDefaultValue(@"HUContinueTitle", @"HUContinueTitle", 1);
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __165__UIViewController_HUCommonAlertController__hu_presentingLockLimitAlertIfNeededFromViewController_home_user_accessory_include_continueActionBlock_cancelActionBlock___block_invoke;
    v67[3] = &unk_277DBB9F8;
    v41 = v55;
    v42 = v55;
    v68 = v42;
    v69 = v57;
    v43 = [v39 actionWithTitle:v40 style:0 handler:v67];

    [v43 setAccessibilityIdentifier:@"Home.Guest.Categories.Alert.ReducedFunctionality.ContinueButton"];
    [v38 addAction:v43];
    v44 = MEMORY[0x277D750F8];
    v45 = _HULocalizedStringWithDefaultValue(@"HUCancelTitle", @"HUCancelTitle", 1);
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __165__UIViewController_HUCommonAlertController__hu_presentingLockLimitAlertIfNeededFromViewController_home_user_accessory_include_continueActionBlock_cancelActionBlock___block_invoke_54;
    v64[3] = &unk_277DBB9F8;
    v46 = v42;
    v65 = v46;
    v47 = v54;
    v66 = v54;
    v48 = [v44 actionWithTitle:v45 style:0 handler:v64];

    [v48 setAccessibilityIdentifier:@"Home.Guest.Categories.Alert.ReducedFunctionality.CancelButton"];
    [v38 addAction:v48];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __165__UIViewController_HUCommonAlertController__hu_presentingLockLimitAlertIfNeededFromViewController_home_user_accessory_include_continueActionBlock_cancelActionBlock___block_invoke_58;
    v59[3] = &unk_277DB8A60;
    v49 = v56;
    v60 = v56;
    v61 = v17;
    v62 = v46;
    v63 = v58;
    v22 = v53;
    [v60 presentViewController:v38 animated:1 completion:v59];

    v50 = v57;
  }

  else
  {
    v41 = v55;
    v49 = v56;
    v50 = v57;
    v47 = v54;
    if (v57)
    {
      v57[2](v57);
    }
  }
}

@end