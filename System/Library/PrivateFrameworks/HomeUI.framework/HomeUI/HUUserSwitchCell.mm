@interface HUUserSwitchCell
- (BOOL)isOn;
- (HUUserSwitchCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (HUUserSwitchCellDelegate)delegate;
- (id)configurationState;
- (id)defaultContentConfiguration;
- (void)_toggleOn:(id)on;
- (void)prepareForReuse;
- (void)setDisabled:(BOOL)disabled;
- (void)setLoading:(BOOL)loading;
- (void)setOn:(BOOL)on;
- (void)setOn:(BOOL)on animated:(BOOL)animated;
- (void)updateConfigurationUsingState:(id)state;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUUserSwitchCell

- (HUUserSwitchCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v12.receiver = self;
  v12.super_class = HUUserSwitchCell;
  v4 = [(HUAvatarTableViewCell *)&v12 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D75AE8]);
    switchView = v4->_switchView;
    v4->_switchView = v5;

    v7 = objc_alloc_init(MEMORY[0x277D750E8]);
    activityIndicator = v4->_activityIndicator;
    v4->_activityIndicator = v7;

    v4->_overrideDefaultContentConfiguration = 1;
    switchView = [(HUUserSwitchCell *)v4 switchView];
    [(HUUserSwitchCell *)v4 setAccessoryView:switchView];

    switchView2 = [(HUUserSwitchCell *)v4 switchView];
    [switchView2 addTarget:v4 action:sel__toggleOn_ forControlEvents:4096];
  }

  return v4;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = HUUserSwitchCell;
  [(HUAvatarTableViewCell *)&v5 prepareForReuse];
  defaultContentConfiguration = [(HUUserSwitchCell *)self defaultContentConfiguration];
  [(HUAvatarTableViewCell *)self setContentConfiguration:defaultContentConfiguration];

  [(HUUserSwitchCell *)self setDisabled:0];
  switchView = [(HUUserSwitchCell *)self switchView];
  [(HUUserSwitchCell *)self setAccessoryView:switchView];

  [(HUUserSwitchCell *)self setNeedsLayout];
}

- (id)defaultContentConfiguration
{
  if ([(HUUserSwitchCell *)self overrideDefaultContentConfiguration])
  {
    valueCellConfiguration = [MEMORY[0x277D756E0] valueCellConfiguration];
    v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    secondaryTextProperties = [valueCellConfiguration secondaryTextProperties];
    [secondaryTextProperties setFont:v4];

    [valueCellConfiguration setTextToSecondaryTextVerticalPadding:4.0];
    [valueCellConfiguration setTextToSecondaryTextHorizontalPadding:4.0];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = HUUserSwitchCell;
    valueCellConfiguration = [(HUUserSwitchCell *)&v7 defaultContentConfiguration];
  }

  return valueCellConfiguration;
}

- (id)configurationState
{
  v5.receiver = self;
  v5.super_class = HUUserSwitchCell;
  configurationState = [(HUUserSwitchCell *)&v5 configurationState];
  [configurationState setDisabled:{-[HUUserSwitchCell isDisabled](self, "isDisabled")}];

  return configurationState;
}

- (void)setDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  self->_disabled = disabled;
  switchView = [(HUUserSwitchCell *)self switchView];
  [switchView setUserInteractionEnabled:!disabledCopy];

  switchView2 = [(HUUserSwitchCell *)self switchView];
  [switchView2 setEnabled:!disabledCopy];

  [(HUUserSwitchCell *)self setNeedsUpdateConfiguration];
}

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  contentConfiguration = [(HUAvatarTableViewCell *)self contentConfiguration];
  v5 = [contentConfiguration updatedConfigurationForState:stateCopy];

  [(HUAvatarTableViewCell *)self setContentConfiguration:v5];
}

- (void)setLoading:(BOOL)loading
{
  if (self->_loading != loading)
  {
    self->_loading = loading;
    if (loading)
    {
      activityIndicator = [(HUUserSwitchCell *)self activityIndicator];
      [(HUUserSwitchCell *)self setAccessoryView:activityIndicator];

      activityIndicator2 = [(HUUserSwitchCell *)self activityIndicator];
      [activityIndicator2 startAnimating];
    }

    else
    {
      switchView = [(HUUserSwitchCell *)self switchView];
      [(HUUserSwitchCell *)self setAccessoryView:switchView];

      activityIndicator2 = [(HUUserSwitchCell *)self activityIndicator];
      [activityIndicator2 stopAnimating];
    }
  }
}

- (BOOL)isOn
{
  switchView = [(HUUserSwitchCell *)self switchView];
  isOn = [switchView isOn];

  return isOn;
}

- (void)setOn:(BOOL)on
{
  onCopy = on;
  if ([(HUUserSwitchCell *)self isOn]!= on)
  {
    switchView = [(HUUserSwitchCell *)self switchView];
    [switchView setOn:onCopy];
  }
}

- (void)setOn:(BOOL)on animated:(BOOL)animated
{
  animatedCopy = animated;
  onCopy = on;
  if ([(HUUserSwitchCell *)self isOn]!= on)
  {
    switchView = [(HUUserSwitchCell *)self switchView];
    [switchView setOn:onCopy animated:animatedCopy];
  }
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  v14.receiver = self;
  v14.super_class = HUUserSwitchCell;
  [(HUAvatarTableViewCell *)&v14 updateUIWithAnimation:?];
  item = [(HUAvatarTableViewCell *)self item];
  latestResults = [item latestResults];
  v7 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14068]];

  if (v7)
  {
    integerValue = [v7 integerValue];
    if (integerValue == 2)
    {
      v9 = 1;
      goto LABEL_6;
    }

    if (integerValue == 1)
    {
      v9 = 0;
LABEL_6:
      [(HUUserSwitchCell *)self setOn:v9 animated:animationCopy];
    }
  }

  isDisabled = [(HUUserSwitchCell *)self isDisabled];
  switchView = [(HUUserSwitchCell *)self switchView];
  [switchView setUserInteractionEnabled:!isDisabled];

  isDisabled2 = [(HUUserSwitchCell *)self isDisabled];
  switchView2 = [(HUUserSwitchCell *)self switchView];
  [switchView2 setEnabled:!isDisabled2];
}

- (void)_toggleOn:(id)on
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    isOn = [(HUUserSwitchCell *)self isOn];
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

  delegate = [(HUUserSwitchCell *)self delegate];
  [delegate userSwitchCell:self didTurnOn:{-[HUUserSwitchCell isOn](self, "isOn")}];
}

- (HUUserSwitchCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end