@interface HUQuickControlSectionHeaderView
+ (double)estimatedHeight;
- (HFItemSectionAccessoryButtonHeaderDelegate)accessoryButtonTarget;
- (HUQuickControlSectionHeaderView)initWithFrame:(CGRect)a3;
- (void)accessoryButtonTapped;
- (void)drawRect:(CGRect)a3;
- (void)prepareForReuse;
- (void)setAccessoryButtonTitleText:(id)a3;
- (void)setAttributedTitleText:(id)a3;
- (void)setHidden:(BOOL)a3;
- (void)setHideAccessoryButton:(BOOL)a3;
- (void)setHideHeaderText:(BOOL)a3;
- (void)setHideSeparator:(BOOL)a3;
- (void)setTitleText:(id)a3;
- (void)updateConstraints;
- (void)updateUIForReachabilityState:(unint64_t)a3;
@end

@implementation HUQuickControlSectionHeaderView

+ (double)estimatedHeight
{
  v2 = [a1 _titleFont];
  [v2 lineHeight];
  v4 = v3 + 16.0;

  return v4;
}

- (HUQuickControlSectionHeaderView)initWithFrame:(CGRect)a3
{
  v19.receiver = self;
  v19.super_class = HUQuickControlSectionHeaderView;
  v3 = [(HUQuickControlSectionHeaderView *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    titleText = v3->_titleText;
    v3->_titleText = &stru_2823E0EE8;

    v6 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v6;

    v8 = [objc_opt_class() _titleFont];
    [(UILabel *)v4->_titleLabel setFont:v8];

    v9 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v4->_titleLabel setTextColor:v9];

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUQuickControlSectionHeaderView *)v4 addSubview:v4->_titleLabel];
    v10 = [MEMORY[0x277D75220] buttonWithType:1];
    accessoryButton = v4->_accessoryButton;
    v4->_accessoryButton = v10;

    [(UIButton *)v4->_accessoryButton addTarget:v4 action:sel_accessoryButtonTapped forEvents:64];
    if (([MEMORY[0x277D14CE8] shouldUseProxHandOffMaterials] & 1) == 0)
    {
      v12 = v4->_accessoryButton;
      v13 = [MEMORY[0x277D75348] hf_keyColor];
      [(UIButton *)v12 setTitleColor:v13 forState:0];
    }

    v14 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76988] variant:1024];
    v15 = [(UIButton *)v4->_accessoryButton titleLabel];
    [v15 setFont:v14];

    [(UIButton *)v4->_accessoryButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [(UIButton *)v4->_accessoryButton titleLabel];
    [v16 setTextAlignment:1];

    [(HUQuickControlSectionHeaderView *)v4 addSubview:v4->_accessoryButton];
    v4->_hideSeparator = 0;
    v17 = [MEMORY[0x277D75348] clearColor];
    [(HUQuickControlSectionHeaderView *)v4 setBackgroundColor:v17];
  }

  return v4;
}

