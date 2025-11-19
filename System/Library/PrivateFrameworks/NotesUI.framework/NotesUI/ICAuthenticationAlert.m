@interface ICAuthenticationAlert
+ (BOOL)shouldPresentSwitchToDevicePasswordPromptForAccount:(id)a3;
+ (id)aboutLockedNotesInfoAlert;
+ (id)cannotAddAttachmentsInfoAlertWithAttachmentCount:(unint64_t)a3;
+ (id)cannotLockInfoAlertWithReason:(unint64_t)a3;
+ (id)cannotSetCustomPasswordInfoAlert;
+ (id)cannotUnlockInfoAlert;
+ (id)customAccountNameForAccount:(id)a3;
+ (id)customPasswordConfirmationAlert;
+ (id)devicePasswordIncompatibleConfirmationAlertWithAccount:(id)a3 incompatibilityMessage:(id)a4;
+ (id)enableBiometricsActionAlertShownKeyWithAccount:(id)a3;
+ (id)enableBiometricsActionAlertWithAccount:(id)a3;
+ (id)enableKeychainActionAlert;
+ (id)forgotCustomPasswordSwitchAnywayConfirmationAlert;
+ (id)incorrectCustomPasswordInfoAlertWithObject:(id)a3 showHint:(BOOL)a4;
+ (id)keychainItemMissingInfoAlert;
+ (id)messageForPreventLockReason:(unint64_t)a3;
+ (id)mismatchedCustomPasswordInfoAlert;
+ (id)missingCustomPasswordInfoAlert;
+ (id)rememberCustomPasswordInfoAlertPresentedKeyForAccount:(id)a3;
+ (id)rememberCustomPasswordInfoAlertWithAccount:(id)a3;
+ (id)resetCustomPasswordConfirmationAlertWithAccount:(id)a3;
+ (id)resetCustomPasswordInfoAlertWithAccount:(id)a3;
+ (id)setDevicePasswordActionAlert;
+ (id)setDevicePasswordInfoAlert;
+ (id)signIntoCloudAccountActionAlertWithAccount:(id)a3;
+ (id)switchToDevicePasswordInSettingsInfoAlertWithAccount:(id)a3;
+ (id)switchToDevicePasswordPromptPresentedCountKeyForAccount:(id)a3;
+ (id)switchedModeInfoAlertWithAccount:(id)a3;
+ (id)switchedToCustomPasswordModeInfoAlertWithAccount:(id)a3;
+ (id)switchedToDevicePasswordModeInfoAlertWithAccount:(id)a3;
+ (id)updateDivergedCustomPasswordAttachmentsActionAlert;
+ (id)updateDivergedCustomPasswordModeActionAlertWithAccount:(id)a3 incompatibilityMessage:(id)a4;
+ (id)updateDivergedCustomPasswordNotesActionAlert;
+ (id)updateDivergedDevicePasswordModeActionAlertWithAccount:(id)a3;
+ (id)upgradeToLockNotesInfoAlert;
+ (void)markSwitchToDevicePasswordPromptPresentedForAccount:(id)a3;
+ (void)presentAlertsIfNeeded:(id)a3 window:(id)a4 completionHandler:(id)a5;
+ (void)resetPresentationsForAccount:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldPresent;
- (ICAuthenticationAlert)init;
- (id)description;
- (unint64_t)hash;
- (void)presentInWindow:(id)a3 completionHandler:(id)a4;
@end

@implementation ICAuthenticationAlert

- (ICAuthenticationAlert)init
{
  v6.receiver = self;
  v6.super_class = ICAuthenticationAlert;
  v2 = [(ICAuthenticationAlert *)&v6 init];
  v3 = v2;
  if (v2)
  {
    title = v2->_title;
    v2->_title = &stru_1F4F94F00;
  }

  return v3;
}

+ (id)aboutLockedNotesInfoAlert
{
  v2 = objc_alloc_init(ICAuthenticationAlert);
  v3 = __ICLocalizedFrameworkString_impl(@"Locked Notes", @"Locked Notes", 0, 1);
  [(ICAuthenticationAlert *)v2 setTitle:v3];

  v4 = __ICLocalizedFrameworkString_impl(@"Tap the lock icon in the toolbar or lock your device to hide the contents of your locked notes.", @"Tap the lock icon in the toolbar or lock your device to hide the contents of your locked notes.", 0, 1);
  [(ICAuthenticationAlert *)v2 setMessage:v4];

  v5 = __ICLocalizedFrameworkString_impl(@"OK", @"OK", 0, 1);
  [(ICAuthenticationAlert *)v2 setDismissTitle:v5];

  [(ICAuthenticationAlert *)v2 setDismissHandler:&__block_literal_global_63];
  [(ICAuthenticationAlert *)v2 setShouldPresentHandler:&__block_literal_global_26_1];

  return v2;
}

void __50__ICAuthenticationAlert_aboutLockedNotesInfoAlert__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v0 setBool:1 forKey:@"ICNoteAddPasswordFirstTimeMessageCompletedKey"];
}

uint64_t __50__ICAuthenticationAlert_aboutLockedNotesInfoAlert__block_invoke_2()
{
  if (![MEMORY[0x1E69B7A58] isRunningInApp])
  {
    return 0;
  }

  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"ICNoteAddPasswordFirstTimeMessageCompletedKey"] ^ 1;

  return v1;
}

+ (id)upgradeToLockNotesInfoAlert
{
  v2 = objc_alloc_init(ICAuthenticationAlert);
  v3 = __ICLocalizedFrameworkString_impl(@"Upgrade Your Notes", @"Upgrade Your Notes", 0, 1);
  [(ICAuthenticationAlert *)v2 setTitle:v3];

  v4 = __ICLocalizedFrameworkString_impl(@"You’ll need to go to Notes and upgrade your notes to configure locking notes.", @"You’ll need to go to Notes and upgrade your notes to configure locking notes.", 0, 1);
  [(ICAuthenticationAlert *)v2 setMessage:v4];

  v5 = __ICLocalizedFrameworkString_impl(@"OK", @"OK", 0, 1);
  [(ICAuthenticationAlert *)v2 setDismissTitle:v5];

  return v2;
}

+ (id)messageForPreventLockReason:(unint64_t)a3
{
  v3 = 0;
  if (a3 > 3)
  {
    switch(a3)
    {
      case 4uLL:
        v4 = @"Quick Notes can’t be locked.";
        break;
      case 5uLL:
        v4 = @"Shared notes can’t be locked.";
        break;
      case 6uLL:
        v4 = @"This account doesn’t support locked notes.";
        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    switch(a3)
    {
      case 1uLL:
        v4 = @"This note is too large to lock. You need to remove or reduce attachments and other content, then try again.";
        break;
      case 2uLL:
        v4 = @"Notes with video, audio, tags, PDF, or file attachments or using features from a newer version of Notes can’t be locked.";
        break;
      case 3uLL:
        v4 = @"Notes with tags can’t be locked.";
        break;
      default:
        goto LABEL_15;
    }
  }

  v3 = __ICLocalizedFrameworkString_impl(v4, v4, 0, 1);
LABEL_15:

  return v3;
}

+ (id)cannotLockInfoAlertWithReason:(unint64_t)a3
{
  v5 = objc_alloc_init(ICAuthenticationAlert);
  v6 = __ICLocalizedFrameworkString_impl(@"Can’t Lock Note", @"Can’t Lock Note", 0, 1);
  [(ICAuthenticationAlert *)v5 setTitle:v6];

  v7 = [a1 messageForPreventLockReason:a3];
  [(ICAuthenticationAlert *)v5 setMessage:v7];

  v8 = __ICLocalizedFrameworkString_impl(@"OK", @"OK", 0, 1);
  [(ICAuthenticationAlert *)v5 setDismissTitle:v8];

  return v5;
}

+ (id)cannotAddAttachmentsInfoAlertWithAttachmentCount:(unint64_t)a3
{
  v4 = objc_alloc_init(ICAuthenticationAlert);
  if (a3 == 1)
  {
    v5 = @"Can’t Add Attachment";
  }

  else
  {
    v5 = @"Can’t Add Attachments";
  }

  v6 = __ICLocalizedFrameworkString_impl(v5, v5, 0, 1);
  [(ICAuthenticationAlert *)v4 setTitle:v6];

  v7 = __ICLocalizedFrameworkString_impl(@"Locked notes can’t contain video, audio, tags, PDF, or file attachments.", @"Locked notes can’t contain video, audio, tags, PDF, or file attachments.", 0, 1);
  [(ICAuthenticationAlert *)v4 setMessage:v7];

  v8 = __ICLocalizedFrameworkString_impl(@"OK", @"OK", 0, 1);
  [(ICAuthenticationAlert *)v4 setDismissTitle:v8];

  return v4;
}

+ (id)enableBiometricsActionAlertShownKeyWithAccount:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a3 identifier];
  v5 = [v3 stringWithFormat:@"ICAuthenticationAlertEnableBiometricActionAlertPresented-%@", v4];

  return v5;
}

