@interface ICMoveAlertUtilities
+ (void)postAlertForFolderDepthLimitWithPresentingViewController:(id)a3 completionHandler:(id)a4;
+ (void)postAlertForMovingFolderWithSharedNotes:(id)a3 sharedSubfolders:(id)a4 destination:(id)a5 presentingViewController:(id)a6 shareHandler:(id)a7 cancelHandler:(id)a8;
+ (void)postAlertForMovingLockedNotesToOtherAccountIsCopy:(BOOL)a3 presentingViewController:(id)a4 completionHandler:(id)a5;
+ (void)postAlertForMovingLockedOrSingleJoinedNotesToSharedFolderWithCountOfNotes:(unint64_t)a3 guiltyObjects:(id)a4 presentingViewController:(id)a5 completionHandler:(id)a6;
+ (void)postAlertForMovingNotesContainingSharedNotesToSharedFolder:(id)a3 destination:(id)a4 presentingViewController:(id)a5 shareHandler:(id)a6 cancelHandler:(id)a7;
+ (void)postAlertForMovingSharedNotesToAnotherAccountWithPresentingViewController:(id)a3 completionHandler:(id)a4;
+ (void)postAlertForMovingSmartFolderWithRestrictedFilterToLocalAccount:(id)a3 presentingViewController:(id)a4;
+ (void)postAlertForOwnerStoppedSharingCurrentFolderWithPresentingViewController:(id)a3 completionHandler:(id)a4;
+ (void)postAlertForSharingFolderContainingLockedOrJoinedRootObjectsWithGuiltyObjects:(id)a3 presentingViewController:(id)a4 completionHandler:(id)a5;
+ (void)postAlertForSharingFolderWithSharedNotes:(id)a3 sharedSubfolders:(id)a4 presentingViewController:(id)a5 shareHandler:(id)a6 cancelHandler:(id)a7;
+ (void)postAlertForUnsupportedAttachmentsInLegacyAccount:(id)a3 presentingViewController:(id)a4;
+ (void)postAlertWithOKButtonWithTitle:(id)a3 message:(id)a4 presentingViewController:(id)a5 completionHandler:(id)a6;
+ (void)postAlertWithProceedAndCancelButtonsWithTitle:(id)a3 message:(id)a4 proceedTitle:(id)a5 presentingViewController:(id)a6 proceedHandler:(id)a7 cancelHandler:(id)a8;
@end

@implementation ICMoveAlertUtilities

+ (void)postAlertWithOKButtonWithTitle:(id)a3 message:(id)a4 presentingViewController:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([objc_opt_class() suppressesAlerts])
  {
    if (v12)
    {
      v12[2](v12);
    }
  }

  else
  {
    v13 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v9 message:v10 preferredStyle:1];
    v14 = MEMORY[0x1E69DC648];
    v15 = __ICLocalizedFrameworkString_impl(@"OK", @"OK", 0, 1);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __106__ICMoveAlertUtilities_postAlertWithOKButtonWithTitle_message_presentingViewController_completionHandler___block_invoke;
    v17[3] = &unk_1E846A970;
    v18 = v12;
    v16 = [v14 actionWithTitle:v15 style:0 handler:v17];

    [v13 addAction:v16];
    [v11 presentViewController:v13 animated:1 completion:0];
  }
}

uint64_t __106__ICMoveAlertUtilities_postAlertWithOKButtonWithTitle_message_presentingViewController_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)postAlertWithProceedAndCancelButtonsWithTitle:(id)a3 message:(id)a4 proceedTitle:(id)a5 presentingViewController:(id)a6 proceedHandler:(id)a7 cancelHandler:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (![objc_opt_class() suppressesAlerts] && v13 && v14)
  {
    v19 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v13 message:v14 preferredStyle:1];
    v20 = MEMORY[0x1E69DC648];
    v21 = __ICLocalizedFrameworkString_impl(@"Cancel", @"Cancel", 0, 1);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __145__ICMoveAlertUtilities_postAlertWithProceedAndCancelButtonsWithTitle_message_proceedTitle_presentingViewController_proceedHandler_cancelHandler___block_invoke;
    v30[3] = &unk_1E846A970;
    v31 = v18;
    v22 = [v20 actionWithTitle:v21 style:1 handler:v30];

    [v19 addAction:v22];
    v23 = MEMORY[0x1E69DC648];
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __145__ICMoveAlertUtilities_postAlertWithProceedAndCancelButtonsWithTitle_message_proceedTitle_presentingViewController_proceedHandler_cancelHandler___block_invoke_2;
    v28 = &unk_1E846A970;
    v29 = v17;
    v24 = [v23 actionWithTitle:v15 style:0 handler:&v25];
    [v19 addAction:{v24, v25, v26, v27, v28}];
    [v19 setPreferredAction:v24];
    [v16 presentViewController:v19 animated:1 completion:0];
  }

  else if (v17)
  {
    v17[2](v17);
  }
}

