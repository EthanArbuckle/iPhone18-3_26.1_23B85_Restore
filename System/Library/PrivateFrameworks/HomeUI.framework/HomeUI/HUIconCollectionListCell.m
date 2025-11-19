@interface HUIconCollectionListCell
- (BOOL)disableContinuousIconAnimation;
- (HUIconCollectionListCell)initWithFrame:(CGRect)a3;
- (HUIconCollectionListCellDelegate)delegate;
- (id)_buildAccessories;
- (id)configurationState;
- (void)_createIconView;
- (void)_iconTapped:(id)a3;
- (void)_updateIcon;
- (void)setDisableContinuousIconAnimation:(BOOL)a3;
- (void)setIconDisplayStyle:(unint64_t)a3;
- (void)setIconForegroundColor:(id)a3;
- (void)setIconSize:(unint64_t)a3;
- (void)updateAccessories;
- (void)updateConfigurationUsingState:(id)a3;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUIconCollectionListCell

- (HUIconCollectionListCell)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = HUIconCollectionListCell;
  v3 = [(HUIconCollectionListCell *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_iconSize = 0;
    v5 = [MEMORY[0x277D75348] systemWhiteColor];
    iconForegroundColor = v4->_iconForegroundColor;
    v4->_iconForegroundColor = v5;

    v4->_iconForegroundColorFollowsTintColor = 1;
    v4->_iconAlpha = 1.0;
    v4->_iconDisplayStyle = 1;
    v4->_iconTintColorFollowsDisabledState = 1;
    v4->_separatorInsetLinesUpWithText = 1;
    [(HUIconCollectionListCell *)v4 _createIconView];
  }

  return v4;
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

  [(HUIconCollectionListCell *)self _updateIcon];
}

- (id)configurationState
{
  v5.receiver = self;
  v5.super_class = HUIconCollectionListCell;
  v3 = [(HUIconCollectionListCell *)&v5 configurationState];
  [v3 setDisabled:{-[HUIconCollectionListCell isDisabled](self, "isDisabled")}];

  return v3;
}

- (void)setIconDisplayStyle:(unint64_t)a3
{
  if (self->_iconDisplayStyle != a3)
  {
    self->_iconDisplayStyle = a3;
    [(HUIconCollectionListCell *)self updateUIWithAnimation:0];
  }
}

- (void)setIconSize:(unint64_t)a3
{
  v5 = [(HUIconCollectionListCell *)self iconView];
  [v5 setIconSize:a3];

  [(HUIconCollectionListCell *)self iconSize];
  HUDefaultSizeForIconSize();
  v7 = v6;
  v8 = [(HUIconCollectionListCell *)self iconSizeConstraint];
  [v8 setConstant:v7];
}

- (BOOL)disableContinuousIconAnimation
{
  v2 = [(HUIconCollectionListCell *)self iconView];
  v3 = [v2 disableContinuousAnimation];

  return v3;
}

- (void)setDisableContinuousIconAnimation:(BOOL)a3
{
  v3 = a3;
  v4 = [(HUIconCollectionListCell *)self iconView];
  [v4 setDisableContinuousAnimation:v3];
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUIconCollectionListCell *)self iconView];
  v6 = [(HUIconCollectionListCell *)self item];
  v7 = [v6 latestResults];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13E88]];
  [v5 updateWithIconDescriptor:v8 displayStyle:-[HUIconCollectionListCell iconDisplayStyle](self animated:{"iconDisplayStyle"), v3}];

  [(HUIconCollectionListCell *)self updateAccessories];
}

- (void)updateConfigurationUsingState:(id)a3
{
  v4 = a3;
  v5 = [(HUIconCollectionListCell *)self contentConfiguration];
  v6 = [v5 updatedConfigurationForState:v4];

  [(HUIconCollectionListCell *)self setContentConfiguration:v6];

  [(HUIconCollectionListCell *)self _updateIcon];
}

- (void)updateAccessories
{
  v3 = [(HUIconCollectionListCell *)self _buildAccessories];
  [(HUIconCollectionListCell *)self setAccessories:v3];
}

