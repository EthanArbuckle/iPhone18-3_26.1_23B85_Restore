@interface CKSMSComposeController
+ (BOOL)canSendPhotos:(int)a3 videos:(int)a4 audioClips:(int)a5;
- (BOOL)canInsertMessageWithExtensionBundleIdentifier:(id)a3;
- (BOOL)insertAttachmentWithURL:(id)a3 andDescription:(id)a4;
- (BOOL)insertCKShareForCollaboration:(id)a3 containerSetupInfo:(id)a4 collaborationShareOptions:(id)a5 isCollaboration:(BOOL)a6;
- (BOOL)insertCKShareForCollaboration:(id)a3 containerSetupInfo:(id)a4 collaborationShareOptions:(id)a5 isCollaboration:(BOOL)a6 completionHandler:(id)a7;
- (BOOL)insertData:(id)a3 MIMEType:(id)a4 exportedFilename:(id)a5;
- (BOOL)insertFileURLForCollaboration:(id)a3 collaborationShareOptions:(id)a4 metadata:(id)a5 isCollaboration:(BOOL)a6;
- (BOOL)insertFileURLForCollaboration:(id)a3 collaborationShareOptions:(id)a4 metadata:(id)a5 sendAsCopyURL:(id)a6 isCollaboration:(BOOL)a7;
- (BOOL)insertFileURLForCollaboration:(id)a3 collaborationShareOptions:(id)a4 metadata:(id)a5 sendAsCopyURL:(id)a6 isCollaboration:(BOOL)a7 completionHandler:(id)a8;
- (BOOL)insertFilename:(id)a3 MIMEType:(id)a4 exportedFilename:(id)a5 options:(id)a6;
- (BOOL)insertGroupActivity:(id)a3;
- (BOOL)insertMessage:(id)a3 extensionBundleIdentifier:(id)a4;
- (BOOL)insertRichLinkWithURL:(id)a3 andData:(id)a4;
- (BOOL)insertSWYPendingCollaboration:(id)a3 collaborationShareOptions:(id)a4 collaborationMetadata:(id)a5;
- (BOOL)insertSWYPendingCollaboration:(id)a3 collaborationShareOptions:(id)a4 collaborationMetadata:(id)a5 completionHandler:(id)a6;
- (BOOL)insertSWYPendingCollaboration:(id)a3 collaborationShareOptions:(id)a4 collaborationMetadata:(id)a5 sendAsCopyURL:(id)a6 isCollaboration:(BOOL)a7 completionHandler:(id)a8;
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3;
- (CKSMSComposeController)init;
- (CKSMSComposeController)initWithNavigationController:(id)a3;
- (id)delegate;
- (void)_addRemoteVCIfNeeded;
- (void)configureForDeviceValidation;
- (void)dealloc;
- (void)disableCameraAttachments;
- (void)forceCancelComposition;
- (void)forceMMS;
- (void)insertItemForSendingAndCalculateEntryViewFrame:(id)a3 withAlternateFilename:(id)a4 completion:(id)a5;
- (void)setCanEditRecipients:(BOOL)a3;
- (void)setCloudPhotoIDs:(id)a3;
- (void)setContentText:(id)a3;
- (void)setContentURLs:(id)a3;
- (void)setGameCenterModeWithPickerBlock:(id)a3;
- (void)setGameCenterPickedHandles:(id)a3 playerNames:(id)a4;
- (void)setNavBarTitle:(id)a3;
- (void)setPendingAddresses:(id)a3;
- (void)setPhotoIDs:(id)a3;
- (void)setServiceId:(id)a3;
- (void)setShareSheetSessionID:(id)a3;
- (void)setShouldDisableEntryField:(BOOL)a3;
- (void)setShouldIgnoreEmailsWhenSending:(BOOL)a3;
- (void)setSuggestions:(id)a3;
- (void)setText:(id)a3 subject:(id)a4 addresses:(id)a5;
- (void)setText:(id)a3 subject:(id)a4 addresses:(id)a5 chatGUID:(id)a6 groupName:(id)a7;
- (void)setText:(id)a3 subject:(id)a4 addresses:(id)a5 shouldHideClearPluginButton:(BOOL)a6;
- (void)setText:(id)a3 subject:(id)a4 addresses:(id)a5 shouldHideClearPluginButton:(BOOL)a6 chatGUID:(id)a7;
- (void)setTextEntryContentsVisible:(BOOL)a3;
- (void)setUICustomizationData:(id)a3;
- (void)setUTIs:(id)a3;
- (void)showInsertedItemInEntryView;
- (void)smsComposeControllerAppeared;
- (void)smsComposeControllerCancelled;
- (void)smsComposeControllerDataInserted;
- (void)smsComposeControllerEntryViewContentInserted;
- (void)smsComposeControllerSendStartedWithText:(id)a3 messageGUID:(id)a4;
- (void)smsComposeControllerShouldSendMessageWithText:(id)a3 toRecipients:(id)a4 completion:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewServiceDidTerminateWithError:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CKSMSComposeController

