@interface ICAttachmentPresenter
+ (BOOL)shouldCommitPreviewViewController:(id)a3;
+ (id)previewViewControllerWithViewControllerManager:(id)a3 attachments:(id)a4 startingAtIndex:(unint64_t)a5 delegate:(id)a6 editable:(BOOL)a7 isFromAttachmentBrowser:(BOOL)a8;
- (BOOL)isAttachmentBrowser;
- (BOOL)isAttachmentPresentedInProcess;
- (BOOL)prefersStatusBarHidden;
- (BOOL)previewController:(id)a3 canShareItem:(id)a4;
- (ICAttachment)displayedAttachment;
- (ICAttachment)selectedSubAttachment;
- (ICAttachmentPresenter)initWithViewControllerManager:(id)a3 attachments:(id)a4 startingAtIndex:(unint64_t)a5 delegate:(id)a6 displayShowInNote:(BOOL)a7 editable:(BOOL)a8 presentingViewController:(id)a9;
- (ICAttachmentPresenterDelegate)delegate;
- (ICNAEventReporter)eventReporter;
- (ICViewControllerManager)ic_viewControllerManager;
- (NSArray)quickLookFilteredAttachments;
- (NSDictionary)presentedAttachmentUIState;
- (UIBarButtonItem)showInNoteButton;
- (UIViewController)presentingViewController;
- (UIViewController)rootViewController;
- (id)attachment;
- (id)excludedActivityTypesForPreviewController:(id)a3;
- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4;
- (id)previewController:(id)a3 transitionViewForPreviewItem:(id)a4;
- (id)transitionViewForAttachment:(id)a3;
- (id)transitionViewForAttachment:(id)a3 atIndexPath:(id)a4;
- (int64_t)numberOfPreviewItemsInPreviewController:(id)a3;
- (int64_t)previewController:(id)a3 editingModeForPreviewItem:(id)a4;
- (unint64_t)quickLookFilteredStartingIndex;
- (void)applyPresentedAttachmentUIStateIfNecessary:(id)a3;
- (void)attachmentWillBeDeletedNotification:(id)a3;
- (void)dealloc;
- (void)dismiss:(id)a3;
- (void)dismissAnimated:(BOOL)a3 completion:(id)a4;
- (void)eventReporterLostSession:(id)a3;
- (void)galleryAttachmentEditorControllerDeleteAttachment;
- (void)galleryAttachmentEditorControllerDidDismiss;
- (void)mailComposeController:(id)a3 didFinishWithResult:(int64_t)a4 error:(id)a5;
- (void)notifyDelegateDidDismiss;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)presentAttachmentViewController:(id)a3;
- (void)presentAttachmentWithSelectedSubAttachment:(id)a3;
- (void)presentAudioRecording;
- (void)presentExportViewForAttachment:(id)a3;
- (void)presentGalleryAttachmentWithSelectedSubAttachment:(id)a3;
- (void)presentMovie;
- (void)presentQuickLook;
- (void)presentReadOnlyAlertIfNecessaryForAttachment:(id)a3;
- (void)presentSharingViewForAttachment:(id)a3 fromSourceView:(id)a4;
- (void)presentSynapseLink;
- (void)presentURL;
- (void)previewControllerDidDismiss:(id)a3;
- (void)removeTempooraryExportURL;
- (void)scrollCollectionViewToIndexPath:(id)a3;
- (void)showInNote:(id)a3;
- (void)updateEditedPreviewItem:(id)a3 atURL:(id)a4 shouldAttemptToWriteDataFromURL:(BOOL)a5 previewController:(id)a6;
- (void)updateEditedPreviewItemAtURL:(id)a3;
- (void)updateQuickLookFilteredAttachments;
@end

@implementation ICAttachmentPresenter

- (ICAttachmentPresenter)initWithViewControllerManager:(id)a3 attachments:(id)a4 startingAtIndex:(unint64_t)a5 delegate:(id)a6 displayShowInNote:(BOOL)a7 editable:(BOOL)a8 presentingViewController:(id)a9
{
  v9 = a8;
  v10 = a7;
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a9;
  v19 = [(ICAttachmentPresenter *)self init];
  v20 = v19;
  if (v19)
  {
    [(ICAttachmentPresenter *)v19 setIc_viewControllerManager:v15];
    [(ICAttachmentPresenter *)v20 setAttachments:v16];
    [(ICAttachmentPresenter *)v20 setStartingIndex:a5];
    [(ICAttachmentPresenter *)v20 setDelegate:v17];
    [(ICAttachmentPresenter *)v20 setDisplayShowInNote:v10];
    [(ICAttachmentPresenter *)v20 setAttachmentEditable:v9];
    [(ICAttachmentPresenter *)v20 setPresentingViewController:v18];
    v21 = [MEMORY[0x277CCAB98] defaultCenter];
    [v21 addObserver:v20 selector:sel_hardLinksDidDelete_ name:*MEMORY[0x277D35BA0] object:0];
  }

  return v20;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  [(ICQLPreviewController *)self->_qlPreviewController ic_removeObserver:self forKeyPath:@"currentPreviewItemIndex" context:&compoundliteral_7];
  v4.receiver = self;
  v4.super_class = ICAttachmentPresenter;
  [(ICAttachmentPresenter *)&v4 dealloc];
}

- (UIBarButtonItem)showInNoteButton
{
  showInNoteButton = self->_showInNoteButton;
  if (!showInNoteButton)
  {
    v4 = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [v4 localizedStringForKey:@"Show in Note" value:&stru_282757698 table:0];

    v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v5 style:0 target:self action:sel_showInNote_];
    v7 = self->_showInNoteButton;
    self->_showInNoteButton = v6;

    showInNoteButton = self->_showInNoteButton;
  }

  return showInNoteButton;
}

- (id)attachment
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(ICAttachmentPresenter *)self startingIndex];
  v4 = [(ICAttachmentPresenter *)self attachments];
  v5 = [v4 count];

  if (v3 > v5)
  {
    v6 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [(ICAttachmentPresenter *)self startingIndex];
      v8 = [(ICAttachmentPresenter *)self attachments];
      v12 = 134218240;
      v13 = v7;
      v14 = 2048;
      v15 = [v8 count];
      _os_log_impl(&dword_2151A1000, v6, OS_LOG_TYPE_INFO, "Trying to access attachment %ld out of %ld. Falling back to first attachment", &v12, 0x16u);
    }

    v3 = 0;
  }

  v9 = [(ICAttachmentPresenter *)self attachments];
  v10 = [v9 objectAtIndexedSubscript:v3];

  return v10;
}

