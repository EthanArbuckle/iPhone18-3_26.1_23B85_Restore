@interface CARSetupAssetPrompt
- (void)addPrimaryAction:(id)action secondaryAction:(id)secondaryAction;
- (void)addSubtitleLabelForText:(id)text;
- (void)addTitleLabelForText:(id)text;
- (void)viewDidLoad;
@end

@implementation CARSetupAssetPrompt

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CARSetupAssetPrompt;
  [(CARSetupAssetPrompt *)&v5 viewDidLoad];
  view = [(CARSetupAssetPrompt *)self view];
  [(CARSetupAssetPrompt *)self setOverrideUserInterfaceStyle:2];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [view setBackgroundColor:blackColor];
}

- (void)addTitleLabelForText:(id)text
{
  v29[3] = *MEMORY[0x277D85DE8];
  textCopy = text;
  view = [(CARSetupAssetPrompt *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  v6 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(UILabel *)v6 setText:textCopy];

  v7 = MEMORY[0x277D74310];
  v8 = *MEMORY[0x277D76A08];
  traitCollection = [(CARSetupAssetPrompt *)self traitCollection];
  v10 = [v7 preferredFontDescriptorWithTextStyle:v8 compatibleWithTraitCollection:traitCollection];

  v28 = [v10 fontDescriptorWithSymbolicTraits:2];

  v27 = [MEMORY[0x277D74300] fontWithDescriptor:v28 size:0.0];
  [(UILabel *)v6 setFont:v27];
  [(UILabel *)v6 setTextAlignment:1];
  labelColor = [MEMORY[0x277D75348] labelColor];
  [(UILabel *)v6 setTextColor:labelColor];

  [(UILabel *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:v6];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v6;
  v13 = v6;

  leadingAnchor = [(UILabel *)v13 leadingAnchor];
  v14 = safeAreaLayoutGuide;
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:30.0];
  v29[0] = v15;
  trailingAnchor = [(UILabel *)v13 trailingAnchor];
  trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
  v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-30.0];
  v29[1] = v18;
  topAnchor = [(UILabel *)v13 topAnchor];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v21 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:60.0];
  v29[2] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];

  [view addConstraints:v22];
  v23 = *MEMORY[0x277D85DE8];
}

- (void)addSubtitleLabelForText:(id)text
{
  v34[2] = *MEMORY[0x277D85DE8];
  textCopy = text;
  view = [(CARSetupAssetPrompt *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  v7 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(UILabel *)v7 setText:textCopy];

  v8 = MEMORY[0x277D74310];
  v9 = *MEMORY[0x277D769D0];
  traitCollection = [(CARSetupAssetPrompt *)self traitCollection];
  v11 = [v8 preferredFontDescriptorWithTextStyle:v9 compatibleWithTraitCollection:traitCollection];

  v32 = v11;
  v31 = [MEMORY[0x277D74300] fontWithDescriptor:v11 size:0.0];
  [(UILabel *)v7 setFont:?];
  [(UILabel *)v7 setTextAlignment:1];
  [(UILabel *)v7 setNumberOfLines:0];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)v7 setTextColor:secondaryLabelColor];

  [(UILabel *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = view;
  [view addSubview:v7];
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v7;
  v15 = v7;

  leadingAnchor = [(UILabel *)v15 leadingAnchor];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:30.0];
  v34[0] = v18;
  trailingAnchor = [(UILabel *)v15 trailingAnchor];
  v33 = safeAreaLayoutGuide;
  v20 = safeAreaLayoutGuide;
  v21 = v13;
  trailingAnchor2 = [v20 trailingAnchor];
  v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-30.0];
  v34[1] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  [v21 addConstraints:v24];

  titleLabel = [(CARSetupAssetPrompt *)self titleLabel];
  topAnchor = [(UILabel *)v15 topAnchor];

  if (titleLabel)
  {
    bottomAnchor = [titleLabel bottomAnchor];
    v28 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:bottomAnchor multiplier:1.0];
    v29 = v33;
  }

  else
  {
    v29 = v33;
    bottomAnchor = [v33 topAnchor];
    v28 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:60.0];
  }

  [v21 addConstraint:v28];

  v30 = *MEMORY[0x277D85DE8];
}