- (void)drawRect:(CGRect)a3
{
  width = a3.size.width;
  y = a3.origin.y;
  if (![(HUQuickControlSectionHeaderView *)self hideSeparator:a3.origin.x])
  {
    v6 = [MEMORY[0x277D75208] bezierPathWithRect:{40.0, y, width + -80.0, 2.0}];
    v5 = [MEMORY[0x277D75348] separatorColor];
    [v5 setFill];

    [v6 fill];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HUQuickControlSectionHeaderView;
  [(HUQuickControlSectionHeaderView *)&v3 prepareForReuse];
  [(HUQuickControlSectionHeaderView *)self setTitleText:&stru_2823E0EE8];
  self->_hideSeparator = 0;
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  if ([(HUQuickControlSectionHeaderView *)self isHidden]&& !v3 && [(HUQuickControlSectionHeaderView *)self hideAccessoryButton])
  {
    v5 = [(HUQuickControlSectionHeaderView *)self accessoryButton];
    [v5 setHidden:1];
  }

  v6.receiver = self;
  v6.super_class = HUQuickControlSectionHeaderView;
  [(HUQuickControlSectionHeaderView *)&v6 setHidden:v3];
}

- (void)setHideSeparator:(BOOL)a3
{
  if (self->_hideSeparator != a3)
  {
    self->_hideSeparator = a3;
    [(HUQuickControlSectionHeaderView *)self setNeedsDisplay];
  }
}

- (void)updateConstraints
{
  v3 = [(HUQuickControlSectionHeaderView *)self labelConstraints];

  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = [(HUQuickControlSectionHeaderView *)self titleLabel];
    v6 = [v5 leadingAnchor];
    v7 = [(HUQuickControlSectionHeaderView *)self leadingAnchor];
    v8 = [v6 constraintEqualToAnchor:v7 constant:40.0];
    [v4 addObject:v8];

    v9 = [(HUQuickControlSectionHeaderView *)self titleLabel];
    v10 = [v9 topAnchor];
    v11 = [(HUQuickControlSectionHeaderView *)self layoutMarginsGuide];
    v12 = [v11 topAnchor];
    v13 = [v10 constraintEqualToAnchor:v12];
    [v4 addObject:v13];

    v14 = [(HUQuickControlSectionHeaderView *)self titleLabel];
    v15 = [v14 bottomAnchor];
    v16 = [(HUQuickControlSectionHeaderView *)self layoutMarginsGuide];
    v17 = [v16 bottomAnchor];
    v18 = [v15 constraintEqualToAnchor:v17];
    [v4 addObject:v18];

    [(HUQuickControlSectionHeaderView *)self setLabelConstraints:v4];
  }

  v19 = MEMORY[0x277CCAAD0];
  v20 = [(HUQuickControlSectionHeaderView *)self labelConstraints];
  [v19 activateConstraints:v20];

  v21 = [(HUQuickControlSectionHeaderView *)self accessoryButtonConstraints];

  if (!v21)
  {
    v22 = [MEMORY[0x277CBEB18] array];
    v23 = [(HUQuickControlSectionHeaderView *)self accessoryButton];
    v24 = [v23 topAnchor];
    v25 = [(HUQuickControlSectionHeaderView *)self layoutMarginsGuide];
    v26 = [v25 topAnchor];
    v27 = [v24 constraintEqualToAnchor:v26];
    [v22 addObject:v27];

    v28 = [(HUQuickControlSectionHeaderView *)self accessoryButton];
    v29 = [v28 bottomAnchor];
    v30 = [(HUQuickControlSectionHeaderView *)self layoutMarginsGuide];
    v31 = [v30 bottomAnchor];
    v32 = [v29 constraintEqualToAnchor:v31];
    [v22 addObject:v32];

    v33 = [(HUQuickControlSectionHeaderView *)self accessoryButton];
    v34 = [v33 trailingAnchor];
    v35 = [(HUQuickControlSectionHeaderView *)self trailingAnchor];
    v36 = [v34 constraintEqualToAnchor:v35 constant:-40.0];
    [v22 addObject:v36];

    [(HUQuickControlSectionHeaderView *)self setAccessoryButtonConstraints:v22];
  }

  v37 = MEMORY[0x277CCAAD0];
  v38 = [(HUQuickControlSectionHeaderView *)self accessoryButtonConstraints];
  [v37 activateConstraints:v38];

  v39.receiver = self;
  v39.super_class = HUQuickControlSectionHeaderView;
  [(HUQuickControlSectionHeaderView *)&v39 updateConstraints];
}

- (void)setTitleText:(id)a3
{
  objc_storeStrong(&self->_titleText, a3);
  v5 = a3;
  v6 = [(HUQuickControlSectionHeaderView *)self titleLabel];
  [v6 setText:v5];

  v7 = [(HUQuickControlSectionHeaderView *)self titleLabel];
  [v7 sizeToFit];
}

