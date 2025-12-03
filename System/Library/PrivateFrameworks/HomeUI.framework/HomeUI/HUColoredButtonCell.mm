@interface HUColoredButtonCell
- (HUColoredButtonCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (HUColoredButtonCellDelegate)delegate;
- (void)buttonPressed:(id)pressed;
- (void)prepareForReuse;
- (void)setButtonBackgroundColor:(id)color;
- (void)tintColorDidChange;
- (void)updateButtonColor;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUColoredButtonCell

- (HUColoredButtonCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v38.receiver = self;
  v38.super_class = HUColoredButtonCell;
  v4 = [(HUColoredButtonCell *)&v38 initWithStyle:0 reuseIdentifier:identifier];
  if (v4)
  {
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    buttonBackgroundColor = v4->_buttonBackgroundColor;
    v4->_buttonBackgroundColor = systemGrayColor;

    v7 = [HUColoredButton alloc];
    v8 = [(HUColoredButton *)v7 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    button = v4->_button;
    v4->_button = v8;

    [(HUColoredButton *)v4->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUColoredButton *)v4->_button setBackgroundColor:v4->_buttonBackgroundColor];
    [(HUColoredButton *)v4->_button addTarget:v4 action:sel_buttonPressed_ forControlEvents:64];
    contentView = [(HUColoredButtonCell *)v4 contentView];
    [contentView addSubview:v4->_button];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(HUColoredButtonCell *)v4 setBackgroundColor:clearColor];

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    contentView2 = [(HUColoredButtonCell *)v4 contentView];
    [contentView2 setBackgroundColor:clearColor2];

    array = [MEMORY[0x277CBEB18] array];
    leadingAnchor = [(HUColoredButton *)v4->_button leadingAnchor];
    contentView3 = [(HUColoredButtonCell *)v4 contentView];
    layoutMarginsGuide = [contentView3 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array addObject:v19];

    trailingAnchor = [(HUColoredButton *)v4->_button trailingAnchor];
    contentView4 = [(HUColoredButtonCell *)v4 contentView];
    layoutMarginsGuide2 = [contentView4 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [array addObject:v24];

    topAnchor = [(HUColoredButton *)v4->_button topAnchor];
    contentView5 = [(HUColoredButtonCell *)v4 contentView];
    layoutMarginsGuide3 = [contentView5 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide3 topAnchor];
    v29 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
    [array addObject:v29];

    bottomAnchor = [(HUColoredButton *)v4->_button bottomAnchor];
    contentView6 = [(HUColoredButtonCell *)v4 contentView];
    layoutMarginsGuide4 = [contentView6 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
    v34 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:8.0];
    [array addObject:v34];

    heightAnchor = [(HUColoredButton *)v4->_button heightAnchor];
    +[HUColoredButton defaultHeight];
    v36 = [heightAnchor constraintGreaterThanOrEqualToConstant:?];
    [array addObject:v36];

    [MEMORY[0x277CCAAD0] activateConstraints:array];
  }

  return v4;
}

- (void)buttonPressed:(id)pressed
{
  delegate = [(HUColoredButtonCell *)self delegate];
  [delegate coloredButtonCellPressed:self];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = HUColoredButtonCell;
  [(HUColoredButtonCell *)&v3 tintColorDidChange];
  [(HUColoredButtonCell *)self updateButtonColor];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = HUColoredButtonCell;
  [(HUColoredButtonCell *)&v4 prepareForReuse];
  [(HUColoredButtonCell *)self setDisabled:0];
  [(HUColoredButtonCell *)self setItem:0];
  [(HUColoredButtonCell *)self setButtonColorFollowsTintColor:0];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [(HUColoredButtonCell *)self setButtonBackgroundColor:systemGrayColor];
}

- (void)setButtonBackgroundColor:(id)color
{
  objc_storeStrong(&self->_buttonBackgroundColor, color);

  [(HUColoredButtonCell *)self updateButtonColor];
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  button = [(HUColoredButtonCell *)self button];
  item = [(HUColoredButtonCell *)self item];
  latestResults = [item latestResults];
  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [button setTitle:v6 forState:0];
}

- (void)updateButtonColor
{
  if ([(HUColoredButtonCell *)self isDisabled])
  {
    _externalSystemMidGrayColor = [MEMORY[0x277D75348] _externalSystemMidGrayColor];
  }

  else
  {
    if ([(HUColoredButtonCell *)self buttonColorFollowsTintColor])
    {
      [(HUColoredButtonCell *)self tintColor];
    }

    else
    {
      [(HUColoredButtonCell *)self buttonBackgroundColor];
    }
    _externalSystemMidGrayColor = ;
  }

  v5 = _externalSystemMidGrayColor;
  button = [(HUColoredButtonCell *)self button];
  [button setBackgroundColor:v5];
}

- (HUColoredButtonCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end