@interface HUQuickControlIconView
- (CGRect)_getLabelsContainingRect;
- (CGSize)intrinsicContentSize;
- (HUQuickControlIconView)initWithProfile:(id)profile;
- (HUQuickControlViewInteractionDelegate)interactionDelegate;
- (double)_iconAndLabelsHeight;
- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)size;
- (void)_updateLabelFramesOrigins;
- (void)_updateLabelSizes;
- (void)_updateLayout;
- (void)_updateUI;
- (void)_updateUIForReachabilityState:(unint64_t)state;
- (void)layoutSubviews;
- (void)setProfile:(id)profile;
- (void)setValue:(id)value;
@end

@implementation HUQuickControlIconView

- (HUQuickControlIconView)initWithProfile:(id)profile
{
  profileCopy = profile;
  v15.receiver = self;
  v15.super_class = HUQuickControlIconView;
  v6 = [(HUQuickControlIconView *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_profile, profile);
    v7->_reachabilityState = 0;
    v8 = objc_alloc_init(MEMORY[0x277D180D0]);
    iconView = v7->_iconView;
    v7->_iconView = v8;

    [(HUIconView *)v7->_iconView setUserInteractionEnabled:0];
    [(HUIconView *)v7->_iconView setContentMode:2];
    [(HUIconView *)v7->_iconView setIconSize:4];
    [(HUQuickControlIconView *)v7 addSubview:v7->_iconView];
    v10 = objc_alloc_init(MEMORY[0x277D756B8]);
    statusLabel = v7->_statusLabel;
    v7->_statusLabel = v10;

    [(UILabel *)v7->_statusLabel setNumberOfLines:0];
    [(UILabel *)v7->_statusLabel setTextAlignment:1];
    [(HUQuickControlIconView *)v7 addSubview:v7->_statusLabel];
    v12 = objc_alloc_init(MEMORY[0x277D756B8]);
    supplementaryLabel = v7->_supplementaryLabel;
    v7->_supplementaryLabel = v12;

    [(UILabel *)v7->_supplementaryLabel setNumberOfLines:0];
    [(UILabel *)v7->_supplementaryLabel setTextAlignment:1];
    [(HUQuickControlIconView *)v7 addSubview:v7->_supplementaryLabel];
  }

  return v7;
}

- (void)setProfile:(id)profile
{
  objc_storeStrong(&self->_profile, profile);

  [(HUQuickControlIconView *)self _updateUI];
}

- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)size
{
  [(HUQuickControlIconView *)self _iconAndLabelsHeight];
  v5 = HUQuickControlIconViewMetricsForControlSize(size, v4);
  sizeDescriptor = [v5 sizeDescriptor];

  return sizeDescriptor;
}

- (void)setValue:(id)value
{
  objc_storeStrong(&self->_viewValue, value);

  [(HUQuickControlIconView *)self _updateUI];
}

