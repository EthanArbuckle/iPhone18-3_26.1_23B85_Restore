@interface HUAccessoryDiagnosticsConsentViewController
- (HUAccessoryDiagnosticsConsentViewController)initWithItem:(id)item completionHandler:(id)handler;
- (UIButton)submitButton;
- (UITextView)descriptionTextView;
- (void)_addConstraints;
- (void)cancelSubmission;
- (void)submitLog;
- (void)viewDidLoad;
@end

@implementation HUAccessoryDiagnosticsConsentViewController

- (HUAccessoryDiagnosticsConsentViewController)initWithItem:(id)item completionHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = HUAccessoryDiagnosticsConsentViewController;
  v8 = [(HUAccessoryDiagnosticsConsentViewController *)&v16 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = _Block_copy(handlerCopy);
    completionHandler = v8->_completionHandler;
    v8->_completionHandler = v9;

    privacyPolicyURL = [itemCopy privacyPolicyURL];
    privacyPolicyURL = v8->_privacyPolicyURL;
    v8->_privacyPolicyURL = privacyPolicyURL;

    v8->_consentTextVersion = [itemCopy consentVersion];
    manufacturer = [itemCopy manufacturer];
    manufacturer = v8->_manufacturer;
    v8->_manufacturer = manufacturer;
  }

  return v8;
}

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = HUAccessoryDiagnosticsConsentViewController;
  [(HUAccessoryDiagnosticsConsentViewController *)&v21 viewDidLoad];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(HUAccessoryDiagnosticsConsentViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  manufacturer = [(HUAccessoryDiagnosticsConsentViewController *)self manufacturer];
  v12 = HULocalizedStringWithFormat(@"HUAccessoryDiagnosticsConsentNavigationTitle", @"%@", v6, v7, v8, v9, v10, v11, manufacturer);
  [(HUAccessoryDiagnosticsConsentViewController *)self setTitle:v12];

  v13 = objc_alloc(MEMORY[0x277D751E0]);
  v14 = _HULocalizedStringWithDefaultValue(@"HUAccessoryDiagnosticsConsentCancelButton", @"HUAccessoryDiagnosticsConsentCancelButton", 1);
  v15 = [v13 initWithTitle:v14 style:0 target:self action:sel_cancelSubmission];
  navigationItem = [(HUAccessoryDiagnosticsConsentViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v15];

  view2 = [(HUAccessoryDiagnosticsConsentViewController *)self view];
  descriptionTextView = [(HUAccessoryDiagnosticsConsentViewController *)self descriptionTextView];
  [view2 addSubview:descriptionTextView];

  view3 = [(HUAccessoryDiagnosticsConsentViewController *)self view];
  submitButton = [(HUAccessoryDiagnosticsConsentViewController *)self submitButton];
  [view3 addSubview:submitButton];

  [(HUAccessoryDiagnosticsConsentViewController *)self _addConstraints];
}

- (void)_addConstraints
{
  v53[9] = *MEMORY[0x277D85DE8];
  descriptionTextView = [(HUAccessoryDiagnosticsConsentViewController *)self descriptionTextView];
  topAnchor = [descriptionTextView topAnchor];
  view = [(HUAccessoryDiagnosticsConsentViewController *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v47 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
  v53[0] = v47;
  descriptionTextView2 = [(HUAccessoryDiagnosticsConsentViewController *)self descriptionTextView];
  leftAnchor = [descriptionTextView2 leftAnchor];
  view2 = [(HUAccessoryDiagnosticsConsentViewController *)self view];
  safeAreaLayoutGuide2 = [view2 safeAreaLayoutGuide];
  leftAnchor2 = [safeAreaLayoutGuide2 leftAnchor];
  v41 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:10.0];
  v53[1] = v41;
  descriptionTextView3 = [(HUAccessoryDiagnosticsConsentViewController *)self descriptionTextView];
  rightAnchor = [descriptionTextView3 rightAnchor];
  view3 = [(HUAccessoryDiagnosticsConsentViewController *)self view];
  safeAreaLayoutGuide3 = [view3 safeAreaLayoutGuide];
  rightAnchor2 = [safeAreaLayoutGuide3 rightAnchor];
  v35 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-10.0];
  v53[2] = v35;
  descriptionTextView4 = [(HUAccessoryDiagnosticsConsentViewController *)self descriptionTextView];
  bottomAnchor = [descriptionTextView4 bottomAnchor];
  submitButton = [(HUAccessoryDiagnosticsConsentViewController *)self submitButton];
  topAnchor3 = [submitButton topAnchor];
  v30 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:-10.0];
  v53[3] = v30;
  submitButton2 = [(HUAccessoryDiagnosticsConsentViewController *)self submitButton];
  bottomAnchor2 = [submitButton2 bottomAnchor];
  view4 = [(HUAccessoryDiagnosticsConsentViewController *)self view];
  safeAreaLayoutGuide4 = [view4 safeAreaLayoutGuide];
  bottomAnchor3 = [safeAreaLayoutGuide4 bottomAnchor];
  v24 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-20.0];
  v53[4] = v24;
  submitButton3 = [(HUAccessoryDiagnosticsConsentViewController *)self submitButton];
  heightAnchor = [submitButton3 heightAnchor];
  v20 = [heightAnchor constraintEqualToConstant:47.0];
  v53[5] = v20;
  submitButton4 = [(HUAccessoryDiagnosticsConsentViewController *)self submitButton];
  centerXAnchor = [submitButton4 centerXAnchor];
  view5 = [(HUAccessoryDiagnosticsConsentViewController *)self view];
  centerXAnchor2 = [view5 centerXAnchor];
  v15 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v53[6] = v15;
  submitButton5 = [(HUAccessoryDiagnosticsConsentViewController *)self submitButton];
  leftAnchor3 = [submitButton5 leftAnchor];
  view6 = [(HUAccessoryDiagnosticsConsentViewController *)self view];
  safeAreaLayoutGuide5 = [view6 safeAreaLayoutGuide];
  leftAnchor4 = [safeAreaLayoutGuide5 leftAnchor];
  v6 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4 constant:20.0];
  v53[7] = v6;
  submitButton6 = [(HUAccessoryDiagnosticsConsentViewController *)self submitButton];
  rightAnchor3 = [submitButton6 rightAnchor];
  view7 = [(HUAccessoryDiagnosticsConsentViewController *)self view];
  safeAreaLayoutGuide6 = [view7 safeAreaLayoutGuide];
  rightAnchor4 = [safeAreaLayoutGuide6 rightAnchor];
  v12 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4 constant:-20.0];
  v53[8] = v12;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:9];

  [MEMORY[0x277CCAAD0] activateConstraints:v23];
}

