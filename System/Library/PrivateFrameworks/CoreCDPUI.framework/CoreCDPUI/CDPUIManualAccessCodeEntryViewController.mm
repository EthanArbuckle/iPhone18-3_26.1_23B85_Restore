@interface CDPUIManualAccessCodeEntryViewController
- (CDPUIManualAccessCodeEntryViewController)init;
- (CDPUIManualAccessCodeEntryViewControllerDelegate)delegate;
- (id)_accessCodeEntryStackView;
- (id)_contentStackView;
- (id)_errorLabelView;
- (id)_labelView;
- (id)_manualAccessCodeTextView;
- (id)_wrappingKeySubstringFromAccessKey:(id)key;
- (void)_setupView;
- (void)accessCodeEntryTextFieldDidReturn:(id)return;
- (void)accessCodeEntryTextFieldDidUpdate:(id)update;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CDPUIManualAccessCodeEntryViewController

- (CDPUIManualAccessCodeEntryViewController)init
{
  v3 = +[CDPUIAccessCodeEntryTextField accessKeyCharacterCount];
  mEMORY[0x277CFD480] = [MEMORY[0x277CFD480] sharedInstance];
  primaryAccountFirstName = [mEMORY[0x277CFD480] primaryAccountFirstName];

  v6 = CDPLocalizedString();
  v7 = MEMORY[0x277CCACA8];
  v8 = CDPLocalizedString();
  v9 = [v7 stringWithValidatedFormat:v8 validFormatSpecifiers:@"%d %@" error:0, v3, primaryAccountFirstName];

  v13.receiver = self;
  v13.super_class = CDPUIManualAccessCodeEntryViewController;
  v10 = [(CDPUIManualAccessCodeEntryViewController *)&v13 initWithTitle:v6 detailText:v9 icon:0 contentLayout:3];
  v11 = v10;
  if (v10)
  {
    [(CDPUIManualAccessCodeEntryViewController *)v10 _setupView];
  }

  return v11;
}

