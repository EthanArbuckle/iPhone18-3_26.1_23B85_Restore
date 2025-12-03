@interface CKSMSComposeViewServiceController
+ (id)_exportedInterface;
- (BOOL)_hostSandboxAllowsFileReadAtFileURL:(id)l isResolved:(BOOL)resolved;
- (CKSMSComposeViewServiceController)init;
- (CKSMSComposeViewServiceControllerDelegate)composeDelegate;
- (UIEdgeInsets)initialSafeAreaInsetsForChatController:(id)controller;
- (UIEdgeInsets)initialSystemMinimumLayoutMarginsForChatController:(id)controller;
- (id)_canonicalPathForFileURL:(id)l;
- (id)recipientsFromChatGUID:(id)d groupName:(id)name handles:(id)handles;
- (void)_forceMMSIfNecessary;
- (void)_insertAttachmentWithURL:(id)l andDescription:(id)description preview:(id)preview isFullyRealized:(BOOL)realized appendedVideoURL:(id)rL appendedBundleURL:(id)uRL completion:(id)completion;
- (void)_insertFileURL:(id)l filename:(id)filename transcoderUserInfo:(id)info preview:(id)preview isFullyRealized:(BOOL)realized appendedVideoURL:(id)rL completion:(id)completion;
- (void)_removeCloudKitShareIfNeeded:(id)needed;
- (void)_takeBackgroundTaskAssertionForMessageSend;
- (void)chatController:(id)controller didFinishDismissAnimationForSendMenuViewController:(id)viewController;
- (void)chatController:(id)controller requestPresentSendMenu:(id)menu withPresentationContext:(id)context completion:(id)completion;
- (void)chatController:(id)controller willSendComposition:(id)composition inConversation:(id)conversation;
- (void)chatControllerDidChangeBackground:(id)background;
- (void)composeChatController:(id)controller didLoadEntryViewContentWithCompletion:(id)completion;
- (void)composeChatController:(id)controller didSelectNewConversation:(id)conversation;
- (void)composeChatController:(id)controller shouldSendComposition:(id)composition inConversation:(id)conversation completion:(id)completion;
- (void)composeChatControllerDidCancelComposition:(id)composition;
- (void)configureForDeviceValidation;
- (void)dealloc;
- (void)disableCameraAttachments;
- (void)donateInteractionWithConversation:(id)conversation;
- (void)forceCancelComposition;
- (void)hideEntryViewContent:(BOOL)content;
- (void)insertCKShareForCollaboration:(id)collaboration containerSetupInfo:(id)info collaborationShareOptions:(id)options isCollaboration:(BOOL)isCollaboration completionHandler:(id)handler;
- (void)insertData:(id)data MIMEType:(id)type exportedFilename:(id)filename;
- (void)insertFileURLForCollaboration:(id)collaboration collaborationShareOptions:(id)options metadata:(id)metadata sendAsCopyURL:(id)l isCollaboration:(BOOL)isCollaboration completionHandler:(id)handler;
- (void)insertFilename:(id)filename MIMEType:(id)type exportedFilename:(id)exportedFilename options:(id)options;
- (void)insertGroupActivity:(id)activity;
- (void)insertRemoteItemForSending:(id)sending extensionBundleIdentifier:(id)identifier;
- (void)insertRemoteItemForSendingAndCalculateEntryViewFrame:(id)frame completion:(id)completion;
- (void)insertSWYPendingCollaboration:(id)collaboration collaborationShareOptions:(id)options collaborationMetadata:(id)metadata sendAsCopyURL:(id)l isCollaboration:(BOOL)isCollaboration completionHandler:(id)handler;
- (void)setCanEditRecipients:(BOOL)recipients;
- (void)setGameCenterModeWithPickerBlock:(id)block;
- (void)setGameCenterPickedHandles:(id)handles playerNames:(id)names;
- (void)setNavBarTitle:(id)title;
- (void)setPendingAddresses:(id)addresses;
- (void)setServiceId:(id)id;
- (void)setShouldDisableEntryField:(BOOL)field;
- (void)setShouldIgnoreEmailsWhenSending:(BOOL)sending;
- (void)setSuggestions:(id)suggestions;
- (void)setText:(id)text subject:(id)subject addresses:(id)addresses chatGUID:(id)d groupName:(id)name;
- (void)setTextEntryContentsVisible:(BOOL)visible;
- (void)setUICustomizationData:(id)data;
- (void)showInsertedItemInEntryView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
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
  modalTranscriptController = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  [modalTranscriptController setDelegate:0];

  modalTranscriptController2 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  [(CKSMSComposeViewServiceController *)self removeChildViewController:modalTranscriptController2];

  [(CKSMSComposeViewServiceController *)self setModalTranscriptController:0];
  v5.receiver = self;
  v5.super_class = CKSMSComposeViewServiceController;
  [(CKSMSComposeViewServiceController *)&v5 dealloc];
}

- (void)insertFilename:(id)filename MIMEType:(id)type exportedFilename:(id)exportedFilename options:(id)options
{
  v9 = MEMORY[0x1E695DFF8];
  optionsCopy = options;
  exportedFilenameCopy = exportedFilename;
  v13 = [v9 fileURLWithPath:filename isDirectory:0];
  v12 = CKTranscoderUserInfoForComposeOptions(optionsCopy);

  [(CKSMSComposeViewServiceController *)self insertFileURL:v13 filename:exportedFilenameCopy transcoderUserInfo:v12];
}

