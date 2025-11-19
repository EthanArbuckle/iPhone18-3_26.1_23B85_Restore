@interface HUColoredButtonCell
- (HUColoredButtonCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (HUColoredButtonCellDelegate)delegate;
- (void)buttonPressed:(id)a3;
- (void)prepareForReuse;
- (void)setButtonBackgroundColor:(id)a3;
- (void)tintColorDidChange;
- (void)updateButtonColor;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUColoredButtonCell

- (HUColoredButtonCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v38.receiver = self;
  v38.super_class = HUColoredButtonCell;
  v4 = [(HUColoredButtonCell *)&v38 initWithStyle:0 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277D75348] systemGrayColor];
    buttonBackgroundColor = v4->_buttonBackgroundColor;
    v4->_buttonBackgroundColor = v5;

    v7 = [HUColoredButton alloc];
    v8 = [(HUColoredButton *)v7 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    button = v4->_button;
    v4->_button = v8;

    [(HUColoredButton *)v4->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUColoredButton *)v4->_button setBackgroundColor:v4->_buttonBackgroundColor];
    [(HUColoredButton *)v4->_button addTarget:v4 action:sel_buttonPressed_ forControlEvents:64];
    v10 = [(HUColoredButtonCell *)v4 contentView];
    [v10 addSubview:v4->_button];

    v11 = [MEMORY[0x277D75348] clearColor];
    [(HUColoredButtonCell *)v4 setBackgroundColor:v11];

    v12 = [MEMORY[0x277D75348] clearColor];
    v13 = [(HUColoredButtonCell *)v4 contentView];
    [v13 setBackgroundColor:v12];

    v14 = [MEMORY[0x277CBEB18] array];
    v15 = [(HUColoredButton *)v4->_button leadingAnchor];
    v16 = [(HUColoredButtonCell *)v4 contentView];
    v17 = [v16 layoutMarginsGuide];
    v18 = [v17 leadingAnchor];
    v19 = [v15 constraintEqualToAnchor:v18];
    [v14 addObject:v19];

    v20 = [(HUColoredButton *)v4->_button trailingAnchor];
    v21 = [(HUColoredButtonCell *)v4 contentView];
    v22 = [v21 layoutMarginsGuide];
    v23 = [v22 trailingAnchor];
    v24 = [v20 constraintEqualToAnchor:v23];
    [v14 addObject:v24];

    v25 = [(HUColoredButton *)v4->_button topAnchor];
    v26 = [(HUColoredButtonCell *)v4 contentView];
    v27 = [v26 layoutMarginsGuide];
    v28 = [v27 topAnchor];
    v29 = [v25 constraintEqualToAnchor:v28 constant:8.0];
    [v14 addObject:v29];

    v30 = [(HUColoredButton *)v4->_button bottomAnchor];
    v31 = [(HUColoredButtonCell *)v4 contentView];
    v32 = [v31 layoutMarginsGuide];
    v33 = [v32 bottomAnchor];
    v34 = [v30 constraintEqualToAnchor:v33 constant:8.0];
    [v14 addObject:v34];

    v35 = [(HUColoredButton *)v4->_button heightAnchor];
    +[HUColoredButton defaultHeight];
    v36 = [v35 constraintGreaterThanOrEqualToConstant:?];
    [v14 addObject:v36];

    [MEMORY[0x277CCAAD0] activateConstraints:v14];
  }

  return v4;
}

- (void)buttonPressed:(id)a3
{
  v4 = [(HUColoredButtonCell *)self delegate];
  [v4 coloredButtonCellPressed:self];
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
  v3 = [MEMORY[0x277D75348] systemGrayColor];
  [(HUColoredButtonCell *)self setButtonBackgroundColor:v3];
}

- (void)setButtonBackgroundColor:(id)a3
{
  objc_storeStrong(&self->_buttonBackgroundColor, a3);

  [(HUColoredButtonCell *)self updateButtonColor];
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v7 = [(HUColoredButtonCell *)self button];
  v4 = [(HUColoredButtonCell *)self item];
  v5 = [v4 latestResults];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [v7 setTitle:v6 forState:0];
}

- (void)updateButtonColor
{
  if ([(HUColoredButtonCell *)self isDisabled])
  {
    v3 = [MEMORY[0x277D75348] _externalSystemMidGrayColor];
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
    v3 = ;
  }

  v5 = v3;
  v4 = [(HUColoredButtonCell *)self button];
  [v4 setBackgroundColor:v5];
}

- (HUColoredButtonCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end