- (BOOL)isAttachmentBrowser
{
  v3 = [(ICAttachmentPresenter *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(ICAttachmentPresenter *)self delegate];
  v6 = [v5 isAttachmentBrowser];

  return v6;
}

- (NSArray)quickLookFilteredAttachments
{
  quickLookFilteredAttachments = self->_quickLookFilteredAttachments;
  if (!quickLookFilteredAttachments)
  {
    [(ICAttachmentPresenter *)self updateQuickLookFilteredAttachments];
    quickLookFilteredAttachments = self->_quickLookFilteredAttachments;
  }

  return quickLookFilteredAttachments;
}

- (unint64_t)quickLookFilteredStartingIndex
{
  if (!self->_quickLookFilteredAttachments)
  {
    [(ICAttachmentPresenter *)self updateQuickLookFilteredAttachments];
  }

  return self->_quickLookFilteredStartingIndex;
}

- (void)updateQuickLookFilteredAttachments
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = [(ICAttachmentPresenter *)self startingIndex];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(ICAttachmentPresenter *)self attachments];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__ICAttachmentPresenter_updateQuickLookFilteredAttachments__block_invoke;
  v11[3] = &unk_2781AF7F8;
  v5 = v3;
  v12 = v5;
  v13 = self;
  v14 = &v15;
  [v4 enumerateObjectsUsingBlock:v11];

  v6 = v16[3];
  if (v6 <= [v5 count])
  {
    v8 = v16[3];
  }

  else
  {
    v7 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_2151A1000, v7, OS_LOG_TYPE_INFO, "Something went wrong calculating the QuickLook filtered starting index. Falling back to first attachment", v10, 2u);
    }

    v8 = 0;
    v16[3] = 0;
  }

  [(ICAttachmentPresenter *)self setQuickLookFilteredStartingIndex:v8];
  v9 = [v5 copy];
  [(ICAttachmentPresenter *)self setQuickLookFilteredAttachments:v9];

  _Block_object_dispose(&v15, 8);
}

void __59__ICAttachmentPresenter_updateQuickLookFilteredAttachments__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if ([v5 supportsQuickLook])
  {
    [*(a1 + 32) addObject:v5];
  }

  else if ([*(a1 + 40) startingIndex] > a3)
  {
    --*(*(*(a1 + 48) + 8) + 24);
  }
}

- (BOOL)isAttachmentPresentedInProcess
{
  v3 = [(ICAttachmentPresenter *)self attachment];
  v4 = [v3 synapseData];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(ICAttachmentPresenter *)self attachment];
    v7 = [v6 attachmentType];

    if (v7 <= 0xD)
    {
      v5 = 0x980u >> v7;
    }

    else
    {
      v5 = 1;
    }
  }

  return v5 & 1;
}

- (void)presentAttachmentWithSelectedSubAttachment:(id)a3
{
  v15 = a3;
  v4 = [(ICAttachmentPresenter *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICAttachmentPresenter *)self delegate];
    [v6 attachmentPresenterWillPresent:self];
  }

  v7 = [(ICAttachmentPresenter *)self attachment];
  v8 = [v7 synapseData];

  v9 = [v7 attachmentType];
  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (!v10)
  {
    v11 = v9;
    if ((v9 & 0xFFFFFFFB) != 9)
    {
      if ((v9 - 9) <= 0xFFFDu)
      {
        [*MEMORY[0x277D76620] sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];
      }

      if (v8)
      {
        [(ICAttachmentPresenter *)self presentSynapseLink];
LABEL_19:
        v12 = [MEMORY[0x277CCAB98] defaultCenter];
        v13 = *MEMORY[0x277D35C28];
        v14 = [(ICAttachmentPresenter *)self attachment];
        [v12 addObserver:self selector:sel_attachmentWillBeDeletedNotification_ name:v13 object:v14];

        goto LABEL_20;
      }

      if (v11 <= 5u)
      {
        if (v11 >= 4u)
        {
          if (v11 == 4)
          {
            if (ICInternalSettingsIsAudioTranscriptionEnabled())
            {
              [(ICAttachmentPresenter *)self presentAudioRecording];
              goto LABEL_19;
            }
          }

          else if (v11 != 5)
          {
            goto LABEL_19;
          }

          [(ICAttachmentPresenter *)self presentMovie];
          goto LABEL_19;
        }
      }

      else
      {
        if (v11 > 0xFu)
        {
          goto LABEL_19;
        }

        if (((1 << v11) & 0xF440) == 0)
        {
          if (((1 << v11) & 0x180) != 0)
          {
            [(ICAttachmentPresenter *)self presentURL];
          }

          else if (v11 == 11)
          {
            [(ICAttachmentPresenter *)self presentGalleryAttachmentWithSelectedSubAttachment:v15];
          }

          goto LABEL_19;
        }
      }

      [(ICAttachmentPresenter *)self presentPreview];
      goto LABEL_19;
    }
  }

LABEL_20:
}

- (void)presentMovie
{
  v3 = [MEMORY[0x277D366C0] sharedAudioController];
  [v3 stop];

  [(ICAttachmentPresenter *)self presentPreview];
}

- (void)presentAudioRecording
{
  v11 = [(ICAttachmentPresenter *)self attachment];
  v3 = [v11 audioModel];
  if (v3)
  {
    v4 = v3;
    v5 = [(ICAttachmentPresenter *)self attachment];
    v6 = [v5 note];
    if ([v6 isDeletedOrInTrash])
    {
    }

    else
    {
      v7 = [(ICAttachmentPresenter *)self attachment];
      v8 = [v7 needsInitialFetchFromCloud];

      if (v8)
      {
        return;
      }

      v9 = [(ICAttachmentPresenter *)self attachment];
      v10 = [v9 audioModel];
      v11 = [ICAudioRecordingViewController getHostingViewForAttachmentModel:v10 delegate:self];

      [(ICAttachmentPresenter *)self presentAttachmentViewController:v11];
    }
  }
}

