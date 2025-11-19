@interface CKSMSComposeViewServiceController
+ (id)_exportedInterface;
- (BOOL)_hostSandboxAllowsFileReadAtFileURL:(id)a3 isResolved:(BOOL)a4;
- (CKSMSComposeViewServiceController)init;
- (CKSMSComposeViewServiceControllerDelegate)composeDelegate;
- (UIEdgeInsets)initialSafeAreaInsetsForChatController:(id)a3;
- (UIEdgeInsets)initialSystemMinimumLayoutMarginsForChatController:(id)a3;
- (id)_canonicalPathForFileURL:(id)a3;
- (id)recipientsFromChatGUID:(id)a3 groupName:(id)a4 handles:(id)a5;
- (void)_forceMMSIfNecessary;
- (void)_insertAttachmentWithURL:(id)a3 andDescription:(id)a4 preview:(id)a5 isFullyRealized:(BOOL)a6 appendedVideoURL:(id)a7 appendedBundleURL:(id)a8 completion:(id)a9;
- (void)_insertFileURL:(id)a3 filename:(id)a4 transcoderUserInfo:(id)a5 preview:(id)a6 isFullyRealized:(BOOL)a7 appendedVideoURL:(id)a8 completion:(id)a9;
- (void)_removeCloudKitShareIfNeeded:(id)a3;
- (void)_takeBackgroundTaskAssertionForMessageSend;
- (void)chatController:(id)a3 didFinishDismissAnimationForSendMenuViewController:(id)a4;
- (void)chatController:(id)a3 requestPresentSendMenu:(id)a4 withPresentationContext:(id)a5 completion:(id)a6;
- (void)chatController:(id)a3 willSendComposition:(id)a4 inConversation:(id)a5;
- (void)chatControllerDidChangeBackground:(id)a3;
- (void)composeChatController:(id)a3 didLoadEntryViewContentWithCompletion:(id)a4;
- (void)composeChatController:(id)a3 didSelectNewConversation:(id)a4;
- (void)composeChatController:(id)a3 shouldSendComposition:(id)a4 inConversation:(id)a5 completion:(id)a6;
- (void)composeChatControllerDidCancelComposition:(id)a3;
- (void)configureForDeviceValidation;
- (void)dealloc;
- (void)disableCameraAttachments;
- (void)donateInteractionWithConversation:(id)a3;
- (void)forceCancelComposition;
- (void)hideEntryViewContent:(BOOL)a3;
- (void)insertCKShareForCollaboration:(id)a3 containerSetupInfo:(id)a4 collaborationShareOptions:(id)a5 isCollaboration:(BOOL)a6 completionHandler:(id)a7;
- (void)insertData:(id)a3 MIMEType:(id)a4 exportedFilename:(id)a5;
- (void)insertFileURLForCollaboration:(id)a3 collaborationShareOptions:(id)a4 metadata:(id)a5 sendAsCopyURL:(id)a6 isCollaboration:(BOOL)a7 completionHandler:(id)a8;
- (void)insertFilename:(id)a3 MIMEType:(id)a4 exportedFilename:(id)a5 options:(id)a6;
- (void)insertGroupActivity:(id)a3;
- (void)insertRemoteItemForSending:(id)a3 extensionBundleIdentifier:(id)a4;
- (void)insertRemoteItemForSendingAndCalculateEntryViewFrame:(id)a3 completion:(id)a4;
- (void)insertSWYPendingCollaboration:(id)a3 collaborationShareOptions:(id)a4 collaborationMetadata:(id)a5 sendAsCopyURL:(id)a6 isCollaboration:(BOOL)a7 completionHandler:(id)a8;
- (void)setCanEditRecipients:(BOOL)a3;
- (void)setGameCenterModeWithPickerBlock:(id)a3;
- (void)setGameCenterPickedHandles:(id)a3 playerNames:(id)a4;
- (void)setNavBarTitle:(id)a3;
- (void)setPendingAddresses:(id)a3;
- (void)setServiceId:(id)a3;
- (void)setShouldDisableEntryField:(BOOL)a3;
- (void)setShouldIgnoreEmailsWhenSending:(BOOL)a3;
- (void)setSuggestions:(id)a3;
- (void)setText:(id)a3 subject:(id)a4 addresses:(id)a5 chatGUID:(id)a6 groupName:(id)a7;
- (void)setTextEntryContentsVisible:(BOOL)a3;
- (void)setUICustomizationData:(id)a3;
- (void)showInsertedItemInEntryView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CKSMSComposeViewServiceController

- (CKSMSComposeViewServiceController)init
{
  v7.receiver = self;
  v7.super_class = CKSMSComposeViewServiceController;
  v2 = [(CKSMSComposeViewServiceController *)&v7 init];
  if (v2)
  {
    CKResetCachedUserSettings();
    IMResetCachedUserSettings();
    IMResetCachedCarrierSettings();
    [(CKSMSComposeViewServiceController *)v2 setCanEditRecipients:1];
    if (sDidFirstTimeBringup == 1)
    {
      if (!CKIsRunningUnitTests())
      {
        v3 = dispatch_time(0, 0);
        dispatch_after(v3, MEMORY[0x1E69E96A0], &__block_literal_global_43);
      }
    }

    else
    {
      sDidFirstTimeBringup = 1;
    }

    v4 = +[CKUIBehavior sharedBehaviors];
    v5 = [objc_alloc(objc_msgSend(v4 "modalTranscriptControllerClass"))];

    [(CKSMSComposeViewServiceController *)v2 setModalTranscriptController:v5];
    [v5 setDelegate:v2];
  }

  return v2;
}

void __41__CKSMSComposeViewServiceController_init__block_invoke()
{
  v0 = [MEMORY[0x1E69A6160] sharedInstance];
  [v0 _forceSuspended];

  v1 = [MEMORY[0x1E69A6160] sharedInstance];
  [v1 _forceResumed];
}

- (void)dealloc
{
  v3 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  [v3 setDelegate:0];

  v4 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  [(CKSMSComposeViewServiceController *)self removeChildViewController:v4];

  [(CKSMSComposeViewServiceController *)self setModalTranscriptController:0];
  v5.receiver = self;
  v5.super_class = CKSMSComposeViewServiceController;
  [(CKSMSComposeViewServiceController *)&v5 dealloc];
}

- (void)insertFilename:(id)a3 MIMEType:(id)a4 exportedFilename:(id)a5 options:(id)a6
{
  v9 = MEMORY[0x1E695DFF8];
  v10 = a6;
  v11 = a5;
  v13 = [v9 fileURLWithPath:a3 isDirectory:0];
  v12 = CKTranscoderUserInfoForComposeOptions(v10);

  [(CKSMSComposeViewServiceController *)self insertFileURL:v13 filename:v11 transcoderUserInfo:v12];
}

- (void)insertData:(id)a3 MIMEType:(id)a4 exportedFilename:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  [v11 insertData:v10 MIMEType:v9 exportedFilename:v8];

  v12 = [(CKSMSComposeViewServiceController *)self _remoteViewControllerProxy];
  [v12 smsComposeControllerDataInserted];
}

