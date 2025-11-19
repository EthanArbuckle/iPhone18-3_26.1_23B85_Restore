@interface CKModalTranscriptController
- (BOOL)_deviceIsLocked;
- (BOOL)_insertMediaObject:(id)a3;
- (BOOL)_shouldUseExistingConversations;
- (BOOL)messageEntryViewWidth:(double *)a3 andOffset:(double *)a4;
- (CKComposeAssetExplorerManager)assetExplorerManager;
- (CKModalTranscriptController)initWithNavigationController:(id)a3;
- (NSMutableArray)deferredInsertMediaObjectBlocks;
- (double)_offsetForScreenWidth:(double)a3 containerWidth:(double)a4 windowOffset:(CGPoint)a5;
- (id)proposedParticipantHandles;
- (void)_conversationListDidFinishLoading:(id)a3;
- (void)_insertMediaObjectAndReturnFrame:(id)a3;
- (void)_setConversationDeferredSetup;
- (void)_setEntryViewVisible:(BOOL)a3;
- (void)createCompositionForPluginPayload:(id)a3 shelfMediaObject:(id)a4 collaborationShareOptions:(id)a5 completionHandler:(id)a6;
- (void)disableCameraAttachments;
- (void)hideEntryViewContent:(BOOL)a3;
- (void)insertData:(id)a3 MIMEType:(id)a4 exportedFilename:(id)a5;
- (void)insertFileURL:(id)a3 filename:(id)a4 fileIsResolved:(BOOL)a5 transcoderUserInfo:(id)a6 fullyRealizedPreview:(id)a7 rawPreview:(id)a8 appendedVideoURL:(id)a9 completion:(id)a10;
- (void)insertFileURLAsMediaObject:(id)a3 filename:(id)a4 fileIsResolved:(BOOL)a5 transcoderUserInfo:(id)a6 fullyRealizedPreview:(id)a7 rawPreview:(id)a8 appendedVideoURL:(id)a9;
- (void)insertFileURLForCollaboration:(id)a3 collaborationShareOptions:(id)a4 metadata:(id)a5 sendAsCopyURL:(id)a6 isCollaboration:(BOOL)a7 completionHandler:(id)a8;
- (void)insertGroupActivity:(id)a3;
- (void)insertMessage:(id)a3 bundleProxy:(id)a4 extensionBundleIdentifier:(id)a5;
- (void)insertRichLinkWithCloudKitShare:(id)a3 containerSetupInfo:(id)a4 collaborationShareOptions:(id)a5 isCollaboration:(BOOL)a6;
- (void)insertRichLinkWithCloudKitShare:(id)a3 containerSetupInfo:(id)a4 collaborationShareOptions:(id)a5 isCollaboration:(BOOL)a6 completionHandler:(id)a7;
- (void)insertRichLinkWithURL:(id)a3 sendAsCopyURL:(id)a4 data:(id)a5 collaborationType:(int64_t)a6 collaborationShareOptions:(id)a7 metadata:(id)a8 isCollaboration:(BOOL)a9 completionHandler:(id)a10;
- (void)insertSWYPendingCollaboration:(id)a3 collaborationShareOptions:(id)a4 collaborationMetadata:(id)a5 sendAsCopyURL:(id)a6 isCollaboration:(BOOL)a7 completionHandler:(id)a8;
- (void)loadChatInputController;
- (void)registerForNotifications;
- (void)sendComposition:(id)a3;
- (void)setCanEditRecipients:(BOOL)a3;
- (void)setComposition:(id)a3;
- (void)setCompositionForPluginPayload:(id)a3 shelfMediaObject:(id)a4 collaborationShareOptions:(id)a5 completionHandler:(id)a6;
- (void)setEntryView:(id)a3;
- (void)setForceMMS:(BOOL)a3;
- (void)setPendingAddresses:(id)a3;
- (void)setTextEntryContentsVisible:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CKModalTranscriptController

- (CKModalTranscriptController)initWithNavigationController:(id)a3
{
  v11.receiver = self;
  v11.super_class = CKModalTranscriptController;
  v3 = [(CKComposeChatController *)&v11 initWithRecipientAddresses:0 composition:0 bizIntent:0];
  if (v3)
  {
    v4 = objc_alloc_init(CKChatEagerUploadController);
    eagerUploadController = v3->_eagerUploadController;
    v3->_eagerUploadController = v4;

    if (([MEMORY[0x1E69DCBB8] usesInputSystemUI] & 1) == 0)
    {
      v6 = [MEMORY[0x1E69DCBE0] sharedInstance];
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = [MEMORY[0x1E69DCBE0] sharedInstance];
        v9 = objc_opt_new();
        [v8 setDelegate:v9 force:1];
      }
    }

    IMIsSupportedUTIType();
  }

  return v3;
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CKModalTranscriptController;
  [(CKShareSheetChatController *)&v6 viewDidAppear:a3];
  [(CKModalTranscriptController *)self setAppearCompleted:1];
  v4 = [(CKChatController *)self entryView];
  v5 = [v4 contentView];
  [v5 setForceEnsureTextViewVisble:0];
}

- (void)setComposition:(id)a3
{
  v4.receiver = self;
  v4.super_class = CKModalTranscriptController;
  [(CKChatController *)&v4 setComposition:a3];
  [(CKChatEagerUploadController *)self->_eagerUploadController cancelAll];
}

- (void)setEntryView:(id)a3
{
  v6.receiver = self;
  v6.super_class = CKModalTranscriptController;
  [(CKChatController *)&v6 setEntryView:a3];
  if (![(CKModalTranscriptController *)self appearCompleted])
  {
    v4 = [(CKChatController *)self entryView];
    v5 = [v4 contentView];
    [v5 setForceEnsureTextViewVisble:1];
  }
}

- (void)_insertMediaObjectAndReturnFrame:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __64__CKModalTranscriptController__insertMediaObjectAndReturnFrame___block_invoke;
    aBlock[3] = &unk_1E72EB8D0;
    aBlock[4] = self;
    v13 = v4;
    v6 = _Block_copy(aBlock);
    v7 = v6;
    if (self->_alreadySetUp)
    {
      (*(v6 + 2))(v6);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *v11 = 0;
          _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "!_alreadySetUp, deferring insert block", v11, 2u);
        }
      }

      v9 = [(CKModalTranscriptController *)self deferredInsertMediaObjectBlocks];
      v10 = _Block_copy(v7);
      [v9 addObject:v10];
    }
  }
}

void __64__CKModalTranscriptController__insertMediaObjectAndReturnFrame___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) composition];
  if (v2)
  {
    goto LABEL_4;
  }

  v3 = [*(a1 + 32) prepopulatedComposition];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v4 prepopulatedComposition];
    [v4 setComposition:v5];

    v2 = [*(a1 + 32) composition];
LABEL_4:
    v6 = v2;
    v7 = [v2 compositionByAppendingMediaObject:*(a1 + 40)];

    goto LABEL_5;
  }

  v7 = [CKComposition compositionWithMediaObject:*(a1 + 40) subject:0];
LABEL_5:
  v8 = [*(a1 + 32) conversation];
  if (![v8 recipientCount])
  {

    goto LABEL_13;
  }

  v9 = [*(a1 + 32) conversation];
  v10 = [v9 canSendComposition:v7 error:0];

  if (v10)
  {
LABEL_13:
    [*(a1 + 32) setComposition:v7];
    goto LABEL_14;
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Can't insert composition now, setting prepopulated composition", v12, 2u);
    }
  }

  [*(a1 + 32) setPrepopulatedComposition:v7];
LABEL_14:
}

- (BOOL)_insertMediaObject:(id)a3
{
  v4 = a3;
  if (v4 && !self->_alreadySetUp)
  {
    v5 = [(CKChatController *)self composition];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 compositionByAppendingMediaObject:v4];
    }

    else
    {
      v7 = [CKComposition compositionWithMediaObject:v4 subject:0];
    }

    v8 = [(CKCoreChatController *)self conversation];
    v9 = [v8 canSendComposition:v7 error:0];

    if (v9)
    {
      [(CKModalTranscriptController *)self setComposition:v7];
    }
  }

  return v4 != 0;
}

- (NSMutableArray)deferredInsertMediaObjectBlocks
{
  deferredInsertMediaObjectBlocks = self->_deferredInsertMediaObjectBlocks;
  if (!deferredInsertMediaObjectBlocks)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = self->_deferredInsertMediaObjectBlocks;
    self->_deferredInsertMediaObjectBlocks = v4;

    deferredInsertMediaObjectBlocks = self->_deferredInsertMediaObjectBlocks;
  }

  return deferredInsertMediaObjectBlocks;
}

