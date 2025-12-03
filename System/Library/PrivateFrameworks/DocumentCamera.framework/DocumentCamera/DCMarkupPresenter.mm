@interface DCMarkupPresenter
+ (void)markupDocumentInfo:(id)info imageCache:(id)cache fromView:(id)view presentingViewController:(id)controller inkStyle:(unint64_t)style frameBlock:(id)block startPresentBlock:(id)presentBlock completionBlock:(id)self0 dismissCompletionBlock:(id)self1;
- (UIViewController)presentingViewController;
- (void)dismissMarkupViewController;
- (void)handleReturnedURL:(id)l;
- (void)markupDoneAction:(id)action;
- (void)presentMarkupViewControllerFromView:(id)view;
@end

@implementation DCMarkupPresenter

+ (void)markupDocumentInfo:(id)info imageCache:(id)cache fromView:(id)view presentingViewController:(id)controller inkStyle:(unint64_t)style frameBlock:(id)block startPresentBlock:(id)presentBlock completionBlock:(id)self0 dismissCompletionBlock:(id)self1
{
  infoCopy = info;
  cacheCopy = cache;
  viewCopy = view;
  controllerCopy = controller;
  blockCopy = block;
  presentBlockCopy = presentBlock;
  completionBlockCopy = completionBlock;
  dismissCompletionBlockCopy = dismissCompletionBlock;
  v23 = currentMarkupPresenter;
  if (!currentMarkupPresenter)
  {
    v24 = objc_alloc_init(DCMarkupPresenter);
    v25 = currentMarkupPresenter;
    currentMarkupPresenter = v24;

    v23 = currentMarkupPresenter;
  }

  [v23 setDocumentInfo:infoCopy];
  [currentMarkupPresenter setImageCache:cacheCopy];
  [currentMarkupPresenter setPresentingViewController:controllerCopy];
  [currentMarkupPresenter setInkStyle:style];
  [currentMarkupPresenter setFrameBlock:blockCopy];
  [currentMarkupPresenter setStartPresentBlock:presentBlockCopy];
  [currentMarkupPresenter setCompletionBlock:completionBlockCopy];
  [currentMarkupPresenter setDismissCompletionBlock:dismissCompletionBlockCopy];
  [currentMarkupPresenter presentMarkupFromView:viewCopy];
}

- (void)markupDoneAction:(id)action
{
  markupViewController = [(DCMarkupPresenter *)self markupViewController];
  createArchivedModelData = [markupViewController createArchivedModelData];

  if (createArchivedModelData)
  {
    markupViewController2 = [(DCMarkupPresenter *)self markupViewController];
    v7 = [markupViewController2 dataRepresentationEmbeddingSourceImageAndEditModel:0 error:0];

    documentInfo = [(DCMarkupPresenter *)self documentInfo];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __38__DCMarkupPresenter_markupDoneAction___block_invoke;
    v12[3] = &unk_278F92DE8;
    v12[4] = self;
    v13 = v7;
    v9 = v7;
    [DCMarkupUtilities applyMarkupModelData:createArchivedModelData documentInfo:documentInfo completionBlock:v12];
  }

  else
  {
    completionBlock = [(DCMarkupPresenter *)self completionBlock];

    if (completionBlock)
    {
      completionBlock2 = [(DCMarkupPresenter *)self completionBlock];
      completionBlock2[2](completionBlock2, 0);
    }

    [(DCMarkupPresenter *)self dismissMarkupViewController];
  }
}

uint64_t __38__DCMarkupPresenter_markupDoneAction___block_invoke(uint64_t a1)
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
  dismissCompletionBlock = [(DCMarkupPresenter *)self dismissCompletionBlock];
  [(DCMarkupPresenter *)self setDismissCompletionBlock:0];
  [(DCMarkupPresenter *)self setMarkupViewController:0];
  v3 = currentMarkupPresenter;
  currentMarkupPresenter = 0;

  presentingViewController = [(DCMarkupPresenter *)self presentingViewController];
  presentedViewController = [presentingViewController presentedViewController];
  [presentedViewController dismissViewControllerAnimated:1 completion:dismissCompletionBlock];
}

- (void)presentMarkupViewControllerFromView:(id)view
{
  v4 = +[DCMarkupUtilities createMarkupViewController];
  [v4 setInkStyle:{-[DCMarkupPresenter inkStyle](self, "inkStyle")}];
  documentInfo = [(DCMarkupPresenter *)self documentInfo];
  imageCache = [(DCMarkupPresenter *)self imageCache];
  markupModelData = [documentInfo markupModelData];
  v8 = [DCMarkupUtilities dataToEditForDocumentInfo:documentInfo imageCache:imageCache includeMarkupModelData:0];
  croppedAndFilteredImageUUID = [documentInfo croppedAndFilteredImageUUID];
  v10 = [imageCache getImage:croppedAndFilteredImageUUID];

  [v4 setData:v8 withArchivedModelData:markupModelData placeholderImage:v10];
  v11 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v4];
  v12 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_markupDoneAction_];
  navigationItem = [v4 navigationItem];
  [navigationItem setLeftBarButtonItem:v12];

  v14 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_markupCancelAction_];
  navigationItem2 = [v4 navigationItem];
  [navigationItem2 setRightBarButtonItem:v14];

  [(DCMarkupPresenter *)self setMarkupViewController:v4];
  [v11 setModalTransitionStyle:0];
  dCExtractedDocumentViewControllerBackgroundColor = [MEMORY[0x277D75348] DCExtractedDocumentViewControllerBackgroundColor];
  [v4 setBackgroundColor:dCExtractedDocumentViewControllerBackgroundColor];

  startPresentBlock = [(DCMarkupPresenter *)self startPresentBlock];
  [(DCMarkupPresenter *)self setStartPresentBlock:0];
  if (startPresentBlock)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __57__DCMarkupPresenter_presentMarkupViewControllerFromView___block_invoke;
    v19[3] = &unk_278F92DE8;
    v19[4] = self;
    v20 = v11;
    (startPresentBlock)[2](startPresentBlock, v19);
  }

  else
  {
    presentingViewController = [(DCMarkupPresenter *)self presentingViewController];
    [presentingViewController presentViewController:v11 animated:1 completion:0];
  }
}

void __57__DCMarkupPresenter_presentMarkupViewControllerFromView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  [v2 presentViewController:*(a1 + 40) animated:1 completion:0];
}

- (void)handleReturnedURL:(id)l
{
  lCopy = l;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = __Block_byref_object_copy__1;
  v7[4] = __Block_byref_object_dispose__1;
  markupRemoteViewController = [(DCMarkupPresenter *)self markupRemoteViewController];
  documentInfo = [(DCMarkupPresenter *)self documentInfo];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__DCMarkupPresenter_handleReturnedURL___block_invoke;
  v6[3] = &unk_278F931A0;
  v6[4] = v7;
  [DCMarkupUtilities applyReturnedMarkupURL:lCopy documentInfo:documentInfo completionBlock:v6];

  _Block_object_dispose(v7, 8);
}

void __39__DCMarkupPresenter_handleReturnedURL___block_invoke(uint64_t a1)
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

  dispatch_async(v6, &__block_literal_global_6);
}

void __39__DCMarkupPresenter_handleReturnedURL___block_invoke_2()
{
  v0 = currentMarkupPresenter;
  currentMarkupPresenter = 0;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end