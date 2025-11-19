@interface HUQuickControlSummaryView
- (HUQuickControlSummaryView)initWithFrame:(CGRect)a3;
- (void)baseIconViewDidUpdateConfiguration:(id)a3;
- (void)setBaseIconView:(id)a3;
- (void)setImage:(id)a3;
- (void)setMicrophoneStatusText:(id)a3;
- (void)setPrimaryText:(id)a3;
- (void)setSecondaryText:(id)a3;
- (void)updateConstraints;
@end

@implementation HUQuickControlSummaryView

- (HUQuickControlSummaryView)initWithFrame:(CGRect)a3
{
  v38.receiver = self;
  v38.super_class = HUQuickControlSummaryView;
  v3 = [(HUQuickControlSummaryView *)&v38 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    if ([MEMORY[0x277D14CE8] shouldUseProxHandOffMaterials])
    {
      v4 = [MEMORY[0x277D14990] sharedInstance];
      objc_opt_class();
      v5 = [v4 lastIdentifier];
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;

      objc_opt_class();
      v8 = [v4 lastIdentifier];
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;

      if (v7)
      {
        v11 = v7;
      }

      else
      {
        v11 = v10;
      }

      v19 = [v11 assetType];
      if (v19)
      {
        v20 = MEMORY[0x277D435D0];
        v21 = [v4 lastDisambiguationContext];
        v22 = [v21 activity];
        v19 = [v20 composedImageFor:v22 assetType:v19];
      }

      v23 = objc_alloc_init(MEMORY[0x277D755E8]);
      imageView = v3->_imageView;
      v3->_imageView = v23;

      [(UIImageView *)v3->_imageView setContentMode:1];
      [(UIImageView *)v3->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(HUQuickControlSummaryView *)v3 addSubview:v3->_imageView];
      if (v19)
      {
        [(HUQuickControlSummaryView *)v3 setImage:v19];
      }
    }

    else
    {
      if ([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation])
      {
        v12 = objc_alloc_init(MEMORY[0x277D180D0]);
        iconView = v3->_iconView;
        v3->_iconView = v12;

        [(HUIconView *)v3->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
        [(HUIconView *)v3->_iconView setDisplayContext:0];
        [(HUIconView *)v3->_iconView setIconSize:3];
        v14 = [MEMORY[0x277D75348] systemMidGrayColor];
        [(HUIconView *)v3->_iconView setTintColor:v14];

        [(HUIconView *)v3->_iconView setContentMode:1];
        if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
        {
          v15 = [MEMORY[0x277D75D00] controlCenterSecondaryVibrancyEffect];
          [(HUIconView *)v3->_iconView setVibrancyEffect:v15];
        }

        else
        {
          [(HUIconView *)v3->_iconView setVibrancyEffect:0];
        }

        v18 = v3->_iconView;
      }

      else
      {
        v16 = objc_alloc_init(HUBaseIconView);
        baseIconView = v3->_baseIconView;
        v3->_baseIconView = v16;

        [(HUBaseIconView *)v3->_baseIconView setTranslatesAutoresizingMaskIntoConstraints:0];
        [(HUBaseIconView *)v3->_baseIconView setDelegate:v3];
        v18 = v3->_baseIconView;
      }

      [(HUQuickControlSummaryView *)v3 addSubview:v18];
    }

    v25 = objc_alloc_init(MEMORY[0x277D756B8]);
    primaryLabel = v3->_primaryLabel;
    v3->_primaryLabel = v25;

    [(UILabel *)v3->_primaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_primaryLabel setNumberOfLines:2];
    v27 = *MEMORY[0x277D76918];
    v28 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76918] variant:1024];
    [(UILabel *)v3->_primaryLabel setFont:v28];

    [(UILabel *)v3->_primaryLabel setAdjustsFontForContentSizeCategory:1];
    [(HUQuickControlSummaryView *)v3 addSubview:v3->_primaryLabel];
    v29 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
    secondaryLabelEffectView = v3->_secondaryLabelEffectView;
    v3->_secondaryLabelEffectView = v29;

    [(UIVisualEffectView *)v3->_secondaryLabelEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
    if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
    {
      v31 = [MEMORY[0x277D75D00] controlCenterSecondaryVibrancyEffect];
      [(UIVisualEffectView *)v3->_secondaryLabelEffectView setEffect:v31];
    }

    else
    {
      [(UIVisualEffectView *)v3->_secondaryLabelEffectView setEffect:0];
    }

    [(HUQuickControlSummaryView *)v3 addSubview:v3->_secondaryLabelEffectView];
    v32 = objc_alloc_init(MEMORY[0x277D756B8]);
    secondaryLabel = v3->_secondaryLabel;
    v3->_secondaryLabel = v32;

    [(UILabel *)v3->_secondaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_secondaryLabel setNumberOfLines:0];
    v34 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v3->_secondaryLabel setTextColor:v34];

    v35 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v27 variant:1024];
    [(UILabel *)v3->_secondaryLabel setFont:v35];

    [(UILabel *)v3->_secondaryLabel setAdjustsFontForContentSizeCategory:1];
    v36 = [(UIVisualEffectView *)v3->_secondaryLabelEffectView contentView];
    [v36 addSubview:v3->_secondaryLabel];

    v3->_preferredIconAlignment = 0;
  }

  return v3;
}