- (void)_insertFileURL:(id)a3 filename:(id)a4 transcoderUserInfo:(id)a5 preview:(id)a6 isFullyRealized:(BOOL)a7 appendedVideoURL:(id)a8 completion:(id)a9
{
  v10 = a7;
  v32 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  if (v15)
  {
    v21 = [(CKSMSComposeViewServiceController *)self _canonicalPathForFileURL:v15];
    if (v21)
    {
      if ([(CKSMSComposeViewServiceController *)self _hostSandboxAllowsFileReadAtFileURL:v21 isResolved:1])
      {
        v22 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
        v23 = v22;
        if (v10)
        {
          v24 = v18;
        }

        else
        {
          v24 = 0;
        }

        if (v10)
        {
          v25 = 0;
        }

        else
        {
          v25 = v18;
        }

        [v22 insertFileURL:v21 filename:v16 fileIsResolved:1 transcoderUserInfo:v17 fullyRealizedPreview:v24 rawPreview:v25 appendedVideoURL:v19 completion:v20];

        v26 = [(CKSMSComposeViewServiceController *)self _remoteViewControllerProxy];
        [v26 smsComposeControllerDataInserted];

        if (IMOSLoggingEnabled())
        {
          v27 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "Insert file and ask for MMCS prewarm", buf, 2u);
          }
        }

        v28 = [MEMORY[0x1E69A5B80] sharedInstance];
        [v28 preWarmConnection];

        goto LABEL_23;
      }

      if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v29, OS_LOG_TYPE_INFO, "CKSMSComposeViewServiceController - Not attaching file, host app does not have file-read-data permissions!", buf, 2u);
        }

LABEL_22:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v31 = v15;
        _os_log_impl(&dword_19020E000, v29, OS_LOG_TYPE_INFO, "CKSMSComposeViewServiceController - Failed to get canonical path for fileURL %@", buf, 0xCu);
      }

      goto LABEL_22;
    }

LABEL_23:
  }
}

- (void)showInsertedItemInEntryView
{
  v3 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  [v3 hideEntryViewContent:0];

  v4 = [(CKSMSComposeViewServiceController *)self _remoteViewControllerProxy];
  [v4 smsComposeControllerEntryViewContentInserted];
}

- (id)_canonicalPathForFileURL:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 startAccessingSecurityScopedResource];
  v14 = 0;
  v5 = *MEMORY[0x1E695DA88];
  v13 = 0;
  v6 = [v3 getResourceValue:&v14 forKey:v5 error:&v13];
  v7 = v14;
  v8 = v13;
  if (v6)
  {
    v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7];
    if (!v4)
    {
      goto LABEL_11;
    }

    v10 = MEMORY[0x193AF6620](v3);
    if (v10)
    {
      MEMORY[0x193AF6610](v9, v10);
      CFRelease(v10);
    }

    goto LABEL_10;
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v16 = v3;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Failed to get canonical path from URL %@ with error %@", buf, 0x16u);
    }
  }

  v9 = 0;
  if (v4)
  {
LABEL_10:
    [v3 stopAccessingSecurityScopedResource];
  }

LABEL_11:

  return v9;
}

- (BOOL)_hostSandboxAllowsFileReadAtFileURL:(id)a3 isResolved:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  [(CKSMSComposeViewServiceController *)self _hostAuditToken];
  propertyValueTypeRefPtr = 0;
  if (!CFURLCopyResourcePropertyForKey(v6, *MEMORY[0x1E695EB60], &propertyValueTypeRefPtr, 0))
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_14;
    }

    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v6;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "CKSMSComposeViewServiceController - Error getting readable property for file url %@", buf, 0xCu);
    }

LABEL_13:

    goto LABEL_14;
  }

  if (!propertyValueTypeRefPtr)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_14;
    }

    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v6;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "CKSMSComposeViewServiceController - Unable to read file at URL %@", buf, 0xCu);
    }

    goto LABEL_13;
  }

  if (!CFBooleanGetValue(propertyValueTypeRefPtr))
  {
LABEL_14:
    LOBYTE(v8) = 0;
    goto LABEL_15;
  }

  v7 = v6;
  if (v4)
  {
    [(__CFURL *)v6 fileSystemRepresentation];
    *buf = v13;
    v16 = v14;
    LOBYTE(v8) = sandbox_check_by_audit_token() == 0;
  }

  else
  {
    v11 = realpath_DARWIN_EXTSN([(__CFURL *)v6 fileSystemRepresentation], 0);
    *buf = v13;
    v16 = v14;
    v8 = sandbox_check_by_audit_token() == 0;
    free(v11);
  }

LABEL_15:

  return v8;
}

- (void)_insertAttachmentWithURL:(id)a3 andDescription:(id)a4 preview:(id)a5 isFullyRealized:(BOOL)a6 appendedVideoURL:(id)a7 appendedBundleURL:(id)a8 completion:(id)a9
{
  v10 = a6;
  v28[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a9;
  if (v14)
  {
    v26 = v10;
    v19 = v14;
    v20 = [v19 scheme];
    v21 = [v20 isEqualToString:@"assets-library"];

    if (v21)
    {
      v27 = *MEMORY[0x1E69A6F58];
      v22 = [v19 absoluteString];
      v28[0] = v22;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];

      if (_insertAttachmentWithURL_andDescription_preview_isFullyRealized_appendedVideoURL_appendedBundleURL_completion___pred_PUTCreatePathForPersistentURLPhotoLibraryServicesCore != -1)
      {
        [CKSMSComposeViewServiceController _insertAttachmentWithURL:andDescription:preview:isFullyRealized:appendedVideoURL:appendedBundleURL:completion:];
      }

      isFullyRealized_appendedVideoURL_appendedBundleURL_completion___PUTCreatePathForPersistentURL = _insertAttachmentWithURL_andDescription_preview_isFullyRealized_appendedVideoURL_appendedBundleURL_completion___PUTCreatePathForPersistentURL(v19, 0);
      v25 = [MEMORY[0x1E695DFF8] fileURLWithPath:isFullyRealized_appendedVideoURL_appendedBundleURL_completion___PUTCreatePathForPersistentURL isDirectory:0];

      v19 = v25;
    }

    else
    {
      v23 = 0;
    }

    [(CKSMSComposeViewServiceController *)self _insertFileURL:v19 filename:v15 transcoderUserInfo:v23 preview:v16 isFullyRealized:v26 appendedVideoURL:v17 completion:v18];
  }
}

void *__147__CKSMSComposeViewServiceController__insertAttachmentWithURL_andDescription_preview_isFullyRealized_appendedVideoURL_appendedBundleURL_completion___block_invoke()
{
  result = MEMORY[0x193AF5ED0]("PUTCreatePathForPersistentURL", @"PhotoLibraryServicesCore");
  _insertAttachmentWithURL_andDescription_preview_isFullyRealized_appendedVideoURL_appendedBundleURL_completion___PUTCreatePathForPersistentURL = result;
  return result;
}

- (void)insertRemoteItemForSendingAndCalculateEntryViewFrame:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(CKSMSComposeViewServiceController *)self setEntryViewCompletion:v6];
  v13 = [v7 attachmentURL];
  v8 = [v7 attachmentDescription];
  v9 = [v7 previewUIImage];
  v10 = [v7 previewIsFullyRealizedByChatKit];
  v11 = [v7 appendedVideoURL];
  v12 = [v7 appendedBundleURL];

  [(CKSMSComposeViewServiceController *)self _insertAttachmentWithURL:v13 andDescription:v8 preview:v9 isFullyRealized:v10 appendedVideoURL:v11 appendedBundleURL:v12 completion:v6];
}