+ (id)enableBiometricsActionAlertWithAccount:(id)a3
{
  v4 = a3;
  v5 = [a1 enableBiometricsActionAlertShownKeyWithAccount:v4];
  v6 = objc_alloc_init(ICAuthenticationAlert);
  [(ICAuthenticationAlert *)v6 setPrefersSheet:1];
  if ([MEMORY[0x1E69B77C8] biometricsType] == 4)
  {
    v7 = @"Enable Optic ID for this account’s locked notes.";
  }

  else if ([MEMORY[0x1E69B77C8] biometricsType] == 2)
  {
    v7 = @"Enable Face ID for this account’s locked notes.";
  }

  else if ([MEMORY[0x1E69B77C8] biometricsType] == 1)
  {
    v7 = @"Enable Touch ID for this account’s locked notes.";
  }

  else
  {
    v7 = @"Enable biometrics for this account’s locked notes.";
  }

  v8 = __ICLocalizedFrameworkString_impl(v7, v7, 0, 1);
  [(ICAuthenticationAlert *)v6 setTitle:v8];

  if ([MEMORY[0x1E69B77C8] biometricsType] == 4)
  {
    v9 = @"Enable Optic ID";
  }

  else if ([MEMORY[0x1E69B77C8] biometricsType] == 2)
  {
    v9 = @"Enable Face ID";
  }

  else if ([MEMORY[0x1E69B77C8] biometricsType] == 1)
  {
    v9 = @"Enable Touch ID";
  }

  else
  {
    v9 = @"Enable Biometrics";
  }

  v10 = __ICLocalizedFrameworkString_impl(v9, v9, 0, 1);
  [(ICAuthenticationAlert *)v6 setActionTitle:v10];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __64__ICAuthenticationAlert_enableBiometricsActionAlertWithAccount___block_invoke;
  v23[3] = &unk_1E846D048;
  v11 = v5;
  v24 = v11;
  v12 = v4;
  v25 = v12;
  [(ICAuthenticationAlert *)v6 setActionHandler:v23];
  v13 = __ICLocalizedFrameworkString_impl(@"Not Now", @"Not Now", 0, 1);
  [(ICAuthenticationAlert *)v6 setDismissTitle:v13];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __64__ICAuthenticationAlert_enableBiometricsActionAlertWithAccount___block_invoke_2;
  v21[3] = &unk_1E846D070;
  v14 = v11;
  v22 = v14;
  [(ICAuthenticationAlert *)v6 setDismissHandler:v21];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __64__ICAuthenticationAlert_enableBiometricsActionAlertWithAccount___block_invoke_3;
  v18[3] = &unk_1E846D098;
  v19 = v12;
  v20 = v14;
  v15 = v14;
  v16 = v12;
  [(ICAuthenticationAlert *)v6 setShouldPresentHandler:v18];

  return v6;
}

void __64__ICAuthenticationAlert_enableBiometricsActionAlertWithAccount___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69B7A30] sharedAppGroupDefaults];
  [v2 setBool:1 forKey:*(a1 + 32)];

  v3 = +[ICAuthentication shared];
  [v3 setBiometricsEnabled:1 account:*(a1 + 40)];
}

void __64__ICAuthenticationAlert_enableBiometricsActionAlertWithAccount___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69B7A30] sharedAppGroupDefaults];
  [v2 setBool:1 forKey:*(a1 + 32)];
}

uint64_t __64__ICAuthenticationAlert_enableBiometricsActionAlertWithAccount___block_invoke_3(uint64_t a1)
{
  if (![MEMORY[0x1E69B7A58] isRunningInApp] || !objc_msgSend(MEMORY[0x1E69B77C8], "biometricsEnrolled"))
  {
    return 0;
  }

  v2 = [MEMORY[0x1E69B76D0] sharedState];
  if ([v2 biometricsEnabledForAccount:*(a1 + 32)])
  {
    v3 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E69B7A30] sharedAppGroupDefaults];
    v3 = [v4 BOOLForKey:*(a1 + 40)] ^ 1;
  }

  return v3;
}

+ (id)devicePasswordIncompatibleConfirmationAlertWithAccount:(id)a3 incompatibilityMessage:(id)a4
{
  v4 = a4;
  v5 = __ICLocalizedFrameworkString_impl(@"Notes locked using your device passcode are only viewable on iOS 16, iPadOS 16, and macOS 13 and later. Your devices that need upgrading:", @"Notes locked using your device passcode are only viewable on iOS 16, iPadOS 16, and macOS 13 and later. Your devices that need upgrading:", 0, 1);
  v6 = objc_alloc_init(ICAuthenticationAlert);
  v7 = __ICLocalizedFrameworkString_impl(@"Locked Notes Not Viewable on Some Devices", @"Locked Notes Not Viewable on Some Devices", 0, 1);
  [(ICAuthenticationAlert *)v6 setTitle:v7];

  v8 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%@\n\n%@", v5, v4];

  [(ICAuthenticationAlert *)v6 setMessage:v8];
  v9 = __ICLocalizedFrameworkString_impl(@"Continue", @"Continue", 0, 1);
  [(ICAuthenticationAlert *)v6 setActionTitle:v9];

  v10 = __ICLocalizedFrameworkString_impl(@"Cancel", @"Cancel", 0, 1);
  [(ICAuthenticationAlert *)v6 setDismissTitle:v10];

  return v6;
}

+ (id)switchedToCustomPasswordModeInfoAlertWithAccount:(id)a3
{
  v4 = a3;
  v5 = __ICLocalizedFrameworkString_impl(@"Updated to Custom Password", @"Updated to Custom Password", 0, 1);
  v6 = __ICLocalizedFrameworkString_impl(@"Use the password you created to manage your locked notes.", @"Use the password you created to manage your locked notes.", 0, 1);
  v7 = __ICLocalizedFrameworkString_impl(@"Use the password you created to manage locked notes in your “%@” account.", @"Use the password you created to manage locked notes in your “%@” account.", 0, 1);
  v8 = [a1 customAccountNameForAccount:v4];

  v9 = objc_alloc_init(ICAuthenticationAlert);
  [(ICAuthenticationAlert *)v9 setTitle:v5];
  if ([v8 length])
  {
    v10 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v7, v8];
    [(ICAuthenticationAlert *)v9 setMessage:v10];
  }

  else
  {
    [(ICAuthenticationAlert *)v9 setMessage:v6];
  }

  v11 = __ICLocalizedFrameworkString_impl(@"OK", @"OK", 0, 1);
  [(ICAuthenticationAlert *)v9 setDismissTitle:v11];

  return v9;
}

