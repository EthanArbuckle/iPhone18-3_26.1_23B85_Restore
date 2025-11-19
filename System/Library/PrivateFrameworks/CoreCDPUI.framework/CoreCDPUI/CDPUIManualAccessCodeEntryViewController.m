@interface CDPUIManualAccessCodeEntryViewController
- (CDPUIManualAccessCodeEntryViewController)init;
- (CDPUIManualAccessCodeEntryViewControllerDelegate)delegate;
- (id)_accessCodeEntryStackView;
- (id)_contentStackView;
- (id)_errorLabelView;
- (id)_labelView;
- (id)_manualAccessCodeTextView;
- (id)_wrappingKeySubstringFromAccessKey:(id)a3;
- (void)_setupView;
- (void)accessCodeEntryTextFieldDidReturn:(id)a3;
- (void)accessCodeEntryTextFieldDidUpdate:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CDPUIManualAccessCodeEntryViewController

- (CDPUIManualAccessCodeEntryViewController)init
{
  v3 = +[CDPUIAccessCodeEntryTextField accessKeyCharacterCount];
  v4 = [MEMORY[0x277CFD480] sharedInstance];
  v5 = [v4 primaryAccountFirstName];

  v6 = CDPLocalizedString();
  v7 = MEMORY[0x277CCACA8];
  v8 = CDPLocalizedString();
  v9 = [v7 stringWithValidatedFormat:v8 validFormatSpecifiers:@"%d %@" error:0, v3, v5];

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
  v3 = [(CDPUIManualAccessCodeEntryViewController *)self _contentStackView];
  v4 = [(CDPUIManualAccessCodeEntryViewController *)self contentView];
  [v4 addSubview:v3];

  v16 = MEMORY[0x277CCAAD0];
  v21 = [v3 leadingAnchor];
  v22 = [(CDPUIManualAccessCodeEntryViewController *)self contentView];
  v20 = [v22 leadingAnchor];
  v19 = [v21 constraintEqualToAnchor:v20 constant:10.0];
  v23[0] = v19;
  v17 = [v3 trailingAnchor];
  v18 = [(CDPUIManualAccessCodeEntryViewController *)self contentView];
  v15 = [v18 trailingAnchor];
  v14 = [v17 constraintEqualToAnchor:v15 constant:-10.0];
  v23[1] = v14;
  v5 = [v3 topAnchor];
  v6 = [(CDPUIManualAccessCodeEntryViewController *)self contentView];
  v7 = [v6 topAnchor];
  v8 = [v5 constraintEqualToAnchor:v7 constant:10.0];
  v23[2] = v8;
  v9 = [v3 bottomAnchor];
  v10 = [(CDPUIManualAccessCodeEntryViewController *)self contentView];
  v11 = [v10 bottomAnchor];
  v12 = [v9 constraintEqualToAnchor:v11 constant:-10.0];
  v23[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  [v16 activateConstraints:v13];
}

- (id)_contentStackView
{
  v15[2] = *MEMORY[0x277D85DE8];
  v3 = [(CDPUIManualAccessCodeEntryViewController *)self contentStackView];

  if (!v3)
  {
    v4 = [(CDPUIManualAccessCodeEntryViewController *)self _accessCodeEntryStackView];
    v5 = [(CDPUIManualAccessCodeEntryViewController *)self _errorLabelView];
    v6 = objc_alloc(MEMORY[0x277D75A68]);
    v15[0] = v4;
    v15[1] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v8 = [v6 initWithArrangedSubviews:v7];
    [(CDPUIManualAccessCodeEntryViewController *)self setContentStackView:v8];

    v9 = [(CDPUIManualAccessCodeEntryViewController *)self contentStackView];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = [(CDPUIManualAccessCodeEntryViewController *)self contentStackView];
    [v10 setAxis:1];

    v11 = [(CDPUIManualAccessCodeEntryViewController *)self contentStackView];
    [v11 setAlignment:0];

    v12 = [(CDPUIManualAccessCodeEntryViewController *)self contentStackView];
    [v12 setDistribution:0];
  }

  v13 = [(CDPUIManualAccessCodeEntryViewController *)self contentStackView];

  return v13;
}

- (id)_accessCodeEntryStackView
{
  v15[2] = *MEMORY[0x277D85DE8];
  v3 = [(CDPUIManualAccessCodeEntryViewController *)self contentStackView];

  if (!v3)
  {
    v4 = [(CDPUIManualAccessCodeEntryViewController *)self _labelView];
    v5 = [(CDPUIManualAccessCodeEntryViewController *)self _manualAccessCodeTextView];
    v6 = objc_alloc(MEMORY[0x277D75A68]);
    v15[0] = v4;
    v15[1] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v8 = [v6 initWithArrangedSubviews:v7];
    [(CDPUIManualAccessCodeEntryViewController *)self setContentStackView:v8];

    v9 = [(CDPUIManualAccessCodeEntryViewController *)self contentStackView];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = [(CDPUIManualAccessCodeEntryViewController *)self contentStackView];
    [v10 setAxis:0];

    v11 = [(CDPUIManualAccessCodeEntryViewController *)self contentStackView];
    [v11 setAlignment:2];

    v12 = [(CDPUIManualAccessCodeEntryViewController *)self contentStackView];
    [v12 setDistribution:0];
  }

  v13 = [(CDPUIManualAccessCodeEntryViewController *)self contentStackView];

  return v13;
}

- (id)_manualAccessCodeTextView
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = [(CDPUIManualAccessCodeEntryViewController *)self entryTextView];

  if (!v3)
  {
    v4 = [CDPUIAccessCodeEntryTextField alloc];
    v5 = [(CDPUIAccessCodeEntryTextField *)v4 initWithFrame:0 textContainer:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(CDPUIManualAccessCodeEntryViewController *)self setEntryTextView:v5];

    v6 = [(CDPUIManualAccessCodeEntryViewController *)self entryTextView];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = CDPLocalizedString();
    v8 = [(CDPUIManualAccessCodeEntryViewController *)self entryTextView];
    [v8 setPlaceholder:v7];

    v9 = [(CDPUIManualAccessCodeEntryViewController *)self entryTextView];
    [v9 setAccessCodeInputDelegate:self];

    v10 = [MEMORY[0x277D74300] monospacedSystemFontOfSize:16.0 weight:*MEMORY[0x277D74410]];
    v11 = [(CDPUIManualAccessCodeEntryViewController *)self entryTextView];
    [v11 setFont:v10];

    v12 = MEMORY[0x277CCAAD0];
    v13 = [(CDPUIManualAccessCodeEntryViewController *)self entryTextView];
    v14 = [v13 heightAnchor];
    v15 = [v14 constraintEqualToConstant:96.0];
    v19[0] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    [v12 activateConstraints:v16];
  }

  v17 = [(CDPUIManualAccessCodeEntryViewController *)self entryTextView];

  return v17;
}

