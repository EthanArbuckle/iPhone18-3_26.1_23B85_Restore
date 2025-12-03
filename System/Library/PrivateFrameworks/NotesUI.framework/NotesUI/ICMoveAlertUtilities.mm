@interface ICMoveAlertUtilities
+ (void)postAlertForFolderDepthLimitWithPresentingViewController:(id)controller completionHandler:(id)handler;
+ (void)postAlertForMovingFolderWithSharedNotes:(id)notes sharedSubfolders:(id)subfolders destination:(id)destination presentingViewController:(id)controller shareHandler:(id)handler cancelHandler:(id)cancelHandler;
+ (void)postAlertForMovingLockedNotesToOtherAccountIsCopy:(BOOL)copy presentingViewController:(id)controller completionHandler:(id)handler;
+ (void)postAlertForMovingLockedOrSingleJoinedNotesToSharedFolderWithCountOfNotes:(unint64_t)notes guiltyObjects:(id)objects presentingViewController:(id)controller completionHandler:(id)handler;
+ (void)postAlertForMovingNotesContainingSharedNotesToSharedFolder:(id)folder destination:(id)destination presentingViewController:(id)controller shareHandler:(id)handler cancelHandler:(id)cancelHandler;
+ (void)postAlertForMovingSharedNotesToAnotherAccountWithPresentingViewController:(id)controller completionHandler:(id)handler;
+ (void)postAlertForMovingSmartFolderWithRestrictedFilterToLocalAccount:(id)account presentingViewController:(id)controller;
+ (void)postAlertForOwnerStoppedSharingCurrentFolderWithPresentingViewController:(id)controller completionHandler:(id)handler;
+ (void)postAlertForSharingFolderContainingLockedOrJoinedRootObjectsWithGuiltyObjects:(id)objects presentingViewController:(id)controller completionHandler:(id)handler;
+ (void)postAlertForSharingFolderWithSharedNotes:(id)notes sharedSubfolders:(id)subfolders presentingViewController:(id)controller shareHandler:(id)handler cancelHandler:(id)cancelHandler;
+ (void)postAlertForUnsupportedAttachmentsInLegacyAccount:(id)account presentingViewController:(id)controller;
+ (void)postAlertWithOKButtonWithTitle:(id)title message:(id)message presentingViewController:(id)controller completionHandler:(id)handler;
+ (void)postAlertWithProceedAndCancelButtonsWithTitle:(id)title message:(id)message proceedTitle:(id)proceedTitle presentingViewController:(id)controller proceedHandler:(id)handler cancelHandler:(id)cancelHandler;
@end

@implementation ICMoveAlertUtilities