+ (id)switchedToDevicePasswordModeInfoAlertWithAccount:(id)a3
{
  v4 = a3;
  v5 = __ICLocalizedFrameworkString_impl(@"Use your device passcode to manage your locked notes.", @"Use your device passcode to manage your locked notes.", 0, 1);
  v6 = __ICLocalizedFrameworkString_impl(@"Use your device passcode to manage locked notes in your “%@” account.", @"Use your device passcode to manage locked notes in your “%@” account.", 0, 1);
  v7 = [a1 customAccountNameForAccount:v4];

  v8 = objc_alloc_init(ICAuthenticationAlert);
  v9 = __ICLocalizedFrameworkString_impl(@"Updated to Device Passcode", @"Updated to Device Passcode", 0, 1);
  [(ICAuthenticationAlert *)v8 setTitle:v9];

  if ([v7 length])
  {
    v10 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v6, v7];
    [(ICAuthenticationAlert *)v8 setMessage:v10];
  }

  else
  {
    [(ICAuthenticationAlert *)v8 setMessage:v5];
  }

  v11 = __ICLocalizedFrameworkString_impl(@"OK", @"OK", 0, 1);
  [(ICAuthenticationAlert *)v8 setDismissTitle:v11];

  return v8;
}

+ (id)switchedModeInfoAlertWithAccount:(id)a3
{
  v5 = a3;
  v6 = [v5 resolvedLockedNotesMode];
  if (v6 >= 2)
  {
    if (v6 != 2)
    {
      goto LABEL_6;
    }

    v7 = [a1 switchedToDevicePasswordModeInfoAlertWithAccount:v5];
  }

  else
  {
    v7 = [a1 switchedToCustomPasswordModeInfoAlertWithAccount:v5];
  }

  v3 = v7;
LABEL_6:

  return v3;
}

+ (id)switchToDevicePasswordInSettingsInfoAlertWithAccount:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(ICAuthenticationAlert);
  [(ICAuthenticationAlert *)v5 setPrefersSheet:1];
  v6 = __ICLocalizedFrameworkString_impl(@"Switch at Any Time", @"Switch at Any Time", 0, 1);
  [(ICAuthenticationAlert *)v5 setTitle:v6];

  v7 = __ICLocalizedFrameworkString_impl(@"You can switch to using your device passcode at any time in Settings > Apps > Notes > Password.", @"You can switch to using your device passcode at any time in Settings > Apps > Notes > Password.", 0, 1);
  [(ICAuthenticationAlert *)v5 setMessage:v7];

  v8 = __ICLocalizedFrameworkString_impl(@"OK", @"OK", 0, 1);
  [(ICAuthenticationAlert *)v5 setActionTitle:v8];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__ICAuthenticationAlert_switchToDevicePasswordInSettingsInfoAlertWithAccount___block_invoke;
  v11[3] = &unk_1E846D0C0;
  v12 = v4;
  v13 = a1;
  v9 = v4;
  [(ICAuthenticationAlert *)v5 setShouldPresentHandler:v11];

  return v5;
}

+ (id)forgotCustomPasswordSwitchAnywayConfirmationAlert
{
  v2 = objc_alloc_init(ICAuthenticationAlert);
  [(ICAuthenticationAlert *)v2 setPrefersSheet:1];
  v3 = __ICLocalizedFrameworkString_impl(@"Forgot Password", @"Forgot Password", 0, 1);
  [(ICAuthenticationAlert *)v2 setTitle:v3];

  v4 = __ICLocalizedFrameworkString_impl(@"If you forgot the password you created for notes in this account, you can still choose the Device Passcode method for future locked notes. Your currently locked notes won’t be affected and will remain locked using the current password.", @"If you forgot the password you created for notes in this account, you can still choose the Device Passcode method for future locked notes. Your currently locked notes won’t be affected and will remain locked using the current password.", 0, 1);
  [(ICAuthenticationAlert *)v2 setMessage:v4];

  v5 = __ICLocalizedFrameworkString_impl(@"Switch Anyway", @"Switch Anyway", 0, 1);
  [(ICAuthenticationAlert *)v2 setActionTitle:v5];

  v6 = __ICLocalizedFrameworkString_impl(@"Not Now", @"Not Now", 0, 1);
  [(ICAuthenticationAlert *)v2 setDismissTitle:v6];

  return v2;
}

+ (id)switchToDevicePasswordPromptPresentedCountKeyForAccount:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a3 identifier];
  v5 = [v3 stringWithFormat:@"ICAuthenticationAlertSwitchToDevicePasswordPromptPresentedCount-%@", v4];

  return v5;
}

+ (BOOL)shouldPresentSwitchToDevicePasswordPromptForAccount:(id)a3
{
  v3 = [a1 switchToDevicePasswordPromptPresentedCountKeyForAccount:a3];
  v4 = [MEMORY[0x1E69B7A30] sharedAppGroupDefaults];
  v5 = [v4 integerForKey:v3] < 2;

  return v5;
}

+ (void)markSwitchToDevicePasswordPromptPresentedForAccount:(id)a3
{
  v6 = [a1 switchToDevicePasswordPromptPresentedCountKeyForAccount:a3];
  v3 = [MEMORY[0x1E69B7A30] sharedAppGroupDefaults];
  v4 = [v3 integerForKey:v6];

  v5 = [MEMORY[0x1E69B7A30] sharedAppGroupDefaults];
  [v5 setInteger:v4 + 1 forKey:v6];
}

+ (id)customPasswordConfirmationAlert
{
  v2 = objc_alloc_init(ICAuthenticationAlert);
  [(ICAuthenticationAlert *)v2 setPrefersSheet:1];
  v3 = __ICLocalizedFrameworkString_impl(@"About Creating a Password", @"About Creating a Password", 0, 1);
  [(ICAuthenticationAlert *)v2 setTitle:v3];

  v4 = __ICLocalizedFrameworkString_impl(@"If you forget your password, Apple can’t reset it and your locked notes can’t be recovered.", @"If you forget your password, Apple can’t reset it and your locked notes can’t be recovered.", 0, 1);
  [(ICAuthenticationAlert *)v2 setMessage:v4];

  v5 = __ICLocalizedFrameworkString_impl(@"Continue", @"Continue", 0, 1);
  [(ICAuthenticationAlert *)v2 setActionTitle:v5];

  v6 = __ICLocalizedFrameworkString_impl(@"Cancel", @"Cancel", 0, 1);
  [(ICAuthenticationAlert *)v2 setDismissTitle:v6];

  return v2;
}

+ (id)rememberCustomPasswordInfoAlertPresentedKeyForAccount:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a3 identifier];
  v5 = [v3 stringWithFormat:@"ICAuthenticationAlertSwitchToDevicePasswordPromptPresentedCount-%@", v4];

  return v5;
}

