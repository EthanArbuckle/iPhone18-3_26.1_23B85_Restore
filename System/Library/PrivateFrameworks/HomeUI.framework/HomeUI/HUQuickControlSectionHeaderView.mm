@interface HUQuickControlSectionHeaderView
+ (double)estimatedHeight;
- (HFItemSectionAccessoryButtonHeaderDelegate)accessoryButtonTarget;
- (HUQuickControlSectionHeaderView)initWithFrame:(CGRect)frame;
- (void)accessoryButtonTapped;
- (void)drawRect:(CGRect)rect;
- (void)prepareForReuse;
- (void)setAccessoryButtonTitleText:(id)text;
- (void)setAttributedTitleText:(id)text;
- (void)setHidden:(BOOL)hidden;
- (void)setHideAccessoryButton:(BOOL)button;
- (void)setHideHeaderText:(BOOL)text;
- (void)setHideSeparator:(BOOL)separator;
- (void)setTitleText:(id)text;
- (void)updateConstraints;
- (void)updateUIForReachabilityState:(unint64_t)state;
@end

@implementation HUQuickControlSectionHeaderView

+ (double)estimatedHeight
{
  _titleFont = [self _titleFont];
  [_titleFont lineHeight];
  v4 = v3 + 16.0;

  return v4;
}

- (HUQuickControlSectionHeaderView)initWithFrame:(CGRect)frame
{
  v19.receiver = self;
  v19.super_class = HUQuickControlSectionHeaderView;
  v3 = [(HUQuickControlSectionHeaderView *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    titleText = v3->_titleText;
    v3->_titleText = &stru_2823E0EE8;

    v6 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v6;

    _titleFont = [objc_opt_class() _titleFont];
    [(UILabel *)v4->_titleLabel setFont:_titleFont];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v4->_titleLabel setTextColor:secondaryLabelColor];

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUQuickControlSectionHeaderView *)v4 addSubview:v4->_titleLabel];
    v10 = [MEMORY[0x277D75220] buttonWithType:1];
    accessoryButton = v4->_accessoryButton;
    v4->_accessoryButton = v10;

    [(UIButton *)v4->_accessoryButton addTarget:v4 action:sel_accessoryButtonTapped forEvents:64];
    if (([MEMORY[0x277D14CE8] shouldUseProxHandOffMaterials] & 1) == 0)
    {
      v12 = v4->_accessoryButton;
      hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
      [(UIButton *)v12 setTitleColor:hf_keyColor forState:0];
    }

    v14 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76988] variant:1024];
    titleLabel = [(UIButton *)v4->_accessoryButton titleLabel];
    [titleLabel setFont:v14];

    [(UIButton *)v4->_accessoryButton setTranslatesAutoresizingMaskIntoConstraints:0];
    titleLabel2 = [(UIButton *)v4->_accessoryButton titleLabel];
    [titleLabel2 setTextAlignment:1];

    [(HUQuickControlSectionHeaderView *)v4 addSubview:v4->_accessoryButton];
    v4->_hideSeparator = 0;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(HUQuickControlSectionHeaderView *)v4 setBackgroundColor:clearColor];
  }

  return v4;
}

