@interface MSDCodeEntryContentViewController
- (MSDCodeEntryContentViewController)initWithTitle:(id)title message:(id)message verificationCode:(id)code verificationErrorMesssage:(id)messsage andDelegate:(id)delegate;
- (void)didEnterCode:(id)code forEntry:(id)entry;
- (void)updateViewConstraints;
- (void)viewWillLayoutSubviews;
@end

@implementation MSDCodeEntryContentViewController

- (MSDCodeEntryContentViewController)initWithTitle:(id)title message:(id)message verificationCode:(id)code verificationErrorMesssage:(id)messsage andDelegate:(id)delegate
{
  titleCopy = title;
  messageCopy = message;
  codeCopy = code;
  messsageCopy = messsage;
  delegateCopy = delegate;
  v70.receiver = self;
  v70.super_class = MSDCodeEntryContentViewController;
  v17 = [(MSDCodeEntryContentViewController *)&v70 initWithNibName:0 bundle:0];
  v18 = v17;
  if (v17)
  {
    [(MSDCodeEntryContentViewController *)v17 setVerificationCode:codeCopy];
    [(MSDCodeEntryContentViewController *)v18 setDelegate:delegateCopy];
    [(MSDCodeEntryContentViewController *)v18 setActiveConstraints:0];
    [(MSDCodeEntryContentViewController *)v18 setErrorMessage:messsageCopy];
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
    titleLabel = [(MSDCodeEntryContentViewController *)v18 titleLabel];
    [titleLabel setFont:v25];

    titleLabel2 = [(MSDCodeEntryContentViewController *)v18 titleLabel];
    [titleLabel2 setNumberOfLines:0];

    titleLabel3 = [(MSDCodeEntryContentViewController *)v18 titleLabel];
    [titleLabel3 setTextAlignment:1];

    titleLabel4 = [(MSDCodeEntryContentViewController *)v18 titleLabel];
    [titleLabel4 setText:titleCopy];

    titleLabel5 = [(MSDCodeEntryContentViewController *)v18 titleLabel];
    [titleLabel5 setTranslatesAutoresizingMaskIntoConstraints:0];

    titleLabel6 = [(MSDCodeEntryContentViewController *)v18 titleLabel];
    LODWORD(v32) = 1055286886;
    [titleLabel6 _setHyphenationFactor:v32];

    titleLabel7 = [(MSDCodeEntryContentViewController *)v18 titleLabel];
    [titleLabel7 setPreferredMaxLayoutWidth:238.0];

    v34 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v20, v21, v22, v23}];
    [(MSDCodeEntryContentViewController *)v18 setMessageLabel:v34];

    v35 = *MEMORY[0x277D76968];
    v36 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] addingSymbolicTraits:0x8000 options:2];
    [MEMORY[0x277D74300] fontWithDescriptor:v36 size:0.0];
    v37 = v69 = titleCopy;
    messageLabel = [(MSDCodeEntryContentViewController *)v18 messageLabel];
    [messageLabel setFont:v37];

    messageLabel2 = [(MSDCodeEntryContentViewController *)v18 messageLabel];
    [messageLabel2 setNumberOfLines:0];

    messageLabel3 = [(MSDCodeEntryContentViewController *)v18 messageLabel];
    [messageLabel3 setTextAlignment:1];

    messageLabel4 = [(MSDCodeEntryContentViewController *)v18 messageLabel];
    [messageLabel4 setAttributedText:messageCopy];

    messageLabel5 = [(MSDCodeEntryContentViewController *)v18 messageLabel];
    [messageLabel5 setTranslatesAutoresizingMaskIntoConstraints:0];

    messageLabel6 = [(MSDCodeEntryContentViewController *)v18 messageLabel];
    LODWORD(v44) = 1055286886;
    [messageLabel6 _setHyphenationFactor:v44];

    messageLabel7 = [(MSDCodeEntryContentViewController *)v18 messageLabel];
    [messageLabel7 setPreferredMaxLayoutWidth:238.0];

    v46 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v20, v21, v22, v23}];
    [(MSDCodeEntryContentViewController *)v18 setPromptLabel:v46];

    v47 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:v35 addingSymbolicTraits:0x8000 options:2];
    v48 = [MEMORY[0x277D74300] fontWithDescriptor:v47 size:0.0];
    promptLabel = [(MSDCodeEntryContentViewController *)v18 promptLabel];
    [promptLabel setFont:v48];

    promptLabel2 = [(MSDCodeEntryContentViewController *)v18 promptLabel];
    [promptLabel2 setNumberOfLines:0];

    promptLabel3 = [(MSDCodeEntryContentViewController *)v18 promptLabel];
    [promptLabel3 setTextAlignment:1];

    promptLabel4 = [(MSDCodeEntryContentViewController *)v18 promptLabel];
    [promptLabel4 setText:v67];

    promptLabel5 = [(MSDCodeEntryContentViewController *)v18 promptLabel];
    [promptLabel5 setTranslatesAutoresizingMaskIntoConstraints:0];

    promptLabel6 = [(MSDCodeEntryContentViewController *)v18 promptLabel];
    LODWORD(v55) = 1055286886;
    [promptLabel6 _setHyphenationFactor:v55];

    promptLabel7 = [(MSDCodeEntryContentViewController *)v18 promptLabel];
    [promptLabel7 setPreferredMaxLayoutWidth:238.0];

    v57 = [[MSDCodeEntryView alloc] initWithDelegate:v18];
    [(MSDCodeEntryContentViewController *)v18 setCodeEntryView:v57];

    view = [(MSDCodeEntryContentViewController *)v18 view];
    titleLabel8 = [(MSDCodeEntryContentViewController *)v18 titleLabel];
    [view addSubview:titleLabel8];

    view2 = [(MSDCodeEntryContentViewController *)v18 view];
    messageLabel8 = [(MSDCodeEntryContentViewController *)v18 messageLabel];
    [view2 addSubview:messageLabel8];

    view3 = [(MSDCodeEntryContentViewController *)v18 view];
    promptLabel8 = [(MSDCodeEntryContentViewController *)v18 promptLabel];
    [view3 addSubview:promptLabel8];

    view4 = [(MSDCodeEntryContentViewController *)v18 view];
    codeEntryView = [(MSDCodeEntryContentViewController *)v18 codeEntryView];
    [view4 addSubview:codeEntryView];

    titleCopy = v69;
  }

  return v18;
}