+ (id)rememberCustomPasswordInfoAlertWithAccount:(id)a3
{
  v4 = MEMORY[0x1E69B77C8];
  v5 = a3;
  if ([v4 biometricsType] == 4)
  {
    v6 = @"Forgetting your notes password can cause you to lose access to your locked notes, even if Optic ID is enabled.\n\nIf you have forgotten your notes password, tap Learn More for next steps.";
  }

  else if ([MEMORY[0x1E69B77C8] biometricsType] == 2)
  {
    v6 = @"Forgetting your notes password can cause you to lose access to your locked notes, even if Face ID is enabled.\n\nIf you have forgotten your notes password, tap Learn More for next steps.";
  }

  else if ([MEMORY[0x1E69B77C8] biometricsType] == 1)
  {
    v6 = @"Forgetting your notes password can cause you to lose access to your locked notes, even if Touch ID is enabled.\n\nIf you have forgotten your notes password, tap Learn More for next steps.";
  }

  else
  {
    v6 = @"Forgetting your notes password can cause you to lose access to your locked notes, even if biometrics are enabled.\n\nIf you have forgotten your notes password, tap Learn More for next steps.";
  }

  v7 = __ICLocalizedFrameworkString_impl(v6, v6, 0, 1);
  if ([MEMORY[0x1E69B77C8] biometricsType] == 4)
  {
    v8 = @"Forgetting the password you created for notes in your “%@” account can cause you to lose access to your locked notes, even if Optic ID is enabled.\n\nIf you have forgotten this password, tap Learn More for next steps.";
  }

  else if ([MEMORY[0x1E69B77C8] biometricsType] == 2)
  {
    v8 = @"Forgetting the password you created for notes in your “%@” account can cause you to lose access to your locked notes, even if Face ID is enabled.\n\nIf you have forgotten this password, tap Learn More for next steps.";
  }

  else if ([MEMORY[0x1E69B77C8] biometricsType] == 1)
  {
    v8 = @"Forgetting the password you created for notes in your “%@” account can cause you to lose access to your locked notes, even if Touch ID is enabled.\n\nIf you have forgotten this password, tap Learn More for next steps.";
  }

  else
  {
    v8 = @"Forgetting the password you created for notes in your “%@” account can cause you to lose access to your locked notes, even if biometrics are enabled.\n\nIf you have forgotten this password, tap Learn More for next steps.";
  }

  v9 = __ICLocalizedFrameworkString_impl(v8, v8, 0, 1);
  v10 = [a1 customAccountNameForAccount:v5];
  v11 = MEMORY[0x1E696AEC0];
  v12 = [v5 identifier];

  v13 = [v11 stringWithFormat:@"ICPasswordUtilitiesAlertOfDontForgetPasswordHasShownKey_%@", v12];

  v14 = objc_alloc_init(ICAuthenticationAlert);
  v15 = __ICLocalizedFrameworkString_impl(@"Don’t Forget Your Notes Password", @"Don’t Forget Your Notes Password", 0, 1);
  [(ICAuthenticationAlert *)v14 setTitle:v15];

  if ([v10 length])
  {
    v16 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v9, v10];
    [(ICAuthenticationAlert *)v14 setMessage:v16];
  }

  else
  {
    [(ICAuthenticationAlert *)v14 setMessage:v7];
  }

  v17 = __ICLocalizedFrameworkString_impl(@"OK", @"OK", 0, 1);
  [(ICAuthenticationAlert *)v14 setActionTitle:v17];

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __68__ICAuthenticationAlert_rememberCustomPasswordInfoAlertWithAccount___block_invoke;
  v27[3] = &unk_1E846D070;
  v18 = v13;
  v28 = v18;
  [(ICAuthenticationAlert *)v14 setActionHandler:v27];
  v19 = __ICLocalizedFrameworkString_impl(@"Learn More", @"Learn More", 0, 1);
  [(ICAuthenticationAlert *)v14 setDismissTitle:v19];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __68__ICAuthenticationAlert_rememberCustomPasswordInfoAlertWithAccount___block_invoke_2;
  v25[3] = &unk_1E846D070;
  v20 = v18;
  v26 = v20;
  [(ICAuthenticationAlert *)v14 setDismissHandler:v25];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __68__ICAuthenticationAlert_rememberCustomPasswordInfoAlertWithAccount___block_invoke_3;
  v23[3] = &unk_1E846D0E8;
  v24 = v20;
  v21 = v20;
  [(ICAuthenticationAlert *)v14 setShouldPresentHandler:v23];

  return v14;
}

void __68__ICAuthenticationAlert_rememberCustomPasswordInfoAlertWithAccount___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69B7A30] sharedAppGroupDefaults];
  [v2 setBool:1 forKey:*(a1 + 32)];
}

void __68__ICAuthenticationAlert_rememberCustomPasswordInfoAlertWithAccount___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69B7A30];
  v4 = a2;
  v5 = [v3 sharedAppGroupDefaults];
  [v5 setBool:1 forKey:*(a1 + 32)];

  v6 = [v4 rootViewController];

  [ICHelp presentWithTopic:@"apdeefb92e46" presentingViewController:v6];
}

uint64_t __68__ICAuthenticationAlert_rememberCustomPasswordInfoAlertWithAccount___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E69B7A30] sharedAppGroupDefaults];
  LODWORD(a1) = [v2 BOOLForKey:*(a1 + 32)];

  return a1 ^ 1;
}

+ (id)missingCustomPasswordInfoAlert
{
  v2 = objc_alloc_init(ICAuthenticationAlert);
  v3 = __ICLocalizedFrameworkString_impl(@"Enter a Password", @"Enter a Password", 0, 1);
  [(ICAuthenticationAlert *)v2 setTitle:v3];

  v4 = __ICLocalizedFrameworkString_impl(@"OK", @"OK", 0, 1);
  [(ICAuthenticationAlert *)v2 setDismissTitle:v4];

  return v2;
}

+ (id)mismatchedCustomPasswordInfoAlert
{
  v2 = objc_alloc_init(ICAuthenticationAlert);
  v3 = __ICLocalizedFrameworkString_impl(@"Passwords Don’t Match", @"Passwords Don’t Match", 0, 1);
  [(ICAuthenticationAlert *)v2 setTitle:v3];

  v4 = __ICLocalizedFrameworkString_impl(@"OK", @"OK", 0, 1);
  [(ICAuthenticationAlert *)v2 setDismissTitle:v4];

  return v2;
}

+ (id)cannotSetCustomPasswordInfoAlert
{
  v2 = objc_alloc_init(ICAuthenticationAlert);
  v3 = __ICLocalizedFrameworkString_impl(@"Unable to Set Password", @"Unable to Set Password", 0, 1);
  [(ICAuthenticationAlert *)v2 setTitle:v3];

  v4 = __ICLocalizedFrameworkString_impl(@"OK", @"OK", 0, 1);
  [(ICAuthenticationAlert *)v2 setDismissTitle:v4];

  return v2;
}

+ (id)incorrectCustomPasswordInfoAlertWithObject:(id)a3 showHint:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = __ICLocalizedFrameworkString_impl(@"Please try again.", @"Please try again.", 0, 1);
  v7 = __ICLocalizedFrameworkString_impl(@"Hint: %@", @"Hint: %@", 0, 1);
  v8 = [v5 passwordHint];
  if ([v8 length])
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = [v5 passwordHint];
    v11 = [v9 localizedStringWithFormat:v7, v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_alloc_init(ICAuthenticationAlert);
  v13 = __ICLocalizedFrameworkString_impl(@"That’s not the correct password.", @"That’s not the correct password.", 0, 1);
  [(ICAuthenticationAlert *)v12 setTitle:v13];

  if (v4 && v11)
  {
    v14 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%@\n\n%@", v6, v11];
    [(ICAuthenticationAlert *)v12 setMessage:v14];
  }

  else
  {
    [(ICAuthenticationAlert *)v12 setMessage:v6];
  }

  v15 = __ICLocalizedFrameworkString_impl(@"OK", @"OK", 0, 1);
  [(ICAuthenticationAlert *)v12 setDismissTitle:v15];

  return v12;
}

