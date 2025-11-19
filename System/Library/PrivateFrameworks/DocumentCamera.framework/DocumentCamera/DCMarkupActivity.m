@interface DCMarkupActivity
- (BOOL)canPerformWithActivityItems:(id)a3;
- (UIView)fromView;
- (UIViewController)presentingViewController;
- (id)activityImage;
- (id)initFromView:(id)a3 presentingViewController:(id)a4 frameBlock:(id)a5 completionBlock:(id)a6;
- (void)performActivity;
- (void)prepareWithActivityItems:(id)a3;
@end

@implementation DCMarkupActivity

- (id)initFromView:(id)a3 presentingViewController:(id)a4 frameBlock:(id)a5 completionBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = DCMarkupActivity;
  v14 = [(UIActivity *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(DCMarkupActivity *)v14 setFromView:v10];
    [(DCMarkupActivity *)v15 setPresentingViewController:v11];
    [(DCMarkupActivity *)v15 setFrameBlock:v12];
    [(DCMarkupActivity *)v15 setCompletionBlock:v13];
    [(DCMarkupActivity *)v15 setInkStyle:0];
  }

  return v15;
}

- (id)activityImage
{
  v2 = MEMORY[0x277CCA8D8];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v3 = getMURemoteViewControllerClass_softClass;
  v12 = getMURemoteViewControllerClass_softClass;
  if (!getMURemoteViewControllerClass_softClass)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __getMURemoteViewControllerClass_block_invoke;
    v8[3] = &unk_278F931A0;
    v8[4] = &v9;
    __getMURemoteViewControllerClass_block_invoke(v8);
    v3 = v10[3];
  }

  v4 = v3;
  _Block_object_dispose(&v9, 8);
  v5 = [v2 bundleForClass:v3];
  v6 = [MEMORY[0x277D755B8] imageNamed:@"PlugIns/MarkupPrivateExtension.appex/MarkupActionExtensionIcon60x60" inBundle:v5];

  return v6;
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__DCMarkupActivity_canPerformWithActivityItems___block_invoke;
  v6[3] = &unk_278F938D8;
  v6[4] = &v7;
  [v3 enumerateObjectsUsingBlock:v6];
  v4 = v8[3] == 1;
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __48__DCMarkupActivity_canPerformWithActivityItems___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  *a4 = *(*(*(a1 + 32) + 8) + 24) > 1uLL;
}

- (void)prepareWithActivityItems:(id)a3
{
  v4 = a3;
  [(DCMarkupActivity *)self setDocumentInfo:0];
  [(DCMarkupActivity *)self setImageCache:0];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__DCMarkupActivity_prepareWithActivityItems___block_invoke;
  v5[3] = &unk_278F93900;
  v5[4] = self;
  [v4 enumerateObjectsUsingBlock:v5];
}

void __45__DCMarkupActivity_prepareWithActivityItems___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v10 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v10;
    v7 = [v6 documentInfo];
    [*(a1 + 32) setDocumentInfo:v7];

    v8 = [v6 imageCache];

    [*(a1 + 32) setImageCache:v8];
  }

  v9 = [*(a1 + 32) documentInfo];
  *a4 = v9 != 0;
}

- (void)performActivity
{
  v3 = [(DCMarkupActivity *)self documentInfo];
  v4 = [(DCMarkupActivity *)self imageCache];
  v5 = [(DCMarkupActivity *)self fromView];
  v6 = [(DCMarkupActivity *)self presentingViewController];
  v7 = [(DCMarkupActivity *)self inkStyle];
  v8 = [(DCMarkupActivity *)self frameBlock];
  v9 = [(DCMarkupActivity *)self completionBlock];
  [DCMarkupPresenter markupDocumentInfo:v3 imageCache:v4 fromView:v5 presentingViewController:v6 inkStyle:v7 frameBlock:v8 startPresentBlock:0 completionBlock:v9 dismissCompletionBlock:0];

  [(DCMarkupActivity *)self setDocumentInfo:0];

  [(DCMarkupActivity *)self setImageCache:0];
}

- (UIView)fromView
{
  WeakRetained = objc_loadWeakRetained(&self->_fromView);

  return WeakRetained;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end