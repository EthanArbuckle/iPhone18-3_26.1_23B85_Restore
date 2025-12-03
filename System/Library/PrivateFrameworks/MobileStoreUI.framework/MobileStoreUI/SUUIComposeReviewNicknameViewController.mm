@interface SUUIComposeReviewNicknameViewController
- (SUUIComposeReviewNicknameDelegate)delegate;
- (void)_cancel;
- (void)_setupBarButtonItems;
- (void)_setupNicknameView;
- (void)_setupScrollView;
- (void)_submit;
- (void)_updateConfirmState;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation SUUIComposeReviewNicknameViewController

- (void)viewDidLoad
{
  view = [(SUUIComposeReviewNicknameViewController *)self view];
  keyboardLayoutGuide = [view keyboardLayoutGuide];
  [keyboardLayoutGuide setFollowsUndockedKeyboard:1];

  [(SUUIComposeReviewNicknameViewController *)self _setupScrollView];
  [(SUUIComposeReviewNicknameViewController *)self _setupNicknameView];
  [(SUUIComposeReviewNicknameViewController *)self _setupBarButtonItems];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v5 = *MEMORY[0x277D770B0];
  nicknameView = [(SUUIComposeReviewNicknameViewController *)self nicknameView];
  nicknameTextfield = [nicknameView nicknameTextfield];
  [defaultCenter addObserver:self selector:sel__updateConfirmState name:v5 object:nicknameTextfield];
}

- (void)viewDidAppear:(BOOL)appear
{
  nicknameView = [(SUUIComposeReviewNicknameViewController *)self nicknameView];
  nicknameTextfield = [nicknameView nicknameTextfield];
  [nicknameTextfield becomeFirstResponder];
}

- (void)_setupScrollView
{
  v3 = objc_opt_new();
  [(SUUIComposeReviewNicknameViewController *)self setScrollView:v3];

  scrollView = [(SUUIComposeReviewNicknameViewController *)self scrollView];
  [scrollView setTranslatesAutoresizingMaskIntoConstraints:0];

  scrollView2 = [(SUUIComposeReviewNicknameViewController *)self scrollView];
  [scrollView2 setShowsVerticalScrollIndicator:0];

  view = [(SUUIComposeReviewNicknameViewController *)self view];
  scrollView3 = [(SUUIComposeReviewNicknameViewController *)self scrollView];
  [view addSubview:scrollView3];

  scrollView4 = [(SUUIComposeReviewNicknameViewController *)self scrollView];
  frameLayoutGuide = [scrollView4 frameLayoutGuide];
  topAnchor = [frameLayoutGuide topAnchor];
  view2 = [(SUUIComposeReviewNicknameViewController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v14 setActive:1];

  scrollView5 = [(SUUIComposeReviewNicknameViewController *)self scrollView];
  frameLayoutGuide2 = [scrollView5 frameLayoutGuide];
  centerXAnchor = [frameLayoutGuide2 centerXAnchor];
  view3 = [(SUUIComposeReviewNicknameViewController *)self view];
  centerXAnchor2 = [view3 centerXAnchor];
  v20 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v20 setActive:1];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  scrollView6 = [(SUUIComposeReviewNicknameViewController *)self scrollView];
  frameLayoutGuide3 = [scrollView6 frameLayoutGuide];
  widthAnchor = [frameLayoutGuide3 widthAnchor];
  v26 = widthAnchor;
  if (userInterfaceIdiom == 1)
  {
    view4 = [widthAnchor constraintLessThanOrEqualToConstant:400.0];
    [view4 setActive:1];
  }

  else
  {
    view4 = [(SUUIComposeReviewNicknameViewController *)self view];
    widthAnchor2 = [view4 widthAnchor];
    v29 = [v26 constraintEqualToAnchor:widthAnchor2];
    [v29 setActive:1];
  }

  view5 = [(SUUIComposeReviewNicknameViewController *)self view];
  keyboardLayoutGuide = [view5 keyboardLayoutGuide];
  topAnchor3 = [keyboardLayoutGuide topAnchor];
  scrollView7 = [(SUUIComposeReviewNicknameViewController *)self scrollView];
  frameLayoutGuide4 = [scrollView7 frameLayoutGuide];
  bottomAnchor = [frameLayoutGuide4 bottomAnchor];
  v35 = [topAnchor3 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor multiplier:1.0];
  [v35 setActive:1];
}