- (void)insertData:(id)data MIMEType:(id)type exportedFilename:(id)filename
{
  filenameCopy = filename;
  typeCopy = type;
  dataCopy = data;
  modalTranscriptController = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  [modalTranscriptController insertData:dataCopy MIMEType:typeCopy exportedFilename:filenameCopy];

  _remoteViewControllerProxy = [(CKSMSComposeViewServiceController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy smsComposeControllerDataInserted];
}

- (void)_insertFileURL:(id)l filename:(id)filename transcoderUserInfo:(id)info preview:(id)preview isFullyRealized:(BOOL)realized appendedVideoURL:(id)rL completion:(id)completion
{
  realizedCopy = realized;
  v32 = *MEMORY[0x1E69E9840];
  lCopy = l;
  filenameCopy = filename;
  infoCopy = info;
  previewCopy = preview;
  rLCopy = rL;
  completionCopy = completion;
  if (lCopy)
  {
    v21 = [(CKSMSComposeViewServiceController *)self _canonicalPathForFileURL:lCopy];
    if (v21)
    {
      if ([(CKSMSComposeViewServiceController *)self _hostSandboxAllowsFileReadAtFileURL:v21 isResolved:1])
      {
        modalTranscriptController = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
        v23 = modalTranscriptController;
        if (realizedCopy)
        {
          v24 = previewCopy;
        }

        else
        {
          v24 = 0;
        }

        if (realizedCopy)
        {
          v25 = 0;
        }

        else
        {
          v25 = previewCopy;
        }

        [modalTranscriptController insertFileURL:v21 filename:filenameCopy fileIsResolved:1 transcoderUserInfo:infoCopy fullyRealizedPreview:v24 rawPreview:v25 appendedVideoURL:rLCopy completion:completionCopy];

        _remoteViewControllerProxy = [(CKSMSComposeViewServiceController *)self _remoteViewControllerProxy];
        [_remoteViewControllerProxy smsComposeControllerDataInserted];

        if (IMOSLoggingEnabled())
        {
          v27 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "Insert file and ask for MMCS prewarm", buf, 2u);
          }
        }

        mEMORY[0x1E69A5B80] = [MEMORY[0x1E69A5B80] sharedInstance];
        [mEMORY[0x1E69A5B80] preWarmConnection];

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
        v31 = lCopy;
        _os_log_impl(&dword_19020E000, v29, OS_LOG_TYPE_INFO, "CKSMSComposeViewServiceController - Failed to get canonical path for fileURL %@", buf, 0xCu);
      }

      goto LABEL_22;
    }

LABEL_23:
  }
}

- (void)showInsertedItemInEntryView
{
  modalTranscriptController = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  [modalTranscriptController hideEntryViewContent:0];

  _remoteViewControllerProxy = [(CKSMSComposeViewServiceController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy smsComposeControllerEntryViewContentInserted];
}

- (id)_canonicalPathForFileURL:(id)l
{
  v19 = *MEMORY[0x1E69E9840];
  lCopy = l;
  startAccessingSecurityScopedResource = [lCopy startAccessingSecurityScopedResource];
  v14 = 0;
  v5 = *MEMORY[0x1E695DA88];
  v13 = 0;
  v6 = [lCopy getResourceValue:&v14 forKey:v5 error:&v13];
  v7 = v14;
  v8 = v13;
  if (v6)
  {
    v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7];
    if (!startAccessingSecurityScopedResource)
    {
      goto LABEL_11;
    }

    v10 = MEMORY[0x193AF6620](lCopy);
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
      v16 = lCopy;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Failed to get canonical path from URL %@ with error %@", buf, 0x16u);
    }
  }

  v9 = 0;
  if (startAccessingSecurityScopedResource)
  {
LABEL_10:
    [lCopy stopAccessingSecurityScopedResource];
  }

LABEL_11:

  return v9;
}

- (BOOL)_hostSandboxAllowsFileReadAtFileURL:(id)l isResolved:(BOOL)resolved
{
  resolvedCopy = resolved;
  v17 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v13 = 0u;
  v14 = 0u;
  [(CKSMSComposeViewServiceController *)self _hostAuditToken];
  propertyValueTypeRefPtr = 0;
  if (!CFURLCopyResourcePropertyForKey(lCopy, *MEMORY[0x1E695EB60], &propertyValueTypeRefPtr, 0))
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_14;
    }

    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = lCopy;
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
      *&buf[4] = lCopy;
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

  v7 = lCopy;
  if (resolvedCopy)
  {
    [(__CFURL *)lCopy fileSystemRepresentation];
    *buf = v13;
    v16 = v14;
    LOBYTE(v8) = sandbox_check_by_audit_token() == 0;
  }

  else
  {
    v11 = realpath_DARWIN_EXTSN([(__CFURL *)lCopy fileSystemRepresentation], 0);
    *buf = v13;
    v16 = v14;
    v8 = sandbox_check_by_audit_token() == 0;
    free(v11);
  }

LABEL_15:

  return v8;
}