- (void)insertRichLinkWithURL:(id)a3 sendAsCopyURL:(id)a4 data:(id)a5 collaborationType:(int64_t)a6 collaborationShareOptions:(id)a7 metadata:(id)a8 isCollaboration:(BOOL)a9 completionHandler:(id)a10
{
  v85[1] = *MEMORY[0x1E69E9840];
  v16 = a3;
  v45 = a4;
  v17 = a5;
  v46 = a7;
  v18 = a8;
  v19 = a10;
  v20 = v19;
  v47 = v18;
  if (self->_alreadySetUp)
  {
    if (v19)
    {
      (*(v19 + 2))(v19, 1);
    }
  }

  else
  {
    v21 = objc_alloc_init(MEMORY[0x1E69A6170]);
    [v21 startTimingForKey:@"insertRichLinkWithURL"];
    self->_alreadySetUp = 1;
    if ((v16 || a6 != 1) && (a6 != 3 || v18))
    {
      *buf = 0;
      v80 = buf;
      v81 = 0x3032000000;
      v82 = __Block_byref_object_copy__56;
      v83 = __Block_byref_object_dispose__56;
      v84 = [CKBrowserItemPayload createBrowserItemPayloadWithURL:v16 data:v17];
      [*(v80 + 5) setPayloadCollaborationType:a6];
      [*(v80 + 5) setSendAsCopyURL:v45];
      v77[0] = 0;
      v77[1] = v77;
      v77[2] = 0x3032000000;
      v77[3] = __Block_byref_object_copy__56;
      v77[4] = __Block_byref_object_dispose__56;
      v78 = 0;
      v75[0] = 0;
      v75[1] = v75;
      v75[2] = 0x3032000000;
      v75[3] = __Block_byref_object_copy__56;
      v75[4] = __Block_byref_object_dispose__56;
      v30 = v16;
      v76 = v30;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __159__CKModalTranscriptController_insertRichLinkWithURL_sendAsCopyURL_data_collaborationType_collaborationShareOptions_metadata_isCollaboration_completionHandler___block_invoke;
      aBlock[3] = &unk_1E72F6148;
      v31 = v21;
      v65 = v31;
      v43 = v18;
      v66 = v43;
      v70 = buf;
      v44 = v46;
      v67 = v44;
      v68 = self;
      v71 = v77;
      v73 = a6;
      v74 = a9;
      v32 = v45;
      v69 = v32;
      v72 = v75;
      v33 = _Block_copy(aBlock);
      if ([v30 isFileURL])
      {
        v34 = v31;
        v40 = objc_alloc_init(MEMORY[0x1E696ABF8]);
        v39 = [v40 retainAccess];
        v35 = [MEMORY[0x1E696ABF0] readingIntentWithURL:v30 options:0];
        v85[0] = v35;
        v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:1];
        v41 = [MEMORY[0x1E696ADC8] mainQueue];
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = __159__CKModalTranscriptController_insertRichLinkWithURL_sendAsCopyURL_data_collaborationType_collaborationShareOptions_metadata_isCollaboration_completionHandler___block_invoke_255;
        v48[3] = &unk_1E72F6238;
        v60 = v75;
        v38 = v35;
        v49 = v38;
        v50 = v30;
        v61 = buf;
        v63 = a9;
        v51 = v32;
        v52 = v34;
        v62 = v77;
        v58 = v33;
        v36 = v40;
        v53 = v36;
        v37 = v39;
        v54 = v37;
        v55 = v44;
        v59 = v20;
        v56 = v43;
        v57 = self;
        [v36 coordinateAccessWithIntents:v42 queue:v41 byAccessor:v48];

        v31 = v34;
      }

      else
      {
        (*(v33 + 2))(v33, 0, 0, v44);
        if (v20)
        {
          v20[2](v20, 1);
        }
      }

      _Block_object_dispose(v75, 8);
      _Block_object_dispose(v77, 8);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v22 = [CKBrowserItemPayload browserItemPayloadForCollaborationWithURL:0 collaborationType:1];
      [v22 setSendAsCopy:!a9];
      v23 = [[CKComposition alloc] initWithText:0 subject:0 shelfPluginPayload:v22];
      [(CKModalTranscriptController *)self setComposition:v23];
      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "Setting composition for the spinner for FP case.", buf, 2u);
        }
      }

      v25 = [(CKChatController *)self entryView];
      v26 = [v25 contentView];
      v27 = [v26 shelfPluginPayload];
      v28 = [v27 datasource];
      v29 = [v28 pluginPayload];

      if (v20)
      {
        v20[2](v20, 1);
      }
    }
  }
}

void __159__CKModalTranscriptController_insertRichLinkWithURL_sendAsCopyURL_data_collaborationType_collaborationShareOptions_metadata_isCollaboration_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  [*(a1 + 32) startTimingForKey:@"setCompositionForPluginPayload"];
  v10 = *(a1 + 40);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __159__CKModalTranscriptController_insertRichLinkWithURL_sendAsCopyURL_data_collaborationType_collaborationShareOptions_metadata_isCollaboration_completionHandler___block_invoke_2;
  aBlock[3] = &unk_1E72F60F8;
  v36 = *(a1 + 72);
  v30 = *(a1 + 48);
  v11 = v9;
  v12 = *(a1 + 56);
  v31 = v11;
  v32 = v12;
  v37 = *(a1 + 80);
  v33 = *(a1 + 32);
  v13 = v7;
  v34 = v13;
  v14 = v8;
  v35 = v14;
  v15 = _Block_copy(aBlock);
  v16 = *(a1 + 96);
  if (v16 == 3)
  {
    [*(*(*(a1 + 72) + 8) + 40) setSendAsCopy:(*(a1 + 104) & 1) == 0];
    if ((*(a1 + 104) & 1) == 0)
    {
      [*(*(*(a1 + 72) + 8) + 40) setUrl:*(a1 + 64)];
      v19 = +[CKMediaObjectManager sharedInstance];
      v20 = *(a1 + 64);
      v21 = [v20 lastPathComponent];
      v22 = [v21 stringByRemovingPercentEncoding];
      v23 = [v19 mediaObjectWithFileURL:v20 filename:v22 transcoderUserInfo:0];
      v24 = *(*(a1 + 80) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;
    }

    goto LABEL_6;
  }

  if (!v16)
  {
LABEL_6:
    v15[2](v15, v10);
    goto LABEL_7;
  }

  v17 = MEMORY[0x1E6994FC8];
  v18 = *(*(*(a1 + 88) + 8) + 40);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __159__CKModalTranscriptController_insertRichLinkWithURL_sendAsCopyURL_data_collaborationType_collaborationShareOptions_metadata_isCollaboration_completionHandler___block_invoke_247;
  v26[3] = &unk_1E72F6120;
  v27 = v10;
  v28 = v15;
  [v17 userNameAndEmail:v18 containerSetupInfo:0 completionHandler:v26];

LABEL_7:
}

void __159__CKModalTranscriptController_insertRichLinkWithURL_sendAsCopyURL_data_collaborationType_collaborationShareOptions_metadata_isCollaboration_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __159__CKModalTranscriptController_insertRichLinkWithURL_sendAsCopyURL_data_collaborationType_collaborationShareOptions_metadata_isCollaboration_completionHandler___block_invoke_3;
  block[3] = &unk_1E72F60D0;
  v14 = *(a1 + 80);
  v11 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v15 = *(a1 + 88);
  v9 = *(a1 + 48);
  v6 = *(&v9 + 1);
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v12 = v7;
  v13 = v9;
  v8 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  [*(a1 + 64) releaseAccess:*(a1 + 72)];
}

void __159__CKModalTranscriptController_insertRichLinkWithURL_sendAsCopyURL_data_collaborationType_collaborationShareOptions_metadata_isCollaboration_completionHandler___block_invoke_3(uint64_t a1)
{
  location[3] = *MEMORY[0x1E69E9840];
  [*(*(*(a1 + 72) + 8) + 40) setCollaborationMetadata:*(a1 + 32)];
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 48) summary];
    v4 = v3;
    if (!v3)
    {
      v1 = CKFrameworkBundle();
      v4 = [v1 localizedStringForKey:@"DEFAULT_COLLABORATION_OPTIONS_SUMMARY" value:&stru_1F04268F8 table:@"ChatKit"];
    }

    [*(*(*(a1 + 72) + 8) + 40) setCollaborationOptionsSummary:v4];
    if (!v3)
    {
    }
  }

  v5 = [*(a1 + 56) entryView];
  v6 = [v5 contentView];
  v7 = [v6 shelfPluginPayload];
  v8 = [v7 datasource];

  if (v8)
  {
    [*(*(*(a1 + 72) + 8) + 40) setSkipConfigurePlugin:1];
    objc_initWeak(location, *(a1 + 56));
    v9 = *(a1 + 56);
    v10 = *(*(*(a1 + 72) + 8) + 40);
    v11 = *(*(*(a1 + 80) + 8) + 40);
    v12 = *(a1 + 48);
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __159__CKModalTranscriptController_insertRichLinkWithURL_sendAsCopyURL_data_collaborationType_collaborationShareOptions_metadata_isCollaboration_completionHandler___block_invoke_4;
    v19 = &unk_1E72F60A8;
    objc_copyWeak(&v21, location);
    v20 = *(a1 + 72);
    [v9 setCompositionForPluginPayload:v10 shelfMediaObject:v11 collaborationShareOptions:v12 completionHandler:&v16];
    objc_destroyWeak(&v21);
    objc_destroyWeak(location);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Datasource for existing view is nil. Setup the composition without a spinner animation.", location, 2u);
      }
    }

    [*(a1 + 56) setCompositionForPluginPayload:*(*(*(a1 + 72) + 8) + 40) shelfMediaObject:*(*(*(a1 + 80) + 8) + 40) collaborationShareOptions:*(a1 + 48)];
  }

  [*(a1 + 64) stopTimingForKey:{@"setCompositionForPluginPayload", v16, v17, v18, v19}];
  [*(a1 + 64) stopTimingForKey:@"insertRichLinkWithURL"];
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 64);
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v15;
      _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "insertRichLinkWithURL timing: %@", location, 0xCu);
    }
  }
}

void __159__CKModalTranscriptController_insertRichLinkWithURL_sendAsCopyURL_data_collaborationType_collaborationShareOptions_metadata_isCollaboration_completionHandler___block_invoke_4(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Start spinner animation.", v11, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained entryView];
  v5 = [v4 contentView];
  v6 = [v5 shelfPluginPayload];
  v7 = [v6 datasource];
  [v7 updatePayloadForShelfAnimation:*(*(*(a1 + 32) + 8) + 40)];

  v8 = objc_loadWeakRetained((a1 + 40));
  v9 = [v8 entryView];
  v10 = [v9 contentView];
  [v10 setupShelfPluginPayload:*(*(*(a1 + 32) + 8) + 40)];
}

void __159__CKModalTranscriptController_insertRichLinkWithURL_sendAsCopyURL_data_collaborationType_collaborationShareOptions_metadata_isCollaboration_completionHandler___block_invoke_247(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(MEMORY[0x1E696ADF8]);
  v11 = [v10 personNameComponentsFromString:v7];
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Updating metadata with email:%@, nameComponents: %@", &v13, 0x16u);
    }
  }

  [*(a1 + 32) setInitiatorHandle:v8];
  [*(a1 + 32) setInitiatorNameComponents:v11];
  (*(*(a1 + 40) + 16))();
}

