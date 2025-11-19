@interface ICMarkupPresenter
+ (void)markupAttachment:(id)a3 fromView:(id)a4 presentingViewController:(id)a5 inkStyle:(unint64_t)a6 frameBlock:(id)a7 startPresentBlock:(id)a8 completionBlock:(id)a9 dismissCompletionBlock:(id)a10;
- (UIViewController)presentingViewController;
- (void)dismissMarkupViewController;
- (void)handleReturnedURL:(id)a3;
- (void)markupCancelAction:(id)a3;
- (void)markupDoneAction:(id)a3;
- (void)markupViewWillDissappear;
- (void)presentMarkupFromView:(id)a3;
- (void)presentMarkupUsingExtensionFromView:(id)a3;
- (void)presentMarkupViewControllerFromView:(id)a3;
- (void)saveChangesAndDismiss;
@end

@implementation ICMarkupPresenter

+ (void)markupAttachment:(id)a3 fromView:(id)a4 presentingViewController:(id)a5 inkStyle:(unint64_t)a6 frameBlock:(id)a7 startPresentBlock:(id)a8 completionBlock:(id)a9 dismissCompletionBlock:(id)a10
{
  v26 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = [v26 attachmentModel];
  v22 = [v21 isReadyToPresent];

  if (v22)
  {
    v23 = currentMarkupPresenter;
    if (!currentMarkupPresenter)
    {
      v24 = objc_alloc_init(ICMarkupPresenter);
      v25 = currentMarkupPresenter;
      currentMarkupPresenter = v24;

      v23 = currentMarkupPresenter;
    }

    [v23 setAttachment:v26];
    [currentMarkupPresenter setPresentingViewController:v16];
    [currentMarkupPresenter setInkStyle:a6];
    [currentMarkupPresenter setFrameBlock:v17];
    [currentMarkupPresenter setStartPresentBlock:v18];
    [currentMarkupPresenter setCompletionBlock:v19];
    [currentMarkupPresenter setDismissCompletionBlock:v20];
    [currentMarkupPresenter presentMarkupFromView:v15];
  }
}

- (void)presentMarkupFromView:(id)a3
{
  v6 = a3;
  v4 = [(ICMarkupPresenter *)self attachment];
  v5 = [v4 shouldEmbedMarkupDataInMedia];

  if (v5)
  {
    [(ICMarkupPresenter *)self presentMarkupUsingExtensionFromView:v6];
  }

  else
  {
    [(ICMarkupPresenter *)self presentMarkupViewControllerFromView:v6];
  }
}

- (void)markupCancelAction:(id)a3
{
  [(ICMarkupPresenter *)self setMarkupWasDismissedByUserInteraction:1];

  [(ICMarkupPresenter *)self dismissMarkupViewController];
}

- (void)markupDoneAction:(id)a3
{
  [(ICMarkupPresenter *)self setMarkupWasDismissedByUserInteraction:1];

  [(ICMarkupPresenter *)self saveChangesAndDismiss];
}

- (void)markupViewWillDissappear
{
  if (![(ICMarkupPresenter *)self markupWasDismissedByUserInteraction])
  {

    [(ICMarkupPresenter *)self saveChangesAndDismiss];
  }
}

- (void)saveChangesAndDismiss
{
  v3 = [(ICMarkupPresenter *)self markupViewController];
  v4 = [v3 createArchivedModelData];

  if (v4)
  {
    v5 = [(ICMarkupPresenter *)self markupViewController];
    v6 = [v5 dataRepresentationEmbeddingSourceImageAndEditModel:0 error:0];

    v7 = MEMORY[0x277D35F10];
    v8 = [(ICMarkupPresenter *)self attachment];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __42__ICMarkupPresenter_saveChangesAndDismiss__block_invoke;
    v12[3] = &unk_2781ABEB8;
    v12[4] = self;
    v13 = v6;
    v9 = v6;
    [v7 applyMarkupModelData:v4 attachment:v8 completionBlock:v12];
  }

  else
  {
    v10 = [(ICMarkupPresenter *)self completionBlock];

    if (v10)
    {
      v11 = [(ICMarkupPresenter *)self completionBlock];
      v11[2](v11, 0);
    }

    [(ICMarkupPresenter *)self dismissMarkupViewController];
  }
}