- (void)_insertAttachmentWithURL:(id)l andDescription:(id)description preview:(id)preview isFullyRealized:(BOOL)realized appendedVideoURL:(id)rL appendedBundleURL:(id)uRL completion:(id)completion
{
  realizedCopy = realized;
  v28[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  descriptionCopy = description;
  previewCopy = preview;
  rLCopy = rL;
  completionCopy = completion;
  if (lCopy)
  {
    v26 = realizedCopy;
    v19 = lCopy;
    scheme = [v19 scheme];
    v21 = [scheme isEqualToString:@"assets-library"];

    if (v21)
    {
      v27 = *MEMORY[0x1E69A6F58];
      absoluteString = [v19 absoluteString];
      v28[0] = absoluteString;
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

    [(CKSMSComposeViewServiceController *)self _insertFileURL:v19 filename:descriptionCopy transcoderUserInfo:v23 preview:previewCopy isFullyRealized:v26 appendedVideoURL:rLCopy completion:completionCopy];
  }
}

void *__147__CKSMSComposeViewServiceController__insertAttachmentWithURL_andDescription_preview_isFullyRealized_appendedVideoURL_appendedBundleURL_completion___block_invoke()
{
  result = MEMORY[0x193AF5ED0]("PUTCreatePathForPersistentURL", @"PhotoLibraryServicesCore");
  _insertAttachmentWithURL_andDescription_preview_isFullyRealized_appendedVideoURL_appendedBundleURL_completion___PUTCreatePathForPersistentURL = result;
  return result;
}

- (void)insertRemoteItemForSendingAndCalculateEntryViewFrame:(id)frame completion:(id)completion
{
  completionCopy = completion;
  frameCopy = frame;
  [(CKSMSComposeViewServiceController *)self setEntryViewCompletion:completionCopy];
  attachmentURL = [frameCopy attachmentURL];
  attachmentDescription = [frameCopy attachmentDescription];
  previewUIImage = [frameCopy previewUIImage];
  previewIsFullyRealizedByChatKit = [frameCopy previewIsFullyRealizedByChatKit];
  appendedVideoURL = [frameCopy appendedVideoURL];
  appendedBundleURL = [frameCopy appendedBundleURL];

  [(CKSMSComposeViewServiceController *)self _insertAttachmentWithURL:attachmentURL andDescription:attachmentDescription preview:previewUIImage isFullyRealized:previewIsFullyRealizedByChatKit appendedVideoURL:appendedVideoURL appendedBundleURL:appendedBundleURL completion:completionCopy];
}

- (void)composeChatController:(id)controller didLoadEntryViewContentWithCompletion:(id)completion
{
  v5 = [(CKSMSComposeViewServiceController *)self entryViewCompletion:controller];

  if (v5)
  {
    [(CKSMSComposeViewServiceController *)self hideEntryViewContent:1];
    modalTranscriptController = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
    entryView = [modalTranscriptController entryView];
    contentView = [entryView contentView];
    [contentView frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    modalTranscriptController2 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
    entryView2 = [modalTranscriptController2 entryView];
    contentView2 = [entryView2 contentView];
    modalTranscriptController3 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
    view = [modalTranscriptController3 view];
    [contentView2 convertRect:view toView:{v10, v12, v14, v16}];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    entryViewCompletion = [(CKSMSComposeViewServiceController *)self entryViewCompletion];
    v30 = [MEMORY[0x1E696B098] valueWithRect:{v23, v25, v27, v29}];
    entryViewCompletion[2](entryViewCompletion, v30);
  }
}

- (void)hideEntryViewContent:(BOOL)content
{
  contentCopy = content;
  modalTranscriptController = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  [modalTranscriptController hideEntryViewContent:contentCopy];
}

- (void)insertRemoteItemForSending:(id)sending extensionBundleIdentifier:(id)identifier
{
  v32 = *MEMORY[0x1E69E9840];
  sendingCopy = sending;
  identifierCopy = identifier;
  if ([sendingCopy previewImage])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v31 = sendingCopy;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "itemForSending %@", buf, 0xCu);
      }
    }

    attachmentURL = [sendingCopy attachmentURL];
    if (attachmentURL)
    {
      attachmentURL2 = [sendingCopy attachmentURL];
      attachmentDescription = [sendingCopy attachmentDescription];
      previewUIImage = [sendingCopy previewUIImage];
      previewIsFullyRealizedByChatKit = [sendingCopy previewIsFullyRealizedByChatKit];
      appendedVideoURL = [sendingCopy appendedVideoURL];
      appendedBundleURL = [sendingCopy appendedBundleURL];
      [(CKSMSComposeViewServiceController *)self _insertAttachmentWithURL:attachmentURL2 andDescription:attachmentDescription preview:previewUIImage isFullyRealized:previewIsFullyRealizedByChatKit appendedVideoURL:appendedVideoURL appendedBundleURL:appendedBundleURL completion:0];
    }
  }

  else
  {
    appendedRichLinkURL = [sendingCopy appendedRichLinkURL];

    if (appendedRichLinkURL)
    {
      modalTranscriptController = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
      appendedRichLinkURL2 = [sendingCopy appendedRichLinkURL];
      appendedRichLinkData = [sendingCopy appendedRichLinkData];
      [modalTranscriptController insertRichLinkWithURL:appendedRichLinkURL2 data:appendedRichLinkData];

      _remoteViewControllerProxy = [(CKSMSComposeViewServiceController *)self _remoteViewControllerProxy];
      [_remoteViewControllerProxy smsComposeControllerDataInserted];
    }

    else
    {
      appendedMessage = [sendingCopy appendedMessage];

      if (appendedMessage)
      {
        v22 = MEMORY[0x1E6963618];
        _hostApplicationBundleIdentifier = [(CKSMSComposeViewServiceController *)self _hostApplicationBundleIdentifier];
        attachmentURL3 = [v22 bundleProxyForIdentifier:_hostApplicationBundleIdentifier];

        modalTranscriptController2 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
        appendedMessage2 = [sendingCopy appendedMessage];
        [modalTranscriptController2 insertMessage:appendedMessage2 bundleProxy:attachmentURL3 extensionBundleIdentifier:identifierCopy];

        _remoteViewControllerProxy2 = [(CKSMSComposeViewServiceController *)self _remoteViewControllerProxy];
        [_remoteViewControllerProxy2 smsComposeControllerDataInserted];
      }

      else
      {
        attachmentURL3 = [sendingCopy attachmentURL];
        attachmentDescription2 = [sendingCopy attachmentDescription];
        appendedVideoURL2 = [sendingCopy appendedVideoURL];
        [(CKSMSComposeViewServiceController *)self insertAttachmentWithURL:attachmentURL3 andDescription:attachmentDescription2 appendedVideoURL:appendedVideoURL2];
      }
    }
  }
}

