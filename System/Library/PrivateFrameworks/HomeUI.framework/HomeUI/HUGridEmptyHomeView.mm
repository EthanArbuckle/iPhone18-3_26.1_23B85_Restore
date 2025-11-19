@interface HUGridEmptyHomeView
- (HUGridEmptyHomeView)initWithCoder:(id)a3;
- (HUGridEmptyHomeView)initWithFrame:(CGRect)a3;
- (HUGridEmptyHomeViewDelegate)delegate;
- (void)_addNewAccessory:(id)a3;
- (void)_openLearnToAddAccessories:(id)a3;
- (void)_openStore:(id)a3;
- (void)_setupCommonAppearance;
- (void)didMoveToSuperview;
- (void)tintColorDidChange;
- (void)updateConstraints;
@end

@implementation HUGridEmptyHomeView

- (HUGridEmptyHomeView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HUGridEmptyHomeView;
  v3 = [(HUGridEmptyHomeView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(HUGridEmptyHomeView *)v3 _setupCommonAppearance];
  }

  return v4;
}

- (HUGridEmptyHomeView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = HUGridEmptyHomeView;
  v3 = [(HUGridEmptyHomeView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUGridEmptyHomeView *)v3 _setupCommonAppearance];
  }

  return v4;
}

- (void)_setupCommonAppearance
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HUGridEmptyHomeView *)self setInstructionsLabel:v3];

  v4 = [(HUGridEmptyHomeView *)self instructionsLabel];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(HUGridEmptyHomeView *)self instructionsLabel];
  [v5 setAdjustsFontSizeToFitWidth:1];

  v6 = [MEMORY[0x277D75348] systemWhiteColor];
  v7 = [(HUGridEmptyHomeView *)self instructionsLabel];
  [v7 setTextColor:v6];

  v8 = _HULocalizedStringWithDefaultValue(@"HUGridEmptyHomeViewInstructionsLabelText", @"HUGridEmptyHomeViewInstructionsLabelText", 1);
  v9 = [(HUGridEmptyHomeView *)self instructionsLabel];
  [v9 setText:v8];

  v10 = [(HUGridEmptyHomeView *)self instructionsLabel];
  [v10 setNumberOfLines:0];

  v11 = [MEMORY[0x277D74300] systemFontOfSize:18.0 weight:*MEMORY[0x277D74420]];
  v12 = [(HUGridEmptyHomeView *)self instructionsLabel];
  [v12 setFont:v11];

  v13 = [(HUGridEmptyHomeView *)self instructionsLabel];
  [(HUGridEmptyHomeView *)self addSubview:v13];

  v49 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769C0]];
  if ([MEMORY[0x277D14CE8] supportsAccessorySetup])
  {
    v14 = [HUColoredButton alloc];
    v15 = *MEMORY[0x277CBF3A0];
    v16 = *(MEMORY[0x277CBF3A0] + 8);
    v17 = *(MEMORY[0x277CBF3A0] + 16);
    v18 = *(MEMORY[0x277CBF3A0] + 24);
    v19 = [(HUColoredButton *)v14 initWithFrame:*MEMORY[0x277CBF3A0] highlightedAlpha:v16 highlightedTextAlpha:v17, v18, 0.75, 0.5];
    [(HUGridEmptyHomeView *)self setAddAccessoryButton:v19];

    v20 = [(HUGridEmptyHomeView *)self addAccessoryButton];
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

    v21 = [(HUGridEmptyHomeView *)self addAccessoryButton];
    v22 = +[HUAddAccessoryUtilities addAccessoryString];
    [v21 setTitle:v22 forState:0];

    v23 = [(HUGridEmptyHomeView *)self addAccessoryButton];
    v24 = [MEMORY[0x277D75348] systemWhiteColor];
    [v23 setBackgroundColor:v24];

    v25 = [(HUGridEmptyHomeView *)self addAccessoryButton];
    [v25 addTarget:self action:sel__addNewAccessory_ forControlEvents:64];

    [(HUGridEmptyHomeView *)self addAccessoryButton];
  }

  else
  {
    v26 = [HUChevronButton alloc];
    v15 = *MEMORY[0x277CBF3A0];
    v16 = *(MEMORY[0x277CBF3A0] + 8);
    v17 = *(MEMORY[0x277CBF3A0] + 16);
    v18 = *(MEMORY[0x277CBF3A0] + 24);
    v27 = [(HUChevronButton *)v26 initWithFrame:*MEMORY[0x277CBF3A0], v16, v17, v18];
    [(HUGridEmptyHomeView *)self setLearnToAddAccessoryButton:v27];

    v28 = [(HUGridEmptyHomeView *)self learnToAddAccessoryButton];
    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];

    v29 = _HULocalizedStringWithDefaultValue(@"HUGridEmptyHomeViewLearnToAddAccessoriesButtonTitle", @"HUGridEmptyHomeViewLearnToAddAccessoriesButtonTitle", 1);
    v30 = [(HUGridEmptyHomeView *)self learnToAddAccessoryButton];
    v31 = [v30 titleLabel];
    [v31 setText:v29];

    v32 = MEMORY[0x277D74300];
    [v49 pointSize];
    v33 = [v32 systemFontOfSize:? weight:?];
    v34 = [(HUGridEmptyHomeView *)self learnToAddAccessoryButton];
    v35 = [v34 titleLabel];
    [v35 setFont:v33];

    v36 = [(HUGridEmptyHomeView *)self learnToAddAccessoryButton];
    [v36 addTarget:self action:sel__openLearnToAddAccessories_ forControlEvents:64];

    [(HUGridEmptyHomeView *)self learnToAddAccessoryButton];
  }
  v37 = ;
  [(HUGridEmptyHomeView *)self addSubview:v37];

  v38 = [[HUChevronButton alloc] initWithFrame:v15, v16, v17, v18];
  [(HUGridEmptyHomeView *)self setStoreButton:v38];

  v39 = [(HUGridEmptyHomeView *)self storeButton];
  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];

  v40 = +[HUStoreUtilities accessoryStoreButtonTitle];
  v41 = [(HUGridEmptyHomeView *)self storeButton];
  v42 = [v41 titleLabel];
  [v42 setText:v40];

  v43 = MEMORY[0x277D74300];
  [v49 pointSize];
  v44 = [v43 systemFontOfSize:? weight:?];
  v45 = [(HUGridEmptyHomeView *)self storeButton];
  v46 = [v45 titleLabel];
  [v46 setFont:v44];

  v47 = [(HUGridEmptyHomeView *)self storeButton];
  [v47 addTarget:self action:sel__openStore_ forControlEvents:64];

  v48 = [(HUGridEmptyHomeView *)self storeButton];
  [(HUGridEmptyHomeView *)self addSubview:v48];
}