uint64_t __42__ICMarkupPresenter_saveChangesAndDismiss__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) completionBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) completionBlock];
    v3[2](v3, *(a1 + 40));
  }

  v4 = *(a1 + 32);

  return [v4 dismissMarkupViewController];
}

- (void)dismissMarkupViewController
{
  v3 = [(ICMarkupPresenter *)self dismissCompletionBlock];
  [(ICMarkupPresenter *)self setDismissCompletionBlock:0];
  [(ICMarkupPresenter *)self setMarkupViewController:0];
  v4 = currentMarkupPresenter;
  currentMarkupPresenter = 0;

  v5 = [(ICMarkupPresenter *)self presentingViewController];
  v6 = [v5 presentedViewController];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__ICMarkupPresenter_dismissMarkupViewController__block_invoke;
  v8[3] = &unk_2781AC7D8;
  v9 = v3;
  v7 = v3;
  [v6 dismissViewControllerAnimated:1 completion:v8];
}

uint64_t __48__ICMarkupPresenter_dismissMarkupViewController__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)presentMarkupViewControllerFromView:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D35F10] createMarkupViewController];
  [v5 setInkStyle:{-[ICMarkupPresenter inkStyle](self, "inkStyle")}];
  v6 = [(ICMarkupPresenter *)self attachment];
  v7 = [v6 markupModelData];
  v8 = [MEMORY[0x277D35F10] dataToEditForAttachment:v6 includeMarkupModelData:0];
  v9 = [v6 image];
  [v5 setData:v8 withArchivedModelData:v7 placeholderImage:v9];

  v10 = [[ICMarkupNavigationController alloc] initWithRootViewController:v5];
  [(ICMarkupPresenter *)self setMarkupWasDismissedByUserInteraction:0];
  [(ICMarkupNavigationController *)v10 setMarkupDelegate:self];
  v11 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_markupDoneAction_];
  v12 = [v5 navigationItem];
  [v12 setLeftBarButtonItem:v11];

  v13 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_markupCancelAction_];
  v14 = [v5 navigationItem];
  [v14 setRightBarButtonItem:v13];

  [(ICMarkupPresenter *)self setMarkupViewController:v5];
  [(ICMarkupNavigationController *)v10 setModalTransitionStyle:2];
  [(ICMarkupNavigationController *)v10 setModalPresentationStyle:0];
  v15 = [MEMORY[0x277D75348] ICExtractedDocumentViewControllerBackgroundColor];
  [v5 setBackgroundColor:v15];

  v16 = [(ICMarkupPresenter *)self startPresentBlock];
  [(ICMarkupPresenter *)self setStartPresentBlock:0];
  if (v16)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __57__ICMarkupPresenter_presentMarkupViewControllerFromView___block_invoke;
    v21[3] = &unk_2781ABEB8;
    v21[4] = self;
    v22 = v10;
    (v16)[2](v16, v21);
  }

  else
  {
    objc_initWeak(&location, self);
    v17 = [(ICMarkupPresenter *)self presentingViewController];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __57__ICMarkupPresenter_presentMarkupViewControllerFromView___block_invoke_2;
    v18[3] = &unk_2781AC0B8;
    objc_copyWeak(&v19, &location);
    [v17 presentViewController:v10 animated:1 completion:v18];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

void __57__ICMarkupPresenter_presentMarkupViewControllerFromView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  [v2 presentViewController:*(a1 + 40) animated:1 completion:0];
}