- (CKSMSComposeController)init
{
  v16.receiver = self;
  v16.super_class = CKSMSComposeController;
  v3 = [(CKSMSComposeController *)&v16 init];
  if (v3)
  {
    kdebug_trace();
    v3->_firstItemWasInserted = 0;
    v4 = objc_alloc_init(CKSMSComposeQueuingRemoteViewControllerProxy);
    [(CKSMSComposeController *)v3 setRemoteViewControllerProxy:v4];
    v3->_safeToAdd = 1;
    clientNavigationController = v3->_clientNavigationController;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __30__CKSMSComposeController_init__block_invoke;
    v14[3] = &unk_1E72F5B58;
    v6 = v3;
    v15 = v6;
    [(UINavigationController *)clientNavigationController _beginDelayingPresentation:v14 cancellationHandler:15.0];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __30__CKSMSComposeController_init__block_invoke_2;
    v11[3] = &unk_1E72F5B80;
    v13 = a2;
    v7 = v6;
    v12 = v7;
    v8 = [CKSMSComposeRemoteViewController requestViewControllerWithConnectionHandler:v11];
    cancellationInvocation = v7->_cancellationInvocation;
    v7->_cancellationInvocation = v8;
  }

  return v3;
}

uint64_t __30__CKSMSComposeController_init__block_invoke(uint64_t a1, int a2)
{
  v4 = @"NO";
  if (a2)
  {
    v4 = @"YES";
  }

  NSLog(&cfstr_RemoteComposeC.isa, v4);
  if (a2)
  {
    [*(a1 + 32) smsComposeControllerCancelled];
  }

  return 0;
}

void __30__CKSMSComposeController_init__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  kdebug_trace();
  if (v5)
  {
    v6 = NSStringFromSelector(*(a1 + 40));
    NSLog(&stru_1F042B3F8.isa, v6, v5);

    [*(*(a1 + 32) + 1032) dismissViewControllerAnimated:0 completion:0];
    [*(a1 + 32) smsComposeControllerCancelled];
  }

  else if (v15)
  {
    [*(a1 + 32) setRemoteViewController:v15];
    v7 = [*(a1 + 32) remoteViewController];
    [v7 setDelegate:*(a1 + 32)];

    v8 = [*(a1 + 32) remoteViewControllerProxy];
    v9 = [*(a1 + 32) remoteViewController];
    v10 = [v9 serviceViewControllerProxy];
    [v8 setServiceViewControllerProxy:v10];

    [*(a1 + 32) _addRemoteVCIfNeeded];
  }

  v11 = *(a1 + 32);
  v12 = *(v11 + 1024);
  *(v11 + 1024) = 0;

  [*(*(a1 + 32) + 1032) _endDelayingPresentation];
  v13 = *(a1 + 32);
  v14 = *(v13 + 1032);
  *(v13 + 1032) = 0;
}

- (CKSMSComposeController)initWithNavigationController:(id)a3
{
  objc_storeStrong(&self->_clientNavigationController, a3);

  return [(CKSMSComposeController *)self init];
}

