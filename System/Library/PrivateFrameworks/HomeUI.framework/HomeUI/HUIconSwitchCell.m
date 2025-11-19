@interface HUIconSwitchCell
- (BOOL)isOn;
- (HUIconSwitchCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (HUIconSwitchCellDelegate)delegate;
- (id)verticalContentBottomAnchor;
- (id)verticalContentTopAnchor;
- (void)_toggleOn:(id)a3;
- (void)prepareForReuse;
- (void)setOn:(BOOL)a3;
- (void)setOn:(BOOL)a3 animated:(BOOL)a4;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUIconSwitchCell

- (HUIconSwitchCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v10.receiver = self;
  v10.super_class = HUIconSwitchCell;
  v4 = [(HUTitleDescriptionCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D75AE8]);
    switchView = v4->_switchView;
    v4->_switchView = v5;

    v7 = [(HUIconSwitchCell *)v4 switchView];
    [(HUIconSwitchCell *)v4 setAccessoryView:v7];

    v8 = [(HUIconSwitchCell *)v4 switchView];
    [v8 addTarget:v4 action:sel__toggleOn_ forControlEvents:4096];
  }

  return v4;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = HUIconSwitchCell;
  [(HUTitleDescriptionCell *)&v4 prepareForReuse];
  [(HUTitleDescriptionCell *)self setDisabled:0];
  v3 = [(HUIconSwitchCell *)self switchView];
  [(HUIconSwitchCell *)self setAccessoryView:v3];

  [(HUIconSwitchCell *)self setNeedsLayout];
}

- (BOOL)isOn
{
  v2 = [(HUIconSwitchCell *)self switchView];
  v3 = [v2 isOn];

  return v3;
}

- (void)setOn:(BOOL)a3
{
  v3 = a3;
  if ([(HUIconSwitchCell *)self isOn]!= a3)
  {
    v5 = [(HUIconSwitchCell *)self switchView];
    [v5 setOn:v3];
  }
}

- (void)setOn:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(HUIconSwitchCell *)self isOn]!= a3)
  {
    v7 = [(HUIconSwitchCell *)self switchView];
    [v7 setOn:v5 animated:v4];
  }
}

- (id)verticalContentTopAnchor
{
  v2 = [(HUIconSwitchCell *)self contentView];
  v3 = [v2 layoutMarginsGuide];
  v4 = [v3 topAnchor];

  return v4;
}

- (id)verticalContentBottomAnchor
{
  v2 = [(HUIconSwitchCell *)self contentView];
  v3 = [v2 layoutMarginsGuide];
  v4 = [v3 bottomAnchor];

  return v4;
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v3 = a3;
  v16.receiver = self;
  v16.super_class = HUIconSwitchCell;
  [(HUTitleDescriptionCell *)&v16 updateUIWithAnimation:?];
  v5 = [(HUIconCell *)self item];
  v6 = [v5 latestResults];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D14068]];

  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = [v7 integerValue];
  if (v8 == 2)
  {
    v9 = 1;
  }

  else
  {
    if (v8 != 1)
    {
      goto LABEL_7;
    }

    v9 = 0;
  }

  [(HUIconSwitchCell *)self setOn:v9 animated:v3];
LABEL_7:
  if ([(HUIconCell *)self isDisabled])
  {
    v10 = 0;
  }

  else
  {
    v11 = [(HUIconCell *)self item];
    v12 = [v11 latestResults];
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
    v10 = [v13 BOOLValue] ^ 1;
  }

  v14 = [(HUIconSwitchCell *)self switchView];
  [v14 setUserInteractionEnabled:v10];

  v15 = [(HUIconSwitchCell *)self switchView];
  [v15 setEnabled:v10];
}

- (void)_toggleOn:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(HUIconSwitchCell *)self isOn];
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

  v7 = [(HUIconSwitchCell *)self delegate];
  [v7 switchCell:self didTurnOn:{-[HUIconSwitchCell isOn](self, "isOn")}];
}

- (HUIconSwitchCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end