+ (void)postAlertWithOKButtonWithTitle:(id)title message:(id)message presentingViewController:(id)controller completionHandler:(id)handler
{
  titleCopy = title;
  messageCopy = message;
  controllerCopy = controller;
  handlerCopy = handler;
  if ([objc_opt_class() suppressesAlerts])
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }

  else
  {
    v13 = [MEMORY[0x1E69DC650] alertControllerWithTitle:titleCopy message:messageCopy preferredStyle:1];
    v14 = MEMORY[0x1E69DC648];
    v15 = __ICLocalizedFrameworkString_impl(@"OK", @"OK", 0, 1);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __106__ICMoveAlertUtilities_postAlertWithOKButtonWithTitle_message_presentingViewController_completionHandler___block_invoke;
    v17[3] = &unk_1E846A970;
    v18 = handlerCopy;
    v16 = [v14 actionWithTitle:v15 style:0 handler:v17];

    [v13 addAction:v16];
    [controllerCopy presentViewController:v13 animated:1 completion:0];
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

+ (void)postAlertWithProceedAndCancelButtonsWithTitle:(id)title message:(id)message proceedTitle:(id)proceedTitle presentingViewController:(id)controller proceedHandler:(id)handler cancelHandler:(id)cancelHandler
{
  titleCopy = title;
  messageCopy = message;
  proceedTitleCopy = proceedTitle;
  controllerCopy = controller;
  handlerCopy = handler;
  cancelHandlerCopy = cancelHandler;
  if (![objc_opt_class() suppressesAlerts] && titleCopy && messageCopy)
  {
    v19 = [MEMORY[0x1E69DC650] alertControllerWithTitle:titleCopy message:messageCopy preferredStyle:1];
    v20 = MEMORY[0x1E69DC648];
    v21 = __ICLocalizedFrameworkString_impl(@"Cancel", @"Cancel", 0, 1);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __145__ICMoveAlertUtilities_postAlertWithProceedAndCancelButtonsWithTitle_message_proceedTitle_presentingViewController_proceedHandler_cancelHandler___block_invoke;
    v30[3] = &unk_1E846A970;
    v31 = cancelHandlerCopy;
    v22 = [v20 actionWithTitle:v21 style:1 handler:v30];

    [v19 addAction:v22];
    v23 = MEMORY[0x1E69DC648];
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __145__ICMoveAlertUtilities_postAlertWithProceedAndCancelButtonsWithTitle_message_proceedTitle_presentingViewController_proceedHandler_cancelHandler___block_invoke_2;
    v28 = &unk_1E846A970;
    v29 = handlerCopy;
    v24 = [v23 actionWithTitle:proceedTitleCopy style:0 handler:&v25];
    [v19 addAction:{v24, v25, v26, v27, v28}];
    [v19 setPreferredAction:v24];
    [controllerCopy presentViewController:v19 animated:1 completion:0];
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
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

+ (void)postAlertForMovingLockedOrSingleJoinedNotesToSharedFolderWithCountOfNotes:(unint64_t)notes guiltyObjects:(id)objects presentingViewController:(id)controller completionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  if ([objects ic_containsObjectPassingTest:&__block_literal_global_27])
  {
    if (notes == 1)
    {
      v11 = @"Your note wasn’t moved.";
    }

    else
    {
      v11 = @"Your notes weren’t moved.";
    }

    v12 = __ICLocalizedFrameworkString_impl(v11, v11, 0, 1);
    v13 = __ICLocalizedFrameworkString_impl(@"Locked notes can’t be shared.", @"Locked notes can’t be shared.", 0, 1);
    [self postAlertWithOKButtonWithTitle:v12 message:v13 presentingViewController:controllerCopy completionHandler:handlerCopy];
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

+ (void)postAlertForSharingFolderContainingLockedOrJoinedRootObjectsWithGuiltyObjects:(id)objects presentingViewController:(id)controller completionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  objectsCopy = objects;
  v11 = [objectsCopy ic_containsObjectPassingTest:&__block_literal_global_26];
  v12 = [objectsCopy ic_containsObjectPassingTest:&__block_literal_global_28];

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
    [self postAlertWithOKButtonWithTitle:v13 message:v15 presentingViewController:controllerCopy completionHandler:handlerCopy];
    goto LABEL_16;
  }

LABEL_12:
  v17 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [ICMoveAlertUtilities postAlertForSharingFolderContainingLockedOrJoinedRootObjectsWithGuiltyObjects:v17 presentingViewController:? completionHandler:?];
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
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

+ (void)postAlertForOwnerStoppedSharingCurrentFolderWithPresentingViewController:(id)controller completionHandler:(id)handler
{
  handlerCopy = handler;
  controllerCopy = controller;
  v9 = __ICLocalizedFrameworkString_impl(@"Sharing Stopped", @"Sharing Stopped", 0, 1);
  v8 = __ICLocalizedFrameworkString_impl(@"The owner stopped sharing this folder. It’s no longer available.", @"The owner stopped sharing this folder. It’s no longer available.", 0, 1);
  [self postAlertWithOKButtonWithTitle:v9 message:v8 presentingViewController:controllerCopy completionHandler:handlerCopy];
}

+ (void)postAlertForSharingFolderWithSharedNotes:(id)notes sharedSubfolders:(id)subfolders presentingViewController:(id)controller shareHandler:(id)handler cancelHandler:(id)cancelHandler
{
  notesCopy = notes;
  cancelHandlerCopy = cancelHandler;
  handlerCopy = handler;
  controllerCopy = controller;
  subfoldersCopy = subfolders;
  v16 = __ICLocalizedFrameworkString_impl(@"Sharing this folder will change who can read and edit all notes within it.", @"Sharing this folder will change who can read and edit all notes within it.", 0, 1);
  v17 = [subfoldersCopy count];

  if (v17)
  {
    v18 = @"This folder already contains shared notes and folders. People who currently have access to these may lose it.";
  }

  else if ([notesCopy count] == 1)
  {
    v18 = @"This folder already contains a shared note. People who currently have access to this note may lose it.";
  }

  else if ([notesCopy count] < 2)
  {
    v18 = @"This folder is shared. People who currently have access to it may lose it.";
  }

  else
  {
    v18 = @"This folder already contains shared notes. People who currently have access to these notes may lose it.";
  }

  v19 = __ICLocalizedFrameworkString_impl(v18, v18, 0, 1);
  v20 = __ICLocalizedFrameworkString_impl(@"Share", @"Share", 0, 1);
  [self postAlertWithProceedAndCancelButtonsWithTitle:v16 message:v19 proceedTitle:v20 presentingViewController:controllerCopy proceedHandler:handlerCopy cancelHandler:cancelHandlerCopy];
}

+ (void)postAlertForMovingFolderWithSharedNotes:(id)notes sharedSubfolders:(id)subfolders destination:(id)destination presentingViewController:(id)controller shareHandler:(id)handler cancelHandler:(id)cancelHandler
{
  notesCopy = notes;
  subfoldersCopy = subfolders;
  cancelHandlerCopy = cancelHandler;
  handlerCopy = handler;
  controllerCopy = controller;
  destinationCopy = destination;
  objc_opt_class();
  v18 = ICDynamicCast();
  objc_opt_class();
  v19 = ICDynamicCast();
  objc_opt_class();
  v20 = ICDynamicCast();

  isSharedViaICloud = [v19 isSharedViaICloud];
  localizedName = [v18 localizedName];
  v23 = localizedName;
  v35 = v20;
  if (localizedName)
  {
    v24 = localizedName;
  }

  else
  {
    localizedTitle = [v19 localizedTitle];
    v26 = localizedTitle;
    if (localizedTitle)
    {
      title = localizedTitle;
    }

    else
    {
      title = [v20 title];
    }

    v24 = title;
  }

  if (isSharedViaICloud)
  {
    if ([subfoldersCopy count] == 1)
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
    if ([subfoldersCopy count])
    {
      v31 = @"This folder already contains shared notes and folders. People who currently have access to these may lose it.";
    }

    else if ([notesCopy count] == 1)
    {
      v31 = @"This folder already contains a shared note. People who currently have access to this note may lose it.";
    }

    else if ([notesCopy count] < 2)
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
  [self postAlertWithProceedAndCancelButtonsWithTitle:v28 message:v33 proceedTitle:v34 presentingViewController:controllerCopy proceedHandler:handlerCopy cancelHandler:cancelHandlerCopy];
}

+ (void)postAlertForMovingNotesContainingSharedNotesToSharedFolder:(id)folder destination:(id)destination presentingViewController:(id)controller shareHandler:(id)handler cancelHandler:(id)cancelHandler
{
  folderCopy = folder;
  destinationCopy = destination;
  controllerCopy = controller;
  handlerCopy = handler;
  cancelHandlerCopy = cancelHandler;
  if ([folderCopy count])
  {
    objc_opt_class();
    v16 = ICDynamicCast();
    objc_opt_class();
    v17 = ICDynamicCast();
    objc_opt_class();
    v18 = ICDynamicCast();
    isSharedViaICloud = [v17 isSharedViaICloud];
    v36 = v16;
    localizedName = [v16 localizedName];
    v21 = localizedName;
    v35 = v18;
    if (localizedName)
    {
      v22 = localizedName;
    }

    else
    {
      localizedTitle = [v17 localizedTitle];
      v24 = localizedTitle;
      if (localizedTitle)
      {
        title = localizedTitle;
      }

      else
      {
        title = [v18 title];
      }

      v22 = title;
    }

    v26 = [folderCopy count];
    if (isSharedViaICloud)
    {
      selfCopy = self;
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

      self = selfCopy;
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
    [self postAlertWithProceedAndCancelButtonsWithTitle:v27 message:v32 proceedTitle:v33 presentingViewController:controllerCopy proceedHandler:handlerCopy cancelHandler:cancelHandlerCopy];
  }
}

+ (void)postAlertForMovingSharedNotesToAnotherAccountWithPresentingViewController:(id)controller completionHandler:(id)handler
{
  handlerCopy = handler;
  controllerCopy = controller;
  v9 = __ICLocalizedFrameworkString_impl(@"Notes couldn’t be moved.", @"Notes couldn’t be moved.", 0, 1);
  v8 = __ICLocalizedFrameworkString_impl(@"Shared notes can’t be moved to a different account.", @"Shared notes can’t be moved to a different account.", 0, 1);
  [self postAlertWithOKButtonWithTitle:v9 message:v8 presentingViewController:controllerCopy completionHandler:handlerCopy];
}

+ (void)postAlertForMovingLockedNotesToOtherAccountIsCopy:(BOOL)copy presentingViewController:(id)controller completionHandler:(id)handler
{
  handlerCopy = handler;
  controllerCopy = controller;
  v12 = __ICLocalizedFrameworkString_impl(@"One or more notes are locked.", @"One or more notes are locked.", 0, 1);
  if (copy)
  {
    v10 = @"You must remove the lock from this note to copy it to a different account.";
  }

  else
  {
    v10 = @"You must remove the lock from this note to move it to a different account.";
  }

  v11 = __ICLocalizedFrameworkString_impl(v10, v10, 0, 1);
  [self postAlertWithOKButtonWithTitle:v12 message:v11 presentingViewController:controllerCopy completionHandler:handlerCopy];
}

+ (void)postAlertForFolderDepthLimitWithPresentingViewController:(id)controller completionHandler:(id)handler
{
  handlerCopy = handler;
  controllerCopy = controller;
  v11 = __ICLocalizedFrameworkString_impl(@"Can’t move folder", @"Can’t move folder", 0, 1);
  v8 = [MEMORY[0x1E69B7760] folderDepthLimit] + 1;
  v9 = __ICLocalizedFrameworkString_impl(@"FOLDER_DEPTH_LIMIT_MESSAGE_%lu", @"FOLDER_DEPTH_LIMIT_MESSAGE_%lu", 0, 1);
  v10 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v9, v8];
  [self postAlertWithOKButtonWithTitle:v11 message:v10 presentingViewController:controllerCopy completionHandler:handlerCopy];
}

+ (void)postAlertForUnsupportedAttachmentsInLegacyAccount:(id)account presentingViewController:(id)controller
{
  controllerCopy = controller;
  accountCopy = account;
  v9 = __ICLocalizedFrameworkString_impl(@"The folder couldn’t be added because one or more notes have attachments.", @"The folder couldn’t be added because one or more notes have attachments.", 0, 1);
  localizedAttachmentsNotSupportedReason = [accountCopy localizedAttachmentsNotSupportedReason];

  [self postAlertWithOKButtonWithTitle:v9 message:localizedAttachmentsNotSupportedReason presentingViewController:controllerCopy completionHandler:0];
}

+ (void)postAlertForMovingSmartFolderWithRestrictedFilterToLocalAccount:(id)account presentingViewController:(id)controller
{
  controllerCopy = controller;
  accountCopy = account;
  v12 = __ICLocalizedFrameworkString_impl(@"Can’t Move Folder", @"Can’t Move Folder", 0, 1);
  v8 = MEMORY[0x1E696AEC0];
  v9 = __ICLocalizedFrameworkString_impl(@"Smart Folders using Shared and Mentions filters can’t be moved to the “%@” account.", @"Smart Folders using Shared and Mentions filters can’t be moved to the “%@” account.", 0, 1);
  localizedName = [accountCopy localizedName];

  v11 = [v8 localizedStringWithFormat:v9, localizedName];

  [self postAlertWithOKButtonWithTitle:v12 message:v11 presentingViewController:controllerCopy completionHandler:0];
}

@end