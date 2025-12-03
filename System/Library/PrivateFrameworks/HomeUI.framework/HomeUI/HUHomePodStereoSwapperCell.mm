@interface HUHomePodStereoSwapperCell
- (HUHomePodStereoSwapperCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (HUHomePodStereoSwapperCellDelegate)delegate;
- (void)_setupConstraints;
- (void)_swap;
- (void)finishSetupWithDelegate:(id)delegate selectionStyle:(int64_t)style homePodVariant:(unint64_t)variant;
@end

@implementation HUHomePodStereoSwapperCell

- (HUHomePodStereoSwapperCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = HUHomePodStereoSwapperCell;
  return [(HUHomePodStereoSwapperCell *)&v5 initWithStyle:style reuseIdentifier:identifier];
}

- (void)finishSetupWithDelegate:(id)delegate selectionStyle:(int64_t)style homePodVariant:(unint64_t)variant
{
  v30 = *MEMORY[0x277D85DE8];
  [(HUHomePodStereoSwapperCell *)self setDelegate:delegate];
  [(HUHomePodStereoSwapperCell *)self setSelectionStyle:style];
  [(HUHomePodStereoSwapperCell *)self setHomePodVariant:variant];
  v8 = [[HUHomePodDetailView alloc] initWithRole:1 variant:[(HUHomePodStereoSwapperCell *)self homePodVariant]];
  [(HUHomePodStereoSwapperCell *)self setLeftHomePod:v8];

  v9 = [[HUHomePodDetailView alloc] initWithRole:2 variant:[(HUHomePodStereoSwapperCell *)self homePodVariant]];
  [(HUHomePodStereoSwapperCell *)self setRightHomePod:v9];

  v10 = [MEMORY[0x277D75220] buttonWithType:0];
  [(HUHomePodStereoSwapperCell *)self setSwapButton:v10];

  swapButton = [(HUHomePodStereoSwapperCell *)self swapButton];
  LODWORD(v12) = 1148846080;
  [swapButton setContentCompressionResistancePriority:0 forAxis:v12];

  swapButton2 = [(HUHomePodStereoSwapperCell *)self swapButton];
  v14 = HUNullableImageNamed(@"SpeakerFlipper");
  [swapButton2 setImage:v14 forState:0];

  swapButton3 = [(HUHomePodStereoSwapperCell *)self swapButton];
  [swapButton3 addTarget:self action:sel__swap forControlEvents:64];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  rightHomePod = self->_rightHomePod;
  v28[0] = self->_leftHomePod;
  v28[1] = rightHomePod;
  v28[2] = self->_swapButton;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:{3, 0}];
  v18 = [v17 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v24 + 1) + 8 * i);
        [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
        contentView = [(HUHomePodStereoSwapperCell *)self contentView];
        [contentView addSubview:v22];
      }

      v19 = [v17 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v19);
  }

  [(HUHomePodStereoSwapperCell *)self _setupConstraints];
}

- (void)_setupConstraints
{
  v2 = MEMORY[0x277CCAAD0];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__HUHomePodStereoSwapperCell__setupConstraints__block_invoke;
  v4[3] = &unk_277DC19D8;
  v4[4] = self;
  v3 = __47__HUHomePodStereoSwapperCell__setupConstraints__block_invoke(v4);
  [v2 activateConstraints:v3];
}

