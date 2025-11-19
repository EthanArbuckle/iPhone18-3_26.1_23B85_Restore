@interface CARSetupAssetPrompt
- (void)addPrimaryAction:(id)a3 secondaryAction:(id)a4;
- (void)addSubtitleLabelForText:(id)a3;
- (void)addTitleLabelForText:(id)a3;
- (void)viewDidLoad;
@end

@implementation CARSetupAssetPrompt

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CARSetupAssetPrompt;
  [(CARSetupAssetPrompt *)&v5 viewDidLoad];
  v3 = [(CARSetupAssetPrompt *)self view];
  [(CARSetupAssetPrompt *)self setOverrideUserInterfaceStyle:2];
  v4 = [MEMORY[0x277D75348] blackColor];
  [v3 setBackgroundColor:v4];
}

- (void)addTitleLabelForText:(id)a3
{
  v29[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24 = [(CARSetupAssetPrompt *)self view];
  v5 = [v24 safeAreaLayoutGuide];
  v6 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(UILabel *)v6 setText:v4];

  v7 = MEMORY[0x277D74310];
  v8 = *MEMORY[0x277D76A08];
  v9 = [(CARSetupAssetPrompt *)self traitCollection];
  v10 = [v7 preferredFontDescriptorWithTextStyle:v8 compatibleWithTraitCollection:v9];

  v28 = [v10 fontDescriptorWithSymbolicTraits:2];

  v27 = [MEMORY[0x277D74300] fontWithDescriptor:v28 size:0.0];
  [(UILabel *)v6 setFont:v27];
  [(UILabel *)v6 setTextAlignment:1];
  v11 = [MEMORY[0x277D75348] labelColor];
  [(UILabel *)v6 setTextColor:v11];

  [(UILabel *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v24 addSubview:v6];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v6;
  v13 = v6;

  v26 = [(UILabel *)v13 leadingAnchor];
  v14 = v5;
  v25 = [v5 leadingAnchor];
  v15 = [v26 constraintEqualToAnchor:v25 constant:30.0];
  v29[0] = v15;
  v16 = [(UILabel *)v13 trailingAnchor];
  v17 = [v5 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:-30.0];
  v29[1] = v18;
  v19 = [(UILabel *)v13 topAnchor];
  v20 = [v5 topAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:60.0];
  v29[2] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];

  [v24 addConstraints:v22];
  v23 = *MEMORY[0x277D85DE8];
}