- (void)submitLog
{
  completionHandler = [(HUAccessoryDiagnosticsConsentViewController *)self completionHandler];
  completionHandler[2](completionHandler, 1);

  [(HUAccessoryDiagnosticsConsentViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)cancelSubmission
{
  completionHandler = [(HUAccessoryDiagnosticsConsentViewController *)self completionHandler];
  completionHandler[2](completionHandler, 0);

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
    defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
    v8 = [defaultParagraphStyle mutableCopy];

    [v8 setAlignment:1];
    v19[0] = *MEMORY[0x277D740A8];
    v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v10 = *MEMORY[0x277D74118];
    v20[0] = v9;
    v20[1] = v8;
    v11 = *MEMORY[0x277D740C0];
    v19[1] = v10;
    v19[2] = v11;
    labelColor = [MEMORY[0x277D75348] labelColor];
    v20[2] = labelColor;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];

    v14 = MEMORY[0x277CCA898];
    privacyPolicyURL = [(HUAccessoryDiagnosticsConsentViewController *)self privacyPolicyURL];
    v16 = [v14 hf_attributedLinkStringForString:v5 linkString:v6 linkURL:privacyPolicyURL attributes:v13 additionalLinkAttributes:0];
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
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [(UIButton *)v4 setTintColor:systemWhiteColor];

    systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
    [(UIButton *)v4 setBackgroundColor:systemOrangeColor];

    layer = [(UIButton *)v4 layer];
    [layer setCornerRadius:8.0];

    manufacturer = [(HUAccessoryDiagnosticsConsentViewController *)self manufacturer];
    v15 = HULocalizedStringWithFormat(@"HUAccessoryDiagnosticsConsentSubmitButton", @"%@", v9, v10, v11, v12, v13, v14, manufacturer);
    [(UIButton *)v4 setTitle:v15 forState:0];

    v16 = self->_submitButton;
    self->_submitButton = v4;

    submitButton = self->_submitButton;
  }

  return submitButton;
}

@end