@interface HUIconCell
- (BOOL)disableContinuousIconAnimation;
- (HUIconCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_verticalConstraintsForContentSubview:(id)a3;
- (void)_createIconView;
- (void)_invalidateDynamicConstraints;
- (void)_updateIcon;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setContentMetrics:(id)a3;
- (void)setDisableContinuousIconAnimation:(BOOL)a3;
- (void)setHideIcon:(BOOL)a3;
- (void)setIconDisplayStyle:(unint64_t)a3;
- (void)setIconForegroundColor:(id)a3;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUIconCell

- (HUIconCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v16.receiver = self;
  v16.super_class = HUIconCell;
  v4 = [(HUIconCell *)&v16 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = +[HUIconCellContentMetrics defaultMetrics];
    contentMetrics = v4->_contentMetrics;
    v4->_contentMetrics = v5;

    v7 = [MEMORY[0x277D75348] systemWhiteColor];
    iconForegroundColor = v4->_iconForegroundColor;
    v4->_iconForegroundColor = v7;

    v4->_iconForegroundColorFollowsTintColor = 1;
    v4->_iconAlpha = 1.0;
    v4->_iconDisplayStyle = 3;
    v4->_iconTintColorFollowsDisabledState = 1;
    v4->_separatorInsetLinesUpWithText = 1;
    v9 = objc_alloc_init(MEMORY[0x277D75D18]);
    containerView = v4->_containerView;
    v4->_containerView = v9;

    [(UIView *)v4->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [(HUIconCell *)v4 contentView];
    [v11 addSubview:v4->_containerView];

    v12 = objc_alloc_init(MEMORY[0x277D756D0]);
    iconSpacingLayoutGuide = v4->_iconSpacingLayoutGuide;
    v4->_iconSpacingLayoutGuide = v12;

    [(UILayoutGuide *)v4->_iconSpacingLayoutGuide setIdentifier:@"HUIconCellIconSpacingLayoutGuide"];
    v14 = [(HUIconCell *)v4 contentView];
    [v14 addLayoutGuide:v4->_iconSpacingLayoutGuide];

    [(HUIconCell *)v4 _createIconView];
  }

  return v4;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = HUIconCell;
  [(HUIconCell *)&v5 prepareForReuse];
  [(HUIconCell *)self setItem:0];
  [(HUIconCell *)self setDisabled:0];
  [(HUIconCell *)self setHideIcon:0];
  v3 = [MEMORY[0x277D75348] systemWhiteColor];
  [(HUIconCell *)self setIconForegroundColor:v3];

  [(HUIconCell *)self setIconForegroundColorFollowsTintColor:1];
  [(HUIconCell *)self setIconAlpha:1.0];
  v4 = +[HUIconCellContentMetrics defaultMetrics];
  [(HUIconCell *)self setContentMetrics:v4];

  [(HUIconCell *)self setIconDisplayStyle:3];
  [(HUIconCell *)self setDisableContinuousIconAnimation:0];
}

- (void)setHideIcon:(BOOL)a3
{
  if (self->_hideIcon != a3)
  {
    self->_hideIcon = a3;
    if (a3)
    {
      v5 = [(HUIconCell *)self iconView];
      [v5 removeFromSuperview];

      [(HUIconCell *)self setIconView:0];
    }

    else
    {
      [(HUIconCell *)self _createIconView];
    }

    [(HUIconCell *)self _invalidateDynamicConstraints];
  }
}

- (void)setContentMetrics:(id)a3
{
  v5 = a3;
  v6 = self->_contentMetrics;
  v7 = v5;
  v9 = v7;
  if (v6 == v7)
  {

    goto LABEL_8;
  }

  if (!v6)
  {

    goto LABEL_7;
  }

  v8 = [(HUIconCellContentMetrics *)v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_7:
    objc_storeStrong(&self->_contentMetrics, a3);
    [(HUIconCell *)self _invalidateDynamicConstraints];
  }

LABEL_8:
}

- (void)setIconForegroundColor:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [MEMORY[0x277D75348] systemWhiteColor];
  }

  iconForegroundColor = self->_iconForegroundColor;
  self->_iconForegroundColor = v5;

  [(HUIconCell *)self _updateIcon];
}

- (void)setIconDisplayStyle:(unint64_t)a3
{
  if (self->_iconDisplayStyle != a3)
  {
    self->_iconDisplayStyle = a3;
    [(HUIconCell *)self updateUIWithAnimation:0];
  }
}

- (BOOL)disableContinuousIconAnimation
{
  v2 = [(HUIconCell *)self iconView];
  v3 = [v2 disableContinuousAnimation];

  return v3;
}

- (void)setDisableContinuousIconAnimation:(BOOL)a3
{
  v3 = a3;
  v4 = [(HUIconCell *)self iconView];
  [v4 setDisableContinuousAnimation:v3];
}