- (void)setBaseIconView:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    [(HUBaseIconView *)self->_baseIconView removeFromSuperview];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v6 setDelegate:self];
    [(HUQuickControlSummaryView *)self addSubview:v6];
    objc_storeStrong(&self->_baseIconView, a3);
    v5 = v6;
  }
}

- (void)setPrimaryText:(id)a3
{
  v8 = a3;
  if (![(NSString *)self->_primaryText isEqualToString:?])
  {
    objc_storeStrong(&self->_primaryText, a3);
    primaryText = self->_primaryText;
    v6 = [(HUQuickControlSummaryView *)self primaryLabel];
    [v6 setText:primaryText];

    v7 = [(HUQuickControlSummaryView *)self primaryLabel];
    [v7 setNeedsLayout];
  }
}

- (void)setSecondaryText:(id)a3
{
  v8 = a3;
  if (![(NSString *)self->_secondaryText isEqualToString:?])
  {
    objc_storeStrong(&self->_secondaryText, a3);
    secondaryText = self->_secondaryText;
    v6 = [(HUQuickControlSummaryView *)self secondaryLabel];
    [v6 setText:secondaryText];

    v7 = [(HUQuickControlSummaryView *)self secondaryLabel];
    [v7 setNeedsLayout];
  }
}

- (void)setMicrophoneStatusText:(id)a3
{
  v8 = a3;
  if (![(NSAttributedString *)self->_microphoneStatusText isEqualToAttributedString:?])
  {
    objc_storeStrong(&self->_microphoneStatusText, a3);
    microphoneStatusText = self->_microphoneStatusText;
    v6 = [(HUQuickControlSummaryView *)self secondaryLabel];
    [v6 setAttributedText:microphoneStatusText];

    v7 = [(HUQuickControlSummaryView *)self secondaryLabel];
    [v7 setNeedsLayout];
  }
}