- (void)composeChatController:(id)a3 didLoadEntryViewContentWithCompletion:(id)a4
{
  v5 = [(CKSMSComposeViewServiceController *)self entryViewCompletion:a3];

  if (v5)
  {
    [(CKSMSComposeViewServiceController *)self hideEntryViewContent:1];
    v6 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
    v7 = [v6 entryView];
    v8 = [v7 contentView];
    [v8 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v17 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
    v18 = [v17 entryView];
    v19 = [v18 contentView];
    v20 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
    v21 = [v20 view];
    [v19 convertRect:v21 toView:{v10, v12, v14, v16}];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v31 = [(CKSMSComposeViewServiceController *)self entryViewCompletion];
    v30 = [MEMORY[0x1E696B098] valueWithRect:{v23, v25, v27, v29}];
    v31[2](v31, v30);
  }
}

- (void)hideEntryViewContent:(BOOL)a3
{
  v3 = a3;
  v4 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  [v4 hideEntryViewContent:v3];
}

- (void)insertRemoteItemForSending:(id)a3 extensionBundleIdentifier:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 previewImage])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v31 = v6;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "itemForSending %@", buf, 0xCu);
      }
    }

    v9 = [v6 attachmentURL];
    if (v9)
    {
      v10 = [v6 attachmentURL];
      v11 = [v6 attachmentDescription];
      v12 = [v6 previewUIImage];
      v13 = [v6 previewIsFullyRealizedByChatKit];
      v14 = [v6 appendedVideoURL];
      v15 = [v6 appendedBundleURL];
      [(CKSMSComposeViewServiceController *)self _insertAttachmentWithURL:v10 andDescription:v11 preview:v12 isFullyRealized:v13 appendedVideoURL:v14 appendedBundleURL:v15 completion:0];
    }
  }

  else
  {
    v16 = [v6 appendedRichLinkURL];

    if (v16)
    {
      v17 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
      v18 = [v6 appendedRichLinkURL];
      v19 = [v6 appendedRichLinkData];
      [v17 insertRichLinkWithURL:v18 data:v19];

      v20 = [(CKSMSComposeViewServiceController *)self _remoteViewControllerProxy];
      [v20 smsComposeControllerDataInserted];
    }

    else
    {
      v21 = [v6 appendedMessage];

      if (v21)
      {
        v22 = MEMORY[0x1E6963618];
        v23 = [(CKSMSComposeViewServiceController *)self _hostApplicationBundleIdentifier];
        v24 = [v22 bundleProxyForIdentifier:v23];

        v25 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
        v26 = [v6 appendedMessage];
        [v25 insertMessage:v26 bundleProxy:v24 extensionBundleIdentifier:v7];

        v27 = [(CKSMSComposeViewServiceController *)self _remoteViewControllerProxy];
        [v27 smsComposeControllerDataInserted];
      }

      else
      {
        v24 = [v6 attachmentURL];
        v28 = [v6 attachmentDescription];
        v29 = [v6 appendedVideoURL];
        [(CKSMSComposeViewServiceController *)self insertAttachmentWithURL:v24 andDescription:v28 appendedVideoURL:v29];
      }
    }
  }
}

- (void)forceCancelComposition
{
  v3 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  [(CKSMSComposeViewServiceController *)self composeChatControllerDidCancelComposition:v3];
}

- (void)setUICustomizationData:(id)a3
{
  v4 = a3;
  v6 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  v5 = [v6 navigationController];
  [v5 mf_setDataForUICustomization:v4];
}

- (void)setServiceId:(id)a3
{
  objc_storeStrong(&self->_serviceId, a3);
  v5 = a3;
  v6 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  [v6 setServiceId:v5];
}

- (void)setSuggestions:(id)a3
{
  objc_storeStrong(&self->_suggestions, a3);
  v5 = a3;
  v6 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  [v6 setSuggestedRepliesData:v5];
}

- (void)_forceMMSIfNecessary
{
  if (self->_forceMMS)
  {
    v3 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
    [v3 setForceMMS:1];
  }
}

- (void)setGameCenterModeWithPickerBlock:(id)a3
{
  v4 = a3;
  [(CKSMSComposeViewServiceController *)self setGameCenterPickerBlock:v4];
  v6 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  v5 = [v6 composeRecipientSelectionController];
  [v5 setGameCenterPickerBlock:v4];
}

- (void)setGameCenterPickedHandles:(id)a3 playerNames:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  v9 = [v8 composeRecipientSelectionController];
  [v9 setGameCenterPickedHandles:v7 playerNames:v6];

  [(CKSMSComposeViewServiceController *)self becomeFirstResponder];
}