uint64_t __145__ICMoveAlertUtilities_postAlertWithProceedAndCancelButtonsWithTitle_message_proceedTitle_presentingViewController_proceedHandler_cancelHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __145__ICMoveAlertUtilities_postAlertWithProceedAndCancelButtonsWithTitle_message_proceedTitle_presentingViewController_proceedHandler_cancelHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)postAlertForMovingLockedOrSingleJoinedNotesToSharedFolderWithCountOfNotes:(unint64_t)a3 guiltyObjects:(id)a4 presentingViewController:(id)a5 completionHandler:(id)a6
{
  v14 = a5;
  v10 = a6;
  if ([a4 ic_containsObjectPassingTest:&__block_literal_global_27])
  {
    if (a3 == 1)
    {
      v11 = @"Your note wasn’t moved.";
    }

    else
    {
      v11 = @"Your notes weren’t moved.";
    }

    v12 = __ICLocalizedFrameworkString_impl(v11, v11, 0, 1);
    v13 = __ICLocalizedFrameworkString_impl(@"Locked notes can’t be shared.", @"Locked notes can’t be shared.", 0, 1);
    [a1 postAlertWithOKButtonWithTitle:v12 message:v13 presentingViewController:v14 completionHandler:v10];
  }

  else if (v10)
  {
    v10[2](v10);
  }
}

+ (void)postAlertForSharingFolderContainingLockedOrJoinedRootObjectsWithGuiltyObjects:(id)a3 presentingViewController:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v10 ic_containsObjectPassingTest:&__block_literal_global_26];
  v12 = [v10 ic_containsObjectPassingTest:&__block_literal_global_28];

  v13 = __ICLocalizedFrameworkString_impl(@"Can’t Share Folder", @"Can’t Share Folder", 0, 1);
  if (v11 && v12)
  {
    v14 = @"You can’t share folders that contain items shared with you or locked notes.";
  }

  else if (v11)
  {
    v14 = @"You can’t share folders that contain locked notes.";
  }

  else
  {
    if (!v12)
    {
      v16 = 0;
      goto LABEL_12;
    }

    v14 = @"You can’t share folders that contain items shared with you.";
  }

  v15 = __ICLocalizedFrameworkString_impl(v14, v14, 0, 1);
  v16 = v15;
  if (v13 && v15)
  {
    [a1 postAlertWithOKButtonWithTitle:v13 message:v15 presentingViewController:v8 completionHandler:v9];
    goto LABEL_16;
  }

LABEL_12:
  v17 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [ICMoveAlertUtilities postAlertForSharingFolderContainingLockedOrJoinedRootObjectsWithGuiltyObjects:v17 presentingViewController:? completionHandler:?];
  }

  if (v9)
  {
    v9[2](v9);
  }

LABEL_16:
}

uint64_t __145__ICMoveAlertUtilities_postAlertForSharingFolderContainingLockedOrJoinedRootObjectsWithGuiltyObjects_presentingViewController_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isSharedRootObject])
  {
    v3 = [v2 isOwnedByCurrentUser] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (void)postAlertForOwnerStoppedSharingCurrentFolderWithPresentingViewController:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = __ICLocalizedFrameworkString_impl(@"Sharing Stopped", @"Sharing Stopped", 0, 1);
  v8 = __ICLocalizedFrameworkString_impl(@"The owner stopped sharing this folder. It’s no longer available.", @"The owner stopped sharing this folder. It’s no longer available.", 0, 1);
  [a1 postAlertWithOKButtonWithTitle:v9 message:v8 presentingViewController:v7 completionHandler:v6];
}

+ (void)postAlertForSharingFolderWithSharedNotes:(id)a3 sharedSubfolders:(id)a4 presentingViewController:(id)a5 shareHandler:(id)a6 cancelHandler:(id)a7
{
  v21 = a3;
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = __ICLocalizedFrameworkString_impl(@"Sharing this folder will change who can read and edit all notes within it.", @"Sharing this folder will change who can read and edit all notes within it.", 0, 1);
  v17 = [v15 count];

  if (v17)
  {
    v18 = @"This folder already contains shared notes and folders. People who currently have access to these may lose it.";
  }

  else if ([v21 count] == 1)
  {
    v18 = @"This folder already contains a shared note. People who currently have access to this note may lose it.";
  }

  else if ([v21 count] < 2)
  {
    v18 = @"This folder is shared. People who currently have access to it may lose it.";
  }

  else
  {
    v18 = @"This folder already contains shared notes. People who currently have access to these notes may lose it.";
  }

  v19 = __ICLocalizedFrameworkString_impl(v18, v18, 0, 1);
  v20 = __ICLocalizedFrameworkString_impl(@"Share", @"Share", 0, 1);
  [a1 postAlertWithProceedAndCancelButtonsWithTitle:v16 message:v19 proceedTitle:v20 presentingViewController:v14 proceedHandler:v13 cancelHandler:v12];
}