+ (id)updateDivergedCustomPasswordNotesActionAlert
{
  v2 = objc_alloc_init(ICAuthenticationAlert);
  v3 = __ICLocalizedFrameworkString_impl(@"Update Password?", @"Update Password?", 0, 1);
  [(ICAuthenticationAlert *)v2 setTitle:v3];

  v4 = __ICLocalizedFrameworkString_impl(@"This note is using an old password. Would you like to update all notes using this password to use your current password?", @"This note is using an old password. Would you like to update all notes using this password to use your current password?", 0, 1);
  [(ICAuthenticationAlert *)v2 setMessage:v4];

  v5 = __ICLocalizedFrameworkString_impl(@"Update Password", @"Update Password", 0, 1);
  [(ICAuthenticationAlert *)v2 setActionTitle:v5];

  v6 = __ICLocalizedFrameworkString_impl(@"Not Now", @"Not Now", 0, 1);
  [(ICAuthenticationAlert *)v2 setDismissTitle:v6];

  return v2;
}

+ (id)updateDivergedCustomPasswordAttachmentsActionAlert
{
  v2 = objc_alloc_init(ICAuthenticationAlert);
  v3 = __ICLocalizedFrameworkString_impl(@"Update Password?", @"Update Password?", 0, 1);
  [(ICAuthenticationAlert *)v2 setTitle:v3];

  v4 = __ICLocalizedFrameworkString_impl(@"Would you like to update all attachments using this password to match the note’s password?", @"Would you like to update all attachments using this password to match the note’s password?", 0, 1);
  [(ICAuthenticationAlert *)v2 setMessage:v4];

  v5 = __ICLocalizedFrameworkString_impl(@"Update Password", @"Update Password", 0, 1);
  [(ICAuthenticationAlert *)v2 setActionTitle:v5];

  v6 = __ICLocalizedFrameworkString_impl(@"Not Now", @"Not Now", 0, 1);
  [(ICAuthenticationAlert *)v2 setDismissTitle:v6];

  return v2;
}

+ (id)updateDivergedCustomPasswordModeActionAlertWithAccount:(id)a3 incompatibilityMessage:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = __ICLocalizedFrameworkString_impl(@"This note is using an old password. Would you like to update it to use your device passcode?", @"This note is using an old password. Would you like to update it to use your device passcode?", 0, 1);
  v8 = __ICLocalizedFrameworkString_impl(@"This note is using an old password. If you update it to use your device passcode, it won’t be viewable on the following devices:", @"This note is using an old password. If you update it to use your device passcode, it won’t be viewable on the following devices:", 0, 1);
  v9 = objc_alloc_init(ICAuthenticationAlert);
  v10 = __ICLocalizedFrameworkString_impl(@"Update Password?", @"Update Password?", 0, 1);
  [(ICAuthenticationAlert *)v9 setTitle:v10];

  if (v6)
  {
    v11 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%@\n\n%@", v8, v6];
    [(ICAuthenticationAlert *)v9 setMessage:v11];
  }

  else
  {
    [(ICAuthenticationAlert *)v9 setMessage:v7];
  }

  v12 = __ICLocalizedFrameworkString_impl(@"Update Password", @"Update Password", 0, 1);
  [(ICAuthenticationAlert *)v9 setActionTitle:v12];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __103__ICAuthenticationAlert_updateDivergedCustomPasswordModeActionAlertWithAccount_incompatibilityMessage___block_invoke;
  v16[3] = &unk_1E846D070;
  v17 = v5;
  v13 = v5;
  [(ICAuthenticationAlert *)v9 setActionHandler:v16];
  v14 = __ICLocalizedFrameworkString_impl(@"Not Now", @"Not Now", 0, 1);
  [(ICAuthenticationAlert *)v9 setDismissTitle:v14];

  return v9;
}

void __103__ICAuthenticationAlert_updateDivergedCustomPasswordModeActionAlertWithAccount_incompatibilityMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ICAuthenticationPrompt promptForChangingMode:2 account:*(a1 + 32)];
  v5 = +[ICAuthentication shared];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __103__ICAuthenticationAlert_updateDivergedCustomPasswordModeActionAlertWithAccount_incompatibilityMessage___block_invoke_2;
  v7[3] = &unk_1E846D110;
  v8 = *(a1 + 32);
  v9 = v3;
  v6 = v3;
  [v5 authenticateWithPrompt:v4 displayWindow:v6 completionHandler:v7];
}

void __103__ICAuthenticationAlert_updateDivergedCustomPasswordModeActionAlertWithAccount_incompatibilityMessage___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2 == 2 && *(a1 + 32))
  {
    v3 = +[ICLockedNotesModeMigrator sharedMigrator];
    [v3 migrateLockedNotesInAccount:*(a1 + 32) toMode:2 window:*(a1 + 40) completionHandler:0];
  }
}

+ (id)resetCustomPasswordInfoAlertWithAccount:(id)a3
{
  v4 = a3;
  v5 = __ICLocalizedFrameworkString_impl(@"This allows you to create a new password for notes you lock from now on. Notes that already have a password aren’t affected.", @"This allows you to create a new password for notes you lock from now on. Notes that already have a password aren’t affected.", 0, 1);
  v6 = __ICLocalizedFrameworkString_impl(@"This allows you to create a new password for notes you lock in your “%@” account from now on. Notes that already have a password aren’t affected.", @"This allows you to create a new password for notes you lock in your “%@” account from now on. Notes that already have a password aren’t affected.", 0, 1);
  v7 = [a1 customAccountNameForAccount:v4];

  v8 = objc_alloc_init(ICAuthenticationAlert);
  [(ICAuthenticationAlert *)v8 setPrefersSheet:1];
  v9 = __ICLocalizedFrameworkString_impl(@"Reset Notes Password?", @"Reset Notes Password?", 0, 1);
  [(ICAuthenticationAlert *)v8 setTitle:v9];

  if ([v7 length])
  {
    v10 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v6, v7];
    [(ICAuthenticationAlert *)v8 setMessage:v10];
  }

  else
  {
    [(ICAuthenticationAlert *)v8 setMessage:v5];
  }

  v11 = __ICLocalizedFrameworkString_impl(@"OK", @"OK", 0, 1);
  [(ICAuthenticationAlert *)v8 setActionTitle:v11];

  v12 = __ICLocalizedFrameworkString_impl(@"Cancel", @"Cancel", 0, 1);
  [(ICAuthenticationAlert *)v8 setDismissTitle:v12];

  return v8;
}

+ (id)resetCustomPasswordConfirmationAlertWithAccount:(id)a3
{
  v4 = a3;
  v5 = __ICLocalizedFrameworkString_impl(@"This will change the password you use for your notes from now on.", @"This will change the password you use for your notes from now on.", 0, 1);
  v6 = __ICLocalizedFrameworkString_impl(@"This will change the password you use for notes in your “%@” account from now on.", @"This will change the password you use for notes in your “%@” account from now on.", 0, 1);
  v7 = [a1 customAccountNameForAccount:v4];

  v8 = objc_alloc_init(ICAuthenticationAlert);
  [(ICAuthenticationAlert *)v8 setPrefersSheet:1];
  v9 = __ICLocalizedFrameworkString_impl(@"Are you sure you want to reset your password?", @"Are you sure you want to reset your password?", 0, 1);
  [(ICAuthenticationAlert *)v8 setTitle:v9];

  if ([v7 length])
  {
    v10 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v6, v7];
    [(ICAuthenticationAlert *)v8 setMessage:v10];
  }

  else
  {
    [(ICAuthenticationAlert *)v8 setMessage:v5];
  }

  v11 = __ICLocalizedFrameworkString_impl(@"Reset Password", @"Reset Password", 0, 1);
  [(ICAuthenticationAlert *)v8 setActionTitle:v11];

  [(ICAuthenticationAlert *)v8 setActionIsDestructive:1];
  v12 = __ICLocalizedFrameworkString_impl(@"Cancel", @"Cancel", 0, 1);
  [(ICAuthenticationAlert *)v8 setDismissTitle:v12];

  return v8;
}

