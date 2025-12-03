@interface CKSMSComposeController
+ (BOOL)canSendPhotos:(int)photos videos:(int)videos audioClips:(int)clips;
- (BOOL)canInsertMessageWithExtensionBundleIdentifier:(id)identifier;
- (BOOL)insertAttachmentWithURL:(id)l andDescription:(id)description;
- (BOOL)insertCKShareForCollaboration:(id)collaboration containerSetupInfo:(id)info collaborationShareOptions:(id)options isCollaboration:(BOOL)isCollaboration;
- (BOOL)insertCKShareForCollaboration:(id)collaboration containerSetupInfo:(id)info collaborationShareOptions:(id)options isCollaboration:(BOOL)isCollaboration completionHandler:(id)handler;
- (BOOL)insertData:(id)data MIMEType:(id)type exportedFilename:(id)filename;
- (BOOL)insertFileURLForCollaboration:(id)collaboration collaborationShareOptions:(id)options metadata:(id)metadata isCollaboration:(BOOL)isCollaboration;
- (BOOL)insertFileURLForCollaboration:(id)collaboration collaborationShareOptions:(id)options metadata:(id)metadata sendAsCopyURL:(id)l isCollaboration:(BOOL)isCollaboration;
- (BOOL)insertFileURLForCollaboration:(id)collaboration collaborationShareOptions:(id)options metadata:(id)metadata sendAsCopyURL:(id)l isCollaboration:(BOOL)isCollaboration completionHandler:(id)handler;
- (BOOL)insertFilename:(id)filename MIMEType:(id)type exportedFilename:(id)exportedFilename options:(id)options;
- (BOOL)insertGroupActivity:(id)activity;
- (BOOL)insertMessage:(id)message extensionBundleIdentifier:(id)identifier;
- (BOOL)insertRichLinkWithURL:(id)l andData:(id)data;
- (BOOL)insertSWYPendingCollaboration:(id)collaboration collaborationShareOptions:(id)options collaborationMetadata:(id)metadata;
- (BOOL)insertSWYPendingCollaboration:(id)collaboration collaborationShareOptions:(id)options collaborationMetadata:(id)metadata completionHandler:(id)handler;
- (BOOL)insertSWYPendingCollaboration:(id)collaboration collaborationShareOptions:(id)options collaborationMetadata:(id)metadata sendAsCopyURL:(id)l isCollaboration:(BOOL)isCollaboration completionHandler:(id)handler;
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation;
- (CKSMSComposeController)init;
- (CKSMSComposeController)initWithNavigationController:(id)controller;
- (id)delegate;
- (void)_addRemoteVCIfNeeded;
- (void)configureForDeviceValidation;
- (void)dealloc;
- (void)disableCameraAttachments;
- (void)forceCancelComposition;
- (void)forceMMS;
- (void)insertItemForSendingAndCalculateEntryViewFrame:(id)frame withAlternateFilename:(id)filename completion:(id)completion;
- (void)setCanEditRecipients:(BOOL)recipients;
- (void)setCloudPhotoIDs:(id)ds;
- (void)setContentText:(id)text;
- (void)setContentURLs:(id)ls;
- (void)setGameCenterModeWithPickerBlock:(id)block;
- (void)setGameCenterPickedHandles:(id)handles playerNames:(id)names;
- (void)setNavBarTitle:(id)title;
- (void)setPendingAddresses:(id)addresses;
- (void)setPhotoIDs:(id)ds;
- (void)setServiceId:(id)id;
- (void)setShareSheetSessionID:(id)d;
- (void)setShouldDisableEntryField:(BOOL)field;
- (void)setShouldIgnoreEmailsWhenSending:(BOOL)sending;
- (void)setSuggestions:(id)suggestions;
- (void)setText:(id)text subject:(id)subject addresses:(id)addresses;
- (void)setText:(id)text subject:(id)subject addresses:(id)addresses chatGUID:(id)d groupName:(id)name;
- (void)setText:(id)text subject:(id)subject addresses:(id)addresses shouldHideClearPluginButton:(BOOL)button;
- (void)setText:(id)text subject:(id)subject addresses:(id)addresses shouldHideClearPluginButton:(BOOL)button chatGUID:(id)d;
- (void)setTextEntryContentsVisible:(BOOL)visible;
- (void)setUICustomizationData:(id)data;
- (void)setUTIs:(id)is;
- (void)showInsertedItemInEntryView;
- (void)smsComposeControllerAppeared;
- (void)smsComposeControllerCancelled;
- (void)smsComposeControllerDataInserted;
- (void)smsComposeControllerEntryViewContentInserted;
- (void)smsComposeControllerSendStartedWithText:(id)text messageGUID:(id)d;
- (void)smsComposeControllerShouldSendMessageWithText:(id)text toRecipients:(id)recipients completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewServiceDidTerminateWithError:(id)error;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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