- (void)setText:(id)a3 subject:(id)a4 addresses:(id)a5 chatGUID:(id)a6 groupName:(id)a7
{
  v77[1] = *MEMORY[0x1E69E9840];
  v60 = a3;
  v59 = a4;
  v62 = a5;
  v61 = a6;
  v56 = a7;
  v63 = self;
  v12 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  v13 = [v12 composition];

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v62 componentsJoinedByString:{@", "}];
      *buf = 138412546;
      *&buf[4] = v15;
      *&buf[12] = 2112;
      *&buf[14] = v61;
      _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "setText and subject with addresses: %@ for chatGUID: %@", buf, 0x16u);
    }
  }

  v16 = [(CKSMSComposeViewServiceController *)self serviceId];
  if (v16)
  {
    v17 = [v62 count] == 1;

    if (v17)
    {
      v18 = [(CKSMSComposeViewServiceController *)self serviceId];
      v77[0] = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:1];

      v62 = v19;
    }
  }

  v20 = [v60 length];
  v21 = v20;
  if (v13)
  {
    if (v20)
    {
      v22 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v60];
    }

    else
    {
      v22 = 0;
    }

    v26 = [v13 compositionByAppendingText:v22];

    if (v21)
    {
    }

    v58 = [CKComposition alloc];
    v64 = [v26 text];
    v27 = [v59 length];
    if (v27)
    {
      v55 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v59];
    }

    else
    {
      v55 = 0;
    }

    v28 = [&stru_1F04268F8 length];
    if (v28)
    {
      v29 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F04268F8];
    }

    else
    {
      v29 = 0;
    }

    v30 = v28 == 0;
    v31 = [v26 shelfPluginPayload];
    v32 = [v26 bizIntent];
    v33 = [v26 shelfMediaObject];
    v34 = [v26 collaborationShareOptions];
    v35 = [v26 proofreadingInfo];
    v57 = [(CKComposition *)v58 initWithText:v64 subject:v55 translation:v29 shelfPluginPayload:v31 bizIntent:v32 shelfMediaObject:v33 collaborationShareOptions:v34 proofreadingInfo:v35];

    if (!v30)
    {
    }

    if (v27)
    {
    }

    [(CKComposition *)v57 setShouldHideClearPluginButton:v63->_shouldHideClearPluginButton];
    v21 = [(CKSMSComposeViewServiceController *)v63 modalTranscriptController];
    [v21 setInitialComposition:0];
  }

  else
  {
    if (v20)
    {
      v21 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v60];
    }

    v23 = [v21 ck_attributedStringByPostProcessingURLTextForRichLinks];
    v24 = [CKComposition alloc];
    if ([v59 length])
    {
      v25 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v59];
      v57 = [(CKComposition *)v24 initWithText:v23 subject:v25];
    }

    else
    {
      v57 = [(CKComposition *)v24 initWithText:v23 subject:0];
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v74 = __Block_byref_object_copy__13;
  v75 = __Block_byref_object_dispose__13;
  v76 = [(CKSMSComposeViewServiceController *)v63 recipientsFromChatGUID:v61 groupName:v56 handles:v62];
  if (![*(*&buf[8] + 40) count] && IMOSLoggingEnabled())
  {
    v36 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *v71 = 0;
      _os_log_impl(&dword_19020E000, v36, OS_LOG_TYPE_INFO, "recipientsFromChatGUID returned zero recipients", v71, 2u);
    }
  }

  v37 = [v62 count];
  if (v61 || v37)
  {
    if (v61)
    {
      if (IMOSLoggingEnabled())
      {
        v39 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          *v71 = 138412290;
          v72 = v61;
          _os_log_impl(&dword_19020E000, v39, OS_LOG_TYPE_INFO, "Getting recipients for chatGUID: %@", v71, 0xCu);
        }
      }

      v40 = [(CKSMSComposeViewServiceController *)v63 recipientsFromChatGUID:v61 groupName:v56 handles:0];
      v41 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v40;
    }
  }

  else
  {
    shareSheetSessionID = v63->_shareSheetSessionID;
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __82__CKSMSComposeViewServiceController_setText_subject_addresses_chatGUID_groupName___block_invoke;
    v69[3] = &unk_1E72EED60;
    v69[4] = v63;
    v69[5] = buf;
    [MEMORY[0x1E69CDA60] requestMessagesRecipientInfoForSessionID:shareSheetSessionID completionHandler:v69];
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v42 = *(*&buf[8] + 40);
  v43 = [v42 countByEnumeratingWithState:&v65 objects:v70 count:16];
  if (v43)
  {
    v44 = *v66;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v66 != v44)
        {
          objc_enumerationMutation(v42);
        }

        v46 = *(*(&v65 + 1) + 8 * i);
        v47 = [v46 address];
        v48 = v47 == 0;

        if (v48 && IMOSLoggingEnabled())
        {
          v49 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            *v71 = 138412290;
            v72 = v46;
            _os_log_impl(&dword_19020E000, v49, OS_LOG_TYPE_INFO, "found nil address in new recipient %@, this will set atom state to pending...", v71, 0xCu);
          }
        }
      }

      v43 = [v42 countByEnumeratingWithState:&v65 objects:v70 count:16];
    }

    while (v43);
  }

  if (IMOSLoggingEnabled())
  {
    v50 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      v51 = [*(*&buf[8] + 40) count];
      *v71 = 134217984;
      v72 = v51;
      _os_log_impl(&dword_19020E000, v50, OS_LOG_TYPE_INFO, "prepopulating %ld new recipients and new composition", v71, 0xCu);
    }
  }

  v52 = [(CKSMSComposeViewServiceController *)v63 modalTranscriptController];
  [v52 setPrepopulatedRecipients:*(*&buf[8] + 40)];

  v53 = [(CKSMSComposeViewServiceController *)v63 modalTranscriptController];
  [v53 setPrepopulatedComposition:v57];

  v54 = [(CKSMSComposeViewServiceController *)v63 _remoteViewControllerProxy];
  [v54 smsComposeControllerDataInserted];

  _Block_object_dispose(buf, 8);
}

void __82__CKSMSComposeViewServiceController_setText_subject_addresses_chatGUID_groupName___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) recipientsFromChatGUID:v7 groupName:v8 handles:v9];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [*(*(*(a1 + 40) + 8) + 40) count];
      v15 = [v9 componentsJoinedByString:{@", "}];
      v16 = 134218498;
      v17 = v14;
      v18 = 2112;
      v19 = v7;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "callback from [_UIActivityRecipientManager requestMessagesRecipientInfoForSessionID] created %ld newRecipients from chatGUID: %@, handles: %@", &v16, 0x20u);
    }
  }
}

- (id)recipientsFromChatGUID:(id)a3 groupName:(id)a4 handles:(id)a5
{
  v63 = *MEMORY[0x1E69E9840];
  v48 = a3;
  v46 = a4;
  v47 = a5;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v47 componentsJoinedByString:{@", "}];
      *buf = 138412546;
      v60 = v48;
      v61 = 2112;
      v62 = v8;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Getting CNComposeRecipient recipients from chatGUID: %@ handles: %@", buf, 0x16u);
    }
  }

  if (v48)
  {
    v9 = [MEMORY[0x1E69A5AF8] sharedRegistry];
    v10 = [v9 existingChatWithGUID:v48];
  }

  else
  {
    v10 = 0;
  }

  if (v46 && !v10)
  {
    v11 = [MEMORY[0x1E69A5AF8] sharedRegistry];
    v10 = [v11 existingChatWithDisplayName:v46];
  }

  if (!v10)
  {
    goto LABEL_36;
  }

  v12 = v10;
  if ([v10 joinState] != 3 && objc_msgSend(v10, "joinState") != 2)
  {
    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v60 = v10;
        _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_INFO, "Tried to send to a chat we're no longer a part of %@", buf, 0xCu);
      }
    }

    goto LABEL_36;
  }

  v13 = +[CKConversationList sharedConversationList];
  v44 = [v13 conversationForExistingChat:v10];

  v14 = MEMORY[0x1E695DF70];
  v15 = [CKIMGroupComposeRecipient composeRecipientWithConversation:v44 searchTerm:0 matchingRecipient:0];
  v16 = [v14 arrayWithObject:v15];

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [v16 count];
      v19 = [v47 count];
      *buf = 134218240;
      v60 = v18;
      v61 = 2048;
      v62 = v19;
      _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "%ld Recipients of %ld handles populated via [CKIMGroupComposeRecipient composeRecipientWithConversation]", buf, 0x16u);
    }
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v20 = v16;
  v21 = [v20 countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v21)
  {
    v22 = *v54;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v54 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v53 + 1) + 8 * i);
        v25 = [v24 address];
        v26 = v25 == 0;

        if (v26 && IMOSLoggingEnabled())
        {
          v27 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v60 = v24;
            _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "Recipient (from [CKIMGroupComposeRecipient composeRecipientWithConversation]) %@ has nil address, this will set atom state to pending...", buf, 0xCu);
          }
        }
      }

      v21 = [v20 countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v21);
  }

  v10 = v12;
  if (!v20)
  {
LABEL_36:
    v45 = v10;
    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v29, OS_LOG_TYPE_INFO, "Attempting to populate via recipients via [sRecipientGenerator recipientWithAddress]", buf, 2u);
      }
    }

    v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v47, "count")}];
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v30 = v47;
    v31 = [v30 countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v31)
    {
      v32 = *v50;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v50 != v32)
          {
            objc_enumerationMutation(v30);
          }

          v34 = *(*(&v49 + 1) + 8 * j);
          if (CKIsValidAddress(v34))
          {
            v35 = +[CKRecipientGenerator sharedRecipientGenerator];
            v36 = [v35 recipientWithAddress:v34];

            if (v36)
            {
              v37 = [v36 address];
              v38 = v37 == 0;

              if (v38 && IMOSLoggingEnabled())
              {
                v39 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v60 = v36;
                  _os_log_impl(&dword_19020E000, v39, OS_LOG_TYPE_INFO, "Recipient (from [sRecipientGenerator recipientWithAddress]) %@ has nil address, this will set atom state to pending...", buf, 0xCu);
                }
              }

              [v20 addObject:v36];
            }
          }
        }

        v31 = [v30 countByEnumeratingWithState:&v49 objects:v57 count:16];
      }

      while (v31);
    }

    if (IMOSLoggingEnabled())
    {
      v40 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = [v20 count];
        v42 = [v30 count];
        *buf = 134218240;
        v60 = v41;
        v61 = 2048;
        v62 = v42;
        _os_log_impl(&dword_19020E000, v40, OS_LOG_TYPE_INFO, "%ld Recipients of %ld handles populated via [sRecipientGenerator recipientWithAddress]", buf, 0x16u);
      }
    }

    v10 = v45;
  }

  return v20;
}

