@interface HUGridHomeCell
- (HUGridHomeCell)initWithFrame:(CGRect)a3;
- (id)cellLayoutOptions;
- (void)_invalidateConstraints;
- (void)_setupCell;
- (void)_updatePrimaryLabel;
- (void)layoutOptionsDidChange;
- (void)prepareForReuse;
- (void)setMosaicLayoutGeometry:(id)a3;
- (void)setShouldShowAsEmptyHome:(BOOL)a3;
- (void)setShouldShowHomeName:(BOOL)a3;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUGridHomeCell

- (HUGridHomeCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = HUGridHomeCell;
  v3 = [(HUGridCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_shouldShowHomeName = 0;
    v3->_shouldShowAsEmptyHome = 0;
    [(HUGridHomeCell *)v3 _setupCell];
  }

  return v4;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = HUGridHomeCell;
  [(HUGridCell *)&v5 prepareForReuse];
  [(HUGridHomeCell *)self setShouldShowHomeName:0];
  [(HUGridHomeCell *)self setShouldShowAsEmptyHome:0];
  [(HUGridHomeCell *)self setItem:0];
  v3 = [(HUGridHomeCell *)self primaryLabel];
  [v3 setText:&stru_2823E0EE8];

  v4 = [(HUGridHomeCell *)self infoView];
  [v4 resetView];
}

- (void)setShouldShowAsEmptyHome:(BOOL)a3
{
  self->_shouldShowAsEmptyHome = a3;
  v4 = [(HUGridHomeCell *)self shouldShowAsEmptyHome];
  v5 = [(HUGridHomeCell *)self infoView];
  [v5 setHidden:v4 ^ 1];

  v6 = [(HUGridHomeCell *)self iconView];
  [v6 setHidden:v4];

  v7 = [(HUGridHomeCell *)self verticalStackView];
  [v7 setHidden:v4];

  v8 = [(HUGridCell *)self gridBackgroundView];
  [v8 setHidden:v4];
}

- (void)_setupCell
{
  v48[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D755E8]);
  [(HUGridHomeCell *)self setIconView:v3];

  v4 = [(HUGridHomeCell *)self iconView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(HUGridHomeCell *)self iconView];
  [v5 setContentMode:1];

  v6 = [MEMORY[0x277D75348] systemWhiteColor];
  v7 = [(HUGridHomeCell *)self iconView];
  [v7 setTintColor:v6];

  v8 = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:38.0];
  v9 = [MEMORY[0x277D755B8] systemImageNamed:@"homekit"];
  v10 = [v9 imageWithConfiguration:v8];
  v11 = [v10 imageWithRenderingMode:2];
  v12 = [(HUGridHomeCell *)self iconView];
  [v12 setImage:v11];

  v13 = [(HUGridHomeCell *)self contentView];
  v14 = [(HUGridHomeCell *)self iconView];
  [v13 addSubview:v14];

  v15 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HUGridHomeCell *)self setPrimaryLabel:v15];

  v16 = [(HUGridHomeCell *)self primaryLabel];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = [MEMORY[0x277D75348] systemWhiteColor];
  v18 = [(HUGridHomeCell *)self primaryLabel];
  [v18 setTextColor:v17];

  v19 = [(HUGridHomeCell *)self primaryLabel];
  [v19 setAdjustsFontForContentSizeCategory:1];

  v20 = [(HUGridHomeCell *)self primaryLabel];
  [v20 setNumberOfLines:2];

  v21 = objc_alloc(MEMORY[0x277D75D68]);
  v22 = [(HUGridCell *)self layoutOptions];
  v23 = [v22 secondaryVibrancyEffect];
  v24 = [v21 initWithEffect:v23];
  [(HUGridHomeCell *)self setSecondaryLabelEffectView:v24];

  v25 = [(HUGridHomeCell *)self secondaryLabelEffectView];
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];

  v26 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HUGridHomeCell *)self setSecondaryLabel:v26];

  v27 = [(HUGridHomeCell *)self secondaryLabel];
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];

  v28 = [MEMORY[0x277D75348] systemWhiteColor];
  v29 = [(HUGridHomeCell *)self secondaryLabel];
  [v29 setTextColor:v28];

  v30 = [(HUGridHomeCell *)self secondaryLabel];
  [v30 setAdjustsFontForContentSizeCategory:1];

  v31 = [(HUGridHomeCell *)self secondaryLabelEffectView];
  v32 = [v31 contentView];
  v33 = [(HUGridHomeCell *)self secondaryLabel];
  [v32 addSubview:v33];

  v34 = objc_alloc(MEMORY[0x277D75A68]);
  v35 = [(HUGridHomeCell *)self primaryLabel];
  v48[0] = v35;
  v36 = [(HUGridHomeCell *)self secondaryLabelEffectView];
  v48[1] = v36;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
  v38 = [v34 initWithArrangedSubviews:v37];
  [(HUGridHomeCell *)self setVerticalStackView:v38];

  v39 = [(HUGridHomeCell *)self verticalStackView];
  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];

  v40 = [(HUGridHomeCell *)self verticalStackView];
  [v40 setAxis:1];

  v41 = [(HUGridHomeCell *)self contentView];
  v42 = [(HUGridHomeCell *)self verticalStackView];
  [v41 addSubview:v42];

  v43 = [HUCCInfoMosaicGridView alloc];
  v44 = [(HUCCInfoMosaicGridView *)v43 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(HUGridHomeCell *)self setInfoView:v44];

  v45 = [(HUGridHomeCell *)self contentView];
  v46 = [(HUGridHomeCell *)self infoView];
  [v45 addSubview:v46];

  v47 = [(HUGridHomeCell *)self infoView];
  [v47 setHidden:1];
}