- (CKSMSComposeController)initWithNavigationController:(id)controller
{
  objc_storeStrong(&self->_clientNavigationController, controller);

  return [(CKSMSComposeController *)self init];
}

- (void)dealloc
{
  [(CKSMSComposeController *)self setRemoteViewControllerProxy:0];
  remoteViewController = [(CKSMSComposeController *)self remoteViewController];
  view = [remoteViewController view];
  [view removeFromSuperview];

  remoteViewController2 = [(CKSMSComposeController *)self remoteViewController];
  [remoteViewController2 removeFromParentViewController];

  remoteViewController3 = [(CKSMSComposeController *)self remoteViewController];
  [remoteViewController3 setDelegate:0];

  [(CKSMSComposeController *)self setRemoteViewController:0];
  v7.receiver = self;
  v7.super_class = CKSMSComposeController;
  [(CKSMSComposeController *)&v7 dealloc];
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  cancellationInvocation = self->_cancellationInvocation;
  if (cancellationInvocation)
  {
    invoke = [(_UIAsyncInvocation *)cancellationInvocation invoke];
    v6 = self->_cancellationInvocation;
    self->_cancellationInvocation = 0;
  }

  [(CKSMSComposeController *)self smsComposeControllerCancelled];
}

+ (BOOL)canSendPhotos:(int)photos videos:(int)videos audioClips:(int)clips
{
  v7 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  memset(&v6[4], 0, 28);
  v6[2] = videos;
  v6[3] = photos;
  v6[1] = clips;
  return CKClientComposeCanSendMediaObjectTypes(v6);
}

- (BOOL)insertFilename:(id)filename MIMEType:(id)type exportedFilename:(id)exportedFilename options:(id)options
{
  optionsCopy = options;
  exportedFilenameCopy = exportedFilename;
  typeCopy = type;
  filenameCopy = filename;
  remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy insertFilename:filenameCopy MIMEType:typeCopy exportedFilename:exportedFilenameCopy options:optionsCopy];

  return 1;
}

- (BOOL)insertData:(id)data MIMEType:(id)type exportedFilename:(id)filename
{
  filenameCopy = filename;
  typeCopy = type;
  dataCopy = data;
  remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy insertData:dataCopy MIMEType:typeCopy exportedFilename:filenameCopy];

  return 1;
}

