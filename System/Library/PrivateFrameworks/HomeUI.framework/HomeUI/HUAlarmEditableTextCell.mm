@interface HUAlarmEditableTextCell
- (BOOL)textFieldShouldReturn:(id)return;
- (HUAlarmEditableTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (int64_t)autocapitalizationType;
- (void)layoutSubviews;
- (void)setAutocapitalizationType:(int64_t)type;
- (void)setEnabled:(BOOL)enabled;
- (void)setUserInteractionEnabled:(BOOL)enabled;
@end

@implementation HUAlarmEditableTextCell

- (HUAlarmEditableTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v17.receiver = self;
  v17.super_class = HUAlarmEditableTextCell;
  v4 = [(HUAlarmEditableTextCell *)&v17 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    v4->_enabled = 1;
    [(HUAlarmEditableTextCell *)v4 setSelectionStyle:0];
    v6 = objc_alloc(MEMORY[0x277D75BB8]);
    v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    textField = v5->_textField;
    v5->_textField = v7;

    [(UITextField *)v5->_textField setBorderStyle:0];
    v9 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
    [(UITextField *)v5->_textField setFont:v9];

    [(UITextField *)v5->_textField setAdjustsFontSizeToFitWidth:1];
    [(UITextField *)v5->_textField setReturnKeyType:9];
    [(UITextField *)v5->_textField setClearButtonMode:3];
    [(UITextField *)v5->_textField setDelegate:v5];
    [(UITextField *)v5->_textField setEnablesReturnKeyAutomatically:1];
    _clearButton = [(UITextField *)v5->_textField _clearButton];
    v11 = [_clearButton imageForState:0];

    hu_alarmsPrimaryColor = [MEMORY[0x277D75348] hu_alarmsPrimaryColor];
    v13 = [v11 _flatImageWithColor:hu_alarmsPrimaryColor];

    _clearButton2 = [(UITextField *)v5->_textField _clearButton];
    [_clearButton2 setImage:v13 forState:0];

    contentView = [(HUAlarmEditableTextCell *)v5 contentView];
    [contentView addSubview:v5->_textField];
  }

  return v5;
}

- (int64_t)autocapitalizationType
{
  textField = [(HUAlarmEditableTextCell *)self textField];
  autocapitalizationType = [textField autocapitalizationType];

  return autocapitalizationType;
}

- (void)setAutocapitalizationType:(int64_t)type
{
  textField = [(HUAlarmEditableTextCell *)self textField];
  [textField setAutocapitalizationType:type];
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = HUAlarmEditableTextCell;
  [(HUAlarmEditableTextCell *)&v15 layoutSubviews];
  textField = [(HUAlarmEditableTextCell *)self textField];
  [textField isUserInteractionEnabled];

  contentView = [(HUAlarmEditableTextCell *)self contentView];
  [contentView bounds];
  contentView2 = [(HUAlarmEditableTextCell *)self contentView];
  [contentView2 bounds];
  UIRectCenteredYInRect();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  textField2 = [(HUAlarmEditableTextCell *)self textField];
  [textField2 setFrame:{v7, v9, v11, v13}];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  text = [return text];
  v4 = [text length];

  if (v4)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:kHUEditAlarmTitleFinishedNotification object:0];
  }

  return v4 != 0;
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(HUAlarmEditableTextCell *)self isUserInteractionEnabled]!= enabled)
  {
    v5.receiver = self;
    v5.super_class = HUAlarmEditableTextCell;
    [(HUAlarmEditableTextCell *)&v5 setUserInteractionEnabled:enabledCopy];
    [(UITextField *)self->_textField setUserInteractionEnabled:enabledCopy];
    [(HUAlarmEditableTextCell *)self setNeedsLayout];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_enabled = enabled;
  [(HUAlarmEditableTextCell *)self setUserInteractionEnabled:?];
  textField = [(HUAlarmEditableTextCell *)self textField];
  [textField setEnabled:enabledCopy];

  textField2 = [(HUAlarmEditableTextCell *)self textField];
  [textField2 setUserInteractionEnabled:enabledCopy];

  if (enabledCopy)
  {
    labelColor = [MEMORY[0x277D75348] labelColor];
    v8 = 3;
  }

  else
  {
    labelColor = [MEMORY[0x277D75348] systemGrayColor];
    v8 = 0;
  }

  textField3 = [(HUAlarmEditableTextCell *)self textField];
  [textField3 setTextColor:labelColor];

  textField4 = [(HUAlarmEditableTextCell *)self textField];
  [textField4 setClearButtonMode:v8];
}

@end