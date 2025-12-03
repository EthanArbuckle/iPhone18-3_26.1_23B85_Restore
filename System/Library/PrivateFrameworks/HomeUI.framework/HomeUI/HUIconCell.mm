@interface HUIconCell
- (BOOL)disableContinuousIconAnimation;
- (HUIconCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_verticalConstraintsForContentSubview:(id)subview;
- (void)_createIconView;
- (void)_invalidateDynamicConstraints;
- (void)_updateIcon;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setContentMetrics:(id)metrics;
- (void)setDisableContinuousIconAnimation:(BOOL)animation;
- (void)setHideIcon:(BOOL)icon;
- (void)setIconDisplayStyle:(unint64_t)style;
- (void)setIconForegroundColor:(id)color;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUIconCell

- (HUIconCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v16.receiver = self;
  v16.super_class = HUIconCell;
  v4 = [(HUIconCell *)&v16 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = +[HUIconCellContentMetrics defaultMetrics];
    contentMetrics = v4->_contentMetrics;
    v4->_contentMetrics = v5;

    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    iconForegroundColor = v4->_iconForegroundColor;
    v4->_iconForegroundColor = systemWhiteColor;

    v4->_iconForegroundColorFollowsTintColor = 1;
    v4->_iconAlpha = 1.0;
    v4->_iconDisplayStyle = 3;
    v4->_iconTintColorFollowsDisabledState = 1;
    v4->_separatorInsetLinesUpWithText = 1;
    v9 = objc_alloc_init(MEMORY[0x277D75D18]);
    containerView = v4->_containerView;
    v4->_containerView = v9;

    [(UIView *)v4->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(HUIconCell *)v4 contentView];
    [contentView addSubview:v4->_containerView];

    v12 = objc_alloc_init(MEMORY[0x277D756D0]);
    iconSpacingLayoutGuide = v4->_iconSpacingLayoutGuide;
    v4->_iconSpacingLayoutGuide = v12;

    [(UILayoutGuide *)v4->_iconSpacingLayoutGuide setIdentifier:@"HUIconCellIconSpacingLayoutGuide"];
    contentView2 = [(HUIconCell *)v4 contentView];
    [contentView2 addLayoutGuide:v4->_iconSpacingLayoutGuide];

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
  systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  [(HUIconCell *)self setIconForegroundColor:systemWhiteColor];

  [(HUIconCell *)self setIconForegroundColorFollowsTintColor:1];
  [(HUIconCell *)self setIconAlpha:1.0];
  v4 = +[HUIconCellContentMetrics defaultMetrics];
  [(HUIconCell *)self setContentMetrics:v4];

  [(HUIconCell *)self setIconDisplayStyle:3];
  [(HUIconCell *)self setDisableContinuousIconAnimation:0];
}

- (void)setHideIcon:(BOOL)icon
{
  if (self->_hideIcon != icon)
  {
    self->_hideIcon = icon;
    if (icon)
    {
      iconView = [(HUIconCell *)self iconView];
      [iconView removeFromSuperview];

      [(HUIconCell *)self setIconView:0];
    }

    else
    {
      [(HUIconCell *)self _createIconView];
    }

    [(HUIconCell *)self _invalidateDynamicConstraints];
  }
}

- (void)setContentMetrics:(id)metrics
{
  metricsCopy = metrics;
  v6 = self->_contentMetrics;
  v7 = metricsCopy;
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
    objc_storeStrong(&self->_contentMetrics, metrics);
    [(HUIconCell *)self _invalidateDynamicConstraints];
  }

LABEL_8:
}

- (void)setIconForegroundColor:(id)color
{
  colorCopy = color;
  v7 = colorCopy;
  if (colorCopy)
  {
    systemWhiteColor = colorCopy;
  }

  else
  {
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  }

  iconForegroundColor = self->_iconForegroundColor;
  self->_iconForegroundColor = systemWhiteColor;

  [(HUIconCell *)self _updateIcon];
}

- (void)setIconDisplayStyle:(unint64_t)style
{
  if (self->_iconDisplayStyle != style)
  {
    self->_iconDisplayStyle = style;
    [(HUIconCell *)self updateUIWithAnimation:0];
  }
}

- (BOOL)disableContinuousIconAnimation
{
  iconView = [(HUIconCell *)self iconView];
  disableContinuousAnimation = [iconView disableContinuousAnimation];

  return disableContinuousAnimation;
}

- (void)setDisableContinuousIconAnimation:(BOOL)animation
{
  animationCopy = animation;
  iconView = [(HUIconCell *)self iconView];
  [iconView setDisableContinuousAnimation:animationCopy];
}

- (void)updateConstraints
{
  staticConstraints = [(HUIconCell *)self staticConstraints];

  if (!staticConstraints)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    cellConfiguration = [MEMORY[0x277D756E0] cellConfiguration];
    traitCollection = [(HUIconCell *)self traitCollection];
    [cellConfiguration _minimumHeightForTraitCollection:traitCollection];
    v8 = v7;

    contentView = [(HUIconCell *)self contentView];
    heightAnchor = [contentView heightAnchor];
    v11 = [heightAnchor constraintGreaterThanOrEqualToConstant:v8];

    LODWORD(v12) = 1148829696;
    [v11 setPriority:v12];
    [v4 addObject:v11];
    containerView = [(HUIconCell *)self containerView];
    trailingAnchor = [containerView trailingAnchor];
    contentView2 = [(HUIconCell *)self contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v4 addObject:v18];

    [(HUIconCell *)self setStaticConstraints:v4];
    v19 = MEMORY[0x277CCAAD0];
    staticConstraints2 = [(HUIconCell *)self staticConstraints];
    [v19 activateConstraints:staticConstraints2];
  }

  dynamicConstraints = [(HUIconCell *)self dynamicConstraints];

  if (!dynamicConstraints)
  {
    v22 = MEMORY[0x277CCAAD0];
    iconSpacingConstraints = [(HUIconCell *)self iconSpacingConstraints];
    [v22 deactivateConstraints:iconSpacingConstraints];

    v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
    iconSpacingLayoutGuide = [(HUIconCell *)self iconSpacingLayoutGuide];
    leadingAnchor = [iconSpacingLayoutGuide leadingAnchor];
    contentView3 = [(HUIconCell *)self contentView];
    layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide2 leadingAnchor];
    v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v24 addObject:v30];

    iconSpacingLayoutGuide2 = [(HUIconCell *)self iconSpacingLayoutGuide];
    heightAnchor2 = [iconSpacingLayoutGuide2 heightAnchor];
    contentMetrics = [(HUIconCell *)self contentMetrics];
    [contentMetrics iconSize];
    v35 = [heightAnchor2 constraintEqualToConstant:v34];
    [v24 addObject:v35];

    iconSpacingLayoutGuide3 = [(HUIconCell *)self iconSpacingLayoutGuide];
    widthAnchor = [iconSpacingLayoutGuide3 widthAnchor];
    contentMetrics2 = [(HUIconCell *)self contentMetrics];
    [contentMetrics2 iconSize];
    v39 = [widthAnchor constraintEqualToConstant:?];
    [v24 addObject:v39];

    [(HUIconCell *)self setIconSpacingConstraints:v24];
    v40 = MEMORY[0x277CCAAD0];
    iconSpacingConstraints2 = [(HUIconCell *)self iconSpacingConstraints];
    [v40 activateConstraints:iconSpacingConstraints2];

    v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
    containerView2 = [(HUIconCell *)self containerView];
    v44 = [(HUIconCell *)self _verticalConstraintsForContentSubview:containerView2];
    [v42 addObjectsFromArray:v44];

    iconView = [(HUIconCell *)self iconView];

    containerView3 = [(HUIconCell *)self containerView];
    leadingAnchor3 = [containerView3 leadingAnchor];
    if (iconView)
    {
      iconSpacingLayoutGuide4 = [(HUIconCell *)self iconSpacingLayoutGuide];
      trailingAnchor3 = [iconSpacingLayoutGuide4 trailingAnchor];
      v50 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor3 constant:12.0];
      [v42 addObject:v50];

      iconView2 = [(HUIconCell *)self iconView];
      centerXAnchor = [iconView2 centerXAnchor];
      iconSpacingLayoutGuide5 = [(HUIconCell *)self iconSpacingLayoutGuide];
      centerXAnchor2 = [iconSpacingLayoutGuide5 centerXAnchor];
      v55 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      [v42 addObject:v55];

      iconView3 = [(HUIconCell *)self iconView];
      heightAnchor3 = [iconView3 heightAnchor];
      contentMetrics3 = [(HUIconCell *)self contentMetrics];
      [contentMetrics3 iconSize];
      v60 = [heightAnchor3 constraintEqualToConstant:v59];
      [v42 addObject:v60];

      iconView4 = [(HUIconCell *)self iconView];
      widthAnchor2 = [iconView4 widthAnchor];
      contentMetrics4 = [(HUIconCell *)self contentMetrics];
      [contentMetrics4 iconSize];
      v64 = [widthAnchor2 constraintEqualToConstant:?];
      [v42 addObject:v64];

      containerView3 = [(HUIconCell *)self iconView];
      leadingAnchor3 = [(HUIconCell *)self _verticalConstraintsForContentSubview:containerView3];
      [v42 addObjectsFromArray:leadingAnchor3];
    }

    else
    {
      contentView4 = [(HUIconCell *)self contentView];
      layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
      leadingAnchor4 = [layoutMarginsGuide3 leadingAnchor];
      v68 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      [v42 addObject:v68];
    }

    iconView5 = [(HUIconCell *)self iconView];
    LODWORD(v70) = 1148846080;
    [iconView5 setContentHuggingPriority:0 forAxis:v70];

    [(HUIconCell *)self setDynamicConstraints:v42];
    v71 = MEMORY[0x277CCAAD0];
    dynamicConstraints2 = [(HUIconCell *)self dynamicConstraints];
    [v71 activateConstraints:dynamicConstraints2];
  }

  v73.receiver = self;
  v73.super_class = HUIconCell;
  [(HUIconCell *)&v73 updateConstraints];
}