- (BOOL)insertAttachmentWithURL:(id)l andDescription:(id)description
{
  lCopy = l;
  descriptionCopy = description;
  v8 = [[CKRemoteItemForSending alloc] initWithAttachmentURL:lCopy description:descriptionCopy blockOnPreviewCreation:!self->_firstItemWasInserted];
  if (v8)
  {
    remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
    [remoteViewControllerProxy insertRemoteItemForSending:v8];

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

- (BOOL)insertRichLinkWithURL:(id)l andData:(id)data
{
  v19 = *MEMORY[0x1E69E9840];
  lCopy = l;
  dataCopy = data;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [dataCopy length];
      v10 = @"YES";
      if (!lCopy)
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

  v11 = [[CKRemoteItemForSending alloc] initWithRichLinkWithURL:lCopy data:dataCopy];
  if (v11)
  {
    remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
    [remoteViewControllerProxy insertRemoteItemForSending:v11];
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

- (void)insertItemForSendingAndCalculateEntryViewFrame:(id)frame withAlternateFilename:(id)filename completion:(id)completion
{
  frameCopy = frame;
  filenameCopy = filename;
  completionCopy = completion;
  v11 = [[CKRemoteItemForSending alloc] initWithAttachmentURL:frameCopy description:filenameCopy blockOnPreviewCreation:0];
  if (v11)
  {
    remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __106__CKSMSComposeController_insertItemForSendingAndCalculateEntryViewFrame_withAlternateFilename_completion___block_invoke;
    v15[3] = &unk_1E72F5BA8;
    v16 = completionCopy;
    [remoteViewControllerProxy insertRemoteItemForSendingAndCalculateEntryViewFrame:v11 completion:v15];
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
  remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy showInsertedItemInEntryView];
}

- (BOOL)canInsertMessageWithExtensionBundleIdentifier:(id)identifier
{
  v37[3] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  bundleProxyForCurrentProcess = [MEMORY[0x1E6963618] bundleProxyForCurrentProcess];
  v5 = objc_opt_class();
  v6 = [bundleProxyForCurrentProcess entitlementValueForKey:@"com.apple.private.messages.associated-message-extension-bundle-identifiers" ofClass:v5 valuesOfClass:objc_opt_class()];
  v7 = [identifierCopy length];
  v8 = [identifierCopy hasPrefix:@"com.apple."];
  v9 = [v6 containsObject:identifierCopy];
  v10 = *MEMORY[0x1E69A68E0];
  v37[0] = *MEMORY[0x1E69A6930];
  v37[1] = v10;
  v37[2] = *MEMORY[0x1E69A6920];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:3];
  if ((v9 & [v11 containsObject:identifierCopy]) == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v36 = identifierCopy;
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
        v36 = identifierCopy;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Overriding pluginKitProxy identifier with %@", buf, 0xCu);
      }
    }

    v15 = [MEMORY[0x1E6963678] pluginKitProxyForIdentifier:identifierCopy];
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
      plugInKitPlugins = [bundleProxyForCurrentProcess plugInKitPlugins];
      v17 = [plugInKitPlugins countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v17)
      {
        v18 = *v30;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v30 != v18)
            {
              objc_enumerationMutation(plugInKitPlugins);
            }

            if (IMIsPlugInProxyAMessagesExtensionPoint())
            {

              goto LABEL_6;
            }
          }

          v17 = [plugInKitPlugins countByEnumeratingWithState:&v29 objects:v34 count:16];
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

- (BOOL)insertMessage:(id)message extensionBundleIdentifier:(id)identifier
{
  messageCopy = message;
  identifierCopy = identifier;
  if ([(CKSMSComposeController *)self canInsertMessageWithExtensionBundleIdentifier:identifierCopy])
  {
    v8 = [[CKRemoteItemForSending alloc] initWithMSMessage:messageCopy];
    v9 = v8 != 0;
    if (v8)
    {
      remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
      v11 = remoteViewControllerProxy;
      if (identifierCopy)
      {
        [remoteViewControllerProxy insertRemoteItemForSending:v8 extensionBundleIdentifier:identifierCopy];
      }

      else
      {
        [remoteViewControllerProxy insertRemoteItemForSending:v8];
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

- (void)setText:(id)text subject:(id)subject addresses:(id)addresses
{
  addressesCopy = addresses;
  subjectCopy = subject;
  textCopy = text;
  remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy setText:textCopy subject:subjectCopy addresses:addressesCopy];
}

- (void)setText:(id)text subject:(id)subject addresses:(id)addresses chatGUID:(id)d groupName:(id)name
{
  nameCopy = name;
  dCopy = d;
  addressesCopy = addresses;
  subjectCopy = subject;
  textCopy = text;
  remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy setText:textCopy subject:subjectCopy addresses:addressesCopy chatGUID:dCopy groupName:nameCopy];
}

- (void)setText:(id)text subject:(id)subject addresses:(id)addresses shouldHideClearPluginButton:(BOOL)button
{
  buttonCopy = button;
  addressesCopy = addresses;
  subjectCopy = subject;
  textCopy = text;
  remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy setText:textCopy subject:subjectCopy addresses:addressesCopy shouldHideClearPluginButton:buttonCopy];
}

- (void)setText:(id)text subject:(id)subject addresses:(id)addresses shouldHideClearPluginButton:(BOOL)button chatGUID:(id)d
{
  buttonCopy = button;
  dCopy = d;
  addressesCopy = addresses;
  subjectCopy = subject;
  textCopy = text;
  remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy setText:textCopy subject:subjectCopy addresses:addressesCopy shouldHideClearPluginButton:buttonCopy chatGUID:dCopy];
}

- (void)setPendingAddresses:(id)addresses
{
  addressesCopy = addresses;
  remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy setPendingAddresses:addressesCopy];
}

- (void)configureForDeviceValidation
{
  remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy configureForDeviceValidation];
}