- (void)addPrimaryAction:(id)action secondaryAction:(id)secondaryAction
{
  v52[3] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  secondaryActionCopy = secondaryAction;
  view = [(CARSetupAssetPrompt *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  objc_initWeak(&location, self);
  if (actionCopy)
  {
    grayButtonConfiguration = [MEMORY[0x277D75230] grayButtonConfiguration];
    labelColor = [MEMORY[0x277D75348] labelColor];
    [grayButtonConfiguration setBaseForegroundColor:labelColor];

    obj = [MEMORY[0x277D75220] buttonWithConfiguration:grayButtonConfiguration primaryAction:actionCopy];
    [obj setTranslatesAutoresizingMaskIntoConstraints:0];
    [view addSubview:obj];
    objc_storeStrong(&self->_primaryButton, obj);
    centerXAnchor = [obj centerXAnchor];
    centerXAnchor2 = [safeAreaLayoutGuide centerXAnchor];
    v9 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v52[0] = v9;
    widthAnchor = [obj widthAnchor];
    widthAnchor2 = [safeAreaLayoutGuide widthAnchor];
    v12 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.75];
    v52[1] = v12;
    heightAnchor = [obj heightAnchor];
    v14 = [heightAnchor constraintEqualToConstant:50.0];
    v52[2] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:3];
    [view addConstraints:v15];
  }

  else
  {
    obj = 0;
  }

  if (secondaryActionCopy)
  {
    v16 = [MEMORY[0x277D75220] systemButtonWithPrimaryAction:?];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    [view addSubview:v16];
    objc_storeStrong(&self->_secondaryButton, v16);
    centerXAnchor3 = [v16 centerXAnchor];
    centerXAnchor4 = [view centerXAnchor];
    v19 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v51[0] = v19;
    widthAnchor3 = [v16 widthAnchor];
    widthAnchor4 = [view widthAnchor];
    v22 = [widthAnchor3 constraintLessThanOrEqualToAnchor:widthAnchor4];
    v51[1] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
    [view addConstraints:v23];
  }

  else
  {
    v16 = 0;
  }

  subtitleLabel = [(CARSetupAssetPrompt *)self subtitleLabel];
  v25 = subtitleLabel == 0;

  if (v25)
  {
    titleLabel = [(CARSetupAssetPrompt *)self titleLabel];
    v28 = titleLabel == 0;

    if (v28)
    {
      topAnchor = [safeAreaLayoutGuide topAnchor];
      goto LABEL_12;
    }

    titleLabel2 = [(CARSetupAssetPrompt *)self titleLabel];
    topAnchor = [titleLabel2 bottomAnchor];
  }

  else
  {
    titleLabel2 = [(CARSetupAssetPrompt *)self subtitleLabel];
    topAnchor = [titleLabel2 bottomAnchor];
  }

LABEL_12:
  if (obj && v16)
  {
    topAnchor2 = [obj topAnchor];
    v29 = [topAnchor2 constraintGreaterThanOrEqualToAnchor:topAnchor];
    v50[0] = v29;
    topAnchor3 = [v16 topAnchor];
    bottomAnchor = [obj bottomAnchor];
    v31BottomAnchor = [topAnchor3 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor multiplier:1.0];
    v50[1] = v31BottomAnchor;
    bottomAnchor2 = [v16 bottomAnchor];
    safeAreaLayoutGuide2 = [view safeAreaLayoutGuide];
    bottomAnchor3 = [safeAreaLayoutGuide2 bottomAnchor];
    v36 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-30.0];
    v50[2] = v36;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:3];
    [view addConstraints:v37];

LABEL_19:
    goto LABEL_20;
  }

  if (obj)
  {
    topAnchor2 = [obj topAnchor];
    v29 = [topAnchor2 constraintGreaterThanOrEqualToAnchor:topAnchor];
    v49[0] = v29;
    topAnchor3 = [obj bottomAnchor];
    bottomAnchor = [view safeAreaLayoutGuide];
    v31BottomAnchor = [bottomAnchor bottomAnchor];
    bottomAnchor2 = [topAnchor3 constraintEqualToAnchor:v31BottomAnchor constant:-30.0];
    v49[1] = bottomAnchor2;
    safeAreaLayoutGuide2 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];
    [view addConstraints:safeAreaLayoutGuide2];
    goto LABEL_19;
  }

  if (v16)
  {
    topAnchor2 = [v16 topAnchor];
    v29 = [topAnchor2 constraintGreaterThanOrEqualToAnchor:topAnchor];
    v48[0] = v29;
    topAnchor3 = [v16 bottomAnchor];
    bottomAnchor = [view safeAreaLayoutGuide];
    v31BottomAnchor = [bottomAnchor bottomAnchor];
    bottomAnchor2 = [topAnchor3 constraintEqualToAnchor:v31BottomAnchor constant:-30.0];
    v48[1] = bottomAnchor2;
    safeAreaLayoutGuide2 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
    [view addConstraints:safeAreaLayoutGuide2];
    goto LABEL_19;
  }

LABEL_20:

  objc_destroyWeak(&location);
  v38 = *MEMORY[0x277D85DE8];
}

@end