- (void)layoutSubviews
{
  iconView = [(HUIconCell *)self iconView];

  if (iconView)
  {
    contentView = [(HUIconCell *)self contentView];
    [contentView layoutMargins];
    v6 = v5;

    if ([(HUIconCell *)self separatorInsetLinesUpWithText])
    {
      contentMetrics = [(HUIconCell *)self contentMetrics];
      [contentMetrics iconSize];
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

- (void)updateUIWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  iconView = [(HUIconCell *)self iconView];
  item = [(HUIconCell *)self item];
  latestResults = [item latestResults];
  v7 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E88]];
  [iconView updateWithIconDescriptor:v7 displayStyle:-[HUIconCell iconDisplayStyle](self animated:{"iconDisplayStyle"), animationCopy}];
}

- (id)_verticalConstraintsForContentSubview:(id)subview
{
  v32[4] = *MEMORY[0x277D85DE8];
  subviewCopy = subview;
  superview = [subviewCopy superview];
  contentView = [(HUIconCell *)self contentView];
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

  topAnchor = [subviewCopy topAnchor];
  contentView2 = [(HUIconCell *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v28 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v32[0] = v28;
  bottomAnchor = [subviewCopy bottomAnchor];
  contentView3 = [(HUIconCell *)self contentView];
  bottomAnchor2 = [contentView3 bottomAnchor];
  v15 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v32[1] = v15;
  centerYAnchor = [subviewCopy centerYAnchor];
  contentView4 = [(HUIconCell *)self contentView];
  centerYAnchor2 = [contentView4 centerYAnchor];
  v19 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v32[2] = v19;
  heightAnchor = [subviewCopy heightAnchor];

  contentView5 = [(HUIconCell *)self contentView];
  heightAnchor2 = [contentView5 heightAnchor];
  v23 = [heightAnchor constraintLessThanOrEqualToAnchor:heightAnchor2 constant:-v13];
  v32[3] = v23;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:4];

  return v25;
}

- (void)_invalidateDynamicConstraints
{
  v3 = MEMORY[0x277CCAAD0];
  dynamicConstraints = [(HUIconCell *)self dynamicConstraints];
  [v3 deactivateConstraints:dynamicConstraints];

  [(HUIconCell *)self setDynamicConstraints:0];

  [(HUIconCell *)self setNeedsUpdateConstraints];
}

- (void)_createIconView
{
  iconView = [(HUIconCell *)self iconView];

  if (iconView)
  {
    NSLog(&cfstr_AlreadyHaveIco.isa, self);
  }

  v4 = objc_alloc_init(MEMORY[0x277D180D0]);
  [(HUIconCell *)self setIconView:v4];

  iconView2 = [(HUIconCell *)self iconView];
  [iconView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  iconView3 = [(HUIconCell *)self iconView];
  [iconView3 setContentMode:1];

  [(HUIconCell *)self _updateIcon];
  contentView = [(HUIconCell *)self contentView];
  iconView4 = [(HUIconCell *)self iconView];
  [contentView addSubview:iconView4];
}

- (void)_updateIcon
{
  if ([(HUIconCell *)self isDisabled]&& [(HUIconCell *)self iconTintColorFollowsDisabledState])
  {
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    iconView = [(HUIconCell *)self iconView];
    [iconView setTintColor:systemGrayColor];

LABEL_8:
    goto LABEL_9;
  }

  iconForegroundColorFollowsTintColor = [(HUIconCell *)self iconForegroundColorFollowsTintColor];
  if (iconForegroundColorFollowsTintColor)
  {
    systemGrayColor = 0;
  }

  else
  {
    systemGrayColor = [(HUIconCell *)self iconForegroundColor];
  }

  iconView2 = [(HUIconCell *)self iconView];
  [iconView2 setTintColor:systemGrayColor];

  if (!iconForegroundColorFollowsTintColor)
  {
    goto LABEL_8;
  }

LABEL_9:
  [(HUIconCell *)self iconAlpha];
  if (v7 != 0.0)
  {
    [(HUIconCell *)self iconAlpha];
    v9 = v8;
    iconView3 = [(HUIconCell *)self iconView];
    [iconView3 setAlpha:v9];
  }
}

@end