void __57__ICMarkupPresenter_presentMarkupViewControllerFromView___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = [WeakRetained markupViewController];
    *buf = 67109120;
    v8 = [v4 isFirstResponder];
    _os_log_impl(&dword_2151A1000, v2, OS_LOG_TYPE_DEFAULT, "MarkupViewController finished presenting, isFirstResponder: %d", buf, 8u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ICMarkupPresenter_presentMarkupViewControllerFromView___block_invoke_19;
  block[3] = &unk_2781AC0B8;
  objc_copyWeak(&v6, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v6);
}

void __57__ICMarkupPresenter_presentMarkupViewControllerFromView___block_invoke_19(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained markupViewController];
  v4 = [v3 isFirstResponder];

  if ((v4 & 1) == 0)
  {
    v5 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_2151A1000, v5, OS_LOG_TYPE_DEFAULT, "Make MarkupViewController become first responder", v8, 2u);
    }

    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 markupViewController];
    [v7 becomeFirstResponder];
  }
}

- (void)presentMarkupUsingExtensionFromView:(id)a3
{
  v71[5] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v67 = 0;
  v6 = [MEMORY[0x277CCA9C8] extensionWithIdentifier:@"com.apple.MarkupUI.MarkupPrivateExtension" error:&v67];
  v52 = v67;
  if (v52)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(ICMarkupPresenter *)v52 presentMarkupUsingExtensionFromView:v8];
  }

  if (v6)
  {
LABEL_9:
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __57__ICMarkupPresenter_presentMarkupUsingExtensionFromView___block_invoke;
    v66[3] = &unk_2781AF490;
    v66[4] = self;
    v66[5] = a2;
    [v6 setRequestCompletionBlock:{v66, v52}];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __57__ICMarkupPresenter_presentMarkupUsingExtensionFromView___block_invoke_2;
    v65[3] = &unk_2781AF4B8;
    v65[4] = self;
    v65[5] = a2;
    [v6 setRequestCancellationBlock:v65];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __57__ICMarkupPresenter_presentMarkupUsingExtensionFromView___block_invoke_2_25;
    v64[3] = &unk_2781AF4E0;
    v64[4] = self;
    v64[5] = a2;
    [v6 setRequestInterruptionBlock:v64];
    v53 = objc_alloc_init(MEMORY[0x277CCAA88]);
    v60 = 0;
    v61 = &v60;
    v62 = 0x2020000000;
    v63 = 0;
    v9 = [(ICMarkupPresenter *)self attachment];
    v10 = [v9 managedObjectContext];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __57__ICMarkupPresenter_presentMarkupUsingExtensionFromView___block_invoke_2_29;
    v59[3] = &unk_2781ACF80;
    v59[4] = self;
    v59[5] = &v60;
    [v10 performBlockAndWait:v59];

    v11 = *MEMORY[0x277CE1D48];
    if (*(v61 + 24) == 1)
    {
      v12 = [v11 identifier];
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __57__ICMarkupPresenter_presentMarkupUsingExtensionFromView___block_invoke_3;
      v58[3] = &unk_2781AF508;
      v58[4] = self;
      [v53 registerItemForTypeIdentifier:v12 loadHandler:v58];
    }

    else
    {
      v12 = [v11 identifier];
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __57__ICMarkupPresenter_presentMarkupUsingExtensionFromView___block_invoke_2_32;
      v57[3] = &unk_2781AF508;
      v57[4] = self;
      [v53 registerItemForTypeIdentifier:v12 loadHandler:v57];
    }

    v13 = [(ICMarkupPresenter *)self frameBlock];
    (v13)[2](v13, v5);
    [v5 convertRect:0 toView:?];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    gotLoadHelper_x8__MUAnimationSourceRect(v22);
    v70[0] = **(v23 + 1736);
    v72.origin.x = v15;
    v72.origin.y = v17;
    v72.size.width = v19;
    v72.size.height = v21;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v72);
    v71[0] = DictionaryRepresentation;
    gotLoadHelper_x8__MUAnimationMaskRect(v25);
    v70[1] = **(v26 + 1728);
    v73.origin.x = v15;
    v73.origin.y = v17;
    v73.size.width = v19;
    v73.size.height = v21;
    v27 = CGRectCreateDictionaryRepresentation(v73);
    v71[1] = v27;
    Helper_x8__MUAnimationIconImage = gotLoadHelper_x8__MUAnimationIconImage(v28);
    v70[2] = **(v30 + 1720);
    v31 = [(ICMarkupPresenter *)self attachment];
    v32 = [v31 image];
    Helper_x8__MUDisplayAsFullScreen = gotLoadHelper_x8__MUDisplayAsFullScreen(v33);
    v71[2] = v35;
    v71[3] = MEMORY[0x277CBEC38];
    Helper_x9__MUEncryptPrivateMetadata = gotLoadHelper_x9__MUEncryptPrivateMetadata(Helper_x8__MUDisplayAsFullScreen);
    v38 = **(v37 + 1760);
    v70[3] = v39;
    v70[4] = v38;
    v71[4] = MEMORY[0x277CBEC28];
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:{5, Helper_x9__MUEncryptPrivateMetadata}];
    v41 = [v40 mutableCopy];

    v42 = [(ICMarkupPresenter *)self attachment];
    v43 = [v42 previewItemTitle];
    LOBYTE(v40) = [v43 length] == 0;

    if ((v40 & 1) == 0)
    {
      v44 = [(ICMarkupPresenter *)self attachment];
      v45 = [v44 previewItemTitle];
      Helper_x8__MUFileDisplayName = gotLoadHelper_x8__MUFileDisplayName(v46);
      [v41 setObject:v45 forKeyedSubscript:{**(v48 + 1768), Helper_x8__MUFileDisplayName}];
    }

    v49 = objc_alloc_init(MEMORY[0x277CCA9D8]);
    [v49 setUserInfo:v41];
    v69 = v53;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
    [v49 setAttachments:v50];

    v68 = v49;
    v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v68 count:1];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __57__ICMarkupPresenter_presentMarkupUsingExtensionFromView___block_invoke_3_36;
    v54[3] = &unk_2781AF580;
    v54[4] = self;
    v56 = a2;
    v55 = v5;
    [v6 instantiateViewControllerWithInputItems:v51 connectionHandler:v54];

    _Block_object_dispose(&v60, 8);
  }
}