- (void)forceCancelComposition
{
  modalTranscriptController = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  [(CKSMSComposeViewServiceController *)self composeChatControllerDidCancelComposition:modalTranscriptController];
}

- (void)setUICustomizationData:(id)data
{
  dataCopy = data;
  modalTranscriptController = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  navigationController = [modalTranscriptController navigationController];
  [navigationController mf_setDataForUICustomization:dataCopy];
}

- (void)setServiceId:(id)id
{
  objc_storeStrong(&self->_serviceId, id);
  idCopy = id;
  modalTranscriptController = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  [modalTranscriptController setServiceId:idCopy];
}

- (void)setSuggestions:(id)suggestions
{
  objc_storeStrong(&self->_suggestions, suggestions);
  suggestionsCopy = suggestions;
  modalTranscriptController = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  [modalTranscriptController setSuggestedRepliesData:suggestionsCopy];
}

- (void)_forceMMSIfNecessary
{
  if (self->_forceMMS)
  {
    modalTranscriptController = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
    [modalTranscriptController setForceMMS:1];
  }
}

- (void)setGameCenterModeWithPickerBlock:(id)block
{
  blockCopy = block;
  [(CKSMSComposeViewServiceController *)self setGameCenterPickerBlock:blockCopy];
  modalTranscriptController = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  composeRecipientSelectionController = [modalTranscriptController composeRecipientSelectionController];
  [composeRecipientSelectionController setGameCenterPickerBlock:blockCopy];
}

- (void)setGameCenterPickedHandles:(id)handles playerNames:(id)names
{
  namesCopy = names;
  handlesCopy = handles;
  modalTranscriptController = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  composeRecipientSelectionController = [modalTranscriptController composeRecipientSelectionController];
  [composeRecipientSelectionController setGameCenterPickedHandles:handlesCopy playerNames:namesCopy];

  [(CKSMSComposeViewServiceController *)self becomeFirstResponder];
}

