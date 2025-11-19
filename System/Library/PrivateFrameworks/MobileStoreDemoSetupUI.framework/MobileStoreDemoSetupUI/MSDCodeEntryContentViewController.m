@interface MSDCodeEntryContentViewController
- (MSDCodeEntryContentViewController)initWithTitle:(id)a3 message:(id)a4 verificationCode:(id)a5 verificationErrorMesssage:(id)a6 andDelegate:(id)a7;
- (void)didEnterCode:(id)a3 forEntry:(id)a4;
- (void)updateViewConstraints;
- (void)viewWillLayoutSubviews;
@end

@implementation MSDCodeEntryContentViewController

- (MSDCodeEntryContentViewController)initWithTitle:(id)a3 message:(id)a4 verificationCode:(id)a5 verificationErrorMesssage:(id)a6 andDelegate:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v70.receiver = self;
  v70.super_class = MSDCodeEntryContentViewController;
  v17 = [(MSDCodeEntryContentViewController *)&v70 initWithNibName:0 bundle:0];
  v18 = v17;
  if (v17)
  {
    [(MSDCodeEntryContentViewController *)v17 setVerificationCode:v14];
    [(MSDCodeEntryContentViewController *)v18 setDelegate:v16];
    [(MSDCodeEntryContentViewController *)v18 setActiveConstraints:0];
    [(MSDCodeEntryContentViewController *)v18 setErrorMessage:v15];
    v67 = [MSDSetupUILocalization localizedStringForKey:@"DDL_AUTHENTICATION_PROMPT"];
    v68 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76988] addingSymbolicTraits:0 options:2];
    v19 = objc_alloc(MEMORY[0x277D756B8]);
    v20 = *MEMORY[0x277CBF3A0];
    v21 = *(MEMORY[0x277CBF3A0] + 8);
    v22 = *(MEMORY[0x277CBF3A0] + 16);
    v23 = *(MEMORY[0x277CBF3A0] + 24);
    v24 = [v19 initWithFrame:{*MEMORY[0x277CBF3A0], v21, v22, v23}];
    [(MSDCodeEntryContentViewController *)v18 setTitleLabel:v24];

    v25 = [MEMORY[0x277D74300] fontWithDescriptor:v68 size:0.0];
    v26 = [(MSDCodeEntryContentViewController *)v18 titleLabel];
    [v26 setFont:v25];

    v27 = [(MSDCodeEntryContentViewController *)v18 titleLabel];
    [v27 setNumberOfLines:0];

    v28 = [(MSDCodeEntryContentViewController *)v18 titleLabel];
    [v28 setTextAlignment:1];

    v29 = [(MSDCodeEntryContentViewController *)v18 titleLabel];
    [v29 setText:v12];

    v30 = [(MSDCodeEntryContentViewController *)v18 titleLabel];
    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];

    v31 = [(MSDCodeEntryContentViewController *)v18 titleLabel];
    LODWORD(v32) = 1055286886;
    [v31 _setHyphenationFactor:v32];

    v33 = [(MSDCodeEntryContentViewController *)v18 titleLabel];
    [v33 setPreferredMaxLayoutWidth:238.0];

    v34 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v20, v21, v22, v23}];
    [(MSDCodeEntryContentViewController *)v18 setMessageLabel:v34];

    v35 = *MEMORY[0x277D76968];
    v36 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] addingSymbolicTraits:0x8000 options:2];
    [MEMORY[0x277D74300] fontWithDescriptor:v36 size:0.0];
    v37 = v69 = v12;
    v38 = [(MSDCodeEntryContentViewController *)v18 messageLabel];
    [v38 setFont:v37];

    v39 = [(MSDCodeEntryContentViewController *)v18 messageLabel];
    [v39 setNumberOfLines:0];

    v40 = [(MSDCodeEntryContentViewController *)v18 messageLabel];
    [v40 setTextAlignment:1];

    v41 = [(MSDCodeEntryContentViewController *)v18 messageLabel];
    [v41 setAttributedText:v13];

    v42 = [(MSDCodeEntryContentViewController *)v18 messageLabel];
    [v42 setTranslatesAutoresizingMaskIntoConstraints:0];

    v43 = [(MSDCodeEntryContentViewController *)v18 messageLabel];
    LODWORD(v44) = 1055286886;
    [v43 _setHyphenationFactor:v44];

    v45 = [(MSDCodeEntryContentViewController *)v18 messageLabel];
    [v45 setPreferredMaxLayoutWidth:238.0];

    v46 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v20, v21, v22, v23}];
    [(MSDCodeEntryContentViewController *)v18 setPromptLabel:v46];

    v47 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:v35 addingSymbolicTraits:0x8000 options:2];
    v48 = [MEMORY[0x277D74300] fontWithDescriptor:v47 size:0.0];
    v49 = [(MSDCodeEntryContentViewController *)v18 promptLabel];
    [v49 setFont:v48];

    v50 = [(MSDCodeEntryContentViewController *)v18 promptLabel];
    [v50 setNumberOfLines:0];

    v51 = [(MSDCodeEntryContentViewController *)v18 promptLabel];
    [v51 setTextAlignment:1];

    v52 = [(MSDCodeEntryContentViewController *)v18 promptLabel];
    [v52 setText:v67];

    v53 = [(MSDCodeEntryContentViewController *)v18 promptLabel];
    [v53 setTranslatesAutoresizingMaskIntoConstraints:0];

    v54 = [(MSDCodeEntryContentViewController *)v18 promptLabel];
    LODWORD(v55) = 1055286886;
    [v54 _setHyphenationFactor:v55];

    v56 = [(MSDCodeEntryContentViewController *)v18 promptLabel];
    [v56 setPreferredMaxLayoutWidth:238.0];

    v57 = [[MSDCodeEntryView alloc] initWithDelegate:v18];
    [(MSDCodeEntryContentViewController *)v18 setCodeEntryView:v57];

    v58 = [(MSDCodeEntryContentViewController *)v18 view];
    v59 = [(MSDCodeEntryContentViewController *)v18 titleLabel];
    [v58 addSubview:v59];

    v60 = [(MSDCodeEntryContentViewController *)v18 view];
    v61 = [(MSDCodeEntryContentViewController *)v18 messageLabel];
    [v60 addSubview:v61];

    v62 = [(MSDCodeEntryContentViewController *)v18 view];
    v63 = [(MSDCodeEntryContentViewController *)v18 promptLabel];
    [v62 addSubview:v63];

    v64 = [(MSDCodeEntryContentViewController *)v18 view];
    v65 = [(MSDCodeEntryContentViewController *)v18 codeEntryView];
    [v64 addSubview:v65];

    v12 = v69;
  }

  return v18;
}

