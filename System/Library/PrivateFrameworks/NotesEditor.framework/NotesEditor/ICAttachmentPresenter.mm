@interface ICAttachmentPresenter
+ (BOOL)shouldCommitPreviewViewController:(id)controller;
+ (id)previewViewControllerWithViewControllerManager:(id)manager attachments:(id)attachments startingAtIndex:(unint64_t)index delegate:(id)delegate editable:(BOOL)editable isFromAttachmentBrowser:(BOOL)browser;
- (BOOL)isAttachmentBrowser;
- (BOOL)isAttachmentPresentedInProcess;
- (BOOL)prefersStatusBarHidden;
- (BOOL)previewController:(id)controller canShareItem:(id)item;
- (ICAttachment)displayedAttachment;
- (ICAttachment)selectedSubAttachment;
- (ICAttachmentPresenter)initWithViewControllerManager:(id)manager attachments:(id)attachments startingAtIndex:(unint64_t)index delegate:(id)delegate displayShowInNote:(BOOL)note editable:(BOOL)editable presentingViewController:(id)controller;
- (ICAttachmentPresenterDelegate)delegate;
- (ICNAEventReporter)eventReporter;
- (ICViewControllerManager)ic_viewControllerManager;
- (NSArray)quickLookFilteredAttachments;
- (NSDictionary)presentedAttachmentUIState;
- (UIBarButtonItem)showInNoteButton;
- (UIViewController)presentingViewController;
- (UIViewController)rootViewController;
- (id)attachment;
- (id)excludedActivityTypesForPreviewController:(id)controller;
- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index;
- (id)previewController:(id)controller transitionViewForPreviewItem:(id)item;
- (id)transitionViewForAttachment:(id)attachment;
- (id)transitionViewForAttachment:(id)attachment atIndexPath:(id)path;
- (int64_t)numberOfPreviewItemsInPreviewController:(id)controller;
- (int64_t)previewController:(id)controller editingModeForPreviewItem:(id)item;
- (unint64_t)quickLookFilteredStartingIndex;
- (void)applyPresentedAttachmentUIStateIfNecessary:(id)necessary;
- (void)attachmentWillBeDeletedNotification:(id)notification;
- (void)dealloc;
- (void)dismiss:(id)dismiss;
- (void)dismissAnimated:(BOOL)animated completion:(id)completion;
- (void)eventReporterLostSession:(id)session;
- (void)galleryAttachmentEditorControllerDeleteAttachment;
- (void)galleryAttachmentEditorControllerDidDismiss;
- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error;
- (void)notifyDelegateDidDismiss;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)presentAttachmentViewController:(id)controller;
- (void)presentAttachmentWithSelectedSubAttachment:(id)attachment;
- (void)presentAudioRecording;
- (void)presentExportViewForAttachment:(id)attachment;
- (void)presentGalleryAttachmentWithSelectedSubAttachment:(id)attachment;
- (void)presentMovie;
- (void)presentQuickLook;
- (void)presentReadOnlyAlertIfNecessaryForAttachment:(id)attachment;
- (void)presentSharingViewForAttachment:(id)attachment fromSourceView:(id)view;
- (void)presentSynapseLink;
- (void)presentURL;
- (void)previewControllerDidDismiss:(id)dismiss;
- (void)removeTempooraryExportURL;
- (void)scrollCollectionViewToIndexPath:(id)path;
- (void)showInNote:(id)note;
- (void)updateEditedPreviewItem:(id)item atURL:(id)l shouldAttemptToWriteDataFromURL:(BOOL)rL previewController:(id)controller;
- (void)updateEditedPreviewItemAtURL:(id)l;
- (void)updateQuickLookFilteredAttachments;
@end

@implementation ICAttachmentPresenter

