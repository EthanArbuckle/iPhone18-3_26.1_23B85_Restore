@interface HUIconCollectionListCell
- (BOOL)disableContinuousIconAnimation;
- (HUIconCollectionListCell)initWithFrame:(CGRect)frame;
- (HUIconCollectionListCellDelegate)delegate;
- (id)_buildAccessories;
- (id)configurationState;
- (void)_createIconView;
- (void)_iconTapped:(id)tapped;
- (void)_updateIcon;
- (void)setDisableContinuousIconAnimation:(BOOL)animation;
- (void)setIconDisplayStyle:(unint64_t)style;
- (void)setIconForegroundColor:(id)color;
- (void)setIconSize:(unint64_t)size;
- (void)updateAccessories;
- (void)updateConfigurationUsingState:(id)state;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUIconCollectionListCell

- (HUIconCollectionListCell)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = HUIconCollectionListCell;
  v3 = [(HUIconCollectionListCell *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_iconSize = 0;
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    iconForegroundColor = v4->_iconForegroundColor;
    v4->_iconForegroundColor = systemWhiteColor;

    v4->_iconForegroundColorFollowsTintColor = 1;
    v4->_iconAlpha = 1.0;
    v4->_iconDisplayStyle = 1;
    v4->_iconTintColorFollowsDisabledState = 1;
    v4->_separatorInsetLinesUpWithText = 1;
    [(HUIconCollectionListCell *)v4 _createIconView];
  }

  return v4;
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

  [(HUIconCollectionListCell *)self _updateIcon];
}

- (id)configurationState
{
  v5.receiver = self;
  v5.super_class = HUIconCollectionListCell;
  configurationState = [(HUIconCollectionListCell *)&v5 configurationState];
  [configurationState setDisabled:{-[HUIconCollectionListCell isDisabled](self, "isDisabled")}];

  return configurationState;
}

- (void)setIconDisplayStyle:(unint64_t)style
{
  if (self->_iconDisplayStyle != style)
  {
    self->_iconDisplayStyle = style;
    [(HUIconCollectionListCell *)self updateUIWithAnimation:0];
  }
}

- (void)setIconSize:(unint64_t)size
{
  iconView = [(HUIconCollectionListCell *)self iconView];
  [iconView setIconSize:size];

  [(HUIconCollectionListCell *)self iconSize];
  HUDefaultSizeForIconSize();
  v7 = v6;
  iconSizeConstraint = [(HUIconCollectionListCell *)self iconSizeConstraint];
  [iconSizeConstraint setConstant:v7];
}

- (BOOL)disableContinuousIconAnimation
{
  iconView = [(HUIconCollectionListCell *)self iconView];
  disableContinuousAnimation = [iconView disableContinuousAnimation];

  return disableContinuousAnimation;
}

- (void)setDisableContinuousIconAnimation:(BOOL)animation
{
  animationCopy = animation;
  iconView = [(HUIconCollectionListCell *)self iconView];
  [iconView setDisableContinuousAnimation:animationCopy];
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  iconView = [(HUIconCollectionListCell *)self iconView];
  item = [(HUIconCollectionListCell *)self item];
  latestResults = [item latestResults];
  v8 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E88]];
  [iconView updateWithIconDescriptor:v8 displayStyle:-[HUIconCollectionListCell iconDisplayStyle](self animated:{"iconDisplayStyle"), animationCopy}];

  [(HUIconCollectionListCell *)self updateAccessories];
}

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  contentConfiguration = [(HUIconCollectionListCell *)self contentConfiguration];
  v6 = [contentConfiguration updatedConfigurationForState:stateCopy];

  [(HUIconCollectionListCell *)self setContentConfiguration:v6];

  [(HUIconCollectionListCell *)self _updateIcon];
}

- (void)updateAccessories
{
  _buildAccessories = [(HUIconCollectionListCell *)self _buildAccessories];
  [(HUIconCollectionListCell *)self setAccessories:_buildAccessories];
}

