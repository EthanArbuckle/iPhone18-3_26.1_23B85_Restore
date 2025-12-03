@interface HUHomePodDetailView
- (HFStringGenerator)unitName;
- (HUHomePodDetailView)initWithRole:(unint64_t)role variant:(unint64_t)variant;
- (HUHomePodDetailViewDelegate)delegate;
- (void)_setupConstraints;
- (void)_speakerTapped;
- (void)_updateImagesForRole;
- (void)setUnitName:(id)name;
@end

@implementation HUHomePodDetailView

- (HUHomePodDetailView)initWithRole:(unint64_t)role variant:(unint64_t)variant
{
  v43[1] = *MEMORY[0x277D85DE8];
  v40.receiver = self;
  v40.super_class = HUHomePodDetailView;
  v6 = [(HUHomePodDetailView *)&v40 init];
  v7 = v6;
  if (v6)
  {
    v6->_mediaSystemRole = role;
    v8 = objc_opt_new();
    unitNameLabel = v7->_unitNameLabel;
    v7->_unitNameLabel = v8;

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v7->_unitNameLabel setTextColor:systemGrayColor];

    [(UILabel *)v7->_unitNameLabel setNumberOfLines:0];
    v11 = MEMORY[0x277D755D0];
    systemGrayColor2 = [MEMORY[0x277D75348] systemGrayColor];
    v43[0] = systemGrayColor2;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
    v14 = [v11 _configurationWithHierarchicalColors:v13];

    v15 = MEMORY[0x277D755D0];
    v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A08] compatibleWithTraitCollection:0];
    v17 = [v15 configurationWithFont:v16];

    v18 = [v17 configurationByApplyingConfiguration:v14];
    v19 = objc_alloc(MEMORY[0x277D755E8]);
    if (variant == 2)
    {
      v20 = @"homepodmini.fill";
    }

    else
    {
      v20 = @"homepod.fill";
    }

    v21 = [MEMORY[0x277D755B8] systemImageNamed:v20 withConfiguration:v18];
    v22 = [v19 initWithImage:v21];
    unitImageView = v7->_unitImageView;
    v7->_unitImageView = v22;

    [(UIView *)v7->_unitImageView setContentMode:2];
    [(UIView *)v7->_unitImageView setUserInteractionEnabled:1];
    v24 = objc_opt_new();
    unitBadgeLabel = v7->_unitBadgeLabel;
    v7->_unitBadgeLabel = v24;

    systemLightGrayColor = [MEMORY[0x277D75348] systemLightGrayColor];
    [(UIImageView *)v7->_unitBadgeLabel setTintColor:systemLightGrayColor];

    [(HUHomePodDetailView *)v7 _updateImagesForRole];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v41[0] = v7->_unitNameLabel;
    v41[1] = v7->_unitImageView;
    v41[2] = v7->_unitBadgeLabel;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:{3, 0}];
    v28 = [v27 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v37;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v37 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v36 + 1) + 8 * i);
          [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
          [(HUHomePodDetailView *)v7 addSubview:v32];
        }

        v29 = [v27 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v29);
    }

    [(HUHomePodDetailView *)v7 _setupConstraints];
    v33 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v7 action:sel__speakerTapped];
    [(HUHomePodDetailView *)v7 addGestureRecognizer:v33];
    automaticStyle = [MEMORY[0x277D755A8] automaticStyle];
    [(HUHomePodDetailView *)v7 setHoverStyle:automaticStyle];
  }

  return v7;
}