- (void)dealloc
{
  [(CKSMSComposeController *)self setRemoteViewControllerProxy:0];
  v3 = [(CKSMSComposeController *)self remoteViewController];
  v4 = [v3 view];
  [v4 removeFromSuperview];

  v5 = [(CKSMSComposeController *)self remoteViewController];
  [v5 removeFromParentViewController];

  v6 = [(CKSMSComposeController *)self remoteViewController];
  [v6 setDelegate:0];

  [(CKSMSComposeController *)self setRemoteViewController:0];
  v7.receiver = self;
  v7.super_class = CKSMSComposeController;
  [(CKSMSComposeController *)&v7 dealloc];
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  cancellationInvocation = self->_cancellationInvocation;
  if (cancellationInvocation)
  {
    v5 = [(_UIAsyncInvocation *)cancellationInvocation invoke];
    v6 = self->_cancellationInvocation;
    self->_cancellationInvocation = 0;
  }

  [(CKSMSComposeController *)self smsComposeControllerCancelled];
}

+ (BOOL)canSendPhotos:(int)a3 videos:(int)a4 audioClips:(int)a5
{
  v7 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  memset(&v6[4], 0, 28);
  v6[2] = a4;
  v6[3] = a3;
  v6[1] = a5;
  return CKClientComposeCanSendMediaObjectTypes(v6);
}

- (BOOL)insertFilename:(id)a3 MIMEType:(id)a4 exportedFilename:(id)a5 options:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [v14 insertFilename:v13 MIMEType:v12 exportedFilename:v11 options:v10];

  return 1;
}

- (BOOL)insertData:(id)a3 MIMEType:(id)a4 exportedFilename:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [v11 insertData:v10 MIMEType:v9 exportedFilename:v8];

  return 1;
}

- (BOOL)insertAttachmentWithURL:(id)a3 andDescription:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[CKRemoteItemForSending alloc] initWithAttachmentURL:v6 description:v7 blockOnPreviewCreation:!self->_firstItemWasInserted];
  if (v8)
  {
    v9 = [(CKSMSComposeController *)self remoteViewControllerProxy];
    [v9 insertRemoteItemForSending:v8];

    if (!self->_firstItemWasInserted)
    {
      self->_firstItemWasInserted = 1;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "CKSMSComposeController. Could not initialize CKRemoteItemForSending object.", v12, 2u);
    }
  }

  return 1;
}

- (BOOL)insertRichLinkWithURL:(id)a3 andData:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v7 length];
      v10 = @"YES";
      if (!v6)
      {
        v10 = @"NO";
      }

      v15 = 138412546;
      v16 = v10;
      v17 = 2048;
      v18 = v9;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "insertRichLinkWithURL: %@, data: %lu", &v15, 0x16u);
    }
  }

  v11 = [[CKRemoteItemForSending alloc] initWithRichLinkWithURL:v6 data:v7];
  if (v11)
  {
    v12 = [(CKSMSComposeController *)self remoteViewControllerProxy];
    [v12 insertRemoteItemForSending:v11];
  }

  else if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "CKSMSComposeController. Could not initialize CKRemoteItemForSending object.", &v15, 2u);
    }
  }

  return 1;
}

- (void)insertItemForSendingAndCalculateEntryViewFrame:(id)a3 withAlternateFilename:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[CKRemoteItemForSending alloc] initWithAttachmentURL:v8 description:v9 blockOnPreviewCreation:0];
  if (v11)
  {
    v12 = [(CKSMSComposeController *)self remoteViewControllerProxy];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __106__CKSMSComposeController_insertItemForSendingAndCalculateEntryViewFrame_withAlternateFilename_completion___block_invoke;
    v15[3] = &unk_1E72F5BA8;
    v16 = v10;
    [v12 insertRemoteItemForSendingAndCalculateEntryViewFrame:v11 completion:v15];
  }

  else if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "CKSMSComposeController. Could not initialize CKRemoteItemForSending object.", v14, 2u);
    }
  }
}