- (ICAttachmentPresenter)initWithViewControllerManager:(id)manager attachments:(id)attachments startingAtIndex:(unint64_t)index delegate:(id)delegate displayShowInNote:(BOOL)note editable:(BOOL)editable presentingViewController:(id)controller
{
  editableCopy = editable;
  noteCopy = note;
  managerCopy = manager;
  attachmentsCopy = attachments;
  delegateCopy = delegate;
  controllerCopy = controller;
  v19 = [(ICAttachmentPresenter *)self init];
  v20 = v19;
  if (v19)
  {
    [(ICAttachmentPresenter *)v19 setIc_viewControllerManager:managerCopy];
    [(ICAttachmentPresenter *)v20 setAttachments:attachmentsCopy];
    [(ICAttachmentPresenter *)v20 setStartingIndex:index];
    [(ICAttachmentPresenter *)v20 setDelegate:delegateCopy];
    [(ICAttachmentPresenter *)v20 setDisplayShowInNote:noteCopy];
    [(ICAttachmentPresenter *)v20 setAttachmentEditable:editableCopy];
    [(ICAttachmentPresenter *)v20 setPresentingViewController:controllerCopy];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v20 selector:sel_hardLinksDidDelete_ name:*MEMORY[0x277D35BA0] object:0];
  }

  return v20;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

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
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [mainBundle localizedStringForKey:@"Show in Note" value:&stru_282757698 table:0];

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
  startingIndex = [(ICAttachmentPresenter *)self startingIndex];
  attachments = [(ICAttachmentPresenter *)self attachments];
  v5 = [attachments count];

  if (startingIndex > v5)
  {
    v6 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      startingIndex2 = [(ICAttachmentPresenter *)self startingIndex];
      attachments2 = [(ICAttachmentPresenter *)self attachments];
      v12 = 134218240;
      v13 = startingIndex2;
      v14 = 2048;
      v15 = [attachments2 count];
      _os_log_impl(&dword_2151A1000, v6, OS_LOG_TYPE_INFO, "Trying to access attachment %ld out of %ld. Falling back to first attachment", &v12, 0x16u);
    }

    startingIndex = 0;
  }

  attachments3 = [(ICAttachmentPresenter *)self attachments];
  v10 = [attachments3 objectAtIndexedSubscript:startingIndex];

  return v10;
}