- (void)updateConstraints
{
  v3 = [(HUIconCell *)self staticConstraints];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = [MEMORY[0x277D756E0] cellConfiguration];
    v6 = [(HUIconCell *)self traitCollection];
    [v5 _minimumHeightForTraitCollection:v6];
    v8 = v7;

    v9 = [(HUIconCell *)self contentView];
    v10 = [v9 heightAnchor];
    v11 = [v10 constraintGreaterThanOrEqualToConstant:v8];

    LODWORD(v12) = 1148829696;
    [v11 setPriority:v12];
    [v4 addObject:v11];
    v13 = [(HUIconCell *)self containerView];
    v14 = [v13 trailingAnchor];
    v15 = [(HUIconCell *)self contentView];
    v16 = [v15 layoutMarginsGuide];
    v17 = [v16 trailingAnchor];
    v18 = [v14 constraintEqualToAnchor:v17];
    [v4 addObject:v18];

    [(HUIconCell *)self setStaticConstraints:v4];
    v19 = MEMORY[0x277CCAAD0];
    v20 = [(HUIconCell *)self staticConstraints];
    [v19 activateConstraints:v20];
  }

  v21 = [(HUIconCell *)self dynamicConstraints];

  if (!v21)
  {
    v22 = MEMORY[0x277CCAAD0];
    v23 = [(HUIconCell *)self iconSpacingConstraints];
    [v22 deactivateConstraints:v23];

    v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v25 = [(HUIconCell *)self iconSpacingLayoutGuide];
    v26 = [v25 leadingAnchor];
    v27 = [(HUIconCell *)self contentView];
    v28 = [v27 layoutMarginsGuide];
    v29 = [v28 leadingAnchor];
    v30 = [v26 constraintEqualToAnchor:v29];
    [v24 addObject:v30];

    v31 = [(HUIconCell *)self iconSpacingLayoutGuide];
    v32 = [v31 heightAnchor];
    v33 = [(HUIconCell *)self contentMetrics];
    [v33 iconSize];
    v35 = [v32 constraintEqualToConstant:v34];
    [v24 addObject:v35];

    v36 = [(HUIconCell *)self iconSpacingLayoutGuide];
    v37 = [v36 widthAnchor];
    v38 = [(HUIconCell *)self contentMetrics];
    [v38 iconSize];
    v39 = [v37 constraintEqualToConstant:?];
    [v24 addObject:v39];

    [(HUIconCell *)self setIconSpacingConstraints:v24];
    v40 = MEMORY[0x277CCAAD0];
    v41 = [(HUIconCell *)self iconSpacingConstraints];
    [v40 activateConstraints:v41];

    v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v43 = [(HUIconCell *)self containerView];
    v44 = [(HUIconCell *)self _verticalConstraintsForContentSubview:v43];
    [v42 addObjectsFromArray:v44];

    v45 = [(HUIconCell *)self iconView];

    v46 = [(HUIconCell *)self containerView];
    v47 = [v46 leadingAnchor];
    if (v45)
    {
      v48 = [(HUIconCell *)self iconSpacingLayoutGuide];
      v49 = [v48 trailingAnchor];
      v50 = [v47 constraintEqualToAnchor:v49 constant:12.0];
      [v42 addObject:v50];

      v51 = [(HUIconCell *)self iconView];
      v52 = [v51 centerXAnchor];
      v53 = [(HUIconCell *)self iconSpacingLayoutGuide];
      v54 = [v53 centerXAnchor];
      v55 = [v52 constraintEqualToAnchor:v54];
      [v42 addObject:v55];

      v56 = [(HUIconCell *)self iconView];
      v57 = [v56 heightAnchor];
      v58 = [(HUIconCell *)self contentMetrics];
      [v58 iconSize];
      v60 = [v57 constraintEqualToConstant:v59];
      [v42 addObject:v60];

      v61 = [(HUIconCell *)self iconView];
      v62 = [v61 widthAnchor];
      v63 = [(HUIconCell *)self contentMetrics];
      [v63 iconSize];
      v64 = [v62 constraintEqualToConstant:?];
      [v42 addObject:v64];

      v46 = [(HUIconCell *)self iconView];
      v47 = [(HUIconCell *)self _verticalConstraintsForContentSubview:v46];
      [v42 addObjectsFromArray:v47];
    }

    else
    {
      v65 = [(HUIconCell *)self contentView];
      v66 = [v65 layoutMarginsGuide];
      v67 = [v66 leadingAnchor];
      v68 = [v47 constraintEqualToAnchor:v67];
      [v42 addObject:v68];
    }

    v69 = [(HUIconCell *)self iconView];
    LODWORD(v70) = 1148846080;
    [v69 setContentHuggingPriority:0 forAxis:v70];

    [(HUIconCell *)self setDynamicConstraints:v42];
    v71 = MEMORY[0x277CCAAD0];
    v72 = [(HUIconCell *)self dynamicConstraints];
    [v71 activateConstraints:v72];
  }

  v73.receiver = self;
  v73.super_class = HUIconCell;
  [(HUIconCell *)&v73 updateConstraints];
}