+ (id)setDevicePasswordActionAlert
{
  v2 = objc_alloc_init(ICAuthenticationAlert);
  v3 = __ICLocalizedFrameworkString_impl(@"No Passcode Set", @"No Passcode Set", 0, 1);
  [(ICAuthenticationAlert *)v2 setTitle:v3];

  v4 = __ICLocalizedFrameworkString_impl(@"You must set a passcode in Settings to use it to lock notes.", @"You must set a passcode in Settings to use it to lock notes.", 0, 1);
  [(ICAuthenticationAlert *)v2 setMessage:v4];

  v5 = __ICLocalizedFrameworkString_impl(@"Set Up Passcode", @"Set Up Passcode", 0, 1);
  [(ICAuthenticationAlert *)v2 setActionTitle:v5];

  [(ICAuthenticationAlert *)v2 setActionHandler:&__block_literal_global_260];
  v6 = __ICLocalizedFrameworkString_impl(@"Cancel", @"Cancel", 0, 1);
  [(ICAuthenticationAlert *)v2 setDismissTitle:v6];

  return v2;
}

void __53__ICAuthenticationAlert_setDevicePasswordActionAlert__block_invoke()
{
  v1 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=PASSCODE"];
  v0 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v0 openSensitiveURL:v1 withOptions:0];
}

+ (id)setDevicePasswordInfoAlert
{
  objc_opt_class();
  v2 = [MEMORY[0x1E69B7A30] sharedAppGroupDefaults];
  v3 = [v2 objectForKey:@"ICAuthenticationSetDevicePasswordInfoPresentedAt"];
  v4 = ICDynamicCast();

  v5 = objc_alloc_init(ICAuthenticationAlert);
  v6 = __ICLocalizedFrameworkString_impl(@"No Passcode Set", @"No Passcode Set", 0, 1);
  [(ICAuthenticationAlert *)v5 setTitle:v6];

  v7 = __ICLocalizedFrameworkString_impl(@"Anyone that can view notes on this device can view its locked notes. Locked notes are still end-to-end encrypted.\n\nSet a passcode to protect locked notes on this device.", @"Anyone that can view notes on this device can view its locked notes. Locked notes are still end-to-end encrypted.\n\nSet a passcode to protect locked notes on this device.", 0, 1);
  [(ICAuthenticationAlert *)v5 setMessage:v7];

  v8 = __ICLocalizedFrameworkString_impl(@"Set Up Passcode", @"Set Up Passcode", 0, 1);
  [(ICAuthenticationAlert *)v5 setActionTitle:v8];

  [(ICAuthenticationAlert *)v5 setActionHandler:&__block_literal_global_274];
  v9 = __ICLocalizedFrameworkString_impl(@"Not Now", @"Not Now", 0, 1);
  [(ICAuthenticationAlert *)v5 setDismissTitle:v9];

  [(ICAuthenticationAlert *)v5 setDismissHandler:&__block_literal_global_276];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__ICAuthenticationAlert_setDevicePasswordInfoAlert__block_invoke_3;
  v12[3] = &unk_1E846D0E8;
  v13 = v4;
  v10 = v4;
  [(ICAuthenticationAlert *)v5 setShouldPresentHandler:v12];

  return v5;
}

void __51__ICAuthenticationAlert_setDevicePasswordInfoAlert__block_invoke()
{
  v0 = [MEMORY[0x1E69B7A30] sharedAppGroupDefaults];
  v1 = [MEMORY[0x1E695DF00] now];
  [v0 setObject:v1 forKey:@"ICAuthenticationSetDevicePasswordInfoPresentedAt"];

  v3 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=PASSCODE"];
  v2 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v2 openSensitiveURL:v3 withOptions:0];
}

void __51__ICAuthenticationAlert_setDevicePasswordInfoAlert__block_invoke_2()
{
  v1 = [MEMORY[0x1E69B7A30] sharedAppGroupDefaults];
  v0 = [MEMORY[0x1E695DF00] now];
  [v1 setObject:v0 forKey:@"ICAuthenticationSetDevicePasswordInfoPresentedAt"];
}

BOOL __51__ICAuthenticationAlert_setDevicePasswordInfoAlert__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 1;
  }

  [v1 timeIntervalSinceNow];
  return v2 <= -2592000.0;
}

+ (id)signIntoCloudAccountActionAlertWithAccount:(id)a3
{
  v4 = a3;
  if (ICInternalSettingsIsAppleAccountBrandingEnabled())
  {
    v5 = @"To use your device’s passcode for locked notes, this device must be signed in to an Apple Account with iCloud Keychain enabled.";
  }

  else
  {
    v5 = @"To use your device’s passcode for locked notes, this device must be signed in to an iCloud account with iCloud Keychain enabled.";
  }

  v6 = __ICLocalizedFrameworkString_impl(v5, v5, 0, 1);
  v7 = __ICLocalizedFrameworkString_impl(@"To use your device’s passcode for locked notes in your “%@” account, this device must be signed in to an Apple Account with iCloud Keychain enabled.", @"To use your device’s passcode for locked notes in your “%@” account, this device must be signed in to an Apple Account with iCloud Keychain enabled.", 0, 1);
  v8 = __ICLocalizedFrameworkString_impl(@"To use your device’s passcode for locked notes in your “%@” account, this device must be signed in to an iCloud account with iCloud Keychain enabled.", @"To use your device’s passcode for locked notes in your “%@” account, this device must be signed in to an iCloud account with iCloud Keychain enabled.", 0, 1);
  v9 = [a1 customAccountNameForAccount:v4];

  v10 = objc_alloc_init(ICAuthenticationAlert);
  if (ICInternalSettingsIsAppleAccountBrandingEnabled())
  {
    v11 = @"Apple Account Required";
  }

  else
  {
    v11 = @"iCloud Account Required";
  }

  v12 = __ICLocalizedFrameworkString_impl(v11, v11, 0, 1);
  [(ICAuthenticationAlert *)v10 setTitle:v12];

  if ([v9 length])
  {
    v13 = MEMORY[0x1E696AEC0];
    if (ICInternalSettingsIsAppleAccountBrandingEnabled())
    {
      v14 = v7;
    }

    else
    {
      v14 = v8;
    }

    v15 = [v13 localizedStringWithFormat:v14, v9];
    [(ICAuthenticationAlert *)v10 setMessage:v15];
  }

  else
  {
    [(ICAuthenticationAlert *)v10 setMessage:v6];
  }

  v16 = __ICLocalizedFrameworkString_impl(@"Go to Settings", @"Go to Settings", 0, 1);
  [(ICAuthenticationAlert *)v10 setActionTitle:v16];

  [(ICAuthenticationAlert *)v10 setActionHandler:&__block_literal_global_299];
  v17 = __ICLocalizedFrameworkString_impl(@"Cancel", @"Cancel", 0, 1);
  [(ICAuthenticationAlert *)v10 setDismissTitle:v17];

  return v10;
}

void __68__ICAuthenticationAlert_signIntoCloudAccountActionAlertWithAccount___block_invoke()
{
  v1 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE"];
  v0 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v0 openSensitiveURL:v1 withOptions:0];
}

