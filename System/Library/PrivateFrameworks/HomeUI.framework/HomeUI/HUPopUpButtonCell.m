@interface HUPopUpButtonCell
- (HUPopUpButtonCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)prepareForReuse;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUPopUpButtonCell

- (HUPopUpButtonCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v47.receiver = self;
  v47.super_class = HUPopUpButtonCell;
  v4 = [(HUPopUpButtonCell *)&v47 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277D75230] plainButtonConfiguration];
    [v5 setTitleLineBreakMode:4];
    v6 = [MEMORY[0x277D75348] secondaryLabelColor];
    [v5 setBaseForegroundColor:v6];

    [v5 contentInsets];
    v8 = v7;
    [v5 contentInsets];
    [v5 setContentInsets:{v8, 0.0}];
    v9 = [MEMORY[0x277D75220] buttonWithConfiguration:v5 primaryAction:0];
    button = v4->_button;
    v4->_button = v9;

    [(UIButton *)v4->_button setShowsMenuAsPrimaryAction:1];
    [(UIButton *)v4->_button setChangesSelectionAsPrimaryAction:1];
    [(UIButton *)v4->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [(HUPopUpButtonCell *)v4 contentView];
    [v11 addSubview:v4->_button];

    v12 = [(HUPopUpButtonCell *)v4 textLabel];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

    v13 = [MEMORY[0x277CBEB18] array];
    v14 = [(HUPopUpButtonCell *)v4 textLabel];
    v15 = [v14 topAnchor];
    v16 = [(HUPopUpButtonCell *)v4 contentView];
    v17 = [v16 layoutMarginsGuide];
    v18 = [v17 topAnchor];
    v19 = [v15 constraintEqualToAnchor:v18];
    [v13 addObject:v19];

    v20 = [(HUPopUpButtonCell *)v4 textLabel];
    v21 = [v20 bottomAnchor];
    v22 = [(HUPopUpButtonCell *)v4 contentView];
    v23 = [v22 layoutMarginsGuide];
    v24 = [v23 bottomAnchor];
    v25 = [v21 constraintEqualToAnchor:v24];
    [v13 addObject:v25];

    v26 = [(HUPopUpButtonCell *)v4 textLabel];
    v27 = [v26 leadingAnchor];
    v28 = [(HUPopUpButtonCell *)v4 contentView];
    v29 = [v28 layoutMarginsGuide];
    v30 = [v29 leadingAnchor];
    v31 = [v27 constraintEqualToAnchor:v30];
    [v13 addObject:v31];

    v32 = [(UIButton *)v4->_button leadingAnchor];
    v33 = [(HUPopUpButtonCell *)v4 textLabel];
    v34 = [v33 trailingAnchor];
    v35 = [v32 constraintGreaterThanOrEqualToAnchor:v34 constant:15.0];
    [v13 addObject:v35];

    v36 = [(UIButton *)v4->_button centerYAnchor];
    v37 = [(HUPopUpButtonCell *)v4 contentView];
    v38 = [v37 layoutMarginsGuide];
    v39 = [v38 centerYAnchor];
    v40 = [v36 constraintEqualToAnchor:v39];
    [v13 addObject:v40];

    v41 = [(UIButton *)v4->_button trailingAnchor];
    v42 = [(HUPopUpButtonCell *)v4 contentView];
    v43 = [v42 layoutMarginsGuide];
    v44 = [v43 trailingAnchor];
    v45 = [v41 constraintEqualToAnchor:v44];
    [v13 addObject:v45];

    [MEMORY[0x277CCAAD0] activateConstraints:v13];
  }

  return v4;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = HUPopUpButtonCell;
  [(HUPopUpButtonCell *)&v4 prepareForReuse];
  v3 = [(HUPopUpButtonCell *)self button];
  [v3 setMenu:0];

  [(HUPopUpButtonCell *)self setDisabled:0];
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v4 = [(HUPopUpButtonCell *)self item];
  v5 = [v4 latestResults];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  v7 = [(HUPopUpButtonCell *)self textLabel];
  [v7 setText:v6];

  v8 = [(HUPopUpButtonCell *)self item];
  v9 = [v8 latestResults];
  v23 = [v9 objectForKeyedSubscript:*MEMORY[0x277D13E20]];

  if (v23)
  {
    v10 = [(HUPopUpButtonCell *)self button];
    [v10 setTitle:v23 forState:0];
  }

  v11 = [(HUPopUpButtonCell *)self button];
  v12 = [v11 menu];

  if (v12)
  {
    v13 = [(HUPopUpButtonCell *)self button];
    [(HUPopUpButtonCell *)self _setPopupMenuButton:v13];
  }

  v14 = [(HUPopUpButtonCell *)self isDisabled];
  v15 = [(HUPopUpButtonCell *)self button];
  [v15 setEnabled:!v14];

  if ([(HUPopUpButtonCell *)self isDisabled])
  {
    v16 = [(HUPopUpButtonCell *)self button];
    v17 = [v16 menu];
    v18 = [v17 children];

    [v18 na_each:&__block_literal_global_65];
    v19 = [(HUPopUpButtonCell *)self button];
    v20 = [v19 menu];
    v21 = [v20 menuByReplacingChildren:v18];
    v22 = [(HUPopUpButtonCell *)self button];
    [v22 setMenu:v21];
  }
}

void __43__HUPopUpButtonCell_updateUIWithAnimation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v5 = v2;
  if (objc_opt_isKindOfClass())
  {
    v3 = v5;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  [v4 setAttributes:1];
}

@end