- (void)viewWillLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = MSDCodeEntryContentViewController;
  [(MSDCodeEntryContentViewController *)&v6 viewWillLayoutSubviews];
  v3 = [(MSDCodeEntryContentViewController *)self view];
  [v3 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C80], *(MEMORY[0x277D76C80] + 8)}];
  v5 = v4;

  [(MSDCodeEntryContentViewController *)self setPreferredContentSize:270.0, v5];
}

- (void)updateViewConstraints
{
  v56.receiver = self;
  v56.super_class = MSDCodeEntryContentViewController;
  [(MSDCodeEntryContentViewController *)&v56 updateViewConstraints];
  v3 = [(MSDCodeEntryContentViewController *)self activeConstraints];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAD0];
    v5 = [(MSDCodeEntryContentViewController *)self activeConstraints];
    [v4 deactivateConstraints:v5];
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v53 = objc_alloc_init(MEMORY[0x277D74260]);
  [v53 setWantsBaselineOffset:1];
  [v53 baselineOffset];
  v8 = v7;
  v52 = +[MSDCodeEntryView generatorFieldFont];
  [v52 descender];
  v10 = v9;
  v11 = _NSDictionaryOfVariableBindings(&cfstr_TitlelabelMess.isa, self->_titleLabel, self->_messageLabel, 0);
  v12 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76918]];
  v13 = MEMORY[0x277CCAAD0];
  v14 = [(MSDCodeEntryContentViewController *)self titleLabel];
  v15 = [(MSDCodeEntryContentViewController *)self view];
  [v12 scaledValueForValue:36.0];
  v16 = [MEMORY[0x277D759A0] mainScreen];
  UIRoundToScreenScale();
  v55 = [v13 constraintWithItem:v14 attribute:12 relatedBy:0 toItem:v15 attribute:3 multiplier:1.0 constant:v17];

  v18 = MEMORY[0x277CCAAD0];
  v19 = [(MSDCodeEntryContentViewController *)self titleLabel];
  v20 = [(MSDCodeEntryContentViewController *)self messageLabel];
  [v12 scaledValueForValue:-20.0];
  v21 = [MEMORY[0x277D759A0] mainScreen];
  UIRoundToScreenScale();
  v54 = [v18 constraintWithItem:v19 attribute:11 relatedBy:0 toItem:v20 attribute:12 multiplier:1.0 constant:v22];

  v51 = v11;
  v50 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-(H_MARGIN)-[_titleLabel]-(H_MARGIN)-|" options:0 metrics:&unk_286AEA390 views:v11];
  v49 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-(H_MARGIN)-[_messageLabel]-(H_MARGIN)-|" options:0 metrics:&unk_286AEA390 views:v11];
  v23 = MEMORY[0x277CCAAD0];
  v24 = [(MSDCodeEntryContentViewController *)self promptLabel];
  v25 = [(MSDCodeEntryContentViewController *)self view];
  v48 = [v23 constraintWithItem:v24 attribute:9 relatedBy:0 toItem:v25 attribute:9 multiplier:1.0 constant:0.0];

  v26 = MEMORY[0x277CCAAD0];
  v27 = [(MSDCodeEntryContentViewController *)self messageLabel];
  v28 = [(MSDCodeEntryContentViewController *)self promptLabel];
  [v12 scaledValueForValue:-30.0];
  v29 = [MEMORY[0x277D759A0] mainScreen];
  UIRoundToScreenScale();
  v47 = [v26 constraintWithItem:v27 attribute:11 relatedBy:0 toItem:v28 attribute:12 multiplier:1.0 constant:v30];

  [v6 addObject:v55];
  [v6 addObject:v54];
  [v6 addObjectsFromArray:v50];
  [v6 addObjectsFromArray:v49];
  [v6 addObject:v48];
  [v6 addObject:v47];
  v31 = MEMORY[0x277CCAAD0];
  v32 = [(MSDCodeEntryContentViewController *)self codeEntryView];
  v33 = [(MSDCodeEntryContentViewController *)self view];
  v34 = [v31 constraintWithItem:v32 attribute:9 relatedBy:0 toItem:v33 attribute:9 multiplier:1.0 constant:0.0];

  v35 = MEMORY[0x277CCAAD0];
  v36 = [(MSDCodeEntryContentViewController *)self codeEntryView];
  v37 = [(MSDCodeEntryContentViewController *)self promptLabel];
  [v12 scaledValueForValue:12.0];
  v39 = [v35 constraintWithItem:v36 attribute:3 relatedBy:0 toItem:v37 attribute:11 multiplier:1.0 constant:ceil(v38 - v8)];

  v40 = MEMORY[0x277CCAAD0];
  v41 = [(MSDCodeEntryContentViewController *)self codeEntryView];
  v42 = [(MSDCodeEntryContentViewController *)self view];
  [v12 scaledValueForValue:-32.0];
  v44 = [v40 constraintWithItem:v41 attribute:4 relatedBy:0 toItem:v42 attribute:4 multiplier:1.0 constant:ceil(v43 - v10)];

  [v6 addObject:v34];
  [v6 addObject:v39];
  [v6 addObject:v44];
  [MEMORY[0x277CCAAD0] activateConstraints:v6];
  v45 = [v6 copy];
  activeConstraints = self->_activeConstraints;
  self->_activeConstraints = v45;
}