+ (void)postAlertForMovingFolderWithSharedNotes:(id)a3 sharedSubfolders:(id)a4 destination:(id)a5 presentingViewController:(id)a6 shareHandler:(id)a7 cancelHandler:(id)a8
{
  v37 = a3;
  v13 = a4;
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  objc_opt_class();
  v18 = ICDynamicCast();
  objc_opt_class();
  v19 = ICDynamicCast();
  objc_opt_class();
  v20 = ICDynamicCast();

  v21 = [v19 isSharedViaICloud];
  v22 = [v18 localizedName];
  v23 = v22;
  v35 = v20;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v25 = [v19 localizedTitle];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = [v20 title];
    }

    v24 = v27;
  }

  if (v21)
  {
    if ([v13 count] == 1)
    {
      v28 = __ICLocalizedFrameworkString_impl(@"Move Shared Folder?", @"Move Shared Folder?", 0, 1);
      v29 = MEMORY[0x1E696AEC0];
      v30 = @"If you move this folder, only people added to the shared folder “%@” will be able to access it.";
    }

    else
    {
      v28 = __ICLocalizedFrameworkString_impl(@"Move Shared Folders?", @"Move Shared Folders?", 0, 1);
      v29 = MEMORY[0x1E696AEC0];
      v30 = @"If you move these folders, only people added to the shared folder “%@” will be able to access them.";
    }

    v32 = __ICLocalizedFrameworkString_impl(v30, v30, 0, 1);
    v33 = [v29 localizedStringWithFormat:v32, v24, v35];
  }

  else
  {
    v28 = __ICLocalizedFrameworkString_impl(@"Moving this folder will change who can read and edit all notes within it.", @"Moving this folder will change who can read and edit all notes within it.", 0, 1);
    if ([v13 count])
    {
      v31 = @"This folder already contains shared notes and folders. People who currently have access to these may lose it.";
    }

    else if ([v37 count] == 1)
    {
      v31 = @"This folder already contains a shared note. People who currently have access to this note may lose it.";
    }

    else if ([v37 count] < 2)
    {
      v31 = @"This folder is shared. People who currently have access to it may lose it.";
    }

    else
    {
      v31 = @"This folder already contains shared notes. People who currently have access to these notes may lose it.";
    }

    v33 = __ICLocalizedFrameworkString_impl(v31, v31, 0, 1);
  }

  v34 = __ICLocalizedFrameworkString_impl(@"Move Anyway", @"Move Anyway", 0, 1);
  [a1 postAlertWithProceedAndCancelButtonsWithTitle:v28 message:v33 proceedTitle:v34 presentingViewController:v16 proceedHandler:v15 cancelHandler:v14];
}

