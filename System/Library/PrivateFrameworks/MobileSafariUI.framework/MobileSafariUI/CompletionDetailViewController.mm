@interface CompletionDetailViewController
- (CompletionDetailViewController)initWithRootViewController:(id)a3;
- (CompletionDetailViewControllerDelegate)completionDetailViewControllerDelegate;
- (void)_didDismissCompletionDetailSheet;
- (void)_dismissCompletionDetailSheet;
@end

@implementation CompletionDetailViewController

- (CompletionDetailViewController)initWithRootViewController:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CompletionDetailViewController;
  v5 = [(CompletionDetailViewController *)&v12 initWithRootViewController:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [(CompletionDetailViewController *)v5 presentationController];
    [v7 setDelegate:v6];

    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v6 action:sel__dismissCompletionDetailSheet];
    v9 = [v4 navigationItem];
    [v9 sf_setPreferredDismissOrDoneButtonItem:v8];

    v10 = v6;
  }

  return v6;
}

- (void)_dismissCompletionDetailSheet
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__CompletionDetailViewController__dismissCompletionDetailSheet__block_invoke;
  v3[3] = &unk_2781D5598;
  objc_copyWeak(&v4, &location);
  [(CompletionDetailViewController *)self dismissViewControllerAnimated:1 completion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __63__CompletionDetailViewController__dismissCompletionDetailSheet__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _didDismissCompletionDetailSheet];
    WeakRetained = v2;
  }
}

- (void)_didDismissCompletionDetailSheet
{
  WeakRetained = objc_loadWeakRetained(&self->_completionDetailViewControllerDelegate);
  [WeakRetained completionDetailViewControllerDidDismiss:self];

  v6 = +[UniversalSearchSession sharedSession];
  v4 = [v6 feedbackDispatcher];
  v5 = [objc_alloc(MEMORY[0x277D4C258]) initWithEvent:4];
  [v4 postFeedback:v5 forQueryID:{objc_msgSend(MEMORY[0x277D49ED8], "currentQueryID")}];
}

- (CompletionDetailViewControllerDelegate)completionDetailViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_completionDetailViewControllerDelegate);

  return WeakRetained;
}

@end