- (void)setPendingAddresses:(id)a3
{
  v4 = a3;
  v5 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  [v5 setPendingAddresses:v4];
}

- (void)configureForDeviceValidation
{
  memset(v3, 0, sizeof(v3));
  [(CKSMSComposeViewServiceController *)self _hostAuditToken];
  if (MEMORY[0x193AF6320](v3, @"com.apple.developer.upi-device-validation"))
  {
    self->_isDoingUPIDeviceValidation = 1;
    [(CKSMSComposeViewServiceController *)self setCanEditRecipients:0];
    [(CKSMSComposeViewServiceController *)self setShouldDisableEntryField:1];
  }

  else
  {
    NSLog(&cfstr_ProtectedApiIn.isa, [(CKSMSComposeViewServiceController *)self _hostProcessIdentifier]);
  }
}

- (void)setCanEditRecipients:(BOOL)a3
{
  v3 = a3;
  if (CKIsScreenLocked())
  {
    self->_canEditRecipients = 0;
  }

  else if (self->_canEditRecipients != v3)
  {
    self->_canEditRecipients = v3;
    v5 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
    [v5 setCanEditRecipients:v3];
  }
}

- (void)setShouldIgnoreEmailsWhenSending:(BOOL)a3
{
  v3 = a3;
  v4 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  [v4 setIgnoreEmailsWhenSending:v3];
}

- (void)insertFileURLForCollaboration:(id)a3 collaborationShareOptions:(id)a4 metadata:(id)a5 sendAsCopyURL:(id)a6 isCollaboration:(BOOL)a7 completionHandler:(id)a8
{
  v8 = a7;
  v14 = a8;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  [v19 insertFileURLForCollaboration:v18 collaborationShareOptions:v17 metadata:v16 sendAsCopyURL:v15 isCollaboration:v8 completionHandler:v14];
}

- (void)insertSWYPendingCollaboration:(id)a3 collaborationShareOptions:(id)a4 collaborationMetadata:(id)a5 sendAsCopyURL:(id)a6 isCollaboration:(BOOL)a7 completionHandler:(id)a8
{
  v8 = a7;
  v14 = a8;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  [v19 insertSWYPendingCollaboration:v18 collaborationShareOptions:v17 collaborationMetadata:v16 sendAsCopyURL:v15 isCollaboration:v8 completionHandler:v14];
}

- (void)insertCKShareForCollaboration:(id)a3 containerSetupInfo:(id)a4 collaborationShareOptions:(id)a5 isCollaboration:(BOOL)a6 completionHandler:(id)a7
{
  v8 = a6;
  v24 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = @"NO";
      *v19 = 138413058;
      *&v19[4] = v12;
      if (v8)
      {
        v17 = @"YES";
      }

      *&v19[12] = 2112;
      *&v19[14] = v13;
      v20 = 2112;
      v21 = v14;
      v22 = 2112;
      v23 = v17;
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Invoking insertCKShareForCollaboration with ckShare:%@, containerSetupInfo:%@, shareOptions:%@, isCollaboration: %@", v19, 0x2Au);
    }
  }

  v18 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  [v18 insertCKShareForCollaboration:v12 containerSetupInfo:v13 collaborationShareOptions:v14 isCollaboration:v8 completionHandler:v15];
}

- (void)insertGroupActivity:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "insertGroupActivity called %@", &v7, 0xCu);
    }
  }

  v6 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  [v6 insertGroupActivity:v4];
}

- (void)setShouldDisableEntryField:(BOOL)a3
{
  if (self->_shouldDisableEntryField != a3)
  {
    v4 = a3;
    self->_shouldDisableEntryField = a3;
    v5 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
    [v5 setShouldDisableEntryField:v4];
  }
}

- (void)setNavBarTitle:(id)a3
{
  v4 = a3;
  v5 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  [v5 setOverrideTitle:v4];
}

- (void)disableCameraAttachments
{
  v2 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  [v2 disableCameraAttachments];
}

- (void)setTextEntryContentsVisible:(BOOL)a3
{
  v3 = a3;
  v4 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  [v4 setTextEntryContentsVisible:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = CKSMSComposeViewServiceController;
  [(CKSMSComposeViewServiceController *)&v10 viewWillAppear:a3];
  [CKApplicationState setMainWindowForegroundActive:1];
  v4 = [(CKSMSComposeViewServiceController *)self viewControllers];
  v5 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  v6 = [v4 containsObject:v5];

  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "CKSMSComposeViewServiceController - viewWillAppear called after modalTranscriptController is pushed!", v9, 2u);
      }
    }
  }

  else
  {
    v8 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
    [(CKSMSComposeViewServiceController *)self pushViewController:v8 animated:0];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  if (self->_forceMMS)
  {
    v5 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
    v6 = [v5 composeRecipientSelectionController];
    [v6 setForceMMS:1];
  }

  gameCenterPickerBlock = self->_gameCenterPickerBlock;
  if (gameCenterPickerBlock)
  {
    v8 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
    v9 = [v8 composeRecipientSelectionController];
    [v9 setGameCenterPickerBlock:gameCenterPickerBlock];
  }

  v10 = [MEMORY[0x1E69A6160] sharedInstance];
  [v10 _forceResumed];

  v11 = [(CKSMSComposeViewServiceController *)self _remoteViewControllerProxy];
  [v11 smsComposeControllerAppeared];

  v13.receiver = self;
  v13.super_class = CKSMSComposeViewServiceController;
  [(CKSMSComposeViewServiceController *)&v13 viewDidAppear:v3];
  v12 = +[CKImageAnimationTimer sharedTimer];
  [v12 setShouldStopWhenBackgrounded:0];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CKSMSComposeViewServiceController;
  [(CKSMSComposeViewServiceController *)&v4 viewDidDisappear:a3];
  [CKApplicationState setMainWindowForegroundActive:0];
  v3 = +[CKImageAnimationTimer sharedTimer];
  [v3 setShouldStopWhenBackgrounded:1];
}

- (void)composeChatController:(id)a3 shouldSendComposition:(id)a4 inConversation:(id)a5 completion:(id)a6
{
  v35 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a6;
  v11 = [a5 recipientStrings];
  v12 = v11;
  if (self->_gameCenterPickerBlock)
  {
    v28 = v9;
    v13 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
    v14 = [v13 composeRecipientSelectionController];

    v15 = [v14 recipients];
    v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v15, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v31;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v30 + 1) + 8 * i);
          if ([v14 isGameCenterRecipient:v22])
          {
            v23 = [v22 normalizedAddress];
            [v16 addObject:v23];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v19);
    }

    if (![v16 count] || (v24 = objc_msgSend(v17, "count"), v24 > objc_msgSend(v12, "count")))
    {
      [v16 addObjectsFromArray:v12];
    }

    v9 = v28;
  }

  else
  {
    v16 = v11;
  }

  v25 = [v9 text];
  v26 = [v25 string];

  if (CKIsRunningUnitTests() || (memset(v29, 0, sizeof(v29)), [(CKSMSComposeViewServiceController *)self _hostAuditToken], !MEMORY[0x193AF6320](v29, @"com.apple.private.mobilesms.messages-recipient-vetting")))
  {
    v10[2](v10, 1);
  }

  else
  {
    v27 = [(CKSMSComposeViewServiceController *)self _remoteViewControllerProxy];
    [v27 smsComposeControllerShouldSendMessageWithText:v26 toRecipients:v16 completion:v10];
  }
}