- (id)cellLayoutOptions
{
  v3 = [objc_opt_class() layoutOptionsClass];
  v4 = [(HUGridCell *)self layoutOptions];
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v4;
    if (v5)
    {
      goto LABEL_8;
    }

    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v7 handleFailureInFunction:v8 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v3, objc_opt_class()}];
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (void)setShouldShowHomeName:(BOOL)a3
{
  if (self->_shouldShowHomeName != a3)
  {
    self->_shouldShowHomeName = a3;
    [(HUGridHomeCell *)self _updatePrimaryLabel];
  }
}

- (void)_updatePrimaryLabel
{
  if ([(HUGridHomeCell *)self shouldShowHomeName])
  {
    v3 = [(HUGridHomeCell *)self item];
    v4 = [v3 latestResults];
    v10 = [v4 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  }

  else
  {
    v10 = _HULocalizedStringWithDefaultValue(@"HUControlCenterHomeTileTitle", @"HUControlCenterHomeTileTitle", 1);
  }

  v5 = [(HUGridHomeCell *)self primaryLabel];
  v6 = [v5 text];
  v7 = [v6 isEqualToString:v10];

  if ((v7 & 1) == 0)
  {
    v8 = [(HUGridHomeCell *)self primaryLabel];
    [v8 setText:v10];

    v9 = [(HUGridHomeCell *)self primaryLabel];
    [v9 sizeToFit];
  }
}

- (void)setMosaicLayoutGeometry:(id)a3
{
  v4 = a3;
  v5 = [(HUGridHomeCell *)self infoView];
  [v5 setMosaicLayoutGeometry:v4];
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v3 = a3;
  v15[1] = *MEMORY[0x277D85DE8];
  if ([(HUGridHomeCell *)self shouldShowAsEmptyHome])
  {
    v14.receiver = self;
    v14.super_class = HUGridHomeCell;
    [(HUGridCell *)&v14 updateUIWithAnimation:v3];
LABEL_8:
    v10 = [(HUGridHomeCell *)self primaryLabel];
    [v10 setText:&stru_2823E0EE8];

    goto LABEL_9;
  }

  v5 = [(HUGridHomeCell *)self item];
  v15[0] = *MEMORY[0x277D13F60];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v7 = [v5 resultsContainRequiredProperties:v6];

  v8 = [(HUGridHomeCell *)self item];

  if (v8 && (v7 & 1) == 0)
  {
    v9 = [(HUGridHomeCell *)self item];
    NSLog(&cfstr_ItemIsMissingR.isa, v9);
  }

  v14.receiver = self;
  v14.super_class = HUGridHomeCell;
  [(HUGridCell *)&v14 updateUIWithAnimation:v3];
  if ((v7 & 1) == 0)
  {
    goto LABEL_8;
  }

  [(HUGridHomeCell *)self _updatePrimaryLabel];
LABEL_9:
  v11 = [(HUGridHomeCell *)self infoView];
  v12 = _HULocalizedStringWithDefaultValue(@"HUControlCenterEmptyHomeWarning", @"HUControlCenterEmptyHomeWarning", 1);
  v13 = _HULocalizedStringWithDefaultValue(@"HUControlCenterEmptyHomeAction", @"HUControlCenterEmptyHomeAction", 1);
  [v11 updateUIWithInfoText:v12 andActionText:v13];
}

- (void)layoutOptionsDidChange
{
  v12.receiver = self;
  v12.super_class = HUGridHomeCell;
  [(HUGridCell *)&v12 layoutOptionsDidChange];
  [(HUGridHomeCell *)self _invalidateConstraints];
  v3 = [(HUGridCell *)self layoutOptions];
  v4 = [v3 font];
  v5 = [(HUGridHomeCell *)self primaryLabel];
  [v5 setFont:v4];

  v6 = [(HUGridCell *)self layoutOptions];
  v7 = [v6 font];
  v8 = [(HUGridHomeCell *)self secondaryLabel];
  [v8 setFont:v7];

  v9 = [(HUGridCell *)self layoutOptions];
  v10 = [v9 secondaryVibrancyEffect];
  v11 = [(HUGridHomeCell *)self secondaryLabelEffectView];
  [v11 setEffect:v10];
}

- (void)_invalidateConstraints
{
  v3 = [(HUGridHomeCell *)self cellConstraints];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAD0];
    v5 = [(HUGridHomeCell *)self cellConstraints];
    [v4 deactivateConstraints:v5];

    [(HUGridHomeCell *)self setCellConstraints:0];
  }

  [(HUGridHomeCell *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  v111[19] = *MEMORY[0x277D85DE8];
  v110.receiver = self;
  v110.super_class = HUGridHomeCell;
  [(HUGridHomeCell *)&v110 updateConstraints];
  v3 = [(HUGridHomeCell *)self cellConstraints];

  if (!v3)
  {
    v109 = [(HUGridHomeCell *)self iconView];
    v107 = [v109 leadingAnchor];
    v108 = [(HUGridHomeCell *)self contentView];
    v105 = [v108 leadingAnchor];
    v106 = [(HUGridHomeCell *)self cellLayoutOptions];
    [v106 cellInnerMargin];
    v104 = [v107 constraintEqualToAnchor:v105 constant:v4 * 1.5];
    v111[0] = v104;
    v103 = [(HUGridHomeCell *)self iconView];
    v101 = [v103 trailingAnchor];
    v102 = [(HUGridHomeCell *)self verticalStackView];
    v99 = [v102 leadingAnchor];
    v100 = [(HUGridHomeCell *)self cellLayoutOptions];
    [v100 iconInnerHorizontalMargin];
    v98 = [v101 constraintEqualToAnchor:v99 constant:-v5];
    v111[1] = v98;
    v97 = [(HUGridHomeCell *)self verticalStackView];
    v95 = [v97 trailingAnchor];
    v96 = [(HUGridHomeCell *)self contentView];
    v93 = [v96 trailingAnchor];
    v94 = [(HUGridHomeCell *)self cellLayoutOptions];
    [v94 cellInnerMargin];
    v92 = [v95 constraintEqualToAnchor:v93 constant:v6 * -1.5];
    v111[2] = v92;
    v91 = [(HUGridHomeCell *)self secondaryLabel];
    v89 = [v91 leadingAnchor];
    v90 = [(HUGridHomeCell *)self secondaryLabelEffectView];
    v88 = [v90 leadingAnchor];
    v87 = [v89 constraintEqualToAnchor:v88];
    v111[3] = v87;
    v86 = [(HUGridHomeCell *)self secondaryLabel];
    v84 = [v86 trailingAnchor];
    v85 = [(HUGridHomeCell *)self secondaryLabelEffectView];
    v83 = [v85 trailingAnchor];
    v82 = [v84 constraintEqualToAnchor:v83];
    v111[4] = v82;
    v81 = [(HUGridHomeCell *)self iconView];
    v79 = [v81 topAnchor];
    v80 = [(HUGridHomeCell *)self contentView];
    v77 = [v80 topAnchor];
    v78 = [(HUGridHomeCell *)self cellLayoutOptions];
    [v78 cellInnerMargin];
    v76 = [v79 constraintGreaterThanOrEqualToAnchor:v77 constant:?];
    v111[5] = v76;
    v75 = [(HUGridHomeCell *)self iconView];
    v73 = [v75 bottomAnchor];
    v74 = [(HUGridHomeCell *)self contentView];
    v71 = [v74 bottomAnchor];
    v72 = [(HUGridHomeCell *)self cellLayoutOptions];
    [v72 cellInnerMargin];
    v70 = [v73 constraintLessThanOrEqualToAnchor:v71 constant:-v7];
    v111[6] = v70;
    v69 = [(HUGridHomeCell *)self iconView];
    v67 = [v69 centerYAnchor];
    v68 = [(HUGridHomeCell *)self contentView];
    v66 = [v68 centerYAnchor];
    v65 = [v67 constraintEqualToAnchor:v66];
    v111[7] = v65;
    v64 = [(HUGridHomeCell *)self verticalStackView];
    v62 = [v64 topAnchor];
    v63 = [(HUGridHomeCell *)self contentView];
    v60 = [v63 topAnchor];
    v61 = [(HUGridHomeCell *)self cellLayoutOptions];
    [v61 cellInnerMargin];
    v59 = [v62 constraintGreaterThanOrEqualToAnchor:v60 constant:?];
    v111[8] = v59;
    v58 = [(HUGridHomeCell *)self verticalStackView];
    v56 = [v58 bottomAnchor];
    v57 = [(HUGridHomeCell *)self contentView];
    v54 = [v57 bottomAnchor];
    v55 = [(HUGridHomeCell *)self cellLayoutOptions];
    [v55 cellInnerMargin];
    v53 = [v56 constraintLessThanOrEqualToAnchor:v54 constant:-v8];
    v111[9] = v53;
    v52 = [(HUGridHomeCell *)self verticalStackView];
    v50 = [v52 centerYAnchor];
    v51 = [(HUGridHomeCell *)self contentView];
    v49 = [v51 centerYAnchor];
    v48 = [v50 constraintEqualToAnchor:v49];
    v111[10] = v48;
    v47 = [(HUGridHomeCell *)self secondaryLabel];
    v45 = [v47 topAnchor];
    v46 = [(HUGridHomeCell *)self secondaryLabelEffectView];
    v44 = [v46 topAnchor];
    v43 = [v45 constraintEqualToAnchor:v44];
    v111[11] = v43;
    v42 = [(HUGridHomeCell *)self secondaryLabel];
    v40 = [v42 bottomAnchor];
    v41 = [(HUGridHomeCell *)self secondaryLabelEffectView];
    v39 = [v41 bottomAnchor];
    v38 = [v40 constraintEqualToAnchor:v39];
    v111[12] = v38;
    v37 = [(HUGridHomeCell *)self iconView];
    v36 = [v37 widthAnchor];
    v35 = [v36 constraintEqualToConstant:38.0];
    v111[13] = v35;
    v34 = [(HUGridHomeCell *)self iconView];
    v33 = [v34 heightAnchor];
    v32 = [v33 constraintEqualToConstant:38.0];
    v111[14] = v32;
    v31 = [(HUGridHomeCell *)self infoView];
    v29 = [v31 leadingAnchor];
    v30 = [(HUGridHomeCell *)self contentView];
    v28 = [v30 leadingAnchor];
    v27 = [v29 constraintEqualToAnchor:v28];
    v111[15] = v27;
    v26 = [(HUGridHomeCell *)self infoView];
    v24 = [v26 trailingAnchor];
    v25 = [(HUGridHomeCell *)self contentView];
    v23 = [v25 trailingAnchor];
    v22 = [v24 constraintEqualToAnchor:v23];
    v111[16] = v22;
    v21 = [(HUGridHomeCell *)self infoView];
    v20 = [v21 topAnchor];
    v9 = [(HUGridHomeCell *)self contentView];
    v10 = [v9 topAnchor];
    v11 = [v20 constraintEqualToAnchor:v10];
    v111[17] = v11;
    v12 = [(HUGridHomeCell *)self infoView];
    v13 = [v12 bottomAnchor];
    v14 = [(HUGridHomeCell *)self contentView];
    v15 = [v14 bottomAnchor];
    v16 = [v13 constraintEqualToAnchor:v15];
    v111[18] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v111 count:19];
    [(HUGridHomeCell *)self setCellConstraints:v17];

    v18 = MEMORY[0x277CCAAD0];
    v19 = [(HUGridHomeCell *)self cellConstraints];
    [v18 activateConstraints:v19];
  }
}

@end