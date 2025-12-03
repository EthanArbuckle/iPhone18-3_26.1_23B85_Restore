@interface HUCameraRecordingPrivacyTextViewController
- (UILabel)headerLabel;
- (UITextView)consentTextView;
- (void)_addConstraints;
- (void)viewDidLoad;
@end

@implementation HUCameraRecordingPrivacyTextViewController

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = HUCameraRecordingPrivacyTextViewController;
  [(HUCameraRecordingPrivacyTextViewController *)&v7 viewDidLoad];
  view = [(HUCameraRecordingPrivacyTextViewController *)self view];
  headerLabel = [(HUCameraRecordingPrivacyTextViewController *)self headerLabel];
  [view addSubview:headerLabel];

  view2 = [(HUCameraRecordingPrivacyTextViewController *)self view];
  consentTextView = [(HUCameraRecordingPrivacyTextViewController *)self consentTextView];
  [view2 addSubview:consentTextView];

  [(HUCameraRecordingPrivacyTextViewController *)self _addConstraints];
}

- (void)_addConstraints
{
  v45[7] = *MEMORY[0x277D85DE8];
  headerLabel = [(HUCameraRecordingPrivacyTextViewController *)self headerLabel];
  topAnchor = [headerLabel topAnchor];
  view = [(HUCameraRecordingPrivacyTextViewController *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v39 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
  v45[0] = v39;
  headerLabel2 = [(HUCameraRecordingPrivacyTextViewController *)self headerLabel];
  leftAnchor = [headerLabel2 leftAnchor];
  view2 = [(HUCameraRecordingPrivacyTextViewController *)self view];
  safeAreaLayoutGuide2 = [view2 safeAreaLayoutGuide];
  leftAnchor2 = [safeAreaLayoutGuide2 leftAnchor];
  v33 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:20.0];
  v45[1] = v33;
  headerLabel3 = [(HUCameraRecordingPrivacyTextViewController *)self headerLabel];
  rightAnchor = [headerLabel3 rightAnchor];
  view3 = [(HUCameraRecordingPrivacyTextViewController *)self view];
  safeAreaLayoutGuide3 = [view3 safeAreaLayoutGuide];
  rightAnchor2 = [safeAreaLayoutGuide3 rightAnchor];
  v27 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-20.0];
  v45[2] = v27;
  consentTextView = [(HUCameraRecordingPrivacyTextViewController *)self consentTextView];
  topAnchor3 = [consentTextView topAnchor];
  headerLabel4 = [(HUCameraRecordingPrivacyTextViewController *)self headerLabel];
  bottomAnchor = [headerLabel4 bottomAnchor];
  v22 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:20.0];
  v45[3] = v22;
  consentTextView2 = [(HUCameraRecordingPrivacyTextViewController *)self consentTextView];
  leftAnchor3 = [consentTextView2 leftAnchor];
  view4 = [(HUCameraRecordingPrivacyTextViewController *)self view];
  safeAreaLayoutGuide4 = [view4 safeAreaLayoutGuide];
  leftAnchor4 = [safeAreaLayoutGuide4 leftAnchor];
  v15 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
  v45[4] = v15;
  consentTextView3 = [(HUCameraRecordingPrivacyTextViewController *)self consentTextView];
  rightAnchor3 = [consentTextView3 rightAnchor];
  view5 = [(HUCameraRecordingPrivacyTextViewController *)self view];
  safeAreaLayoutGuide5 = [view5 safeAreaLayoutGuide];
  rightAnchor4 = [safeAreaLayoutGuide5 rightAnchor];
  v6 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
  v45[5] = v6;
  consentTextView4 = [(HUCameraRecordingPrivacyTextViewController *)self consentTextView];
  bottomAnchor2 = [consentTextView4 bottomAnchor];
  view6 = [(HUCameraRecordingPrivacyTextViewController *)self view];
  safeAreaLayoutGuide6 = [view6 safeAreaLayoutGuide];
  bottomAnchor3 = [safeAreaLayoutGuide6 bottomAnchor];
  v12 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v45[6] = v12;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:7];

  [MEMORY[0x277CCAAD0] activateConstraints:v20];
}

- (UITextView)consentTextView
{
  consentTextView = self->_consentTextView;
  if (!consentTextView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75C40]);
    [(UITextView *)v4 setEditable:0];
    v5 = _HULocalizedStringWithDefaultValue(@"HUCameraExportFeedbackConsumerText", @"HUCameraExportFeedbackConsumerText", 1);
    [(UITextView *)v4 setText:v5];

    [(UITextView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = self->_consentTextView;
    self->_consentTextView = v4;

    consentTextView = self->_consentTextView;
  }

  return consentTextView;
}

- (UILabel)headerLabel
{
  headerLabel = self->_headerLabel;
  if (!headerLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    v5 = [MEMORY[0x277D74300] systemFontOfSize:30.0 weight:*MEMORY[0x277D743F8]];
    [(UILabel *)v4 setFont:v5];

    v6 = _HULocalizedStringWithDefaultValue(@"HUCameraExportPrivacyHeaderTitle", @"HUCameraExportPrivacyHeaderTitle", 1);
    [(UILabel *)v4 setText:v6];

    [(UILabel *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = self->_headerLabel;
    self->_headerLabel = v4;

    headerLabel = self->_headerLabel;
  }

  return headerLabel;
}

@end