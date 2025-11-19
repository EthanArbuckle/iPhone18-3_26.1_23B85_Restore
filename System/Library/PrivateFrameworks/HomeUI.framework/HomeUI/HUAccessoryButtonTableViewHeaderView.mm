@interface HUAccessoryButtonTableViewHeaderView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (HUAccessoryButtonTableViewHeaderView)initWithReuseIdentifier:(id)a3;
- (id)defaultAccessoryButtonFont;
- (void)accessoryButtonPressed;
- (void)prepareForReuse;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUAccessoryButtonTableViewHeaderView

- (HUAccessoryButtonTableViewHeaderView)initWithReuseIdentifier:(id)a3
{
  v17.receiver = self;
  v17.super_class = HUAccessoryButtonTableViewHeaderView;
  v3 = [(HUAccessoryButtonTableViewHeaderView *)&v17 initWithReuseIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    [(HUAccessoryButtonTableViewHeaderView *)v3 setItemSection:0];
    [(HUAccessoryButtonTableViewHeaderView *)v4 setOverrideAccessoryButtonTitle:0];
    v5 = [(HUAccessoryButtonTableViewHeaderView *)v4 defaultAccessoryButtonFont];
    [(HUAccessoryButtonTableViewHeaderView *)v4 setAccessoryButtonFont:v5];

    v6 = [MEMORY[0x277D75348] hf_keyColor];
    [(HUAccessoryButtonTableViewHeaderView *)v4 setTintColor:v6];

    [(HUAccessoryButtonTableViewHeaderView *)v4 setNeedsUpdateConstraints];
    v7 = [MEMORY[0x277D75220] buttonWithType:1];
    [(HUAccessoryButtonTableViewHeaderView *)v4 setAccessoryButton:v7];

    v8 = [(HUAccessoryButtonTableViewHeaderView *)v4 effectiveUserInterfaceLayoutDirection];
    v9 = [(HUAccessoryButtonTableViewHeaderView *)v4 accessoryButton];
    v10 = v9;
    if (v8 == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    [v9 setContentHorizontalAlignment:v11];

    v12 = [(HUAccessoryButtonTableViewHeaderView *)v4 accessoryButton];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

    v13 = [(HUAccessoryButtonTableViewHeaderView *)v4 accessoryButton];
    [v13 addTarget:v4 action:sel_accessoryButtonPressed forControlEvents:64];

    v14 = [(HUAccessoryButtonTableViewHeaderView *)v4 contentView];
    v15 = [(HUAccessoryButtonTableViewHeaderView *)v4 accessoryButton];
    [v14 addSubview:v15];

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
  v33 = [(HUAccessoryButtonTableViewHeaderView *)self contentView];
  v31 = [v33 bottomAnchor];
  v32 = [(HUAccessoryButtonTableViewHeaderView *)self accessoryButton];
  v30 = [v32 bottomAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v35[0] = v29;
  v28 = [(HUAccessoryButtonTableViewHeaderView *)self contentView];
  v27 = [v28 layoutMarginsGuide];
  v25 = [v27 trailingAnchor];
  v26 = [(HUAccessoryButtonTableViewHeaderView *)self accessoryButton];
  v24 = [v26 trailingAnchor];
  v23 = [v25 constraintEqualToSystemSpacingAfterAnchor:v24 multiplier:1.0];
  v35[1] = v23;
  v22 = [(HUAccessoryButtonTableViewHeaderView *)self contentView];
  v20 = [v22 layoutMarginsGuide];
  v18 = [v20 trailingAnchor];
  v19 = [(HUAccessoryButtonTableViewHeaderView *)self accessoryButton];
  v17 = [v19 titleLabel];
  v16 = [v17 trailingAnchor];
  v15 = [v18 constraintEqualToSystemSpacingAfterAnchor:v16 multiplier:1.0];
  v35[2] = v15;
  v14 = [(HUAccessoryButtonTableViewHeaderView *)self contentView];
  v13 = [v14 layoutMarginsGuide];
  v3 = [v13 leadingAnchor];
  v4 = [(HUAccessoryButtonTableViewHeaderView *)self accessoryButton];
  v5 = [v4 titleLabel];
  v6 = [v5 leadingAnchor];
  v7 = [v3 constraintEqualToSystemSpacingAfterAnchor:v6 multiplier:1.0];
  v35[3] = v7;
  v8 = [(HUAccessoryButtonTableViewHeaderView *)self accessoryButton];
  v9 = [v8 widthAnchor];
  v10 = [v9 constraintEqualToConstant:100.0];
  v35[4] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:5];
  [v21 activateConstraints:v11];

  v12 = [(HUAccessoryButtonTableViewHeaderView *)self accessoryButton];
  [v12 setClipsToBounds:0];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  v15.receiver = self;
  v15.super_class = HUAccessoryButtonTableViewHeaderView;
  [(HUAccessoryButtonTableViewHeaderView *)&v15 systemLayoutSizeFittingSize:a3.width withHorizontalFittingPriority:a3.height verticalFittingPriority:?];
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
  v4 = [(HUAccessoryButtonTableViewHeaderView *)self tableViewStyle];

  return [v3 _defaultFontForTableViewStyle:v4 isSectionHeader:1];
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v4 = [(HUAccessoryButtonTableViewHeaderView *)self itemSection];
  v5 = [v4 headerAccessoryButtonTitle];

  v6 = [(HUAccessoryButtonTableViewHeaderView *)self overrideAccessoryButtonTitle];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  v10 = [(HUAccessoryButtonTableViewHeaderView *)self accessoryButton];
  [v10 setTitle:v9 forState:0];

  v11 = [(HUAccessoryButtonTableViewHeaderView *)self accessoryButton];
  v12 = [v11 titleLabel];
  v13 = [(HUAccessoryButtonTableViewHeaderView *)self accessoryButtonFont];
  [v12 setFont:v13];

  v14 = [(HUAccessoryButtonTableViewHeaderView *)self accessoryButton];
  v15 = [(HUAccessoryButtonTableViewHeaderView *)self tintColor];
  [v14 setTitleColor:v15 forState:0];

  v16 = [(HUAccessoryButtonTableViewHeaderView *)self accessoryButton];
  [v16 setNeedsLayout];
}

- (void)accessoryButtonPressed
{
  v3 = [(HUAccessoryButtonTableViewHeaderView *)self itemSection];
  v4 = [v3 headerAccessoryButtonDelegate];

  if (v4)
  {
    v7 = [(HUAccessoryButtonTableViewHeaderView *)self itemSection];
    v5 = [v7 headerAccessoryButtonDelegate];
    v6 = [(HUAccessoryButtonTableViewHeaderView *)self itemSection];
    [v5 itemSection:v6 accessoryButtonPressedInHeader:self];
  }
}

@end