id __47__HUHomePodStereoSwapperCell__setupConstraints__block_invoke(uint64_t a1)
{
  v97 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v92 = v2;
  v93 = objc_opt_new();
  v3 = v93;
  v4 = objc_opt_new();
  v94 = v4;
  v95 = objc_opt_new();
  v86 = v95;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v92 count:4];
  v6 = [v5 countByEnumeratingWithState:&v87 objects:v96 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v88;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v88 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(a1 + 32) addLayoutGuide:*(*(&v87 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v87 objects:v96 count:16];
    }

    while (v7);
  }

  v10 = [*(a1 + 32) swapButton];
  v11 = [v10 centerXAnchor];
  v12 = [*(a1 + 32) contentView];
  v13 = [v12 centerXAnchor];
  v85 = [v11 constraintEqualToAnchor:v13];

  v14 = [*(a1 + 32) swapButton];
  v15 = [v14 centerYAnchor];
  v16 = [*(a1 + 32) contentView];
  v17 = [v16 centerYAnchor];
  v84 = [v15 constraintEqualToAnchor:v17];

  v18 = [*(a1 + 32) contentView];
  v19 = [v18 layoutMarginsGuide];
  v20 = [v19 heightAnchor];
  v21 = [*(a1 + 32) leftHomePod];
  v22 = [v21 heightAnchor];
  v83 = [v20 constraintGreaterThanOrEqualToAnchor:v22];

  v23 = [*(a1 + 32) contentView];
  v24 = [v23 layoutMarginsGuide];
  v25 = [v24 heightAnchor];
  v26 = [*(a1 + 32) rightHomePod];
  v27 = [v26 heightAnchor];
  v82 = [v25 constraintGreaterThanOrEqualToAnchor:v27];

  v28 = [*(a1 + 32) leftHomePod];
  v29 = [v28 topAnchor];
  v30 = [*(a1 + 32) contentView];
  v31 = [v30 layoutMarginsGuide];
  v32 = [v31 topAnchor];
  v78 = [v29 constraintEqualToAnchor:v32];

  v33 = [*(a1 + 32) rightHomePod];
  v34 = [v33 topAnchor];
  v35 = [*(a1 + 32) contentView];
  v36 = [v35 layoutMarginsGuide];
  v37 = [v36 topAnchor];
  v81 = [v34 constraintEqualToAnchor:v37];

  v38 = [v2 widthAnchor];
  v39 = [v3 widthAnchor];
  v80 = [v38 constraintEqualToAnchor:v39];

  v75 = v4;
  v40 = [v4 widthAnchor];
  v41 = [v86 widthAnchor];
  v79 = [v40 constraintEqualToAnchor:v41];

  v42 = [v3 widthAnchor];
  v43 = [*(a1 + 32) contentView];
  v44 = [v43 widthAnchor];
  v76 = [v42 constraintGreaterThanOrEqualToAnchor:v44 multiplier:0.05];

  v45 = [v86 widthAnchor];
  v46 = [*(a1 + 32) contentView];
  v47 = [v46 widthAnchor];
  v74 = [v45 constraintGreaterThanOrEqualToAnchor:v47 multiplier:0.07];

  v48 = [*(a1 + 32) leftHomePod];
  v49 = [v48 leftAnchor];
  v50 = [v4 rightAnchor];
  v77 = [v49 constraintEqualToAnchor:v50];

  v51 = [*(a1 + 32) leftHomePod];
  v52 = [v51 rightAnchor];
  v53 = [v2 leftAnchor];
  v72 = [v52 constraintEqualToAnchor:v53];

  v54 = [*(a1 + 32) rightHomePod];
  v55 = [v54 leftAnchor];
  [v3 rightAnchor];
  v56 = v2;
  v57 = v73 = v2;
  v58 = [v55 constraintEqualToAnchor:v57];

  v59 = [*(a1 + 32) rightHomePod];
  v60 = [v59 rightAnchor];
  [v86 leftAnchor];
  v62 = v61 = v3;
  v63 = [v60 constraintEqualToAnchor:v62];

  v91[0] = v85;
  v91[1] = v84;
  v91[2] = v83;
  v91[3] = v78;
  v91[4] = v82;
  v91[5] = v81;
  v91[6] = v80;
  v91[7] = v79;
  v91[8] = v76;
  v91[9] = v74;
  v91[10] = v77;
  v91[11] = v72;
  v91[12] = v58;
  v91[13] = v63;
  v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:14];
  v65 = [*(a1 + 32) leftHomePod];
  v66 = [*(a1 + 32) rightHomePod];
  v67 = [*(a1 + 32) swapButton];
  v68 = _NSDictionaryOfVariableBindings(&cfstr_Leadingswapbut.isa, v56, v61, v4, v86, v65, v66, v67, 0);
  v69 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[leftSpeakerMargin][leftHomePodDetailView][leadingSwapButtonMargin][swapButton][trailingSwapButtonMargin][rightHomePodDetailView][rightSpeakerMargin]|" options:0x10000 metrics:0 views:v68];
  v70 = [v69 arrayByAddingObjectsFromArray:v64];

  return v70;
}

- (void)_swap
{
  swapButton = [(HUHomePodStereoSwapperCell *)self swapButton];
  [HUAnimationUtilities schedulePopAnimation:swapButton scaleFactor:0 beginDuration:0.8 endDuration:0.2 completion:0.4];

  delegate = [(HUHomePodStereoSwapperCell *)self delegate];

  if (delegate)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained didPressSwapButton:self];
  }
}

- (HUHomePodStereoSwapperCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end