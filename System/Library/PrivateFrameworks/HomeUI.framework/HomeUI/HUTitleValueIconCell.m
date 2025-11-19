@interface HUTitleValueIconCell
- (HUTitleValueIconCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_verticalConstraintsForContentSubview:(id)a3;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUTitleValueIconCell

- (HUTitleValueIconCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v5.receiver = self;
  v5.super_class = HUTitleValueIconCell;
  return [(HUTitleValueCell *)&v5 initWithStyle:a3 reuseIdentifier:a4];
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v15.receiver = self;
  v15.super_class = HUTitleValueIconCell;
  [(HUTitleValueCell *)&v15 updateUIWithAnimation:a3];
  v4 = [(HUIconCell *)self item];
  v5 = [v4 latestResults];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D13E88]];

  if (v6)
  {
    [(HUIconCell *)self setHideIcon:0];
    v7 = objc_alloc_init(HUIconCellContentMetrics);
    [(HUIconCell *)self setContentMetrics:v7];

    HUDefaultSizeForIconSize();
    v9 = v8;
    v11 = v10;
    v12 = [(HUIconCell *)self contentMetrics];
    [v12 setIconSize:{v9, v11}];

    v13 = [(HUIconCell *)self contentMetrics];
    [v13 setContentInset:{8.0, 0.0, 8.0, 0.0}];

    [(HUIconCell *)self setIconForegroundColorFollowsTintColor:0];
    v14 = [MEMORY[0x277D75348] systemGrayColor];
    [(HUIconCell *)self setIconForegroundColor:v14];
  }

  else
  {
    [(HUIconCell *)self setHideIcon:1];
  }
}

- (id)_verticalConstraintsForContentSubview:(id)a3
{
  v24[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 superview];
  v6 = [(HUTitleValueIconCell *)self contentView];
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

  v14 = [v4 centerYAnchor];
  v15 = [(HUTitleValueIconCell *)self contentView];
  v16 = [v15 centerYAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  v24[0] = v17;
  v18 = [v4 heightAnchor];

  v19 = [(HUTitleValueIconCell *)self contentView];
  v20 = [v19 heightAnchor];
  v21 = [v18 constraintLessThanOrEqualToAnchor:v20 constant:-v13];
  v24[1] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];

  return v22;
}

- (void)updateConstraints
{
  v3 = [(HUIconCell *)self staticConstraints];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = [MEMORY[0x277D756E0] cellConfiguration];
    v6 = [(HUTitleValueIconCell *)self traitCollection];
    [v5 _minimumHeightForTraitCollection:v6];
    v8 = v7;

    v9 = [(HUTitleValueIconCell *)self contentView];
    v10 = [v9 heightAnchor];
    v11 = [v10 constraintGreaterThanOrEqualToConstant:v8];

    LODWORD(v12) = 1148829696;
    [v11 setPriority:v12];
    [v4 addObject:v11];
    [(HUIconCell *)self setStaticConstraints:v4];
    v13 = MEMORY[0x277CCAAD0];
    v14 = [(HUIconCell *)self staticConstraints];
    [v13 activateConstraints:v14];
  }

  v15 = [(HUIconCell *)self dynamicConstraints];

  if (!v15)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = [(HUIconCell *)self containerView];
    v18 = [(HUTitleValueIconCell *)self _verticalConstraintsForContentSubview:v17];
    [v16 addObjectsFromArray:v18];

    v19 = [(HUIconCell *)self iconView];

    v20 = [(HUIconCell *)self containerView];
    v21 = [v20 leadingAnchor];
    v22 = [(HUTitleValueIconCell *)self contentView];
    v23 = [v22 layoutMarginsGuide];
    v24 = [v23 leadingAnchor];
    v25 = [v21 constraintEqualToAnchor:v24];
    [v16 addObject:v25];

    v26 = [(HUIconCell *)self containerView];
    v27 = [v26 trailingAnchor];
    if (v19)
    {
      v28 = [(HUIconCell *)self iconView];
      v29 = [v28 leadingAnchor];
      v30 = [v27 constraintEqualToAnchor:v29];
      [v16 addObject:v30];

      v31 = [(HUIconCell *)self containerView];
      v32 = [v31 trailingAnchor];
      v33 = [(HUIconCell *)self iconView];
      v34 = [v33 leadingAnchor];
      v35 = [v32 constraintEqualToAnchor:v34 constant:-8.0];
      [v16 addObject:v35];

      v36 = [(HUIconCell *)self iconView];
      v37 = [v36 trailingAnchor];
      v38 = [(HUTitleValueIconCell *)self contentView];
      v39 = [v38 layoutMarginsGuide];
      v40 = [v39 trailingAnchor];
      v41 = [v37 constraintEqualToAnchor:v40];
      [v16 addObject:v41];

      v42 = [(HUIconCell *)self iconView];
      v43 = [v42 heightAnchor];
      v44 = [(HUIconCell *)self contentMetrics];
      [v44 iconSize];
      v46 = [v43 constraintEqualToConstant:v45];
      [v16 addObject:v46];

      v47 = [(HUIconCell *)self iconView];
      v48 = [v47 widthAnchor];
      v49 = [(HUIconCell *)self contentMetrics];
      [v49 iconSize];
      v50 = [v48 constraintEqualToConstant:?];
      [v16 addObject:v50];

      v26 = [(HUIconCell *)self iconView];
      v27 = [(HUTitleValueIconCell *)self _verticalConstraintsForContentSubview:v26];
      [v16 addObjectsFromArray:v27];
    }

    else
    {
      v51 = [(HUTitleValueIconCell *)self contentView];
      v52 = [v51 layoutMarginsGuide];
      v53 = [v52 trailingAnchor];
      v54 = [v27 constraintEqualToAnchor:v53];
      [v16 addObject:v54];
    }

    v55 = [(HUIconCell *)self iconView];
    LODWORD(v56) = 1148846080;
    [v55 setContentHuggingPriority:0 forAxis:v56];

    [(HUIconCell *)self setDynamicConstraints:v16];
    v57 = MEMORY[0x277CCAAD0];
    v58 = [(HUIconCell *)self dynamicConstraints];
    [v57 activateConstraints:v58];
  }

  v59.receiver = self;
  v59.super_class = HUTitleValueIconCell;
  [(HUTitleValueCell *)&v59 updateConstraints];
}

@end