void __106__CKSMSComposeController_insertItemForSendingAndCalculateEntryViewFrame_withAlternateFilename_completion___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  (*(*(a1 + 32) + 16))();
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      [v3 CGRectValue];
      v5 = NSStringFromRect(v9);
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Expanded entry view frame: %@", &v6, 0xCu);
    }
  }
}

- (void)showInsertedItemInEntryView
{
  v2 = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [v2 showInsertedItemInEntryView];
}

- (BOOL)canInsertMessageWithExtensionBundleIdentifier:(id)a3
{
  v37[3] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E6963618] bundleProxyForCurrentProcess];
  v5 = objc_opt_class();
  v6 = [v4 entitlementValueForKey:@"com.apple.private.messages.associated-message-extension-bundle-identifiers" ofClass:v5 valuesOfClass:objc_opt_class()];
  v7 = [v3 length];
  v8 = [v3 hasPrefix:@"com.apple."];
  v9 = [v6 containsObject:v3];
  v10 = *MEMORY[0x1E69A68E0];
  v37[0] = *MEMORY[0x1E69A6930];
  v37[1] = v10;
  v37[2] = *MEMORY[0x1E69A6920];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:3];
  if ((v9 & [v11 containsObject:v3]) == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v36 = v3;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Overriding pluginKitProxy identifier with %@ from a bundle app", buf, 0xCu);
      }
    }

LABEL_6:
    LOBYTE(v13) = 1;
  }

  else if (((v7 != 0) & v8 & v9) == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v36 = v3;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Overriding pluginKitProxy identifier with %@", buf, 0xCu);
      }
    }

    v15 = [MEMORY[0x1E6963678] pluginKitProxyForIdentifier:v3];
    LOBYTE(v13) = IMIsPlugInProxyAMessagesExtensionPoint() != 0;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v16 = [v4 plugInKitPlugins];
      v17 = [v16 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v17)
      {
        v18 = *v30;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v30 != v18)
            {
              objc_enumerationMutation(v16);
            }

            if (IMIsPlugInProxyAMessagesExtensionPoint())
            {

              goto LABEL_6;
            }
          }

          v17 = [v16 countByEnumeratingWithState:&v29 objects:v34 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }
    }

    if ([v6 count])
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v20 = v6;
      v13 = [v20 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v13)
      {
        v21 = *v26;
        while (2)
        {
          for (j = 0; j != v13; ++j)
          {
            if (*v26 != v21)
            {
              objc_enumerationMutation(v20);
            }

            v23 = [MEMORY[0x1E6963678] pluginKitProxyForIdentifier:{*(*(&v25 + 1) + 8 * j), v25}];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && IMIsPlugInProxyAMessagesExtensionPoint())
            {

              LOBYTE(v13) = 1;
              goto LABEL_39;
            }
          }

          v13 = [v20 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

LABEL_39:
    }

    else
    {
LABEL_36:
      LOBYTE(v13) = 0;
    }
  }

  return v13;
}

- (BOOL)insertMessage:(id)a3 extensionBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CKSMSComposeController *)self canInsertMessageWithExtensionBundleIdentifier:v7])
  {
    v8 = [[CKRemoteItemForSending alloc] initWithMSMessage:v6];
    v9 = v8 != 0;
    if (v8)
    {
      v10 = [(CKSMSComposeController *)self remoteViewControllerProxy];
      v11 = v10;
      if (v7)
      {
        [v10 insertRemoteItemForSending:v8 extensionBundleIdentifier:v7];
      }

      else
      {
        [v10 insertRemoteItemForSending:v8];
      }
    }

    else
    {
      if (!IMOSLoggingEnabled())
      {
LABEL_11:

        goto LABEL_12;
      }

      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "CKSMSComposeController. Could not initialize CKRemoteItemForSending object.", v13, 2u);
      }
    }

    goto LABEL_11;
  }

  v9 = 0;
LABEL_12:

  return v9;
}

