@interface HUSwitchCell
- (BOOL)isOn;
- (HUSwitchCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (HUSwitchCellDelegate)delegate;
- (NSString)description;
- (void)_toggleOn:(id)a3;
- (void)prepareForReuse;
- (void)setDisabled:(BOOL)a3;
- (void)setOn:(BOOL)a3;
- (void)setOn:(BOOL)a3 animated:(BOOL)a4;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUSwitchCell

- (HUSwitchCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = HUSwitchCell;
  v4 = [(HUSwitchCell *)&v8 initWithStyle:3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D75AE8]);
    [(HUSwitchCell *)v4 setAccessoryView:v5];

    v6 = [(HUSwitchCell *)v4 _switch];
    [v6 addTarget:v4 action:sel__toggleOn_ forControlEvents:4096];
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
  v2 = [(HUSwitchCell *)self _switch];
  v3 = [v2 isOn];

  return v3;
}

- (void)setOn:(BOOL)a3
{
  v3 = a3;
  if ([(HUSwitchCell *)self isOn]!= a3)
  {
    v5 = [(HUSwitchCell *)self _switch];
    [v5 setOn:v3];
  }
}

- (void)setOn:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(HUSwitchCell *)self isOn]!= a3)
  {
    v7 = [(HUSwitchCell *)self _switch];
    [v7 setOn:v5 animated:v4];
  }
}

- (void)setDisabled:(BOOL)a3
{
  if (self->_disabled != a3)
  {
    self->_disabled = a3;
    [(HUSwitchCell *)self updateUIWithAnimation:0];
  }
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v3 = a3;
  v33 = [MEMORY[0x277D756E0] subtitleCellConfiguration];
  v5 = [(HUSwitchCell *)self item];
  v6 = [v5 latestResults];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [v33 setText:v7];

  if ([(HUSwitchCell *)self isDisabled])
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v8 = ;
  v9 = [v33 textProperties];
  [v9 setColor:v8];

  v10 = [v33 textProperties];
  [v10 setNumberOfLines:0];

  v11 = [(HUSwitchCell *)self item];
  v12 = [v11 latestResults];
  v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
  [(HUSwitchCell *)self setAccessibilityIdentifier:v13];

  v14 = [(HUSwitchCell *)self item];
  v15 = [v14 latestResults];
  v16 = *MEMORY[0x277D13E20];
  v17 = [v15 objectForKeyedSubscript:*MEMORY[0x277D13E20]];

  if (v17)
  {
    v18 = [(HUSwitchCell *)self item];
    v19 = [v18 latestResults];
    v20 = [v19 objectForKeyedSubscript:v16];
    [v33 setSecondaryText:v20];

    v21 = [MEMORY[0x277D75348] systemGrayColor];
    v22 = [v33 secondaryTextProperties];
    [v22 setColor:v21];

    v23 = [v33 secondaryTextProperties];
    [v23 setNumberOfLines:0];
  }

  else
  {
    [v33 setSecondaryText:0];
  }

  v24 = [(HUSwitchCell *)self item];
  v25 = [v24 latestResults];
  v26 = [v25 objectForKeyedSubscript:*MEMORY[0x277D14068]];

  if (v26)
  {
    v27 = [v26 integerValue];
    if (v27 == 2)
    {
      v28 = 1;
    }

    else
    {
      if (v27 != 1)
      {
        goto LABEL_13;
      }

      v28 = 0;
    }

    [(HUSwitchCell *)self setOn:v28 animated:v3];
  }

LABEL_13:
  [(HUSwitchCell *)self setContentConfiguration:v33];
  v29 = [(HUSwitchCell *)self isDisabled];
  v30 = [(HUSwitchCell *)self _switch];
  [v30 setUserInteractionEnabled:!v29];

  v31 = [(HUSwitchCell *)self isDisabled];
  v32 = [(HUSwitchCell *)self _switch];
  [v32 setEnabled:!v31];

  [(HUSwitchCell *)self setUserInteractionEnabled:[(HUSwitchCell *)self isDisabled]^ 1];
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HUSwitchCell *)self textLabel];
  v5 = [v4 text];
  [v3 appendString:v5 withName:@"text"];

  v6 = [v3 build];

  return v6;
}

- (void)_toggleOn:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(HUSwitchCell *)self isOn];
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

  v7 = [(HUSwitchCell *)self delegate];
  [v7 switchCell:self didTurnOn:{-[HUSwitchCell isOn](self, "isOn")}];
}

- (HUSwitchCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end