void __57__ICMarkupPresenter_presentMarkupUsingExtensionFromView___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(*(a1 + 40));
    *buf = 138412546;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_2151A1000, v7, OS_LOG_TYPE_DEFAULT, "%@ %@ B", buf, 0x16u);
  }

  v11 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_2151A1000, v11, OS_LOG_TYPE_DEFAULT, "RequestCompletionBlock id: %@ items: %@", buf, 0x16u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ICMarkupPresenter_presentMarkupUsingExtensionFromView___block_invoke_21;
  block[3] = &unk_2781ABCF8;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __57__ICMarkupPresenter_presentMarkupUsingExtensionFromView___block_invoke_21(uint64_t a1)
{
  v1 = [*(a1 + 32) presentingViewController];
  [v1 dismissViewControllerAnimated:0 completion:0];
}

void __57__ICMarkupPresenter_presentMarkupUsingExtensionFromView___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(*(a1 + 40));
    *buf = 138412546;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_2151A1000, v7, OS_LOG_TYPE_DEFAULT, "%@ %@ C", buf, 0x16u);
  }

  v11 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_2151A1000, v11, OS_LOG_TYPE_DEFAULT, "RequestCancellationBlock id: %@ error: %@", buf, 0x16u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ICMarkupPresenter_presentMarkupUsingExtensionFromView___block_invoke_23;
  block[3] = &unk_2781ABCF8;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __57__ICMarkupPresenter_presentMarkupUsingExtensionFromView___block_invoke_23(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  [v2 dismissViewControllerAnimated:0 completion:0];

  v3 = *(a1 + 32);

  return [v3 setMarkupRemoteViewController:0];
}

