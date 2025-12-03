@interface ICHashtagViewController
- (ICHashtagViewControllerDelegate)delegate;
- (id)nibBundle;
- (void)createFutureHashtag:(id)hashtag;
- (void)createHashtag:(id)hashtag;
- (void)createUnknownInlineAttachment:(id)attachment;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation ICHashtagViewController

- (id)nibBundle
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = ICHashtagViewController;
  [(ICHashtagViewController *)&v5 viewDidAppear:appear];
  textField = [(ICHashtagViewController *)self textField];
  [textField becomeFirstResponder];
}

- (void)createHashtag:(id)hashtag
{
  textField = [(ICHashtagViewController *)self textField];
  text = [textField text];

  delegate = [(ICHashtagViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(ICHashtagViewController *)self delegate];
    [delegate2 hashtagViewController:self insertHashtagWithText:text viaAutoComplete:0];
  }

  presentingViewController = [(ICHashtagViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)createUnknownInlineAttachment:(id)attachment
{
  textField = [(ICHashtagViewController *)self textField];
  text = [textField text];

  delegate = [(ICHashtagViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(ICHashtagViewController *)self delegate];
    [delegate2 hashtagViewController:self insertUnknownInlineAttachmentWithText:text];
  }

  presentingViewController = [(ICHashtagViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)createFutureHashtag:(id)hashtag
{
  textField = [(ICHashtagViewController *)self textField];
  text = [textField text];

  delegate = [(ICHashtagViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(ICHashtagViewController *)self delegate];
    [delegate2 hashtagViewController:self insertFutureHashtagWithText:text];
  }

  presentingViewController = [(ICHashtagViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (ICHashtagViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end