- (void)setText:(id)text subject:(id)subject addresses:(id)addresses chatGUID:(id)d groupName:(id)name
{
  v77[1] = *MEMORY[0x1E69E9840];
  textCopy = text;
  subjectCopy = subject;
  addressesCopy = addresses;
  dCopy = d;
  nameCopy = name;
  selfCopy = self;
  modalTranscriptController = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  composition = [modalTranscriptController composition];

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [addressesCopy componentsJoinedByString:{@", "}];
      *buf = 138412546;
      *&buf[4] = v15;
      *&buf[12] = 2112;
      *&buf[14] = dCopy;
      _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "setText and subject with addresses: %@ for chatGUID: %@", buf, 0x16u);
    }
  }

  serviceId = [(CKSMSComposeViewServiceController *)self serviceId];
  if (serviceId)
  {
    v17 = [addressesCopy count] == 1;

    if (v17)
    {
      serviceId2 = [(CKSMSComposeViewServiceController *)self serviceId];
      v77[0] = serviceId2;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:1];

      addressesCopy = v19;
    }
  }

  v20 = [textCopy length];
  modalTranscriptController2 = v20;
  if (composition)
  {
    if (v20)
    {
      v22 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:textCopy];
    }

    else
    {
      v22 = 0;
    }

    v26 = [composition compositionByAppendingText:v22];

    if (modalTranscriptController2)
    {
    }

    v58 = [CKComposition alloc];
    text = [v26 text];
    v27 = [subjectCopy length];
    if (v27)
    {
      v55 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:subjectCopy];
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
    shelfPluginPayload = [v26 shelfPluginPayload];
    bizIntent = [v26 bizIntent];
    shelfMediaObject = [v26 shelfMediaObject];
    collaborationShareOptions = [v26 collaborationShareOptions];
    proofreadingInfo = [v26 proofreadingInfo];
    v57 = [(CKComposition *)v58 initWithText:text subject:v55 translation:v29 shelfPluginPayload:shelfPluginPayload bizIntent:bizIntent shelfMediaObject:shelfMediaObject collaborationShareOptions:collaborationShareOptions proofreadingInfo:proofreadingInfo];

    if (!v30)
    {
    }

    if (v27)
    {
    }

    [(CKComposition *)v57 setShouldHideClearPluginButton:selfCopy->_shouldHideClearPluginButton];
    modalTranscriptController2 = [(CKSMSComposeViewServiceController *)selfCopy modalTranscriptController];
    [modalTranscriptController2 setInitialComposition:0];
  }

  else
  {
    if (v20)
    {
      modalTranscriptController2 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:textCopy];
    }

    ck_attributedStringByPostProcessingURLTextForRichLinks = [modalTranscriptController2 ck_attributedStringByPostProcessingURLTextForRichLinks];
    v24 = [CKComposition alloc];
    if ([subjectCopy length])
    {
      v25 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:subjectCopy];
      v57 = [(CKComposition *)v24 initWithText:ck_attributedStringByPostProcessingURLTextForRichLinks subject:v25];
    }

    else
    {
      v57 = [(CKComposition *)v24 initWithText:ck_attributedStringByPostProcessingURLTextForRichLinks subject:0];
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v74 = __Block_byref_object_copy__13;
  v75 = __Block_byref_object_dispose__13;
  v76 = [(CKSMSComposeViewServiceController *)selfCopy recipientsFromChatGUID:dCopy groupName:nameCopy handles:addressesCopy];
  if (![*(*&buf[8] + 40) count] && IMOSLoggingEnabled())
  {
    v36 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *v71 = 0;
      _os_log_impl(&dword_19020E000, v36, OS_LOG_TYPE_INFO, "recipientsFromChatGUID returned zero recipients", v71, 2u);
    }
  }

  v37 = [addressesCopy count];
  if (dCopy || v37)
  {
    if (dCopy)
    {
      if (IMOSLoggingEnabled())
      {
        v39 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          *v71 = 138412290;
          v72 = dCopy;
          _os_log_impl(&dword_19020E000, v39, OS_LOG_TYPE_INFO, "Getting recipients for chatGUID: %@", v71, 0xCu);
        }
      }

      v40 = [(CKSMSComposeViewServiceController *)selfCopy recipientsFromChatGUID:dCopy groupName:nameCopy handles:0];
      v41 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v40;
    }
  }

  else
  {
    shareSheetSessionID = selfCopy->_shareSheetSessionID;
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __82__CKSMSComposeViewServiceController_setText_subject_addresses_chatGUID_groupName___block_invoke;
    v69[3] = &unk_1E72EED60;
    v69[4] = selfCopy;
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
        address = [v46 address];
        v48 = address == 0;

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

  modalTranscriptController3 = [(CKSMSComposeViewServiceController *)selfCopy modalTranscriptController];
  [modalTranscriptController3 setPrepopulatedRecipients:*(*&buf[8] + 40)];

  modalTranscriptController4 = [(CKSMSComposeViewServiceController *)selfCopy modalTranscriptController];
  [modalTranscriptController4 setPrepopulatedComposition:v57];

  _remoteViewControllerProxy = [(CKSMSComposeViewServiceController *)selfCopy _remoteViewControllerProxy];
  [_remoteViewControllerProxy smsComposeControllerDataInserted];

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

- (id)recipientsFromChatGUID:(id)d groupName:(id)name handles:(id)handles
{
  v63 = *MEMORY[0x1E69E9840];
  dCopy = d;
  nameCopy = name;
  handlesCopy = handles;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [handlesCopy componentsJoinedByString:{@", "}];
      *buf = 138412546;
      v60 = dCopy;
      v61 = 2112;
      v62 = v8;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Getting CNComposeRecipient recipients from chatGUID: %@ handles: %@", buf, 0x16u);
    }
  }

  if (dCopy)
  {
    mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
    v10 = [mEMORY[0x1E69A5AF8] existingChatWithGUID:dCopy];
  }

  else
  {
    v10 = 0;
  }

  if (nameCopy && !v10)
  {
    mEMORY[0x1E69A5AF8]2 = [MEMORY[0x1E69A5AF8] sharedRegistry];
    v10 = [mEMORY[0x1E69A5AF8]2 existingChatWithDisplayName:nameCopy];
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
      v19 = [handlesCopy count];
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
        address = [v24 address];
        v26 = address == 0;

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

    v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(handlesCopy, "count")}];
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v30 = handlesCopy;
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
              address2 = [v36 address];
              v38 = address2 == 0;

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