- (BOOL)isAttachmentBrowser
{
  delegate = [(ICAttachmentPresenter *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  delegate2 = [(ICAttachmentPresenter *)self delegate];
  isAttachmentBrowser = [delegate2 isAttachmentBrowser];

  return isAttachmentBrowser;
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
  startingIndex = [(ICAttachmentPresenter *)self startingIndex];
  array = [MEMORY[0x277CBEB18] array];
  attachments = [(ICAttachmentPresenter *)self attachments];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__ICAttachmentPresenter_updateQuickLookFilteredAttachments__block_invoke;
  v11[3] = &unk_2781AF7F8;
  v5 = array;
  v12 = v5;
  selfCopy = self;
  v14 = &v15;
  [attachments enumerateObjectsUsingBlock:v11];

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
  attachment = [(ICAttachmentPresenter *)self attachment];
  synapseData = [attachment synapseData];

  if (synapseData)
  {
    v5 = 1;
  }

  else
  {
    attachment2 = [(ICAttachmentPresenter *)self attachment];
    attachmentType = [attachment2 attachmentType];

    if (attachmentType <= 0xD)
    {
      v5 = 0x980u >> attachmentType;
    }

    else
    {
      v5 = 1;
    }
  }

  return v5 & 1;
}

- (void)presentAttachmentWithSelectedSubAttachment:(id)attachment
{
  attachmentCopy = attachment;
  delegate = [(ICAttachmentPresenter *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(ICAttachmentPresenter *)self delegate];
    [delegate2 attachmentPresenterWillPresent:self];
  }

  attachment = [(ICAttachmentPresenter *)self attachment];
  synapseData = [attachment synapseData];

  attachmentType = [attachment attachmentType];
  if (synapseData)
  {
    v10 = 0;
  }

  else
  {
    v10 = attachmentType == 0;
  }

  if (!v10)
  {
    v11 = attachmentType;
    if ((attachmentType & 0xFFFFFFFB) != 9)
    {
      if ((attachmentType - 9) <= 0xFFFDu)
      {
        [*MEMORY[0x277D76620] sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];
      }

      if (synapseData)
      {
        [(ICAttachmentPresenter *)self presentSynapseLink];
LABEL_19:
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        v13 = *MEMORY[0x277D35C28];
        attachment2 = [(ICAttachmentPresenter *)self attachment];
        [defaultCenter addObserver:self selector:sel_attachmentWillBeDeletedNotification_ name:v13 object:attachment2];

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
            [(ICAttachmentPresenter *)self presentGalleryAttachmentWithSelectedSubAttachment:attachmentCopy];
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
  mEMORY[0x277D366C0] = [MEMORY[0x277D366C0] sharedAudioController];
  [mEMORY[0x277D366C0] stop];

  [(ICAttachmentPresenter *)self presentPreview];
}

- (void)presentAudioRecording
{
  attachment = [(ICAttachmentPresenter *)self attachment];
  audioModel = [attachment audioModel];
  if (audioModel)
  {
    v4 = audioModel;
    attachment2 = [(ICAttachmentPresenter *)self attachment];
    note = [attachment2 note];
    if ([note isDeletedOrInTrash])
    {
    }

    else
    {
      attachment3 = [(ICAttachmentPresenter *)self attachment];
      needsInitialFetchFromCloud = [attachment3 needsInitialFetchFromCloud];

      if (needsInitialFetchFromCloud)
      {
        return;
      }

      attachment4 = [(ICAttachmentPresenter *)self attachment];
      audioModel2 = [attachment4 audioModel];
      attachment = [ICAudioRecordingViewController getHostingViewForAttachmentModel:audioModel2 delegate:self];

      [(ICAttachmentPresenter *)self presentAttachmentViewController:attachment];
    }
  }
}

- (void)presentURL
{
  attachment = [self attachment];
  shortLoggingDescription = [attachment shortLoggingDescription];
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
  qlPreviewController = [(ICAttachmentPresenter *)self qlPreviewController];

  if (!qlPreviewController)
  {
    v4 = objc_alloc_init(ICQLPreviewController);
    [(ICAttachmentPresenter *)self setQlPreviewController:v4];

    qlPreviewController2 = [(ICAttachmentPresenter *)self qlPreviewController];
    [qlPreviewController2 ic_addObserver:self forKeyPath:@"currentPreviewItemIndex" context:&compoundliteral_7];
  }

  if ([(ICAttachmentPresenter *)self displayShowInNote])
  {
    showInNoteButton = [(ICAttachmentPresenter *)self showInNoteButton];
    v15[0] = showInNoteButton;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    qlPreviewController3 = [(ICAttachmentPresenter *)self qlPreviewController];
    navigationItem = [qlPreviewController3 navigationItem];
    [navigationItem setRightBarButtonItems:v7];
  }

  qlPreviewController4 = [(ICAttachmentPresenter *)self qlPreviewController];
  [qlPreviewController4 setDataSource:self];

  qlPreviewController5 = [(ICAttachmentPresenter *)self qlPreviewController];
  [qlPreviewController5 setDelegate:self];

  quickLookFilteredStartingIndex = [(ICAttachmentPresenter *)self quickLookFilteredStartingIndex];
  qlPreviewController6 = [(ICAttachmentPresenter *)self qlPreviewController];
  [qlPreviewController6 setCurrentPreviewItemIndex:quickLookFilteredStartingIndex];

  qlPreviewController7 = [(ICAttachmentPresenter *)self qlPreviewController];
  [(ICAttachmentPresenter *)self presentAttachmentViewController:qlPreviewController7];
}

- (void)presentGalleryAttachmentWithSelectedSubAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v4 = [ICGalleryAttachmentEditorController alloc];
  attachment = [(ICAttachmentPresenter *)self attachment];
  v6 = [(ICGalleryAttachmentEditorController *)v4 initWithGalleryAttachment:attachment browserMode:[(ICAttachmentPresenter *)self isAttachmentBrowser] delegate:self];
  [(ICAttachmentPresenter *)self setGalleryAttachmentEditorController:v6];

  if (attachmentCopy)
  {
    objc_opt_class();
    attachment2 = [(ICAttachmentPresenter *)self attachment];
    attachmentModel = [attachment2 attachmentModel];
    v9 = ICDynamicCast();

    identifier = [attachmentCopy identifier];
    v11 = [v9 indexOfSubAttachmentWithIdentifier:identifier];

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

  delegate = [(ICAttachmentPresenter *)self delegate];
  attachment3 = [(ICAttachmentPresenter *)self attachment];
  v15 = [delegate attachmentPresenter:self transitionViewForAttachment:attachment3];

  galleryAttachmentEditorController = [(ICAttachmentPresenter *)self galleryAttachmentEditorController];
  presentingViewController = [(ICAttachmentPresenter *)self presentingViewController];
  v18 = [galleryAttachmentEditorController openEditorOnViewController:presentingViewController pageIndex:v12 sourceView:v15];

  if ((v18 & 1) == 0)
  {
    [(ICAttachmentPresenter *)self setGalleryAttachmentEditorController:0];
  }
}

- (id)transitionViewForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  delegate = [(ICAttachmentPresenter *)self delegate];
  v6 = [delegate attachmentPresenter:self transitionViewForAttachment:attachmentCopy];

  return v6;
}

- (id)transitionViewForAttachment:(id)attachment atIndexPath:(id)path
{
  attachmentCopy = attachment;
  pathCopy = path;
  delegate = [(ICAttachmentPresenter *)self delegate];
  v9 = objc_opt_respondsToSelector();

  delegate2 = [(ICAttachmentPresenter *)self delegate];
  v11 = delegate2;
  if (v9)
  {
    [delegate2 attachmentPresenter:self transitionViewForIndexPath:pathCopy];
  }

  else
  {
    [delegate2 attachmentPresenter:self transitionViewForAttachment:attachmentCopy];
  }
  v12 = ;

  return v12;
}

- (void)scrollCollectionViewToIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(ICAttachmentPresenter *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(ICAttachmentPresenter *)self delegate];
    [delegate2 scrollCollectionViewToIndexPath:pathCopy];
  }
}

- (void)presentAttachmentViewController:(id)controller
{
  controllerCopy = controller;
  [(ICAttachmentPresenter *)self setPresentedViewController:controllerCopy];
  presentingViewController = [(ICAttachmentPresenter *)self presentingViewController];
  areAnimationsEnabled = [MEMORY[0x277D75D18] areAnimationsEnabled];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__ICAttachmentPresenter_presentAttachmentViewController___block_invoke;
  v7[3] = &unk_2781ABCF8;
  v7[4] = self;
  [presentingViewController presentViewController:controllerCopy animated:areAnimationsEnabled completion:v7];
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

+ (id)previewViewControllerWithViewControllerManager:(id)manager attachments:(id)attachments startingAtIndex:(unint64_t)index delegate:(id)delegate editable:(BOOL)editable isFromAttachmentBrowser:(BOOL)browser
{
  browserCopy = browser;
  editableCopy = editable;
  v65[1] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  attachmentsCopy = attachments;
  delegateCopy = delegate;
  v16 = [attachmentsCopy objectAtIndexedSubscript:index];
  attachmentType = [v16 attachmentType];
  if (attachmentType == 12 || (v18 = attachmentType, !attachmentType) && ![v16 hasFallbackPDF])
  {
LABEL_14:
    v24 = 0;
    goto LABEL_18;
  }

  v63 = attachmentsCopy;
  v64 = delegateCopy;
  v19 = managerCopy;
  window = [managerCopy window];
  windowScene = [window windowScene];
  screen = [windowScene screen];
  ic_isSecure = [screen ic_isSecure];

  v24 = 0;
  if (v18 > 0xF)
  {
    managerCopy = v19;
    attachmentsCopy = v63;
    delegateCopy = v64;
    goto LABEL_18;
  }

  delegateCopy = v64;
  if (((1 << v18) & 0xEC77) == 0)
  {
    if (((1 << v18) & 0x180) == 0)
    {
      managerCopy = v19;
      attachmentsCopy = v63;
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
      view = [(ICImagePreviewController *)v24 view];
      [view addSubview:v39];

      [v39 ic_addAnchorsToFillSuperviewWithPadding:-1.0];
      image = [v16 image];
      if (image)
      {
        [v39 setImage:image];
      }

      else
      {
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen bounds];
        v44 = v43;
        v46 = v45;
        mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen2 scale];
        v49 = [v16 attachmentPreviewImageWithMinSize:v44 scale:{v46, v48}];

        delegateCopy = v64;
        orientedImage = [v49 orientedImage];
        [v39 setImage:orientedImage];
      }

      view2 = [(ICImagePreviewController *)v24 view];
      [view2 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
      [(ICImagePreviewController *)v24 setPreferredContentSize:?];

LABEL_49:
      goto LABEL_18;
    }

    if (ic_isSecure)
    {
LABEL_16:
      v24 = 0;
      managerCopy = v19;
LABEL_17:
      attachmentsCopy = v63;
      goto LABEL_18;
    }

    if (v18 != 7)
    {
LABEL_34:
      v39 = [v16 URL];
      mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
      if ([mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25FB8]] == 2)
      {

        managerCopy = v19;
      }

      else
      {
        Helper_x8__OBJC_CLASS___NSSNewsViewController = gotLoadHelper_x8__OBJC_CLASS___NSSNewsViewController(v54);
        v57 = [*(v56 + 3096) canOpenURL:{v39, Helper_x8__OBJC_CLASS___NSSNewsViewController}];

        managerCopy = v19;
        if (v57)
        {
          v24 = [[ICNewsViewController alloc] initWithURL:v39];
          [(ICImagePreviewController *)v24 setAttachment:v16];
          attachmentsCopy = v63;
LABEL_48:
          delegateCopy = v64;
          goto LABEL_49;
        }
      }

      mEMORY[0x277D262A0]2 = [MEMORY[0x277D262A0] sharedConnection];
      attachmentsCopy = v63;
      if ([mEMORY[0x277D262A0]2 effectiveBoolValueForSetting:*MEMORY[0x277D26028]] == 2)
      {

LABEL_40:
        v24 = 0;
        goto LABEL_48;
      }

      scheme = [v39 scheme];
      delegateCopy = v64;
      if (![scheme length])
      {

        v24 = 0;
        goto LABEL_49;
      }

      scheme2 = [v39 scheme];
      if ([scheme2 caseInsensitiveCompare:@"http"])
      {
        scheme3 = [v39 scheme];
        v62 = [scheme3 caseInsensitiveCompare:@"https"];

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
      collectionStorage = [v37 collectionStorage];
      delegateCopy = v64;
      if (collectionStorage)
      {

LABEL_33:
        goto LABEL_34;
      }

      managerCopy = v19;
      if (!v34)
      {
        goto LABEL_33;
      }
    }

    else
    {
      managerCopy = v19;
      delegateCopy = v64;
      if (!v34)
      {
        goto LABEL_33;
      }
    }

    v52 = [objc_alloc(MEMORY[0x277D36698]) initWithAttachment:v16];
    v24 = [[ICMapViewController alloc] initWithAnnotation:v52];

    goto LABEL_17;
  }

  if (ic_isSecure & 1) != 0 || ([v16 needsInitialFetchFromCloud])
  {
    goto LABEL_16;
  }

  v24 = objc_alloc_init(ICQLPreviewController);
  v25 = [ICAttachmentPresenter alloc];
  managerCopy = v19;
  v26 = v19;
  attachmentsCopy = v63;
  v27 = [(ICAttachmentPresenter *)v25 initWithViewControllerManager:v26 attachments:v63 startingAtIndex:index delegate:v64 displayShowInNote:0 editable:editableCopy presentingViewController:0];
  [(ICAttachmentPresenter *)v27 setQlPreviewController:v24];
  [(ICImagePreviewController *)v24 setDelegate:v27];
  [(ICImagePreviewController *)v24 setDataSource:v27];
  [(ICImagePreviewController *)v24 setCurrentPreviewItemIndex:[(ICAttachmentPresenter *)v27 quickLookFilteredStartingIndex]];
  if (browserCopy)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v29 = [mainBundle localizedStringForKey:@"Show in Note" value:&stru_282757698 table:0];

    v30 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v29 style:0 target:v27 action:sel_showInNote_];
    v65[0] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:1];
    navigationItem = [(ICImagePreviewController *)v24 navigationItem];
    [navigationItem setRightBarButtonItems:v31];

    delegateCopy = v64;
  }

  objc_setAssociatedObject(v24, ICAttachmentPreviewViewControllerKey, v27, 0x301);