void __159__CKModalTranscriptController_insertRichLinkWithURL_sendAsCopyURL_data_collaborationType_collaborationShareOptions_metadata_isCollaboration_completionHandler___block_invoke_255(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) URL];
  v5 = *(*(a1 + 120) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 40);
      *buf = 138412290;
      v45 = v8;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Creating media object for File URL: %@", buf, 0xCu);
    }
  }

  [*(*(*(a1 + 128) + 8) + 40) setSendAsCopy:(*(a1 + 144) & 1) == 0];
  if ((*(a1 + 144) & 1) != 0 || (v9 = *(a1 + 48)) == 0)
  {
    v9 = *(*(*(a1 + 120) + 8) + 40);
  }

  v10 = v9;
  [*(*(*(a1 + 128) + 8) + 40) setSendAsCopyURL:v10];
  [*(a1 + 56) startTimingForKey:@"create_media_object"];
  v11 = +[CKMediaObjectManager sharedInstance];
  v12 = [v10 lastPathComponent];
  v13 = [v12 stringByRemovingPercentEncoding];
  v14 = [v11 mediaObjectWithFileURL:v10 filename:v13 transcoderUserInfo:0];
  v15 = *(*(a1 + 136) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  [*(a1 + 56) stopTimingForKey:@"create_media_object"];
  if (*(a1 + 144))
  {
    if (*(a1 + 88))
    {
      (*(*(a1 + 104) + 16))();
      v17 = *(a1 + 112);
      if (v17)
      {
        (*(v17 + 16))(v17, 1);
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = *(*(*(a1 + 120) + 8) + 40);
          *buf = 138412290;
          v45 = v28;
          _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "Did not receive metadata for file URL %@, fetching metadata", buf, 0xCu);
        }
      }

      v29 = *(a1 + 80);
      v35 = *(a1 + 104);
      v30 = *(a1 + 64);
      v31 = *(a1 + 72);
      v36 = *(a1 + 112);
      v32 = *(a1 + 56);
      v33 = *(a1 + 40);
      v34 = *(a1 + 88);
      SWCollaborationMetadataForDocumentURL();
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Sending a copy with media object.", buf, 2u);
      }
    }

    v19 = MEMORY[0x1E6994FC8];
    v20 = *(*(*(a1 + 120) + 8) + 40);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __159__CKModalTranscriptController_insertRichLinkWithURL_sendAsCopyURL_data_collaborationType_collaborationShareOptions_metadata_isCollaboration_completionHandler___block_invoke_259;
    v37[3] = &unk_1E72F6198;
    v41 = *(a1 + 104);
    v21 = *(a1 + 64);
    v22 = *(a1 + 72);
    v23 = *(a1 + 80);
    v42 = *(a1 + 112);
    v24 = *(a1 + 88);
    *&v25 = v23;
    *(&v25 + 1) = v24;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v38 = v26;
    v39 = v25;
    v40 = *(a1 + 96);
    v43 = *(a1 + 128);
    [v19 userNameAndEmail:v20 containerSetupInfo:0 completionHandler:v37];
  }
}

void __159__CKModalTranscriptController_insertRichLinkWithURL_sendAsCopyURL_data_collaborationType_collaborationShareOptions_metadata_isCollaboration_completionHandler___block_invoke_259(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __159__CKModalTranscriptController_insertRichLinkWithURL_sendAsCopyURL_data_collaborationType_collaborationShareOptions_metadata_isCollaboration_completionHandler___block_invoke_2_260;
  v19[3] = &unk_1E72F6170;
  v20 = v9;
  v26 = *(a1 + 72);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v27 = *(a1 + 80);
  v13 = *(a1 + 56);
  *&v14 = v12;
  *(&v14 + 1) = v13;
  *&v15 = v10;
  *(&v15 + 1) = v11;
  v21 = v15;
  v22 = v14;
  v23 = v8;
  v24 = v7;
  v25 = *(a1 + 64);
  v28 = *(a1 + 88);
  v16 = v7;
  v17 = v8;
  v18 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], v19);
}

void __159__CKModalTranscriptController_insertRichLinkWithURL_sendAsCopyURL_data_collaborationType_collaborationShareOptions_metadata_isCollaboration_completionHandler___block_invoke_2_260(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = *(a1 + 32);
        v13 = 138412290;
        v14 = v4;
        _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Error while trying to get the user name and email : %@.", &v13, 0xCu);
      }
    }

    (*(*(a1 + 96) + 16))();
    v5 = *(a1 + 104);
    if (v5)
    {
      (*(v5 + 16))(v5, 1);
    }
  }

  else
  {
    [*(a1 + 64) setInitiatorHandle:*(a1 + 72)];
    v6 = objc_alloc_init(MEMORY[0x1E696ADF8]);
    v7 = [v6 personNameComponentsFromString:*(a1 + 80)];
    [*(a1 + 64) setInitiatorNameComponents:v7];
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 72);
        v13 = 138412546;
        v14 = v9;
        v15 = 2112;
        v16 = v7;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Updating metadata with email: %@, nameComponents: %@", &v13, 0x16u);
      }
    }

    [*(*(*(a1 + 112) + 8) + 40) setCollaborationMetadata:*(a1 + 64)];
    v10 = [*(a1 + 56) summary];
    v11 = v10;
    if (!v10)
    {
      v1 = CKFrameworkBundle();
      v11 = [v1 localizedStringForKey:@"DEFAULT_COLLABORATION_OPTIONS_SUMMARY" value:&stru_1F04268F8 table:@"ChatKit"];
    }

    [*(*(*(a1 + 112) + 8) + 40) setCollaborationOptionsSummary:v11];
    if (!v10)
    {
    }

    [*(a1 + 88) setCompositionForPluginPayload:*(*(*(a1 + 112) + 8) + 40) shelfMediaObject:*(*(*(a1 + 120) + 8) + 40) collaborationShareOptions:*(a1 + 56)];
    (*(*(a1 + 96) + 16))();
    v12 = *(a1 + 104);
    if (v12)
    {
      (*(v12 + 16))(v12, 1);
    }
  }
}

void __159__CKModalTranscriptController_insertRichLinkWithURL_sendAsCopyURL_data_collaborationType_collaborationShareOptions_metadata_isCollaboration_completionHandler___block_invoke_262(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(*(*(a1 + 104) + 8) + 40);
        *buf = 138412546;
        v42 = v8;
        v43 = 2112;
        v44 = v6;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Error loading metadata for documentURL: %@ error: %@", buf, 0x16u);
      }
    }

    [*(*(*(a1 + 112) + 8) + 40) setSendAsCopy:1];
    objc_initWeak(buf, *(a1 + 32));
    v9 = *(a1 + 32);
    v10 = *(*(*(a1 + 112) + 8) + 40);
    v11 = *(a1 + 40);
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __159__CKModalTranscriptController_insertRichLinkWithURL_sendAsCopyURL_data_collaborationType_collaborationShareOptions_metadata_isCollaboration_completionHandler___block_invoke_263;
    v39[3] = &unk_1E72F60A8;
    objc_copyWeak(&v40, buf);
    v39[4] = *(a1 + 112);
    [v9 setCompositionForPluginPayload:v10 shelfMediaObject:0 collaborationShareOptions:v11 completionHandler:v39];
    v12 = [*(a1 + 32) entryView];
    [v12 configureForDisplayMode:1];

    v13 = [*(a1 + 32) entryView];
    [v13 updateEntryView];

    [*(a1 + 32) createCollaborationFailureAlertForFailedMetadataLoadWithFallback:1 URL:*(*(*(a1 + 104) + 8) + 40)];
    (*(*(a1 + 88) + 16))();
    v14 = *(a1 + 96);
    if (v14)
    {
      (*(v14 + 16))(v14, 1);
    }

    objc_destroyWeak(&v40);
    objc_destroyWeak(buf);
  }

  else
  {
    v15 = *(a1 + 40);
    if (!v15)
    {
      v16 = [v5 userSelectedShareOptions];

      if (v16)
      {
        [v5 userSelectedShareOptions];
      }

      else
      {
        [v5 defaultShareOptions];
      }
      v15 = ;
    }

    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = *(*(*(a1 + 104) + 8) + 40);
        *buf = 138412546;
        v42 = v18;
        v43 = 2112;
        v44 = v5;
        _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Successfully loaded metadata for documentURL: %@ metadata: %@", buf, 0x16u);
      }
    }

    [*(a1 + 64) startTimingForKey:@"setCompositionForPluginPayload"];
    v19 = MEMORY[0x1E6994FC8];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __159__CKModalTranscriptController_insertRichLinkWithURL_sendAsCopyURL_data_collaborationType_collaborationShareOptions_metadata_isCollaboration_completionHandler___block_invoke_264;
    v26[3] = &unk_1E72F61E8;
    v20 = *(a1 + 72);
    v21 = *(a1 + 80);
    v22 = *(a1 + 112);
    v27 = v21;
    v37 = v22;
    v28 = v5;
    v23 = *(a1 + 40);
    v24 = *(a1 + 32);
    v29 = v23;
    v30 = v24;
    v38 = *(a1 + 120);
    v31 = v15;
    v32 = *(a1 + 64);
    v35 = *(a1 + 88);
    v33 = *(a1 + 48);
    v34 = *(a1 + 56);
    v36 = *(a1 + 96);
    v25 = v15;
    [v19 userNameAndEmail:v20 containerSetupInfo:0 completionHandler:v26];
  }
}

void __159__CKModalTranscriptController_insertRichLinkWithURL_sendAsCopyURL_data_collaborationType_collaborationShareOptions_metadata_isCollaboration_completionHandler___block_invoke_263(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained entryView];
  v4 = [v3 contentView];
  v5 = [v4 shelfPluginPayload];
  v6 = [v5 datasource];
  [v6 updatePayloadForShelfAnimation:*(*(*(a1 + 32) + 8) + 40)];

  v9 = objc_loadWeakRetained((a1 + 40));
  v7 = [v9 entryView];
  v8 = [v7 contentView];
  [v8 setupShelfPluginPayload:*(*(*(a1 + 32) + 8) + 40)];
}

