@interface HUPopUpButtonCell
- (HUPopUpButtonCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUPopUpButtonCell

- (HUPopUpButtonCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v47.receiver = self;
  v47.super_class = HUPopUpButtonCell;
  v4 = [(HUPopUpButtonCell *)&v47 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    plainButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
    [plainButtonConfiguration setTitleLineBreakMode:4];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [plainButtonConfiguration setBaseForegroundColor:secondaryLabelColor];

    [plainButtonConfiguration contentInsets];
    v8 = v7;
    [plainButtonConfiguration contentInsets];
    [plainButtonConfiguration setContentInsets:{v8, 0.0}];
    v9 = [MEMORY[0x277D75220] buttonWithConfiguration:plainButtonConfiguration primaryAction:0];
    button = v4->_button;
    v4->_button = v9;

    [(UIButton *)v4->_button setShowsMenuAsPrimaryAction:1];
    [(UIButton *)v4->_button setChangesSelectionAsPrimaryAction:1];
    [(UIButton *)v4->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(HUPopUpButtonCell *)v4 contentView];
    [contentView addSubview:v4->_button];

    textLabel = [(HUPopUpButtonCell *)v4 textLabel];
    [textLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    array = [MEMORY[0x277CBEB18] array];
    textLabel2 = [(HUPopUpButtonCell *)v4 textLabel];
    topAnchor = [textLabel2 topAnchor];
    contentView2 = [(HUPopUpButtonCell *)v4 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v19];

    textLabel3 = [(HUPopUpButtonCell *)v4 textLabel];
    bottomAnchor = [textLabel3 bottomAnchor];
    contentView3 = [(HUPopUpButtonCell *)v4 contentView];
    layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide2 bottomAnchor];
    v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [array addObject:v25];

    textLabel4 = [(HUPopUpButtonCell *)v4 textLabel];
    leadingAnchor = [textLabel4 leadingAnchor];
    contentView4 = [(HUPopUpButtonCell *)v4 contentView];
    layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide3 leadingAnchor];
    v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array addObject:v31];

    leadingAnchor3 = [(UIButton *)v4->_button leadingAnchor];
    textLabel5 = [(HUPopUpButtonCell *)v4 textLabel];
    trailingAnchor = [textLabel5 trailingAnchor];
    v35 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor constant:15.0];
    [array addObject:v35];

    centerYAnchor = [(UIButton *)v4->_button centerYAnchor];
    contentView5 = [(HUPopUpButtonCell *)v4 contentView];
    layoutMarginsGuide4 = [contentView5 layoutMarginsGuide];
    centerYAnchor2 = [layoutMarginsGuide4 centerYAnchor];
    v40 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [array addObject:v40];

    trailingAnchor2 = [(UIButton *)v4->_button trailingAnchor];
    contentView6 = [(HUPopUpButtonCell *)v4 contentView];
    layoutMarginsGuide5 = [contentView6 layoutMarginsGuide];
    trailingAnchor3 = [layoutMarginsGuide5 trailingAnchor];
    v45 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    [array addObject:v45];

    [MEMORY[0x277CCAAD0] activateConstraints:array];
  }

  return v4;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = HUPopUpButtonCell;
  [(HUPopUpButtonCell *)&v4 prepareForReuse];
  button = [(HUPopUpButtonCell *)self button];
  [button setMenu:0];

  [(HUPopUpButtonCell *)self setDisabled:0];
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  item = [(HUPopUpButtonCell *)self item];
  latestResults = [item latestResults];
  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  textLabel = [(HUPopUpButtonCell *)self textLabel];
  [textLabel setText:v6];

  item2 = [(HUPopUpButtonCell *)self item];
  latestResults2 = [item2 latestResults];
  v23 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13E20]];

  if (v23)
  {
    button = [(HUPopUpButtonCell *)self button];
    [button setTitle:v23 forState:0];
  }

  button2 = [(HUPopUpButtonCell *)self button];
  menu = [button2 menu];

  if (menu)
  {
    button3 = [(HUPopUpButtonCell *)self button];
    [(HUPopUpButtonCell *)self _setPopupMenuButton:button3];
  }

  isDisabled = [(HUPopUpButtonCell *)self isDisabled];
  button4 = [(HUPopUpButtonCell *)self button];
  [button4 setEnabled:!isDisabled];

  if ([(HUPopUpButtonCell *)self isDisabled])
  {
    button5 = [(HUPopUpButtonCell *)self button];
    menu2 = [button5 menu];
    children = [menu2 children];

    [children na_each:&__block_literal_global_65];
    button6 = [(HUPopUpButtonCell *)self button];
    menu3 = [button6 menu];
    v21 = [menu3 menuByReplacingChildren:children];
    button7 = [(HUPopUpButtonCell *)self button];
    [button7 setMenu:v21];
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