- (CGSize)intrinsicContentSize
{
  [(HUQuickControlIconView *)self _iconAndLabelsHeight];
  v4 = v3;
  profile = [(HUQuickControlIconView *)self profile];
  v6 = HUQuickControlIconViewMetricsForControlSize([profile controlSize], v4);
  sizeDescriptor = [v6 sizeDescriptor];
  [sizeDescriptor intrinsicSize];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)_updateUIForReachabilityState:(unint64_t)state
{
  if (state <= 2)
  {
    [(HUQuickControlIconView *)self setAlpha:dbl_20D5CA878[state]];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = HUQuickControlIconView;
  [(HUQuickControlIconView *)&v3 layoutSubviews];
  [(HUQuickControlIconView *)self _updateLayout];
  [(HUQuickControlIconView *)self _updateUIForReachabilityState:[(HUQuickControlIconView *)self reachabilityState]];
}

- (void)_updateUI
{
  v55[4] = *MEMORY[0x277D85DE8];
  profile = [(HUQuickControlIconView *)self profile];
  iconDescriptor = [profile iconDescriptor];

  profile2 = [(HUQuickControlIconView *)self profile];
  iconDescriptor2 = [profile2 iconDescriptor];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = objc_alloc(MEMORY[0x277D14BD8]);
    profile3 = [(HUQuickControlIconView *)self profile];
    statusString = [profile3 statusString];
    v11 = [v8 initWithFormattedTemperature:statusString heatingCoolingMode:0 targetHeatingCoolingMode:0];

    iconDescriptor = v11;
  }

  iconView = [(HUQuickControlIconView *)self iconView];
  v50 = iconDescriptor;
  [iconView updateWithIconDescriptor:iconDescriptor displayStyle:1 animated:1];

  v13 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] addingSymbolicTraits:2 options:0];
  v14 = objc_opt_new();
  [v14 setAlignment:1];
  LODWORD(v15) = 1.0;
  [v14 setHyphenationFactor:v15];
  [v14 setLineBreakMode:0];
  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  firstObject = [preferredLanguages firstObject];

  profile4 = [(HUQuickControlIconView *)self profile];
  statusString2 = [profile4 statusString];
  v20 = statusString2;
  v21 = &stru_2823E0EE8;
  if (statusString2)
  {
    v21 = statusString2;
  }

  v22 = v21;

  statusLabel = [(HUQuickControlIconView *)self statusLabel];
  v51 = v22;
  [statusLabel setText:v22];

  profile5 = [(HUQuickControlIconView *)self profile];
  statusTextColor = [profile5 statusTextColor];
  v26 = statusTextColor;
  if (statusTextColor)
  {
    labelColor = statusTextColor;
  }

  else
  {
    labelColor = [MEMORY[0x277D75348] labelColor];
  }

  v28 = labelColor;
  v49 = labelColor;

  v29 = *MEMORY[0x277D740C0];
  v55[0] = v28;
  v30 = *MEMORY[0x277D740A8];
  v54[0] = v29;
  v54[1] = v30;
  v31 = v13;
  v32 = [MEMORY[0x277D74300] fontWithDescriptor:v13 size:0.0];
  v33 = *MEMORY[0x277D74118];
  v55[1] = v32;
  v55[2] = v14;
  v34 = *MEMORY[0x277CC49E8];
  v54[2] = v33;
  v54[3] = v34;
  v55[3] = firstObject;
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:4];
  v48 = v47 = v14;

  v35 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v51 attributes:v48];
  statusLabel2 = [(HUQuickControlIconView *)self statusLabel];
  [statusLabel2 setAttributedText:v35];

  profile6 = [(HUQuickControlIconView *)self profile];
  supplementaryString = [profile6 supplementaryString];
  v39 = supplementaryString;
  v40 = &stru_2823E0EE8;
  if (supplementaryString)
  {
    v40 = supplementaryString;
  }

  v41 = v40;

  v52[0] = v29;
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  v53[0] = secondaryLabelColor;
  v52[1] = v30;
  v43 = [MEMORY[0x277D74300] fontWithDescriptor:v31 size:0.0];
  v53[1] = v43;
  v53[2] = v47;
  v52[2] = v33;
  v52[3] = v34;
  v53[3] = firstObject;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:4];

  v45 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v41 attributes:v44];
  supplementaryLabel = [(HUQuickControlIconView *)self supplementaryLabel];
  [supplementaryLabel setAttributedText:v45];

  [(HUQuickControlIconView *)self _updateLayout];
}

- (double)_iconAndLabelsHeight
{
  [(HUQuickControlIconView *)self _updateLabelSizes];
  [(HUQuickControlIconView *)self _getLabelsContainingRect];
  return v3 + 76.0;
}

- (void)_updateLayout
{
  [(HUQuickControlIconView *)self _iconAndLabelsHeight];
  v4 = v3;
  [(HUQuickControlIconView *)self frame];
  v6 = v5 * 0.5 + -35.0;
  [(HUQuickControlIconView *)self frame];
  v8 = v7 * 0.5 - v4 * 0.5;
  iconView = [(HUQuickControlIconView *)self iconView];
  [iconView setFrame:{v6, v8, 70.0, 70.0}];

  [(HUQuickControlIconView *)self _updateLabelFramesOrigins];
}

- (void)_updateLabelSizes
{
  profile = [(HUQuickControlIconView *)self profile];
  controlSize = [profile controlSize];
  v5 = 120.0;
  if (controlSize == 1)
  {
    v5 = 280.0;
  }

  if (controlSize)
  {
    v6 = v5;
  }

  else
  {
    v6 = 330.0;
  }

  [(HUQuickControlIconView *)self frame];
  if (v7 <= 0.0)
  {
    iconView = [(HUQuickControlIconView *)self iconView];
    [iconView frame];
    v11 = v10 * 1.5;

    if (v11 >= v6)
    {
      v6 = v11;
    }
  }

  else
  {
    [(HUQuickControlIconView *)self frame];
    if (v8 < v6)
    {
      v6 = v8;
    }
  }

  statusLabel = [(HUQuickControlIconView *)self statusLabel];
  [statusLabel sizeThatFits:{v6, 1.79769313e308}];
  v14 = v13;
  v16 = v15;

  statusLabel2 = [(HUQuickControlIconView *)self statusLabel];
  [statusLabel2 frame];
  v19 = v18;
  statusLabel3 = [(HUQuickControlIconView *)self statusLabel];
  [statusLabel3 frame];
  v22 = v21;
  statusLabel4 = [(HUQuickControlIconView *)self statusLabel];
  [statusLabel4 setFrame:{v19, v22, v14, v16}];

  supplementaryLabel = [(HUQuickControlIconView *)self supplementaryLabel];
  [supplementaryLabel sizeThatFits:{v6, 1.79769313e308}];
  v26 = v25;
  v28 = v27;

  supplementaryLabel2 = [(HUQuickControlIconView *)self supplementaryLabel];
  [supplementaryLabel2 frame];
  v30 = v29;
  supplementaryLabel3 = [(HUQuickControlIconView *)self supplementaryLabel];
  [supplementaryLabel3 frame];
  v33 = v32;
  supplementaryLabel4 = [(HUQuickControlIconView *)self supplementaryLabel];
  [supplementaryLabel4 setFrame:{v30, v33, v26, v28}];
}