+ (id)enableKeychainActionAlert
{
  v2 = objc_alloc_init(ICAuthenticationAlert);
  v3 = __ICLocalizedFrameworkString_impl(@"Turn on iCloud Keychain", @"Turn on iCloud Keychain", 0, 1);
  [(ICAuthenticationAlert *)v2 setTitle:v3];

  v4 = __ICLocalizedFrameworkString_impl(@"You must turn on iCloud Keychain in Settings to use your device passcode for locked notes.", @"You must turn on iCloud Keychain in Settings to use your device passcode for locked notes.", 0, 1);
  [(ICAuthenticationAlert *)v2 setMessage:v4];

  v5 = __ICLocalizedFrameworkString_impl(@"Go to Settings", @"Go to Settings", 0, 1);
  [(ICAuthenticationAlert *)v2 setActionTitle:v5];

  [(ICAuthenticationAlert *)v2 setActionHandler:&__block_literal_global_310];
  v6 = __ICLocalizedFrameworkString_impl(@"Cancel", @"Cancel", 0, 1);
  [(ICAuthenticationAlert *)v2 setDismissTitle:v6];

  return v2;
}

void __50__ICAuthenticationAlert_enableKeychainActionAlert__block_invoke()
{
  v1 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/com.apple.Dataclass.KeychainSync"];
  v0 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v0 openSensitiveURL:v1 withOptions:0];
}

+ (id)keychainItemMissingInfoAlert
{
  v2 = objc_alloc_init(ICAuthenticationAlert);
  v3 = __ICLocalizedFrameworkString_impl(@"Can’t View Note", @"Can’t View Note", 0, 1);
  [(ICAuthenticationAlert *)v2 setTitle:v3];

  v4 = __ICLocalizedFrameworkString_impl(@"Notes can’t decrypt this note because the encryption key wasn’t found. This could be due either to it not having synced down from iCloud yet or because iCloud Keychain data was reset, and thus the key was deleted.", @"Notes can’t decrypt this note because the encryption key wasn’t found. This could be due either to it not having synced down from iCloud yet or because iCloud Keychain data was reset, and thus the key was deleted.", 0, 1);
  [(ICAuthenticationAlert *)v2 setMessage:v4];

  v5 = __ICLocalizedFrameworkString_impl(@"OK", @"OK", 0, 1);
  [(ICAuthenticationAlert *)v2 setDismissTitle:v5];

  return v2;
}

+ (id)cannotUnlockInfoAlert
{
  v2 = objc_alloc_init(ICAuthenticationAlert);
  v3 = __ICLocalizedFrameworkString_impl(@"Can’t View Note", @"Can’t View Note", 0, 1);
  [(ICAuthenticationAlert *)v2 setTitle:v3];

  v4 = __ICLocalizedFrameworkString_impl(@"OK", @"OK", 0, 1);
  [(ICAuthenticationAlert *)v2 setDismissTitle:v4];

  return v2;
}

+ (id)updateDivergedDevicePasswordModeActionAlertWithAccount:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ICAuthenticationAlert);
  v5 = __ICLocalizedFrameworkString_impl(@"Update Password?", @"Update Password?", 0, 1);
  [(ICAuthenticationAlert *)v4 setTitle:v5];

  v6 = __ICLocalizedFrameworkString_impl(@"This note is using your device passcode. Would you like to update it to use this account’s custom notes password?", @"This note is using your device passcode. Would you like to update it to use this account’s custom notes password?", 0, 1);
  [(ICAuthenticationAlert *)v4 setMessage:v6];

  v7 = __ICLocalizedFrameworkString_impl(@"Update Password", @"Update Password", 0, 1);
  [(ICAuthenticationAlert *)v4 setActionTitle:v7];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__ICAuthenticationAlert_updateDivergedDevicePasswordModeActionAlertWithAccount___block_invoke;
  v11[3] = &unk_1E846D070;
  v12 = v3;
  v8 = v3;
  [(ICAuthenticationAlert *)v4 setActionHandler:v11];
  v9 = __ICLocalizedFrameworkString_impl(@"Not Now", @"Not Now", 0, 1);
  [(ICAuthenticationAlert *)v4 setDismissTitle:v9];

  return v4;
}

void __80__ICAuthenticationAlert_updateDivergedDevicePasswordModeActionAlertWithAccount___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ICAuthenticationPrompt promptForChangingMode:1 account:*(a1 + 32)];
  v5 = +[ICAuthentication shared];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__ICAuthenticationAlert_updateDivergedDevicePasswordModeActionAlertWithAccount___block_invoke_2;
  v7[3] = &unk_1E846D110;
  v8 = *(a1 + 32);
  v9 = v3;
  v6 = v3;
  [v5 authenticateWithPrompt:v4 displayWindow:v6 completionHandler:v7];
}

void __80__ICAuthenticationAlert_updateDivergedDevicePasswordModeActionAlertWithAccount___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2 == 2 && *(a1 + 32))
  {
    v3 = +[ICLockedNotesModeMigrator sharedMigrator];
    [v3 migrateLockedNotesInAccount:*(a1 + 32) toMode:1 window:*(a1 + 40) completionHandler:0];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[ICAuthenticationAlert shouldPresent](self, "shouldPresent")}];
  v7 = [(ICAuthenticationAlert *)self title];
  v8 = [(ICAuthenticationAlert *)self message];
  v9 = [v3 stringWithFormat:@"<%@: %p, shouldPresent: %@, title: %@, message: %@>", v5, self, v6, v7, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 != self)
  {
    v4 = a3;
    objc_opt_class();
    v5 = ICDynamicCast();

    LODWORD(v4) = [v5 prefersSheet];
    if (v4 != [(ICAuthenticationAlert *)self prefersSheet])
    {
      LOBYTE(v6) = 0;
LABEL_47:

      return v6;
    }

    v7 = [v5 title];
    v8 = [(ICAuthenticationAlert *)self title];
    if (![v7 isEqualToString:v8])
    {
      LOBYTE(v6) = 0;
LABEL_46:

      goto LABEL_47;
    }

    v9 = [(ICAuthenticationAlert *)self message];
    v10 = [v5 message];
    v11 = *MEMORY[0x1E695E738];
    if (*MEMORY[0x1E695E738] == v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9;
    }

    v13 = v12;
    v33 = v10;
    if (v11 == v10)
    {
      v14 = 0;
    }

    else
    {
      v14 = v10;
    }

    v15 = v14;
    if (v13 | v15)
    {
      v16 = v15;
      LOBYTE(v6) = 0;
      if (!v13 || !v15)
      {
        goto LABEL_44;
      }

      v17 = [v13 isEqual:v15];

      if (!v17)
      {
        LOBYTE(v6) = 0;
LABEL_45:

        goto LABEL_46;
      }
    }

    v13 = [(ICAuthenticationAlert *)self actionTitle:v9];
    v16 = [v5 actionTitle];
    if (v11 == v13)
    {
      v18 = 0;
    }

    else
    {
      v18 = v13;
    }

    v19 = v18;
    if (v11 == v16)
    {
      v20 = 0;
    }

    else
    {
      v20 = v16;
    }

    v21 = v20;
    if (v19 | v21)
    {
      v22 = v21;
      LOBYTE(v6) = 0;
      if (!v19 || !v21)
      {
        goto LABEL_42;
      }

      v6 = [v19 isEqual:v21];

      if (!v6)
      {
LABEL_43:
        v9 = v32;
LABEL_44:

        goto LABEL_45;
      }
    }

    v23 = [v5 actionIsDestructive];
    if (v23 != [(ICAuthenticationAlert *)self actionIsDestructive])
    {
      LOBYTE(v6) = 0;
      goto LABEL_43;
    }

    v19 = [(ICAuthenticationAlert *)self dismissTitle];
    v22 = [v5 dismissTitle];
    if (v11 == v19)
    {
      v24 = 0;
    }

    else
    {
      v24 = v19;
    }

    v25 = v24;
    v26 = v11 == v22;
    v27 = v25;
    if (v26)
    {
      v28 = 0;
    }

    else
    {
      v28 = v22;
    }

    v29 = v28;
    v30 = v29;
    if (v27 | v29)
    {
      LOBYTE(v6) = 0;
      if (v27 && v29)
      {
        LOBYTE(v6) = [v27 isEqual:v29];
      }
    }

    else
    {
      LOBYTE(v6) = 1;
    }

LABEL_42:
    goto LABEL_43;
  }

  LOBYTE(v6) = 1;
  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[ICAuthenticationAlert prefersSheet](self, "prefersSheet")}];
  v19 = [v3 hash];
  v4 = [(ICAuthenticationAlert *)self title];
  v5 = [v4 hash];
  v6 = [(ICAuthenticationAlert *)self message];
  [v6 hash];
  v7 = [(ICAuthenticationAlert *)self actionTitle];
  [v7 hash];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[ICAuthenticationAlert actionIsDestructive](self, "actionIsDestructive")}];
  [v8 hash];
  v9 = [(ICAuthenticationAlert *)self dismissTitle];
  [v9 hash];
  v17 = ICHashWithHashKeys(v19, v10, v11, v12, v13, v14, v15, v16, v5);

  return v17;
}