- (void)chatController:(id)a3 willSendComposition:(id)a4 inConversation:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v25 = a3;
  v8 = a4;
  v9 = a5;
  if ([(CKSMSComposeViewServiceController *)self supportsMessageInspection])
  {
    v10 = [v8 text];
    v11 = [v10 string];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  v13 = [(CKSMSComposeViewServiceController *)self _hostApplicationBundleIdentifier];
  [v12 setShareSheetHostBundleIdentifier:v13];

  [(CKSMSComposeViewServiceController *)self donateInteractionWithConversation:v9];
  if (self->_isDoingUPIDeviceValidation)
  {
    v14 = [MEMORY[0x1E696AEC0] stringGUID];
    [v8 setFirstMessageGUIDOverride:v14];
    v15 = [MEMORY[0x1E69A7F68] sharedInstance];
    v16 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
    v17 = [v16 composeRecipientSelectionController];
    v18 = [v17 selectedSubscriptionContext];

    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v24 = [(CKSMSComposeViewServiceController *)self _hostApplicationBundleIdentifier];
        v20 = [v18 phoneNumber];
        v21 = [v18 labelID];
        *buf = 138412802;
        v27 = v24;
        v28 = 2112;
        v29 = v20;
        v30 = 2112;
        v31 = v21;
        _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "Using CoreTelephony helper to generate token for UPI using bundle ID: %@, handle: %@, labelID: %@", buf, 0x20u);
      }
    }

    v22 = [(CKSMSComposeViewServiceController *)self _hostApplicationBundleIdentifier];
    [v15 generateTokenForUPIWithHostBundleID:v22 subscriptionContext:v18];
  }

  else
  {
    v14 = 0;
  }

  [(CKSMSComposeViewServiceController *)self _takeBackgroundTaskAssertionForMessageSend];
  v23 = [(CKSMSComposeViewServiceController *)self _remoteViewControllerProxy];
  [v23 smsComposeControllerSendStartedWithText:v11 messageGUID:v14];
}

- (void)_takeBackgroundTaskAssertionForMessageSend
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = *MEMORY[0x1E69DDBE8];
  v2 = v12;
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__CKSMSComposeViewServiceController__takeBackgroundTaskAssertionForMessageSend__block_invoke;
  v8[3] = &unk_1E72EB968;
  v8[4] = &v9;
  v4 = [v3 beginBackgroundTaskWithName:@"messages-view-service-message-send" expirationHandler:v8];
  v10[3] = v4;

  if (v10[3] == v2)
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CKSMSComposeViewServiceController *)v5 _takeBackgroundTaskAssertionForMessageSend];
    }
  }

  v6 = dispatch_time(0, 5000000000);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__CKSMSComposeViewServiceController__takeBackgroundTaskAssertionForMessageSend__block_invoke_364;
  v7[3] = &unk_1E72EB968;
  v7[4] = &v9;
  dispatch_after(v6, MEMORY[0x1E69E96A0], v7);
  _Block_object_dispose(&v9, 8);
}

void __79__CKSMSComposeViewServiceController__takeBackgroundTaskAssertionForMessageSend__block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __79__CKSMSComposeViewServiceController__takeBackgroundTaskAssertionForMessageSend__block_invoke_cold_1(v3);
    }

    v4 = [MEMORY[0x1E69DC668] sharedApplication];
    [v4 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = v1;
  }
}

void __79__CKSMSComposeViewServiceController__takeBackgroundTaskAssertionForMessageSend__block_invoke_364(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_DEFAULT, "Ending messages-view-service-message-send background task due to timer completion.", v5, 2u);
    }

    v4 = [MEMORY[0x1E69DC668] sharedApplication];
    [v4 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = v1;
  }
}

- (UIEdgeInsets)initialSystemMinimumLayoutMarginsForChatController:(id)a3
{
  v3 = *MEMORY[0x1E69DDCE0];
  v4 = *(MEMORY[0x1E69DDCE0] + 8);
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  v6 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (UIEdgeInsets)initialSafeAreaInsetsForChatController:(id)a3
{
  v3 = *MEMORY[0x1E69DDCE0];
  v4 = *(MEMORY[0x1E69DDCE0] + 8);
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  v6 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)chatControllerDidChangeBackground:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Did change background on chat controller: %@", &v13, 0xCu);
  }

  v6 = [v4 transcriptBackground];
  v7 = [(CKSMSComposeViewServiceController *)self viewIfLoaded];
  v8 = [v7 window];

  v9 = [v8 windowScene];
  [v8 setOverrideUserInterfaceStyle:{objc_msgSend(v6, "contentDerivedUserInterfaceStyle")}];
  v10 = [v9 traitOverrides];
  if (v6)
  {
    [v10 setNSIntegerValue:objc_msgSend(MEMORY[0x1E695E118] forTrait:{"integerValue"), objc_opt_class()}];

    v11 = [v9 traitOverrides];
    [v6 luminance];
    [v11 setCGFloatValue:objc_opt_class() forTrait:v12];
  }

  else
  {
    [v10 removeTrait:objc_opt_class()];

    v11 = [v9 traitOverrides];
    [v11 removeTrait:objc_opt_class()];
  }
}

- (void)chatController:(id)a3 requestPresentSendMenu:(id)a4 withPresentationContext:(id)a5 completion:(id)a6
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a2 object:self file:@"CKSMSComposeViewServiceController.m" lineNumber:855 description:@"not implemented"];
}

- (void)chatController:(id)a3 didFinishDismissAnimationForSendMenuViewController:(id)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"CKSMSComposeViewServiceController.m" lineNumber:860 description:@"not implemented"];
}

- (void)composeChatControllerDidCancelComposition:(id)a3
{
  v4 = [a3 composition];
  v5 = [v4 shelfPluginPayload];
  [(CKSMSComposeViewServiceController *)self _removeCloudKitShareIfNeeded:v5];

  v6 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  [v6 setComposition:0];

  v7 = [(CKSMSComposeViewServiceController *)self _remoteViewControllerProxy];
  [v7 smsComposeControllerCancelled];
}

- (void)_removeCloudKitShareIfNeeded:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 payloadCollaborationType] == 2)
    {
      v5 = [v4 cloudKitShare];
      v6 = [v5 isCloudKitShareRemovable];

      if (v6)
      {
        v7 = MEMORY[0x193AF5EC0](@"CSCloudSharing", @"CloudSharing");
        v8 = [v4 cloudKitShare];
        v9 = [v4 containerSetupInfo];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __66__CKSMSComposeViewServiceController__removeCloudKitShareIfNeeded___block_invoke;
        v10[3] = &unk_1E72EC088;
        v11 = v4;
        [v7 removeFromShare:v8 containerSetupInfo:v9 completionHandler:v10];
      }
    }
  }
}

void __66__CKSMSComposeViewServiceController__removeCloudKitShareIfNeeded___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = IMOSLoggingEnabled();
  if (v4)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [*(a1 + 32) cloudKitShare];
        v10 = 138412546;
        v11 = v7;
        v12 = 2112;
        v13 = v4;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Error while removing the CloudKt share: %@, Error: %@", &v10, 0x16u);
      }