- (void)presentURL
{
  v1 = [a1 attachment];
  v2 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __35__ICAttachmentPresenter_presentURL__block_invoke(uint64_t a1, char a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = os_log_create("com.apple.notes", "UI");
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __35__ICAttachmentPresenter_presentURL__block_invoke_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) attachment];
    v7 = [v6 shortLoggingDescription];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_2151A1000, v5, OS_LOG_TYPE_DEFAULT, "Failed to present URL from attachment %@", &v8, 0xCu);
  }
}

- (void)presentSynapseLink
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_2151A1000, v0, OS_LOG_TYPE_ERROR, "Encountered error while trying to deserialize synapse content item: %@", v1, 0xCu);
}

void __43__ICAttachmentPresenter_presentSynapseLink__block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = os_log_create("com.apple.notes", "UI");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (!a2)
  {
    if (v7)
    {
      __43__ICAttachmentPresenter_presentSynapseLink__block_invoke_cold_1();
    }

    goto LABEL_8;
  }

  if (v7)
  {
    __43__ICAttachmentPresenter_presentSynapseLink__block_invoke_cold_2(a1, v6);
  }

  if (*(a1 + 56) == 1)
  {
    v8 = MEMORY[0x277D6B7D8];
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __43__ICAttachmentPresenter_presentSynapseLink__block_invoke_158;
    v11[3] = &unk_2781AE978;
    v12 = *(a1 + 32);
    [v8 activateWithDomainIdentifier:v9 noteIdentifier:v10 completion:v11];
    v6 = v12;
LABEL_8:
  }
}

void __43__ICAttachmentPresenter_presentSynapseLink__block_invoke_158(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __43__ICAttachmentPresenter_presentSynapseLink__block_invoke_158_cold_1();
    }
  }
}

- (void)presentQuickLook
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = [(ICAttachmentPresenter *)self qlPreviewController];

  if (!v3)
  {
    v4 = objc_alloc_init(ICQLPreviewController);
    [(ICAttachmentPresenter *)self setQlPreviewController:v4];

    v5 = [(ICAttachmentPresenter *)self qlPreviewController];
    [v5 ic_addObserver:self forKeyPath:@"currentPreviewItemIndex" context:&compoundliteral_7];
  }

  if ([(ICAttachmentPresenter *)self displayShowInNote])
  {
    v6 = [(ICAttachmentPresenter *)self showInNoteButton];
    v15[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v8 = [(ICAttachmentPresenter *)self qlPreviewController];
    v9 = [v8 navigationItem];
    [v9 setRightBarButtonItems:v7];
  }

  v10 = [(ICAttachmentPresenter *)self qlPreviewController];
  [v10 setDataSource:self];

  v11 = [(ICAttachmentPresenter *)self qlPreviewController];
  [v11 setDelegate:self];

  v12 = [(ICAttachmentPresenter *)self quickLookFilteredStartingIndex];
  v13 = [(ICAttachmentPresenter *)self qlPreviewController];
  [v13 setCurrentPreviewItemIndex:v12];

  v14 = [(ICAttachmentPresenter *)self qlPreviewController];
  [(ICAttachmentPresenter *)self presentAttachmentViewController:v14];
}

- (void)presentGalleryAttachmentWithSelectedSubAttachment:(id)a3
{
  v19 = a3;
  v4 = [ICGalleryAttachmentEditorController alloc];
  v5 = [(ICAttachmentPresenter *)self attachment];
  v6 = [(ICGalleryAttachmentEditorController *)v4 initWithGalleryAttachment:v5 browserMode:[(ICAttachmentPresenter *)self isAttachmentBrowser] delegate:self];
  [(ICAttachmentPresenter *)self setGalleryAttachmentEditorController:v6];

  if (v19)
  {
    objc_opt_class();
    v7 = [(ICAttachmentPresenter *)self attachment];
    v8 = [v7 attachmentModel];
    v9 = ICDynamicCast();

    v10 = [v19 identifier];
    v11 = [v9 indexOfSubAttachmentWithIdentifier:v10];

    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = [(ICAttachmentPresenter *)self delegate];
  v14 = [(ICAttachmentPresenter *)self attachment];
  v15 = [v13 attachmentPresenter:self transitionViewForAttachment:v14];

  v16 = [(ICAttachmentPresenter *)self galleryAttachmentEditorController];
  v17 = [(ICAttachmentPresenter *)self presentingViewController];
  v18 = [v16 openEditorOnViewController:v17 pageIndex:v12 sourceView:v15];

  if ((v18 & 1) == 0)
  {
    [(ICAttachmentPresenter *)self setGalleryAttachmentEditorController:0];
  }
}

- (id)transitionViewForAttachment:(id)a3
{
  v4 = a3;
  v5 = [(ICAttachmentPresenter *)self delegate];
  v6 = [v5 attachmentPresenter:self transitionViewForAttachment:v4];

  return v6;
}

- (id)transitionViewForAttachment:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICAttachmentPresenter *)self delegate];
  v9 = objc_opt_respondsToSelector();

  v10 = [(ICAttachmentPresenter *)self delegate];
  v11 = v10;
  if (v9)
  {
    [v10 attachmentPresenter:self transitionViewForIndexPath:v7];
  }

  else
  {
    [v10 attachmentPresenter:self transitionViewForAttachment:v6];
  }
  v12 = ;

  return v12;
}

- (void)scrollCollectionViewToIndexPath:(id)a3
{
  v7 = a3;
  v4 = [(ICAttachmentPresenter *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICAttachmentPresenter *)self delegate];
    [v6 scrollCollectionViewToIndexPath:v7];
  }
}

- (void)presentAttachmentViewController:(id)a3
{
  v4 = a3;
  [(ICAttachmentPresenter *)self setPresentedViewController:v4];
  v5 = [(ICAttachmentPresenter *)self presentingViewController];
  v6 = [MEMORY[0x277D75D18] areAnimationsEnabled];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__ICAttachmentPresenter_presentAttachmentViewController___block_invoke;
  v7[3] = &unk_2781ABCF8;
  v7[4] = self;
  [v5 presentViewController:v4 animated:v6 completion:v7];
}

void __57__ICAttachmentPresenter_presentAttachmentViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) qlPreviewController];
  v3 = [v2 currentPreviewItemIndex];

  v4 = [*(a1 + 32) quickLookFilteredAttachments];
  v5 = [v4 count];

  v6 = [*(a1 + 32) quickLookFilteredAttachments];
  v7 = v6;
  if (v3 >= v5)
  {
    [v6 firstObject];
  }

  else
  {
    [v6 objectAtIndexedSubscript:v3];
  }
  v8 = ;

  [*(a1 + 32) presentReadOnlyAlertIfNecessaryForAttachment:v8];
}

