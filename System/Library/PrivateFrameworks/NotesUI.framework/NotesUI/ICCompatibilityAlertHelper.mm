@interface ICCompatibilityAlertHelper
+ (id)oneTimeAlertKeyForAccount:(id)account;
+ (void)showAttachmentCompatibilityAlertInAccountIfNeeded:(id)needed parentViewController:(id)controller completion:(id)completion;
+ (void)showCompatibilityAlertForAccountIfNeeded:(id)needed title:(id)title alertMessage:(id)message defaultButtonTitle:(id)buttonTitle secondaryButtonTitle:(id)secondaryButtonTitle postscript:(id)postscript parentViewController:(id)controller hasShownAlertKey:(id)self0 minimumNotesVersion:(int64_t)self1 completion:(id)self2;
+ (void)showCompatibilityAlertForInlineAttachmentsInAccountIfNeeded:(id)needed parentViewController:(id)controller completion:(id)completion;
+ (void)showCompatibilityAlertWithDeviceMessage:(id)message title:(id)title alertMessage:(id)alertMessage defaultButtonTitle:(id)buttonTitle secondaryButtonTitle:(id)secondaryButtonTitle postscript:(id)postscript parentViewController:(id)controller completion:(id)self0;
+ (void)suppressOneTimeAttachmentUpgradeAlertForAcccount:(id)acccount;
@end

@implementation ICCompatibilityAlertHelper