- (void)_setupNicknameView
{
  v3 = [SUUIComposeReviewNicknameView alloc];
  v4 = [(SUUIComposeReviewNicknameView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(SUUIComposeReviewNicknameViewController *)self setNicknameView:v4];

  nicknameView = [(SUUIComposeReviewNicknameViewController *)self nicknameView];
  [nicknameView setTranslatesAutoresizingMaskIntoConstraints:0];

  scrollView = [(SUUIComposeReviewNicknameViewController *)self scrollView];
  nicknameView2 = [(SUUIComposeReviewNicknameViewController *)self nicknameView];
  [scrollView addSubview:nicknameView2];

  scrollView2 = [(SUUIComposeReviewNicknameViewController *)self scrollView];
  contentLayoutGuide = [scrollView2 contentLayoutGuide];
  topAnchor = [contentLayoutGuide topAnchor];
  nicknameView3 = [(SUUIComposeReviewNicknameViewController *)self nicknameView];
  topAnchor2 = [nicknameView3 topAnchor];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v13 setActive:1];

  scrollView3 = [(SUUIComposeReviewNicknameViewController *)self scrollView];
  contentLayoutGuide2 = [scrollView3 contentLayoutGuide];
  leadingAnchor = [contentLayoutGuide2 leadingAnchor];
  nicknameView4 = [(SUUIComposeReviewNicknameViewController *)self nicknameView];
  leadingAnchor2 = [nicknameView4 leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v19 setActive:1];

  scrollView4 = [(SUUIComposeReviewNicknameViewController *)self scrollView];
  contentLayoutGuide3 = [scrollView4 contentLayoutGuide];
  trailingAnchor = [contentLayoutGuide3 trailingAnchor];
  nicknameView5 = [(SUUIComposeReviewNicknameViewController *)self nicknameView];
  trailingAnchor2 = [nicknameView5 trailingAnchor];
  v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v25 setActive:1];

  scrollView5 = [(SUUIComposeReviewNicknameViewController *)self scrollView];
  contentLayoutGuide4 = [scrollView5 contentLayoutGuide];
  bottomAnchor = [contentLayoutGuide4 bottomAnchor];
  nicknameView6 = [(SUUIComposeReviewNicknameViewController *)self nicknameView];
  bottomAnchor2 = [nicknameView6 bottomAnchor];
  v31 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v31 setActive:1];

  scrollView6 = [(SUUIComposeReviewNicknameViewController *)self scrollView];
  contentLayoutGuide5 = [scrollView6 contentLayoutGuide];
  widthAnchor = [contentLayoutGuide5 widthAnchor];
  scrollView7 = [(SUUIComposeReviewNicknameViewController *)self scrollView];
  frameLayoutGuide = [scrollView7 frameLayoutGuide];
  widthAnchor2 = [frameLayoutGuide widthAnchor];
  v37 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v37 setActive:1];
}

- (void)_setupBarButtonItems
{
  navigationItem = [(SUViewController *)self navigationItem];
  v3 = objc_alloc(MEMORY[0x277D7FDB0]);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CONFIRM" value:&stru_286AECDE0 table:0];
  v6 = [v3 initWithTitle:v5 style:2 target:self action:sel__submit];

  [navigationItem setRightBarButtonItem:v6];
  navigationItem2 = [(SUViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem2 rightBarButtonItem];
  [rightBarButtonItem setEnabled:0];
}

- (void)_cancel
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 composeReviewNicknameDidCancel:self];
  }
}

- (void)_submit
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    nicknameView = [(SUUIComposeReviewNicknameViewController *)self nicknameView];
    nicknameTextfield = [nicknameView nicknameTextfield];
    text = [nicknameTextfield text];
    [v8 composeReviewNicknameDidConfirm:self nickname:text];
  }
}

- (void)_updateConfirmState
{
  nicknameView = [(SUUIComposeReviewNicknameViewController *)self nicknameView];
  nicknameTextfield = [nicknameView nicknameTextfield];
  text = [nicknameTextfield text];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v9 = [text stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  navigationItem = [(SUViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:{objc_msgSend(v9, "length") != 0}];
}

- (SUUIComposeReviewNicknameDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end