+ (id)previewViewControllerWithViewControllerManager:(id)a3 attachments:(id)a4 startingAtIndex:(unint64_t)a5 delegate:(id)a6 editable:(BOOL)a7 isFromAttachmentBrowser:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v65[1] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = [v14 objectAtIndexedSubscript:a5];
  v17 = [v16 attachmentType];
  if (v17 == 12 || (v18 = v17, !v17) && ![v16 hasFallbackPDF])
  {
LABEL_14:
    v24 = 0;
    goto LABEL_18;
  }

  v63 = v14;
  v64 = v15;
  v19 = v13;
  v20 = [v13 window];
  v21 = [v20 windowScene];
  v22 = [v21 screen];
  v23 = [v22 ic_isSecure];

  v24 = 0;
  if (v18 > 0xF)
  {
    v13 = v19;
    v14 = v63;
    v15 = v64;
    goto LABEL_18;
  }

  v15 = v64;
  if (((1 << v18) & 0xEC77) == 0)
  {
    if (((1 << v18) & 0x180) == 0)
    {
      v13 = v19;
      v14 = v63;
      if (((1 << v18) & 0x208) == 0)
      {
        goto LABEL_18;
      }

      if ([v16 needsInitialFetchFromCloud])
      {
        goto LABEL_14;
      }

      v24 = [[ICImagePreviewController alloc] initWithAttachment:v16];
      v39 = objc_alloc_init(MEMORY[0x277D755E8]);
      [v39 setContentMode:1];
      v40 = [(ICImagePreviewController *)v24 view];
      [v40 addSubview:v39];

      [v39 ic_addAnchorsToFillSuperviewWithPadding:-1.0];
      v41 = [v16 image];
      if (v41)
      {
        [v39 setImage:v41];
      }

      else
      {
        v42 = [MEMORY[0x277D759A0] mainScreen];
        [v42 bounds];
        v44 = v43;
        v46 = v45;
        v47 = [MEMORY[0x277D759A0] mainScreen];
        [v47 scale];
        v49 = [v16 attachmentPreviewImageWithMinSize:v44 scale:{v46, v48}];

        v15 = v64;
        v50 = [v49 orientedImage];
        [v39 setImage:v50];
      }

      v51 = [(ICImagePreviewController *)v24 view];
      [v51 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
      [(ICImagePreviewController *)v24 setPreferredContentSize:?];

LABEL_49:
      goto LABEL_18;
    }

    if (v23)
    {
LABEL_16:
      v24 = 0;
      v13 = v19;
LABEL_17:
      v14 = v63;
      goto LABEL_18;
    }

    if (v18 != 7)
    {
LABEL_34:
      v39 = [v16 URL];
      v53 = [MEMORY[0x277D262A0] sharedConnection];
      if ([v53 effectiveBoolValueForSetting:*MEMORY[0x277D25FB8]] == 2)
      {

        v13 = v19;
      }

      else
      {
        Helper_x8__OBJC_CLASS___NSSNewsViewController = gotLoadHelper_x8__OBJC_CLASS___NSSNewsViewController(v54);
        v57 = [*(v56 + 3096) canOpenURL:{v39, Helper_x8__OBJC_CLASS___NSSNewsViewController}];

        v13 = v19;
        if (v57)
        {
          v24 = [[ICNewsViewController alloc] initWithURL:v39];
          [(ICImagePreviewController *)v24 setAttachment:v16];
          v14 = v63;
LABEL_48:
          v15 = v64;
          goto LABEL_49;
        }
      }

      v58 = [MEMORY[0x277D262A0] sharedConnection];
      v14 = v63;
      if ([v58 effectiveBoolValueForSetting:*MEMORY[0x277D26028]] == 2)
      {

LABEL_40:
        v24 = 0;
        goto LABEL_48;
      }

      v59 = [v39 scheme];
      v15 = v64;
      if (![v59 length])
      {

        v24 = 0;
        goto LABEL_49;
      }

      v60 = [v39 scheme];
      if ([v60 caseInsensitiveCompare:@"http"])
      {
        v61 = [v39 scheme];
        v62 = [v61 caseInsensitiveCompare:@"https"];

        if (v62)
        {
          goto LABEL_40;
        }
      }

      else
      {
      }

      v24 = [[ICSafariViewController alloc] initWithURL:v39];
      [(ICImagePreviewController *)v24 setAttachment:v16];
      goto LABEL_48;
    }

    v34 = [objc_alloc(MEMORY[0x277D36698]) initWithAttachment:v16];
    v35 = objc_alloc(MEMORY[0x277CD4FB8]);
    v36 = [v16 URL];
    v37 = [v35 initWithURL:v36];

    if ([v37 parseIncludingCustomParameters:1])
    {
      v38 = [v37 collectionStorage];
      v15 = v64;
      if (v38)
      {

LABEL_33:
        goto LABEL_34;
      }

      v13 = v19;
      if (!v34)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v13 = v19;
      v15 = v64;
      if (!v34)
      {
        goto LABEL_33;
      }
    }

    v52 = [objc_alloc(MEMORY[0x277D36698]) initWithAttachment:v16];
    v24 = [[ICMapViewController alloc] initWithAnnotation:v52];

    goto LABEL_17;
  }

  if (v23 & 1) != 0 || ([v16 needsInitialFetchFromCloud])
  {
    goto LABEL_16;
  }

  v24 = objc_alloc_init(ICQLPreviewController);
  v25 = [ICAttachmentPresenter alloc];
  v13 = v19;
  v26 = v19;
  v14 = v63;
  v27 = [(ICAttachmentPresenter *)v25 initWithViewControllerManager:v26 attachments:v63 startingAtIndex:a5 delegate:v64 displayShowInNote:0 editable:v9 presentingViewController:0];
  [(ICAttachmentPresenter *)v27 setQlPreviewController:v24];
  [(ICImagePreviewController *)v24 setDelegate:v27];
  [(ICImagePreviewController *)v24 setDataSource:v27];
  [(ICImagePreviewController *)v24 setCurrentPreviewItemIndex:[(ICAttachmentPresenter *)v27 quickLookFilteredStartingIndex]];
  if (v8)
  {
    v28 = [MEMORY[0x277CCA8D8] mainBundle];
    v29 = [v28 localizedStringForKey:@"Show in Note" value:&stru_282757698 table:0];

    v30 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v29 style:0 target:v27 action:sel_showInNote_];
    v65[0] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:1];
    v32 = [(ICImagePreviewController *)v24 navigationItem];
    [v32 setRightBarButtonItems:v31];

    v15 = v64;
  }

  objc_setAssociatedObject(v24, ICAttachmentPreviewViewControllerKey, v27, 0x301);

