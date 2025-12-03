@interface HUTitleValueIconCell
- (HUTitleValueIconCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_verticalConstraintsForContentSubview:(id)subview;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUTitleValueIconCell

- (HUTitleValueIconCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = HUTitleValueIconCell;
  return [(HUTitleValueCell *)&v5 initWithStyle:style reuseIdentifier:identifier];
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  v15.receiver = self;
  v15.super_class = HUTitleValueIconCell;
  [(HUTitleValueCell *)&v15 updateUIWithAnimation:animation];
  item = [(HUIconCell *)self item];
  latestResults = [item latestResults];
  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E88]];

  if (v6)
  {
    [(HUIconCell *)self setHideIcon:0];
    v7 = objc_alloc_init(HUIconCellContentMetrics);
    [(HUIconCell *)self setContentMetrics:v7];

    HUDefaultSizeForIconSize();
    v9 = v8;
    v11 = v10;
    contentMetrics = [(HUIconCell *)self contentMetrics];
    [contentMetrics setIconSize:{v9, v11}];

    contentMetrics2 = [(HUIconCell *)self contentMetrics];
    [contentMetrics2 setContentInset:{8.0, 0.0, 8.0, 0.0}];

    [(HUIconCell *)self setIconForegroundColorFollowsTintColor:0];
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(HUIconCell *)self setIconForegroundColor:systemGrayColor];
  }

  else
  {
    [(HUIconCell *)self setHideIcon:1];
  }
}

- (id)_verticalConstraintsForContentSubview:(id)subview
{
  v24[2] = *MEMORY[0x277D85DE8];
  subviewCopy = subview;
  superview = [subviewCopy superview];
  contentView = [(HUTitleValueIconCell *)self contentView];
  v7 = [superview isEqual:contentView];

  if ((v7 & 1) == 0)
  {
    NSLog(&cfstr_NotAContentvie.isa);
  }

  contentMetrics = [(HUIconCell *)self contentMetrics];
  [contentMetrics contentInset];
  v10 = v9;
  contentMetrics2 = [(HUIconCell *)self contentMetrics];
  [contentMetrics2 contentInset];
  v13 = v10 + v12;

  centerYAnchor = [subviewCopy centerYAnchor];
  contentView2 = [(HUTitleValueIconCell *)self contentView];
  centerYAnchor2 = [contentView2 centerYAnchor];
  v17 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v24[0] = v17;
  heightAnchor = [subviewCopy heightAnchor];

  contentView3 = [(HUTitleValueIconCell *)self contentView];
  heightAnchor2 = [contentView3 heightAnchor];
  v21 = [heightAnchor constraintLessThanOrEqualToAnchor:heightAnchor2 constant:-v13];
  v24[1] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];

  return v22;
}

- (void)updateConstraints
{
  staticConstraints = [(HUIconCell *)self staticConstraints];

  if (!staticConstraints)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    cellConfiguration = [MEMORY[0x277D756E0] cellConfiguration];
    traitCollection = [(HUTitleValueIconCell *)self traitCollection];
    [cellConfiguration _minimumHeightForTraitCollection:traitCollection];
    v8 = v7;

    contentView = [(HUTitleValueIconCell *)self contentView];
    heightAnchor = [contentView heightAnchor];
    v11 = [heightAnchor constraintGreaterThanOrEqualToConstant:v8];

    LODWORD(v12) = 1148829696;
    [v11 setPriority:v12];
    [v4 addObject:v11];
    [(HUIconCell *)self setStaticConstraints:v4];
    v13 = MEMORY[0x277CCAAD0];
    staticConstraints2 = [(HUIconCell *)self staticConstraints];
    [v13 activateConstraints:staticConstraints2];
  }

  dynamicConstraints = [(HUIconCell *)self dynamicConstraints];

  if (!dynamicConstraints)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    containerView = [(HUIconCell *)self containerView];
    v18 = [(HUTitleValueIconCell *)self _verticalConstraintsForContentSubview:containerView];
    [v16 addObjectsFromArray:v18];

    iconView = [(HUIconCell *)self iconView];

    containerView2 = [(HUIconCell *)self containerView];
    leadingAnchor = [containerView2 leadingAnchor];
    contentView2 = [(HUTitleValueIconCell *)self contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v16 addObject:v25];

    containerView3 = [(HUIconCell *)self containerView];
    trailingAnchor = [containerView3 trailingAnchor];
    if (iconView)
    {
      iconView2 = [(HUIconCell *)self iconView];
      leadingAnchor3 = [iconView2 leadingAnchor];
      v30 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3];
      [v16 addObject:v30];

      containerView4 = [(HUIconCell *)self containerView];
      trailingAnchor2 = [containerView4 trailingAnchor];
      iconView3 = [(HUIconCell *)self iconView];
      leadingAnchor4 = [iconView3 leadingAnchor];
      v35 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor4 constant:-8.0];
      [v16 addObject:v35];

      iconView4 = [(HUIconCell *)self iconView];
      trailingAnchor3 = [iconView4 trailingAnchor];
      contentView3 = [(HUTitleValueIconCell *)self contentView];
      layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
      trailingAnchor4 = [layoutMarginsGuide2 trailingAnchor];
      v41 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      [v16 addObject:v41];

      iconView5 = [(HUIconCell *)self iconView];
      heightAnchor2 = [iconView5 heightAnchor];
      contentMetrics = [(HUIconCell *)self contentMetrics];
      [contentMetrics iconSize];
      v46 = [heightAnchor2 constraintEqualToConstant:v45];
      [v16 addObject:v46];

      iconView6 = [(HUIconCell *)self iconView];
      widthAnchor = [iconView6 widthAnchor];
      contentMetrics2 = [(HUIconCell *)self contentMetrics];
      [contentMetrics2 iconSize];
      v50 = [widthAnchor constraintEqualToConstant:?];
      [v16 addObject:v50];

      containerView3 = [(HUIconCell *)self iconView];
      trailingAnchor = [(HUTitleValueIconCell *)self _verticalConstraintsForContentSubview:containerView3];
      [v16 addObjectsFromArray:trailingAnchor];
    }

    else
    {
      contentView4 = [(HUTitleValueIconCell *)self contentView];
      layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
      trailingAnchor5 = [layoutMarginsGuide3 trailingAnchor];
      v54 = [trailingAnchor constraintEqualToAnchor:trailingAnchor5];
      [v16 addObject:v54];
    }

    iconView7 = [(HUIconCell *)self iconView];
    LODWORD(v56) = 1148846080;
    [iconView7 setContentHuggingPriority:0 forAxis:v56];

    [(HUIconCell *)self setDynamicConstraints:v16];
    v57 = MEMORY[0x277CCAAD0];
    dynamicConstraints2 = [(HUIconCell *)self dynamicConstraints];
    [v57 activateConstraints:dynamicConstraints2];
  }

  v59.receiver = self;
  v59.super_class = HUTitleValueIconCell;
  [(HUTitleValueCell *)&v59 updateConstraints];
}

@end