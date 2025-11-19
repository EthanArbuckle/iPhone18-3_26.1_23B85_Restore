@interface HUQuickControlIconView
- (CGRect)_getLabelsContainingRect;
- (CGSize)intrinsicContentSize;
- (HUQuickControlIconView)initWithProfile:(id)a3;
- (HUQuickControlViewInteractionDelegate)interactionDelegate;
- (double)_iconAndLabelsHeight;
- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)a3;
- (void)_updateLabelFramesOrigins;
- (void)_updateLabelSizes;
- (void)_updateLayout;
- (void)_updateUI;
- (void)_updateUIForReachabilityState:(unint64_t)a3;
- (void)layoutSubviews;
- (void)setProfile:(id)a3;
- (void)setValue:(id)a3;
@end

@implementation HUQuickControlIconView

- (HUQuickControlIconView)initWithProfile:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = HUQuickControlIconView;
  v6 = [(HUQuickControlIconView *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_profile, a3);
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

- (void)setProfile:(id)a3
{
  objc_storeStrong(&self->_profile, a3);

  [(HUQuickControlIconView *)self _updateUI];
}

- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)a3
{
  [(HUQuickControlIconView *)self _iconAndLabelsHeight];
  v5 = HUQuickControlIconViewMetricsForControlSize(a3, v4);
  v6 = [v5 sizeDescriptor];

  return v6;
}

- (void)setValue:(id)a3
{
  objc_storeStrong(&self->_viewValue, a3);

  [(HUQuickControlIconView *)self _updateUI];
}

- (CGSize)intrinsicContentSize
{
  [(HUQuickControlIconView *)self _iconAndLabelsHeight];
  v4 = v3;
  v5 = [(HUQuickControlIconView *)self profile];
  v6 = HUQuickControlIconViewMetricsForControlSize([v5 controlSize], v4);
  v7 = [v6 sizeDescriptor];
  [v7 intrinsicSize];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)_updateUIForReachabilityState:(unint64_t)a3
{
  if (a3 <= 2)
  {
    [(HUQuickControlIconView *)self setAlpha:dbl_20D5CA878[a3]];
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
  v3 = [(HUQuickControlIconView *)self profile];
  v4 = [v3 iconDescriptor];

  v5 = [(HUQuickControlIconView *)self profile];
  v6 = [v5 iconDescriptor];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = objc_alloc(MEMORY[0x277D14BD8]);
    v9 = [(HUQuickControlIconView *)self profile];
    v10 = [v9 statusString];
    v11 = [v8 initWithFormattedTemperature:v10 heatingCoolingMode:0 targetHeatingCoolingMode:0];

    v4 = v11;
  }

  v12 = [(HUQuickControlIconView *)self iconView];
  v50 = v4;
  [v12 updateWithIconDescriptor:v4 displayStyle:1 animated:1];

  v13 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] addingSymbolicTraits:2 options:0];
  v14 = objc_opt_new();
  [v14 setAlignment:1];
  LODWORD(v15) = 1.0;
  [v14 setHyphenationFactor:v15];
  [v14 setLineBreakMode:0];
  v16 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v17 = [v16 firstObject];

  v18 = [(HUQuickControlIconView *)self profile];
  v19 = [v18 statusString];
  v20 = v19;
  v21 = &stru_2823E0EE8;
  if (v19)
  {
    v21 = v19;
  }

  v22 = v21;

  v23 = [(HUQuickControlIconView *)self statusLabel];
  v51 = v22;
  [v23 setText:v22];

  v24 = [(HUQuickControlIconView *)self profile];
  v25 = [v24 statusTextColor];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = [MEMORY[0x277D75348] labelColor];
  }

  v28 = v27;
  v49 = v27;

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
  v55[3] = v17;
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:4];
  v48 = v47 = v14;

  v35 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v51 attributes:v48];
  v36 = [(HUQuickControlIconView *)self statusLabel];
  [v36 setAttributedText:v35];

  v37 = [(HUQuickControlIconView *)self profile];
  v38 = [v37 supplementaryString];
  v39 = v38;
  v40 = &stru_2823E0EE8;
  if (v38)
  {
    v40 = v38;
  }

  v41 = v40;

  v52[0] = v29;
  v42 = [MEMORY[0x277D75348] secondaryLabelColor];
  v53[0] = v42;
  v52[1] = v30;
  v43 = [MEMORY[0x277D74300] fontWithDescriptor:v31 size:0.0];
  v53[1] = v43;
  v53[2] = v47;
  v52[2] = v33;
  v52[3] = v34;
  v53[3] = v17;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:4];

  v45 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v41 attributes:v44];
  v46 = [(HUQuickControlIconView *)self supplementaryLabel];
  [v46 setAttributedText:v45];

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
  v9 = [(HUQuickControlIconView *)self iconView];
  [v9 setFrame:{v6, v8, 70.0, 70.0}];

  [(HUQuickControlIconView *)self _updateLabelFramesOrigins];
}