LABEL_18:

  return v24;
}

- (BOOL)prefersStatusBarHidden
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  keyWindow = [mEMORY[0x277D75128] keyWindow];
  rootViewController = [keyWindow rootViewController];

  LOBYTE(mEMORY[0x277D75128]) = [rootViewController prefersStatusBarHidden];
  return mEMORY[0x277D75128];
}

+ (BOOL)shouldCommitPreviewViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = controllerCopy;
    currentPreviewItem = [v4 currentPreviewItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    currentPreviewItem2 = [v4 currentPreviewItem];
    if ((isKindOfClass & 1) == 0)
    {
      objc_opt_class();
      v8 = objc_opt_isKindOfClass();

      if ((v8 & 1) == 0)
      {
        goto LABEL_8;
      }

      currentPreviewItem3 = [v4 currentPreviewItem];
      currentPreviewItem2 = [currentPreviewItem3 attachment];
    }

    if (currentPreviewItem2)
    {
      parentAttachment = [currentPreviewItem2 parentAttachment];
      v11 = parentAttachment == 0;

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

- (void)dismiss:(id)dismiss
{
  areAnimationsEnabled = [MEMORY[0x277D75D18] areAnimationsEnabled];

  [(ICAttachmentPresenter *)self dismissAnimated:areAnimationsEnabled completion:0];
}

- (void)dismissAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  presentedViewController = [(ICAttachmentPresenter *)self presentedViewController];

  if (presentedViewController)
  {
    if (![(ICAttachmentPresenter *)self isDismissing])
    {
      [(ICAttachmentPresenter *)self setIsDismissing:1];
      presentedViewController2 = [(ICAttachmentPresenter *)self presentedViewController];
      presentingViewController = [presentedViewController2 presentingViewController];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __52__ICAttachmentPresenter_dismissAnimated_completion___block_invoke;
      v11[3] = &unk_2781AE4F0;
      v11[4] = self;
      v12 = completionCopy;
      [presentingViewController dismissViewControllerAnimated:animatedCopy completion:v11];

      goto LABEL_8;
    }
  }

  else
  {
    galleryAttachmentEditorController = [(ICAttachmentPresenter *)self galleryAttachmentEditorController];

    if (galleryAttachmentEditorController)
    {
      [(ICAttachmentPresenter *)self setGalleryAttachmentEditorController:0];
      [(ICAttachmentPresenter *)self notifyDelegateDidDismiss];
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
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
  ic_viewControllerManager = [(ICAttachmentPresenter *)self ic_viewControllerManager];
  currentAttachmentPresenter = [ic_viewControllerManager currentAttachmentPresenter];

  if (currentAttachmentPresenter == self)
  {
    ic_viewControllerManager2 = [(ICAttachmentPresenter *)self ic_viewControllerManager];
    [ic_viewControllerManager2 setCurrentAttachmentPresenter:0];
  }

  delegate = [(ICAttachmentPresenter *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(ICAttachmentPresenter *)self delegate];
    [delegate2 attachmentPresenterDidDismiss:self];
  }
}

- (void)showInNote:(id)note
{
  qlPreviewController = [(ICAttachmentPresenter *)self qlPreviewController];

  if (qlPreviewController)
  {
    quickLookFilteredAttachments = [(ICAttachmentPresenter *)self quickLookFilteredAttachments];
    qlPreviewController2 = [(ICAttachmentPresenter *)self qlPreviewController];
    attachment = [quickLookFilteredAttachments objectAtIndexedSubscript:{objc_msgSend(qlPreviewController2, "currentPreviewItemIndex")}];
  }

  else
  {
    attachment = [(ICAttachmentPresenter *)self attachment];
  }

  ic_viewControllerManager = [(ICAttachmentPresenter *)self ic_viewControllerManager];
  objectID = [attachment objectID];
  [ic_viewControllerManager selectAttachmentWithObjectID:objectID animated:1];

  eventReporter = [(ICAttachmentPresenter *)self eventReporter];
  [eventReporter submitAttachmentBrowserActionEventForType:3];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  objectCopy = object;
  pathCopy = path;
  if (([(ICAttachmentPresenter *)self ic_didAddObserverForContext:context inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotes/Ironcade/iOS/AttachmentPresentation/ICAttachmentPresenter.m"]& 1) != 0)
  {
    v13 = [(ICAttachmentPresenter *)self ic_shouldIgnoreObserveValue:changeCopy ofObject:objectCopy forKeyPath:pathCopy];

    if (context == &compoundliteral_7 && (v13 & 1) == 0)
    {

      [(ICAttachmentPresenter *)self previewControllerDidChangeCurrentItem];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = ICAttachmentPresenter;
    [(ICAttachmentPresenter *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)presentReadOnlyAlertIfNecessaryForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  if ([attachmentCopy attachmentType] == 1 && objc_msgSend(attachmentCopy, "hasFallbackPDF"))
  {
    qlPreviewController = [(ICAttachmentPresenter *)self qlPreviewController];
    [qlPreviewController showViewOnlyWarning];
  }
}

- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index
{
  quickLookFilteredAttachments = [(ICAttachmentPresenter *)self quickLookFilteredAttachments];
  v7 = [quickLookFilteredAttachments count];

  quickLookFilteredAttachments2 = [(ICAttachmentPresenter *)self quickLookFilteredAttachments];
  v9 = quickLookFilteredAttachments2;
  if (v7 <= index)
  {
    [quickLookFilteredAttachments2 firstObject];
  }

  else
  {
    [quickLookFilteredAttachments2 objectAtIndexedSubscript:index];
  }
  v10 = ;

  v11 = [[ICQLItem alloc] initWithAttachment:v10];
  if ([v10 attachmentType] == 6 || objc_msgSend(v10, "hasFallbackPDF"))
  {
    delegate = [(ICAttachmentPresenter *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      delegate2 = [(ICAttachmentPresenter *)self delegate];
      -[ICQLItem setUseFullPDFTransition:](v11, "setUseFullPDFTransition:", [delegate2 attachmentPresenter:self useFullPDFTransitionForAttachment:v10]);
    }
  }

  return v11;
}

- (int64_t)numberOfPreviewItemsInPreviewController:(id)controller
{
  quickLookFilteredAttachments = [(ICAttachmentPresenter *)self quickLookFilteredAttachments];
  v5 = [quickLookFilteredAttachments count];

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

- (void)previewControllerDidDismiss:(id)dismiss
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

- (id)previewController:(id)controller transitionViewForPreviewItem:(id)item
{
  v13 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    attachment = itemCopy;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }

    attachment = [itemCopy attachment];
  }

  v7 = attachment;
  if (attachment)
  {
    delegate = [(ICAttachmentPresenter *)self delegate];
    v9 = [delegate attachmentPresenter:self transitionViewForAttachment:v7];

    goto LABEL_10;
  }

LABEL_7:
  v7 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = itemCopy;
    _os_log_impl(&dword_2151A1000, v7, OS_LOG_TYPE_INFO, "Could not find attachment for transitioning preview item: %@", &v11, 0xCu);
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (id)excludedActivityTypesForPreviewController:(id)controller
{
  v6[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D54790];
  v6[0] = *MEMORY[0x277D360F8];
  v6[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];

  return v4;
}

- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error
{
  presentingViewController = [controller presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)attachmentWillBeDeletedNotification:(id)notification
{
  object = [notification object];
  attachment = [(ICAttachmentPresenter *)self attachment];

  if (object == attachment)
  {
    [(ICAttachmentPresenter *)self dismiss:self];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = *MEMORY[0x277D35C28];
    attachment2 = [(ICAttachmentPresenter *)self attachment];
    [defaultCenter removeObserver:self name:v6 object:attachment2];
  }
}

void __44__ICAttachmentPresenter_hardLinksDidDelete___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) qlPreviewController];
  [v1 reloadData];
}

- (int64_t)previewController:(id)controller editingModeForPreviewItem:(id)item
{
  itemCopy = item;
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
    attachment = [v8 attachment];

    if (attachment)
    {
      goto LABEL_5;
    }

LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  attachment = v6;
LABEL_5:
  attachmentModel = [attachment attachmentModel];
  canMarkup = [attachmentModel canMarkup];

  if (canMarkup)
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

- (void)updateEditedPreviewItemAtURL:(id)l
{
  lCopy = l;
  attachment = [(ICAttachmentPresenter *)self attachment];
  [(ICAttachmentPresenter *)self updateEditedPreviewItem:attachment atURL:lCopy shouldAttemptToWriteDataFromURL:1 previewController:0];
}

- (void)updateEditedPreviewItem:(id)item atURL:(id)l shouldAttemptToWriteDataFromURL:(BOOL)rL previewController:(id)controller
{
  itemCopy = item;
  lCopy = l;
  controllerCopy = controller;
  objc_opt_class();
  v12 = ICDynamicCast();
  if (v12)
  {
    attachment = v12;
LABEL_4:
    [lCopy startAccessingSecurityScopedResource];
    managedObjectContext = [attachment managedObjectContext];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __105__ICAttachmentPresenter_updateEditedPreviewItem_atURL_shouldAttemptToWriteDataFromURL_previewController___block_invoke;
    v17[3] = &unk_2781AF848;
    v18 = controllerCopy;
    v19 = attachment;
    v20 = lCopy;
    rLCopy = rL;
    v16 = attachment;
    [managedObjectContext performBlockAndWait:v17];

    goto LABEL_5;
  }

  objc_opt_class();
  v14 = ICDynamicCast();
  attachment = [v14 attachment];

  if (attachment)
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

- (BOOL)previewController:(id)controller canShareItem:(id)item
{
  mEMORY[0x277D369A0] = [MEMORY[0x277D369A0] sharedInstance];
  isSecureScreenShowing = [mEMORY[0x277D369A0] isSecureScreenShowing];

  return isSecureScreenShowing ^ 1;
}

- (void)galleryAttachmentEditorControllerDidDismiss
{
  [(ICAttachmentPresenter *)self setGalleryAttachmentEditorController:0];

  [(ICAttachmentPresenter *)self notifyDelegateDidDismiss];
}

- (void)galleryAttachmentEditorControllerDeleteAttachment
{
  delegate = [(ICAttachmentPresenter *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(ICAttachmentPresenter *)self delegate];
    [delegate2 handleDeleteAttachmentFromPresenter:self];
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
    ic_viewControllerManager = [(ICAttachmentPresenter *)self ic_viewControllerManager];
    window = [ic_viewControllerManager window];
    v8 = [v3 initWithSubTrackerName:v5 window:window];
    eventReporter = self->_eventReporter;
    self->_eventReporter = v8;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_eventReporterLostSession_ name:*MEMORY[0x277D35958] object:self->_eventReporter];
  }

  v11 = self->_eventReporter;

  return v11;
}

- (void)eventReporterLostSession:(id)session
{
  eventReporter = self->_eventReporter;
  self->_eventReporter = 0;
  sessionCopy = session;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = *MEMORY[0x277D35958];
  object = [sessionCopy object];

  [defaultCenter removeObserver:self name:v6 object:object];
}

- (UIViewController)rootViewController
{
  presentingViewController = [(ICAttachmentPresenter *)self presentingViewController];
  ic_topViewController = [presentingViewController ic_topViewController];

  return ic_topViewController;
}

- (void)presentSharingViewForAttachment:(id)attachment fromSourceView:(id)view
{
  v21[1] = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  viewCopy = view;
  v8 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ICAttachmentPresenter presentSharingViewForAttachment:attachmentCopy fromSourceView:?];
  }

  presentingViewController = [(ICAttachmentPresenter *)self presentingViewController];
  ic_topViewController = [presentingViewController ic_topViewController];

  v11 = MEMORY[0x277D36788];
  v21[0] = attachmentCopy;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  ic_window = [ic_topViewController ic_window];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __72__ICAttachmentPresenter_presentSharingViewForAttachment_fromSourceView___block_invoke;
  v17[3] = &unk_2781AD198;
  v18 = attachmentCopy;
  v19 = viewCopy;
  v20 = ic_topViewController;
  v14 = ic_topViewController;
  v15 = viewCopy;
  v16 = attachmentCopy;
  [v11 generatePDFsIfNecessaryForGalleryAttachments:v12 displayWindow:ic_window presentingViewController:v14 completionHandler:v17];
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

- (void)presentExportViewForAttachment:(id)attachment
{
  v17[1] = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  v5 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICAttachmentPresenter presentExportViewForAttachment:attachmentCopy];
  }

  presentingViewController = [(ICAttachmentPresenter *)self presentingViewController];
  ic_topViewController = [presentingViewController ic_topViewController];

  v8 = MEMORY[0x277D36788];
  v17[0] = attachmentCopy;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  ic_window = [ic_topViewController ic_window];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__ICAttachmentPresenter_presentExportViewForAttachment___block_invoke;
  v13[3] = &unk_2781AD198;
  v14 = attachmentCopy;
  selfCopy = self;
  v16 = ic_topViewController;
  v11 = ic_topViewController;
  v12 = attachmentCopy;
  [v8 generatePDFsIfNecessaryForGalleryAttachments:v9 displayWindow:ic_window presentingViewController:v11 completionHandler:v13];
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
  temporaryExportURLToRemove = [(ICAttachmentPresenter *)self temporaryExportURLToRemove];

  if (temporaryExportURLToRemove)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    temporaryExportURLToRemove2 = [(ICAttachmentPresenter *)self temporaryExportURLToRemove];
    [defaultManager removeItemAtURL:temporaryExportURLToRemove2 error:0];
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
  presentedViewController = [(ICAttachmentPresenter *)self presentedViewController];
  objc_opt_class();
  v4 = ICDynamicCast();
  if (v4)
  {
    objc_opt_class();
    currentPreviewItem = [v4 currentPreviewItem];
    v6 = ICCheckedDynamicCast();

    attachment = [v6 attachment];
  }

  else
  {
    galleryAttachmentEditorController = [(ICAttachmentPresenter *)self galleryAttachmentEditorController];

    if (galleryAttachmentEditorController)
    {
      galleryAttachmentEditorController2 = [(ICAttachmentPresenter *)self galleryAttachmentEditorController];
      attachment = [galleryAttachmentEditorController2 galleryAttachment];
    }

    else
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICAttachmentPresenter(AttachmentState) displayedAttachment]" simulateCrash:1 showAlert:0 format:{@"Unknown type of attachment controller: %@", presentedViewController}];
      attachment = 0;
    }
  }

  return attachment;
}

- (ICAttachment)selectedSubAttachment
{
  galleryAttachmentEditorController = [(ICAttachmentPresenter *)self galleryAttachmentEditorController];

  if (galleryAttachmentEditorController)
  {
    galleryAttachmentEditorController2 = [(ICAttachmentPresenter *)self galleryAttachmentEditorController];
    extractedDocumentController = [galleryAttachmentEditorController2 extractedDocumentController];
    selectedScanDataDelegate = [extractedDocumentController selectedScanDataDelegate];
  }

  else
  {
    selectedScanDataDelegate = 0;
  }

  return selectedScanDataDelegate;
}

- (NSDictionary)presentedAttachmentUIState
{
  galleryAttachmentEditorController = [(ICAttachmentPresenter *)self galleryAttachmentEditorController];

  if (galleryAttachmentEditorController)
  {
    galleryAttachmentEditorController2 = [(ICAttachmentPresenter *)self galleryAttachmentEditorController];
    attachmentUIState = [galleryAttachmentEditorController2 attachmentUIState];
  }

  else
  {
    galleryAttachmentEditorController2 = [(ICAttachmentPresenter *)self presentedViewController];
    v6 = ICProtocolCast();
    attachmentUIState = [v6 attachmentUIState];
  }

  return attachmentUIState;
}

- (void)applyPresentedAttachmentUIStateIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  galleryAttachmentEditorController = [(ICAttachmentPresenter *)self galleryAttachmentEditorController];

  if (galleryAttachmentEditorController)
  {
    galleryAttachmentEditorController2 = [(ICAttachmentPresenter *)self galleryAttachmentEditorController];
  }

  else
  {
    presentedViewController = [(ICAttachmentPresenter *)self presentedViewController];
    v8 = ICProtocolCast();

    galleryAttachmentEditorController2 = v8;
  }

  v9 = galleryAttachmentEditorController2;
  [galleryAttachmentEditorController2 applyAttachmentUIStateIfNecessary:necessaryCopy];
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