void __159__CKModalTranscriptController_insertRichLinkWithURL_sendAsCopyURL_data_collaborationType_collaborationShareOptions_metadata_isCollaboration_completionHandler___block_invoke_264(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __159__CKModalTranscriptController_insertRichLinkWithURL_sendAsCopyURL_data_collaborationType_collaborationShareOptions_metadata_isCollaboration_completionHandler___block_invoke_2_265;
  block[3] = &unk_1E72F61C0;
  v21 = *(a1 + 32);
  v22 = v6;
  v7 = *(a1 + 112);
  v23 = v5;
  v29 = v7;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v30 = *(a1 + 120);
  v19 = *(a1 + 56);
  v10 = *(&v19 + 1);
  *&v11 = v8;
  *(&v11 + 1) = v9;
  v25 = v19;
  v24 = v11;
  v12 = *(a1 + 72);
  v13 = *(a1 + 96);
  v14 = *(a1 + 80);
  *&v15 = *(a1 + 88);
  *(&v15 + 1) = v13;
  *&v16 = v12;
  *(&v16 + 1) = v14;
  v26 = v16;
  v27 = v15;
  v28 = *(a1 + 104);
  v17 = v5;
  v18 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __159__CKModalTranscriptController_insertRichLinkWithURL_sendAsCopyURL_data_collaborationType_collaborationShareOptions_metadata_isCollaboration_completionHandler___block_invoke_2_265(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1 + 32;
  [*(a1 + 32) setInitiatorHandle:*(a1 + 40)];
  v4 = objc_alloc_init(MEMORY[0x1E696ADF8]);
  v5 = [v4 personNameComponentsFromString:*(v3 + 16)];
  [*v3 setInitiatorNameComponents:v5];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 40);
      v13 = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Updating metadata with email: %@, nameComponents: %@", &v13, 0x16u);
    }
  }

  [*(*(*(a1 + 128) + 8) + 40) setCollaborationMetadata:*(a1 + 56)];
  v8 = [*(a1 + 64) summary];
  v9 = v8;
  if (!v8)
  {
    v1 = CKFrameworkBundle();
    v9 = [v1 localizedStringForKey:@"DEFAULT_COLLABORATION_OPTIONS_SUMMARY" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  [*(*(*(a1 + 128) + 8) + 40) setCollaborationOptionsSummary:v9];
  if (!v8)
  {
  }

  [*(a1 + 72) setCompositionForPluginPayload:*(*(*(a1 + 128) + 8) + 40) shelfMediaObject:*(*(*(a1 + 136) + 8) + 40) collaborationShareOptions:*(a1 + 80)];
  [*(a1 + 88) stopTimingForKey:@"setCompositionForPluginPayload"];
  [*(a1 + 88) stopTimingForKey:@"insertRichLinkWithURL"];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 88);
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "insertRichLinkWithURL timing: %@", &v13, 0xCu);
    }
  }

  (*(*(a1 + 112) + 16))();
  v12 = *(a1 + 120);
  if (v12)
  {
    (*(v12 + 16))(v12, 1);
  }
}

- (void)insertRichLinkWithCloudKitShare:(id)a3 containerSetupInfo:(id)a4 collaborationShareOptions:(id)a5 isCollaboration:(BOOL)a6
{
  v6 = a6;
  v50 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v39 = a4;
  v11 = a5;
  if (!self->_alreadySetUp)
  {
    v37 = v11;
    self->_alreadySetUp = 1;
    v12 = [v10 URL];
    v13 = [CKBrowserItemPayload createBrowserItemPayloadWithURL:v12 data:0];

    [v13 setPayloadCollaborationType:2];
    [v13 setCloudKitShare:v10];
    [v13 setSendAsCopy:!v6];
    v38 = [v10 URL];
    v30 = [v38 absoluteString];
    v35 = [v38 fragment];
    v33 = [v10 objectForKeyedSubscript:*MEMORY[0x1E695B828]];
    v36 = [v10 objectForKeyedSubscript:*MEMORY[0x1E695B830]];
    if (v36)
    {
      v14 = [MEMORY[0x1E6982C40] typeWithIdentifier:?];
    }

    else
    {
      v14 = 0;
    }

    if (![v14 conformsToType:*MEMORY[0x1E6982E48]] || !objc_msgSend(v14, "conformsToType:", *MEMORY[0x1E6982D60]) || !objc_msgSend(v14, "conformsToType:", *MEMORY[0x1E6982D80]) || (objc_msgSend(v14, "conformsToType:", *MEMORY[0x1E6982FF8]) & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v14;
          _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Setting contentType to nil for a non file type. was: %@", &buf, 0xCu);
        }
      }

      v14 = 0;
    }

    if (v35)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"#%@", v35];
      v31 = [v30 stringByReplacingOccurrencesOfString:v16 withString:&stru_1F04268F8];
    }

    else
    {
      v31 = &stru_1F04268F8;
    }

    v32 = [MEMORY[0x1E695DF00] date];
    v34 = [v10 currentUserParticipant];
    v17 = [v34 userIdentity];
    v18 = [v17 lookupInfo];
    v19 = [v18 phoneNumber];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = [v18 emailAddress];
    }

    v22 = v21;

    v23 = [v17 nameComponents];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy__56;
    v48 = __Block_byref_object_dispose__56;
    v49 = 0;
    if ([MEMORY[0x1E697B700] instancesRespondToSelector:sel_initWithCollaborationIdentifier_title_defaultShareOptions_creationDate_contentType_initiatorHandle_initiatorNameComponents_containerSetupInfo_sourceProcessData_])
    {
      v24 = [objc_alloc(MEMORY[0x1E697B700]) initWithCollaborationIdentifier:v31 title:v33 defaultShareOptions:v37 creationDate:v32 contentType:v14 initiatorHandle:v22 initiatorNameComponents:v23 containerSetupInfo:v39 sourceProcessData:0];
      v25 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v24;
    }

    else
    {
      v26 = objc_alloc(MEMORY[0x1E697B700]);
      v25 = [v37 optionsGroups];
      v27 = [v26 initWithCollaborationIdentifier:v31 title:v33 defaultOptions:v25 creationDate:v32 contentType:v14 initiatorHandle:v22 initiatorNameComponents:v23];
      v28 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v27;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __124__CKModalTranscriptController_insertRichLinkWithCloudKitShare_containerSetupInfo_collaborationShareOptions_isCollaboration___block_invoke;
    block[3] = &unk_1E72F0BB8;
    p_buf = &buf;
    v41 = v13;
    v42 = v37;
    v43 = self;
    v29 = v13;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    _Block_object_dispose(&buf, 8);
    v11 = v37;
  }
}

void __124__CKModalTranscriptController_insertRichLinkWithCloudKitShare_containerSetupInfo_collaborationShareOptions_isCollaboration___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E6994FC8];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __124__CKModalTranscriptController_insertRichLinkWithCloudKitShare_containerSetupInfo_collaborationShareOptions_isCollaboration___block_invoke_2;
  v8[3] = &unk_1E72F6288;
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = v3;
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v2 userNameAndEmail:0 containerSetupInfo:0 completionHandler:v8];
}

void __124__CKModalTranscriptController_insertRichLinkWithCloudKitShare_containerSetupInfo_collaborationShareOptions_isCollaboration___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __124__CKModalTranscriptController_insertRichLinkWithCloudKitShare_containerSetupInfo_collaborationShareOptions_isCollaboration___block_invoke_3;
  v14[3] = &unk_1E72F6260;
  v15 = v6;
  v16 = v5;
  v7 = *(a1 + 56);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  *&v10 = *(a1 + 48);
  *(&v10 + 1) = v7;
  *&v11 = v8;
  *(&v11 + 1) = v9;
  v17 = v11;
  v18 = v10;
  v12 = v5;
  v13 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void __124__CKModalTranscriptController_insertRichLinkWithCloudKitShare_containerSetupInfo_collaborationShareOptions_isCollaboration___block_invoke_3(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = a1 + 72;
  [*(*(*(a1 + 72) + 8) + 40) setInitiatorHandle:*(a1 + 32)];
  v3 = objc_alloc_init(MEMORY[0x1E696ADF8]);
  v4 = [v3 personNameComponentsFromString:*(v2 - 32)];
  [*(*(*v2 + 8) + 40) setInitiatorNameComponents:v4];
  [*(a1 + 48) setCollaborationMetadata:*(*(*v2 + 8) + 40)];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v13 = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Updating metadata for CloudKit with email:%@, nameComponents: %@", &v13, 0x16u);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    if ([*(a1 + 48) payloadCollaborationType] == 2 && (objc_msgSend(*(a1 + 48), "containerSetupInfo"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "containerOptions"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isServiceManatee"), v8, v7, v9))
    {
      [*(a1 + 48) setCollaborationOptionsSummary:0];
    }

    else
    {
      v10 = [*(a1 + 56) summary];
      if (v10)
      {
        [*(a1 + 48) setCollaborationOptionsSummary:v10];
      }

      else
      {
        v11 = CKFrameworkBundle();
        v12 = [v11 localizedStringForKey:@"DEFAULT_COLLABORATION_OPTIONS_SUMMARY" value:&stru_1F04268F8 table:@"ChatKit"];
        [*(a1 + 48) setCollaborationOptionsSummary:v12];
      }
    }
  }

  [*(a1 + 64) setCompositionForPluginPayload:*(a1 + 48) shelfMediaObject:0 collaborationShareOptions:*(a1 + 56)];
}