- (void)addSubtitleLabelForText:(id)a3
{
  v34[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CARSetupAssetPrompt *)self view];
  v6 = [v5 safeAreaLayoutGuide];
  v7 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(UILabel *)v7 setText:v4];

  v8 = MEMORY[0x277D74310];
  v9 = *MEMORY[0x277D769D0];
  v10 = [(CARSetupAssetPrompt *)self traitCollection];
  v11 = [v8 preferredFontDescriptorWithTextStyle:v9 compatibleWithTraitCollection:v10];

  v32 = v11;
  v31 = [MEMORY[0x277D74300] fontWithDescriptor:v11 size:0.0];
  [(UILabel *)v7 setFont:?];
  [(UILabel *)v7 setTextAlignment:1];
  [(UILabel *)v7 setNumberOfLines:0];
  v12 = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)v7 setTextColor:v12];

  [(UILabel *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = v5;
  [v5 addSubview:v7];
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v7;
  v15 = v7;

  v16 = [(UILabel *)v15 leadingAnchor];
  v17 = [v6 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:30.0];
  v34[0] = v18;
  v19 = [(UILabel *)v15 trailingAnchor];
  v33 = v6;
  v20 = v6;
  v21 = v13;
  v22 = [v20 trailingAnchor];
  v23 = [v19 constraintEqualToAnchor:v22 constant:-30.0];
  v34[1] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  [v21 addConstraints:v24];

  v25 = [(CARSetupAssetPrompt *)self titleLabel];
  v26 = [(UILabel *)v15 topAnchor];

  if (v25)
  {
    v27 = [v25 bottomAnchor];
    v28 = [v26 constraintEqualToSystemSpacingBelowAnchor:v27 multiplier:1.0];
    v29 = v33;
  }

  else
  {
    v29 = v33;
    v27 = [v33 topAnchor];
    v28 = [v26 constraintEqualToAnchor:v27 constant:60.0];
  }

  [v21 addConstraint:v28];

  v30 = *MEMORY[0x277D85DE8];
}

- (void)addPrimaryAction:(id)a3 secondaryAction:(id)a4
{
  v52[3] = *MEMORY[0x277D85DE8];
  v44 = a3;
  v42 = a4;
  v46 = [(CARSetupAssetPrompt *)self view];
  v43 = [v46 safeAreaLayoutGuide];
  objc_initWeak(&location, self);
  if (v44)
  {
    v40 = [MEMORY[0x277D75230] grayButtonConfiguration];
    v6 = [MEMORY[0x277D75348] labelColor];
    [v40 setBaseForegroundColor:v6];

    obj = [MEMORY[0x277D75220] buttonWithConfiguration:v40 primaryAction:v44];
    [obj setTranslatesAutoresizingMaskIntoConstraints:0];
    [v46 addSubview:obj];
    objc_storeStrong(&self->_primaryButton, obj);
    v7 = [obj centerXAnchor];
    v8 = [v43 centerXAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    v52[0] = v9;
    v10 = [obj widthAnchor];
    v11 = [v43 widthAnchor];
    v12 = [v10 constraintEqualToAnchor:v11 multiplier:0.75];
    v52[1] = v12;
    v13 = [obj heightAnchor];
    v14 = [v13 constraintEqualToConstant:50.0];
    v52[2] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:3];
    [v46 addConstraints:v15];
  }

  else
  {
    obj = 0;
  }

  if (v42)
  {
    v16 = [MEMORY[0x277D75220] systemButtonWithPrimaryAction:?];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v46 addSubview:v16];
    objc_storeStrong(&self->_secondaryButton, v16);
    v17 = [v16 centerXAnchor];
    v18 = [v46 centerXAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    v51[0] = v19;
    v20 = [v16 widthAnchor];
    v21 = [v46 widthAnchor];
    v22 = [v20 constraintLessThanOrEqualToAnchor:v21];
    v51[1] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
    [v46 addConstraints:v23];
  }

  else
  {
    v16 = 0;
  }

  v24 = [(CARSetupAssetPrompt *)self subtitleLabel];
  v25 = v24 == 0;

  if (v25)
  {
    v27 = [(CARSetupAssetPrompt *)self titleLabel];
    v28 = v27 == 0;

    if (v28)
    {
      v41 = [v43 topAnchor];
      goto LABEL_12;
    }

    v26 = [(CARSetupAssetPrompt *)self titleLabel];
    v41 = [v26 bottomAnchor];
  }

  else
  {
    v26 = [(CARSetupAssetPrompt *)self subtitleLabel];
    v41 = [v26 bottomAnchor];
  }

LABEL_12:
  if (obj && v16)
  {
    v39 = [obj topAnchor];
    v29 = [v39 constraintGreaterThanOrEqualToAnchor:v41];
    v50[0] = v29;
    v30 = [v16 topAnchor];
    v31 = [obj bottomAnchor];
    v32 = [v30 constraintEqualToSystemSpacingBelowAnchor:v31 multiplier:1.0];
    v50[1] = v32;
    v33 = [v16 bottomAnchor];
    v34 = [v46 safeAreaLayoutGuide];
    v35 = [v34 bottomAnchor];
    v36 = [v33 constraintEqualToAnchor:v35 constant:-30.0];
    v50[2] = v36;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:3];
    [v46 addConstraints:v37];

LABEL_19:
    goto LABEL_20;
  }

  if (obj)
  {
    v39 = [obj topAnchor];
    v29 = [v39 constraintGreaterThanOrEqualToAnchor:v41];
    v49[0] = v29;
    v30 = [obj bottomAnchor];
    v31 = [v46 safeAreaLayoutGuide];
    v32 = [v31 bottomAnchor];
    v33 = [v30 constraintEqualToAnchor:v32 constant:-30.0];
    v49[1] = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];
    [v46 addConstraints:v34];
    goto LABEL_19;
  }

  if (v16)
  {
    v39 = [v16 topAnchor];
    v29 = [v39 constraintGreaterThanOrEqualToAnchor:v41];
    v48[0] = v29;
    v30 = [v16 bottomAnchor];
    v31 = [v46 safeAreaLayoutGuide];
    v32 = [v31 bottomAnchor];
    v33 = [v30 constraintEqualToAnchor:v32 constant:-30.0];
    v48[1] = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
    [v46 addConstraints:v34];
    goto LABEL_19;
  }

LABEL_20:

  objc_destroyWeak(&location);
  v38 = *MEMORY[0x277D85DE8];
}

@end