LABEL_9:
    }
  }

  else if (v5)
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) url];
      v9 = [*(a1 + 32) containerSetupInfo];
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Successfully removed CloudKit share with URL: %@, containerSetupInfo: %@ ", &v10, 0x16u);
    }

    goto LABEL_9;
  }
}

- (void)composeChatController:(id)a3 didSelectNewConversation:(id)a4
{
  v15 = a4;
  v4 = +[CKConversationList sharedConversationList];
  [v4 setPendingConversation:v15];

  if (!CKIsRunningInMessagesViewService() || !CKIsScreenLocked())
  {
    v5 = [v15 chat];

    if (v5)
    {
      if (CKIsRunningInMessagesViewService() && ([MEMORY[0x1E695E000] standardUserDefaults], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "BOOLForKey:", @"ShouldDisableShareSheetHistoryLoad"), v6, (v7 & 1) != 0))
      {
        v8 = 0;
        v9 = v15;
      }

      else
      {
        v10 = [v15 limitToLoad];
        v11 = +[CKUIBehavior sharedBehaviors];
        v12 = [v11 defaultConversationViewingMessageCount];

        if (v12 >= v10)
        {
          v12 = v10;
        }

        v13 = +[CKUIBehavior sharedBehaviors];
        v14 = [v13 initialConversationViewingMessageCount];

        v9 = v15;
        if (v12 <= v14)
        {
          v8 = v14;
        }

        else
        {
          v8 = v12;
        }
      }

      [v9 setLoadedMessageCount:v8];
    }
  }
}

+ (id)_exportedInterface
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0587230];
  v3 = MEMORY[0x193AF5EC0](@"MSMessage", @"Messages");
  v4 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = v3;
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:13];
  v6 = [v4 setWithArray:{v5, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19}];

  [v2 setClasses:v6 forSelector:sel_insertRemoteItemForSending_ argumentIndex:0 ofReply:0];
  [v2 setClasses:v6 forSelector:sel_insertRemoteItemForSendingAndCalculateEntryViewFrame_completion_ argumentIndex:0 ofReply:0];
  [v2 setClasses:v6 forSelector:sel_insertFileURLForCollaboration_collaborationShareOptions_metadata_sendAsCopyURL_isCollaboration_ argumentIndex:1 ofReply:0];
  [v2 setClasses:v6 forSelector:sel_insertFileURLForCollaboration_collaborationShareOptions_metadata_sendAsCopyURL_isCollaboration_ argumentIndex:2 ofReply:0];
  [v2 setClasses:v6 forSelector:sel_insertCKShareForCollaboration_containerSetupInfo_collaborationShareOptions_isCollaboration_ argumentIndex:1 ofReply:0];
  [v2 setClasses:v6 forSelector:sel_insertCKShareForCollaboration_containerSetupInfo_collaborationShareOptions_isCollaboration_ argumentIndex:2 ofReply:0];
  [v2 setClasses:v6 forSelector:sel_insertSWYPendingCollaboration_collaborationShareOptions_collaborationMetadata_ argumentIndex:0 ofReply:0];
  [v2 setClasses:v6 forSelector:sel_insertSWYPendingCollaboration_collaborationShareOptions_collaborationMetadata_ argumentIndex:1 ofReply:0];
  [v2 setClasses:v6 forSelector:sel_insertSWYPendingCollaboration_collaborationShareOptions_collaborationMetadata_ argumentIndex:2 ofReply:0];
  [v2 setClasses:v6 forSelector:sel_insertFileURLForCollaboration_collaborationShareOptions_metadata_sendAsCopyURL_isCollaboration_completionHandler_ argumentIndex:1 ofReply:0];
  [v2 setClasses:v6 forSelector:sel_insertFileURLForCollaboration_collaborationShareOptions_metadata_sendAsCopyURL_isCollaboration_completionHandler_ argumentIndex:2 ofReply:0];
  [v2 setClasses:v6 forSelector:sel_insertCKShareForCollaboration_containerSetupInfo_collaborationShareOptions_isCollaboration_completionHandler_ argumentIndex:1 ofReply:0];
  [v2 setClasses:v6 forSelector:sel_insertCKShareForCollaboration_containerSetupInfo_collaborationShareOptions_isCollaboration_completionHandler_ argumentIndex:2 ofReply:0];
  [v2 setClasses:v6 forSelector:sel_insertSWYPendingCollaboration_collaborationShareOptions_collaborationMetadata_completionHandler_ argumentIndex:0 ofReply:0];
  [v2 setClasses:v6 forSelector:sel_insertSWYPendingCollaboration_collaborationShareOptions_collaborationMetadata_completionHandler_ argumentIndex:1 ofReply:0];
  [v2 setClasses:v6 forSelector:sel_insertSWYPendingCollaboration_collaborationShareOptions_collaborationMetadata_completionHandler_ argumentIndex:2 ofReply:0];
  [v2 setClasses:v6 forSelector:sel_insertSWYPendingCollaboration_collaborationShareOptions_collaborationMetadata_sendAsCopyURL_isCollaboration_completionHandler_ argumentIndex:0 ofReply:0];
  [v2 setClasses:v6 forSelector:sel_insertSWYPendingCollaboration_collaborationShareOptions_collaborationMetadata_sendAsCopyURL_isCollaboration_completionHandler_ argumentIndex:1 ofReply:0];
  [v2 setClasses:v6 forSelector:sel_insertSWYPendingCollaboration_collaborationShareOptions_collaborationMetadata_sendAsCopyURL_isCollaboration_completionHandler_ argumentIndex:2 ofReply:0];
  [v2 setClasses:v6 forSelector:sel_insertSWYPendingCollaboration_collaborationShareOptions_collaborationMetadata_sendAsCopyURL_isCollaboration_completionHandler_ argumentIndex:3 ofReply:0];
  [v2 setClasses:v6 forSelector:sel_insertSWYPendingCollaboration_collaborationShareOptions_collaborationMetadata_sendAsCopyURL_isCollaboration_completionHandler_ argumentIndex:4 ofReply:0];

  return v2;
}