- (id)_buildAccessories
{
  v5[1] = *MEMORY[0x277D85DE8];
  iconAccessoryView = [(HUIconCollectionListCell *)self iconAccessoryView];
  v5[0] = iconAccessoryView;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (void)_createIconView
{
  iconView = [(HUIconCollectionListCell *)self iconView];

  if (iconView)
  {
    NSLog(&cfstr_AlreadyHaveIco.isa, self);
  }

  v4 = objc_alloc_init(MEMORY[0x277D180D0]);
  [(HUIconCollectionListCell *)self setIconView:v4];

  iconView2 = [(HUIconCollectionListCell *)self iconView];
  [iconView2 setContentMode:1];

  v6 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(HUIconCollectionListCell *)self setIconContainerView:v6];

  iconContainerView = [(HUIconCollectionListCell *)self iconContainerView];
  iconView3 = [(HUIconCollectionListCell *)self iconView];
  [iconContainerView addSubview:iconView3];

  array = [MEMORY[0x277CBEB18] array];
  [(HUIconCollectionListCell *)self iconSize];
  HUDefaultSizeForIconSize();
  v10 = v9;
  iconView4 = [(HUIconCollectionListCell *)self iconView];
  [iconView4 setTranslatesAutoresizingMaskIntoConstraints:0];

  iconView5 = [(HUIconCollectionListCell *)self iconView];
  widthAnchor = [iconView5 widthAnchor];
  v14 = [widthAnchor constraintEqualToConstant:v10];
  [(HUIconCollectionListCell *)self setIconSizeConstraint:v14];

  iconSizeConstraint = [(HUIconCollectionListCell *)self iconSizeConstraint];
  [array addObject:iconSizeConstraint];

  iconView6 = [(HUIconCollectionListCell *)self iconView];
  heightAnchor = [iconView6 heightAnchor];
  iconView7 = [(HUIconCollectionListCell *)self iconView];
  widthAnchor2 = [iconView7 widthAnchor];
  v20 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
  [array addObject:v20];

  iconContainerView2 = [(HUIconCollectionListCell *)self iconContainerView];
  centerXAnchor = [iconContainerView2 centerXAnchor];
  iconView8 = [(HUIconCollectionListCell *)self iconView];
  centerXAnchor2 = [iconView8 centerXAnchor];
  v25 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [array addObject:v25];

  iconContainerView3 = [(HUIconCollectionListCell *)self iconContainerView];
  centerYAnchor = [iconContainerView3 centerYAnchor];
  iconView9 = [(HUIconCollectionListCell *)self iconView];
  centerYAnchor2 = [iconView9 centerYAnchor];
  v30 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [array addObject:v30];

  iconContainerView4 = [(HUIconCollectionListCell *)self iconContainerView];
  widthAnchor3 = [iconContainerView4 widthAnchor];
  [(HUIconCollectionListCell *)self frame];
  v34 = [widthAnchor3 constraintEqualToConstant:v33];
  [array addObject:v34];

  iconContainerView5 = [(HUIconCollectionListCell *)self iconContainerView];
  heightAnchor2 = [iconContainerView5 heightAnchor];
  iconContainerView6 = [(HUIconCollectionListCell *)self iconContainerView];
  widthAnchor4 = [iconContainerView6 widthAnchor];
  v39 = [heightAnchor2 constraintEqualToAnchor:widthAnchor4];
  [array addObject:v39];

  [MEMORY[0x277CCAAD0] activateConstraints:array];
  v40 = objc_alloc(MEMORY[0x277D75250]);
  iconContainerView7 = [(HUIconCollectionListCell *)self iconContainerView];
  v42 = [v40 initWithCustomView:iconContainerView7 placement:0];
  [(HUIconCollectionListCell *)self setIconAccessoryView:v42];

  [(HUIconCollectionListCell *)self _updateIcon];
}

- (void)_updateIcon
{
  if ([(HUIconCollectionListCell *)self isDisabled]&& [(HUIconCollectionListCell *)self iconTintColorFollowsDisabledState])
  {
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    iconView = [(HUIconCollectionListCell *)self iconView];
    [iconView setTintColor:systemGrayColor];

LABEL_8:
    goto LABEL_9;
  }

  iconForegroundColorFollowsTintColor = [(HUIconCollectionListCell *)self iconForegroundColorFollowsTintColor];
  if (iconForegroundColorFollowsTintColor)
  {
    systemGrayColor = 0;
  }

  else
  {
    systemGrayColor = [(HUIconCollectionListCell *)self iconForegroundColor];
  }

  iconView2 = [(HUIconCollectionListCell *)self iconView];
  [iconView2 setTintColor:systemGrayColor];

  if (!iconForegroundColorFollowsTintColor)
  {
    goto LABEL_8;
  }

LABEL_9:
  [(HUIconCollectionListCell *)self iconAlpha];
  if (v7 != 0.0)
  {
    [(HUIconCollectionListCell *)self iconAlpha];
    v9 = v8;
    iconView3 = [(HUIconCollectionListCell *)self iconView];
    [iconView3 setAlpha:v9];
  }

  if ([(HUIconCollectionListCell *)self enableTappableIcon])
  {
    v11 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__iconTapped_];
    iconContainerView = [(HUIconCollectionListCell *)self iconContainerView];
    [iconContainerView addGestureRecognizer:v11];
  }

  iconSize = [(HUIconCollectionListCell *)self iconSize];
  iconView4 = [(HUIconCollectionListCell *)self iconView];
  [iconView4 setIconSize:iconSize];

  [(HUIconCollectionListCell *)self updateAccessories];
}

- (void)_iconTapped:(id)tapped
{
  if (![(HUIconCollectionListCell *)self isAnimatingPop])
  {
    [(HUIconCollectionListCell *)self setIsAnimatingPop:1];
    iconView = [(HUIconCollectionListCell *)self iconView];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__HUIconCollectionListCell__iconTapped___block_invoke;
    v7[3] = &unk_277DB8488;
    v7[4] = self;
    [HUAnimationUtilities schedulePopAnimation:iconView scaleFactor:v7 beginDuration:0.7 endDuration:0.15 completion:0.3];

    delegate = [(HUIconCollectionListCell *)self delegate];
    item = [(HUIconCollectionListCell *)self item];
    [delegate didTapIconForCell:self withItem:item];
  }
}

- (HUIconCollectionListCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end