- (void)insertRichLinkWithCloudKitShare:(id)a3 containerSetupInfo:(id)a4 collaborationShareOptions:(id)a5 isCollaboration:(BOOL)a6 completionHandler:(id)a7
{
  v8 = a6;
  v63 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v51 = a4;
  v52 = a5;
  v13 = a7;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = v51;
      *&buf[22] = 2112;
      v60 = v52;
      _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Inserting Rich Links With CloudKitShare: %@, containerSetupInfo: %@, collaborationShareOptions: %@", buf, 0x20u);
    }
  }

  if (self->_alreadySetUp)
  {
    goto LABEL_36;
  }

  self->_alreadySetUp = 1;
  v15 = [v12 URL];
  v16 = v15 == 0;

  if (!v16)
  {
    v17 = [v12 URL];
    v18 = [CKBrowserItemPayload createBrowserItemPayloadWithURL:v17 data:0];

    [v18 setPayloadCollaborationType:2];
    [v18 setCloudKitShare:v12];
    [v18 setSendAsCopy:!v8];
    v50 = [v12 URL];
    v42 = [v50 absoluteString];
    v48 = [v50 fragment];
    v46 = [v12 objectForKeyedSubscript:*MEMORY[0x1E695B828]];
    v49 = [v12 objectForKeyedSubscript:*MEMORY[0x1E695B830]];
    if (v49)
    {
      v19 = [MEMORY[0x1E6982C40] typeWithIdentifier:?];
    }

    else
    {
      v19 = 0;
    }

    if (![v19 conformsToType:*MEMORY[0x1E6982E48]] || !objc_msgSend(v19, "conformsToType:", *MEMORY[0x1E6982D60]) || !objc_msgSend(v19, "conformsToType:", *MEMORY[0x1E6982D80]) || (objc_msgSend(v19, "conformsToType:", *MEMORY[0x1E6982FF8]) & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v19;
          _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_INFO, "Setting contentType to nil for a non file type. was: %@", buf, 0xCu);
        }
      }

      v19 = 0;
    }

    if (v48)
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"#%@", v48];
      v43 = [v42 stringByReplacingOccurrencesOfString:v29 withString:&stru_1F04268F8];
    }

    else
    {
      v43 = &stru_1F04268F8;
    }

    v45 = [MEMORY[0x1E695DF00] date];
    v47 = [v12 currentUserParticipant];
    v30 = [v47 userIdentity];
    v31 = [v30 lookupInfo];
    v32 = [v31 phoneNumber];
    v33 = v32;
    if (v32)
    {
      v44 = v32;
    }

    else
    {
      v44 = [v31 emailAddress];
    }

    v34 = [v30 nameComponents];
    v35 = v18;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v60 = __Block_byref_object_copy__56;
    v61 = __Block_byref_object_dispose__56;
    v62 = 0;
    if ([MEMORY[0x1E697B700] instancesRespondToSelector:sel_initWithCollaborationIdentifier_title_defaultShareOptions_creationDate_contentType_initiatorHandle_initiatorNameComponents_containerSetupInfo_sourceProcessData_])
    {
      v36 = [objc_alloc(MEMORY[0x1E697B700]) initWithCollaborationIdentifier:v43 title:v46 defaultShareOptions:v52 creationDate:v45 contentType:v19 initiatorHandle:v44 initiatorNameComponents:v34 containerSetupInfo:v51 sourceProcessData:0];
      v37 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v36;
    }

    else
    {
      v38 = objc_alloc(MEMORY[0x1E697B700]);
      v37 = [v52 optionsGroups];
      v39 = [v38 initWithCollaborationIdentifier:v43 title:v46 defaultOptions:v37 creationDate:v45 contentType:v19 initiatorHandle:v44 initiatorNameComponents:v34];
      v40 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v39;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __142__CKModalTranscriptController_insertRichLinkWithCloudKitShare_containerSetupInfo_collaborationShareOptions_isCollaboration_completionHandler___block_invoke;
    block[3] = &unk_1E72F62B0;
    v54 = v51;
    v55 = v35;
    v58 = buf;
    v56 = self;
    v57 = v52;
    v41 = v35;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    _Block_object_dispose(buf, 8);
LABEL_36:
    if (v13)
    {
      v13[2](v13, 1);
    }

    goto LABEL_38;
  }

  v20 = [CKBrowserItemPayload browserItemPayloadForCollaborationWithURL:0 collaborationType:2];
  [v20 setSendAsCopy:!v8];
  v21 = [[CKComposition alloc] initWithText:0 subject:0 shelfPluginPayload:v20];
  [(CKModalTranscriptController *)self setComposition:v21];
  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Setting composition for the spinner for CloudKit case.", buf, 2u);
    }
  }

  v23 = [(CKChatController *)self entryView];
  v24 = [v23 contentView];
  v25 = [v24 shelfPluginPayload];
  v26 = [v25 datasource];
  v27 = [v26 pluginPayload];

  if (v13)
  {
    v13[2](v13, 1);
  }

LABEL_38:
}

void __142__CKModalTranscriptController_insertRichLinkWithCloudKitShare_containerSetupInfo_collaborationShareOptions_isCollaboration_completionHandler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E6994FC8];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __142__CKModalTranscriptController_insertRichLinkWithCloudKitShare_containerSetupInfo_collaborationShareOptions_isCollaboration_completionHandler___block_invoke_2;
  v9[3] = &unk_1E72F6288;
  v3 = (a1 + 48);
  v4 = *(a1 + 64);
  v5 = *(a1 + 32);
  *&v6 = *(a1 + 40);
  *(&v6 + 1) = *v3;
  v8 = v6;
  *&v7 = *(a1 + 56);
  *(&v7 + 1) = v4;
  v10 = v8;
  v11 = v7;
  [v2 userNameAndEmail:0 containerSetupInfo:v5 completionHandler:v9];
}

void __142__CKModalTranscriptController_insertRichLinkWithCloudKitShare_containerSetupInfo_collaborationShareOptions_isCollaboration_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __142__CKModalTranscriptController_insertRichLinkWithCloudKitShare_containerSetupInfo_collaborationShareOptions_isCollaboration_completionHandler___block_invoke_3;
  block[3] = &unk_1E72F6260;
  v14 = v6;
  v15 = v5;
  v7 = *(a1 + 56);
  *&v8 = *(a1 + 32);
  *(&v8 + 1) = *(a1 + 40);
  v12 = v8;
  *&v9 = *(a1 + 48);
  *(&v9 + 1) = v7;
  v16 = v12;
  v17 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __142__CKModalTranscriptController_insertRichLinkWithCloudKitShare_containerSetupInfo_collaborationShareOptions_isCollaboration_completionHandler___block_invoke_3(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = a1 + 72;
  [*(*(*(a1 + 72) + 8) + 40) setInitiatorHandle:*(a1 + 32)];
  v3 = objc_alloc_init(MEMORY[0x1E696ADF8]);
  v4 = [v3 personNameComponentsFromString:*(v2 - 32)];
  [*(*(*v2 + 8) + 40) setInitiatorNameComponents:v4];
  [*(a1 + 48) setCollaborationMetadata:*(*(*v2 + 8) + 40)];
  v5 = *(*(*v2 + 8) + 40);
  if (v5 && ([v5 initiatorHandle], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 32);
        *buf = 138412546;
        v32 = v8;
        v33 = 2112;
        v34 = v4;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Updating metadata for CloudKit with email:%@, nameComponents: %@", buf, 0x16u);
      }
    }

    if (objc_opt_respondsToSelector())
    {
      if ([*(a1 + 48) payloadCollaborationType] == 2 && (objc_msgSend(*(a1 + 48), "containerSetupInfo"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "containerOptions"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isServiceManatee"), v10, v9, v11))
      {
        [*(a1 + 48) setCollaborationOptionsSummary:0];
      }

      else
      {
        v16 = [*(a1 + 64) summary];
        if (v16)
        {
          [*(a1 + 48) setCollaborationOptionsSummary:v16];
        }

        else
        {
          v17 = CKFrameworkBundle();
          v18 = [v17 localizedStringForKey:@"DEFAULT_COLLABORATION_OPTIONS_SUMMARY" value:&stru_1F04268F8 table:@"ChatKit"];
          [*(a1 + 48) setCollaborationOptionsSummary:v18];
        }
      }
    }

    v19 = [*(a1 + 56) entryView];
    v20 = [v19 contentView];
    v21 = [v20 shelfPluginPayload];
    v22 = [v21 datasource];

    if (v22)
    {
      v23 = (a1 + 48);
      [*(a1 + 48) setSkipConfigurePlugin:1];
      objc_initWeak(buf, *(a1 + 56));
      v24 = *(a1 + 56);
      v25 = *(a1 + 48);
      v26 = *(a1 + 64);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __142__CKModalTranscriptController_insertRichLinkWithCloudKitShare_containerSetupInfo_collaborationShareOptions_isCollaboration_completionHandler___block_invoke_277;
      v28[3] = &unk_1E72F10A8;
      objc_copyWeak(&v30, buf);
      v29 = *v23;
      [v24 setCompositionForPluginPayload:v25 shelfMediaObject:0 collaborationShareOptions:v26 completionHandler:v28];

      objc_destroyWeak(&v30);
      objc_destroyWeak(buf);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "Datasource for existing view is nil. Setup the composition without a spinner annimation.", buf, 2u);
        }
      }

      [*(a1 + 56) setCompositionForPluginPayload:*(a1 + 48) shelfMediaObject:0 collaborationShareOptions:*(a1 + 64)];
    }
  }

  else
  {
    v13 = *(a1 + 56);
    v12 = (a1 + 56);
    [v13 setComposition:0];
    v14 = [*v12 entryView];
    [v14 configureForDisplayMode:1];

    v15 = [*v12 entryView];
    [v15 updateEntryView];

    [*v12 createCollaborationFailureAlertForFailedMetadataLoadWithFallback:0 URL:0];
  }
}

void __142__CKModalTranscriptController_insertRichLinkWithCloudKitShare_containerSetupInfo_collaborationShareOptions_isCollaboration_completionHandler___block_invoke_277(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained entryView];
  v4 = [v3 contentView];
  v5 = [v4 shelfPluginPayload];
  v6 = [v5 datasource];
  [v6 updatePayloadForShelfAnimation:*(a1 + 32)];

  v9 = objc_loadWeakRetained((a1 + 40));
  v7 = [v9 entryView];
  v8 = [v7 contentView];
  [v8 setupShelfPluginPayload:*(a1 + 32)];
}

- (void)createCompositionForPluginPayload:(id)a3 shelfMediaObject:(id)a4 collaborationShareOptions:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__56;
  v28 = __Block_byref_object_dispose__56;
  v29 = [(CKChatController *)self composition];
  if (v11)
  {
    v14 = [(CKChatController *)self composition];
    v15 = [v14 compositionByAppendingText:0 shelfPluginPayload:0 shelfMediaObject:v11 collaborationShareOptions:v12];

    v16 = [(CKChatController *)self composition];
    v17 = v15;
    if (!v16)
    {
      v17 = [CKComposition compositionWithShelfMediaObject:v11];
    }

    objc_storeStrong(v25 + 5, v17);
    if (!v16)
    {
    }
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __126__CKModalTranscriptController_createCompositionForPluginPayload_shelfMediaObject_collaborationShareOptions_completionHandler___block_invoke;
  v20[3] = &unk_1E72F62D8;
  v23 = &v24;
  v20[4] = self;
  v18 = v12;
  v21 = v18;
  v19 = v13;
  v22 = v19;
  [CKComposition compositionWithShelfPluginPayload:v10 completionHandler:v20];

  _Block_object_dispose(&v24, 8);
}