- (void)setPendingAddresses:(id)addresses
{
  addressesCopy = addresses;
  modalTranscriptController = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  [modalTranscriptController setPendingAddresses:addressesCopy];
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

- (void)setCanEditRecipients:(BOOL)recipients
{
  recipientsCopy = recipients;
  if (CKIsScreenLocked())
  {
    self->_canEditRecipients = 0;
  }

  else if (self->_canEditRecipients != recipientsCopy)
  {
    self->_canEditRecipients = recipientsCopy;
    modalTranscriptController = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
    [modalTranscriptController setCanEditRecipients:recipientsCopy];
  }
}

- (void)setShouldIgnoreEmailsWhenSending:(BOOL)sending
{
  sendingCopy = sending;
  modalTranscriptController = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  [modalTranscriptController setIgnoreEmailsWhenSending:sendingCopy];
}

- (void)insertFileURLForCollaboration:(id)collaboration collaborationShareOptions:(id)options metadata:(id)metadata sendAsCopyURL:(id)l isCollaboration:(BOOL)isCollaboration completionHandler:(id)handler
{
  isCollaborationCopy = isCollaboration;
  handlerCopy = handler;
  lCopy = l;
  metadataCopy = metadata;
  optionsCopy = options;
  collaborationCopy = collaboration;
  modalTranscriptController = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  [modalTranscriptController insertFileURLForCollaboration:collaborationCopy collaborationShareOptions:optionsCopy metadata:metadataCopy sendAsCopyURL:lCopy isCollaboration:isCollaborationCopy completionHandler:handlerCopy];
}

- (void)insertSWYPendingCollaboration:(id)collaboration collaborationShareOptions:(id)options collaborationMetadata:(id)metadata sendAsCopyURL:(id)l isCollaboration:(BOOL)isCollaboration completionHandler:(id)handler
{
  isCollaborationCopy = isCollaboration;
  handlerCopy = handler;
  lCopy = l;
  metadataCopy = metadata;
  optionsCopy = options;
  collaborationCopy = collaboration;
  modalTranscriptController = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  [modalTranscriptController insertSWYPendingCollaboration:collaborationCopy collaborationShareOptions:optionsCopy collaborationMetadata:metadataCopy sendAsCopyURL:lCopy isCollaboration:isCollaborationCopy completionHandler:handlerCopy];
}

- (void)insertCKShareForCollaboration:(id)collaboration containerSetupInfo:(id)info collaborationShareOptions:(id)options isCollaboration:(BOOL)isCollaboration completionHandler:(id)handler
{
  isCollaborationCopy = isCollaboration;
  v24 = *MEMORY[0x1E69E9840];
  collaborationCopy = collaboration;
  infoCopy = info;
  optionsCopy = options;
  handlerCopy = handler;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = @"NO";
      *v19 = 138413058;
      *&v19[4] = collaborationCopy;
      if (isCollaborationCopy)
      {
        v17 = @"YES";
      }

      *&v19[12] = 2112;
      *&v19[14] = infoCopy;
      v20 = 2112;
      v21 = optionsCopy;
      v22 = 2112;
      v23 = v17;
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Invoking insertCKShareForCollaboration with ckShare:%@, containerSetupInfo:%@, shareOptions:%@, isCollaboration: %@", v19, 0x2Au);
    }
  }

  modalTranscriptController = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  [modalTranscriptController insertCKShareForCollaboration:collaborationCopy containerSetupInfo:infoCopy collaborationShareOptions:optionsCopy isCollaboration:isCollaborationCopy completionHandler:handlerCopy];
}

- (void)insertGroupActivity:(id)activity
{
  v9 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = activityCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "insertGroupActivity called %@", &v7, 0xCu);
    }
  }

  modalTranscriptController = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  [modalTranscriptController insertGroupActivity:activityCopy];
}

- (void)setShouldDisableEntryField:(BOOL)field
{
  if (self->_shouldDisableEntryField != field)
  {
    fieldCopy = field;
    self->_shouldDisableEntryField = field;
    modalTranscriptController = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
    [modalTranscriptController setShouldDisableEntryField:fieldCopy];
  }
}

- (void)setNavBarTitle:(id)title
{
  titleCopy = title;
  modalTranscriptController = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  [modalTranscriptController setOverrideTitle:titleCopy];
}

- (void)disableCameraAttachments
{
  modalTranscriptController = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  [modalTranscriptController disableCameraAttachments];
}