- (id)_labelView
{
  v26[2] = *MEMORY[0x277D85DE8];
  v3 = [(CDPUIManualAccessCodeEntryViewController *)self prefixView];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75C40]);
    v5 = [v4 initWithFrame:0 textContainer:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(CDPUIManualAccessCodeEntryViewController *)self setPrefixView:v5];

    v6 = [(CDPUIManualAccessCodeEntryViewController *)self prefixView];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = [(CDPUIManualAccessCodeEntryViewController *)self prefixView];
    [v7 setText:@"LC:"];

    v8 = [(CDPUIManualAccessCodeEntryViewController *)self prefixView];
    [v8 setTextAlignment:2];

    v9 = [(CDPUIManualAccessCodeEntryViewController *)self prefixView];
    [v9 setEditable:0];

    v10 = [MEMORY[0x277D74300] monospacedSystemFontOfSize:16.0 weight:*MEMORY[0x277D74410]];
    v11 = [(CDPUIManualAccessCodeEntryViewController *)self prefixView];
    [v11 setFont:v10];

    v12 = [MEMORY[0x277D75348] labelColor];
    v13 = [(CDPUIManualAccessCodeEntryViewController *)self prefixView];
    [v13 setTextColor:v12];

    v14 = [MEMORY[0x277D75348] clearColor];
    v15 = [(CDPUIManualAccessCodeEntryViewController *)self prefixView];
    [v15 setBackgroundColor:v14];

    v16 = MEMORY[0x277CCAAD0];
    v17 = [(CDPUIManualAccessCodeEntryViewController *)self prefixView];
    v18 = [v17 heightAnchor];
    v19 = [v18 constraintEqualToConstant:96.0];
    v26[0] = v19;
    v20 = [(CDPUIManualAccessCodeEntryViewController *)self prefixView];
    v21 = [v20 widthAnchor];
    v22 = [v21 constraintEqualToConstant:40.0];
    v26[1] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    [v16 activateConstraints:v23];
  }

  v24 = [(CDPUIManualAccessCodeEntryViewController *)self prefixView];

  return v24;
}