LABEL_18:

  return v24;
}

- (BOOL)prefersStatusBarHidden
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 keyWindow];
  v4 = [v3 rootViewController];

  LOBYTE(v2) = [v4 prefersStatusBarHidden];
  return v2;
}

+ (BOOL)shouldCommitPreviewViewController:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 currentPreviewItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v7 = [v4 currentPreviewItem];
    if ((isKindOfClass & 1) == 0)
    {
      objc_opt_class();
      v8 = objc_opt_isKindOfClass();

      if ((v8 & 1) == 0)
      {
        goto LABEL_8;
      }

      v9 = [v4 currentPreviewItem];
      v7 = [v9 attachment];
    }

    if (v7)
    {
      v10 = [v7 parentAttachment];
      v11 = v10 == 0;

LABEL_9:
      goto LABEL_10;
    }

LABEL_8:
    v11 = 1;
    goto LABEL_9;
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (void)dismiss:(id)a3
{
  v4 = [MEMORY[0x277D75D18] areAnimationsEnabled];

  [(ICAttachmentPresenter *)self dismissAnimated:v4 completion:0];
}

- (void)dismissAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(ICAttachmentPresenter *)self presentedViewController];

  if (v7)
  {
    if (![(ICAttachmentPresenter *)self isDismissing])
    {
      [(ICAttachmentPresenter *)self setIsDismissing:1];
      v8 = [(ICAttachmentPresenter *)self presentedViewController];
      v9 = [v8 presentingViewController];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __52__ICAttachmentPresenter_dismissAnimated_completion___block_invoke;
      v11[3] = &unk_2781AE4F0;
      v11[4] = self;
      v12 = v6;
      [v9 dismissViewControllerAnimated:v4 completion:v11];

      goto LABEL_8;
    }
  }

  else
  {
    v10 = [(ICAttachmentPresenter *)self galleryAttachmentEditorController];

    if (v10)
    {
      [(ICAttachmentPresenter *)self setGalleryAttachmentEditorController:0];
      [(ICAttachmentPresenter *)self notifyDelegateDidDismiss];
    }
  }

  if (v6)
  {
    v6[2](v6);
  }

LABEL_8:
}

uint64_t __52__ICAttachmentPresenter_dismissAnimated_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) notifyDelegateDidDismiss];
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 setIsDismissing:0];
}

- (void)notifyDelegateDidDismiss
{
  v3 = [(ICAttachmentPresenter *)self ic_viewControllerManager];
  v4 = [v3 currentAttachmentPresenter];

  if (v4 == self)
  {
    v5 = [(ICAttachmentPresenter *)self ic_viewControllerManager];
    [v5 setCurrentAttachmentPresenter:0];
  }

  v6 = [(ICAttachmentPresenter *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(ICAttachmentPresenter *)self delegate];
    [v8 attachmentPresenterDidDismiss:self];
  }
}

- (void)showInNote:(id)a3
{
  v4 = [(ICAttachmentPresenter *)self qlPreviewController];

  if (v4)
  {
    v5 = [(ICAttachmentPresenter *)self quickLookFilteredAttachments];
    v6 = [(ICAttachmentPresenter *)self qlPreviewController];
    v10 = [v5 objectAtIndexedSubscript:{objc_msgSend(v6, "currentPreviewItemIndex")}];
  }

  else
  {
    v10 = [(ICAttachmentPresenter *)self attachment];
  }

  v7 = [(ICAttachmentPresenter *)self ic_viewControllerManager];
  v8 = [v10 objectID];
  [v7 selectAttachmentWithObjectID:v8 animated:1];

  v9 = [(ICAttachmentPresenter *)self eventReporter];
  [v9 submitAttachmentBrowserActionEventForType:3];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  if (([(ICAttachmentPresenter *)self ic_didAddObserverForContext:a6 inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotes/Ironcade/iOS/AttachmentPresentation/ICAttachmentPresenter.m"]& 1) != 0)
  {
    v13 = [(ICAttachmentPresenter *)self ic_shouldIgnoreObserveValue:v10 ofObject:v11 forKeyPath:v12];

    if (a6 == &compoundliteral_7 && (v13 & 1) == 0)
    {

      [(ICAttachmentPresenter *)self previewControllerDidChangeCurrentItem];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = ICAttachmentPresenter;
    [(ICAttachmentPresenter *)&v14 observeValueForKeyPath:v12 ofObject:v11 change:v10 context:a6];
  }
}

- (void)presentReadOnlyAlertIfNecessaryForAttachment:(id)a3
{
  v5 = a3;
  if ([v5 attachmentType] == 1 && objc_msgSend(v5, "hasFallbackPDF"))
  {
    v4 = [(ICAttachmentPresenter *)self qlPreviewController];
    [v4 showViewOnlyWarning];
  }
}

- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4
{
  v6 = [(ICAttachmentPresenter *)self quickLookFilteredAttachments];
  v7 = [v6 count];

  v8 = [(ICAttachmentPresenter *)self quickLookFilteredAttachments];
  v9 = v8;
  if (v7 <= a4)
  {
    [v8 firstObject];
  }

  else
  {
    [v8 objectAtIndexedSubscript:a4];
  }
  v10 = ;

  v11 = [[ICQLItem alloc] initWithAttachment:v10];
  if ([v10 attachmentType] == 6 || objc_msgSend(v10, "hasFallbackPDF"))
  {
    v12 = [(ICAttachmentPresenter *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [(ICAttachmentPresenter *)self delegate];
      -[ICQLItem setUseFullPDFTransition:](v11, "setUseFullPDFTransition:", [v14 attachmentPresenter:self useFullPDFTransitionForAttachment:v10]);
    }
  }

  return v11;
}

- (int64_t)numberOfPreviewItemsInPreviewController:(id)a3
{
  v4 = [(ICAttachmentPresenter *)self quickLookFilteredAttachments];
  v5 = [v4 count];

  if (v5)
  {
    [(ICAttachmentPresenter *)self quickLookFilteredAttachments];
  }

  else
  {
    [(ICAttachmentPresenter *)self attachments];
  }
  v6 = ;
  v7 = [v6 count];

  return v7;
}

- (void)previewControllerDidDismiss:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ICAttachmentPresenter_previewControllerDidDismiss___block_invoke;
  block[3] = &unk_2781ABCF8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __53__ICAttachmentPresenter_previewControllerDidDismiss___block_invoke(uint64_t a1)
{
  [*(a1 + 32) notifyDelegateDidDismiss];
  v2 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __53__ICAttachmentPresenter_previewControllerDidDismiss___block_invoke_cold_1(v2);
  }

  v3 = [*(a1 + 32) ic_viewControllerManager];
  v4 = [v3 noteEditorViewController];
  [v4 setIsPreviewingAttachmentFromNote:0];
}

- (id)previewController:(id)a3 transitionViewForPreviewItem:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }

    v6 = [v5 attachment];
  }

  v7 = v6;
  if (v6)
  {
    v8 = [(ICAttachmentPresenter *)self delegate];
    v9 = [v8 attachmentPresenter:self transitionViewForAttachment:v7];

    goto LABEL_10;
  }

LABEL_7:
  v7 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_2151A1000, v7, OS_LOG_TYPE_INFO, "Could not find attachment for transitioning preview item: %@", &v11, 0xCu);
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (id)excludedActivityTypesForPreviewController:(id)a3
{
  v6[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D54790];
  v6[0] = *MEMORY[0x277D360F8];
  v6[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];

  return v4;
}

- (void)mailComposeController:(id)a3 didFinishWithResult:(int64_t)a4 error:(id)a5
{
  v5 = [a3 presentingViewController];
  [v5 dismissViewControllerAnimated:1 completion:0];
}

- (void)attachmentWillBeDeletedNotification:(id)a3
{
  v4 = [a3 object];
  v5 = [(ICAttachmentPresenter *)self attachment];

  if (v4 == v5)
  {
    [(ICAttachmentPresenter *)self dismiss:self];
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = *MEMORY[0x277D35C28];
    v7 = [(ICAttachmentPresenter *)self attachment];
    [v8 removeObserver:self name:v6 object:v7];
  }
}

void __44__ICAttachmentPresenter_hardLinksDidDelete___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) qlPreviewController];
  [v1 reloadData];
}