+ (void)showCompatibilityAlertForAccountIfNeeded:(id)needed title:(id)title alertMessage:(id)message defaultButtonTitle:(id)buttonTitle secondaryButtonTitle:(id)secondaryButtonTitle postscript:(id)postscript parentViewController:(id)controller hasShownAlertKey:(id)self0 minimumNotesVersion:(int64_t)self1 completion:(id)self2
{
  titleCopy = title;
  messageCopy = message;
  buttonTitleCopy = buttonTitle;
  secondaryButtonTitleCopy = secondaryButtonTitle;
  postscriptCopy = postscript;
  controllerCopy = controller;
  keyCopy = key;
  completionCopy = completion;
  v24 = MEMORY[0x1E69B7708];
  neededCopy = needed;
  sharedController = [v24 sharedController];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __210__ICCompatibilityAlertHelper_showCompatibilityAlertForAccountIfNeeded_title_alertMessage_defaultButtonTitle_secondaryButtonTitle_postscript_parentViewController_hasShownAlertKey_minimumNotesVersion_completion___block_invoke;
  v37[3] = &unk_1E846BFE0;
  v45 = completionCopy;
  selfCopy = self;
  v38 = keyCopy;
  v39 = titleCopy;
  v40 = messageCopy;
  v41 = buttonTitleCopy;
  v42 = secondaryButtonTitleCopy;
  v43 = postscriptCopy;
  v44 = controllerCopy;
  v27 = controllerCopy;
  v28 = postscriptCopy;
  v29 = secondaryButtonTitleCopy;
  v30 = buttonTitleCopy;
  v31 = messageCopy;
  v32 = titleCopy;
  v33 = completionCopy;
  v34 = keyCopy;
  [sharedController messageForAccount:neededCopy minimumNotesVersion:version completionHandler:v37];
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

+ (void)showCompatibilityAlertWithDeviceMessage:(id)message title:(id)title alertMessage:(id)alertMessage defaultButtonTitle:(id)buttonTitle secondaryButtonTitle:(id)secondaryButtonTitle postscript:(id)postscript parentViewController:(id)controller completion:(id)self0
{
  messageCopy = message;
  titleCopy = title;
  alertMessageCopy = alertMessage;
  buttonTitleCopy = buttonTitle;
  secondaryButtonTitleCopy = secondaryButtonTitle;
  postscriptCopy = postscript;
  controllerCopy = controller;
  completionCopy = completion;
  isShowingCompatibilityAlert = 1;
  v31 = messageCopy;
  if (postscriptCopy && [postscriptCopy length])
  {
    v20 = __ICLocalizedFrameworkString_impl(@"%@:\n\n%@\n\n%@", @"%@:\n\n%@\n\n%@", 0, 1);
    [MEMORY[0x1E696AEC0] localizedStringWithFormat:v20, alertMessageCopy, messageCopy, postscriptCopy];
  }

  else
  {
    v20 = __ICLocalizedFrameworkString_impl(@"%@:\n\n%@", @"%@:\n\n%@", 0, 1);
    [MEMORY[0x1E696AEC0] localizedStringWithFormat:v20, alertMessageCopy, messageCopy, v30];
  }
  v21 = ;

  v22 = [MEMORY[0x1E69DC650] alertControllerWithTitle:titleCopy message:v21 preferredStyle:1];
  v23 = MEMORY[0x1E69DC648];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __172__ICCompatibilityAlertHelper_showCompatibilityAlertWithDeviceMessage_title_alertMessage_defaultButtonTitle_secondaryButtonTitle_postscript_parentViewController_completion___block_invoke;
  v37[3] = &unk_1E846A970;
  v24 = titleCopy;
  v25 = completionCopy;
  v38 = v25;
  v26 = [v23 actionWithTitle:secondaryButtonTitleCopy style:0 handler:v37];
  [v22 addAction:v26];
  v27 = MEMORY[0x1E69DC648];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __172__ICCompatibilityAlertHelper_showCompatibilityAlertWithDeviceMessage_title_alertMessage_defaultButtonTitle_secondaryButtonTitle_postscript_parentViewController_completion___block_invoke_2;
  v35[3] = &unk_1E846A970;
  v36 = v25;
  v28 = v25;
  v29 = [v27 actionWithTitle:buttonTitleCopy style:0 handler:v35];
  [v22 addAction:v29];
  [controllerCopy presentViewController:v22 animated:1 completion:0];
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

+ (void)showCompatibilityAlertForInlineAttachmentsInAccountIfNeeded:(id)needed parentViewController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  controllerCopy = controller;
  neededCopy = needed;
  v17 = __ICLocalizedFrameworkString_impl(@"Note Hidden on Some Devices", @"Note Hidden on Some Devices", 0, 1);
  v11 = __ICLocalizedFrameworkString_impl(@"Notes with tags or mentions are only viewable on iOS 14.5, iPadOS 14.5, and macOS 11.3 and later. Your devices that need upgrading", @"Notes with tags or mentions are only viewable on iOS 14.5, iPadOS 14.5, and macOS 11.3 and later. Your devices that need upgrading", 0, 1);
  v12 = MEMORY[0x1E696AEC0];
  identifier = [neededCopy identifier];
  v14 = [v12 stringWithFormat:@"ICInlineAttachmentOneTimeAlertKey-%@", identifier];

  v15 = __ICLocalizedFrameworkString_impl(@"OK", @"OK", 0, 1);
  v16 = __ICLocalizedFrameworkString_impl(@"Learn More", @"Learn More", 0, 1);
  [self showCompatibilityAlertForAccountIfNeeded:neededCopy title:v17 alertMessage:v11 defaultButtonTitle:v15 secondaryButtonTitle:v16 postscript:0 parentViewController:controllerCopy hasShownAlertKey:v14 minimumNotesVersion:6 completion:completionCopy];
}

+ (void)showAttachmentCompatibilityAlertInAccountIfNeeded:(id)needed parentViewController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  controllerCopy = controller;
  neededCopy = needed;
  v16 = __ICLocalizedFrameworkString_impl(@"Edit Attachment?", @"Edit Attachment?", 0, 1);
  v11 = __ICLocalizedFrameworkString_impl(@"Editing this attachment will make it read-only on your devices using an older OS version", @"Editing this attachment will make it read-only on your devices using an older OS version", 0, 1);
  v12 = [ICCompatibilityAlertHelper oneTimeAlertKeyForAccount:neededCopy];
  v13 = __ICLocalizedFrameworkString_impl(@"You can continue editing this attachment or discard the change you made.", @"You can continue editing this attachment or discard the change you made.", 0, 1);
  v14 = __ICLocalizedFrameworkString_impl(@"Continue Editing", @"Continue Editing", 0, 1);
  v15 = __ICLocalizedFrameworkString_impl(@"Discard Changes", @"Discard Changes", 0, 1);
  [self showCompatibilityAlertForAccountIfNeeded:neededCopy title:v16 alertMessage:v11 defaultButtonTitle:v14 secondaryButtonTitle:v15 postscript:v13 parentViewController:controllerCopy hasShownAlertKey:v12 minimumNotesVersion:13 completion:completionCopy];
}

+ (id)oneTimeAlertKeyForAccount:(id)account
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [account identifier];
  v5 = [v3 stringWithFormat:@"ICAttachmentOneTimeAlertKey-%lld-%@", 17, identifier];

  return v5;
}

+ (void)suppressOneTimeAttachmentUpgradeAlertForAcccount:(id)acccount
{
  v4 = [ICCompatibilityAlertHelper oneTimeAlertKeyForAccount:acccount];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setObject:MEMORY[0x1E695E118] forKey:v4];
}

@end