- (void)tintColorDidChange
{
  v8.receiver = self;
  v8.super_class = HUGridEmptyHomeView;
  [(HUGridEmptyHomeView *)&v8 tintColorDidChange];
  v3 = [(HUGridEmptyHomeView *)self addAccessoryButton];
  v4 = [(HUGridEmptyHomeView *)self tintColor];
  [v3 setTitleColor:v4 forState:0];

  v5 = [(HUGridEmptyHomeView *)self addAccessoryButton];
  v6 = [(HUGridEmptyHomeView *)self tintColor];
  v7 = [v6 colorWithAlphaComponent:0.5];
  [v5 setTitleColor:v7 forState:1];
}

- (void)didMoveToSuperview
{
  v8.receiver = self;
  v8.super_class = HUGridEmptyHomeView;
  [(HUGridEmptyHomeView *)&v8 didMoveToSuperview];
  v3 = [(HUGridEmptyHomeView *)self addAccessoryButton];
  v4 = [(HUGridEmptyHomeView *)self tintColor];
  [v3 setTitleColor:v4 forState:0];

  v5 = [(HUGridEmptyHomeView *)self addAccessoryButton];
  v6 = [(HUGridEmptyHomeView *)self tintColor];
  v7 = [v6 colorWithAlphaComponent:0.5];
  [v5 setTitleColor:v7 forState:1];
}

- (void)_addNewAccessory:(id)a3
{
  v4 = [(HUGridEmptyHomeView *)self delegate];
  [v4 emptyHomeCellAddAccessoryButtonPressed:self];
}

- (void)_openStore:(id)a3
{
  v5 = [MEMORY[0x277D148E8] sharedInstance];
  v3 = +[HUStoreUtilities accessoryStoreURL];
  v4 = [v5 openURL:v3];
}

- (void)_openLearnToAddAccessories:(id)a3
{
  v5 = [MEMORY[0x277D148E8] sharedInstance];
  v3 = [MEMORY[0x277CBEBC0] hf_learnToAddAccessoriesURL];
  v4 = [v5 openURL:v3];
}

