@interface HUAccessoryDiagnosticsConsentViewController
- (HUAccessoryDiagnosticsConsentViewController)initWithItem:(id)a3 completionHandler:(id)a4;
- (UIButton)submitButton;
- (UITextView)descriptionTextView;
- (void)_addConstraints;
- (void)cancelSubmission;
- (void)submitLog;
- (void)viewDidLoad;
@end

@implementation HUAccessoryDiagnosticsConsentViewController

- (HUAccessoryDiagnosticsConsentViewController)initWithItem:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = HUAccessoryDiagnosticsConsentViewController;
  v8 = [(HUAccessoryDiagnosticsConsentViewController *)&v16 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = _Block_copy(v7);
    completionHandler = v8->_completionHandler;
    v8->_completionHandler = v9;

    v11 = [v6 privacyPolicyURL];
    privacyPolicyURL = v8->_privacyPolicyURL;
    v8->_privacyPolicyURL = v11;

    v8->_consentTextVersion = [v6 consentVersion];
    v13 = [v6 manufacturer];
    manufacturer = v8->_manufacturer;
    v8->_manufacturer = v13;
  }

  return v8;
}

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = HUAccessoryDiagnosticsConsentViewController;
  [(HUAccessoryDiagnosticsConsentViewController *)&v21 viewDidLoad];
  v3 = [MEMORY[0x277D75348] systemBackgroundColor];
  v4 = [(HUAccessoryDiagnosticsConsentViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(HUAccessoryDiagnosticsConsentViewController *)self manufacturer];
  v12 = HULocalizedStringWithFormat(@"HUAccessoryDiagnosticsConsentNavigationTitle", @"%@", v6, v7, v8, v9, v10, v11, v5);
  [(HUAccessoryDiagnosticsConsentViewController *)self setTitle:v12];

  v13 = objc_alloc(MEMORY[0x277D751E0]);
  v14 = _HULocalizedStringWithDefaultValue(@"HUAccessoryDiagnosticsConsentCancelButton", @"HUAccessoryDiagnosticsConsentCancelButton", 1);
  v15 = [v13 initWithTitle:v14 style:0 target:self action:sel_cancelSubmission];
  v16 = [(HUAccessoryDiagnosticsConsentViewController *)self navigationItem];
  [v16 setLeftBarButtonItem:v15];

  v17 = [(HUAccessoryDiagnosticsConsentViewController *)self view];
  v18 = [(HUAccessoryDiagnosticsConsentViewController *)self descriptionTextView];
  [v17 addSubview:v18];

  v19 = [(HUAccessoryDiagnosticsConsentViewController *)self view];
  v20 = [(HUAccessoryDiagnosticsConsentViewController *)self submitButton];
  [v19 addSubview:v20];

  [(HUAccessoryDiagnosticsConsentViewController *)self _addConstraints];
}

- (void)_addConstraints
{
  v53[9] = *MEMORY[0x277D85DE8];
  v52 = [(HUAccessoryDiagnosticsConsentViewController *)self descriptionTextView];
  v50 = [v52 topAnchor];
  v51 = [(HUAccessoryDiagnosticsConsentViewController *)self view];
  v49 = [v51 safeAreaLayoutGuide];
  v48 = [v49 topAnchor];
  v47 = [v50 constraintEqualToAnchor:v48 constant:20.0];
  v53[0] = v47;
  v46 = [(HUAccessoryDiagnosticsConsentViewController *)self descriptionTextView];
  v44 = [v46 leftAnchor];
  v45 = [(HUAccessoryDiagnosticsConsentViewController *)self view];
  v43 = [v45 safeAreaLayoutGuide];
  v42 = [v43 leftAnchor];
  v41 = [v44 constraintEqualToAnchor:v42 constant:10.0];
  v53[1] = v41;
  v40 = [(HUAccessoryDiagnosticsConsentViewController *)self descriptionTextView];
  v38 = [v40 rightAnchor];
  v39 = [(HUAccessoryDiagnosticsConsentViewController *)self view];
  v37 = [v39 safeAreaLayoutGuide];
  v36 = [v37 rightAnchor];
  v35 = [v38 constraintEqualToAnchor:v36 constant:-10.0];
  v53[2] = v35;
  v34 = [(HUAccessoryDiagnosticsConsentViewController *)self descriptionTextView];
  v32 = [v34 bottomAnchor];
  v33 = [(HUAccessoryDiagnosticsConsentViewController *)self submitButton];
  v31 = [v33 topAnchor];
  v30 = [v32 constraintEqualToAnchor:v31 constant:-10.0];
  v53[3] = v30;
  v29 = [(HUAccessoryDiagnosticsConsentViewController *)self submitButton];
  v27 = [v29 bottomAnchor];
  v28 = [(HUAccessoryDiagnosticsConsentViewController *)self view];
  v26 = [v28 safeAreaLayoutGuide];
  v25 = [v26 bottomAnchor];
  v24 = [v27 constraintEqualToAnchor:v25 constant:-20.0];
  v53[4] = v24;
  v22 = [(HUAccessoryDiagnosticsConsentViewController *)self submitButton];
  v21 = [v22 heightAnchor];
  v20 = [v21 constraintEqualToConstant:47.0];
  v53[5] = v20;
  v19 = [(HUAccessoryDiagnosticsConsentViewController *)self submitButton];
  v17 = [v19 centerXAnchor];
  v18 = [(HUAccessoryDiagnosticsConsentViewController *)self view];
  v16 = [v18 centerXAnchor];
  v15 = [v17 constraintEqualToAnchor:v16];
  v53[6] = v15;
  v14 = [(HUAccessoryDiagnosticsConsentViewController *)self submitButton];
  v13 = [v14 leftAnchor];
  v3 = [(HUAccessoryDiagnosticsConsentViewController *)self view];
  v4 = [v3 safeAreaLayoutGuide];
  v5 = [v4 leftAnchor];
  v6 = [v13 constraintEqualToAnchor:v5 constant:20.0];
  v53[7] = v6;
  v7 = [(HUAccessoryDiagnosticsConsentViewController *)self submitButton];
  v8 = [v7 rightAnchor];
  v9 = [(HUAccessoryDiagnosticsConsentViewController *)self view];
  v10 = [v9 safeAreaLayoutGuide];
  v11 = [v10 rightAnchor];
  v12 = [v8 constraintEqualToAnchor:v11 constant:-20.0];
  v53[8] = v12;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:9];

  [MEMORY[0x277CCAAD0] activateConstraints:v23];
}

