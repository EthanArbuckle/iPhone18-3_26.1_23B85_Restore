@interface DCMarkupActivity
- (BOOL)canPerformWithActivityItems:(id)items;
- (UIView)fromView;
- (UIViewController)presentingViewController;
- (id)activityImage;
- (id)initFromView:(id)view presentingViewController:(id)controller frameBlock:(id)block completionBlock:(id)completionBlock;
- (void)performActivity;
- (void)prepareWithActivityItems:(id)items;
@end

@implementation DCMarkupActivity

- (id)initFromView:(id)view presentingViewController:(id)controller frameBlock:(id)block completionBlock:(id)completionBlock
{
  viewCopy = view;
  controllerCopy = controller;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v17.receiver = self;
  v17.super_class = DCMarkupActivity;
  v14 = [(UIActivity *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(DCMarkupActivity *)v14 setFromView:viewCopy];
    [(DCMarkupActivity *)v15 setPresentingViewController:controllerCopy];
    [(DCMarkupActivity *)v15 setFrameBlock:blockCopy];
    [(DCMarkupActivity *)v15 setCompletionBlock:completionBlockCopy];
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

- (BOOL)canPerformWithActivityItems:(id)items
{
  itemsCopy = items;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__DCMarkupActivity_canPerformWithActivityItems___block_invoke;
  v6[3] = &unk_278F938D8;
  v6[4] = &v7;
  [itemsCopy enumerateObjectsUsingBlock:v6];
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

- (void)prepareWithActivityItems:(id)items
{
  itemsCopy = items;
  [(DCMarkupActivity *)self setDocumentInfo:0];
  [(DCMarkupActivity *)self setImageCache:0];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__DCMarkupActivity_prepareWithActivityItems___block_invoke;
  v5[3] = &unk_278F93900;
  v5[4] = self;
  [itemsCopy enumerateObjectsUsingBlock:v5];
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
  documentInfo = [(DCMarkupActivity *)self documentInfo];
  imageCache = [(DCMarkupActivity *)self imageCache];
  fromView = [(DCMarkupActivity *)self fromView];
  presentingViewController = [(DCMarkupActivity *)self presentingViewController];
  inkStyle = [(DCMarkupActivity *)self inkStyle];
  frameBlock = [(DCMarkupActivity *)self frameBlock];
  completionBlock = [(DCMarkupActivity *)self completionBlock];
  [DCMarkupPresenter markupDocumentInfo:documentInfo imageCache:imageCache fromView:fromView presentingViewController:presentingViewController inkStyle:inkStyle frameBlock:frameBlock startPresentBlock:0 completionBlock:completionBlock dismissCompletionBlock:0];

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