- (void)donateInteractionWithConversation:(id)a3
{
  v112 = *MEMORY[0x1E69E9840];
  v66 = a3;
  if (self->_utiTypes || self->_photoIDs || self->_cloudPhotoIDs || self->_contentURLs || self->_contentText)
  {
    v65 = 1496;
    v101 = 0;
    v102 = &v101;
    v103 = 0x2050000000;
    v4 = get_CDInteractionClass_softClass;
    v104 = get_CDInteractionClass_softClass;
    if (!get_CDInteractionClass_softClass)
    {
      v96 = MEMORY[0x1E69E9820];
      v97 = 3221225472;
      v98 = __get_CDInteractionClass_block_invoke;
      v99 = &unk_1E72EB968;
      v100 = &v101;
      __get_CDInteractionClass_block_invoke(&v96);
      v4 = v102[3];
    }

    v67 = self;
    v5 = v4;
    _Block_object_dispose(&v101, 8);
    v68 = objc_alloc_init(v4);
    v6 = [(CKSMSComposeViewServiceController *)self _hostApplicationBundleIdentifier];
    [v68 setBundleId:v6];

    [v68 setTargetBundleId:*MEMORY[0x1E69CDAB0]];
    [v68 setDirection:1];
    [v68 setMechanism:13];
    v7 = [MEMORY[0x1E695DF00] date];
    [v68 setEndDate:v7];

    v8 = [v66 chat];
    v9 = [v8 guid];
    [v68 setDomainIdentifier:v9];

    v70 = objc_opt_new();
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    obj = [v66 recipients];
    v10 = [obj countByEnumeratingWithState:&v92 objects:v111 count:16];
    if (v10)
    {
      v11 = *v93;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v93 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v92 + 1) + 8 * i);
          v14 = [v13 cnContactWithKeys:{MEMORY[0x1E695E0F0], v65}];
          v101 = 0;
          v102 = &v101;
          v103 = 0x2050000000;
          v15 = get_CDContactClass_softClass;
          v104 = get_CDContactClass_softClass;
          if (!get_CDContactClass_softClass)
          {
            v96 = MEMORY[0x1E69E9820];
            v97 = 3221225472;
            v98 = __get_CDContactClass_block_invoke;
            v99 = &unk_1E72EB968;
            v100 = &v101;
            __get_CDContactClass_block_invoke(&v96);
            v15 = v102[3];
          }

          v16 = v15;
          _Block_object_dispose(&v101, 8);
          v17 = [v15 alloc];
          v18 = [v13 rawAddress];
          v19 = [v13 rawAddress];
          if ([v19 _appearsToBeEmail])
          {
            v20 = 2;
          }

          else
          {
            v20 = 1;
          }

          v21 = [v13 name];
          v22 = [v14 identifier];
          if (v14)
          {
            v23 = 3;
          }

          else
          {
            v23 = 0;
          }

          v24 = [v17 initWithIdentifier:v18 type:v20 displayName:v21 personId:v22 personIdType:v23];

          [v70 addObject:v24];
        }

        v10 = [obj countByEnumeratingWithState:&v92 objects:v111 count:16];
      }

      while (v10);
    }

    [v68 setRecipients:v70];
    v25 = objc_opt_new();
    photoIDs = v67->_photoIDs;
    if (photoIDs || v67->_cloudPhotoIDs)
    {
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v27 = photoIDs;
      v28 = [(NSArray *)v27 countByEnumeratingWithState:&v88 objects:v110 count:16];
      if (v28)
      {
        v29 = *v89;
        do
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v89 != v29)
            {
              objc_enumerationMutation(v27);
            }

            v31 = *(*(&v88 + 1) + 8 * j);
            v32 = objc_alloc_init(get_CDAttachmentClass());
            v33 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v31];
            [v32 setIdentifier:v33];

            [v25 addObject:v32];
          }

          v28 = [(NSArray *)v27 countByEnumeratingWithState:&v88 objects:v110 count:16];
        }

        while (v28);
      }

      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v34 = v67->_cloudPhotoIDs;
      v35 = [(NSArray *)v34 countByEnumeratingWithState:&v84 objects:v109 count:16];
      if (v35)
      {
        v36 = *v85;
        do
        {
          for (k = 0; k != v35; ++k)
          {
            if (*v85 != v36)
            {
              objc_enumerationMutation(v34);
            }

            v38 = *(*(&v84 + 1) + 8 * k);
            v39 = objc_alloc_init(get_CDAttachmentClass());
            v40 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v38];
            [v39 setCloudIdentifier:v40];

            [v25 addObject:v39];
          }

          v35 = [(NSArray *)v34 countByEnumeratingWithState:&v84 objects:v109 count:16];
        }

        while (v35);
      }
    }

    else
    {
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v45 = *(&v67->super.super.super.super.isa + v65);
      v46 = [v45 countByEnumeratingWithState:&v80 objects:v108 count:16];
      if (v46)
      {
        v47 = *v81;
        do
        {
          for (m = 0; m != v46; ++m)
          {
            if (*v81 != v47)
            {
              objc_enumerationMutation(v45);
            }

            v49 = *(*(&v80 + 1) + 8 * m);
            v50 = objc_alloc_init(get_CDAttachmentClass());
            [v50 setUti:v49];
            [v25 addObject:v50];
          }

          v46 = [v45 countByEnumeratingWithState:&v80 objects:v108 count:16];
        }

        while (v46);
      }

      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v51 = v67->_contentURLs;
      v52 = [(NSArray *)v51 countByEnumeratingWithState:&v76 objects:v107 count:16];
      if (v52)
      {
        v53 = *v77;
        v54 = *MEMORY[0x1E69638B8];
        do
        {
          for (n = 0; n != v52; ++n)
          {
            if (*v77 != v53)
            {
              objc_enumerationMutation(v51);
            }

            v56 = *(*(&v76 + 1) + 8 * n);
            v57 = objc_alloc_init(get_CDAttachmentClass());
            [v57 setUti:v54];
            v58 = [MEMORY[0x1E695DFF8] URLWithString:v56];
            [v57 setContentURL:v58];

            [v25 addObject:v57];
          }

          v52 = [(NSArray *)v51 countByEnumeratingWithState:&v76 objects:v107 count:16];
        }

        while (v52);
      }

      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v34 = v67->_contentText;
      v59 = [(NSArray *)v34 countByEnumeratingWithState:&v72 objects:v106 count:16];
      if (v59)
      {
        v60 = *v73;
        v61 = *MEMORY[0x1E6963870];
        do
        {
          for (ii = 0; ii != v59; ++ii)
          {
            if (*v73 != v60)
            {
              objc_enumerationMutation(v34);
            }

            v63 = *(*(&v72 + 1) + 8 * ii);
            v64 = objc_alloc_init(get_CDAttachmentClass());
            [v64 setUti:v61];
            [v64 setContentText:v63];
            [v25 addObject:v64];
          }

          v59 = [(NSArray *)v34 countByEnumeratingWithState:&v72 objects:v106 count:16];
        }

        while (v59);
      }
    }

    [v68 setAttachments:v25];
    v101 = 0;
    v102 = &v101;
    v103 = 0x2050000000;
    v41 = get_CDInteractionRecorderClass_softClass;
    v104 = get_CDInteractionRecorderClass_softClass;
    if (!get_CDInteractionRecorderClass_softClass)
    {
      v96 = MEMORY[0x1E69E9820];
      v97 = 3221225472;
      v98 = __get_CDInteractionRecorderClass_block_invoke;
      v99 = &unk_1E72EB968;
      v100 = &v101;
      __get_CDInteractionRecorderClass_block_invoke(&v96);
      v41 = v102[3];
    }

    v42 = v41;
    _Block_object_dispose(&v101, 8);
    v43 = [v41 interactionRecorder];
    v105 = v68;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v105 count:1];
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __71__CKSMSComposeViewServiceController_donateInteractionWithConversation___block_invoke;
    v71[3] = &unk_1E72EC088;
    v71[4] = v67;
    [v43 recordInteractions:v44 completionHandler:v71];
  }
}

void __71__CKSMSComposeViewServiceController_donateInteractionWithConversation___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (CKIsRunningUnitTests())
  {
    v5 = [*(a1 + 32) composeDelegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [*(a1 + 32) composeDelegate];
      [v7 composeViewServiceController:*(a1 + 32) willDonateToDuetWithUTIs:*(*(a1 + 32) + 1496)];
    }
  }

  if (v4 && IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "recordInteraction failed with error %@", &v9, 0xCu);
    }
  }
}

- (CKSMSComposeViewServiceControllerDelegate)composeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_composeDelegate);

  return WeakRetained;
}

@end