- (void)submitLog
{
  v3 = [(HUAccessoryDiagnosticsConsentViewController *)self completionHandler];
  v3[2](v3, 1);

  [(HUAccessoryDiagnosticsConsentViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)cancelSubmission
{
  v3 = [(HUAccessoryDiagnosticsConsentViewController *)self completionHandler];
  v3[2](v3, 0);

  [(HUAccessoryDiagnosticsConsentViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (UITextView)descriptionTextView
{
  v20[3] = *MEMORY[0x277D85DE8];
  descriptionTextView = self->_descriptionTextView;
  if (!descriptionTextView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75C40]);
    [(UITextView *)v4 setEditable:0];
    [(UITextView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITextView *)v4 setTextAlignment:1];
    v5 = _HULocalizedStringWithDefaultValue(@"HUAccessoryDiagnosticsConsentExplanation", @"HUAccessoryDiagnosticsConsentExplanation", 1);
    v6 = _HULocalizedStringWithDefaultValue(@"HUAccessoryDiagnosticsConsentLinkText", @"HUAccessoryDiagnosticsConsentLinkText", 1);
    v7 = [MEMORY[0x277D74248] defaultParagraphStyle];
    v8 = [v7 mutableCopy];

    [v8 setAlignment:1];
    v19[0] = *MEMORY[0x277D740A8];
    v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v10 = *MEMORY[0x277D74118];
    v20[0] = v9;
    v20[1] = v8;
    v11 = *MEMORY[0x277D740C0];
    v19[1] = v10;
    v19[2] = v11;
    v12 = [MEMORY[0x277D75348] labelColor];
    v20[2] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];

    v14 = MEMORY[0x277CCA898];
    v15 = [(HUAccessoryDiagnosticsConsentViewController *)self privacyPolicyURL];
    v16 = [v14 hf_attributedLinkStringForString:v5 linkString:v6 linkURL:v15 attributes:v13 additionalLinkAttributes:0];
    [(UITextView *)v4 setAttributedText:v16];

    v17 = self->_descriptionTextView;
    self->_descriptionTextView = v4;

    descriptionTextView = self->_descriptionTextView;
  }

  return descriptionTextView;
}

- (UIButton)submitButton
{
  submitButton = self->_submitButton;
  if (!submitButton)
  {
    v4 = [MEMORY[0x277D75220] buttonWithType:1];
    [(UIButton *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v4 addTarget:self action:sel_submitLog forControlEvents:64];
    v5 = [MEMORY[0x277D75348] systemWhiteColor];
    [(UIButton *)v4 setTintColor:v5];

    v6 = [MEMORY[0x277D75348] systemOrangeColor];
    [(UIButton *)v4 setBackgroundColor:v6];

    v7 = [(UIButton *)v4 layer];
    [v7 setCornerRadius:8.0];

    v8 = [(HUAccessoryDiagnosticsConsentViewController *)self manufacturer];
    v15 = HULocalizedStringWithFormat(@"HUAccessoryDiagnosticsConsentSubmitButton", @"%@", v9, v10, v11, v12, v13, v14, v8);
    [(UIButton *)v4 setTitle:v15 forState:0];

    v16 = self->_submitButton;
    self->_submitButton = v4;

    submitButton = self->_submitButton;
  }

  return submitButton;
}

@end