- (void)setCanEditRecipients:(BOOL)recipients
{
  recipientsCopy = recipients;
  remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy setCanEditRecipients:recipientsCopy];
}

- (void)setShouldDisableEntryField:(BOOL)field
{
  fieldCopy = field;
  remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy setShouldDisableEntryField:fieldCopy];
}

- (void)setShouldIgnoreEmailsWhenSending:(BOOL)sending
{
  sendingCopy = sending;
  remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy setShouldIgnoreEmailsWhenSending:sendingCopy];
}

- (BOOL)insertFileURLForCollaboration:(id)collaboration collaborationShareOptions:(id)options metadata:(id)metadata isCollaboration:(BOOL)isCollaboration
{
  isCollaborationCopy = isCollaboration;
  metadataCopy = metadata;
  optionsCopy = options;
  collaborationCopy = collaboration;
  remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy insertFileURLForCollaboration:collaborationCopy collaborationShareOptions:optionsCopy metadata:metadataCopy sendAsCopyURL:0 isCollaboration:isCollaborationCopy];

  return 1;
}

- (BOOL)insertFileURLForCollaboration:(id)collaboration collaborationShareOptions:(id)options metadata:(id)metadata sendAsCopyURL:(id)l isCollaboration:(BOOL)isCollaboration
{
  isCollaborationCopy = isCollaboration;
  lCopy = l;
  metadataCopy = metadata;
  optionsCopy = options;
  collaborationCopy = collaboration;
  remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy insertFileURLForCollaboration:collaborationCopy collaborationShareOptions:optionsCopy metadata:metadataCopy sendAsCopyURL:lCopy isCollaboration:isCollaborationCopy];

  return 1;
}

- (BOOL)insertFileURLForCollaboration:(id)collaboration collaborationShareOptions:(id)options metadata:(id)metadata sendAsCopyURL:(id)l isCollaboration:(BOOL)isCollaboration completionHandler:(id)handler
{
  isCollaborationCopy = isCollaboration;
  handlerCopy = handler;
  lCopy = l;
  metadataCopy = metadata;
  optionsCopy = options;
  collaborationCopy = collaboration;
  remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy insertFileURLForCollaboration:collaborationCopy collaborationShareOptions:optionsCopy metadata:metadataCopy sendAsCopyURL:lCopy isCollaboration:isCollaborationCopy completionHandler:handlerCopy];

  return 1;
}

- (BOOL)insertSWYPendingCollaboration:(id)collaboration collaborationShareOptions:(id)options collaborationMetadata:(id)metadata
{
  metadataCopy = metadata;
  optionsCopy = options;
  collaborationCopy = collaboration;
  remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy insertSWYPendingCollaboration:collaborationCopy collaborationShareOptions:optionsCopy collaborationMetadata:metadataCopy];

  return 1;
}

- (BOOL)insertSWYPendingCollaboration:(id)collaboration collaborationShareOptions:(id)options collaborationMetadata:(id)metadata completionHandler:(id)handler
{
  handlerCopy = handler;
  metadataCopy = metadata;
  optionsCopy = options;
  collaborationCopy = collaboration;
  remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy insertSWYPendingCollaboration:collaborationCopy collaborationShareOptions:optionsCopy collaborationMetadata:metadataCopy completionHandler:handlerCopy];

  return 1;
}

- (BOOL)insertSWYPendingCollaboration:(id)collaboration collaborationShareOptions:(id)options collaborationMetadata:(id)metadata sendAsCopyURL:(id)l isCollaboration:(BOOL)isCollaboration completionHandler:(id)handler
{
  isCollaborationCopy = isCollaboration;
  handlerCopy = handler;
  lCopy = l;
  metadataCopy = metadata;
  optionsCopy = options;
  collaborationCopy = collaboration;
  remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy insertSWYPendingCollaboration:collaborationCopy collaborationShareOptions:optionsCopy collaborationMetadata:metadataCopy sendAsCopyURL:lCopy isCollaboration:isCollaborationCopy completionHandler:handlerCopy];

  return 1;
}