- (void)setTextEntryContentsVisible:(BOOL)visible
{
  visibleCopy = visible;
  modalTranscriptController = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  [modalTranscriptController setTextEntryContentsVisible:visibleCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = CKSMSComposeViewServiceController;
  [(CKSMSComposeViewServiceController *)&v10 viewWillAppear:appear];
  [CKApplicationState setMainWindowForegroundActive:1];
  viewControllers = [(CKSMSComposeViewServiceController *)self viewControllers];
  modalTranscriptController = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  v6 = [viewControllers containsObject:modalTranscriptController];

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
    modalTranscriptController2 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
    [(CKSMSComposeViewServiceController *)self pushViewController:modalTranscriptController2 animated:0];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  if (self->_forceMMS)
  {
    modalTranscriptController = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
    composeRecipientSelectionController = [modalTranscriptController composeRecipientSelectionController];
    [composeRecipientSelectionController setForceMMS:1];
  }

  gameCenterPickerBlock = self->_gameCenterPickerBlock;
  if (gameCenterPickerBlock)
  {
    modalTranscriptController2 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
    composeRecipientSelectionController2 = [modalTranscriptController2 composeRecipientSelectionController];
    [composeRecipientSelectionController2 setGameCenterPickerBlock:gameCenterPickerBlock];
  }

  mEMORY[0x1E69A6160] = [MEMORY[0x1E69A6160] sharedInstance];
  [mEMORY[0x1E69A6160] _forceResumed];

  _remoteViewControllerProxy = [(CKSMSComposeViewServiceController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy smsComposeControllerAppeared];

  v13.receiver = self;
  v13.super_class = CKSMSComposeViewServiceController;
  [(CKSMSComposeViewServiceController *)&v13 viewDidAppear:appearCopy];
  v12 = +[CKImageAnimationTimer sharedTimer];
  [v12 setShouldStopWhenBackgrounded:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CKSMSComposeViewServiceController;
  [(CKSMSComposeViewServiceController *)&v4 viewDidDisappear:disappear];
  [CKApplicationState setMainWindowForegroundActive:0];
  v3 = +[CKImageAnimationTimer sharedTimer];
  [v3 setShouldStopWhenBackgrounded:1];
}

- (void)composeChatController:(id)controller shouldSendComposition:(id)composition inConversation:(id)conversation completion:(id)completion
{
  v35 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  completionCopy = completion;
  recipientStrings = [conversation recipientStrings];
  v12 = recipientStrings;
  if (self->_gameCenterPickerBlock)
  {
    v28 = compositionCopy;
    modalTranscriptController = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
    composeRecipientSelectionController = [modalTranscriptController composeRecipientSelectionController];

    recipients = [composeRecipientSelectionController recipients];
    v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(recipients, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v17 = recipients;
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
          if ([composeRecipientSelectionController isGameCenterRecipient:v22])
          {
            normalizedAddress = [v22 normalizedAddress];
            [v16 addObject:normalizedAddress];
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

    compositionCopy = v28;
  }

  else
  {
    v16 = recipientStrings;
  }

  text = [compositionCopy text];
  string = [text string];

  if (CKIsRunningUnitTests() || (memset(v29, 0, sizeof(v29)), [(CKSMSComposeViewServiceController *)self _hostAuditToken], !MEMORY[0x193AF6320](v29, @"com.apple.private.mobilesms.messages-recipient-vetting")))
  {
    completionCopy[2](completionCopy, 1);
  }

  else
  {
    _remoteViewControllerProxy = [(CKSMSComposeViewServiceController *)self _remoteViewControllerProxy];
    [_remoteViewControllerProxy smsComposeControllerShouldSendMessageWithText:string toRecipients:v16 completion:completionCopy];
  }
}

- (void)chatController:(id)controller willSendComposition:(id)composition inConversation:(id)conversation
{
  v32 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  compositionCopy = composition;
  conversationCopy = conversation;
  if ([(CKSMSComposeViewServiceController *)self supportsMessageInspection])
  {
    text = [compositionCopy text];
    string = [text string];
  }

  else
  {
    string = 0;
  }

  modalTranscriptController = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  _hostApplicationBundleIdentifier = [(CKSMSComposeViewServiceController *)self _hostApplicationBundleIdentifier];
  [modalTranscriptController setShareSheetHostBundleIdentifier:_hostApplicationBundleIdentifier];

  [(CKSMSComposeViewServiceController *)self donateInteractionWithConversation:conversationCopy];
  if (self->_isDoingUPIDeviceValidation)
  {
    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    [compositionCopy setFirstMessageGUIDOverride:stringGUID];
    mEMORY[0x1E69A7F68] = [MEMORY[0x1E69A7F68] sharedInstance];
    modalTranscriptController2 = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
    composeRecipientSelectionController = [modalTranscriptController2 composeRecipientSelectionController];
    selectedSubscriptionContext = [composeRecipientSelectionController selectedSubscriptionContext];

    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        _hostApplicationBundleIdentifier2 = [(CKSMSComposeViewServiceController *)self _hostApplicationBundleIdentifier];
        phoneNumber = [selectedSubscriptionContext phoneNumber];
        labelID = [selectedSubscriptionContext labelID];
        *buf = 138412802;
        v27 = _hostApplicationBundleIdentifier2;
        v28 = 2112;
        v29 = phoneNumber;
        v30 = 2112;
        v31 = labelID;
        _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "Using CoreTelephony helper to generate token for UPI using bundle ID: %@, handle: %@, labelID: %@", buf, 0x20u);
      }
    }

    _hostApplicationBundleIdentifier3 = [(CKSMSComposeViewServiceController *)self _hostApplicationBundleIdentifier];
    [mEMORY[0x1E69A7F68] generateTokenForUPIWithHostBundleID:_hostApplicationBundleIdentifier3 subscriptionContext:selectedSubscriptionContext];
  }

  else
  {
    stringGUID = 0;
  }

  [(CKSMSComposeViewServiceController *)self _takeBackgroundTaskAssertionForMessageSend];
  _remoteViewControllerProxy = [(CKSMSComposeViewServiceController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy smsComposeControllerSendStartedWithText:string messageGUID:stringGUID];
}

- (void)_takeBackgroundTaskAssertionForMessageSend
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = *MEMORY[0x1E69DDBE8];
  v2 = v12;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__CKSMSComposeViewServiceController__takeBackgroundTaskAssertionForMessageSend__block_invoke;
  v8[3] = &unk_1E72EB968;
  v8[4] = &v9;
  v4 = [mEMORY[0x1E69DC668] beginBackgroundTaskWithName:@"messages-view-service-message-send" expirationHandler:v8];
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

- (UIEdgeInsets)initialSystemMinimumLayoutMarginsForChatController:(id)controller
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

- (UIEdgeInsets)initialSafeAreaInsetsForChatController:(id)controller
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

- (void)chatControllerDidChangeBackground:(id)background
{
  v15 = *MEMORY[0x1E69E9840];
  backgroundCopy = background;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = backgroundCopy;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Did change background on chat controller: %@", &v13, 0xCu);
  }

  transcriptBackground = [backgroundCopy transcriptBackground];
  viewIfLoaded = [(CKSMSComposeViewServiceController *)self viewIfLoaded];
  window = [viewIfLoaded window];

  windowScene = [window windowScene];
  [window setOverrideUserInterfaceStyle:{objc_msgSend(transcriptBackground, "contentDerivedUserInterfaceStyle")}];
  traitOverrides = [windowScene traitOverrides];
  if (transcriptBackground)
  {
    [traitOverrides setNSIntegerValue:objc_msgSend(MEMORY[0x1E695E118] forTrait:{"integerValue"), objc_opt_class()}];

    traitOverrides2 = [windowScene traitOverrides];
    [transcriptBackground luminance];
    [traitOverrides2 setCGFloatValue:objc_opt_class() forTrait:v12];
  }

  else
  {
    [traitOverrides removeTrait:objc_opt_class()];

    traitOverrides2 = [windowScene traitOverrides];
    [traitOverrides2 removeTrait:objc_opt_class()];
  }
}

- (void)chatController:(id)controller requestPresentSendMenu:(id)menu withPresentationContext:(id)context completion:(id)completion
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CKSMSComposeViewServiceController.m" lineNumber:855 description:@"not implemented"];
}

- (void)chatController:(id)controller didFinishDismissAnimationForSendMenuViewController:(id)viewController
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CKSMSComposeViewServiceController.m" lineNumber:860 description:@"not implemented"];
}

