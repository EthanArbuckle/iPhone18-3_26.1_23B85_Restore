@interface ICHashtagViewController
- (ICHashtagViewControllerDelegate)delegate;
- (id)nibBundle;
- (void)createFutureHashtag:(id)a3;
- (void)createHashtag:(id)a3;
- (void)createUnknownInlineAttachment:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation ICHashtagViewController

- (id)nibBundle
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = ICHashtagViewController;
  [(ICHashtagViewController *)&v5 viewDidAppear:a3];
  v4 = [(ICHashtagViewController *)self textField];
  [v4 becomeFirstResponder];
}

- (void)createHashtag:(id)a3
{
  v4 = [(ICHashtagViewController *)self textField];
  v9 = [v4 text];

  v5 = [(ICHashtagViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(ICHashtagViewController *)self delegate];
    [v7 hashtagViewController:self insertHashtagWithText:v9 viaAutoComplete:0];
  }

  v8 = [(ICHashtagViewController *)self presentingViewController];
  [v8 dismissViewControllerAnimated:1 completion:0];
}

- (void)createUnknownInlineAttachment:(id)a3
{
  v4 = [(ICHashtagViewController *)self textField];
  v9 = [v4 text];

  v5 = [(ICHashtagViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(ICHashtagViewController *)self delegate];
    [v7 hashtagViewController:self insertUnknownInlineAttachmentWithText:v9];
  }

  v8 = [(ICHashtagViewController *)self presentingViewController];
  [v8 dismissViewControllerAnimated:1 completion:0];
}

- (void)createFutureHashtag:(id)a3
{
  v4 = [(ICHashtagViewController *)self textField];
  v9 = [v4 text];

  v5 = [(ICHashtagViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(ICHashtagViewController *)self delegate];
    [v7 hashtagViewController:self insertFutureHashtagWithText:v9];
  }

  v8 = [(ICHashtagViewController *)self presentingViewController];
  [v8 dismissViewControllerAnimated:1 completion:0];
}

- (ICHashtagViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end