- (void)setImage:(id)a3
{
  v6 = a3;
  if (([(UIImage *)self->_image isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_image, a3);
    v5 = [(HUQuickControlSummaryView *)self imageView];
    [v5 setImage:v6];
  }
}

- (void)updateConstraints
{
  v135.receiver = self;
  v135.super_class = HUQuickControlSummaryView;
  [(HUQuickControlSummaryView *)&v135 updateConstraints];
  v3 = [(HUQuickControlSummaryView *)self contentConstraints];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAD0];
    v5 = [(HUQuickControlSummaryView *)self contentConstraints];
    [v4 deactivateConstraints:v5];
  }

  [(HUQuickControlSummaryView *)self setBaseIconViewWidthConstraint:0];
  v6 = objc_opt_new();
  [(HUQuickControlSummaryView *)self setContentConstraints:v6];

  if ([MEMORY[0x277D14CE8] shouldUseProxHandOffMaterials])
  {
    v7 = [(HUQuickControlSummaryView *)self contentConstraints];
    v8 = [(HUQuickControlSummaryView *)self imageView];
    v9 = [v8 leadingAnchor];
    v10 = [(HUQuickControlSummaryView *)self leadingAnchor];
    v11 = [v9 constraintEqualToAnchor:v10 constant:14.0];
    [v7 addObject:v11];

    v12 = [(HUQuickControlSummaryView *)self contentConstraints];
    v13 = [(HUQuickControlSummaryView *)self primaryLabel];
    v14 = [v13 leadingAnchor];
    v15 = [(HUQuickControlSummaryView *)self imageView];
  }

  else
  {
    v16 = [MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation];
    v17 = [(HUQuickControlSummaryView *)self contentConstraints];
    if (v16)
    {
      v18 = [(HUQuickControlSummaryView *)self iconView];
      v19 = [v18 leadingAnchor];
      v20 = [(HUQuickControlSummaryView *)self leadingAnchor];
      v21 = [v19 constraintEqualToAnchor:v20 constant:14.0];
      [v17 addObject:v21];

      v12 = [(HUQuickControlSummaryView *)self contentConstraints];
      v13 = [(HUQuickControlSummaryView *)self primaryLabel];
      v14 = [v13 leadingAnchor];
      [(HUQuickControlSummaryView *)self iconView];
    }

    else
    {
      v22 = [(HUQuickControlSummaryView *)self baseIconView];
      v23 = [v22 leadingAnchor];
      v24 = [(HUQuickControlSummaryView *)self leadingAnchor];
      v25 = [v23 constraintEqualToAnchor:v24 constant:14.0];
      [v17 addObject:v25];

      v12 = [(HUQuickControlSummaryView *)self contentConstraints];
      v13 = [(HUQuickControlSummaryView *)self primaryLabel];
      v14 = [v13 leadingAnchor];
      [(HUQuickControlSummaryView *)self baseIconView];
    }
    v15 = ;
  }

  v26 = v15;
  v27 = [v15 trailingAnchor];
  v28 = [v14 constraintEqualToAnchor:v27 constant:14.0];
  [v12 addObject:v28];

  v29 = [(HUQuickControlSummaryView *)self contentConstraints];
  v30 = [(HUQuickControlSummaryView *)self primaryLabel];
  v31 = [v30 trailingAnchor];
  v32 = [(HUQuickControlSummaryView *)self layoutMarginsGuide];
  v33 = [v32 trailingAnchor];
  v34 = [v31 constraintEqualToAnchor:v33];
  [v29 addObject:v34];

  v35 = [(HUQuickControlSummaryView *)self contentConstraints];
  v36 = [(HUQuickControlSummaryView *)self secondaryLabelEffectView];
  v37 = [v36 leadingAnchor];
  v38 = [(HUQuickControlSummaryView *)self primaryLabel];
  v39 = [v38 leadingAnchor];
  v40 = [v37 constraintEqualToAnchor:v39];
  [v35 addObject:v40];

  v41 = [(HUQuickControlSummaryView *)self contentConstraints];
  v42 = [(HUQuickControlSummaryView *)self secondaryLabelEffectView];
  v43 = [v42 trailingAnchor];
  v44 = [(HUQuickControlSummaryView *)self layoutMarginsGuide];
  v45 = [v44 trailingAnchor];
  v46 = [v43 constraintEqualToAnchor:v45];
  [v41 addObject:v46];

  v47 = [(HUQuickControlSummaryView *)self contentConstraints];
  v48 = [(HUQuickControlSummaryView *)self secondaryLabel];
  v49 = [v48 leadingAnchor];
  v50 = [(HUQuickControlSummaryView *)self secondaryLabelEffectView];
  v51 = [v50 leadingAnchor];
  v52 = [v49 constraintEqualToAnchor:v51];
  [v47 addObject:v52];

  v53 = [(HUQuickControlSummaryView *)self contentConstraints];
  v54 = [(HUQuickControlSummaryView *)self secondaryLabel];
  v55 = [v54 trailingAnchor];
  v56 = [(HUQuickControlSummaryView *)self secondaryLabelEffectView];
  v57 = [v56 trailingAnchor];
  v58 = [v55 constraintEqualToAnchor:v57];
  [v53 addObject:v58];

  if ([MEMORY[0x277D14CE8] shouldUseProxHandOffMaterials])
  {
    v59 = [(HUQuickControlSummaryView *)self contentConstraints];
    v60 = [(HUQuickControlSummaryView *)self imageView];
    v61 = [v60 topAnchor];
    v62 = [(HUQuickControlSummaryView *)self topAnchor];
    v63 = [v61 constraintEqualToAnchor:v62 constant:14.0];
LABEL_11:
    v64 = v63;
    [v59 addObject:v63];
    goto LABEL_20;
  }

  if ([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation])
  {
    v65 = [(HUQuickControlSummaryView *)self contentConstraints];
    v66 = [(HUQuickControlSummaryView *)self iconView];
    v67 = [v66 topAnchor];
    v68 = [(HUQuickControlSummaryView *)self layoutMarginsGuide];
    v69 = [v68 topAnchor];
    v70 = [v67 constraintEqualToAnchor:v69 constant:14.0];
    [v65 addObject:v70];

    v59 = [(HUQuickControlSummaryView *)self contentConstraints];
    v71 = [(HUQuickControlSummaryView *)self iconView];
  }

  else
  {
    v72 = [(HUQuickControlSummaryView *)self preferredIconAlignment];
    v59 = [(HUQuickControlSummaryView *)self contentConstraints];
    v73 = [(HUQuickControlSummaryView *)self baseIconView];
    v60 = v73;
    if (v72 == 1)
    {
      v61 = [v73 centerYAnchor];
      v62 = [(HUQuickControlSummaryView *)self centerYAnchor];
      v63 = [v61 constraintEqualToAnchor:v62];
      goto LABEL_11;
    }

    v74 = [v73 topAnchor];
    v75 = [(HUQuickControlSummaryView *)self layoutMarginsGuide];
    v76 = [v75 topAnchor];
    v77 = [(HUQuickControlSummaryView *)self baseIconView];
    v78 = [v77 configuration];
    v79 = [v78 viewType];
    v80 = 14.0;
    if (!v79)
    {
      v80 = 0.0;
    }

    v81 = [v74 constraintEqualToAnchor:v76 constant:v80];
    [v59 addObject:v81];

    v59 = [(HUQuickControlSummaryView *)self contentConstraints];
    v71 = [(HUQuickControlSummaryView *)self baseIconView];
  }

  v60 = v71;
  v61 = [v71 bottomAnchor];
  v62 = [(HUQuickControlSummaryView *)self layoutMarginsGuide];
  v64 = [v62 bottomAnchor];
  v82 = [v61 constraintLessThanOrEqualToAnchor:v64];
  [v59 addObject:v82];

