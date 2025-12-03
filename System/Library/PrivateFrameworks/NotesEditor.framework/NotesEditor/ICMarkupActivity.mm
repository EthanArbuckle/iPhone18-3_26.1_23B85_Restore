@interface ICMarkupActivity
- (BOOL)canPerformWithActivityItems:(id)items;
- (UIView)fromView;
- (UIViewController)presentingViewController;
- (id)activityTitle;
- (id)initFromView:(id)view presentingViewController:(id)controller frameBlock:(id)block completionBlock:(id)completionBlock;
- (void)performActivity;
- (void)prepareWithActivityItems:(id)items;
@end

@implementation ICMarkupActivity

- (id)initFromView:(id)view presentingViewController:(id)controller frameBlock:(id)block completionBlock:(id)completionBlock
{
  viewCopy = view;
  controllerCopy = controller;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v17.receiver = self;
  v17.super_class = ICMarkupActivity;
  v14 = [(UIActivity *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(ICMarkupActivity *)v14 setFromView:viewCopy];
    [(ICMarkupActivity *)v15 setPresentingViewController:controllerCopy];
    [(ICMarkupActivity *)v15 setFrameBlock:blockCopy];
    [(ICMarkupActivity *)v15 setCompletionBlock:completionBlockCopy];
    [(ICMarkupActivity *)v15 setInkStyle:0];
  }

  return v15;
}

- (id)activityTitle
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Markup" value:&stru_282757698 table:0];

  return v3;
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
  v6[2] = __48__ICMarkupActivity_canPerformWithActivityItems___block_invoke;
  v6[3] = &unk_2781ADB78;
  v6[4] = &v7;
  [itemsCopy enumerateObjectsUsingBlock:v6];
  v4 = v8[3] == 1;
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __48__ICMarkupActivity_canPerformWithActivityItems___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v9 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v9 attachment];
    v7 = [v6 attachmentModel];
    v8 = [v7 canMarkup];

    if (v8)
    {
      ++*(*(*(a1 + 32) + 8) + 24);
    }
  }

  *a4 = *(*(*(a1 + 32) + 8) + 24) > 1uLL;
}

- (void)prepareWithActivityItems:(id)items
{
  itemsCopy = items;
  [(ICMarkupActivity *)self setAttachment:0];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__ICMarkupActivity_prepareWithActivityItems___block_invoke;
  v5[3] = &unk_2781ADBA0;
  v5[4] = self;
  [itemsCopy enumerateObjectsUsingBlock:v5];
}

void __45__ICMarkupActivity_prepareWithActivityItems___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v12 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v12;
    v7 = [v6 attachment];
    v8 = [v7 attachmentModel];
    v9 = [v8 canMarkup];

    if (v9)
    {
      v10 = [v6 attachment];
      [*(a1 + 32) setAttachment:v10];
    }
  }

  v11 = [*(a1 + 32) attachment];
  *a4 = v11 != 0;
}

- (void)performActivity
{
  attachment = [(ICMarkupActivity *)self attachment];
  fromView = [(ICMarkupActivity *)self fromView];
  presentingViewController = [(ICMarkupActivity *)self presentingViewController];
  inkStyle = [(ICMarkupActivity *)self inkStyle];
  frameBlock = [(ICMarkupActivity *)self frameBlock];
  completionBlock = [(ICMarkupActivity *)self completionBlock];
  [ICMarkupPresenter markupAttachment:attachment fromView:fromView presentingViewController:presentingViewController inkStyle:inkStyle frameBlock:frameBlock startPresentBlock:0 completionBlock:completionBlock dismissCompletionBlock:0];

  [(ICMarkupActivity *)self setAttachment:0];
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