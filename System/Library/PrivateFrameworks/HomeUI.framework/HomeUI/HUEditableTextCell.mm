@interface HUEditableTextCell
- (HUEditableTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
- (void)setDisabled:(BOOL)disabled;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation HUEditableTextCell

- (HUEditableTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v32.receiver = self;
  v32.super_class = HUEditableTextCell;
  v4 = [(HUEditableTextCell *)&v32 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D75BB8]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    textField = v4->_textField;
    v4->_textField = v6;

    v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UITextField *)v4->_textField setFont:v8];

    [(UITextField *)v4->_textField setAdjustsFontForContentSizeCategory:1];
    [(UITextField *)v4->_textField setReturnKeyType:9];
    [(UITextField *)v4->_textField setClearButtonMode:3];
    contentView = [(HUEditableTextCell *)v4 contentView];
    [contentView addSubview:v4->_textField];

    array = [MEMORY[0x277CBEB18] array];
    [(UITextField *)v4->_textField setTranslatesAutoresizingMaskIntoConstraints:0];
    topAnchor = [(UITextField *)v4->_textField topAnchor];
    contentView2 = [(HUEditableTextCell *)v4 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v15];

    bottomAnchor = [(UITextField *)v4->_textField bottomAnchor];
    contentView3 = [(HUEditableTextCell *)v4 contentView];
    layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide2 bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [array addObject:v20];

    leadingAnchor = [(UITextField *)v4->_textField leadingAnchor];
    contentView4 = [(HUEditableTextCell *)v4 contentView];
    layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide3 leadingAnchor];
    v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array addObject:v25];

    trailingAnchor = [(UITextField *)v4->_textField trailingAnchor];
    contentView5 = [(HUEditableTextCell *)v4 contentView];
    layoutMarginsGuide4 = [contentView5 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide4 trailingAnchor];
    v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [array addObject:v30];

    [MEMORY[0x277CCAAD0] activateConstraints:array];
  }

  return v4;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  selectedCopy = selected;
  v7.receiver = self;
  v7.super_class = HUEditableTextCell;
  [(HUEditableTextCell *)&v7 setSelected:selected animated:animated];
  if (selectedCopy)
  {
    textField = [(HUEditableTextCell *)self textField];
    [textField becomeFirstResponder];
  }
}

- (void)setDisabled:(BOOL)disabled
{
  v4 = !disabled;
  textField = [(HUEditableTextCell *)self textField];
  [textField setEnabled:v4];

  if (v4)
  {
    [MEMORY[0x277D75348] labelColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }
  v6 = ;
  textField2 = [(HUEditableTextCell *)self textField];
  [textField2 setTextColor:v6];

  textField3 = [(HUEditableTextCell *)self textField];
  [textField3 setClearButtonMode:v4];
}

- (void)prepareForReuse
{
  v8.receiver = self;
  v8.super_class = HUEditableTextCell;
  [(HUEditableTextCell *)&v8 prepareForReuse];
  textField = [(HUEditableTextCell *)self textField];
  [textField setText:0];

  textField2 = [(HUEditableTextCell *)self textField];
  [textField2 setPlaceholder:0];

  textField3 = [(HUEditableTextCell *)self textField];
  [textField3 setDelegate:0];

  textField4 = [(HUEditableTextCell *)self textField];
  [textField4 setEnabled:1];

  textField5 = [(HUEditableTextCell *)self textField];
  [textField5 endEditing:1];
}

@end