- (int64_t)previewController:(id)a3 editingModeForPreviewItem:(id)a4
{
  v5 = a4;
  if (![(ICAttachmentPresenter *)self isAttachmentEditable])
  {
    goto LABEL_9;
  }

  objc_opt_class();
  v6 = ICDynamicCast();
  if (!v6)
  {
    objc_opt_class();
    v8 = ICDynamicCast();
    v7 = [v8 attachment];

    if (v7)
    {
      goto LABEL_5;
    }

LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  v7 = v6;
LABEL_5:
  v9 = [v7 attachmentModel];
  v10 = [v9 canMarkup];

  if (v10)
  {
    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

LABEL_10:
  return v11;
}

- (void)updateEditedPreviewItemAtURL:(id)a3
{
  v4 = a3;
  v5 = [(ICAttachmentPresenter *)self attachment];
  [(ICAttachmentPresenter *)self updateEditedPreviewItem:v5 atURL:v4 shouldAttemptToWriteDataFromURL:1 previewController:0];
}

- (void)updateEditedPreviewItem:(id)a3 atURL:(id)a4 shouldAttemptToWriteDataFromURL:(BOOL)a5 previewController:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  objc_opt_class();
  v12 = ICDynamicCast();
  if (v12)
  {
    v13 = v12;
LABEL_4:
    [v10 startAccessingSecurityScopedResource];
    v15 = [v13 managedObjectContext];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __105__ICAttachmentPresenter_updateEditedPreviewItem_atURL_shouldAttemptToWriteDataFromURL_previewController___block_invoke;
    v17[3] = &unk_2781AF848;
    v18 = v11;
    v19 = v13;
    v20 = v10;
    v21 = a5;
    v16 = v13;
    [v15 performBlockAndWait:v17];

    goto LABEL_5;
  }

  objc_opt_class();
  v14 = ICDynamicCast();
  v13 = [v14 attachment];

  if (v13)
  {
    goto LABEL_4;
  }

LABEL_5:
}

void __105__ICAttachmentPresenter_updateEditedPreviewItem_atURL_shouldAttemptToWriteDataFromURL_previewController___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (a1 + 40);
  if (![*(a1 + 40) shouldEmbedMarkupDataInMedia])
  {
    v10 = [MEMORY[0x277D35F10] markupModelDataFromDataAtURL:*(a1 + 48)];
    [*(a1 + 40) setMarkupModelData:v10];

    v7 = 0;
LABEL_16:
    v14 = v7;
    [*v3 attachmentDidChange];
    [*v3 setPreviewUpdateDate:0];
    v15 = [*v3 managedObjectContext];
    v17 = v7;
    [v15 save:&v17];
    v7 = v17;

    if (v7)
    {
      v16 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __105__ICAttachmentPresenter_updateEditedPreviewItem_atURL_shouldAttemptToWriteDataFromURL_previewController___block_invoke_cold_2(a1 + 40, v7, v16);
      }
    }

    v9 = [MEMORY[0x277D366B0] sharedGenerator];
    [v9 generatePreviewIfNeededForAttachment:*v3];
    goto LABEL_21;
  }

  if ([*(a1 + 48) ic_isReachable])
  {
    if (*(a1 + 56) == 1)
    {
      v4 = [*(a1 + 40) media];
      v5 = *(a1 + 48);
      v18 = 0;
      v6 = [v4 writeDataFromFileURL:v5 error:&v18];
      v7 = v18;

      if ((v6 & 1) == 0)
      {
        v8 = MEMORY[0x277D36198];
        v9 = [*v3 shortLoggingDescription];
        [v8 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICAttachmentPresenter updateEditedPreviewItem:atURL:shouldAttemptToWriteDataFromURL:previewController:]_block_invoke" simulateCrash:1 showAlert:1 format:{@"Unable to update data for attachment: %@, %@", v9, v7}];
        goto LABEL_21;
      }
    }

    else
    {
      v7 = 0;
    }

    v11 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:*(a1 + 48)];
    [*(a1 + 40) setHasMarkupData:{objc_msgSend(MEMORY[0x277D35F10], "hasPrivateImageMetadata:", v11)}];
    v12 = [MEMORY[0x277D35F10] cleanImageMetadataFromData:v11];

    if (v12)
    {
      v13 = [MEMORY[0x277D755B8] imageWithData:v12];
      if (v13)
      {
        [*v3 setCachedImage:v13];
      }
    }

    goto LABEL_16;
  }

  v9 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __105__ICAttachmentPresenter_updateEditedPreviewItem_atURL_shouldAttemptToWriteDataFromURL_previewController___block_invoke_cold_1(a1 + 40, v9);
  }

  v7 = 0;
