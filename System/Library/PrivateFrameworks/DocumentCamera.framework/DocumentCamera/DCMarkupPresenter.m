@interface DCMarkupPresenter
+ (void)markupDocumentInfo:(id)a3 imageCache:(id)a4 fromView:(id)a5 presentingViewController:(id)a6 inkStyle:(unint64_t)a7 frameBlock:(id)a8 startPresentBlock:(id)a9 completionBlock:(id)a10 dismissCompletionBlock:(id)a11;
- (UIViewController)presentingViewController;
- (void)dismissMarkupViewController;
- (void)handleReturnedURL:(id)a3;
- (void)markupDoneAction:(id)a3;
- (void)presentMarkupViewControllerFromView:(id)a3;
@end

@implementation DCMarkupPresenter

+ (void)markupDocumentInfo:(id)a3 imageCache:(id)a4 fromView:(id)a5 presentingViewController:(id)a6 inkStyle:(unint64_t)a7 frameBlock:(id)a8 startPresentBlock:(id)a9 completionBlock:(id)a10 dismissCompletionBlock:(id)a11
{
  v26 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = currentMarkupPresenter;
  if (!currentMarkupPresenter)
  {
    v24 = objc_alloc_init(DCMarkupPresenter);
    v25 = currentMarkupPresenter;
    currentMarkupPresenter = v24;

    v23 = currentMarkupPresenter;
  }

  [v23 setDocumentInfo:v26];
  [currentMarkupPresenter setImageCache:v16];
  [currentMarkupPresenter setPresentingViewController:v18];
  [currentMarkupPresenter setInkStyle:a7];
  [currentMarkupPresenter setFrameBlock:v19];
  [currentMarkupPresenter setStartPresentBlock:v20];
  [currentMarkupPresenter setCompletionBlock:v21];
  [currentMarkupPresenter setDismissCompletionBlock:v22];
  [currentMarkupPresenter presentMarkupFromView:v17];
}

- (void)markupDoneAction:(id)a3
{
  v4 = [(DCMarkupPresenter *)self markupViewController];
  v5 = [v4 createArchivedModelData];

  if (v5)
  {
    v6 = [(DCMarkupPresenter *)self markupViewController];
    v7 = [v6 dataRepresentationEmbeddingSourceImageAndEditModel:0 error:0];

    v8 = [(DCMarkupPresenter *)self documentInfo];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __38__DCMarkupPresenter_markupDoneAction___block_invoke;
    v12[3] = &unk_278F92DE8;
    v12[4] = self;
    v13 = v7;
    v9 = v7;
    [DCMarkupUtilities applyMarkupModelData:v5 documentInfo:v8 completionBlock:v12];
  }

  else
  {
    v10 = [(DCMarkupPresenter *)self completionBlock];

    if (v10)
    {
      v11 = [(DCMarkupPresenter *)self completionBlock];
      v11[2](v11, 0);
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
  v6 = [(DCMarkupPresenter *)self dismissCompletionBlock];
  [(DCMarkupPresenter *)self setDismissCompletionBlock:0];
  [(DCMarkupPresenter *)self setMarkupViewController:0];
  v3 = currentMarkupPresenter;
  currentMarkupPresenter = 0;

  v4 = [(DCMarkupPresenter *)self presentingViewController];
  v5 = [v4 presentedViewController];
  [v5 dismissViewControllerAnimated:1 completion:v6];
}

- (void)presentMarkupViewControllerFromView:(id)a3
{
  v4 = +[DCMarkupUtilities createMarkupViewController];
  [v4 setInkStyle:{-[DCMarkupPresenter inkStyle](self, "inkStyle")}];
  v5 = [(DCMarkupPresenter *)self documentInfo];
  v6 = [(DCMarkupPresenter *)self imageCache];
  v7 = [v5 markupModelData];
  v8 = [DCMarkupUtilities dataToEditForDocumentInfo:v5 imageCache:v6 includeMarkupModelData:0];
  v9 = [v5 croppedAndFilteredImageUUID];
  v10 = [v6 getImage:v9];

  [v4 setData:v8 withArchivedModelData:v7 placeholderImage:v10];
  v11 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v4];
  v12 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_markupDoneAction_];
  v13 = [v4 navigationItem];
  [v13 setLeftBarButtonItem:v12];

  v14 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_markupCancelAction_];
  v15 = [v4 navigationItem];
  [v15 setRightBarButtonItem:v14];

  [(DCMarkupPresenter *)self setMarkupViewController:v4];
  [v11 setModalTransitionStyle:0];
  v16 = [MEMORY[0x277D75348] DCExtractedDocumentViewControllerBackgroundColor];
  [v4 setBackgroundColor:v16];

  v17 = [(DCMarkupPresenter *)self startPresentBlock];
  [(DCMarkupPresenter *)self setStartPresentBlock:0];
  if (v17)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __57__DCMarkupPresenter_presentMarkupViewControllerFromView___block_invoke;
    v19[3] = &unk_278F92DE8;
    v19[4] = self;
    v20 = v11;
    (v17)[2](v17, v19);
  }

  else
  {
    v18 = [(DCMarkupPresenter *)self presentingViewController];
    [v18 presentViewController:v11 animated:1 completion:0];
  }
}

void __57__DCMarkupPresenter_presentMarkupViewControllerFromView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  [v2 presentViewController:*(a1 + 40) animated:1 completion:0];
}

- (void)handleReturnedURL:(id)a3
{
  v4 = a3;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = __Block_byref_object_copy__1;
  v7[4] = __Block_byref_object_dispose__1;
  v8 = [(DCMarkupPresenter *)self markupRemoteViewController];
  v5 = [(DCMarkupPresenter *)self documentInfo];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__DCMarkupPresenter_handleReturnedURL___block_invoke;
  v6[3] = &unk_278F931A0;
  v6[4] = v7;
  [DCMarkupUtilities applyReturnedMarkupURL:v4 documentInfo:v5 completionBlock:v6];

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