void __126__CKModalTranscriptController_createCompositionForPluginPayload_shelfMediaObject_collaborationShareOptions_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  if (v7)
  {
    v8 = [v7 compositionByAppendingComposition:v17];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    v11 = v17;
    v10 = *(v6 + 40);
    *(v6 + 40) = v11;
  }

  v12 = [*(a1 + 32) conversation];
  v13 = [v12 canSendComposition:*(*(*(a1 + 56) + 8) + 40) error:0];

  if (v13)
  {
    v14 = [*(*(*(a1 + 56) + 8) + 40) compositionWithCollaborationShareOptions:*(a1 + 40)];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    (*(*(a1 + 48) + 16))();
  }
}

- (void)setCompositionForPluginPayload:(id)a3 shelfMediaObject:(id)a4 collaborationShareOptions:(id)a5 completionHandler:(id)a6
{
  v47 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__56;
  v41 = __Block_byref_object_dispose__56;
  v42 = [(CKChatController *)self composition];
  if (v11)
  {
    v14 = [(CKChatController *)self composition];
    v15 = [v14 compositionByAppendingText:0 shelfPluginPayload:0 shelfMediaObject:v11 collaborationShareOptions:v12];

    v16 = [(CKChatController *)self composition];
    v17 = v15;
    if (!v16)
    {
      v17 = [CKComposition compositionWithShelfMediaObject:v11];
    }

    objc_storeStrong(v38 + 5, v17);
    if (!v16)
    {
    }
  }

  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __123__CKModalTranscriptController_setCompositionForPluginPayload_shelfMediaObject_collaborationShareOptions_completionHandler___block_invoke;
  v32 = &unk_1E72F62D8;
  v36 = &v37;
  v33 = self;
  v18 = v12;
  v34 = v18;
  v19 = v13;
  v35 = v19;
  v20 = _Block_copy(&v29);
  v21 = [v10 shouldStageAsEmbeddedTextAttachment];
  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = @"NO";
      if (v21)
      {
        v23 = @"YES";
      }

      *buf = 138412290;
      v46 = v23;
      _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Preparing composition for given pluginPayload. wantsEmbeddedRichLinkTreatment={%@}", buf, 0xCu);
    }
  }

  if (v21)
  {
    v24 = [v10 url];
    v25 = [CKEmbeddedRichLinkConfiguration richLinkConfigurationWithURL:v24];
    [v25 setPluginPayload:v10];
    v43 = @"EmbeddedRichLinkConfiguration";
    v44 = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v27 = objc_alloc(MEMORY[0x1E696AAB0]);
    v28 = [v27 initWithString:*MEMORY[0x1E69A5F00] attributes:v26];
    [CKComposition compositionWithText:v28 subject:0 shelfPluginPayload:0 completionHandler:v20];
  }

  else
  {
    [CKComposition compositionWithShelfPluginPayload:v10 completionHandler:v20];
  }

  _Block_object_dispose(&v37, 8);
}

void __123__CKModalTranscriptController_setCompositionForPluginPayload_shelfMediaObject_collaborationShareOptions_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  if (v7)
  {
    v8 = [v7 compositionByAppendingComposition:v18];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    v11 = v18;
    v10 = *(v6 + 40);
    *(v6 + 40) = v11;
  }

  v12 = [*(a1 + 32) conversation];
  v13 = [v12 canSendComposition:*(*(*(a1 + 56) + 8) + 40) error:0];

  if (v13)
  {
    v14 = [*(*(*(a1 + 56) + 8) + 40) compositionWithCollaborationShareOptions:*(a1 + 40)];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    [*(a1 + 32) setComposition:*(*(*(a1 + 56) + 8) + 40)];
    v17 = *(a1 + 48);
    if (v17)
    {
      (*(v17 + 16))(v17, 1);
    }
  }
}

- (void)insertMessage:(id)a3 bundleProxy:(id)a4 extensionBundleIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && !self->_alreadySetUp)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __83__CKModalTranscriptController_insertMessage_bundleProxy_extensionBundleIdentifier___block_invoke;
    aBlock[3] = &unk_1E72EBEF8;
    v36 = v9;
    v37 = v10;
    v11 = v8;
    v38 = v11;
    v39 = self;
    v12 = _Block_copy(aBlock);
    v13 = [v11 layout];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v15 isEqualToString:@"MSMessageLiveLayout"];

    if (v16)
    {
      v17 = +[CKBalloonPluginManager sharedInstance];
      v18 = [v17 hasLoadedExtensions];

      if (!v18)
      {
        if (IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "Waiting for extensions to load before inserting message", buf, 2u);
          }
        }

        *buf = 0;
        v30 = buf;
        v31 = 0x3032000000;
        v32 = __Block_byref_object_copy__56;
        v33 = __Block_byref_object_dispose__56;
        v34 = 0;
        v22 = [MEMORY[0x1E696AD88] defaultCenter];
        v23 = [MEMORY[0x1E696ADC8] mainQueue];
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __83__CKModalTranscriptController_insertMessage_bundleProxy_extensionBundleIdentifier___block_invoke_305;
        v26[3] = &unk_1E72F6300;
        v28 = buf;
        v27 = v12;
        v24 = [v22 addObserverForName:@"CKBrowserSelectionControllerDataSourceChangedNotification" object:0 queue:v23 usingBlock:v26];
        v25 = *(v30 + 5);
        *(v30 + 5) = v24;

        _Block_object_dispose(buf, 8);
        goto LABEL_18;
      }

      v12[2](v12);
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v20 = "Extensions were loaded, inserted message";
LABEL_11:
          _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, v20, buf, 2u);
          goto LABEL_12;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v12[2](v12);
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v20 = "Non-live layout, inserted message";
          goto LABEL_11;
        }

LABEL_12:
      }
    }

LABEL_18:
  }
}

void __83__CKModalTranscriptController_insertMessage_bundleProxy_extensionBundleIdentifier___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = [v2 entitlementValueForKey:@"com.apple.private.messages.associated-message-extension-bundle-identifiers" ofClass:v3 valuesOfClass:objc_opt_class()];
  if ([*(a1 + 40) length] && objc_msgSend(*(a1 + 40), "hasPrefix:", @"com.apple.") && objc_msgSend(v4, "containsObject:", *(a1 + 40)))
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 40);
        *buf = 138412290;
        v41 = v6;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Overriding pluginKitProxy identifier with %@", buf, 0xCu);
      }
    }

    v7 = [MEMORY[0x1E6963678] pluginKitProxyForIdentifier:*(a1 + 40)];
    v8 = IMIsPlugInProxyAMessagesExtensionPoint();
    if (v8)
    {
      v9 = __83__CKModalTranscriptController_insertMessage_bundleProxy_extensionBundleIdentifier___block_invoke_2(v8, v7);
    }

    else
    {
      v21 = +[CKBalloonPluginManager sharedInstance];
      v22 = IMBalloonExtensionIDWithSuffix();
      v9 = [v21 pluginForIdentifier:v22];
    }

    v16 = 0;
LABEL_41:

    goto LABEL_42;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = 0;
      goto LABEL_37;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = 0;
    goto LABEL_26;
  }

  v10 = *(a1 + 32);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v11 = [v10 plugInKitPlugins];
  v9 = [v11 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v9)
  {
    v12 = *v35;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v11);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        v15 = IMIsPlugInProxyAMessagesExtensionPoint();
        if (v15)
        {
          v9 = __83__CKModalTranscriptController_insertMessage_bundleProxy_extensionBundleIdentifier___block_invoke_2(v15, v14);
          goto LABEL_25;
        }
      }

      v9 = [v11 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_25:

  v16 = [v10 itemID];

  if (!v9)
  {
LABEL_26:
    if ([v4 count])
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v7 = v4;
      v9 = [v7 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v9)
      {
        v17 = *v31;
        while (2)
        {
          for (j = 0; j != v9; j = j + 1)
          {
            if (*v31 != v17)
            {
              objc_enumerationMutation(v7);
            }

            v19 = [MEMORY[0x1E6963678] pluginKitProxyForIdentifier:*(*(&v30 + 1) + 8 * j)];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = IMIsPlugInProxyAMessagesExtensionPoint();
              if (v20)
              {
                v9 = __83__CKModalTranscriptController_insertMessage_bundleProxy_extensionBundleIdentifier___block_invoke_2(v20, v19);

                goto LABEL_41;
              }
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_41;
    }

LABEL_37:
    v9 = 0;
  }

LABEL_42:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = [v9 __ck_statusJPEGImageDataForTransportWithCompressionFactor:0.2];
    v24 = [v9 browserDisplayName];
    v25 = v16;
    v26 = [objc_msgSend(v9 "dataSourceClass")];
    [v26 setIsFromMe:1];
    v27 = [v9 identifier];
    [v26 setPluginBundleID:v27];

    if ([v26 shouldExpire] && (v28 = +[CKComposition newExpirableCompositionWithText:subject:shelfPluginPayload:](CKComposition, "newExpirableCompositionWithText:subject:shelfPluginPayload:", 0, 0, v26)) != 0)
    {
      [*(a1 + 56) setComposition:v28];
    }

    else
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __83__CKModalTranscriptController_insertMessage_bundleProxy_extensionBundleIdentifier___block_invoke_300;
      v29[3] = &unk_1E72EC918;
      v29[4] = *(a1 + 56);
      [CKComposition compositionWithShelfPluginPayload:v26 completionHandler:v29];
    }
  }
}

id __83__CKModalTranscriptController_insertMessage_bundleProxy_extensionBundleIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *MEMORY[0x1E69A69F0];
  v4 = [v2 teamID];
  v5 = [v2 bundleIdentifier];
  v6 = [v3 stringByAppendingFormat:@":%@:%@", v4, v5];

  v7 = [MEMORY[0x1E69A5AD0] sharedInstance];
  v8 = [v7 balloonPluginForBundleID:v6];

  v9 = [v8 identifier];
  LODWORD(v3) = [v9 isEqualToString:v3];

  if (v3)
  {
    v10 = objc_alloc(MEMORY[0x1E69A5AB0]);
    v11 = [v8 pluginBundle];
    v12 = [v10 initWithPluginBundle:v11 pluginKitProxy:v2 extension:0];

    v8 = v12;
  }

  return v8;
}