+ (void)postAlertForMovingNotesContainingSharedNotesToSharedFolder:(id)a3 destination:(id)a4 presentingViewController:(id)a5 shareHandler:(id)a6 cancelHandler:(id)a7
{
  v37 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if ([v37 count])
  {
    objc_opt_class();
    v16 = ICDynamicCast();
    objc_opt_class();
    v17 = ICDynamicCast();
    objc_opt_class();
    v18 = ICDynamicCast();
    v19 = [v17 isSharedViaICloud];
    v36 = v16;
    v20 = [v16 localizedName];
    v21 = v20;
    v35 = v18;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v23 = [v17 localizedTitle];
      v24 = v23;
      if (v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = [v18 title];
      }

      v22 = v25;
    }

    v26 = [v37 count];
    if (v19)
    {
      v34 = a1;
      if (v26 == 1)
      {
        v27 = __ICLocalizedFrameworkString_impl(@"Move Shared Note?", @"Move Shared Note?", 0, 1);
        v28 = MEMORY[0x1E696AEC0];
        v29 = @"If you move this note, only people added to the shared folder “%@” will be able to access it.";
      }

      else
      {
        v27 = __ICLocalizedFrameworkString_impl(@"Move Shared Notes?", @"Move Shared Notes?", 0, 1);
        v28 = MEMORY[0x1E696AEC0];
        v29 = @"If you move these notes, only people added to the shared folder “%@” will be able to access them.";
      }

      v31 = __ICLocalizedFrameworkString_impl(v29, v29, 0, 1);
      v32 = [v28 localizedStringWithFormat:v31, v22];

      a1 = v34;
    }

    else
    {
      if (v26 == 1)
      {
        v27 = __ICLocalizedFrameworkString_impl(@"Moving this note will change who can read and edit it.", @"Moving this note will change who can read and edit it.", 0, 1);
        v30 = @"People who currently have access to this note may lose it.";
      }

      else
      {
        v27 = __ICLocalizedFrameworkString_impl(@"Moving these notes will change who can read and edit them.", @"Moving these notes will change who can read and edit them.", 0, 1);
        v30 = @"There are shared notes among them. People who currently have access to these notes may lose it.";
      }

      v32 = __ICLocalizedFrameworkString_impl(v30, v30, 0, 1);
    }

    v33 = __ICLocalizedFrameworkString_impl(@"Move Anyway", @"Move Anyway", 0, 1);
    [a1 postAlertWithProceedAndCancelButtonsWithTitle:v27 message:v32 proceedTitle:v33 presentingViewController:v13 proceedHandler:v14 cancelHandler:v15];
  }
}

+ (void)postAlertForMovingSharedNotesToAnotherAccountWithPresentingViewController:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = __ICLocalizedFrameworkString_impl(@"Notes couldn’t be moved.", @"Notes couldn’t be moved.", 0, 1);
  v8 = __ICLocalizedFrameworkString_impl(@"Shared notes can’t be moved to a different account.", @"Shared notes can’t be moved to a different account.", 0, 1);
  [a1 postAlertWithOKButtonWithTitle:v9 message:v8 presentingViewController:v7 completionHandler:v6];
}

+ (void)postAlertForMovingLockedNotesToOtherAccountIsCopy:(BOOL)a3 presentingViewController:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v12 = __ICLocalizedFrameworkString_impl(@"One or more notes are locked.", @"One or more notes are locked.", 0, 1);
  if (a3)
  {
    v10 = @"You must remove the lock from this note to copy it to a different account.";
  }

  else
  {
    v10 = @"You must remove the lock from this note to move it to a different account.";
  }

  v11 = __ICLocalizedFrameworkString_impl(v10, v10, 0, 1);
  [a1 postAlertWithOKButtonWithTitle:v12 message:v11 presentingViewController:v9 completionHandler:v8];
}

+ (void)postAlertForFolderDepthLimitWithPresentingViewController:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = __ICLocalizedFrameworkString_impl(@"Can’t move folder", @"Can’t move folder", 0, 1);
  v8 = [MEMORY[0x1E69B7760] folderDepthLimit] + 1;
  v9 = __ICLocalizedFrameworkString_impl(@"FOLDER_DEPTH_LIMIT_MESSAGE_%lu", @"FOLDER_DEPTH_LIMIT_MESSAGE_%lu", 0, 1);
  v10 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v9, v8];
  [a1 postAlertWithOKButtonWithTitle:v11 message:v10 presentingViewController:v7 completionHandler:v6];
}

+ (void)postAlertForUnsupportedAttachmentsInLegacyAccount:(id)a3 presentingViewController:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = __ICLocalizedFrameworkString_impl(@"The folder couldn’t be added because one or more notes have attachments.", @"The folder couldn’t be added because one or more notes have attachments.", 0, 1);
  v8 = [v7 localizedAttachmentsNotSupportedReason];

  [a1 postAlertWithOKButtonWithTitle:v9 message:v8 presentingViewController:v6 completionHandler:0];
}

+ (void)postAlertForMovingSmartFolderWithRestrictedFilterToLocalAccount:(id)a3 presentingViewController:(id)a4
{
  v6 = a4;
  v7 = a3;
  v12 = __ICLocalizedFrameworkString_impl(@"Can’t Move Folder", @"Can’t Move Folder", 0, 1);
  v8 = MEMORY[0x1E696AEC0];
  v9 = __ICLocalizedFrameworkString_impl(@"Smart Folders using Shared and Mentions filters can’t be moved to the “%@” account.", @"Smart Folders using Shared and Mentions filters can’t be moved to the “%@” account.", 0, 1);
  v10 = [v7 localizedName];

  v11 = [v8 localizedStringWithFormat:v9, v10];

  [a1 postAlertWithOKButtonWithTitle:v12 message:v11 presentingViewController:v6 completionHandler:0];
}

@end