- (void)_setupView
{
  v23[4] = *MEMORY[0x277D85DE8];
  _contentStackView = [(CDPUIManualAccessCodeEntryViewController *)self _contentStackView];
  contentView = [(CDPUIManualAccessCodeEntryViewController *)self contentView];
  [contentView addSubview:_contentStackView];

  v16 = MEMORY[0x277CCAAD0];
  leadingAnchor = [_contentStackView leadingAnchor];
  contentView2 = [(CDPUIManualAccessCodeEntryViewController *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
  v23[0] = v19;
  trailingAnchor = [_contentStackView trailingAnchor];
  contentView3 = [(CDPUIManualAccessCodeEntryViewController *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
  v23[1] = v14;
  topAnchor = [_contentStackView topAnchor];
  contentView4 = [(CDPUIManualAccessCodeEntryViewController *)self contentView];
  topAnchor2 = [contentView4 topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
  v23[2] = v8;
  bottomAnchor = [_contentStackView bottomAnchor];
  contentView5 = [(CDPUIManualAccessCodeEntryViewController *)self contentView];
  bottomAnchor2 = [contentView5 bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
  v23[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  [v16 activateConstraints:v13];
}

- (id)_contentStackView
{
  v15[2] = *MEMORY[0x277D85DE8];
  contentStackView = [(CDPUIManualAccessCodeEntryViewController *)self contentStackView];

  if (!contentStackView)
  {
    _accessCodeEntryStackView = [(CDPUIManualAccessCodeEntryViewController *)self _accessCodeEntryStackView];
    _errorLabelView = [(CDPUIManualAccessCodeEntryViewController *)self _errorLabelView];
    v6 = objc_alloc(MEMORY[0x277D75A68]);
    v15[0] = _accessCodeEntryStackView;
    v15[1] = _errorLabelView;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v8 = [v6 initWithArrangedSubviews:v7];
    [(CDPUIManualAccessCodeEntryViewController *)self setContentStackView:v8];

    contentStackView2 = [(CDPUIManualAccessCodeEntryViewController *)self contentStackView];
    [contentStackView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    contentStackView3 = [(CDPUIManualAccessCodeEntryViewController *)self contentStackView];
    [contentStackView3 setAxis:1];

    contentStackView4 = [(CDPUIManualAccessCodeEntryViewController *)self contentStackView];
    [contentStackView4 setAlignment:0];

    contentStackView5 = [(CDPUIManualAccessCodeEntryViewController *)self contentStackView];
    [contentStackView5 setDistribution:0];
  }

  contentStackView6 = [(CDPUIManualAccessCodeEntryViewController *)self contentStackView];

  return contentStackView6;
}

- (id)_accessCodeEntryStackView
{
  v15[2] = *MEMORY[0x277D85DE8];
  contentStackView = [(CDPUIManualAccessCodeEntryViewController *)self contentStackView];

  if (!contentStackView)
  {
    _labelView = [(CDPUIManualAccessCodeEntryViewController *)self _labelView];
    _manualAccessCodeTextView = [(CDPUIManualAccessCodeEntryViewController *)self _manualAccessCodeTextView];
    v6 = objc_alloc(MEMORY[0x277D75A68]);
    v15[0] = _labelView;
    v15[1] = _manualAccessCodeTextView;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v8 = [v6 initWithArrangedSubviews:v7];
    [(CDPUIManualAccessCodeEntryViewController *)self setContentStackView:v8];

    contentStackView2 = [(CDPUIManualAccessCodeEntryViewController *)self contentStackView];
    [contentStackView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    contentStackView3 = [(CDPUIManualAccessCodeEntryViewController *)self contentStackView];
    [contentStackView3 setAxis:0];

    contentStackView4 = [(CDPUIManualAccessCodeEntryViewController *)self contentStackView];
    [contentStackView4 setAlignment:2];

    contentStackView5 = [(CDPUIManualAccessCodeEntryViewController *)self contentStackView];
    [contentStackView5 setDistribution:0];
  }

  contentStackView6 = [(CDPUIManualAccessCodeEntryViewController *)self contentStackView];

  return contentStackView6;
}

- (id)_manualAccessCodeTextView
{
  v19[1] = *MEMORY[0x277D85DE8];
  entryTextView = [(CDPUIManualAccessCodeEntryViewController *)self entryTextView];

  if (!entryTextView)
  {
    v4 = [CDPUIAccessCodeEntryTextField alloc];
    v5 = [(CDPUIAccessCodeEntryTextField *)v4 initWithFrame:0 textContainer:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(CDPUIManualAccessCodeEntryViewController *)self setEntryTextView:v5];

    entryTextView2 = [(CDPUIManualAccessCodeEntryViewController *)self entryTextView];
    [entryTextView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = CDPLocalizedString();
    entryTextView3 = [(CDPUIManualAccessCodeEntryViewController *)self entryTextView];
    [entryTextView3 setPlaceholder:v7];

    entryTextView4 = [(CDPUIManualAccessCodeEntryViewController *)self entryTextView];
    [entryTextView4 setAccessCodeInputDelegate:self];

    v10 = [MEMORY[0x277D74300] monospacedSystemFontOfSize:16.0 weight:*MEMORY[0x277D74410]];
    entryTextView5 = [(CDPUIManualAccessCodeEntryViewController *)self entryTextView];
    [entryTextView5 setFont:v10];

    v12 = MEMORY[0x277CCAAD0];
    entryTextView6 = [(CDPUIManualAccessCodeEntryViewController *)self entryTextView];
    heightAnchor = [entryTextView6 heightAnchor];
    v15 = [heightAnchor constraintEqualToConstant:96.0];
    v19[0] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    [v12 activateConstraints:v16];
  }

  entryTextView7 = [(CDPUIManualAccessCodeEntryViewController *)self entryTextView];

  return entryTextView7;
}

- (id)_labelView
{
  v26[2] = *MEMORY[0x277D85DE8];
  prefixView = [(CDPUIManualAccessCodeEntryViewController *)self prefixView];

  if (!prefixView)
  {
    v4 = objc_alloc(MEMORY[0x277D75C40]);
    v5 = [v4 initWithFrame:0 textContainer:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(CDPUIManualAccessCodeEntryViewController *)self setPrefixView:v5];

    prefixView2 = [(CDPUIManualAccessCodeEntryViewController *)self prefixView];
    [prefixView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    prefixView3 = [(CDPUIManualAccessCodeEntryViewController *)self prefixView];
    [prefixView3 setText:@"LC:"];

    prefixView4 = [(CDPUIManualAccessCodeEntryViewController *)self prefixView];
    [prefixView4 setTextAlignment:2];

    prefixView5 = [(CDPUIManualAccessCodeEntryViewController *)self prefixView];
    [prefixView5 setEditable:0];

    v10 = [MEMORY[0x277D74300] monospacedSystemFontOfSize:16.0 weight:*MEMORY[0x277D74410]];
    prefixView6 = [(CDPUIManualAccessCodeEntryViewController *)self prefixView];
    [prefixView6 setFont:v10];

    labelColor = [MEMORY[0x277D75348] labelColor];
    prefixView7 = [(CDPUIManualAccessCodeEntryViewController *)self prefixView];
    [prefixView7 setTextColor:labelColor];

    clearColor = [MEMORY[0x277D75348] clearColor];
    prefixView8 = [(CDPUIManualAccessCodeEntryViewController *)self prefixView];
    [prefixView8 setBackgroundColor:clearColor];

    v16 = MEMORY[0x277CCAAD0];
    prefixView9 = [(CDPUIManualAccessCodeEntryViewController *)self prefixView];
    heightAnchor = [prefixView9 heightAnchor];
    v19 = [heightAnchor constraintEqualToConstant:96.0];
    v26[0] = v19;
    prefixView10 = [(CDPUIManualAccessCodeEntryViewController *)self prefixView];
    widthAnchor = [prefixView10 widthAnchor];
    v22 = [widthAnchor constraintEqualToConstant:40.0];
    v26[1] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    [v16 activateConstraints:v23];
  }

  prefixView11 = [(CDPUIManualAccessCodeEntryViewController *)self prefixView];

  return prefixView11;
}

- (id)_errorLabelView
{
  v25[2] = *MEMORY[0x277D85DE8];
  errorLabelView = [(CDPUIManualAccessCodeEntryViewController *)self errorLabelView];

  if (!errorLabelView)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(CDPUIManualAccessCodeEntryViewController *)self setErrorLabelView:v5];

    errorLabelView2 = [(CDPUIManualAccessCodeEntryViewController *)self errorLabelView];
    [errorLabelView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    errorLabelView3 = [(CDPUIManualAccessCodeEntryViewController *)self errorLabelView];
    [errorLabelView3 setTextAlignment:1];

    v8 = MEMORY[0x277D74300];
    [MEMORY[0x277D74300] smallSystemFontSize];
    v9 = [v8 systemFontOfSize:? weight:?];
    errorLabelView4 = [(CDPUIManualAccessCodeEntryViewController *)self errorLabelView];
    [errorLabelView4 setFont:v9];

    systemRedColor = [MEMORY[0x277D75348] systemRedColor];
    errorLabelView5 = [(CDPUIManualAccessCodeEntryViewController *)self errorLabelView];
    [errorLabelView5 setTextColor:systemRedColor];

    clearColor = [MEMORY[0x277D75348] clearColor];
    errorLabelView6 = [(CDPUIManualAccessCodeEntryViewController *)self errorLabelView];
    [errorLabelView6 setBackgroundColor:clearColor];

    v15 = MEMORY[0x277CCAAD0];
    prefixView = [(CDPUIManualAccessCodeEntryViewController *)self prefixView];
    heightAnchor = [prefixView heightAnchor];
    v18 = [heightAnchor constraintEqualToConstant:96.0];
    v25[0] = v18;
    prefixView2 = [(CDPUIManualAccessCodeEntryViewController *)self prefixView];
    widthAnchor = [prefixView2 widthAnchor];
    v21 = [widthAnchor constraintEqualToConstant:40.0];
    v25[1] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
    [v15 activateConstraints:v22];
  }

  errorLabelView7 = [(CDPUIManualAccessCodeEntryViewController *)self errorLabelView];

  return errorLabelView7;
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = CDPUIManualAccessCodeEntryViewController;
  [(OBBaseWelcomeController *)&v5 viewDidAppear:appear];
  entryTextView = [(CDPUIManualAccessCodeEntryViewController *)self entryTextView];
  [entryTextView becomeFirstResponder];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = CDPUIManualAccessCodeEntryViewController;
  [(OBBaseWelcomeController *)&v5 viewWillDisappear:disappear];
  entryTextView = [(CDPUIManualAccessCodeEntryViewController *)self entryTextView];
  [entryTextView resignFirstResponder];
}

- (void)accessCodeEntryTextFieldDidUpdate:(id)update
{
  _errorLabelView = [(CDPUIManualAccessCodeEntryViewController *)self _errorLabelView];
  [_errorLabelView setText:&stru_285826188];
}

- (void)accessCodeEntryTextFieldDidReturn:(id)return
{
  returnCopy = return;
  text = [returnCopy text];
  v6 = [(CDPUIManualAccessCodeEntryViewController *)self _wrappingKeySubstringFromAccessKey:text];

  if ([v6 length] && (-[CDPUIManualAccessCodeEntryViewController delegate](self, "delegate"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "manualAccessCodeEntry:shouldFinishWithAccessCode:", self, v6), v7, v8))
  {
    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_2451DB000, v9, OS_LOG_TYPE_DEFAULT, "User successfully entered the access key.", v12, 2u);
    }
  }

  else
  {
    _errorLabelView = [(CDPUIManualAccessCodeEntryViewController *)self _errorLabelView];
    v11 = CDPLocalizedString();
    [_errorLabelView setText:v11];

    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(CDPUIManualAccessCodeEntryViewController *)returnCopy accessCodeEntryTextFieldDidReturn:v9];
    }
  }
}

- (id)_wrappingKeySubstringFromAccessKey:(id)key
{
  keyCopy = key;
  v4 = [keyCopy length];
  if (v4 <= +[CDPUIAccessCodeEntryTextField wrappingKeyCharacterCount]+ 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = [keyCopy substringFromIndex:{objc_msgSend(keyCopy, "length") + ~+[CDPUIAccessCodeEntryTextField wrappingKeyCharacterCount](CDPUIAccessCodeEntryTextField, "wrappingKeyCharacterCount")}];
  }

  return v5;
}

- (CDPUIManualAccessCodeEntryViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)accessCodeEntryTextFieldDidReturn:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 text];
  v4 = 138477827;
  v5 = v3;
  _os_log_error_impl(&dword_2451DB000, a2, OS_LOG_TYPE_ERROR, "User entered an invalid access key: %{private}@", &v4, 0xCu);
}

@end