- (void)didEnterCode:(id)a3 forEntry:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = defaultLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = v6;
    _os_log_impl(&dword_259BCA000, v8, OS_LOG_TYPE_DEFAULT, "User entered verification code: %{public}@", buf, 0xCu);
  }

  v9 = [(MSDCodeEntryContentViewController *)self verificationCode];
  v10 = [v6 isEqualToString:v9];

  v11 = defaultLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&dword_259BCA000, v11, OS_LOG_TYPE_DEFAULT, "Verification successful", buf, 2u);
    }
  }

  else
  {
    if (v12)
    {
      v13 = [(MSDCodeEntryContentViewController *)self verificationCode];
      *buf = 138543618;
      v21 = v6;
      v22 = 2114;
      v23 = v13;
      _os_log_impl(&dword_259BCA000, v11, OS_LOG_TYPE_DEFAULT, "Entered code: %{public}@ is not expected code: %{public}@", buf, 0x16u);
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __59__MSDCodeEntryContentViewController_didEnterCode_forEntry___block_invoke;
    v17[3] = &unk_2798F1D60;
    v18 = v7;
    v19 = self;
    dispatch_async(MEMORY[0x277D85CD0], v17);
    v11 = v18;
  }

  v14 = [(MSDCodeEntryContentViewController *)self delegate];
  v15 = [(MSDCodeEntryContentViewController *)self verificationCode];
  [v14 didCompleteVerification:v10 forCode:v15];

  v16 = *MEMORY[0x277D85DE8];
}

void __59__MSDCodeEntryContentViewController_didEnterCode_forEntry___block_invoke(uint64_t a1)
{
  [*(a1 + 32) clearEntry];
  [*(a1 + 32) jiggleAView];
  v2 = [*(a1 + 40) errorMessage];
  v3 = [*(a1 + 40) promptLabel];
  [v3 setText:v2];

  v5 = [MEMORY[0x277D75348] redColor];
  v4 = [*(a1 + 40) promptLabel];
  [v4 setColor:v5];
}

@end