void __83__CKModalTranscriptController_insertMessage_bundleProxy_extensionBundleIdentifier___block_invoke_305(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Notified of plugin manager plugin changes", buf, 2u);
    }
  }

  v5 = +[CKBalloonPluginManager sharedInstance];
  v6 = [v5 allPlugins];

  v7 = +[CKBalloonPluginManager sharedInstance];
  v8 = [v7 hasLoadedExtensions];

  if (v8)
  {
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 removeObserver:*(*(*(a1 + 40) + 8) + 40)];

    (*(*(a1 + 32) + 16))();
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Extensions finally loaded, inserted message", v11, 2u);
      }
    }
  }
}

- (void)insertFileURL:(id)a3 filename:(id)a4 fileIsResolved:(BOOL)a5 transcoderUserInfo:(id)a6 fullyRealizedPreview:(id)a7 rawPreview:(id)a8 appendedVideoURL:(id)a9 completion:(id)a10
{
  v45 = a5;
  v51 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  if (v15)
  {
    v21 = [(CKModalTranscriptController *)self assetExplorerManager];
    v22 = [v21 generatePackageFromAssetURL:v15 appendedVideoURL:v20 previewImage:v18];

    v23 = [(CKModalTranscriptController *)self assetExplorerManager];
    v24 = v23;
    if (v22)
    {
      [v23 saveFileURL:v15 filename:v16 transcoderUserInfo:v17 fullyRealizedPreview:v18 rawPreview:v19 appendedVideoURL:v20];

      v25 = [(CKModalTranscriptController *)self assetExplorerManager];
      [v25 stageAssetPackage:v22];
    }

    else
    {
      v38 = v20;
      v39 = v19;
      v40 = v18;
      v41 = v17;
      v42 = v16;
      v43 = v15;
      v26 = [v23 clearAndDisableShelfAndReturnPreviouslyShelvedData];

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      obj = v26;
      v27 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v47;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v47 != v29)
            {
              objc_enumerationMutation(obj);
            }

            v31 = *(*(&v46 + 1) + 8 * i);
            v32 = [v31 fileURL];
            v33 = [v31 filename];
            v34 = [v31 transcoderUserInfo];
            v35 = [v31 fullyRealizedPreview];
            v36 = [v31 rawPreview];
            v37 = [v31 appendedVideoURL];
            [(CKModalTranscriptController *)self insertFileURLAsMediaObject:v32 filename:v33 fileIsResolved:v45 transcoderUserInfo:v34 fullyRealizedPreview:v35 rawPreview:v36 appendedVideoURL:v37];
          }

          v28 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
        }

        while (v28);
      }

      v20 = v38;
      v19 = v39;
      v16 = v42;
      v15 = v43;
      v18 = v40;
      v17 = v41;
      [(CKModalTranscriptController *)self insertFileURLAsMediaObject:v43 filename:v42 fileIsResolved:v45 transcoderUserInfo:v41 fullyRealizedPreview:v40 rawPreview:v39 appendedVideoURL:v38];

      v22 = 0;
    }
  }
}

- (void)insertFileURLAsMediaObject:(id)a3 filename:(id)a4 fileIsResolved:(BOOL)a5 transcoderUserInfo:(id)a6 fullyRealizedPreview:(id)a7 rawPreview:(id)a8 appendedVideoURL:(id)a9
{
  v12 = a5;
  v55 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  v44 = a8;
  v19 = a9;
  v20 = [v15 startAccessingSecurityScopedResource];
  v21 = +[CKMediaObjectManager sharedInstance];
  LOWORD(v43) = 0;
  v22 = [v21 mediaObjectWithFileURL:v15 filename:v16 fileIsResolved:v12 transcoderUserInfo:v17 attributionInfo:0 adaptiveImageGlyphContentIdentifier:0 adaptiveImageGlyphContentDescription:0 hideAttachment:v43 isScreenshot:?];

  v23 = [objc_opt_class() canGeneratePreviewInMVSHostProcess];
  if ([MEMORY[0x1E69A80C0] isCroppingAvoidanceEnabled])
  {
    if (v23)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = +[CKUIBehavior sharedBehaviors];
        [v24 previewMaxWidth];
        v26 = v25;

        v27 = [v22 previewForWidth:0 orientation:v26];

        v18 = v27;
      }
    }
  }

  if (((v18 != 0) & v23) == 1)
  {
    [v22 cacheAndPersistPreview:v18 orientation:1];
  }

  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138413314;
      v46 = v15;
      v47 = 2112;
      v48 = v16;
      v49 = 2112;
      v50 = v17;
      v51 = 2112;
      v52 = v19;
      v53 = 2112;
      v54 = v22;
      _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_INFO, "fileURL %@, filename %@, transcoderUserInfo %@, appendedVideoURL %@, mediaObject %@", buf, 0x34u);
    }
  }

  v29 = [v19 path];
  v30 = [v29 length] == 0;

  if (!v30)
  {
    v31 = [v22 fileURL];
    v32 = CKGetTmpPathForAppendedVideoURL(v19, v31);

    v33 = [v22 transferGUID];
    CKLinkAndCreateAppendedVideoTransfer(v32, v19, v33);
  }

  [(CKModalTranscriptController *)self _insertMediaObjectAndReturnFrame:v22];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v22 duration], v35 = v34, -[CKCoreChatController conversation](self, "conversation"), v36 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v36, "maxTrimDurationForMedia:", v22), v38 = v35 <= v37, v36, v38))
  {
    v39 = [v22 transfer];
    v40 = CKFileSizeEligibleForEagerUpload([v39 totalBytes]);

    if (v40)
    {
      eagerUploadController = self->_eagerUploadController;
      v42 = [(CKModalTranscriptController *)self proposedParticipantHandles];
      [(CKChatEagerUploadController *)eagerUploadController uploadFileURL:v15 filename:v16 transcoderUserInfo:v17 videoComplementURL:v19 attributionInfo:0 identifier:0 recipients:v42];
    }
  }

  if (v20)
  {
    [v15 stopAccessingSecurityScopedResource];
  }
}

- (id)proposedParticipantHandles
{
  v3 = [(CKComposeChatController *)self proposedRecipients];
  v4 = [v3 __im_canonicalIDSAddressesFromEntities];

  v5 = [(CKCoreChatController *)self conversation];
  v6 = [v5 senderIdentifier];
  v7 = IMChatCanonicalIDSIDsForAddress();

  if ([v7 length])
  {
    v8 = [v4 arrayByAddingObject:v7];

    v4 = v8;
  }

  return v4;
}

- (void)insertData:(id)a3 MIMEType:(id)a4 exportedFilename:(id)a5
{
  v8 = *MEMORY[0x1E6963718];
  v9 = a5;
  v10 = a3;
  PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(v8, a4, 0);
  v11 = +[CKMediaObjectManager sharedInstance];
  v12 = [v11 mediaObjectWithData:v10 UTIType:PreferredIdentifierForTag filename:v9 transcoderUserInfo:0];

  [(CKModalTranscriptController *)self _insertMediaObject:v12];
}

- (BOOL)messageEntryViewWidth:(double *)a3 andOffset:(double *)a4
{
  v20 = 0;
  v21 = 0.0;
  v19.receiver = self;
  v19.super_class = CKModalTranscriptController;
  v7 = [(CKChatController *)&v19 messageEntryViewWidth:&v21 andOffset:&v20];
  if (v7 && !CKIsRunningInMessages())
  {
    v20 = 0;
    v8 = [(CKChatController *)self entryView];
    v9 = [v8 window];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 hostedWindowOffset];
      v11 = v10;
      v13 = v12;
    }

    else
    {
      v11 = *MEMORY[0x1E695EFF8];
      v13 = *(MEMORY[0x1E695EFF8] + 8);
    }

    v14 = [(CKModalTranscriptController *)self view];
    v15 = [v14 window];
    [v15 bounds];
    [(CKModalTranscriptController *)self _offsetForScreenWidth:v16 containerWidth:v21 windowOffset:v11, v13];
    v20 = v17;
  }

  if (a3)
  {
    *a3 = v21;
  }

  if (a4)
  {
    *a4 = v20;
  }

  return v7;
}

- (double)_offsetForScreenWidth:(double)a3 containerWidth:(double)a4 windowOffset:(CGPoint)a5
{
  result = a3 * 0.5 - a4 * 0.5;
  if (a5.x != 0.0)
  {
    return a5.x;
  }

  return result;
}

- (CKComposeAssetExplorerManager)assetExplorerManager
{
  assetExplorerManager = self->_assetExplorerManager;
  if (!assetExplorerManager)
  {
    v4 = [CKComposeAssetExplorerManager alloc];
    v5 = [(CKCoreChatController *)self inputController];
    v6 = [(CKComposeAssetExplorerManager *)v4 initWithInputController:v5];
    v7 = self->_assetExplorerManager;
    self->_assetExplorerManager = v6;

    assetExplorerManager = self->_assetExplorerManager;
  }

  return assetExplorerManager;
}

- (void)loadChatInputController
{
  v5.receiver = self;
  v5.super_class = CKModalTranscriptController;
  [(CKChatController *)&v5 loadChatInputController];
  v3 = [(CKModalTranscriptController *)self assetExplorerManager];
  v4 = [(CKCoreChatController *)self inputController];
  [v3 setInputController:v4];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = CKModalTranscriptController;
  v7 = a4;
  [(CKChatController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __82__CKModalTranscriptController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E72EC3E8;
  v8[4] = self;
  [v7 animateAlongsideTransition:0 completion:v8];
}

void __82__CKModalTranscriptController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) entryView];
  [v2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [*(a1 + 32) entryView];
  [v11 setFrame:{v4, v6, v8, v10}];
}