+ (id)customAccountNameForAccount:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E69B7658];
  v5 = [v3 managedObjectContext];
  v6 = [v4 allActiveAccountsInContext:v5];
  if ([v6 count] < 2)
  {
    v8 = 0;
  }

  else
  {
    v7 = [v3 localizedName];
    v8 = [v7 ic_trimmedString];
  }

  return v8;
}

- (BOOL)shouldPresent
{
  v3 = [(ICAuthenticationAlert *)self shouldPresentHandler];
  if (v3)
  {
    v4 = [(ICAuthenticationAlert *)self shouldPresentHandler];
    v5 = v4[2]();
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)presentInWindow:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(ICAuthenticationAlert *)self prefersSheet])
  {
    v8 = [MEMORY[0x1E69DC938] currentDevice];
    v9 = [v8 userInterfaceIdiom] != 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = [(ICAuthenticationAlert *)self title];
  v11 = [(ICAuthenticationAlert *)self message];
  v12 = [ICAlertController alertControllerWithTitle:v10 message:v11 preferredStyle:v9];

  [v12 setDismissWithoutActionBlock:v7];
  v13 = [(ICAuthenticationAlert *)self actionTitle];

  if (v13)
  {
    if ([(ICAuthenticationAlert *)self actionIsDestructive])
    {
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    v15 = MEMORY[0x1E69DC648];
    v16 = [(ICAuthenticationAlert *)self actionTitle];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __59__ICAuthenticationAlert_presentInWindow_completionHandler___block_invoke;
    v34[3] = &unk_1E846D138;
    v17 = v12;
    v35 = v17;
    v36 = self;
    v37 = v6;
    v38 = v7;
    v18 = [v15 actionWithTitle:v16 style:v14 handler:v34];

    [v17 addAction:v18];
  }

  v19 = [(ICAuthenticationAlert *)self dismissTitle];

  if (v19)
  {
    v20 = MEMORY[0x1E69DC648];
    v21 = [(ICAuthenticationAlert *)self dismissTitle];
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __59__ICAuthenticationAlert_presentInWindow_completionHandler___block_invoke_2;
    v29 = &unk_1E846D138;
    v22 = v12;
    v30 = v22;
    v31 = self;
    v32 = v6;
    v33 = v7;
    v23 = [v20 actionWithTitle:v21 style:1 handler:&v26];

    [v22 addAction:{v23, v26, v27, v28, v29}];
  }

  v24 = [v6 rootViewController];
  v25 = [v24 ic_topViewController];
  [v25 presentViewController:v12 animated:1 completion:0];
}

uint64_t __59__ICAuthenticationAlert_presentInWindow_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDidPerformAction:1];
  v2 = [*(a1 + 40) actionHandler];

  if (v2)
  {
    v3 = [*(a1 + 40) actionHandler];
    v3[2](v3, *(a1 + 48));
  }

  result = *(a1 + 56);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

uint64_t __59__ICAuthenticationAlert_presentInWindow_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setDidPerformAction:1];
  v2 = [*(a1 + 40) dismissHandler];

  if (v2)
  {
    v3 = [*(a1 + 40) dismissHandler];
    v3[2](v3, *(a1 + 48));
  }

  result = *(a1 + 56);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

+ (void)presentAlertsIfNeeded:(id)a3 window:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 firstObject];
  v12 = [v11 shouldPresent];

  if (v12)
  {
    v15 = v8;
    v16 = v9;
    v17 = v10;
    dispatchMainAfterDelay();
  }

  else
  {
    v13 = [v8 firstObject];

    if (v13)
    {
      v14 = [v8 ic_subarrayFromIndex:1];
      [a1 presentAlertsIfNeeded:v14 window:v9 completionHandler:v10];
    }

    else if (v10)
    {
      v10[2](v10);
    }
  }
}

void __72__ICAuthenticationAlert_presentAlertsIfNeeded_window_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) firstObject];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__ICAuthenticationAlert_presentAlertsIfNeeded_window_completionHandler___block_invoke_2;
  v9[3] = &unk_1E846D160;
  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = v3;
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v10 = v8;
  v11 = v7;
  [v2 presentInWindow:v4 completionHandler:v9];
}

void __72__ICAuthenticationAlert_presentAlertsIfNeeded_window_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = [*(a1 + 32) ic_subarrayFromIndex:1];
  [v2 presentAlertsIfNeeded:v3 window:*(a1 + 40) completionHandler:*(a1 + 48)];
}

+ (void)resetPresentationsForAccount:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E69B7658];
  v6 = [MEMORY[0x1E69B7800] sharedContext];
  v7 = [v6 managedObjectContext];
  v8 = [v5 allActiveAccountsInContext:v7];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      v13 = 0;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * v13);
        v15 = [MEMORY[0x1E69B7708] sharedController];
        [v15 clearCachedDevicesForAccount:v14];

        v16 = [MEMORY[0x1E69B76D0] sharedState];
        [v16 setBiometricsEnabled:0 forAccount:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  v17 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v17 setBool:0 forKey:@"ICNoteAddPasswordFirstTimeMessageCompletedKey"];

  v18 = [MEMORY[0x1E69B7A30] sharedAppGroupDefaults];
  v19 = [a1 enableBiometricsActionAlertShownKeyWithAccount:v4];
  [v18 setBool:0 forKey:v19];

  v20 = [MEMORY[0x1E69B7A30] sharedAppGroupDefaults];
  v21 = [a1 switchToDevicePasswordPromptPresentedCountKeyForAccount:v4];
  [v20 setInteger:0 forKey:v21];

  v22 = [MEMORY[0x1E69B7A30] sharedAppGroupDefaults];
  v23 = [a1 rememberCustomPasswordInfoAlertPresentedKeyForAccount:v4];
  [v22 setBool:0 forKey:v23];

  v24 = [MEMORY[0x1E69B7A30] sharedAppGroupDefaults];
  [v24 setObject:0 forKey:@"ICAuthenticationSetDevicePasswordInfoPresentedAt"];
}

@end