void __57__ICMarkupPresenter_presentMarkupUsingExtensionFromView___block_invoke_2_25(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(*(a1 + 40));
    *buf = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_2151A1000, v4, OS_LOG_TYPE_DEFAULT, "%@ %@ D", buf, 0x16u);
  }

  v8 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_2151A1000, v8, OS_LOG_TYPE_DEFAULT, "RequestInterruptionBlock id: %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ICMarkupPresenter_presentMarkupUsingExtensionFromView___block_invoke_26;
  block[3] = &unk_2781ABCF8;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __57__ICMarkupPresenter_presentMarkupUsingExtensionFromView___block_invoke_26(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  [v2 dismissViewControllerAnimated:0 completion:0];

  v3 = *(a1 + 32);

  return [v3 setMarkupRemoteViewController:0];
}

void __57__ICMarkupPresenter_presentMarkupUsingExtensionFromView___block_invoke_2_29(uint64_t a1)
{
  v3 = [*(a1 + 32) attachment];
  v2 = [v3 media];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isPasswordProtected];
}

void __57__ICMarkupPresenter_presentMarkupUsingExtensionFromView___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__22;
  v15 = __Block_byref_object_dispose__22;
  v16 = 0;
  v8 = [*(a1 + 32) attachment];
  v9 = [v8 managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__ICMarkupPresenter_presentMarkupUsingExtensionFromView___block_invoke_30;
  v10[3] = &unk_2781ACF80;
  v10[4] = *(a1 + 32);
  v10[5] = &v11;
  [v9 performBlockAndWait:v10];

  v6[2](v6, v12[5], 0);
  _Block_object_dispose(&v11, 8);
}

void __57__ICMarkupPresenter_presentMarkupUsingExtensionFromView___block_invoke_30(uint64_t a1)
{
  v6 = [*(a1 + 32) attachment];
  v2 = [v6 media];
  v3 = [v2 decryptedData];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __57__ICMarkupPresenter_presentMarkupUsingExtensionFromView___block_invoke_2_32(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D35F10];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 attachment];
  v6 = [v2 dataToEditForAttachment:v5 includeMarkupModelData:1];

  v4[2](v4, v6, 0);
}

void __57__ICMarkupPresenter_presentMarkupUsingExtensionFromView___block_invoke_3_36(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __57__ICMarkupPresenter_presentMarkupUsingExtensionFromView___block_invoke_3_36_cold_1(v7, v8);
    }
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __57__ICMarkupPresenter_presentMarkupUsingExtensionFromView___block_invoke_37;
    v10[3] = &unk_2781ADF40;
    v9 = *(a1 + 48);
    v10[4] = *(a1 + 32);
    v13 = v9;
    v11 = v6;
    v12 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], v10);
  }
}

void __57__ICMarkupPresenter_presentMarkupUsingExtensionFromView___block_invoke_37(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = NSStringFromSelector(*(a1 + 56));
    *buf = 138412546;
    v21 = v4;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_2151A1000, v2, OS_LOG_TYPE_DEFAULT, "%@ %@ E", buf, 0x16u);
  }

  objc_initWeak(buf, *(a1 + 32));
  v6 = *(a1 + 40);
  [*(a1 + 32) setMarkupRemoteViewController:v6];
  v7 = [*(a1 + 32) markupRemoteViewController];
  v8 = [v7 view];
  [v8 setOpaque:0];

  v9 = [MEMORY[0x277D75348] clearColor];
  v10 = [*(a1 + 32) markupRemoteViewController];
  v11 = [v10 view];
  [v11 setBackgroundColor:v9];

  v12 = [*(a1 + 32) markupRemoteViewController];
  [v12 setModalPresentationStyle:5];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __57__ICMarkupPresenter_presentMarkupUsingExtensionFromView___block_invoke_38;
  v16[3] = &unk_2781AF558;
  objc_copyWeak(&v19, buf);
  v17 = *(a1 + 48);
  v13 = v6;
  v18 = v13;
  v14 = [*(a1 + 32) markupRemoteViewController];
  [v14 setFinishedWithResultsCompletionBlock:v16];

  v15 = [*(a1 + 32) presentingViewController];
  [v15 presentViewController:*(a1 + 40) animated:0 completion:0];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

