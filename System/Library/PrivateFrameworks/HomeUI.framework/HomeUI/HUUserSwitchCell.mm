@interface HUUserSwitchCell
- (BOOL)isOn;
- (HUUserSwitchCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (HUUserSwitchCellDelegate)delegate;
- (id)configurationState;
- (id)defaultContentConfiguration;
- (void)_toggleOn:(id)a3;
- (void)prepareForReuse;
- (void)setDisabled:(BOOL)a3;
- (void)setLoading:(BOOL)a3;
- (void)setOn:(BOOL)a3;
- (void)setOn:(BOOL)a3 animated:(BOOL)a4;
- (void)updateConfigurationUsingState:(id)a3;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUUserSwitchCell

- (HUUserSwitchCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v12.receiver = self;
  v12.super_class = HUUserSwitchCell;
  v4 = [(HUAvatarTableViewCell *)&v12 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D75AE8]);
    switchView = v4->_switchView;
    v4->_switchView = v5;

    v7 = objc_alloc_init(MEMORY[0x277D750E8]);
    activityIndicator = v4->_activityIndicator;
    v4->_activityIndicator = v7;

    v4->_overrideDefaultContentConfiguration = 1;
    v9 = [(HUUserSwitchCell *)v4 switchView];
    [(HUUserSwitchCell *)v4 setAccessoryView:v9];

    v10 = [(HUUserSwitchCell *)v4 switchView];
    [v10 addTarget:v4 action:sel__toggleOn_ forControlEvents:4096];
  }

  return v4;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = HUUserSwitchCell;
  [(HUAvatarTableViewCell *)&v5 prepareForReuse];
  v3 = [(HUUserSwitchCell *)self defaultContentConfiguration];
  [(HUAvatarTableViewCell *)self setContentConfiguration:v3];

  [(HUUserSwitchCell *)self setDisabled:0];
  v4 = [(HUUserSwitchCell *)self switchView];
  [(HUUserSwitchCell *)self setAccessoryView:v4];

  [(HUUserSwitchCell *)self setNeedsLayout];
}

- (id)defaultContentConfiguration
{
  if ([(HUUserSwitchCell *)self overrideDefaultContentConfiguration])
  {
    v3 = [MEMORY[0x277D756E0] valueCellConfiguration];
    v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    v5 = [v3 secondaryTextProperties];
    [v5 setFont:v4];

    [v3 setTextToSecondaryTextVerticalPadding:4.0];
    [v3 setTextToSecondaryTextHorizontalPadding:4.0];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = HUUserSwitchCell;
    v3 = [(HUUserSwitchCell *)&v7 defaultContentConfiguration];
  }

  return v3;
}

- (id)configurationState
{
  v5.receiver = self;
  v5.super_class = HUUserSwitchCell;
  v3 = [(HUUserSwitchCell *)&v5 configurationState];
  [v3 setDisabled:{-[HUUserSwitchCell isDisabled](self, "isDisabled")}];

  return v3;
}

- (void)setDisabled:(BOOL)a3
{
  v3 = a3;
  self->_disabled = a3;
  v5 = [(HUUserSwitchCell *)self switchView];
  [v5 setUserInteractionEnabled:!v3];

  v6 = [(HUUserSwitchCell *)self switchView];
  [v6 setEnabled:!v3];

  [(HUUserSwitchCell *)self setNeedsUpdateConfiguration];
}

- (void)updateConfigurationUsingState:(id)a3
{
  v4 = a3;
  v6 = [(HUAvatarTableViewCell *)self contentConfiguration];
  v5 = [v6 updatedConfigurationForState:v4];

  [(HUAvatarTableViewCell *)self setContentConfiguration:v5];
}

- (void)setLoading:(BOOL)a3
{
  if (self->_loading != a3)
  {
    self->_loading = a3;
    if (a3)
    {
      v5 = [(HUUserSwitchCell *)self activityIndicator];
      [(HUUserSwitchCell *)self setAccessoryView:v5];

      v7 = [(HUUserSwitchCell *)self activityIndicator];
      [v7 startAnimating];
    }

    else
    {
      v6 = [(HUUserSwitchCell *)self switchView];
      [(HUUserSwitchCell *)self setAccessoryView:v6];

      v7 = [(HUUserSwitchCell *)self activityIndicator];
      [v7 stopAnimating];
    }
  }
}

- (BOOL)isOn
{
  v2 = [(HUUserSwitchCell *)self switchView];
  v3 = [v2 isOn];

  return v3;
}

- (void)setOn:(BOOL)a3
{
  v3 = a3;
  if ([(HUUserSwitchCell *)self isOn]!= a3)
  {
    v5 = [(HUUserSwitchCell *)self switchView];
    [v5 setOn:v3];
  }
}

- (void)setOn:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(HUUserSwitchCell *)self isOn]!= a3)
  {
    v7 = [(HUUserSwitchCell *)self switchView];
    [v7 setOn:v5 animated:v4];
  }
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v3 = a3;
  v14.receiver = self;
  v14.super_class = HUUserSwitchCell;
  [(HUAvatarTableViewCell *)&v14 updateUIWithAnimation:?];
  v5 = [(HUAvatarTableViewCell *)self item];
  v6 = [v5 latestResults];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D14068]];

  if (v7)
  {
    v8 = [v7 integerValue];
    if (v8 == 2)
    {
      v9 = 1;
      goto LABEL_6;
    }

    if (v8 == 1)
    {
      v9 = 0;
LABEL_6:
      [(HUUserSwitchCell *)self setOn:v9 animated:v3];
    }
  }

  v10 = [(HUUserSwitchCell *)self isDisabled];
  v11 = [(HUUserSwitchCell *)self switchView];
  [v11 setUserInteractionEnabled:!v10];

  v12 = [(HUUserSwitchCell *)self isDisabled];
  v13 = [(HUUserSwitchCell *)self switchView];
  [v13 setEnabled:!v12];
}

- (void)_toggleOn:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(HUUserSwitchCell *)self isOn];
    v6 = @"off";
    if (v5)
    {
      v6 = @"on";
    }

    v8 = 138412546;
    v9 = self;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "User tapped switch cell: %@ to turn %@", &v8, 0x16u);
  }

  v7 = [(HUUserSwitchCell *)self delegate];
  [v7 userSwitchCell:self didTurnOn:{-[HUUserSwitchCell isOn](self, "isOn")}];
}

- (HUUserSwitchCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end