- (void)setText:(id)a3 subject:(id)a4 addresses:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [v11 setText:v10 subject:v9 addresses:v8];
}

- (void)setText:(id)a3 subject:(id)a4 addresses:(id)a5 chatGUID:(id)a6 groupName:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [v17 setText:v16 subject:v15 addresses:v14 chatGUID:v13 groupName:v12];
}

- (void)setText:(id)a3 subject:(id)a4 addresses:(id)a5 shouldHideClearPluginButton:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [v13 setText:v12 subject:v11 addresses:v10 shouldHideClearPluginButton:v6];
}

- (void)setText:(id)a3 subject:(id)a4 addresses:(id)a5 shouldHideClearPluginButton:(BOOL)a6 chatGUID:(id)a7
{
  v7 = a6;
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [v16 setText:v15 subject:v14 addresses:v13 shouldHideClearPluginButton:v7 chatGUID:v12];
}

- (void)setPendingAddresses:(id)a3
{
  v4 = a3;
  v5 = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [v5 setPendingAddresses:v4];
}

- (void)configureForDeviceValidation
{
  v2 = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [v2 configureForDeviceValidation];
}

- (void)setCanEditRecipients:(BOOL)a3
{
  v3 = a3;
  v4 = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [v4 setCanEditRecipients:v3];
}

- (void)setShouldDisableEntryField:(BOOL)a3
{
  v3 = a3;
  v4 = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [v4 setShouldDisableEntryField:v3];
}

- (void)setShouldIgnoreEmailsWhenSending:(BOOL)a3
{
  v3 = a3;
  v4 = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [v4 setShouldIgnoreEmailsWhenSending:v3];
}

- (BOOL)insertFileURLForCollaboration:(id)a3 collaborationShareOptions:(id)a4 metadata:(id)a5 isCollaboration:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [v13 insertFileURLForCollaboration:v12 collaborationShareOptions:v11 metadata:v10 sendAsCopyURL:0 isCollaboration:v6];

  return 1;
}

- (BOOL)insertFileURLForCollaboration:(id)a3 collaborationShareOptions:(id)a4 metadata:(id)a5 sendAsCopyURL:(id)a6 isCollaboration:(BOOL)a7
{
  v7 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [v16 insertFileURLForCollaboration:v15 collaborationShareOptions:v14 metadata:v13 sendAsCopyURL:v12 isCollaboration:v7];

  return 1;
}

- (BOOL)insertFileURLForCollaboration:(id)a3 collaborationShareOptions:(id)a4 metadata:(id)a5 sendAsCopyURL:(id)a6 isCollaboration:(BOOL)a7 completionHandler:(id)a8
{
  v8 = a7;
  v14 = a8;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [v19 insertFileURLForCollaboration:v18 collaborationShareOptions:v17 metadata:v16 sendAsCopyURL:v15 isCollaboration:v8 completionHandler:v14];

  return 1;
}

- (BOOL)insertSWYPendingCollaboration:(id)a3 collaborationShareOptions:(id)a4 collaborationMetadata:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [v11 insertSWYPendingCollaboration:v10 collaborationShareOptions:v9 collaborationMetadata:v8];

  return 1;
}

- (BOOL)insertSWYPendingCollaboration:(id)a3 collaborationShareOptions:(id)a4 collaborationMetadata:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [v14 insertSWYPendingCollaboration:v13 collaborationShareOptions:v12 collaborationMetadata:v11 completionHandler:v10];

  return 1;
}

- (BOOL)insertSWYPendingCollaboration:(id)a3 collaborationShareOptions:(id)a4 collaborationMetadata:(id)a5 sendAsCopyURL:(id)a6 isCollaboration:(BOOL)a7 completionHandler:(id)a8
{
  v8 = a7;
  v14 = a8;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [v19 insertSWYPendingCollaboration:v18 collaborationShareOptions:v17 collaborationMetadata:v16 sendAsCopyURL:v15 isCollaboration:v8 completionHandler:v14];

  return 1;
}