- (void)viewWillLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = MSDCodeEntryContentViewController;
  [(MSDCodeEntryContentViewController *)&v6 viewWillLayoutSubviews];
  view = [(MSDCodeEntryContentViewController *)self view];
  [view systemLayoutSizeFittingSize:{*MEMORY[0x277D76C80], *(MEMORY[0x277D76C80] + 8)}];
  v5 = v4;

  [(MSDCodeEntryContentViewController *)self setPreferredContentSize:270.0, v5];
}

- (void)updateViewConstraints
{
  v56.receiver = self;
  v56.super_class = MSDCodeEntryContentViewController;
  [(MSDCodeEntryContentViewController *)&v56 updateViewConstraints];
  activeConstraints = [(MSDCodeEntryContentViewController *)self activeConstraints];

  if (activeConstraints)
  {
    v4 = MEMORY[0x277CCAAD0];
    activeConstraints2 = [(MSDCodeEntryContentViewController *)self activeConstraints];
    [v4 deactivateConstraints:activeConstraints2];
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
  titleLabel = [(MSDCodeEntryContentViewController *)self titleLabel];
  view = [(MSDCodeEntryContentViewController *)self view];
  [v12 scaledValueForValue:36.0];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  UIRoundToScreenScale();
  v55 = [v13 constraintWithItem:titleLabel attribute:12 relatedBy:0 toItem:view attribute:3 multiplier:1.0 constant:v17];

  v18 = MEMORY[0x277CCAAD0];
  titleLabel2 = [(MSDCodeEntryContentViewController *)self titleLabel];
  messageLabel = [(MSDCodeEntryContentViewController *)self messageLabel];
  [v12 scaledValueForValue:-20.0];
  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  UIRoundToScreenScale();
  v54 = [v18 constraintWithItem:titleLabel2 attribute:11 relatedBy:0 toItem:messageLabel attribute:12 multiplier:1.0 constant:v22];

  v51 = v11;
  v50 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-(H_MARGIN)-[_titleLabel]-(H_MARGIN)-|" options:0 metrics:&unk_286AEA390 views:v11];
  v49 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-(H_MARGIN)-[_messageLabel]-(H_MARGIN)-|" options:0 metrics:&unk_286AEA390 views:v11];
  v23 = MEMORY[0x277CCAAD0];
  promptLabel = [(MSDCodeEntryContentViewController *)self promptLabel];
  view2 = [(MSDCodeEntryContentViewController *)self view];
  v48 = [v23 constraintWithItem:promptLabel attribute:9 relatedBy:0 toItem:view2 attribute:9 multiplier:1.0 constant:0.0];

  v26 = MEMORY[0x277CCAAD0];
  messageLabel2 = [(MSDCodeEntryContentViewController *)self messageLabel];
  promptLabel2 = [(MSDCodeEntryContentViewController *)self promptLabel];
  [v12 scaledValueForValue:-30.0];
  mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
  UIRoundToScreenScale();
  v47 = [v26 constraintWithItem:messageLabel2 attribute:11 relatedBy:0 toItem:promptLabel2 attribute:12 multiplier:1.0 constant:v30];

  [v6 addObject:v55];
  [v6 addObject:v54];
  [v6 addObjectsFromArray:v50];
  [v6 addObjectsFromArray:v49];
  [v6 addObject:v48];
  [v6 addObject:v47];
  v31 = MEMORY[0x277CCAAD0];
  codeEntryView = [(MSDCodeEntryContentViewController *)self codeEntryView];
  view3 = [(MSDCodeEntryContentViewController *)self view];
  v34 = [v31 constraintWithItem:codeEntryView attribute:9 relatedBy:0 toItem:view3 attribute:9 multiplier:1.0 constant:0.0];

  v35 = MEMORY[0x277CCAAD0];
  codeEntryView2 = [(MSDCodeEntryContentViewController *)self codeEntryView];
  promptLabel3 = [(MSDCodeEntryContentViewController *)self promptLabel];
  [v12 scaledValueForValue:12.0];
  v39 = [v35 constraintWithItem:codeEntryView2 attribute:3 relatedBy:0 toItem:promptLabel3 attribute:11 multiplier:1.0 constant:ceil(v38 - v8)];

  v40 = MEMORY[0x277CCAAD0];
  codeEntryView3 = [(MSDCodeEntryContentViewController *)self codeEntryView];
  view4 = [(MSDCodeEntryContentViewController *)self view];
  [v12 scaledValueForValue:-32.0];
  v44 = [v40 constraintWithItem:codeEntryView3 attribute:4 relatedBy:0 toItem:view4 attribute:4 multiplier:1.0 constant:ceil(v43 - v10)];

  [v6 addObject:v34];
  [v6 addObject:v39];
  [v6 addObject:v44];
  [MEMORY[0x277CCAAD0] activateConstraints:v6];
  v45 = [v6 copy];
  activeConstraints = self->_activeConstraints;
  self->_activeConstraints = v45;
}

- (void)didEnterCode:(id)code forEntry:(id)entry
{
  v24 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  entryCopy = entry;
  v8 = defaultLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = codeCopy;
    _os_log_impl(&dword_259BCA000, v8, OS_LOG_TYPE_DEFAULT, "User entered verification code: %{public}@", buf, 0xCu);
  }

  verificationCode = [(MSDCodeEntryContentViewController *)self verificationCode];
  v10 = [codeCopy isEqualToString:verificationCode];

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
      verificationCode2 = [(MSDCodeEntryContentViewController *)self verificationCode];
      *buf = 138543618;
      v21 = codeCopy;
      v22 = 2114;
      v23 = verificationCode2;
      _os_log_impl(&dword_259BCA000, v11, OS_LOG_TYPE_DEFAULT, "Entered code: %{public}@ is not expected code: %{public}@", buf, 0x16u);
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __59__MSDCodeEntryContentViewController_didEnterCode_forEntry___block_invoke;
    v17[3] = &unk_2798F1D60;
    v18 = entryCopy;
    selfCopy = self;
    dispatch_async(MEMORY[0x277D85CD0], v17);
    v11 = v18;
  }

  delegate = [(MSDCodeEntryContentViewController *)self delegate];
  verificationCode3 = [(MSDCodeEntryContentViewController *)self verificationCode];
  [delegate didCompleteVerification:v10 forCode:verificationCode3];

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