- (void)layoutSubviews
{
  v3 = [(HUIconCell *)self iconView];

  if (v3)
  {
    v4 = [(HUIconCell *)self contentView];
    [v4 layoutMargins];
    v6 = v5;

    if ([(HUIconCell *)self separatorInsetLinesUpWithText])
    {
      v7 = [(HUIconCell *)self contentMetrics];
      [v7 iconSize];
      v6 = v6 + v8 + 12.0;

      v9 = 20.0;
    }

    else
    {
      v9 = 0.0;
    }

    [(HUIconCell *)self setSeparatorInset:0.0, v6, 0.0, v9];
  }

  v10.receiver = self;
  v10.super_class = HUIconCell;
  [(HUIconCell *)&v10 layoutSubviews];
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v3 = a3;
  v8 = [(HUIconCell *)self iconView];
  v5 = [(HUIconCell *)self item];
  v6 = [v5 latestResults];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13E88]];
  [v8 updateWithIconDescriptor:v7 displayStyle:-[HUIconCell iconDisplayStyle](self animated:{"iconDisplayStyle"), v3}];
}

- (id)_verticalConstraintsForContentSubview:(id)a3
{
  v32[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 superview];
  v6 = [(HUIconCell *)self contentView];
  v7 = [v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    NSLog(&cfstr_NotAContentvie.isa);
  }

  v8 = [(HUIconCell *)self contentMetrics];
  [v8 contentInset];
  v10 = v9;
  v11 = [(HUIconCell *)self contentMetrics];
  [v11 contentInset];
  v13 = v10 + v12;

  v30 = [v4 topAnchor];
  v31 = [(HUIconCell *)self contentView];
  v29 = [v31 topAnchor];
  v28 = [v30 constraintGreaterThanOrEqualToAnchor:v29];
  v32[0] = v28;
  v26 = [v4 bottomAnchor];
  v27 = [(HUIconCell *)self contentView];
  v14 = [v27 bottomAnchor];
  v15 = [v26 constraintLessThanOrEqualToAnchor:v14];
  v32[1] = v15;
  v16 = [v4 centerYAnchor];
  v17 = [(HUIconCell *)self contentView];
  v18 = [v17 centerYAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  v32[2] = v19;
  v20 = [v4 heightAnchor];

  v21 = [(HUIconCell *)self contentView];
  v22 = [v21 heightAnchor];
  v23 = [v20 constraintLessThanOrEqualToAnchor:v22 constant:-v13];
  v32[3] = v23;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:4];

  return v25;
}

- (void)_invalidateDynamicConstraints
{
  v3 = MEMORY[0x277CCAAD0];
  v4 = [(HUIconCell *)self dynamicConstraints];
  [v3 deactivateConstraints:v4];

  [(HUIconCell *)self setDynamicConstraints:0];

  [(HUIconCell *)self setNeedsUpdateConstraints];
}

- (void)_createIconView
{
  v3 = [(HUIconCell *)self iconView];

  if (v3)
  {
    NSLog(&cfstr_AlreadyHaveIco.isa, self);
  }

  v4 = objc_alloc_init(MEMORY[0x277D180D0]);
  [(HUIconCell *)self setIconView:v4];

  v5 = [(HUIconCell *)self iconView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(HUIconCell *)self iconView];
  [v6 setContentMode:1];

  [(HUIconCell *)self _updateIcon];
  v8 = [(HUIconCell *)self contentView];
  v7 = [(HUIconCell *)self iconView];
  [v8 addSubview:v7];
}

- (void)_updateIcon
{
  if ([(HUIconCell *)self isDisabled]&& [(HUIconCell *)self iconTintColorFollowsDisabledState])
  {
    v3 = [MEMORY[0x277D75348] systemGrayColor];
    v4 = [(HUIconCell *)self iconView];
    [v4 setTintColor:v3];

LABEL_8:
    goto LABEL_9;
  }

  v5 = [(HUIconCell *)self iconForegroundColorFollowsTintColor];
  if (v5)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(HUIconCell *)self iconForegroundColor];
  }

  v6 = [(HUIconCell *)self iconView];
  [v6 setTintColor:v3];

  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_9:
  [(HUIconCell *)self iconAlpha];
  if (v7 != 0.0)
  {
    [(HUIconCell *)self iconAlpha];
    v9 = v8;
    v10 = [(HUIconCell *)self iconView];
    [v10 setAlpha:v9];
  }
}

@end