- (id)_buildAccessories
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [(HUIconCollectionListCell *)self iconAccessoryView];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (void)_createIconView
{
  v3 = [(HUIconCollectionListCell *)self iconView];

  if (v3)
  {
    NSLog(&cfstr_AlreadyHaveIco.isa, self);
  }

  v4 = objc_alloc_init(MEMORY[0x277D180D0]);
  [(HUIconCollectionListCell *)self setIconView:v4];

  v5 = [(HUIconCollectionListCell *)self iconView];
  [v5 setContentMode:1];

  v6 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(HUIconCollectionListCell *)self setIconContainerView:v6];

  v7 = [(HUIconCollectionListCell *)self iconContainerView];
  v8 = [(HUIconCollectionListCell *)self iconView];
  [v7 addSubview:v8];

  v43 = [MEMORY[0x277CBEB18] array];
  [(HUIconCollectionListCell *)self iconSize];
  HUDefaultSizeForIconSize();
  v10 = v9;
  v11 = [(HUIconCollectionListCell *)self iconView];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(HUIconCollectionListCell *)self iconView];
  v13 = [v12 widthAnchor];
  v14 = [v13 constraintEqualToConstant:v10];
  [(HUIconCollectionListCell *)self setIconSizeConstraint:v14];

  v15 = [(HUIconCollectionListCell *)self iconSizeConstraint];
  [v43 addObject:v15];

  v16 = [(HUIconCollectionListCell *)self iconView];
  v17 = [v16 heightAnchor];
  v18 = [(HUIconCollectionListCell *)self iconView];
  v19 = [v18 widthAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  [v43 addObject:v20];

  v21 = [(HUIconCollectionListCell *)self iconContainerView];
  v22 = [v21 centerXAnchor];
  v23 = [(HUIconCollectionListCell *)self iconView];
  v24 = [v23 centerXAnchor];
  v25 = [v22 constraintEqualToAnchor:v24];
  [v43 addObject:v25];

  v26 = [(HUIconCollectionListCell *)self iconContainerView];
  v27 = [v26 centerYAnchor];
  v28 = [(HUIconCollectionListCell *)self iconView];
  v29 = [v28 centerYAnchor];
  v30 = [v27 constraintEqualToAnchor:v29];
  [v43 addObject:v30];

  v31 = [(HUIconCollectionListCell *)self iconContainerView];
  v32 = [v31 widthAnchor];
  [(HUIconCollectionListCell *)self frame];
  v34 = [v32 constraintEqualToConstant:v33];
  [v43 addObject:v34];

  v35 = [(HUIconCollectionListCell *)self iconContainerView];
  v36 = [v35 heightAnchor];
  v37 = [(HUIconCollectionListCell *)self iconContainerView];
  v38 = [v37 widthAnchor];
  v39 = [v36 constraintEqualToAnchor:v38];
  [v43 addObject:v39];

  [MEMORY[0x277CCAAD0] activateConstraints:v43];
  v40 = objc_alloc(MEMORY[0x277D75250]);
  v41 = [(HUIconCollectionListCell *)self iconContainerView];
  v42 = [v40 initWithCustomView:v41 placement:0];
  [(HUIconCollectionListCell *)self setIconAccessoryView:v42];

  [(HUIconCollectionListCell *)self _updateIcon];
}

- (void)_updateIcon
{
  if ([(HUIconCollectionListCell *)self isDisabled]&& [(HUIconCollectionListCell *)self iconTintColorFollowsDisabledState])
  {
    v3 = [MEMORY[0x277D75348] systemGrayColor];
    v4 = [(HUIconCollectionListCell *)self iconView];
    [v4 setTintColor:v3];

LABEL_8:
    goto LABEL_9;
  }

  v5 = [(HUIconCollectionListCell *)self iconForegroundColorFollowsTintColor];
  if (v5)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(HUIconCollectionListCell *)self iconForegroundColor];
  }

  v6 = [(HUIconCollectionListCell *)self iconView];
  [v6 setTintColor:v3];

  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_9:
  [(HUIconCollectionListCell *)self iconAlpha];
  if (v7 != 0.0)
  {
    [(HUIconCollectionListCell *)self iconAlpha];
    v9 = v8;
    v10 = [(HUIconCollectionListCell *)self iconView];
    [v10 setAlpha:v9];
  }

  if ([(HUIconCollectionListCell *)self enableTappableIcon])
  {
    v11 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__iconTapped_];
    v12 = [(HUIconCollectionListCell *)self iconContainerView];
    [v12 addGestureRecognizer:v11];
  }

  v13 = [(HUIconCollectionListCell *)self iconSize];
  v14 = [(HUIconCollectionListCell *)self iconView];
  [v14 setIconSize:v13];

  [(HUIconCollectionListCell *)self updateAccessories];
}

- (void)_iconTapped:(id)a3
{
  if (![(HUIconCollectionListCell *)self isAnimatingPop])
  {
    [(HUIconCollectionListCell *)self setIsAnimatingPop:1];
    v4 = [(HUIconCollectionListCell *)self iconView];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__HUIconCollectionListCell__iconTapped___block_invoke;
    v7[3] = &unk_277DB8488;
    v7[4] = self;
    [HUAnimationUtilities schedulePopAnimation:v4 scaleFactor:v7 beginDuration:0.7 endDuration:0.15 completion:0.3];

    v5 = [(HUIconCollectionListCell *)self delegate];
    v6 = [(HUIconCollectionListCell *)self item];
    [v5 didTapIconForCell:self withItem:v6];
  }
}

- (HUIconCollectionListCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end