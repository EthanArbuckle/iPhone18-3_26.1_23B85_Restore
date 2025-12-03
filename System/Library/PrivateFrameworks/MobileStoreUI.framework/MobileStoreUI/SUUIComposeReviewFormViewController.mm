@interface SUUIComposeReviewFormViewController
- (SUUIComposeReviewFormDelegate)delegate;
- (SUUIComposeReviewFormViewController)initWithReviewMetadata:(id)metadata;
- (SUUIReviewMetadata)editedReviewMetadata;
- (void)_cancel;
- (void)_submit;
- (void)composeReviewViewValidityChanged:(id)changed;
- (void)dealloc;
- (void)loadView;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SUUIComposeReviewFormViewController

- (SUUIComposeReviewFormViewController)initWithReviewMetadata:(id)metadata
{
  metadataCopy = metadata;
  v9.receiver = self;
  v9.super_class = SUUIComposeReviewFormViewController;
  v5 = [(SUViewController *)&v9 init];
  if (v5)
  {
    v6 = [metadataCopy copy];
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
  copyReview = [(SUUIComposeReviewView *)self->_composeView copyReview];

  return copyReview;
}

- (void)loadView
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v4 = [currentDevice userInterfaceIdiom] == 1;

  v5 = [SUUIComposeReviewView alloc];
  v6 = [(SUUIComposeReviewView *)v5 initWithFrame:v4 style:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  composeView = self->_composeView;
  self->_composeView = v6;

  [(SUUIComposeReviewView *)self->_composeView setAutoresizingMask:18];
  [(SUUIComposeReviewView *)self->_composeView setDelegate:self];
  [(SUUIComposeReviewView *)self->_composeView setReview:self->_review];
  [(SUUIComposeReviewView *)self->_composeView reloadData];
  [(SUUIComposeReviewFormViewController *)self setView:self->_composeView];
  navigationItem = [(SUViewController *)self navigationItem];
  v8 = objc_alloc(MEMORY[0x277D7FDB0]);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CANCEL" value:&stru_286AECDE0 table:0];
  v11 = [v8 initWithTitle:v10 style:0 target:self action:sel__cancel];

  [navigationItem setLeftBarButtonItem:v11];
  v12 = objc_alloc(MEMORY[0x277D7FDB0]);
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"SUBMIT" value:&stru_286AECDE0 table:0];
  v15 = [v12 initWithTitle:v14 style:2 target:self action:sel__submit];

  [navigationItem setRightBarButtonItem:v15];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  navigationItem = [(SUViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];

  [rightBarButtonItem setEnabled:{-[SUUIComposeReviewView isValid](self->_composeView, "isValid")}];
  v7.receiver = self;
  v7.super_class = SUUIComposeReviewFormViewController;
  [(SUViewController *)&v7 viewWillAppear:appearCopy];
}

- (void)composeReviewViewValidityChanged:(id)changed
{
  navigationItem = [(SUViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];

  [rightBarButtonItem setEnabled:{-[SUUIComposeReviewView isValid](self->_composeView, "isValid")}];
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