@interface ICCompatibilityAlertHelper
+ (id)oneTimeAlertKeyForAccount:(id)a3;
+ (void)showAttachmentCompatibilityAlertInAccountIfNeeded:(id)a3 parentViewController:(id)a4 completion:(id)a5;
+ (void)showCompatibilityAlertForAccountIfNeeded:(id)a3 title:(id)a4 alertMessage:(id)a5 defaultButtonTitle:(id)a6 secondaryButtonTitle:(id)a7 postscript:(id)a8 parentViewController:(id)a9 hasShownAlertKey:(id)a10 minimumNotesVersion:(int64_t)a11 completion:(id)a12;
+ (void)showCompatibilityAlertForInlineAttachmentsInAccountIfNeeded:(id)a3 parentViewController:(id)a4 completion:(id)a5;
+ (void)showCompatibilityAlertWithDeviceMessage:(id)a3 title:(id)a4 alertMessage:(id)a5 defaultButtonTitle:(id)a6 secondaryButtonTitle:(id)a7 postscript:(id)a8 parentViewController:(id)a9 completion:(id)a10;
+ (void)suppressOneTimeAttachmentUpgradeAlertForAcccount:(id)a3;
@end

@implementation ICCompatibilityAlertHelper

+ (void)showCompatibilityAlertForAccountIfNeeded:(id)a3 title:(id)a4 alertMessage:(id)a5 defaultButtonTitle:(id)a6 secondaryButtonTitle:(id)a7 postscript:(id)a8 parentViewController:(id)a9 hasShownAlertKey:(id)a10 minimumNotesVersion:(int64_t)a11 completion:(id)a12
{
  v35 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a12;
  v24 = MEMORY[0x1E69B7708];
  v25 = a3;
  v26 = [v24 sharedController];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __210__ICCompatibilityAlertHelper_showCompatibilityAlertForAccountIfNeeded_title_alertMessage_defaultButtonTitle_secondaryButtonTitle_postscript_parentViewController_hasShownAlertKey_minimumNotesVersion_completion___block_invoke;
  v37[3] = &unk_1E846BFE0;
  v45 = v23;
  v46 = a1;
  v38 = v22;
  v39 = v35;
  v40 = v17;
  v41 = v18;
  v42 = v19;
  v43 = v20;
  v44 = v21;
  v27 = v21;
  v28 = v20;
  v29 = v19;
  v30 = v18;
  v31 = v17;
  v32 = v35;
  v33 = v23;
  v34 = v22;
  [v26 messageForAccount:v25 minimumNotesVersion:a11 completionHandler:v37];
}

void __210__ICCompatibilityAlertHelper_showCompatibilityAlertForAccountIfNeeded_title_alertMessage_defaultButtonTitle_secondaryButtonTitle_postscript_parentViewController_hasShownAlertKey_minimumNotesVersion_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v15 = a1[4];
  v16 = v3;
  v14 = a1[11];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[8];
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v17 = v9;
  v18 = v8;
  v10 = a1[9];
  v11 = a1[10];
  *&v12 = v10;
  *(&v12 + 1) = v11;
  v19 = v12;
  v13 = v3;
  performBlockOnMainThread();
}

uint64_t __210__ICCompatibilityAlertHelper_showCompatibilityAlertForAccountIfNeeded_title_alertMessage_defaultButtonTitle_secondaryButtonTitle_postscript_parentViewController_hasShownAlertKey_minimumNotesVersion_completion___block_invoke_2(uint64_t result)
{
  if (isShowingCompatibilityAlert)
  {
    return result;
  }

  v1 = result;
  objc_opt_class();
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 objectForKey:*(v1 + 32)];
  v4 = ICDynamicCast();
  v5 = [v4 BOOLValue];

  if (!v5)
  {
    if (!*(v1 + 40))
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v6 = [MEMORY[0x1E69B7708] sharedController];
  if (([v6 fakesIncompatibleDevicesForDebugging] & 1) == 0)
  {

    goto LABEL_9;
  }

  v7 = *(v1 + 40);

  if (v7)
  {
LABEL_7:
    v8 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v8 setObject:MEMORY[0x1E695E118] forKey:*(v1 + 32)];

    return [*(v1 + 104) showCompatibilityAlertWithDeviceMessage:*(v1 + 40) title:*(v1 + 48) alertMessage:*(v1 + 56) defaultButtonTitle:*(v1 + 64) secondaryButtonTitle:*(v1 + 72) postscript:*(v1 + 80) parentViewController:*(v1 + 88) completion:*(v1 + 96)];
  }

LABEL_9:
  result = *(v1 + 96);
  if (result)
  {
    v9 = *(result + 16);

    return v9();
  }

  return result;
}