- (BOOL)insertCKShareForCollaboration:(id)collaboration containerSetupInfo:(id)info collaborationShareOptions:(id)options isCollaboration:(BOOL)isCollaboration completionHandler:(id)handler
{
  isCollaborationCopy = isCollaboration;
  v25 = *MEMORY[0x1E69E9840];
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
      *v20 = 138413058;
      *&v20[4] = collaborationCopy;
      if (isCollaborationCopy)
      {
        v17 = @"YES";
      }

      *&v20[12] = 2112;
      *&v20[14] = infoCopy;
      v21 = 2112;
      v22 = optionsCopy;
      v23 = 2112;
      v24 = v17;
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "insertCKShareForCollaboration called with share: %@, containerSetupInfo = %@, collaborationShareOptions = %@, isCollaboration = %@", v20, 0x2Au);
    }
  }

  remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy insertCKShareForCollaboration:collaborationCopy containerSetupInfo:infoCopy collaborationShareOptions:optionsCopy isCollaboration:isCollaborationCopy completionHandler:handlerCopy];

  return 1;
}

- (BOOL)insertCKShareForCollaboration:(id)collaboration containerSetupInfo:(id)info collaborationShareOptions:(id)options isCollaboration:(BOOL)isCollaboration
{
  isCollaborationCopy = isCollaboration;
  optionsCopy = options;
  infoCopy = info;
  collaborationCopy = collaboration;
  remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy insertCKShareForCollaboration:collaborationCopy containerSetupInfo:infoCopy collaborationShareOptions:optionsCopy isCollaboration:isCollaborationCopy];

  return 1;
}

- (BOOL)insertGroupActivity:(id)activity
{
  activityCopy = activity;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "insertGroupActivity called", v8, 2u);
    }
  }

  remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy insertGroupActivity:activityCopy];

  return 1;
}

- (void)setNavBarTitle:(id)title
{
  titleCopy = title;
  remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy setNavBarTitle:titleCopy];
}

- (void)disableCameraAttachments
{
  remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy disableCameraAttachments];
}

- (void)forceCancelComposition
{
  remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy forceCancelComposition];
}

- (void)forceMMS
{
  remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy forceMMS];
}

- (void)setGameCenterModeWithPickerBlock:(id)block
{
  blockCopy = block;
  remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy setGameCenterModeWithPickerBlock:blockCopy];
}

- (void)setGameCenterPickedHandles:(id)handles playerNames:(id)names
{
  namesCopy = names;
  handlesCopy = handles;
  remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy setGameCenterPickedHandles:handlesCopy playerNames:namesCopy];
}

- (void)setUICustomizationData:(id)data
{
  dataCopy = data;
  if ((_UIApplicationUsesLegacyUI() & 1) == 0)
  {
    remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
    [remoteViewControllerProxy setUICustomizationData:dataCopy];
  }
}

- (void)setUTIs:(id)is
{
  isCopy = is;
  remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy setUTIs:isCopy];
}

- (void)setContentURLs:(id)ls
{
  lsCopy = ls;
  remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy setContentURLs:lsCopy];
}

- (void)setPhotoIDs:(id)ds
{
  dsCopy = ds;
  remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy setPhotoIDs:dsCopy];
}

- (void)setCloudPhotoIDs:(id)ds
{
  dsCopy = ds;
  remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy setCloudPhotoIDs:dsCopy];
}

- (void)setContentText:(id)text
{
  textCopy = text;
  remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy setContentText:textCopy];
}

- (void)setShareSheetSessionID:(id)d
{
  dCopy = d;
  remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy setShareSheetSessionID:dCopy];
}

- (void)setServiceId:(id)id
{
  idCopy = id;
  remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy setServiceId:idCopy];
}

- (void)setSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy setSuggestions:suggestionsCopy];
}

- (void)smsComposeControllerDataInserted
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained smsComposeControllerDataInserted:self];
}

- (void)smsComposeControllerAppeared
{
  mEMORY[0x1E69A6160] = [MEMORY[0x1E69A6160] sharedInstance];
  [mEMORY[0x1E69A6160] _forceResumed];

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

- (void)smsComposeControllerShouldSendMessageWithText:(id)text toRecipients:(id)recipients completion:(id)completion
{
  textCopy = text;
  recipientsCopy = recipients;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 smsComposeControllerShouldSendMessageWithText:textCopy toRecipients:recipientsCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 1);
  }
}