- (CGRect)_getLabelsContainingRect
{
  [(HUQuickControlIconView *)self _updateLabelSizes];
  statusLabel = [(HUQuickControlIconView *)self statusLabel];
  [statusLabel frame];
  v5 = v4;

  supplementaryLabel = [(HUQuickControlIconView *)self supplementaryLabel];
  [supplementaryLabel frame];
  v8 = v7;

  if (v5 >= v8)
  {
    v5 = v8;
  }

  statusLabel2 = [(HUQuickControlIconView *)self statusLabel];
  [statusLabel2 frame];
  v11 = v10;

  supplementaryLabel2 = [(HUQuickControlIconView *)self supplementaryLabel];
  [supplementaryLabel2 frame];
  v14 = v13;

  if (v11 >= v14)
  {
    v11 = v14;
  }

  statusLabel3 = [(HUQuickControlIconView *)self statusLabel];
  [statusLabel3 frame];
  v17 = v16;
  statusLabel4 = [(HUQuickControlIconView *)self statusLabel];
  [statusLabel4 frame];
  v20 = v17 + v19;

  supplementaryLabel3 = [(HUQuickControlIconView *)self supplementaryLabel];
  [supplementaryLabel3 frame];
  v23 = v22;
  supplementaryLabel4 = [(HUQuickControlIconView *)self supplementaryLabel];
  [supplementaryLabel4 frame];
  v26 = v23 + v25;

  if (v20 >= v26)
  {
    v27 = v20;
  }

  else
  {
    v27 = v26;
  }

  v28 = v27 - v5;
  statusLabel5 = [(HUQuickControlIconView *)self statusLabel];
  [statusLabel5 frame];
  v31 = v30;
  statusLabel6 = [(HUQuickControlIconView *)self statusLabel];
  [statusLabel6 frame];
  v34 = v31 + v33;

  supplementaryLabel5 = [(HUQuickControlIconView *)self supplementaryLabel];
  [supplementaryLabel5 frame];
  v37 = v36;
  supplementaryLabel6 = [(HUQuickControlIconView *)self supplementaryLabel];
  [supplementaryLabel6 frame];
  v40 = v37 + v39;

  if (v34 >= v40)
  {
    v41 = v34;
  }

  else
  {
    v41 = v40;
  }

  v42 = v41 - v11;
  v43 = v5;
  v44 = v11;
  v45 = v28;
  result.size.height = v42;
  result.size.width = v45;
  result.origin.y = v44;
  result.origin.x = v43;
  return result;
}

- (void)_updateLabelFramesOrigins
{
  [(HUQuickControlIconView *)self frame];
  v4 = v3 * 0.5;
  statusLabel = [(HUQuickControlIconView *)self statusLabel];
  [statusLabel frame];
  v7 = v4 - v6 * 0.5;

  iconView = [(HUQuickControlIconView *)self iconView];
  [iconView frame];
  v10 = v9;
  iconView2 = [(HUQuickControlIconView *)self iconView];
  [iconView2 frame];
  v13 = v10 + v12 + 6.0;

  statusLabel2 = [(HUQuickControlIconView *)self statusLabel];
  [statusLabel2 frame];
  v16 = v15;
  v18 = v17;

  statusLabel3 = [(HUQuickControlIconView *)self statusLabel];
  [statusLabel3 setFrame:{v7, v13, v16, v18}];

  [(HUQuickControlIconView *)self frame];
  v21 = v20 * 0.5;
  supplementaryLabel = [(HUQuickControlIconView *)self supplementaryLabel];
  [supplementaryLabel frame];
  v24 = v21 - v23 * 0.5;

  statusLabel4 = [(HUQuickControlIconView *)self statusLabel];
  [statusLabel4 frame];
  v27 = v26;
  statusLabel5 = [(HUQuickControlIconView *)self statusLabel];
  [statusLabel5 frame];
  v30 = v27 + v29;

  supplementaryLabel2 = [(HUQuickControlIconView *)self supplementaryLabel];
  [supplementaryLabel2 frame];
  v33 = v32;
  v35 = v34;

  supplementaryLabel3 = [(HUQuickControlIconView *)self supplementaryLabel];
  [supplementaryLabel3 setFrame:{v24, v30, v33, v35}];
}

- (HUQuickControlViewInteractionDelegate)interactionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);

  return WeakRetained;
}

@end