- (void)_updateLabelSizes
{
  v3 = [(HUQuickControlIconView *)self profile];
  v4 = [v3 controlSize];
  v5 = 120.0;
  if (v4 == 1)
  {
    v5 = 280.0;
  }

  if (v4)
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
    v9 = [(HUQuickControlIconView *)self iconView];
    [v9 frame];
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

  v12 = [(HUQuickControlIconView *)self statusLabel];
  [v12 sizeThatFits:{v6, 1.79769313e308}];
  v14 = v13;
  v16 = v15;

  v17 = [(HUQuickControlIconView *)self statusLabel];
  [v17 frame];
  v19 = v18;
  v20 = [(HUQuickControlIconView *)self statusLabel];
  [v20 frame];
  v22 = v21;
  v23 = [(HUQuickControlIconView *)self statusLabel];
  [v23 setFrame:{v19, v22, v14, v16}];

  v24 = [(HUQuickControlIconView *)self supplementaryLabel];
  [v24 sizeThatFits:{v6, 1.79769313e308}];
  v26 = v25;
  v28 = v27;

  v35 = [(HUQuickControlIconView *)self supplementaryLabel];
  [v35 frame];
  v30 = v29;
  v31 = [(HUQuickControlIconView *)self supplementaryLabel];
  [v31 frame];
  v33 = v32;
  v34 = [(HUQuickControlIconView *)self supplementaryLabel];
  [v34 setFrame:{v30, v33, v26, v28}];
}

- (CGRect)_getLabelsContainingRect
{
  [(HUQuickControlIconView *)self _updateLabelSizes];
  v3 = [(HUQuickControlIconView *)self statusLabel];
  [v3 frame];
  v5 = v4;

  v6 = [(HUQuickControlIconView *)self supplementaryLabel];
  [v6 frame];
  v8 = v7;

  if (v5 >= v8)
  {
    v5 = v8;
  }

  v9 = [(HUQuickControlIconView *)self statusLabel];
  [v9 frame];
  v11 = v10;

  v12 = [(HUQuickControlIconView *)self supplementaryLabel];
  [v12 frame];
  v14 = v13;

  if (v11 >= v14)
  {
    v11 = v14;
  }

  v15 = [(HUQuickControlIconView *)self statusLabel];
  [v15 frame];
  v17 = v16;
  v18 = [(HUQuickControlIconView *)self statusLabel];
  [v18 frame];
  v20 = v17 + v19;

  v21 = [(HUQuickControlIconView *)self supplementaryLabel];
  [v21 frame];
  v23 = v22;
  v24 = [(HUQuickControlIconView *)self supplementaryLabel];
  [v24 frame];
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
  v29 = [(HUQuickControlIconView *)self statusLabel];
  [v29 frame];
  v31 = v30;
  v32 = [(HUQuickControlIconView *)self statusLabel];
  [v32 frame];
  v34 = v31 + v33;

  v35 = [(HUQuickControlIconView *)self supplementaryLabel];
  [v35 frame];
  v37 = v36;
  v38 = [(HUQuickControlIconView *)self supplementaryLabel];
  [v38 frame];
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
  v5 = [(HUQuickControlIconView *)self statusLabel];
  [v5 frame];
  v7 = v4 - v6 * 0.5;

  v8 = [(HUQuickControlIconView *)self iconView];
  [v8 frame];
  v10 = v9;
  v11 = [(HUQuickControlIconView *)self iconView];
  [v11 frame];
  v13 = v10 + v12 + 6.0;

  v14 = [(HUQuickControlIconView *)self statusLabel];
  [v14 frame];
  v16 = v15;
  v18 = v17;

  v19 = [(HUQuickControlIconView *)self statusLabel];
  [v19 setFrame:{v7, v13, v16, v18}];

  [(HUQuickControlIconView *)self frame];
  v21 = v20 * 0.5;
  v22 = [(HUQuickControlIconView *)self supplementaryLabel];
  [v22 frame];
  v24 = v21 - v23 * 0.5;

  v25 = [(HUQuickControlIconView *)self statusLabel];
  [v25 frame];
  v27 = v26;
  v28 = [(HUQuickControlIconView *)self statusLabel];
  [v28 frame];
  v30 = v27 + v29;

  v31 = [(HUQuickControlIconView *)self supplementaryLabel];
  [v31 frame];
  v33 = v32;
  v35 = v34;

  v36 = [(HUQuickControlIconView *)self supplementaryLabel];
  [v36 setFrame:{v24, v30, v33, v35}];
}

- (HUQuickControlViewInteractionDelegate)interactionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);

  return WeakRetained;
}

@end