- (void)drawRect:(CGRect)rect
{
  width = rect.size.width;
  y = rect.origin.y;
  if (![(HUQuickControlSectionHeaderView *)self hideSeparator:rect.origin.x])
  {
    v6 = [MEMORY[0x277D75208] bezierPathWithRect:{40.0, y, width + -80.0, 2.0}];
    separatorColor = [MEMORY[0x277D75348] separatorColor];
    [separatorColor setFill];

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

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if ([(HUQuickControlSectionHeaderView *)self isHidden]&& !hiddenCopy && [(HUQuickControlSectionHeaderView *)self hideAccessoryButton])
  {
    accessoryButton = [(HUQuickControlSectionHeaderView *)self accessoryButton];
    [accessoryButton setHidden:1];
  }

  v6.receiver = self;
  v6.super_class = HUQuickControlSectionHeaderView;
  [(HUQuickControlSectionHeaderView *)&v6 setHidden:hiddenCopy];
}

- (void)setHideSeparator:(BOOL)separator
{
  if (self->_hideSeparator != separator)
  {
    self->_hideSeparator = separator;
    [(HUQuickControlSectionHeaderView *)self setNeedsDisplay];
  }
}

- (void)updateConstraints
{
  labelConstraints = [(HUQuickControlSectionHeaderView *)self labelConstraints];

  if (!labelConstraints)
  {
    array = [MEMORY[0x277CBEB18] array];
    titleLabel = [(HUQuickControlSectionHeaderView *)self titleLabel];
    leadingAnchor = [titleLabel leadingAnchor];
    leadingAnchor2 = [(HUQuickControlSectionHeaderView *)self leadingAnchor];
    v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:40.0];
    [array addObject:v8];

    titleLabel2 = [(HUQuickControlSectionHeaderView *)self titleLabel];
    topAnchor = [titleLabel2 topAnchor];
    layoutMarginsGuide = [(HUQuickControlSectionHeaderView *)self layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v13];

    titleLabel3 = [(HUQuickControlSectionHeaderView *)self titleLabel];
    bottomAnchor = [titleLabel3 bottomAnchor];
    layoutMarginsGuide2 = [(HUQuickControlSectionHeaderView *)self layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide2 bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [array addObject:v18];

    [(HUQuickControlSectionHeaderView *)self setLabelConstraints:array];
  }

  v19 = MEMORY[0x277CCAAD0];
  labelConstraints2 = [(HUQuickControlSectionHeaderView *)self labelConstraints];
  [v19 activateConstraints:labelConstraints2];

  accessoryButtonConstraints = [(HUQuickControlSectionHeaderView *)self accessoryButtonConstraints];

  if (!accessoryButtonConstraints)
  {
    array2 = [MEMORY[0x277CBEB18] array];
    accessoryButton = [(HUQuickControlSectionHeaderView *)self accessoryButton];
    topAnchor3 = [accessoryButton topAnchor];
    layoutMarginsGuide3 = [(HUQuickControlSectionHeaderView *)self layoutMarginsGuide];
    topAnchor4 = [layoutMarginsGuide3 topAnchor];
    v27 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    [array2 addObject:v27];

    accessoryButton2 = [(HUQuickControlSectionHeaderView *)self accessoryButton];
    bottomAnchor3 = [accessoryButton2 bottomAnchor];
    layoutMarginsGuide4 = [(HUQuickControlSectionHeaderView *)self layoutMarginsGuide];
    bottomAnchor4 = [layoutMarginsGuide4 bottomAnchor];
    v32 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    [array2 addObject:v32];

    accessoryButton3 = [(HUQuickControlSectionHeaderView *)self accessoryButton];
    trailingAnchor = [accessoryButton3 trailingAnchor];
    trailingAnchor2 = [(HUQuickControlSectionHeaderView *)self trailingAnchor];
    v36 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-40.0];
    [array2 addObject:v36];

    [(HUQuickControlSectionHeaderView *)self setAccessoryButtonConstraints:array2];
  }

  v37 = MEMORY[0x277CCAAD0];
  accessoryButtonConstraints2 = [(HUQuickControlSectionHeaderView *)self accessoryButtonConstraints];
  [v37 activateConstraints:accessoryButtonConstraints2];

  v39.receiver = self;
  v39.super_class = HUQuickControlSectionHeaderView;
  [(HUQuickControlSectionHeaderView *)&v39 updateConstraints];
}

- (void)setTitleText:(id)text
{
  objc_storeStrong(&self->_titleText, text);
  textCopy = text;
  titleLabel = [(HUQuickControlSectionHeaderView *)self titleLabel];
  [titleLabel setText:textCopy];

  titleLabel2 = [(HUQuickControlSectionHeaderView *)self titleLabel];
  [titleLabel2 sizeToFit];
}

