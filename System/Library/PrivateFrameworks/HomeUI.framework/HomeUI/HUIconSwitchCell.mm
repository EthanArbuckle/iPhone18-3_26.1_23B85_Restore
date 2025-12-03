@interface HUIconSwitchCell
- (BOOL)isOn;
- (HUIconSwitchCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (HUIconSwitchCellDelegate)delegate;
- (id)verticalContentBottomAnchor;
- (id)verticalContentTopAnchor;
- (void)_toggleOn:(id)on;
- (void)prepareForReuse;
- (void)setOn:(BOOL)on;
- (void)setOn:(BOOL)on animated:(BOOL)animated;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUIconSwitchCell

- (HUIconSwitchCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = HUIconSwitchCell;
  v4 = [(HUTitleDescriptionCell *)&v10 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D75AE8]);
    switchView = v4->_switchView;
    v4->_switchView = v5;

    switchView = [(HUIconSwitchCell *)v4 switchView];
    [(HUIconSwitchCell *)v4 setAccessoryView:switchView];

    switchView2 = [(HUIconSwitchCell *)v4 switchView];
    [switchView2 addTarget:v4 action:sel__toggleOn_ forControlEvents:4096];
  }

  return v4;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = HUIconSwitchCell;
  [(HUTitleDescriptionCell *)&v4 prepareForReuse];
  [(HUTitleDescriptionCell *)self setDisabled:0];
  switchView = [(HUIconSwitchCell *)self switchView];
  [(HUIconSwitchCell *)self setAccessoryView:switchView];

  [(HUIconSwitchCell *)self setNeedsLayout];
}

- (BOOL)isOn
{
  switchView = [(HUIconSwitchCell *)self switchView];
  isOn = [switchView isOn];

  return isOn;
}

- (void)setOn:(BOOL)on
{
  onCopy = on;
  if ([(HUIconSwitchCell *)self isOn]!= on)
  {
    switchView = [(HUIconSwitchCell *)self switchView];
    [switchView setOn:onCopy];
  }
}

- (void)setOn:(BOOL)on animated:(BOOL)animated
{
  animatedCopy = animated;
  onCopy = on;
  if ([(HUIconSwitchCell *)self isOn]!= on)
  {
    switchView = [(HUIconSwitchCell *)self switchView];
    [switchView setOn:onCopy animated:animatedCopy];
  }
}

- (id)verticalContentTopAnchor
{
  contentView = [(HUIconSwitchCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  topAnchor = [layoutMarginsGuide topAnchor];

  return topAnchor;
}

- (id)verticalContentBottomAnchor
{
  contentView = [(HUIconSwitchCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  bottomAnchor = [layoutMarginsGuide bottomAnchor];

  return bottomAnchor;
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  v16.receiver = self;
  v16.super_class = HUIconSwitchCell;
  [(HUTitleDescriptionCell *)&v16 updateUIWithAnimation:?];
  item = [(HUIconCell *)self item];
  latestResults = [item latestResults];
  v7 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14068]];

  if (!v7)
  {
    goto LABEL_7;
  }

  integerValue = [v7 integerValue];
  if (integerValue == 2)
  {
    v9 = 1;
  }

  else
  {
    if (integerValue != 1)
    {
      goto LABEL_7;
    }

    v9 = 0;
  }

  [(HUIconSwitchCell *)self setOn:v9 animated:animationCopy];
LABEL_7:
  if ([(HUIconCell *)self isDisabled])
  {
    v10 = 0;
  }

  else
  {
    item2 = [(HUIconCell *)self item];
    latestResults2 = [item2 latestResults];
    v13 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
    v10 = [v13 BOOLValue] ^ 1;
  }

  switchView = [(HUIconSwitchCell *)self switchView];
  [switchView setUserInteractionEnabled:v10];

  switchView2 = [(HUIconSwitchCell *)self switchView];
  [switchView2 setEnabled:v10];
}

- (void)_toggleOn:(id)on
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    isOn = [(HUIconSwitchCell *)self isOn];
    v6 = @"off";
    if (isOn)
    {
      v6 = @"on";
    }

    v8 = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "User tapped switch cell: %@ to turn %@", &v8, 0x16u);
  }

  delegate = [(HUIconSwitchCell *)self delegate];
  [delegate switchCell:self didTurnOn:{-[HUIconSwitchCell isOn](self, "isOn")}];
}

- (HUIconSwitchCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end