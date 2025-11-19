@interface SUUIComposeReviewFormViewController
- (SUUIComposeReviewFormDelegate)delegate;
- (SUUIComposeReviewFormViewController)initWithReviewMetadata:(id)a3;
- (SUUIReviewMetadata)editedReviewMetadata;
- (void)_cancel;
- (void)_submit;
- (void)composeReviewViewValidityChanged:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SUUIComposeReviewFormViewController

- (SUUIComposeReviewFormViewController)initWithReviewMetadata:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SUUIComposeReviewFormViewController;
  v5 = [(SUViewController *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    review = v5->_review;
    v5->_review = v6;
  }

  return v5;
}

- (void)dealloc
{
  [(SUUIComposeReviewView *)self->_composeView setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUIComposeReviewFormViewController;
  [(SUViewController *)&v3 dealloc];
}

- (SUUIReviewMetadata)editedReviewMetadata
{
  v2 = [(SUUIComposeReviewView *)self->_composeView copyReview];

  return v2;
}

- (void)loadView
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom] == 1;

  v5 = [SUUIComposeReviewView alloc];
  v6 = [(SUUIComposeReviewView *)v5 initWithFrame:v4 style:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  composeView = self->_composeView;
  self->_composeView = v6;

  [(SUUIComposeReviewView *)self->_composeView setAutoresizingMask:18];
  [(SUUIComposeReviewView *)self->_composeView setDelegate:self];
  [(SUUIComposeReviewView *)self->_composeView setReview:self->_review];
  [(SUUIComposeReviewView *)self->_composeView reloadData];
  [(SUUIComposeReviewFormViewController *)self setView:self->_composeView];
  v16 = [(SUViewController *)self navigationItem];
  v8 = objc_alloc(MEMORY[0x277D7FDB0]);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CANCEL" value:&stru_286AECDE0 table:0];
  v11 = [v8 initWithTitle:v10 style:0 target:self action:sel__cancel];

  [v16 setLeftBarButtonItem:v11];
  v12 = objc_alloc(MEMORY[0x277D7FDB0]);
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"SUBMIT" value:&stru_286AECDE0 table:0];
  v15 = [v12 initWithTitle:v14 style:2 target:self action:sel__submit];

  [v16 setRightBarButtonItem:v15];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(SUViewController *)self navigationItem];
  v6 = [v5 rightBarButtonItem];

  [v6 setEnabled:{-[SUUIComposeReviewView isValid](self->_composeView, "isValid")}];
  v7.receiver = self;
  v7.super_class = SUUIComposeReviewFormViewController;
  [(SUViewController *)&v7 viewWillAppear:v3];
}

- (void)composeReviewViewValidityChanged:(id)a3
{
  v4 = [(SUViewController *)self navigationItem];
  v5 = [v4 rightBarButtonItem];

  [v5 setEnabled:{-[SUUIComposeReviewView isValid](self->_composeView, "isValid")}];
}

- (void)_cancel
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 composeReviewFormDidCancel:self];
  }
}

- (void)_submit
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 composeReviewFormDidSubmit:self];
  }
}

- (SUUIComposeReviewFormDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end