void __57__ICMarkupPresenter_presentMarkupUsingExtensionFromView___block_invoke_38(id *a1, void *a2)
{
  v3 = a2;
  if ([v3 ic_isReachable])
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    [WeakRetained handleReturnedURL:v3];
  }

  else
  {
    WeakRetained = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      __57__ICMarkupPresenter_presentMarkupUsingExtensionFromView___block_invoke_38_cold_1(a1, v3, WeakRetained);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ICMarkupPresenter_presentMarkupUsingExtensionFromView___block_invoke_39;
  block[3] = &unk_2781AF530;
  v6 = a1[4];
  objc_copyWeak(&v8, a1 + 6);
  v7 = a1[5];
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
}

void __57__ICMarkupPresenter_presentMarkupUsingExtensionFromView___block_invoke_39(uint64_t a1)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained frameBlock];
  v4[2](v4, *(a1 + 32));
  [v2 convertRect:0 toView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  gotLoadHelper_x8__MUAnimationTargetRect(v13);
  v20[0] = **(v14 + 1744);
  v22.origin.x = v6;
  v22.origin.y = v8;
  v22.size.width = v10;
  v22.size.height = v12;
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v22);
  v21[0] = DictionaryRepresentation;
  gotLoadHelper_x8__MUAnimationMaskRect(v16);
  v20[1] = **(v17 + 1728);
  v23.origin.x = v6;
  v23.origin.y = v8;
  v23.size.width = v10;
  v23.size.height = v12;
  v18 = CGRectCreateDictionaryRepresentation(v23);
  v21[1] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  [*(a1 + 40) beginDismissWithInfo:v19];
}

- (void)handleReturnedURL:(id)a3
{
  v4 = a3;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = __Block_byref_object_copy__22;
  v8[4] = __Block_byref_object_dispose__22;
  v9 = [(ICMarkupPresenter *)self markupRemoteViewController];
  v5 = MEMORY[0x277D35F10];
  v6 = [(ICMarkupPresenter *)self attachment];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__ICMarkupPresenter_handleReturnedURL___block_invoke;
  v7[3] = &unk_2781ADBC8;
  v7[4] = v8;
  [v5 applyReturnedMarkupURL:v4 attachment:v6 completionBlock:v7];

  _Block_object_dispose(v8, 8);
}

void __39__ICMarkupPresenter_handleReturnedURL___block_invoke(uint64_t a1)
{
  v2 = [currentMarkupPresenter completionBlock];

  if (v2)
  {
    v3 = [currentMarkupPresenter completionBlock];
    v3[2](v3, 0);
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = MEMORY[0x277D85CD0];

  dispatch_async(v6, &__block_literal_global_24);
}

void __39__ICMarkupPresenter_handleReturnedURL___block_invoke_2()
{
  v0 = currentMarkupPresenter;
  currentMarkupPresenter = 0;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (void)presentMarkupUsingExtensionFromView:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2151A1000, a2, OS_LOG_TYPE_ERROR, "Could not get Markup extension: %@", &v2, 0xCu);
}

void __57__ICMarkupPresenter_presentMarkupUsingExtensionFromView___block_invoke_3_36_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2151A1000, a2, OS_LOG_TYPE_ERROR, "Error instantiateViewControllerWithInputItems: %@", &v2, 0xCu);
}

void __57__ICMarkupPresenter_presentMarkupUsingExtensionFromView___block_invoke_38_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = [WeakRetained attachment];
  v7 = 138412546;
  v8 = v6;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_2151A1000, a3, OS_LOG_TYPE_ERROR, "Markup result URL is not reachable {attachment: %@, url: %@}", &v7, 0x16u);
}

@end