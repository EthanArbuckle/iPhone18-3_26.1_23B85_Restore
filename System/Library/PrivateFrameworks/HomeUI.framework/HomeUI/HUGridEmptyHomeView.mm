@interface HUGridEmptyHomeView
- (HUGridEmptyHomeView)initWithCoder:(id)coder;
- (HUGridEmptyHomeView)initWithFrame:(CGRect)frame;
- (HUGridEmptyHomeViewDelegate)delegate;
- (void)_addNewAccessory:(id)accessory;
- (void)_openLearnToAddAccessories:(id)accessories;
- (void)_openStore:(id)store;
- (void)_setupCommonAppearance;
- (void)didMoveToSuperview;
- (void)tintColorDidChange;
- (void)updateConstraints;
@end

@implementation HUGridEmptyHomeView

- (HUGridEmptyHomeView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HUGridEmptyHomeView;
  v3 = [(HUGridEmptyHomeView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(HUGridEmptyHomeView *)v3 _setupCommonAppearance];
  }

  return v4;
}

- (HUGridEmptyHomeView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = HUGridEmptyHomeView;
  v3 = [(HUGridEmptyHomeView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

  instructionsLabel = [(HUGridEmptyHomeView *)self instructionsLabel];
  [instructionsLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  instructionsLabel2 = [(HUGridEmptyHomeView *)self instructionsLabel];
  [instructionsLabel2 setAdjustsFontSizeToFitWidth:1];

  systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  instructionsLabel3 = [(HUGridEmptyHomeView *)self instructionsLabel];
  [instructionsLabel3 setTextColor:systemWhiteColor];

  v8 = _HULocalizedStringWithDefaultValue(@"HUGridEmptyHomeViewInstructionsLabelText", @"HUGridEmptyHomeViewInstructionsLabelText", 1);
  instructionsLabel4 = [(HUGridEmptyHomeView *)self instructionsLabel];
  [instructionsLabel4 setText:v8];

  instructionsLabel5 = [(HUGridEmptyHomeView *)self instructionsLabel];
  [instructionsLabel5 setNumberOfLines:0];

  v11 = [MEMORY[0x277D74300] systemFontOfSize:18.0 weight:*MEMORY[0x277D74420]];
  instructionsLabel6 = [(HUGridEmptyHomeView *)self instructionsLabel];
  [instructionsLabel6 setFont:v11];

  instructionsLabel7 = [(HUGridEmptyHomeView *)self instructionsLabel];
  [(HUGridEmptyHomeView *)self addSubview:instructionsLabel7];

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

    addAccessoryButton = [(HUGridEmptyHomeView *)self addAccessoryButton];
    [addAccessoryButton setTranslatesAutoresizingMaskIntoConstraints:0];

    addAccessoryButton2 = [(HUGridEmptyHomeView *)self addAccessoryButton];
    v22 = +[HUAddAccessoryUtilities addAccessoryString];
    [addAccessoryButton2 setTitle:v22 forState:0];

    addAccessoryButton3 = [(HUGridEmptyHomeView *)self addAccessoryButton];
    systemWhiteColor2 = [MEMORY[0x277D75348] systemWhiteColor];
    [addAccessoryButton3 setBackgroundColor:systemWhiteColor2];

    addAccessoryButton4 = [(HUGridEmptyHomeView *)self addAccessoryButton];
    [addAccessoryButton4 addTarget:self action:sel__addNewAccessory_ forControlEvents:64];

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

    learnToAddAccessoryButton = [(HUGridEmptyHomeView *)self learnToAddAccessoryButton];
    [learnToAddAccessoryButton setTranslatesAutoresizingMaskIntoConstraints:0];

    v29 = _HULocalizedStringWithDefaultValue(@"HUGridEmptyHomeViewLearnToAddAccessoriesButtonTitle", @"HUGridEmptyHomeViewLearnToAddAccessoriesButtonTitle", 1);
    learnToAddAccessoryButton2 = [(HUGridEmptyHomeView *)self learnToAddAccessoryButton];
    titleLabel = [learnToAddAccessoryButton2 titleLabel];
    [titleLabel setText:v29];

    v32 = MEMORY[0x277D74300];
    [v49 pointSize];
    v33 = [v32 systemFontOfSize:? weight:?];
    learnToAddAccessoryButton3 = [(HUGridEmptyHomeView *)self learnToAddAccessoryButton];
    titleLabel2 = [learnToAddAccessoryButton3 titleLabel];
    [titleLabel2 setFont:v33];

    learnToAddAccessoryButton4 = [(HUGridEmptyHomeView *)self learnToAddAccessoryButton];
    [learnToAddAccessoryButton4 addTarget:self action:sel__openLearnToAddAccessories_ forControlEvents:64];

    [(HUGridEmptyHomeView *)self learnToAddAccessoryButton];
  }
  v37 = ;
  [(HUGridEmptyHomeView *)self addSubview:v37];

  v38 = [[HUChevronButton alloc] initWithFrame:v15, v16, v17, v18];
  [(HUGridEmptyHomeView *)self setStoreButton:v38];

  storeButton = [(HUGridEmptyHomeView *)self storeButton];
  [storeButton setTranslatesAutoresizingMaskIntoConstraints:0];

  v40 = +[HUStoreUtilities accessoryStoreButtonTitle];
  storeButton2 = [(HUGridEmptyHomeView *)self storeButton];
  titleLabel3 = [storeButton2 titleLabel];
  [titleLabel3 setText:v40];

  v43 = MEMORY[0x277D74300];
  [v49 pointSize];
  v44 = [v43 systemFontOfSize:? weight:?];
  storeButton3 = [(HUGridEmptyHomeView *)self storeButton];
  titleLabel4 = [storeButton3 titleLabel];
  [titleLabel4 setFont:v44];

  storeButton4 = [(HUGridEmptyHomeView *)self storeButton];
  [storeButton4 addTarget:self action:sel__openStore_ forControlEvents:64];

  storeButton5 = [(HUGridEmptyHomeView *)self storeButton];
  [(HUGridEmptyHomeView *)self addSubview:storeButton5];
}

- (void)tintColorDidChange
{
  v8.receiver = self;
  v8.super_class = HUGridEmptyHomeView;
  [(HUGridEmptyHomeView *)&v8 tintColorDidChange];
  addAccessoryButton = [(HUGridEmptyHomeView *)self addAccessoryButton];
  tintColor = [(HUGridEmptyHomeView *)self tintColor];
  [addAccessoryButton setTitleColor:tintColor forState:0];

  addAccessoryButton2 = [(HUGridEmptyHomeView *)self addAccessoryButton];
  tintColor2 = [(HUGridEmptyHomeView *)self tintColor];
  v7 = [tintColor2 colorWithAlphaComponent:0.5];
  [addAccessoryButton2 setTitleColor:v7 forState:1];
}

- (void)didMoveToSuperview
{
  v8.receiver = self;
  v8.super_class = HUGridEmptyHomeView;
  [(HUGridEmptyHomeView *)&v8 didMoveToSuperview];
  addAccessoryButton = [(HUGridEmptyHomeView *)self addAccessoryButton];
  tintColor = [(HUGridEmptyHomeView *)self tintColor];
  [addAccessoryButton setTitleColor:tintColor forState:0];

  addAccessoryButton2 = [(HUGridEmptyHomeView *)self addAccessoryButton];
  tintColor2 = [(HUGridEmptyHomeView *)self tintColor];
  v7 = [tintColor2 colorWithAlphaComponent:0.5];
  [addAccessoryButton2 setTitleColor:v7 forState:1];
}

- (void)_addNewAccessory:(id)accessory
{
  delegate = [(HUGridEmptyHomeView *)self delegate];
  [delegate emptyHomeCellAddAccessoryButtonPressed:self];
}

- (void)_openStore:(id)store
{
  mEMORY[0x277D148E8] = [MEMORY[0x277D148E8] sharedInstance];
  v3 = +[HUStoreUtilities accessoryStoreURL];
  v4 = [mEMORY[0x277D148E8] openURL:v3];
}

- (void)_openLearnToAddAccessories:(id)accessories
{
  mEMORY[0x277D148E8] = [MEMORY[0x277D148E8] sharedInstance];
  hf_learnToAddAccessoriesURL = [MEMORY[0x277CBEBC0] hf_learnToAddAccessoriesURL];
  v4 = [mEMORY[0x277D148E8] openURL:hf_learnToAddAccessoriesURL];
}

- (void)updateConstraints
{
  array = [MEMORY[0x277CBEB18] array];
  instructionsLabel = [(HUGridEmptyHomeView *)self instructionsLabel];
  leadingAnchor = [instructionsLabel leadingAnchor];
  leadingAnchor2 = [(HUGridEmptyHomeView *)self leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v7];

  instructionsLabel2 = [(HUGridEmptyHomeView *)self instructionsLabel];
  trailingAnchor = [instructionsLabel2 trailingAnchor];
  trailingAnchor2 = [(HUGridEmptyHomeView *)self trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [array addObject:v11];

  instructionsLabel3 = [(HUGridEmptyHomeView *)self instructionsLabel];
  topAnchor = [instructionsLabel3 topAnchor];
  topAnchor2 = [(HUGridEmptyHomeView *)self topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [array addObject:v15];

  storeButton = [(HUGridEmptyHomeView *)self storeButton];
  leadingAnchor3 = [storeButton leadingAnchor];
  leadingAnchor4 = [(HUGridEmptyHomeView *)self leadingAnchor];
  v19 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [array addObject:v19];

  if ([MEMORY[0x277D14CE8] supportsAccessorySetup])
  {
    addAccessoryButton = [(HUGridEmptyHomeView *)self addAccessoryButton];
    leadingAnchor5 = [addAccessoryButton leadingAnchor];
    leadingAnchor6 = [(HUGridEmptyHomeView *)self leadingAnchor];
    v23 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    [array addObject:v23];

    addAccessoryButton2 = [(HUGridEmptyHomeView *)self addAccessoryButton];
    trailingAnchor3 = [addAccessoryButton2 trailingAnchor];
    trailingAnchor4 = [(HUGridEmptyHomeView *)self trailingAnchor];
    v27 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [array addObject:v27];

    addAccessoryButton3 = [(HUGridEmptyHomeView *)self addAccessoryButton];
    heightAnchor = [addAccessoryButton3 heightAnchor];
    v30 = [heightAnchor constraintEqualToConstant:50.0];
    [array addObject:v30];

    storeButton2 = [(HUGridEmptyHomeView *)self storeButton];
    trailingAnchor5 = [storeButton2 trailingAnchor];
    [(HUGridEmptyHomeView *)self trailingAnchor];
  }

  else
  {
    storeButton2 = [(HUGridEmptyHomeView *)self learnToAddAccessoryButton];
    trailingAnchor5 = [storeButton2 leadingAnchor];
    [(HUGridEmptyHomeView *)self leadingAnchor];
  }
  v33 = ;
  v34 = [trailingAnchor5 constraintEqualToAnchor:v33];
  [array addObject:v34];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  supportsAccessorySetup = [MEMORY[0x277D14CE8] supportsAccessorySetup];
  if (userInterfaceIdiom == 1)
  {
    if (supportsAccessorySetup)
    {
      addAccessoryButton4 = [(HUGridEmptyHomeView *)self addAccessoryButton];
      topAnchor3 = [addAccessoryButton4 topAnchor];
      instructionsLabel4 = [(HUGridEmptyHomeView *)self instructionsLabel];
      lastBaselineAnchor = [instructionsLabel4 lastBaselineAnchor];
      instructionsLabel5 = [(HUGridEmptyHomeView *)self instructionsLabel];
      font = [instructionsLabel5 font];
      [font _scaledValueForValue:34.0];
      v44 = [topAnchor3 constraintEqualToAnchor:lastBaselineAnchor constant:?];
      [array addObject:v44];

      storeButton3 = [(HUGridEmptyHomeView *)self storeButton];
      firstBaselineAnchor = [storeButton3 firstBaselineAnchor];
      addAccessoryButton5 = [(HUGridEmptyHomeView *)self addAccessoryButton];
      bottomAnchor = [addAccessoryButton5 bottomAnchor];
      v49 = 32.0;
    }

    else
    {
      learnToAddAccessoryButton = [(HUGridEmptyHomeView *)self learnToAddAccessoryButton];
      firstBaselineAnchor2 = [learnToAddAccessoryButton firstBaselineAnchor];
      instructionsLabel6 = [(HUGridEmptyHomeView *)self instructionsLabel];
      bottomAnchor2 = [instructionsLabel6 bottomAnchor];
      v59 = [firstBaselineAnchor2 constraintEqualToAnchor:bottomAnchor2 constant:26.0];
      [array addObject:v59];

      storeButton3 = [(HUGridEmptyHomeView *)self storeButton];
      firstBaselineAnchor = [storeButton3 firstBaselineAnchor];
      addAccessoryButton5 = [(HUGridEmptyHomeView *)self learnToAddAccessoryButton];
      bottomAnchor = [addAccessoryButton5 bottomAnchor];
      v49 = 18.0;
    }

    v60 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:v49];
    [array addObject:v60];
  }

  else
  {
    if (supportsAccessorySetup)
    {
      addAccessoryButton6 = [(HUGridEmptyHomeView *)self addAccessoryButton];
      bottomAnchor3 = [addAccessoryButton6 bottomAnchor];
      storeButton4 = [(HUGridEmptyHomeView *)self storeButton];
      topAnchor4 = [storeButton4 topAnchor];
      v54 = [bottomAnchor3 constraintEqualToAnchor:topAnchor4 constant:-18.0];
      [array addObject:v54];
    }

    storeButton3 = [(HUGridEmptyHomeView *)self storeButton];
    firstBaselineAnchor = [storeButton3 lastBaselineAnchor];
    addAccessoryButton5 = [(HUGridEmptyHomeView *)self bottomAnchor];
    bottomAnchor = [firstBaselineAnchor constraintEqualToAnchor:addAccessoryButton5 constant:-32.0];
    [array addObject:bottomAnchor];
  }

  constraints = [(HUGridEmptyHomeView *)self constraints];
  v62 = [array isEqualToArray:constraints];

  if ((v62 & 1) == 0)
  {
    v63 = MEMORY[0x277CCAAD0];
    constraints2 = [(HUGridEmptyHomeView *)self constraints];
    [v63 deactivateConstraints:constraints2];

    [(HUGridEmptyHomeView *)self setConstraints:array];
    v65 = MEMORY[0x277CCAAD0];
    constraints3 = [(HUGridEmptyHomeView *)self constraints];
    [v65 activateConstraints:constraints3];
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