- (void)smsComposeControllerSendStartedWithText:(id)text messageGUID:(id)d
{
  textCopy = text;
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  v9 = objc_loadWeakRetained(&self->_delegate);
  v10 = v9;
  if (v8)
  {
    [v9 smsComposeControllerSendStarted:self withText:textCopy messageGUID:dCopy];
  }

  else
  {
    v11 = objc_opt_respondsToSelector();

    v12 = objc_loadWeakRetained(&self->_delegate);
    v10 = v12;
    if (v11)
    {
      [v12 smsComposeControllerSendStarted:self withText:textCopy];
    }

    else
    {
      [v12 smsComposeControllerSendStarted:self];
    }
  }
}

- (void)setTextEntryContentsVisible:(BOOL)visible
{
  visibleCopy = visible;
  remoteViewControllerProxy = [(CKSMSComposeController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy setTextEntryContentsVisible:visibleCopy];
}

- (void)_addRemoteVCIfNeeded
{
  if (self->_safeToAdd)
  {
    remoteViewController = [(CKSMSComposeController *)self remoteViewController];
    v4 = remoteViewController != 0;
  }

  else
  {
    v4 = 0;
  }

  remoteViewController2 = [(CKSMSComposeController *)self remoteViewController];
  parentViewController = [remoteViewController2 parentViewController];

  if (v4 && !parentViewController)
  {
    remoteViewController3 = [(CKSMSComposeController *)self remoteViewController];
    [(CKSMSComposeController *)self addChildViewController:remoteViewController3];

    view = [(CKSMSComposeController *)self view];
    [view bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    remoteViewController4 = [(CKSMSComposeController *)self remoteViewController];
    view2 = [remoteViewController4 view];
    [view2 setFrame:{v10, v12, v14, v16}];

    view3 = [(CKSMSComposeController *)self view];
    remoteViewController5 = [(CKSMSComposeController *)self remoteViewController];
    view4 = [remoteViewController5 view];
    [view3 addSubview:view4];

    remoteViewController6 = [(CKSMSComposeController *)self remoteViewController];
    [remoteViewController6 didMoveToParentViewController:self];
  }
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = CKSMSComposeController;
  [(CKSMSComposeController *)&v7 viewDidLoad];
  view = [(CKSMSComposeController *)self view];
  v4 = +[CKUIBehavior sharedBehaviors];
  theme = [v4 theme];
  transcriptBackgroundColor = [theme transcriptBackgroundColor];
  [view setBackgroundColor:transcriptBackgroundColor];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  self->_safeToAdd = 0;
  navigationController = [(CKSMSComposeController *)self navigationController];
  [navigationController setNavigationBarHidden:1 animated:0];

  v6.receiver = self;
  v6.super_class = CKSMSComposeController;
  [(CKSMSComposeController *)&v6 viewWillAppear:appearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  self->_safeToAdd = 1;
  [(CKSMSComposeController *)self _addRemoteVCIfNeeded];
  v6.receiver = self;
  v6.super_class = CKSMSComposeController;
  [(CKSMSComposeController *)&v6 viewDidAppear:appearCopy];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  if ([mEMORY[0x1E69DC668] statusBarStyle])
  {
    self->_didChangeStatusBarStyle = 1;
    self->_savedStatusBarStyle = [mEMORY[0x1E69DC668] statusBarStyle];
    [mEMORY[0x1E69DC668] setStatusBarStyle:0];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = CKSMSComposeController;
  [(CKSMSComposeController *)&v6 viewWillDisappear:disappear];
  if (self->_didChangeStatusBarStyle)
  {
    savedStatusBarStyle = self->_savedStatusBarStyle;
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    [mEMORY[0x1E69DC668] setStatusBarStyle:savedStatusBarStyle];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = CKSMSComposeController;
  [(CKSMSComposeController *)&v3 viewDidDisappear:disappear];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation
{
  remoteViewController = [(CKSMSComposeController *)self remoteViewController];
  LOBYTE(orientation) = [remoteViewController shouldAutorotateToInterfaceOrientation:orientation];

  return orientation;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end