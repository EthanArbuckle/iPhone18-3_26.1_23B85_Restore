@interface HUGridServicePlaceholderCell
- (id)_textConfiguration;
- (void)_setupServiceCell;
- (void)_updateSecondaryContentDisplayStyle;
- (void)displayStyleDidChange;
- (void)layoutSubviews;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUGridServicePlaceholderCell

- (void)displayStyleDidChange
{
  v3.receiver = self;
  v3.super_class = HUGridServicePlaceholderCell;
  [(HUGridServiceCell *)&v3 displayStyleDidChange];
  [(HUGridServicePlaceholderCell *)self _updateSecondaryContentDisplayStyle];
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  v5.receiver = self;
  v5.super_class = HUGridServicePlaceholderCell;
  [(HUGridServiceCell *)&v5 updateUIWithAnimation:?];
  [(HUGridServiceCell *)self _updateIconAnimated:animationCopy];
  [(HUGridServiceCell *)self _updateText];
  [(HUGridServiceCell *)self _updateAccessoryView];
  [(HUGridServicePlaceholderCell *)self setNeedsLayout];
  [(HUGridServiceCell *)self setHasUpdatedUISinceLastReuse:1];
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = HUGridServicePlaceholderCell;
  [(HUGridServiceCell *)&v22 layoutSubviews];
  layoutOptions = [(HUGridCell *)self layoutOptions];
  [layoutOptions cellInnerMargin];
  v5 = v4;

  effectiveUserInterfaceLayoutDirection = [(HUGridServicePlaceholderCell *)self effectiveUserInterfaceLayoutDirection];
  iconView = [(HUGridServicePlaceholderCell *)self iconView];
  layoutOptions2 = [(HUGridCell *)self layoutOptions];
  [layoutOptions2 iconSize];
  v10 = v9;
  layoutOptions3 = [(HUGridCell *)self layoutOptions];
  [layoutOptions3 iconSize];
  [iconView sizeThatFits:{v10, v12}];
  v14 = v13;
  v16 = v15;

  [(HUGridServicePlaceholderCell *)self contentView];
  if (effectiveUserInterfaceLayoutDirection == 1)
    v17 = {;
    [v17 bounds];
    v18 = CGRectGetMaxX(v23) - v5 - v14;
  }

  else
    v17 = {;
    [v17 bounds];
    v18 = v5 + CGRectGetMinX(v24);
  }

  contentView = [(HUGridServicePlaceholderCell *)self contentView];
  [contentView bounds];
  v20 = v5 + CGRectGetMinY(v25);
  iconView2 = [(HUGridServicePlaceholderCell *)self iconView];
  [iconView2 setFrame:{v18, v20, v14, v16}];
}

- (void)_setupServiceCell
{
  v5.receiver = self;
  v5.super_class = HUGridServicePlaceholderCell;
  [(HUGridServiceCell *)&v5 _setupServiceCell];
  v3 = [MEMORY[0x277D75210] effectWithStyle:6];
  gridBackgroundView = [(HUGridCell *)self gridBackgroundView];
  [gridBackgroundView setOverrideBackgroundEffect:v3];
}

- (id)_textConfiguration
{
  v2 = objc_alloc_init(HUGridServiceCellTextConfiguration);
  v3 = objc_alloc(MEMORY[0x277D14AE0]);
  v4 = +[HUAddAccessoryUtilities addAccessoryString];
  v5 = [v3 initWithRawServiceName:v4 rawRoomName:0];
  [(HUGridServiceCellTextConfiguration *)v2 setNameComponents:v5];

  return v2;
}

- (void)_updateSecondaryContentDisplayStyle
{
  v3 = [(HUGridServicePlaceholderCell *)self iconDisplayStyle]== 2;
  serviceTextView = [(HUGridServicePlaceholderCell *)self serviceTextView];
  [serviceTextView setTextColorFollowsTintColor:v3];

  [(HUGridCell *)self secondaryContentDimmingFactor];
  v6 = v5;
  serviceTextView2 = [(HUGridServicePlaceholderCell *)self serviceTextView];
  [serviceTextView2 setDescriptionTextColorDimmingFactor:v6];

  [(HUGridCell *)self secondaryContentDimmingFactor];
  v9 = v8;
  exclamationView = [(HUGridServiceCell *)self exclamationView];
  innerContentView = [exclamationView innerContentView];
  [innerContentView setAlpha:v9];

  secondaryContentEffect = [(HUGridCell *)self secondaryContentEffect];
  exclamationView2 = [(HUGridServiceCell *)self exclamationView];
  [exclamationView2 setEffect:secondaryContentEffect];
}

@end