- (void)composeChatControllerDidCancelComposition:(id)composition
{
  composition = [composition composition];
  shelfPluginPayload = [composition shelfPluginPayload];
  [(CKSMSComposeViewServiceController *)self _removeCloudKitShareIfNeeded:shelfPluginPayload];

  modalTranscriptController = [(CKSMSComposeViewServiceController *)self modalTranscriptController];
  [modalTranscriptController setComposition:0];

  _remoteViewControllerProxy = [(CKSMSComposeViewServiceController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy smsComposeControllerCancelled];
}

- (void)_removeCloudKitShareIfNeeded:(id)needed
{
  neededCopy = needed;
  v4 = neededCopy;
  if (neededCopy)
  {
    if ([neededCopy payloadCollaborationType] == 2)
    {
      cloudKitShare = [v4 cloudKitShare];
      isCloudKitShareRemovable = [cloudKitShare isCloudKitShareRemovable];

      if (isCloudKitShareRemovable)
      {
        v7 = MEMORY[0x193AF5EC0](@"CSCloudSharing", @"CloudSharing");
        cloudKitShare2 = [v4 cloudKitShare];
        containerSetupInfo = [v4 containerSetupInfo];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __66__CKSMSComposeViewServiceController__removeCloudKitShareIfNeeded___block_invoke;
        v10[3] = &unk_1E72EC088;
        v11 = v4;
        [v7 removeFromShare:cloudKitShare2 containerSetupInfo:containerSetupInfo completionHandler:v10];
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

- (void)composeChatController:(id)controller didSelectNewConversation:(id)conversation
{
  conversationCopy = conversation;
  v4 = +[CKConversationList sharedConversationList];
  [v4 setPendingConversation:conversationCopy];

  if (!CKIsRunningInMessagesViewService() || !CKIsScreenLocked())
  {
    chat = [conversationCopy chat];

    if (chat)
    {
      if (CKIsRunningInMessagesViewService() && ([MEMORY[0x1E695E000] standardUserDefaults], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "BOOLForKey:", @"ShouldDisableShareSheetHistoryLoad"), v6, (v7 & 1) != 0))
      {
        v8 = 0;
        v9 = conversationCopy;
      }

      else
      {
        limitToLoad = [conversationCopy limitToLoad];
        v11 = +[CKUIBehavior sharedBehaviors];
        defaultConversationViewingMessageCount = [v11 defaultConversationViewingMessageCount];

        if (defaultConversationViewingMessageCount >= limitToLoad)
        {
          defaultConversationViewingMessageCount = limitToLoad;
        }

        v13 = +[CKUIBehavior sharedBehaviors];
        initialConversationViewingMessageCount = [v13 initialConversationViewingMessageCount];

        v9 = conversationCopy;
        if (defaultConversationViewingMessageCount <= initialConversationViewingMessageCount)
        {
          v8 = initialConversationViewingMessageCount;
        }

        else
        {
          v8 = defaultConversationViewingMessageCount;
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

- (void)donateInteractionWithConversation:(id)conversation
{
  v112 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
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

    selfCopy = self;
    v5 = v4;
    _Block_object_dispose(&v101, 8);
    v68 = objc_alloc_init(v4);
    _hostApplicationBundleIdentifier = [(CKSMSComposeViewServiceController *)self _hostApplicationBundleIdentifier];
    [v68 setBundleId:_hostApplicationBundleIdentifier];

    [v68 setTargetBundleId:*MEMORY[0x1E69CDAB0]];
    [v68 setDirection:1];
    [v68 setMechanism:13];
    date = [MEMORY[0x1E695DF00] date];
    [v68 setEndDate:date];

    chat = [conversationCopy chat];
    guid = [chat guid];
    [v68 setDomainIdentifier:guid];

    v70 = objc_opt_new();
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    obj = [conversationCopy recipients];
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
          rawAddress = [v13 rawAddress];
          rawAddress2 = [v13 rawAddress];
          if ([rawAddress2 _appearsToBeEmail])
          {
            v20 = 2;
          }

          else
          {
            v20 = 1;
          }

          name = [v13 name];
          identifier = [v14 identifier];
          if (v14)
          {
            v23 = 3;
          }

          else
          {
            v23 = 0;
          }

          v24 = [v17 initWithIdentifier:rawAddress type:v20 displayName:name personId:identifier personIdType:v23];

          [v70 addObject:v24];
        }

        v10 = [obj countByEnumeratingWithState:&v92 objects:v111 count:16];
      }

      while (v10);
    }

    [v68 setRecipients:v70];
    v25 = objc_opt_new();
    photoIDs = selfCopy->_photoIDs;
    if (photoIDs || selfCopy->_cloudPhotoIDs)
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
      v34 = selfCopy->_cloudPhotoIDs;
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
      v45 = *(&selfCopy->super.super.super.super.isa + v65);
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
      v51 = selfCopy->_contentURLs;
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
      v34 = selfCopy->_contentText;
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
    interactionRecorder = [v41 interactionRecorder];
    v105 = v68;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v105 count:1];
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __71__CKSMSComposeViewServiceController_donateInteractionWithConversation___block_invoke;
    v71[3] = &unk_1E72EC088;
    v71[4] = selfCopy;
    [interactionRecorder recordInteractions:v44 completionHandler:v71];
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