- (BOOL)insertCKShareForCollaboration:(id)a3 containerSetupInfo:(id)a4 collaborationShareOptions:(id)a5 isCollaboration:(BOOL)a6 completionHandler:(id)a7
{
  v8 = a6;
  v25 = *MEMORY[0x1E69E9840];
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
      *v20 = 138413058;
      *&v20[4] = v12;
      if (v8)
      {
        v17 = @"YES";
      }

      *&v20[12] = 2112;
      *&v20[14] = v13;
      v21 = 2112;
      v22 = v14;
      v23 = 2112;
      v24 = v17;
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "insertCKShareForCollaboration called with share: %@, containerSetupInfo = %@, collaborationShareOptions = %@, isCollaboration = %@", v20, 0x2Au);
    }
  }

  v18 = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [v18 insertCKShareForCollaboration:v12 containerSetupInfo:v13 collaborationShareOptions:v14 isCollaboration:v8 completionHandler:v15];

  return 1;
}

- (BOOL)insertCKShareForCollaboration:(id)a3 containerSetupInfo:(id)a4 collaborationShareOptions:(id)a5 isCollaboration:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [v13 insertCKShareForCollaboration:v12 containerSetupInfo:v11 collaborationShareOptions:v10 isCollaboration:v6];

  return 1;
}

- (BOOL)insertGroupActivity:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "insertGroupActivity called", v8, 2u);
    }
  }

  v6 = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [v6 insertGroupActivity:v4];

  return 1;
}

- (void)setNavBarTitle:(id)a3
{
  v4 = a3;
  v5 = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [v5 setNavBarTitle:v4];
}

- (void)disableCameraAttachments
{
  v2 = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [v2 disableCameraAttachments];
}

- (void)forceCancelComposition
{
  v2 = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [v2 forceCancelComposition];
}

- (void)forceMMS
{
  v2 = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [v2 forceMMS];
}

- (void)setGameCenterModeWithPickerBlock:(id)a3
{
  v4 = a3;
  v5 = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [v5 setGameCenterModeWithPickerBlock:v4];
}

- (void)setGameCenterPickedHandles:(id)a3 playerNames:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [v8 setGameCenterPickedHandles:v7 playerNames:v6];
}

- (void)setUICustomizationData:(id)a3
{
  v5 = a3;
  if ((_UIApplicationUsesLegacyUI() & 1) == 0)
  {
    v4 = [(CKSMSComposeController *)self remoteViewControllerProxy];
    [v4 setUICustomizationData:v5];
  }
}

- (void)setUTIs:(id)a3
{
  v4 = a3;
  v5 = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [v5 setUTIs:v4];
}

- (void)setContentURLs:(id)a3
{
  v4 = a3;
  v5 = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [v5 setContentURLs:v4];
}

- (void)setPhotoIDs:(id)a3
{
  v4 = a3;
  v5 = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [v5 setPhotoIDs:v4];
}

- (void)setCloudPhotoIDs:(id)a3
{
  v4 = a3;
  v5 = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [v5 setCloudPhotoIDs:v4];
}

- (void)setContentText:(id)a3
{
  v4 = a3;
  v5 = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [v5 setContentText:v4];
}

- (void)setShareSheetSessionID:(id)a3
{
  v4 = a3;
  v5 = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [v5 setShareSheetSessionID:v4];
}

- (void)setServiceId:(id)a3
{
  v4 = a3;
  v5 = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [v5 setServiceId:v4];
}

- (void)setSuggestions:(id)a3
{
  v4 = a3;
  v5 = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [v5 setSuggestions:v4];
}

- (void)smsComposeControllerDataInserted
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained smsComposeControllerDataInserted:self];
}

- (void)smsComposeControllerAppeared
{
  v3 = [MEMORY[0x1E69A6160] sharedInstance];
  [v3 _forceResumed];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained smsComposeControllerAppeared:self];
}

- (void)smsComposeControllerCancelled
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained smsComposeControllerCancelled:self];
}