- (void)setAttributedTitleText:(id)text
{
  objc_storeStrong(&self->_attributedTitleText, text);
  textCopy = text;
  titleLabel = [(HUQuickControlSectionHeaderView *)self titleLabel];
  [titleLabel setAttributedText:textCopy];

  titleLabel2 = [(HUQuickControlSectionHeaderView *)self titleLabel];
  [titleLabel2 sizeToFit];

  [(HUQuickControlSectionHeaderView *)self layoutIfNeeded];
}

- (void)setAccessoryButtonTitleText:(id)text
{
  textCopy = text;
  objc_storeStrong(&self->_accessoryButtonTitleText, text);
  accessoryButton = [(HUQuickControlSectionHeaderView *)self accessoryButton];
  [accessoryButton setTitle:textCopy forState:0];

  v6 = !textCopy || ![textCopy length] || -[HUQuickControlSectionHeaderView hideAccessoryButton](self, "hideAccessoryButton");
  accessoryButton2 = [(HUQuickControlSectionHeaderView *)self accessoryButton];
  [accessoryButton2 setHidden:v6];

  accessoryButton3 = [(HUQuickControlSectionHeaderView *)self accessoryButton];
  [accessoryButton3 sizeToFit];
}

- (void)setHideAccessoryButton:(BOOL)button
{
  if (self->_hideAccessoryButton != button)
  {
    buttonCopy = button;
    self->_hideAccessoryButton = button;
    accessoryButton = [(HUQuickControlSectionHeaderView *)self accessoryButton];
    [accessoryButton setHidden:buttonCopy];
  }
}

- (void)setHideHeaderText:(BOOL)text
{
  if (self->_hideHeaderText != text)
  {
    textCopy = text;
    self->_hideHeaderText = text;
    titleLabel = [(HUQuickControlSectionHeaderView *)self titleLabel];
    [titleLabel setHidden:textCopy];
  }
}

- (void)accessoryButtonTapped
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    accessoryButtonTarget = [(HUQuickControlSectionHeaderView *)self accessoryButtonTarget];
    v7 = 136315650;
    v8 = "[HUQuickControlSectionHeaderView accessoryButtonTapped]";
    v9 = 2112;
    selfCopy = self;
    v11 = 2112;
    v12 = accessoryButtonTarget;
    _os_log_debug_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEBUG, "%s(%@) button target: %@", &v7, 0x20u);
  }

  accessoryButtonTarget2 = [(HUQuickControlSectionHeaderView *)self accessoryButtonTarget];
  itemSection = [(HUQuickControlSectionHeaderView *)self itemSection];
  [accessoryButtonTarget2 itemSection:itemSection accessoryButtonPressedInHeader:self];
}

- (void)updateUIForReachabilityState:(unint64_t)state
{
  if (state >= 2)
  {
    if (state != 2)
    {
      return;
    }

    titleLabel = [(HUQuickControlSectionHeaderView *)self titleLabel];
    [titleLabel setAlpha:1.0];

    accessoryButton = [(HUQuickControlSectionHeaderView *)self accessoryButton];
    [accessoryButton setAlpha:1.0];

    accessoryButton2 = [(HUQuickControlSectionHeaderView *)self accessoryButton];
    [accessoryButton2 setUserInteractionEnabled:1];

    if ([MEMORY[0x277D14CE8] shouldUseProxHandOffMaterials])
    {
      return;
    }

    accessoryButton = self->_accessoryButton;
    hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
  }

  else
  {
    titleLabel2 = [(HUQuickControlSectionHeaderView *)self titleLabel];
    [titleLabel2 setAlpha:0.5];

    accessoryButton3 = [(HUQuickControlSectionHeaderView *)self accessoryButton];
    [accessoryButton3 setAlpha:0.5];

    accessoryButton4 = [(HUQuickControlSectionHeaderView *)self accessoryButton];
    [accessoryButton4 setUserInteractionEnabled:0];

    accessoryButton = self->_accessoryButton;
    hf_keyColor = [MEMORY[0x277D75348] systemGrayColor];
  }

  v12 = hf_keyColor;
  [UIButton setTitleColor:"setTitleColor:forState:" forState:?];
}

- (HFItemSectionAccessoryButtonHeaderDelegate)accessoryButtonTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryButtonTarget);

  return WeakRetained;
}

@end