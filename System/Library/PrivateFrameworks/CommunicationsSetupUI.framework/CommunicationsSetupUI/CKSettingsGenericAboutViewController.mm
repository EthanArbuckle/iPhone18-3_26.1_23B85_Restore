@interface CKSettingsGenericAboutViewController
- (CKSettingsGenericAboutViewController)initWithTitle:(id)title bodyText:(id)text;
- (void)done:(id)done;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CKSettingsGenericAboutViewController

- (CKSettingsGenericAboutViewController)initWithTitle:(id)title bodyText:(id)text
{
  titleCopy = title;
  textCopy = text;
  v17.receiver = self;
  v17.super_class = CKSettingsGenericAboutViewController;
  v8 = [(CKSettingsGenericAboutViewController *)&v17 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    navigationItem = [(CKSettingsGenericAboutViewController *)v8 navigationItem];
    [navigationItem setTitle:titleCopy];
    v11 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v9 action:sel_done_];
    [navigationItem setRightBarButtonItem:v11];
    v12 = objc_alloc(MEMORY[0x277D75C40]);
    v13 = [v12 initWithFrame:0 textContainer:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    aboutView = v9->_aboutView;
    v9->_aboutView = v13;

    [(UITextView *)v9->_aboutView setTextContainerInset:25.0, 20.0, 25.0, 20.0];
    v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UITextView *)v9->_aboutView setFont:v15];

    [(UITextView *)v9->_aboutView setTextAlignment:4];
    [(UITextView *)v9->_aboutView setDataDetectorTypes:2];
    [(UITextView *)v9->_aboutView setText:textCopy];
    [(UITextView *)v9->_aboutView setEditable:0];
    [(UITextView *)v9->_aboutView setScrollEnabled:1];
  }

  return v9;
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = CKSettingsGenericAboutViewController;
  [(CKSettingsGenericAboutViewController *)&v4 viewDidLayoutSubviews];
  view = [(CKSettingsGenericAboutViewController *)self view];
  [view bounds];
  [(UITextView *)self->_aboutView setFrame:?];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CKSettingsGenericAboutViewController;
  [(CKSettingsGenericAboutViewController *)&v4 viewDidLoad];
  [(UITextView *)self->_aboutView setContentOffset:0.0, -25.0];
  view = [(CKSettingsGenericAboutViewController *)self view];
  [view addSubview:self->_aboutView];
}

- (void)done:(id)done
{
  presentingViewController = [(CKSettingsGenericAboutViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

@end