- (void)_setupConstraints
{
  v68[16] = *MEMORY[0x277D85DE8];
  layoutMarginsGuide = [(HUHomePodDetailView *)self layoutMarginsGuide];
  topAnchor = [layoutMarginsGuide topAnchor];
  unitBadgeLabel = [(HUHomePodDetailView *)self unitBadgeLabel];
  topAnchor2 = [unitBadgeLabel topAnchor];
  v64 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-14.0];

  unitBadgeLabel2 = [(HUHomePodDetailView *)self unitBadgeLabel];
  bottomAnchor = [unitBadgeLabel2 bottomAnchor];
  unitImageView = [(HUHomePodDetailView *)self unitImageView];
  topAnchor3 = [unitImageView topAnchor];
  v67 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:-8.0];

  unitImageView2 = [(HUHomePodDetailView *)self unitImageView];
  bottomAnchor2 = [unitImageView2 bottomAnchor];
  unitNameLabel = [(HUHomePodDetailView *)self unitNameLabel];
  topAnchor4 = [unitNameLabel topAnchor];
  v66 = [bottomAnchor2 constraintEqualToAnchor:topAnchor4 constant:-11.0];

  unitNameLabel2 = [(HUHomePodDetailView *)self unitNameLabel];
  lastBaselineAnchor = [unitNameLabel2 lastBaselineAnchor];
  bottomAnchor3 = [(HUHomePodDetailView *)self bottomAnchor];
  v65 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor3 constant:-17.0];

  unitBadgeLabel3 = [(HUHomePodDetailView *)self unitBadgeLabel];
  centerXAnchor = [unitBadgeLabel3 centerXAnchor];
  centerXAnchor2 = [(HUHomePodDetailView *)self centerXAnchor];
  v63 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

  unitImageView3 = [(HUHomePodDetailView *)self unitImageView];
  centerXAnchor3 = [unitImageView3 centerXAnchor];
  centerXAnchor4 = [(HUHomePodDetailView *)self centerXAnchor];
  v61 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];

  unitNameLabel3 = [(HUHomePodDetailView *)self unitNameLabel];
  centerXAnchor5 = [unitNameLabel3 centerXAnchor];
  centerXAnchor6 = [(HUHomePodDetailView *)self centerXAnchor];
  v62 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];

  unitBadgeLabel4 = [(HUHomePodDetailView *)self unitBadgeLabel];
  leadingAnchor = [unitBadgeLabel4 leadingAnchor];
  leadingAnchor2 = [(HUHomePodDetailView *)self leadingAnchor];
  v60 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];

  unitImageView4 = [(HUHomePodDetailView *)self unitImageView];
  leadingAnchor3 = [unitImageView4 leadingAnchor];
  leadingAnchor4 = [(HUHomePodDetailView *)self leadingAnchor];
  v59 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4];

  unitBadgeLabel5 = [(HUHomePodDetailView *)self unitBadgeLabel];
  trailingAnchor = [unitBadgeLabel5 trailingAnchor];
  trailingAnchor2 = [(HUHomePodDetailView *)self trailingAnchor];
  v58 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];

  unitImageView5 = [(HUHomePodDetailView *)self unitImageView];
  trailingAnchor3 = [unitImageView5 trailingAnchor];
  trailingAnchor4 = [(HUHomePodDetailView *)self trailingAnchor];
  v57 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4];

  unitImageView6 = [(HUHomePodDetailView *)self unitImageView];
  heightAnchor = [unitImageView6 heightAnchor];
  v56 = [heightAnchor constraintGreaterThanOrEqualToConstant:72.0];

  unitNameLabel4 = [(HUHomePodDetailView *)self unitNameLabel];
  centerYAnchor = [unitNameLabel4 centerYAnchor];
  centerYAnchor2 = [(HUHomePodDetailView *)self centerYAnchor];
  v55 = [centerYAnchor constraintGreaterThanOrEqualToAnchor:centerYAnchor2];

  unitNameLabel5 = [(HUHomePodDetailView *)self unitNameLabel];
  widthAnchor = [unitNameLabel5 widthAnchor];
  v46 = [widthAnchor constraintEqualToConstant:140.0];

  unitBadgeLabel6 = [(HUHomePodDetailView *)self unitBadgeLabel];
  widthAnchor2 = [unitBadgeLabel6 widthAnchor];
  v49 = [widthAnchor2 constraintGreaterThanOrEqualToConstant:19.0];

  unitBadgeLabel7 = [(HUHomePodDetailView *)self unitBadgeLabel];
  heightAnchor2 = [unitBadgeLabel7 heightAnchor];
  v52 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:19.0];

  v53 = MEMORY[0x277CCAAD0];
  v68[0] = v64;
  v68[1] = v67;
  v68[2] = v66;
  v68[3] = v65;
  v68[4] = v63;
  v68[5] = v61;
  v68[6] = v62;
  v68[7] = v60;
  v68[8] = v59;
  v68[9] = v55;
  v68[10] = v58;
  v68[11] = v57;
  v68[12] = v46;
  v68[13] = v49;
  v68[14] = v52;
  v68[15] = v56;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:16];
  [v53 activateConstraints:v54];
}

- (void)_updateImagesForRole
{
  mediaSystemRole = [(HUHomePodDetailView *)self mediaSystemRole];
  if (mediaSystemRole == 2)
  {
    v4 = MEMORY[0x277D755B8];
    v5 = @"r.circle.fill";
    goto LABEL_5;
  }

  if (mediaSystemRole == 1)
  {
    v4 = MEMORY[0x277D755B8];
    v5 = @"l.circle.fill";
LABEL_5:
    unitBadgeLabel2 = [v4 systemImageNamed:v5];
    v7 = [unitBadgeLabel2 imageWithRenderingMode:2];
    unitBadgeLabel = [(HUHomePodDetailView *)self unitBadgeLabel];
    [unitBadgeLabel setImage:v7];

    goto LABEL_7;
  }

  unitBadgeLabel2 = [(HUHomePodDetailView *)self unitBadgeLabel];
  [unitBadgeLabel2 setHidden:1];
LABEL_7:

  [(HUHomePodDetailView *)self setNeedsUpdateConstraints];
}

