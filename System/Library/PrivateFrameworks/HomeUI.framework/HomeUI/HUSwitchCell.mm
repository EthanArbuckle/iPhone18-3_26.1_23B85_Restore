@interface HUSwitchCell
- (BOOL)isOn;
- (HUSwitchCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (HUSwitchCellDelegate)delegate;
- (NSString)description;
- (void)_toggleOn:(id)on;
- (void)prepareForReuse;
- (void)setDisabled:(BOOL)disabled;
- (void)setOn:(BOOL)on;
- (void)setOn:(BOOL)on animated:(BOOL)animated;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUSwitchCell

- (HUSwitchCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = HUSwitchCell;
  v4 = [(HUSwitchCell *)&v8 initWithStyle:3 reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D75AE8]);
    [(HUSwitchCell *)v4 setAccessoryView:v5];

    _switch = [(HUSwitchCell *)v4 _switch];
    [_switch addTarget:v4 action:sel__toggleOn_ forControlEvents:4096];
  }

  return v4;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HUSwitchCell;
  [(HUSwitchCell *)&v3 prepareForReuse];
  [(HUSwitchCell *)self setDisabled:0];
  [(HUSwitchCell *)self setSelectionStyle:0];
}

- (BOOL)isOn
{
  _switch = [(HUSwitchCell *)self _switch];
  isOn = [_switch isOn];

  return isOn;
}

- (void)setOn:(BOOL)on
{
  onCopy = on;
  if ([(HUSwitchCell *)self isOn]!= on)
  {
    _switch = [(HUSwitchCell *)self _switch];
    [_switch setOn:onCopy];
  }
}

- (void)setOn:(BOOL)on animated:(BOOL)animated
{
  animatedCopy = animated;
  onCopy = on;
  if ([(HUSwitchCell *)self isOn]!= on)
  {
    _switch = [(HUSwitchCell *)self _switch];
    [_switch setOn:onCopy animated:animatedCopy];
  }
}

- (void)setDisabled:(BOOL)disabled
{
  if (self->_disabled != disabled)
  {
    self->_disabled = disabled;
    [(HUSwitchCell *)self updateUIWithAnimation:0];
  }
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  subtitleCellConfiguration = [MEMORY[0x277D756E0] subtitleCellConfiguration];
  item = [(HUSwitchCell *)self item];
  latestResults = [item latestResults];
  v7 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [subtitleCellConfiguration setText:v7];

  if ([(HUSwitchCell *)self isDisabled])
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v8 = ;
  textProperties = [subtitleCellConfiguration textProperties];
  [textProperties setColor:v8];

  textProperties2 = [subtitleCellConfiguration textProperties];
  [textProperties2 setNumberOfLines:0];

  item2 = [(HUSwitchCell *)self item];
  latestResults2 = [item2 latestResults];
  v13 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
  [(HUSwitchCell *)self setAccessibilityIdentifier:v13];

  item3 = [(HUSwitchCell *)self item];
  latestResults3 = [item3 latestResults];
  v16 = *MEMORY[0x277D13E20];
  v17 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D13E20]];

  if (v17)
  {
    item4 = [(HUSwitchCell *)self item];
    latestResults4 = [item4 latestResults];
    v20 = [latestResults4 objectForKeyedSubscript:v16];
    [subtitleCellConfiguration setSecondaryText:v20];

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    secondaryTextProperties = [subtitleCellConfiguration secondaryTextProperties];
    [secondaryTextProperties setColor:systemGrayColor];

    secondaryTextProperties2 = [subtitleCellConfiguration secondaryTextProperties];
    [secondaryTextProperties2 setNumberOfLines:0];
  }

  else
  {
    [subtitleCellConfiguration setSecondaryText:0];
  }

  item5 = [(HUSwitchCell *)self item];
  latestResults5 = [item5 latestResults];
  v26 = [latestResults5 objectForKeyedSubscript:*MEMORY[0x277D14068]];

  if (v26)
  {
    integerValue = [v26 integerValue];
    if (integerValue == 2)
    {
      v28 = 1;
    }

    else
    {
      if (integerValue != 1)
      {
        goto LABEL_13;
      }

      v28 = 0;
    }

    [(HUSwitchCell *)self setOn:v28 animated:animationCopy];
  }

LABEL_13:
  [(HUSwitchCell *)self setContentConfiguration:subtitleCellConfiguration];
  isDisabled = [(HUSwitchCell *)self isDisabled];
  _switch = [(HUSwitchCell *)self _switch];
  [_switch setUserInteractionEnabled:!isDisabled];

  isDisabled2 = [(HUSwitchCell *)self isDisabled];
  _switch2 = [(HUSwitchCell *)self _switch];
  [_switch2 setEnabled:!isDisabled2];

  [(HUSwitchCell *)self setUserInteractionEnabled:[(HUSwitchCell *)self isDisabled]^ 1];
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  textLabel = [(HUSwitchCell *)self textLabel];
  text = [textLabel text];
  [v3 appendString:text withName:@"text"];

  build = [v3 build];

  return build;
}

- (void)_toggleOn:(id)on
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    isOn = [(HUSwitchCell *)self isOn];
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

  delegate = [(HUSwitchCell *)self delegate];
  [delegate switchCell:self didTurnOn:{-[HUSwitchCell isOn](self, "isOn")}];
}

- (HUSwitchCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end