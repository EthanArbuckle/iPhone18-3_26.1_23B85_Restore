@interface HUAccessoryButtonTableViewHeaderView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (HUAccessoryButtonTableViewHeaderView)initWithReuseIdentifier:(id)identifier;
- (id)defaultAccessoryButtonFont;
- (void)accessoryButtonPressed;
- (void)prepareForReuse;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUAccessoryButtonTableViewHeaderView

- (HUAccessoryButtonTableViewHeaderView)initWithReuseIdentifier:(id)identifier
{
  v17.receiver = self;
  v17.super_class = HUAccessoryButtonTableViewHeaderView;
  v3 = [(HUAccessoryButtonTableViewHeaderView *)&v17 initWithReuseIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    [(HUAccessoryButtonTableViewHeaderView *)v3 setItemSection:0];
    [(HUAccessoryButtonTableViewHeaderView *)v4 setOverrideAccessoryButtonTitle:0];
    defaultAccessoryButtonFont = [(HUAccessoryButtonTableViewHeaderView *)v4 defaultAccessoryButtonFont];
    [(HUAccessoryButtonTableViewHeaderView *)v4 setAccessoryButtonFont:defaultAccessoryButtonFont];

    hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
    [(HUAccessoryButtonTableViewHeaderView *)v4 setTintColor:hf_keyColor];

    [(HUAccessoryButtonTableViewHeaderView *)v4 setNeedsUpdateConstraints];
    v7 = [MEMORY[0x277D75220] buttonWithType:1];
    [(HUAccessoryButtonTableViewHeaderView *)v4 setAccessoryButton:v7];

    effectiveUserInterfaceLayoutDirection = [(HUAccessoryButtonTableViewHeaderView *)v4 effectiveUserInterfaceLayoutDirection];
    accessoryButton = [(HUAccessoryButtonTableViewHeaderView *)v4 accessoryButton];
    v10 = accessoryButton;
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    [accessoryButton setContentHorizontalAlignment:v11];

    accessoryButton2 = [(HUAccessoryButtonTableViewHeaderView *)v4 accessoryButton];
    [accessoryButton2 setTranslatesAutoresizingMaskIntoConstraints:0];

    accessoryButton3 = [(HUAccessoryButtonTableViewHeaderView *)v4 accessoryButton];
    [accessoryButton3 addTarget:v4 action:sel_accessoryButtonPressed forControlEvents:64];

    contentView = [(HUAccessoryButtonTableViewHeaderView *)v4 contentView];
    accessoryButton4 = [(HUAccessoryButtonTableViewHeaderView *)v4 accessoryButton];
    [contentView addSubview:accessoryButton4];

    [(HUAccessoryButtonTableViewHeaderView *)v4 updateUIWithAnimation:0];
  }

  return v4;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HUAccessoryButtonTableViewHeaderView;
  [(HUAccessoryButtonTableViewHeaderView *)&v3 prepareForReuse];
  [(HUAccessoryButtonTableViewHeaderView *)self setItemSection:0];
}