LABEL_20:
  v83 = [(HUQuickControlSummaryView *)self contentConstraints];
  v84 = [(HUQuickControlSummaryView *)self primaryLabel];
  v85 = [v84 topAnchor];
  v86 = [(HUQuickControlSummaryView *)self topAnchor];
  v87 = [v85 constraintEqualToAnchor:v86 constant:16.0];
  [v83 addObject:v87];

  v88 = [(HUQuickControlSummaryView *)self contentConstraints];
  v89 = [(HUQuickControlSummaryView *)self primaryLabel];
  v90 = [v89 bottomAnchor];
  v91 = [(HUQuickControlSummaryView *)self secondaryLabelEffectView];
  v92 = [v91 topAnchor];
  v93 = [v90 constraintEqualToAnchor:v92];
  [v88 addObject:v93];

  v94 = [(HUQuickControlSummaryView *)self contentConstraints];
  v95 = [(HUQuickControlSummaryView *)self secondaryLabelEffectView];
  v96 = [v95 bottomAnchor];
  v97 = [(HUQuickControlSummaryView *)self bottomAnchor];
  v98 = [v96 constraintLessThanOrEqualToAnchor:v97 constant:-16.0];
  [v94 addObject:v98];

  v99 = [(HUQuickControlSummaryView *)self contentConstraints];
  v100 = [(HUQuickControlSummaryView *)self secondaryLabel];
  v101 = [v100 topAnchor];
  v102 = [(HUQuickControlSummaryView *)self secondaryLabelEffectView];
  v103 = [v102 topAnchor];
  v104 = [v101 constraintEqualToAnchor:v103];
  [v99 addObject:v104];

  v105 = [(HUQuickControlSummaryView *)self contentConstraints];
  v106 = [(HUQuickControlSummaryView *)self secondaryLabel];
  v107 = [v106 bottomAnchor];
  v108 = [(HUQuickControlSummaryView *)self secondaryLabelEffectView];
  v109 = [v108 bottomAnchor];
  v110 = [v107 constraintEqualToAnchor:v109];
  [v105 addObject:v110];

  if ([MEMORY[0x277D14CE8] shouldUseProxHandOffMaterials])
  {
    v111 = [(HUQuickControlSummaryView *)self contentConstraints];
    v112 = [(HUQuickControlSummaryView *)self imageView];
    v113 = [v112 heightAnchor];
    v114 = [v113 constraintEqualToConstant:44.0];
    [v111 addObject:v114];

    v115 = [(HUQuickControlSummaryView *)self contentConstraints];
    v116 = [(HUQuickControlSummaryView *)self imageView];
    v117 = [v116 widthAnchor];
    v118 = [v117 constraintEqualToConstant:44.0];
    [v115 addObject:v118];
LABEL_24:

    goto LABEL_25;
  }

  if ([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation])
  {
    v119 = [(HUQuickControlSummaryView *)self contentConstraints];
    v120 = [(HUQuickControlSummaryView *)self iconView];
    v121 = [v120 heightAnchor];
    v122 = [(HUQuickControlSummaryView *)self iconView];
    [v122 iconSize];
    HUDefaultSizeForIconSize();
    v124 = [v121 constraintEqualToConstant:v123];
    [v119 addObject:v124];

    v115 = [(HUQuickControlSummaryView *)self contentConstraints];
    v116 = [(HUQuickControlSummaryView *)self iconView];
    v117 = [v116 widthAnchor];
    v118 = [(HUQuickControlSummaryView *)self iconView];
    [v118 iconSize];
    HUDefaultSizeForIconSize();
    v125 = [v117 constraintEqualToConstant:?];
    [v115 addObject:v125];

    goto LABEL_24;
  }

  v128 = [(HUQuickControlSummaryView *)self baseIconView];
  v129 = [v128 configuration];
  v130 = [v129 viewType];

  if (v130)
  {
    goto LABEL_26;
  }

  v131 = [(HUQuickControlSummaryView *)self baseIconView];
  v132 = [v131 widthAnchor];
  v133 = [(HUQuickControlSummaryView *)self baseIconView];
  [v133 intrinsicContentSize];
  v134 = [v132 constraintEqualToConstant:?];
  [(HUQuickControlSummaryView *)self setBaseIconViewWidthConstraint:v134];

  v115 = [(HUQuickControlSummaryView *)self contentConstraints];
  v116 = [(HUQuickControlSummaryView *)self baseIconViewWidthConstraint];
  [v115 addObject:v116];
LABEL_25:

LABEL_26:
  v126 = MEMORY[0x277CCAAD0];
  v127 = [(HUQuickControlSummaryView *)self contentConstraints];
  [v126 activateConstraints:v127];
}

- (void)baseIconViewDidUpdateConfiguration:(id)a3
{
  v10 = a3;
  v4 = [(HUQuickControlSummaryView *)self baseIconView];
  v5 = [v4 configuration];
  v6 = [v5 viewType];

  if (!v6)
  {
    [v10 intrinsicContentSize];
    v8 = v7;
    v9 = [(HUQuickControlSummaryView *)self baseIconViewWidthConstraint];
    [v9 setConstant:v8];
  }
}

@end