- (void)setAttributedTitleText:(id)a3
{
  objc_storeStrong(&self->_attributedTitleText, a3);
  v5 = a3;
  v6 = [(HUQuickControlSectionHeaderView *)self titleLabel];
  [v6 setAttributedText:v5];

  v7 = [(HUQuickControlSectionHeaderView *)self titleLabel];
  [v7 sizeToFit];

  [(HUQuickControlSectionHeaderView *)self layoutIfNeeded];
}

- (void)setAccessoryButtonTitleText:(id)a3
{
  v9 = a3;
  objc_storeStrong(&self->_accessoryButtonTitleText, a3);
  v5 = [(HUQuickControlSectionHeaderView *)self accessoryButton];
  [v5 setTitle:v9 forState:0];

  v6 = !v9 || ![v9 length] || -[HUQuickControlSectionHeaderView hideAccessoryButton](self, "hideAccessoryButton");
  v7 = [(HUQuickControlSectionHeaderView *)self accessoryButton];
  [v7 setHidden:v6];

  v8 = [(HUQuickControlSectionHeaderView *)self accessoryButton];
  [v8 sizeToFit];
}

- (void)setHideAccessoryButton:(BOOL)a3
{
  if (self->_hideAccessoryButton != a3)
  {
    v4 = a3;
    self->_hideAccessoryButton = a3;
    v5 = [(HUQuickControlSectionHeaderView *)self accessoryButton];
    [v5 setHidden:v4];
  }
}

- (void)setHideHeaderText:(BOOL)a3
{
  if (self->_hideHeaderText != a3)
  {
    v4 = a3;
    self->_hideHeaderText = a3;
    v5 = [(HUQuickControlSectionHeaderView *)self titleLabel];
    [v5 setHidden:v4];
  }
}

- (void)accessoryButtonTapped
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(HUQuickControlSectionHeaderView *)self accessoryButtonTarget];
    v7 = 136315650;
    v8 = "[HUQuickControlSectionHeaderView accessoryButtonTapped]";
    v9 = 2112;
    v10 = self;
    v11 = 2112;
    v12 = v6;
    _os_log_debug_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEBUG, "%s(%@) button target: %@", &v7, 0x20u);
  }

  v4 = [(HUQuickControlSectionHeaderView *)self accessoryButtonTarget];
  v5 = [(HUQuickControlSectionHeaderView *)self itemSection];
  [v4 itemSection:v5 accessoryButtonPressedInHeader:self];
}

- (void)updateUIForReachabilityState:(unint64_t)a3
{
  if (a3 >= 2)
  {
    if (a3 != 2)
    {
      return;
    }

    v9 = [(HUQuickControlSectionHeaderView *)self titleLabel];
    [v9 setAlpha:1.0];

    v10 = [(HUQuickControlSectionHeaderView *)self accessoryButton];
    [v10 setAlpha:1.0];

    v11 = [(HUQuickControlSectionHeaderView *)self accessoryButton];
    [v11 setUserInteractionEnabled:1];

    if ([MEMORY[0x277D14CE8] shouldUseProxHandOffMaterials])
    {
      return;
    }

    accessoryButton = self->_accessoryButton;
    v8 = [MEMORY[0x277D75348] hf_keyColor];
  }

  else
  {
    v4 = [(HUQuickControlSectionHeaderView *)self titleLabel];
    [v4 setAlpha:0.5];

    v5 = [(HUQuickControlSectionHeaderView *)self accessoryButton];
    [v5 setAlpha:0.5];

    v6 = [(HUQuickControlSectionHeaderView *)self accessoryButton];
    [v6 setUserInteractionEnabled:0];

    accessoryButton = self->_accessoryButton;
    v8 = [MEMORY[0x277D75348] systemGrayColor];
  }

  v12 = v8;
  [UIButton setTitleColor:"setTitleColor:forState:" forState:?];
}

- (HFItemSectionAccessoryButtonHeaderDelegate)accessoryButtonTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryButtonTarget);

  return WeakRetained;
}

@end