- (void)updateConstraints
{
  v35[5] = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = HUAccessoryButtonTableViewHeaderView;
  [(HUAccessoryButtonTableViewHeaderView *)&v34 updateConstraints];
  v21 = MEMORY[0x277CCAAD0];
  contentView = [(HUAccessoryButtonTableViewHeaderView *)self contentView];
  bottomAnchor = [contentView bottomAnchor];
  accessoryButton = [(HUAccessoryButtonTableViewHeaderView *)self accessoryButton];
  bottomAnchor2 = [accessoryButton bottomAnchor];
  v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v35[0] = v29;
  contentView2 = [(HUAccessoryButtonTableViewHeaderView *)self contentView];
  layoutMarginsGuide = [contentView2 layoutMarginsGuide];
  trailingAnchor = [layoutMarginsGuide trailingAnchor];
  accessoryButton2 = [(HUAccessoryButtonTableViewHeaderView *)self accessoryButton];
  trailingAnchor2 = [accessoryButton2 trailingAnchor];
  v23 = [trailingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor2 multiplier:1.0];
  v35[1] = v23;
  contentView3 = [(HUAccessoryButtonTableViewHeaderView *)self contentView];
  layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
  trailingAnchor3 = [layoutMarginsGuide2 trailingAnchor];
  accessoryButton3 = [(HUAccessoryButtonTableViewHeaderView *)self accessoryButton];
  titleLabel = [accessoryButton3 titleLabel];
  trailingAnchor4 = [titleLabel trailingAnchor];
  v15 = [trailingAnchor3 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor4 multiplier:1.0];
  v35[2] = v15;
  contentView4 = [(HUAccessoryButtonTableViewHeaderView *)self contentView];
  layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
  leadingAnchor = [layoutMarginsGuide3 leadingAnchor];
  accessoryButton4 = [(HUAccessoryButtonTableViewHeaderView *)self accessoryButton];
  titleLabel2 = [accessoryButton4 titleLabel];
  leadingAnchor2 = [titleLabel2 leadingAnchor];
  v7 = [leadingAnchor constraintEqualToSystemSpacingAfterAnchor:leadingAnchor2 multiplier:1.0];
  v35[3] = v7;
  accessoryButton5 = [(HUAccessoryButtonTableViewHeaderView *)self accessoryButton];
  widthAnchor = [accessoryButton5 widthAnchor];
  v10 = [widthAnchor constraintEqualToConstant:100.0];
  v35[4] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:5];
  [v21 activateConstraints:v11];

  accessoryButton6 = [(HUAccessoryButtonTableViewHeaderView *)self accessoryButton];
  [accessoryButton6 setClipsToBounds:0];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  v15.receiver = self;
  v15.super_class = HUAccessoryButtonTableViewHeaderView;
  [(HUAccessoryButtonTableViewHeaderView *)&v15 systemLayoutSizeFittingSize:size.width withHorizontalFittingPriority:size.height verticalFittingPriority:?];
  v7 = v6;
  v9 = v8;
  v10 = [objc_opt_class() _defaultFontForTableViewStyle:-[HUAccessoryButtonTableViewHeaderView tableViewStyle](self isSectionHeader:{"tableViewStyle"), 1}];
  [v10 _scaledValueForValue:40.0];
  v12 = v9 + v11;

  v13 = v7;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (id)defaultAccessoryButtonFont
{
  v3 = objc_opt_class();
  tableViewStyle = [(HUAccessoryButtonTableViewHeaderView *)self tableViewStyle];

  return [v3 _defaultFontForTableViewStyle:tableViewStyle isSectionHeader:1];
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  itemSection = [(HUAccessoryButtonTableViewHeaderView *)self itemSection];
  headerAccessoryButtonTitle = [itemSection headerAccessoryButtonTitle];

  overrideAccessoryButtonTitle = [(HUAccessoryButtonTableViewHeaderView *)self overrideAccessoryButtonTitle];
  v7 = overrideAccessoryButtonTitle;
  if (overrideAccessoryButtonTitle)
  {
    v8 = overrideAccessoryButtonTitle;
  }

  else
  {
    v8 = headerAccessoryButtonTitle;
  }

  v9 = v8;

  accessoryButton = [(HUAccessoryButtonTableViewHeaderView *)self accessoryButton];
  [accessoryButton setTitle:v9 forState:0];

  accessoryButton2 = [(HUAccessoryButtonTableViewHeaderView *)self accessoryButton];
  titleLabel = [accessoryButton2 titleLabel];
  accessoryButtonFont = [(HUAccessoryButtonTableViewHeaderView *)self accessoryButtonFont];
  [titleLabel setFont:accessoryButtonFont];

  accessoryButton3 = [(HUAccessoryButtonTableViewHeaderView *)self accessoryButton];
  tintColor = [(HUAccessoryButtonTableViewHeaderView *)self tintColor];
  [accessoryButton3 setTitleColor:tintColor forState:0];

  accessoryButton4 = [(HUAccessoryButtonTableViewHeaderView *)self accessoryButton];
  [accessoryButton4 setNeedsLayout];
}

- (void)accessoryButtonPressed
{
  itemSection = [(HUAccessoryButtonTableViewHeaderView *)self itemSection];
  headerAccessoryButtonDelegate = [itemSection headerAccessoryButtonDelegate];

  if (headerAccessoryButtonDelegate)
  {
    itemSection2 = [(HUAccessoryButtonTableViewHeaderView *)self itemSection];
    headerAccessoryButtonDelegate2 = [itemSection2 headerAccessoryButtonDelegate];
    itemSection3 = [(HUAccessoryButtonTableViewHeaderView *)self itemSection];
    [headerAccessoryButtonDelegate2 itemSection:itemSection3 accessoryButtonPressedInHeader:self];
  }
}

@end