- (void)viewWillAppear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = CKModalTranscriptController;
  [(CKComposeChatController *)&v11 viewWillAppear:a3];
  if (!self->_alreadySetUp)
  {
    [(CKModalTranscriptController *)self _setEntryViewVisible:self->_entryViewInvisible == 0];
    self->_alreadySetUp = 1;
    v4 = [(CKModalTranscriptController *)self deferredInsertMediaObjectBlocks];
    v5 = [v4 count];

    if (v5)
    {
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *v10 = 0;
          _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Running deferred insert block", v10, 2u);
        }
      }

      v7 = [(CKModalTranscriptController *)self deferredInsertMediaObjectBlocks];
      [v7 enumerateObjectsUsingBlock:&__block_literal_global_325_1];

      v8 = [(CKModalTranscriptController *)self deferredInsertMediaObjectBlocks];
      [v8 removeAllObjects];
    }
  }

  v9 = +[CKConversationList sharedConversationList];
  [v9 resort];
}

- (void)sendComposition:(id)a3
{
  v10.receiver = self;
  v10.super_class = CKModalTranscriptController;
  v4 = a3;
  [(CKShareSheetChatController *)&v10 sendComposition:v4];
  v5 = [v4 shelfPluginPayload];

  v6 = [v5 pluginBundleID];

  if (v6)
  {
    v7 = +[CKBalloonPluginManager sharedInstance];
    v8 = [v7 isPluginEnabled:v6];

    if ((v8 & 1) == 0)
    {
      v9 = +[CKBalloonPluginManager sharedInstance];
      [v9 setEnabled:1 forPlugin:v6];
    }
  }

  [(CKChatEagerUploadController *)self->_eagerUploadController didSendComposition];
}

- (void)_setConversationDeferredSetup
{
  v5.receiver = self;
  v5.super_class = CKModalTranscriptController;
  [(CKComposeChatController *)&v5 _setConversationDeferredSetup];
  v3 = [(CKModalTranscriptController *)self _deviceIsLocked];
  v4 = [(CKChatController *)self collectionView];
  [v4 setHidden:v3];
}

- (BOOL)_deviceIsLocked
{
  v2 = CKIsRunningInMessagesViewService();
  if (v2)
  {

    LOBYTE(v2) = CKIsScreenLocked();
  }

  return v2;
}

- (void)setPendingAddresses:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (CKIsValidAddress(v11))
        {
          v12 = +[CKRecipientGenerator sharedRecipientGenerator];
          v13 = [v12 recipientWithAddress:v11];

          if (v13)
          {
            [v5 addObject:v13];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(CKComposeChatController *)self setPrepopulatedRecipients:v5];
}

- (void)setCanEditRecipients:(BOOL)a3
{
  v3 = a3;
  v4 = [(CKComposeChatController *)self composeRecipientSelectionController];
  [v4 setEditable:v3];
}

- (void)insertFileURLForCollaboration:(id)a3 collaborationShareOptions:(id)a4 metadata:(id)a5 sendAsCopyURL:(id)a6 isCollaboration:(BOOL)a7 completionHandler:(id)a8
{
  self->_alreadySetUp = 0;
  LOBYTE(v8) = a7;
  [(CKModalTranscriptController *)self insertRichLinkWithURL:a3 sendAsCopyURL:a6 data:0 collaborationType:1 collaborationShareOptions:a4 metadata:a5 isCollaboration:v8 completionHandler:a8];
}

- (void)insertSWYPendingCollaboration:(id)a3 collaborationShareOptions:(id)a4 collaborationMetadata:(id)a5 sendAsCopyURL:(id)a6 isCollaboration:(BOOL)a7 completionHandler:(id)a8
{
  v21 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a8;
  self->_alreadySetUp = 0;
  v17 = [a3 fileURL];
  v18 = v17;
  if (v21)
  {
    LOBYTE(v20) = a7;
    [(CKModalTranscriptController *)self insertRichLinkWithURL:v17 sendAsCopyURL:v15 data:0 collaborationType:3 collaborationShareOptions:v21 metadata:v14 isCollaboration:v20 completionHandler:v16];
  }

  else
  {
    v19 = [v14 defaultShareOptions];
    LOBYTE(v20) = a7;
    [(CKModalTranscriptController *)self insertRichLinkWithURL:v18 sendAsCopyURL:v15 data:0 collaborationType:3 collaborationShareOptions:v19 metadata:v14 isCollaboration:v20 completionHandler:v16];
  }
}

- (void)insertGroupActivity:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3 && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "insertGroupActivity groupActivity is nil", buf, 2u);
    }
  }

  v38 = objc_alloc_init(MEMORY[0x1E696ECA0]);
  v5 = NSClassFromString(&cfstr_Lpshareplayinv.isa);
  if (v5)
  {
    v6 = objc_alloc_init(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 concatenatedMetadataDescription];
  v8 = [v7 length] == 0;

  if (v8)
  {
    v36 = 0;
  }

  else
  {
    v36 = [v3 concatenatedMetadataDescription];
  }

  v9 = NSSelectorFromString(&cfstr_Settitle.isa);
  if (objc_opt_respondsToSelector())
  {
    [v6 performSelector:v9 withObject:v36];
  }

  v10 = NSSelectorFromString(&cfstr_Setapplication.isa);
  if (objc_opt_respondsToSelector())
  {
    v11 = [v3 bundleIdentifier];
    [v6 performSelector:v10 withObject:v11];
  }

  v12 = NSSelectorFromString(&cfstr_Setapplication_0.isa);
  if (objc_opt_respondsToSelector())
  {
    v13 = [v3 localizedApplicationName];
    if (v13)
    {
      [v6 performSelector:v12 withObject:v13];
    }

    else
    {
      v14 = [v3 fallbackApplicationName];
      [v6 performSelector:v12 withObject:v14];
    }
  }

  v15 = [v3 metadata];
  v16 = [v15 imageData];
  v17 = v16 == 0;

  if (v17 || (v18 = MEMORY[0x1E69DCAB8], [v3 metadata], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "imageData"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "imageWithData:", v20), v21 = objc_claimAutoreleasedReturnValue(), v20, v19, !v21))
  {
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "insertGroupActivity image is nil", buf, 2u);
      }
    }

    v21 = 0;
    v22 = 0;
  }

  else
  {
    v22 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:v21];
  }

  v24 = NSSelectorFromString(&cfstr_Seticon.isa);
  if (objc_opt_respondsToSelector())
  {
    [v6 performSelector:v24 withObject:v22];
  }

  [v38 setSpecialization:v6];
  v25 = objc_alloc_init(MEMORY[0x1E696ECD8]);
  [v25 setMetadata:v38];
  v26 = [v25 dataRepresentationWithOutOfLineAttachments:0];
  if (!v26 && IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "insertGroupActivity pluginPayloadData is nil", buf, 2u);
    }
  }

  v28 = objc_alloc_init(CKBrowserItemPayload);
  v29 = [MEMORY[0x1E696AEC0] stringGUID];
  [(CKBrowserItemPayload *)v28 setMessageGUID:v29];

  [(CKBrowserItemPayload *)v28 setPluginBundleID:*MEMORY[0x1E69A6A18]];
  [(CKBrowserItemPayload *)v28 setData:v26];
  v30 = [(CKChatController *)self composition];
  v31 = [[CKComposition alloc] initWithText:0 subject:0 shelfPluginPayload:v28];
  v32 = [(CKComposition *)v31 shelfPluginPayload];
  [v32 setGroupActivity:v3];

  if (v30)
  {
    v33 = [v30 compositionByAppendingComposition:v31];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v34, OS_LOG_TYPE_INFO, "insertGroupActivity composition is nil, setting as appendComposition", buf, 2u);
      }
    }

    v33 = v31;
  }

  [(CKModalTranscriptController *)self setComposition:v33];
  if (IMOSLoggingEnabled())
  {
    v35 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v40 = v3;
      _os_log_impl(&dword_19020E000, v35, OS_LOG_TYPE_INFO, "Did insert group activity %@", buf, 0xCu);
    }
  }
}

- (void)disableCameraAttachments
{
  v6 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = "[CKModalTranscriptController disableCameraAttachments]";
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "reloadEntryViewIfNeeded called from %s", &v4, 0xCu);
    }
  }

  [(CKComposeChatController *)self reloadEntryViewIfNeeded];
  self->_cameraSelectionDisabled = 1;
}

- (void)setTextEntryContentsVisible:(BOOL)a3
{
  if (self->_alreadySetUp)
  {
    [(CKModalTranscriptController *)self _setEntryViewVisible:a3];
  }

  else
  {
    self->_entryViewInvisible = !a3;
  }
}

- (void)setForceMMS:(BOOL)a3
{
  self->_forceMMS = a3;
  v4 = [(CKCoreChatController *)self conversation];
  [v4 setForceMMS:self->_forceMMS];
}

- (void)_setEntryViewVisible:(BOOL)a3
{
  v3 = a3;
  v7 = [(CKChatController *)self entryView];
  v4 = [v7 contentView];
  v5 = v4;
  v6 = 0.0;
  if (v3)
  {
    v6 = 1.0;
  }

  [v4 setAlpha:v6];
}

- (void)hideEntryViewContent:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKChatController *)self entryView];
  v4 = [v5 contentView];
  [v4 setHidden:v3];
}

- (void)registerForNotifications
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  if (!CKIsRunningInMessagesOrSpringBoard())
  {
    [v4 addObserver:self selector:sel__applicationBecameActive_ name:*MEMORY[0x1E69DDAB0] object:0];
    [v4 addObserver:self selector:sel__screenLocked_ name:*MEMORY[0x1E69DDB98] object:0];
    [v4 addObserver:self selector:sel__screenUnlocked_ name:*MEMORY[0x1E69DDB78] object:0];
    [v4 addObserver:self selector:sel__conversationListDidFinishLoading_ name:@"CKConversationListFinishedLoadingNotification" object:0];
    v3 = [MEMORY[0x1E69A6160] sharedInstance];
    [v3 addListener:self];
  }
}

- (void)_conversationListDidFinishLoading:(id)a3
{
  v3 = +[CKConversationList sharedConversationList];
  [v3 resort];
}

- (BOOL)_shouldUseExistingConversations
{
  if (CKIsRunningInMessages())
  {
    return 1;
  }

  return IMIsRunningInMessagesComposeViewService();
}

@end