LABEL_21:

  [*(a1 + 48) stopAccessingSecurityScopedResource];
}

- (BOOL)previewController:(id)a3 canShareItem:(id)a4
{
  v4 = [MEMORY[0x277D369A0] sharedInstance];
  v5 = [v4 isSecureScreenShowing];

  return v5 ^ 1;
}

- (void)galleryAttachmentEditorControllerDidDismiss
{
  [(ICAttachmentPresenter *)self setGalleryAttachmentEditorController:0];

  [(ICAttachmentPresenter *)self notifyDelegateDidDismiss];
}

- (void)galleryAttachmentEditorControllerDeleteAttachment
{
  v3 = [(ICAttachmentPresenter *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v6 = [(ICAttachmentPresenter *)self delegate];
    [v6 handleDeleteAttachmentFromPresenter:self];
  }

  else
  {
    v5 = MEMORY[0x277D36198];

    [v5 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICAttachmentPresenter galleryAttachmentEditorControllerDeleteAttachment]" simulateCrash:1 showAlert:0 format:{@"Delete attachment called on presenter, but not handled by delegate."}];
  }
}

- (ICNAEventReporter)eventReporter
{
  if (!self->_eventReporter && [MEMORY[0x277D35978] isOptedInForAnalytics])
  {
    v3 = objc_alloc(MEMORY[0x277D35978]);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [(ICAttachmentPresenter *)self ic_viewControllerManager];
    v7 = [v6 window];
    v8 = [v3 initWithSubTrackerName:v5 window:v7];
    eventReporter = self->_eventReporter;
    self->_eventReporter = v8;

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:self selector:sel_eventReporterLostSession_ name:*MEMORY[0x277D35958] object:self->_eventReporter];
  }

  v11 = self->_eventReporter;

  return v11;
}

- (void)eventReporterLostSession:(id)a3
{
  eventReporter = self->_eventReporter;
  self->_eventReporter = 0;
  v5 = a3;

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = *MEMORY[0x277D35958];
  v7 = [v5 object];

  [v8 removeObserver:self name:v6 object:v7];
}

- (UIViewController)rootViewController
{
  v2 = [(ICAttachmentPresenter *)self presentingViewController];
  v3 = [v2 ic_topViewController];

  return v3;
}

- (void)presentSharingViewForAttachment:(id)a3 fromSourceView:(id)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ICAttachmentPresenter presentSharingViewForAttachment:v6 fromSourceView:?];
  }

  v9 = [(ICAttachmentPresenter *)self presentingViewController];
  v10 = [v9 ic_topViewController];

  v11 = MEMORY[0x277D36788];
  v21[0] = v6;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v13 = [v10 ic_window];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __72__ICAttachmentPresenter_presentSharingViewForAttachment_fromSourceView___block_invoke;
  v17[3] = &unk_2781AD198;
  v18 = v6;
  v19 = v7;
  v20 = v10;
  v14 = v10;
  v15 = v7;
  v16 = v6;
  [v11 generatePDFsIfNecessaryForGalleryAttachments:v12 displayWindow:v13 presentingViewController:v14 completionHandler:v17];
}

void __72__ICAttachmentPresenter_presentSharingViewForAttachment_fromSourceView___block_invoke(uint64_t a1)
{
  v1 = a1 + 32;
  v2 = [ICAttachmentActivityViewController makeWithAttachment:*(a1 + 32) quickLookItemDelegate:0 completion:&__block_literal_global_27];
  v3 = *(v1 + 8);
  v4 = [v2 popoverPresentationController];
  [v4 setSourceView:v3];

  [*(v1 + 16) presentViewController:v2 animated:1 completion:&__block_literal_global_217];
  v5 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __72__ICAttachmentPresenter_presentSharingViewForAttachment_fromSourceView___block_invoke_cold_1(v1);
  }
}

- (void)presentExportViewForAttachment:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICAttachmentPresenter presentExportViewForAttachment:v4];
  }

  v6 = [(ICAttachmentPresenter *)self presentingViewController];
  v7 = [v6 ic_topViewController];

  v8 = MEMORY[0x277D36788];
  v17[0] = v4;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v10 = [v7 ic_window];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__ICAttachmentPresenter_presentExportViewForAttachment___block_invoke;
  v13[3] = &unk_2781AD198;
  v14 = v4;
  v15 = self;
  v16 = v7;
  v11 = v7;
  v12 = v4;
  [v8 generatePDFsIfNecessaryForGalleryAttachments:v9 displayWindow:v10 presentingViewController:v11 completionHandler:v13];
}