- (void)smsComposeControllerEntryViewContentInserted
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained smsComposeControllerDataInserted:self];
}

- (void)smsComposeControllerShouldSendMessageWithText:(id)a3 toRecipients:(id)a4 completion:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 smsComposeControllerShouldSendMessageWithText:v13 toRecipients:v8 completion:v9];
  }

  else
  {
    v9[2](v9, 1);
  }
}

- (void)smsComposeControllerSendStartedWithText:(id)a3 messageGUID:(id)a4
{
  v13 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  v9 = objc_loadWeakRetained(&self->_delegate);
  v10 = v9;
  if (v8)
  {
    [v9 smsComposeControllerSendStarted:self withText:v13 messageGUID:v6];
  }

  else
  {
    v11 = objc_opt_respondsToSelector();

    v12 = objc_loadWeakRetained(&self->_delegate);
    v10 = v12;
    if (v11)
    {
      [v12 smsComposeControllerSendStarted:self withText:v13];
    }

    else
    {
      [v12 smsComposeControllerSendStarted:self];
    }
  }
}

- (void)setTextEntryContentsVisible:(BOOL)a3
{
  v3 = a3;
  v4 = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [v4 setTextEntryContentsVisible:v3];
}

- (void)_addRemoteVCIfNeeded
{
  if (self->_safeToAdd)
  {
    v3 = [(CKSMSComposeController *)self remoteViewController];
    v4 = v3 != 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(CKSMSComposeController *)self remoteViewController];
  v6 = [v5 parentViewController];

  if (v4 && !v6)
  {
    v7 = [(CKSMSComposeController *)self remoteViewController];
    [(CKSMSComposeController *)self addChildViewController:v7];

    v8 = [(CKSMSComposeController *)self view];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [(CKSMSComposeController *)self remoteViewController];
    v18 = [v17 view];
    [v18 setFrame:{v10, v12, v14, v16}];

    v19 = [(CKSMSComposeController *)self view];
    v20 = [(CKSMSComposeController *)self remoteViewController];
    v21 = [v20 view];
    [v19 addSubview:v21];

    v22 = [(CKSMSComposeController *)self remoteViewController];
    [v22 didMoveToParentViewController:self];
  }
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = CKSMSComposeController;
  [(CKSMSComposeController *)&v7 viewDidLoad];
  v3 = [(CKSMSComposeController *)self view];
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 theme];
  v6 = [v5 transcriptBackgroundColor];
  [v3 setBackgroundColor:v6];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  self->_safeToAdd = 0;
  v5 = [(CKSMSComposeController *)self navigationController];
  [v5 setNavigationBarHidden:1 animated:0];

  v6.receiver = self;
  v6.super_class = CKSMSComposeController;
  [(CKSMSComposeController *)&v6 viewWillAppear:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  self->_safeToAdd = 1;
  [(CKSMSComposeController *)self _addRemoteVCIfNeeded];
  v6.receiver = self;
  v6.super_class = CKSMSComposeController;
  [(CKSMSComposeController *)&v6 viewDidAppear:v3];
  v5 = [MEMORY[0x1E69DC668] sharedApplication];
  if ([v5 statusBarStyle])
  {
    self->_didChangeStatusBarStyle = 1;
    self->_savedStatusBarStyle = [v5 statusBarStyle];
    [v5 setStatusBarStyle:0];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CKSMSComposeController;
  [(CKSMSComposeController *)&v6 viewWillDisappear:a3];
  if (self->_didChangeStatusBarStyle)
  {
    savedStatusBarStyle = self->_savedStatusBarStyle;
    v5 = [MEMORY[0x1E69DC668] sharedApplication];
    [v5 setStatusBarStyle:savedStatusBarStyle];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = CKSMSComposeController;
  [(CKSMSComposeController *)&v3 viewDidDisappear:a3];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3
{
  v4 = [(CKSMSComposeController *)self remoteViewController];
  LOBYTE(a3) = [v4 shouldAutorotateToInterfaceOrientation:a3];

  return a3;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end