- (void)updateConstraints
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(HUGridEmptyHomeView *)self instructionsLabel];
  v5 = [v4 leadingAnchor];
  v6 = [(HUGridEmptyHomeView *)self leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  [v3 addObject:v7];

  v8 = [(HUGridEmptyHomeView *)self instructionsLabel];
  v9 = [v8 trailingAnchor];
  v10 = [(HUGridEmptyHomeView *)self trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  [v3 addObject:v11];

  v12 = [(HUGridEmptyHomeView *)self instructionsLabel];
  v13 = [v12 topAnchor];
  v14 = [(HUGridEmptyHomeView *)self topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [v3 addObject:v15];

  v16 = [(HUGridEmptyHomeView *)self storeButton];
  v17 = [v16 leadingAnchor];
  v18 = [(HUGridEmptyHomeView *)self leadingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  [v3 addObject:v19];

  if ([MEMORY[0x277D14CE8] supportsAccessorySetup])
  {
    v20 = [(HUGridEmptyHomeView *)self addAccessoryButton];
    v21 = [v20 leadingAnchor];
    v22 = [(HUGridEmptyHomeView *)self leadingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    [v3 addObject:v23];

    v24 = [(HUGridEmptyHomeView *)self addAccessoryButton];
    v25 = [v24 trailingAnchor];
    v26 = [(HUGridEmptyHomeView *)self trailingAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    [v3 addObject:v27];

    v28 = [(HUGridEmptyHomeView *)self addAccessoryButton];
    v29 = [v28 heightAnchor];
    v30 = [v29 constraintEqualToConstant:50.0];
    [v3 addObject:v30];

    v31 = [(HUGridEmptyHomeView *)self storeButton];
    v32 = [v31 trailingAnchor];
    [(HUGridEmptyHomeView *)self trailingAnchor];
  }

  else
  {
    v31 = [(HUGridEmptyHomeView *)self learnToAddAccessoryButton];
    v32 = [v31 leadingAnchor];
    [(HUGridEmptyHomeView *)self leadingAnchor];
  }
  v33 = ;
  v34 = [v32 constraintEqualToAnchor:v33];
  [v3 addObject:v34];

  v35 = [MEMORY[0x277D75418] currentDevice];
  v36 = [v35 userInterfaceIdiom];

  v37 = [MEMORY[0x277D14CE8] supportsAccessorySetup];
  if (v36 == 1)
  {
    if (v37)
    {
      v38 = [(HUGridEmptyHomeView *)self addAccessoryButton];
      v39 = [v38 topAnchor];
      v40 = [(HUGridEmptyHomeView *)self instructionsLabel];
      v41 = [v40 lastBaselineAnchor];
      v42 = [(HUGridEmptyHomeView *)self instructionsLabel];
      v43 = [v42 font];
      [v43 _scaledValueForValue:34.0];
      v44 = [v39 constraintEqualToAnchor:v41 constant:?];
      [v3 addObject:v44];

      v45 = [(HUGridEmptyHomeView *)self storeButton];
      v46 = [v45 firstBaselineAnchor];
      v47 = [(HUGridEmptyHomeView *)self addAccessoryButton];
      v48 = [v47 bottomAnchor];
      v49 = 32.0;
    }

    else
    {
      v55 = [(HUGridEmptyHomeView *)self learnToAddAccessoryButton];
      v56 = [v55 firstBaselineAnchor];
      v57 = [(HUGridEmptyHomeView *)self instructionsLabel];
      v58 = [v57 bottomAnchor];
      v59 = [v56 constraintEqualToAnchor:v58 constant:26.0];
      [v3 addObject:v59];

      v45 = [(HUGridEmptyHomeView *)self storeButton];
      v46 = [v45 firstBaselineAnchor];
      v47 = [(HUGridEmptyHomeView *)self learnToAddAccessoryButton];
      v48 = [v47 bottomAnchor];
      v49 = 18.0;
    }

    v60 = [v46 constraintEqualToAnchor:v48 constant:v49];
    [v3 addObject:v60];
  }

  else
  {
    if (v37)
    {
      v50 = [(HUGridEmptyHomeView *)self addAccessoryButton];
      v51 = [v50 bottomAnchor];
      v52 = [(HUGridEmptyHomeView *)self storeButton];
      v53 = [v52 topAnchor];
      v54 = [v51 constraintEqualToAnchor:v53 constant:-18.0];
      [v3 addObject:v54];
    }

    v45 = [(HUGridEmptyHomeView *)self storeButton];
    v46 = [v45 lastBaselineAnchor];
    v47 = [(HUGridEmptyHomeView *)self bottomAnchor];
    v48 = [v46 constraintEqualToAnchor:v47 constant:-32.0];
    [v3 addObject:v48];
  }

  v61 = [(HUGridEmptyHomeView *)self constraints];
  v62 = [v3 isEqualToArray:v61];

  if ((v62 & 1) == 0)
  {
    v63 = MEMORY[0x277CCAAD0];
    v64 = [(HUGridEmptyHomeView *)self constraints];
    [v63 deactivateConstraints:v64];

    [(HUGridEmptyHomeView *)self setConstraints:v3];
    v65 = MEMORY[0x277CCAAD0];
    v66 = [(HUGridEmptyHomeView *)self constraints];
    [v65 activateConstraints:v66];
  }

  v67.receiver = self;
  v67.super_class = HUGridEmptyHomeView;
  [(HUGridEmptyHomeView *)&v67 updateConstraints];
}

- (HUGridEmptyHomeViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end