- (void)setUnitName:(id)name
{
  nameCopy = name;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __35__HUHomePodDetailView_setUnitName___block_invoke;
  aBlock[3] = &unk_277DB7558;
  aBlock[4] = self;
  v27 = nameCopy;
  v5 = nameCopy;
  v6 = _Block_copy(aBlock);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __35__HUHomePodDetailView_setUnitName___block_invoke_2;
  v25[3] = &unk_277DB8488;
  v25[4] = self;
  v7 = _Block_copy(v25);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __35__HUHomePodDetailView_setUnitName___block_invoke_4;
  v21 = &unk_277DBB850;
  selfCopy = self;
  v8 = v6;
  v23 = v8;
  v24 = v7;
  v9 = v7;
  v10 = _Block_copy(&v18);
  v11 = [(HUHomePodDetailView *)self unitNameLabel:v18];
  attributedText = [v11 attributedText];
  if (!attributedText)
  {

LABEL_5:
    v17 = v8;
    goto LABEL_6;
  }

  v13 = attributedText;
  unitNameLabel = [(HUHomePodDetailView *)self unitNameLabel];
  attributedText2 = [unitNameLabel attributedText];
  v16 = [attributedText2 length];

  v17 = v10;
  if (!v16)
  {
    goto LABEL_5;
  }

LABEL_6:
  v17[2]();
}

void __35__HUHomePodDetailView_setUnitName___block_invoke(uint64_t a1)
{
  v13[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D74248] defaultParagraphStyle];
  v3 = [v2 mutableCopy];

  [v3 setAlignment:1];
  v4 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D769C0] traits:66];
  v5 = *(a1 + 40);
  v12[0] = *MEMORY[0x277D740C0];
  v6 = [MEMORY[0x277D75348] systemGrayColor];
  v7 = *MEMORY[0x277D74118];
  v13[0] = v6;
  v13[1] = v3;
  v8 = *MEMORY[0x277D740A8];
  v12[1] = v7;
  v12[2] = v8;
  v13[2] = v4;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v10 = [v5 stringWithAttributes:v9];
  v11 = [*(a1 + 32) unitNameLabel];
  [v11 setAttributedText:v10];

  [*(a1 + 32) setNeedsUpdateConstraints];
}

uint64_t __35__HUHomePodDetailView_setUnitName___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __35__HUHomePodDetailView_setUnitName___block_invoke_3;
  v2[3] = &unk_277DB8488;
  v2[4] = *(a1 + 32);
  return [MEMORY[0x277D75D18] animateWithDuration:v2 animations:0.45];
}

void __35__HUHomePodDetailView_setUnitName___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) unitNameLabel];
  [v1 setAlpha:1.0];
}

void __35__HUHomePodDetailView_setUnitName___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__HUHomePodDetailView_setUnitName___block_invoke_5;
  v6[3] = &unk_277DB8488;
  v6[4] = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __35__HUHomePodDetailView_setUnitName___block_invoke_6;
  v3[3] = &unk_277DBB828;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 animateWithDuration:v6 animations:v3 completion:0.45];
}

void __35__HUHomePodDetailView_setUnitName___block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) unitNameLabel];
  [v1 setAlpha:0.0];
}

uint64_t __35__HUHomePodDetailView_setUnitName___block_invoke_6(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (HFStringGenerator)unitName
{
  unitNameLabel = [(HUHomePodDetailView *)self unitNameLabel];
  attributedText = [unitNameLabel attributedText];

  return attributedText;
}

- (void)_speakerTapped
{
  if (![(HUHomePodDetailView *)self isAnimatingPop])
  {
    delegate = [(HUHomePodDetailView *)self delegate];

    if (delegate)
    {
      [(HUHomePodDetailView *)self setIsAnimatingPop:1];
      unitImageView = [(HUHomePodDetailView *)self unitImageView];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __37__HUHomePodDetailView__speakerTapped__block_invoke;
      v10[3] = &unk_277DB8488;
      v10[4] = self;
      [HUAnimationUtilities schedulePopAnimation:unitImageView scaleFactor:v10 beginDuration:0.8 endDuration:0.2 completion:0.4];

      v5 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"transform.scale"];
      [v5 setFromValue:&unk_2824933E0];
      [v5 setToValue:&unk_2824933F0];
      [v5 setDamping:20.0];
      [v5 setStiffness:200.0];
      [v5 setBeginTime:CACurrentMediaTime() + 0.2];
      unitBadgeLabel = [(HUHomePodDetailView *)self unitBadgeLabel];
      layer = [unitBadgeLabel layer];
      [layer addAnimation:v5 forKey:0];

      delegate2 = [(HUHomePodDetailView *)self delegate];
      LOBYTE(layer) = objc_opt_respondsToSelector();

      if (layer)
      {
        delegate3 = [(HUHomePodDetailView *)self delegate];
        [delegate3 didTapSpeaker:self];
      }
    }
  }
}

- (HUHomePodDetailViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end