+ (void)showCompatibilityAlertWithDeviceMessage:(id)a3 title:(id)a4 alertMessage:(id)a5 defaultButtonTitle:(id)a6 secondaryButtonTitle:(id)a7 postscript:(id)a8 parentViewController:(id)a9 completion:(id)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v34 = a6;
  v33 = a7;
  v18 = a8;
  v32 = a9;
  v19 = a10;
  isShowingCompatibilityAlert = 1;
  v31 = v15;
  if (v18 && [v18 length])
  {
    v20 = __ICLocalizedFrameworkString_impl(@"%@:\n\n%@\n\n%@", @"%@:\n\n%@\n\n%@", 0, 1);
    [MEMORY[0x1E696AEC0] localizedStringWithFormat:v20, v17, v15, v18];
  }

  else
  {
    v20 = __ICLocalizedFrameworkString_impl(@"%@:\n\n%@", @"%@:\n\n%@", 0, 1);
    [MEMORY[0x1E696AEC0] localizedStringWithFormat:v20, v17, v15, v30];
  }
  v21 = ;

  v22 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v16 message:v21 preferredStyle:1];
  v23 = MEMORY[0x1E69DC648];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __172__ICCompatibilityAlertHelper_showCompatibilityAlertWithDeviceMessage_title_alertMessage_defaultButtonTitle_secondaryButtonTitle_postscript_parentViewController_completion___block_invoke;
  v37[3] = &unk_1E846A970;
  v24 = v16;
  v25 = v19;
  v38 = v25;
  v26 = [v23 actionWithTitle:v33 style:0 handler:v37];
  [v22 addAction:v26];
  v27 = MEMORY[0x1E69DC648];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __172__ICCompatibilityAlertHelper_showCompatibilityAlertWithDeviceMessage_title_alertMessage_defaultButtonTitle_secondaryButtonTitle_postscript_parentViewController_completion___block_invoke_2;
  v35[3] = &unk_1E846A970;
  v36 = v25;
  v28 = v25;
  v29 = [v27 actionWithTitle:v34 style:0 handler:v35];
  [v22 addAction:v29];
  [v32 presentViewController:v22 animated:1 completion:0];
}

uint64_t __172__ICCompatibilityAlertHelper_showCompatibilityAlertWithDeviceMessage_title_alertMessage_defaultButtonTitle_secondaryButtonTitle_postscript_parentViewController_completion___block_invoke(uint64_t a1)
{
  isShowingCompatibilityAlert = 0;
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 1);
  }

  return result;
}

uint64_t __172__ICCompatibilityAlertHelper_showCompatibilityAlertWithDeviceMessage_title_alertMessage_defaultButtonTitle_secondaryButtonTitle_postscript_parentViewController_completion___block_invoke_2(uint64_t a1)
{
  isShowingCompatibilityAlert = 0;
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

+ (void)showCompatibilityAlertForInlineAttachmentsInAccountIfNeeded:(id)a3 parentViewController:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v17 = __ICLocalizedFrameworkString_impl(@"Note Hidden on Some Devices", @"Note Hidden on Some Devices", 0, 1);
  v11 = __ICLocalizedFrameworkString_impl(@"Notes with tags or mentions are only viewable on iOS 14.5, iPadOS 14.5, and macOS 11.3 and later. Your devices that need upgrading", @"Notes with tags or mentions are only viewable on iOS 14.5, iPadOS 14.5, and macOS 11.3 and later. Your devices that need upgrading", 0, 1);
  v12 = MEMORY[0x1E696AEC0];
  v13 = [v10 identifier];
  v14 = [v12 stringWithFormat:@"ICInlineAttachmentOneTimeAlertKey-%@", v13];

  v15 = __ICLocalizedFrameworkString_impl(@"OK", @"OK", 0, 1);
  v16 = __ICLocalizedFrameworkString_impl(@"Learn More", @"Learn More", 0, 1);
  [a1 showCompatibilityAlertForAccountIfNeeded:v10 title:v17 alertMessage:v11 defaultButtonTitle:v15 secondaryButtonTitle:v16 postscript:0 parentViewController:v9 hasShownAlertKey:v14 minimumNotesVersion:6 completion:v8];
}

+ (void)showAttachmentCompatibilityAlertInAccountIfNeeded:(id)a3 parentViewController:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v16 = __ICLocalizedFrameworkString_impl(@"Edit Attachment?", @"Edit Attachment?", 0, 1);
  v11 = __ICLocalizedFrameworkString_impl(@"Editing this attachment will make it read-only on your devices using an older OS version", @"Editing this attachment will make it read-only on your devices using an older OS version", 0, 1);
  v12 = [ICCompatibilityAlertHelper oneTimeAlertKeyForAccount:v10];
  v13 = __ICLocalizedFrameworkString_impl(@"You can continue editing this attachment or discard the change you made.", @"You can continue editing this attachment or discard the change you made.", 0, 1);
  v14 = __ICLocalizedFrameworkString_impl(@"Continue Editing", @"Continue Editing", 0, 1);
  v15 = __ICLocalizedFrameworkString_impl(@"Discard Changes", @"Discard Changes", 0, 1);
  [a1 showCompatibilityAlertForAccountIfNeeded:v10 title:v16 alertMessage:v11 defaultButtonTitle:v14 secondaryButtonTitle:v15 postscript:v13 parentViewController:v9 hasShownAlertKey:v12 minimumNotesVersion:13 completion:v8];
}

+ (id)oneTimeAlertKeyForAccount:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a3 identifier];
  v5 = [v3 stringWithFormat:@"ICAttachmentOneTimeAlertKey-%lld-%@", 17, v4];

  return v5;
}

+ (void)suppressOneTimeAttachmentUpgradeAlertForAcccount:(id)a3
{
  v4 = [ICCompatibilityAlertHelper oneTimeAlertKeyForAccount:a3];
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v3 setObject:MEMORY[0x1E695E118] forKey:v4];
}

@end