- (id)_errorLabelView
{
  v25[2] = *MEMORY[0x277D85DE8];
  v3 = [(CDPUIManualAccessCodeEntryViewController *)self errorLabelView];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(CDPUIManualAccessCodeEntryViewController *)self setErrorLabelView:v5];

    v6 = [(CDPUIManualAccessCodeEntryViewController *)self errorLabelView];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = [(CDPUIManualAccessCodeEntryViewController *)self errorLabelView];
    [v7 setTextAlignment:1];

    v8 = MEMORY[0x277D74300];
    [MEMORY[0x277D74300] smallSystemFontSize];
    v9 = [v8 systemFontOfSize:? weight:?];
    v10 = [(CDPUIManualAccessCodeEntryViewController *)self errorLabelView];
    [v10 setFont:v9];

    v11 = [MEMORY[0x277D75348] systemRedColor];
    v12 = [(CDPUIManualAccessCodeEntryViewController *)self errorLabelView];
    [v12 setTextColor:v11];

    v13 = [MEMORY[0x277D75348] clearColor];
    v14 = [(CDPUIManualAccessCodeEntryViewController *)self errorLabelView];
    [v14 setBackgroundColor:v13];

    v15 = MEMORY[0x277CCAAD0];
    v16 = [(CDPUIManualAccessCodeEntryViewController *)self prefixView];
    v17 = [v16 heightAnchor];
    v18 = [v17 constraintEqualToConstant:96.0];
    v25[0] = v18;
    v19 = [(CDPUIManualAccessCodeEntryViewController *)self prefixView];
    v20 = [v19 widthAnchor];
    v21 = [v20 constraintEqualToConstant:40.0];
    v25[1] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
    [v15 activateConstraints:v22];
  }

  v23 = [(CDPUIManualAccessCodeEntryViewController *)self errorLabelView];

  return v23;
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CDPUIManualAccessCodeEntryViewController;
  [(OBBaseWelcomeController *)&v5 viewDidAppear:a3];
  v4 = [(CDPUIManualAccessCodeEntryViewController *)self entryTextView];
  [v4 becomeFirstResponder];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CDPUIManualAccessCodeEntryViewController;
  [(OBBaseWelcomeController *)&v5 viewWillDisappear:a3];
  v4 = [(CDPUIManualAccessCodeEntryViewController *)self entryTextView];
  [v4 resignFirstResponder];
}

- (void)accessCodeEntryTextFieldDidUpdate:(id)a3
{
  v3 = [(CDPUIManualAccessCodeEntryViewController *)self _errorLabelView];
  [v3 setText:&stru_285826188];
}

- (void)accessCodeEntryTextFieldDidReturn:(id)a3
{
  v4 = a3;
  v5 = [v4 text];
  v6 = [(CDPUIManualAccessCodeEntryViewController *)self _wrappingKeySubstringFromAccessKey:v5];

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
    v10 = [(CDPUIManualAccessCodeEntryViewController *)self _errorLabelView];
    v11 = CDPLocalizedString();
    [v10 setText:v11];

    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(CDPUIManualAccessCodeEntryViewController *)v4 accessCodeEntryTextFieldDidReturn:v9];
    }
  }
}

- (id)_wrappingKeySubstringFromAccessKey:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  if (v4 <= +[CDPUIAccessCodeEntryTextField wrappingKeyCharacterCount]+ 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 substringFromIndex:{objc_msgSend(v3, "length") + ~+[CDPUIAccessCodeEntryTextField wrappingKeyCharacterCount](CDPUIAccessCodeEntryTextField, "wrappingKeyCharacterCount")}];
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