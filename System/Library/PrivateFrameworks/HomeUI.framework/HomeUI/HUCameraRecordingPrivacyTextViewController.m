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
  v3 = [(HUCameraRecordingPrivacyTextViewController *)self view];
  v4 = [(HUCameraRecordingPrivacyTextViewController *)self headerLabel];
  [v3 addSubview:v4];

  v5 = [(HUCameraRecordingPrivacyTextViewController *)self view];
  v6 = [(HUCameraRecordingPrivacyTextViewController *)self consentTextView];
  [v5 addSubview:v6];

  [(HUCameraRecordingPrivacyTextViewController *)self _addConstraints];
}

- (void)_addConstraints
{
  v45[7] = *MEMORY[0x277D85DE8];
  v44 = [(HUCameraRecordingPrivacyTextViewController *)self headerLabel];
  v42 = [v44 topAnchor];
  v43 = [(HUCameraRecordingPrivacyTextViewController *)self view];
  v41 = [v43 safeAreaLayoutGuide];
  v40 = [v41 topAnchor];
  v39 = [v42 constraintEqualToAnchor:v40 constant:20.0];
  v45[0] = v39;
  v38 = [(HUCameraRecordingPrivacyTextViewController *)self headerLabel];
  v36 = [v38 leftAnchor];
  v37 = [(HUCameraRecordingPrivacyTextViewController *)self view];
  v35 = [v37 safeAreaLayoutGuide];
  v34 = [v35 leftAnchor];
  v33 = [v36 constraintEqualToAnchor:v34 constant:20.0];
  v45[1] = v33;
  v32 = [(HUCameraRecordingPrivacyTextViewController *)self headerLabel];
  v30 = [v32 rightAnchor];
  v31 = [(HUCameraRecordingPrivacyTextViewController *)self view];
  v29 = [v31 safeAreaLayoutGuide];
  v28 = [v29 rightAnchor];
  v27 = [v30 constraintEqualToAnchor:v28 constant:-20.0];
  v45[2] = v27;
  v26 = [(HUCameraRecordingPrivacyTextViewController *)self consentTextView];
  v24 = [v26 topAnchor];
  v25 = [(HUCameraRecordingPrivacyTextViewController *)self headerLabel];
  v23 = [v25 bottomAnchor];
  v22 = [v24 constraintEqualToAnchor:v23 constant:20.0];
  v45[3] = v22;
  v21 = [(HUCameraRecordingPrivacyTextViewController *)self consentTextView];
  v18 = [v21 leftAnchor];
  v19 = [(HUCameraRecordingPrivacyTextViewController *)self view];
  v17 = [v19 safeAreaLayoutGuide];
  v16 = [v17 leftAnchor];
  v15 = [v18 constraintEqualToAnchor:v16];
  v45[4] = v15;
  v14 = [(HUCameraRecordingPrivacyTextViewController *)self consentTextView];
  v13 = [v14 rightAnchor];
  v3 = [(HUCameraRecordingPrivacyTextViewController *)self view];
  v4 = [v3 safeAreaLayoutGuide];
  v5 = [v4 rightAnchor];
  v6 = [v13 constraintEqualToAnchor:v5];
  v45[5] = v6;
  v7 = [(HUCameraRecordingPrivacyTextViewController *)self consentTextView];
  v8 = [v7 bottomAnchor];
  v9 = [(HUCameraRecordingPrivacyTextViewController *)self view];
  v10 = [v9 safeAreaLayoutGuide];
  v11 = [v10 bottomAnchor];
  v12 = [v8 constraintEqualToAnchor:v11];
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