void __56__ICAttachmentPresenter_presentExportViewForAttachment___block_invoke(id *a1)
{
  v39[1] = *MEMORY[0x277D85DE8];
  v2 = a1 + 4;
  v3 = [a1[4] isPasswordProtected];
  v4 = *v2;
  if (v3)
  {
    v5 = [v4 media];
    v6 = [v5 decryptedData];

    if (!v6)
    {
      v14 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __56__ICAttachmentPresenter_presentExportViewForAttachment___block_invoke_cold_3(v2);
      }

      goto LABEL_25;
    }

    v7 = [*v2 userTitle];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v15 = [*v2 title];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = [*v2 defaultTitle];
      }

      v9 = v17;
    }

    v18 = MEMORY[0x277CE1CB8];
    v19 = [a1[4] typeUTI];
    v20 = [v18 importedTypeWithIdentifier:v19];
    v21 = v20;
    v22 = *MEMORY[0x277CE1D00];
    if (v20)
    {
      v22 = v20;
    }

    v23 = v22;

    v24 = [MEMORY[0x277CCAA00] defaultManager];
    v25 = [v24 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:0];

    v26 = [v25 URLByAppendingPathComponent:@"AudioExport" isDirectory:1];

    v27 = [MEMORY[0x277CCAD78] UUID];
    v28 = [v27 UUIDString];
    v29 = [v26 URLByAppendingPathComponent:v28 isDirectory:1];

    v30 = [v9 ic_sanitizedFilenameString];
    v31 = [v29 URLByAppendingPathComponent:v30 conformingToType:v23];

    v32 = [v23 preferredFilenameExtension];
    v33 = v32;
    if (v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = &stru_282757698;
    }

    v35 = [v31 URLByAppendingPathComponent:v34];

    v38 = 0;
    [v6 writeToURL:v35 options:1 error:&v38];
    v36 = v38;
    [a1[5] setTemporaryExportURLToRemove:v35];
    if (v36)
    {
      v37 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        __56__ICAttachmentPresenter_presentExportViewForAttachment___block_invoke_cold_1(v2);
      }
    }

LABEL_23:
    v14 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __56__ICAttachmentPresenter_presentExportViewForAttachment___block_invoke_cold_2(v2);
    }

LABEL_25:
    v11 = v14;
    goto LABEL_26;
  }

  v10 = [v4 previewItemURL];
  if (!v10)
  {
    goto LABEL_23;
  }

  v11 = v10;
  v12 = objc_alloc(MEMORY[0x277D75458]);
  v39[0] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
  v14 = [v12 initForExportingURLs:v13 asCopy:1];

  [v14 setDelegate:a1[5]];
  [a1[6] presentViewController:v14 animated:1 completion:&__block_literal_global_227];
LABEL_26:
}

- (void)removeTempooraryExportURL
{
  v3 = [(ICAttachmentPresenter *)self temporaryExportURLToRemove];

  if (v3)
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [(ICAttachmentPresenter *)self temporaryExportURLToRemove];
    [v5 removeItemAtURL:v4 error:0];
  }
}

- (ICViewControllerManager)ic_viewControllerManager
{
  WeakRetained = objc_loadWeakRetained(&self->_ic_viewControllerManager);

  return WeakRetained;
}

- (ICAttachmentPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (ICAttachment)displayedAttachment
{
  v3 = [(ICAttachmentPresenter *)self presentedViewController];
  objc_opt_class();
  v4 = ICDynamicCast();
  if (v4)
  {
    objc_opt_class();
    v5 = [v4 currentPreviewItem];
    v6 = ICCheckedDynamicCast();

    v7 = [v6 attachment];
  }

  else
  {
    v8 = [(ICAttachmentPresenter *)self galleryAttachmentEditorController];

    if (v8)
    {
      v9 = [(ICAttachmentPresenter *)self galleryAttachmentEditorController];
      v7 = [v9 galleryAttachment];
    }

    else
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICAttachmentPresenter(AttachmentState) displayedAttachment]" simulateCrash:1 showAlert:0 format:{@"Unknown type of attachment controller: %@", v3}];
      v7 = 0;
    }
  }

  return v7;
}

- (ICAttachment)selectedSubAttachment
{
  v3 = [(ICAttachmentPresenter *)self galleryAttachmentEditorController];

  if (v3)
  {
    v4 = [(ICAttachmentPresenter *)self galleryAttachmentEditorController];
    v5 = [v4 extractedDocumentController];
    v6 = [v5 selectedScanDataDelegate];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSDictionary)presentedAttachmentUIState
{
  v3 = [(ICAttachmentPresenter *)self galleryAttachmentEditorController];

  if (v3)
  {
    v4 = [(ICAttachmentPresenter *)self galleryAttachmentEditorController];
    v5 = [v4 attachmentUIState];
  }

  else
  {
    v4 = [(ICAttachmentPresenter *)self presentedViewController];
    v6 = ICProtocolCast();
    v5 = [v6 attachmentUIState];
  }

  return v5;
}

- (void)applyPresentedAttachmentUIStateIfNecessary:(id)a3
{
  v4 = a3;
  v5 = [(ICAttachmentPresenter *)self galleryAttachmentEditorController];

  if (v5)
  {
    v6 = [(ICAttachmentPresenter *)self galleryAttachmentEditorController];
  }

  else
  {
    v7 = [(ICAttachmentPresenter *)self presentedViewController];
    v8 = ICProtocolCast();

    v6 = v8;
  }

  v9 = v6;
  [v6 applyAttachmentUIStateIfNecessary:v4];
}

void __35__ICAttachmentPresenter_presentURL__block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) attachment];
  v2 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __43__ICAttachmentPresenter_presentSynapseLink__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_2151A1000, a2, OS_LOG_TYPE_DEBUG, "Finished navigation to Synapse Link from attachment %@", &v3, 0xCu);
}

void __105__ICAttachmentPresenter_updateEditedPreviewItem_atURL_shouldAttemptToWriteDataFromURL_previewController___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v3 = [OUTLINED_FUNCTION_2_1(a1) shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_2151A1000, a2, OS_LOG_TYPE_ERROR, "Updated content URL is not reachable attachment: %@", v4, 0xCu);
}

void __105__ICAttachmentPresenter_updateEditedPreviewItem_atURL_shouldAttemptToWriteDataFromURL_previewController___block_invoke_cold_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = [OUTLINED_FUNCTION_2_1(a1) shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_2151A1000, a3, OS_LOG_TYPE_ERROR, "Unable to save after updating data for attachment: %@, %@", v6, 0x16u);
}

- (void)presentSharingViewForAttachment:(void *)a1 fromSourceView:.cold.1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __72__ICAttachmentPresenter_presentSharingViewForAttachment_fromSourceView___block_invoke_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_2_1(a1) shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)presentExportViewForAttachment:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __56__ICAttachmentPresenter_presentExportViewForAttachment___block_invoke_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_2_1(a1) shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __56__ICAttachmentPresenter_presentExportViewForAttachment___block_invoke_cold_2(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_2_1(a1) shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __56__ICAttachmentPresenter_presentExportViewForAttachment___block_invoke_cold_3(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_2_1(a1) shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end